; ModuleID = 'coreutils-8.32/src/nproc.bc'
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
%struct.cpu_set_t = type { [16 x i64] }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [128 x i8] c"Print the number of processing units available to the current process,\0Awhich may be less than the number of online processors\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [117 x i8] c"      --all      print the number of installed processors\0A      --ignore=N  if possible, exclude N processing units\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"nproc\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.15 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
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
@longopts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 1, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.11 = private unnamed_addr constant [18 x i8] c"Giuseppe Scrivano\00", align 1
@optarg = external local_unnamed_addr global i8*, align 8
@.str.12 = private unnamed_addr constant [15 x i8] c"invalid number\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), align 8, !dbg !143
@.str.34 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !148
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !192
@.str.37 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.38 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.39 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !195
@.str.44 = private unnamed_addr constant [16 x i8] c"OMP_NUM_THREADS\00", align 1
@.str.1.45 = private unnamed_addr constant [17 x i8] c"OMP_THREAD_LIMIT\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !201
@.str.50 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.51 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.52 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.54, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.55, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.56, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.57, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.58, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.59, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.60, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.62, i32 0, i32 0), i8* null], align 16, !dbg !242
@.str.53 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.54 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.55 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.56 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.57 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.58 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.59 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.60 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.61 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.62 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !352
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !358
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !360
@.str.11.63 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.64 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.65 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.66 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.67 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.68 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.69 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !367
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !374
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !362
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !376
@.str.74 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.75 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.76 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.77 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.78 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.79 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.80 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.81 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.82 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.83 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.84 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.85 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.86 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.87 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.88 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.89 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.92 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.93 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.94 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.95 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.96 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.97 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.98 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !382
@.str.1.109 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.110 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.116 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.117 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.1.126 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.129 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.130 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1311 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1316, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata i32 %0, metadata !1315, metadata !DIExpression()), !dbg !1337
  %3 = icmp eq i32 %0, 0, !dbg !1338
  br i1 %3, label %9, label %4, !dbg !1339

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1340, !tbaa !1342
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #18, !dbg !1340
  %7 = load i8*, i8** @program_name, align 8, !dbg !1340, !tbaa !1342
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #18, !dbg !1340
  br label %61, !dbg !1340

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 5) #18, !dbg !1346
  %11 = load i8*, i8** @program_name, align 8, !dbg !1346, !tbaa !1342
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #18, !dbg !1346
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.2, i64 0, i64 0), i32 5) #18, !dbg !1347
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1347, !tbaa !1342
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1347
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.3, i64 0, i64 0), i32 5) #18, !dbg !1348
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1348, !tbaa !1342
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !1348
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #18, !dbg !1349
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1349, !tbaa !1342
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1349
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #18, !dbg !1350
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1350, !tbaa !1342
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !1350
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), metadata !1320, metadata !DIExpression()) #18, !dbg !1351
  %25 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1352
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %25) #18, !dbg !1352
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %25, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #18, !dbg !1333
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), metadata !1321, metadata !DIExpression()) #18, !dbg !1351
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1322, metadata !DIExpression()) #18, !dbg !1351
  %26 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1353
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !1322, metadata !DIExpression()) #18, !dbg !1351
  br label %27, !dbg !1354

27:                                               ; preds = %32, %9
  %28 = phi i8* [ %35, %32 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), %9 ]
  %29 = phi %struct.infomap* [ %33, %32 ], [ %26, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !1322, metadata !DIExpression()) #18, !dbg !1351
  %30 = tail call i32 @strcmp(i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %28) #21, !dbg !1355
  %31 = icmp eq i32 %30, 0, !dbg !1355
  br i1 %31, label %37, label %32, !dbg !1354

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i64 1, !dbg !1356
  call void @llvm.dbg.value(metadata %struct.infomap* %33, metadata !1322, metadata !DIExpression()) #18, !dbg !1351
  %34 = getelementptr inbounds %struct.infomap, %struct.infomap* %33, i64 0, i32 0, !dbg !1357
  %35 = load i8*, i8** %34, align 8, !dbg !1357, !tbaa !1358
  %36 = icmp eq i8* %35, null, !dbg !1360
  br i1 %36, label %37, label %27, !dbg !1361, !llvm.loop !1362

37:                                               ; preds = %32, %27
  %38 = phi %struct.infomap* [ %33, %32 ], [ %29, %27 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !1322, metadata !DIExpression()) #18, !dbg !1351
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !1322, metadata !DIExpression()) #18, !dbg !1351
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 0, i32 1, !dbg !1363
  %40 = load i8*, i8** %39, align 8, !dbg !1363, !tbaa !1365
  %41 = icmp eq i8* %40, null, !dbg !1366
  %42 = select i1 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %40, !dbg !1367
  call void @llvm.dbg.value(metadata i8* %42, metadata !1321, metadata !DIExpression()) #18, !dbg !1351
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 5) #18, !dbg !1368
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0)) #18, !dbg !1368
  %45 = tail call i8* @setlocale(i32 5, i8* null) #18, !dbg !1369
  call void @llvm.dbg.value(metadata i8* %45, metadata !1329, metadata !DIExpression()) #18, !dbg !1351
  %46 = icmp eq i8* %45, null, !dbg !1370
  br i1 %46, label %54, label %47, !dbg !1372

47:                                               ; preds = %37
  %48 = tail call i32 @strncmp(i8* nonnull %45, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i64 3) #21, !dbg !1373
  %49 = icmp eq i32 %48, 0, !dbg !1373
  br i1 %49, label %54, label %50, !dbg !1374

50:                                               ; preds = %47
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.26, i64 0, i64 0), i32 5) #18, !dbg !1375
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1375, !tbaa !1342
  %53 = tail call i32 @fputs_unlocked(i8* %51, %struct._IO_FILE* %52) #18, !dbg !1375
  br label %54, !dbg !1377

54:                                               ; preds = %37, %47, %50
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i32 5) #18, !dbg !1378
  %56 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #18, !dbg !1378
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i64 0, i64 0), i32 5) #18, !dbg !1379
  %58 = icmp eq i8* %42, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), !dbg !1379
  %59 = select i1 %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !1379
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* %42, i8* %59) #18, !dbg !1379
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %25) #18, !dbg !1380
  br label %61

61:                                               ; preds = %54, %4
  tail call void @exit(i32 %0) #22, !dbg !1381
  unreachable, !dbg !1381
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !13 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !23 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !88 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1382 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1386, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8** %1, metadata !1387, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i64 0, metadata !1389, metadata !DIExpression()), !dbg !1393
  %3 = load i8*, i8** %1, align 8, !dbg !1394, !tbaa !1342
  tail call void @set_program_name(i8* %3) #18, !dbg !1395
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #18, !dbg !1396
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #18, !dbg !1397
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !1398
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #18, !dbg !1399
  call void @llvm.dbg.value(metadata i32 2, metadata !1390, metadata !DIExpression()), !dbg !1393
  br label %8, !dbg !1400

8:                                                ; preds = %18, %2
  %9 = phi i64 [ %21, %18 ], [ 0, %2 ]
  %10 = phi i32 [ %12, %18 ], [ 2, %2 ]
  br label %11, !dbg !1401

11:                                               ; preds = %8, %11
  %12 = phi i32 [ 0, %11 ], [ %10, %8 ], !dbg !1402
  call void @llvm.dbg.value(metadata i32 %12, metadata !1390, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i64 %9, metadata !1389, metadata !DIExpression()), !dbg !1393
  %13 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #18, !dbg !1403
  call void @llvm.dbg.value(metadata i32 %13, metadata !1391, metadata !DIExpression()), !dbg !1404
  switch i32 %13, label %22 [
    i32 -1, label %23
    i32 -130, label %14
    i32 -131, label %15
    i32 128, label %11
    i32 129, label %18
  ], !dbg !1401

14:                                               ; preds = %11
  tail call void @usage(i32 0) #23, !dbg !1405
  unreachable, !dbg !1405

15:                                               ; preds = %11
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1407, !tbaa !1342
  %17 = load i8*, i8** @Version, align 8, !dbg !1407, !tbaa !1342
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8* null) #18, !dbg !1407
  tail call void @exit(i32 0) #22, !dbg !1407
  unreachable, !dbg !1407

18:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i32 %12, metadata !1390, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i32 %12, metadata !1390, metadata !DIExpression()), !dbg !1393
  %19 = load i8*, i8** @optarg, align 8, !dbg !1408, !tbaa !1342
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 5) #18, !dbg !1409
  %21 = tail call i64 @xdectoumax(i8* %19, i64 0, i64 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* %20, i32 0) #18, !dbg !1410
  call void @llvm.dbg.value(metadata i64 %21, metadata !1389, metadata !DIExpression()), !dbg !1393
  br label %8, !dbg !1411

22:                                               ; preds = %11
  tail call void @usage(i32 1) #23, !dbg !1412
  unreachable, !dbg !1412

23:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i32 %12, metadata !1390, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i32 %12, metadata !1390, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i64 %9, metadata !1389, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i32 %12, metadata !1390, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i64 %9, metadata !1389, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i32 %12, metadata !1390, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i64 %9, metadata !1389, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i32 %12, metadata !1390, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i64 %9, metadata !1389, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i32 %12, metadata !1390, metadata !DIExpression()), !dbg !1393
  %24 = load i32, i32* @optind, align 4, !dbg !1413, !tbaa !1415
  %25 = icmp eq i32 %24, %0, !dbg !1417
  br i1 %25, label %33, label %26, !dbg !1418

26:                                               ; preds = %23
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 5) #18, !dbg !1419
  %28 = load i32, i32* @optind, align 4, !dbg !1421, !tbaa !1415
  %29 = sext i32 %28 to i64, !dbg !1422
  %30 = getelementptr inbounds i8*, i8** %1, i64 %29, !dbg !1422
  %31 = load i8*, i8** %30, align 8, !dbg !1422, !tbaa !1342
  %32 = tail call i8* @quote(i8* %31) #18, !dbg !1423
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %27, i8* %32) #18, !dbg !1424
  tail call void @usage(i32 1) #23, !dbg !1425
  unreachable, !dbg !1425

33:                                               ; preds = %23
  %34 = tail call i64 @num_processors(i32 %12) #18, !dbg !1426
  call void @llvm.dbg.value(metadata i64 %34, metadata !1388, metadata !DIExpression()), !dbg !1393
  %35 = icmp ugt i64 %34, %9, !dbg !1427
  %36 = sub i64 %34, %9, !dbg !1429
  %37 = select i1 %35, i64 %36, i64 1, !dbg !1429
  call void @llvm.dbg.value(metadata i64 %37, metadata !1388, metadata !DIExpression()), !dbg !1393
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i64 %37) #18, !dbg !1430
  ret i32 0, !dbg !1431
}

; Function Attrs: nounwind
declare !dbg !92 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !95 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !98 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !105 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !132 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #9 !dbg !1432 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1434, metadata !DIExpression()), !dbg !1435
  store i8* %0, i8** @file_name, align 8, !dbg !1436, !tbaa !1342
  ret void, !dbg !1437
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #9 !dbg !1438 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1442, metadata !DIExpression()), !dbg !1443
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1444, !tbaa !1445
  ret void, !dbg !1447
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1448 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1453, !tbaa !1342
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #18, !dbg !1454
  %3 = icmp eq i32 %2, 0, !dbg !1455
  br i1 %3, label %22, label %4, !dbg !1456

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1457, !tbaa !1445, !range !1458
  %6 = icmp eq i8 %5, 0, !dbg !1457
  br i1 %6, label %11, label %7, !dbg !1459

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #24, !dbg !1460
  %9 = load i32, i32* %8, align 4, !dbg !1460, !tbaa !1415
  %10 = icmp eq i32 %9, 32, !dbg !1461
  br i1 %10, label %22, label %11, !dbg !1462

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i32 5) #18, !dbg !1463
  call void @llvm.dbg.value(metadata i8* %12, metadata !1450, metadata !DIExpression()), !dbg !1464
  %13 = load i8*, i8** @file_name, align 8, !dbg !1465, !tbaa !1342
  %14 = icmp eq i8* %13, null, !dbg !1465
  %15 = tail call i32* @__errno_location() #24, !dbg !1467
  %16 = load i32, i32* %15, align 4, !dbg !1467, !tbaa !1415
  br i1 %14, label %19, label %17, !dbg !1468

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #18, !dbg !1469
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.38, i64 0, i64 0), i8* %18, i8* %12) #18, !dbg !1470
  br label %20, !dbg !1470

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.39, i64 0, i64 0), i8* %12) #18, !dbg !1471
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1472, !tbaa !1415
  tail call void @_exit(i32 %21) #22, !dbg !1473
  unreachable, !dbg !1473

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1474, !tbaa !1342
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #18, !dbg !1476
  %25 = icmp eq i32 %24, 0, !dbg !1477
  br i1 %25, label %28, label %26, !dbg !1478

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1479, !tbaa !1415
  tail call void @_exit(i32 %27) #22, !dbg !1480
  unreachable, !dbg !1480

28:                                               ; preds = %22
  ret void, !dbg !1481
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @num_processors(i32 %0) local_unnamed_addr #8 !dbg !1482 {
  %2 = alloca %struct.cpu_set_t, align 8
  call void @llvm.dbg.declare(metadata %struct.cpu_set_t* %2, metadata !1491, metadata !DIExpression()), !dbg !1501
  %3 = alloca %struct.cpu_set_t, align 8
  call void @llvm.dbg.declare(metadata %struct.cpu_set_t* %3, metadata !1491, metadata !DIExpression()), !dbg !1519
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1484, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 -1, metadata !1485, metadata !DIExpression()), !dbg !1521
  switch i32 %0, label %103 [
    i32 2, label %6
    i32 1, label %90
  ], !dbg !1522

6:                                                ; preds = %1
  %7 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i64 0, i64 0)) #18, !dbg !1523
  call void @llvm.dbg.value(metadata i8* %7, metadata !1524, metadata !DIExpression()) #18, !dbg !1534
  call void @llvm.dbg.value(metadata i64 0, metadata !1529, metadata !DIExpression()) #18, !dbg !1534
  %8 = icmp eq i8* %7, null, !dbg !1536
  br i1 %8, label %44, label %9, !dbg !1538

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %7, metadata !1524, metadata !DIExpression()) #18, !dbg !1534
  %10 = load i8, i8* %7, align 1, !dbg !1539, !tbaa !1540
  %11 = icmp eq i8 %10, 0, !dbg !1541
  br i1 %11, label %44, label %12, !dbg !1542

12:                                               ; preds = %9, %16
  %13 = phi i8 [ %18, %16 ], [ %10, %9 ]
  %14 = phi i8* [ %17, %16 ], [ %7, %9 ]
  call void @llvm.dbg.value(metadata i8* %14, metadata !1524, metadata !DIExpression()) #18, !dbg !1534
  %15 = sext i8 %13 to i32, !dbg !1539
  call void @llvm.dbg.value(metadata i32 %15, metadata !1543, metadata !DIExpression()) #18, !dbg !1547
  switch i32 %15, label %20 [
    i32 32, label %16
    i32 9, label %16
    i32 10, label %16
    i32 11, label %16
    i32 12, label %16
    i32 13, label %16
  ], !dbg !1549

16:                                               ; preds = %12, %12, %12, %12, %12, %12
  %17 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !1550
  call void @llvm.dbg.value(metadata i8* %17, metadata !1524, metadata !DIExpression()) #18, !dbg !1534
  %18 = load i8, i8* %17, align 1, !dbg !1539, !tbaa !1540
  %19 = icmp eq i8 %18, 0, !dbg !1541
  br i1 %19, label %44, label %12, !dbg !1542, !llvm.loop !1551

20:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i8* %14, metadata !1524, metadata !DIExpression()) #18, !dbg !1534
  call void @llvm.dbg.value(metadata i8* %14, metadata !1524, metadata !DIExpression()) #18, !dbg !1534
  call void @llvm.dbg.value(metadata i8* %14, metadata !1524, metadata !DIExpression()) #18, !dbg !1534
  call void @llvm.dbg.value(metadata i8* %14, metadata !1524, metadata !DIExpression()) #18, !dbg !1534
  call void @llvm.dbg.value(metadata i8* %14, metadata !1524, metadata !DIExpression()) #18, !dbg !1534
  call void @llvm.dbg.value(metadata i8* %14, metadata !1524, metadata !DIExpression()) #18, !dbg !1534
  call void @llvm.dbg.value(metadata i8* %14, metadata !1524, metadata !DIExpression()) #18, !dbg !1534
  call void @llvm.dbg.value(metadata i8* %14, metadata !1524, metadata !DIExpression()) #18, !dbg !1534
  call void @llvm.dbg.value(metadata i8* %14, metadata !1524, metadata !DIExpression()) #18, !dbg !1534
  call void @llvm.dbg.value(metadata i32 %15, metadata !1553, metadata !DIExpression()) #18, !dbg !1556
  %21 = add nsw i32 %15, -48, !dbg !1558
  %22 = icmp ult i32 %21, 10, !dbg !1558
  br i1 %22, label %23, label %44, !dbg !1559

23:                                               ; preds = %20
  %24 = bitcast i8** %5 to i8*, !dbg !1560
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24) #18, !dbg !1560
  call void @llvm.dbg.value(metadata i8* null, metadata !1530, metadata !DIExpression()) #18, !dbg !1561
  store i8* null, i8** %5, align 8, !dbg !1562, !tbaa !1342
  call void @llvm.dbg.value(metadata i8** %5, metadata !1530, metadata !DIExpression(DW_OP_deref)) #18, !dbg !1561
  %25 = call i64 @strtoul(i8* nonnull %14, i8** nonnull %5, i32 10) #18, !dbg !1563
  call void @llvm.dbg.value(metadata i64 %25, metadata !1533, metadata !DIExpression()) #18, !dbg !1561
  %26 = load i8*, i8** %5, align 8, !dbg !1564, !tbaa !1342
  call void @llvm.dbg.value(metadata i8* %26, metadata !1530, metadata !DIExpression()) #18, !dbg !1561
  %27 = icmp eq i8* %26, null, !dbg !1566
  br i1 %27, label %43, label %28, !dbg !1567

28:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %26, metadata !1530, metadata !DIExpression()) #18, !dbg !1561
  %29 = load i8, i8* %26, align 1, !dbg !1568, !tbaa !1540
  %30 = icmp eq i8 %29, 0, !dbg !1570
  br i1 %30, label %42, label %31, !dbg !1571

31:                                               ; preds = %28, %35
  %32 = phi i8* [ %36, %35 ], [ %26, %28 ]
  %33 = phi i8 [ %37, %35 ], [ %29, %28 ]
  %34 = sext i8 %33 to i32, !dbg !1568
  call void @llvm.dbg.value(metadata i32 %34, metadata !1543, metadata !DIExpression()) #18, !dbg !1572
  switch i32 %34, label %39 [
    i32 32, label %35
    i32 9, label %35
    i32 10, label %35
    i32 11, label %35
    i32 12, label %35
    i32 13, label %35
  ], !dbg !1574

35:                                               ; preds = %31, %31, %31, %31, %31, %31
  call void @llvm.dbg.value(metadata i8* %32, metadata !1530, metadata !DIExpression()) #18, !dbg !1561
  %36 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !1575
  call void @llvm.dbg.value(metadata i8* %36, metadata !1530, metadata !DIExpression()) #18, !dbg !1561
  call void @llvm.dbg.value(metadata i8* %36, metadata !1530, metadata !DIExpression()) #18, !dbg !1561
  %37 = load i8, i8* %36, align 1, !dbg !1568, !tbaa !1540
  %38 = icmp eq i8 %37, 0, !dbg !1570
  br i1 %38, label %41, label %31, !dbg !1571, !llvm.loop !1576

39:                                               ; preds = %31
  store i8* %32, i8** %5, align 8, !dbg !1575, !tbaa !1342
  call void @llvm.dbg.value(metadata i8* undef, metadata !1530, metadata !DIExpression()) #18, !dbg !1561
  %40 = icmp eq i8 %33, 44, !dbg !1578
  br i1 %40, label %42, label %43, !dbg !1578

41:                                               ; preds = %35
  store i8* %36, i8** %5, align 8, !dbg !1575, !tbaa !1342
  br label %42, !dbg !1571

42:                                               ; preds = %41, %39, %28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #18, !dbg !1579
  br label %44

43:                                               ; preds = %39, %23
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #18, !dbg !1579
  br label %44

44:                                               ; preds = %16, %6, %9, %20, %42, %43
  %45 = phi i64 [ %25, %42 ], [ 0, %6 ], [ 0, %43 ], [ 0, %20 ], [ 0, %9 ], [ 0, %16 ], !dbg !1534
  call void @llvm.dbg.value(metadata i64 %45, metadata !1486, metadata !DIExpression()), !dbg !1580
  %46 = tail call i8* @getenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.45, i64 0, i64 0)) #18, !dbg !1581
  call void @llvm.dbg.value(metadata i8* %46, metadata !1524, metadata !DIExpression()) #18, !dbg !1582
  call void @llvm.dbg.value(metadata i64 0, metadata !1529, metadata !DIExpression()) #18, !dbg !1582
  %47 = icmp eq i8* %46, null, !dbg !1584
  br i1 %47, label %84, label %48, !dbg !1585

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %46, metadata !1524, metadata !DIExpression()) #18, !dbg !1582
  %49 = load i8, i8* %46, align 1, !dbg !1586, !tbaa !1540
  %50 = icmp eq i8 %49, 0, !dbg !1587
  br i1 %50, label %84, label %51, !dbg !1588

51:                                               ; preds = %48, %55
  %52 = phi i8 [ %57, %55 ], [ %49, %48 ]
  %53 = phi i8* [ %56, %55 ], [ %46, %48 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1524, metadata !DIExpression()) #18, !dbg !1582
  %54 = sext i8 %52 to i32, !dbg !1586
  call void @llvm.dbg.value(metadata i32 %54, metadata !1543, metadata !DIExpression()) #18, !dbg !1589
  switch i32 %54, label %59 [
    i32 32, label %55
    i32 9, label %55
    i32 10, label %55
    i32 11, label %55
    i32 12, label %55
    i32 13, label %55
  ], !dbg !1591

55:                                               ; preds = %51, %51, %51, %51, %51, %51
  %56 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !1592
  call void @llvm.dbg.value(metadata i8* %56, metadata !1524, metadata !DIExpression()) #18, !dbg !1582
  %57 = load i8, i8* %56, align 1, !dbg !1586, !tbaa !1540
  %58 = icmp eq i8 %57, 0, !dbg !1587
  br i1 %58, label %84, label %51, !dbg !1588, !llvm.loop !1593

59:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i8* %53, metadata !1524, metadata !DIExpression()) #18, !dbg !1582
  call void @llvm.dbg.value(metadata i8* %53, metadata !1524, metadata !DIExpression()) #18, !dbg !1582
  call void @llvm.dbg.value(metadata i8* %53, metadata !1524, metadata !DIExpression()) #18, !dbg !1582
  call void @llvm.dbg.value(metadata i8* %53, metadata !1524, metadata !DIExpression()) #18, !dbg !1582
  call void @llvm.dbg.value(metadata i8* %53, metadata !1524, metadata !DIExpression()) #18, !dbg !1582
  call void @llvm.dbg.value(metadata i8* %53, metadata !1524, metadata !DIExpression()) #18, !dbg !1582
  call void @llvm.dbg.value(metadata i8* %53, metadata !1524, metadata !DIExpression()) #18, !dbg !1582
  call void @llvm.dbg.value(metadata i8* %53, metadata !1524, metadata !DIExpression()) #18, !dbg !1582
  call void @llvm.dbg.value(metadata i8* %53, metadata !1524, metadata !DIExpression()) #18, !dbg !1582
  call void @llvm.dbg.value(metadata i32 %54, metadata !1553, metadata !DIExpression()) #18, !dbg !1595
  %60 = add nsw i32 %54, -48, !dbg !1597
  %61 = icmp ult i32 %60, 10, !dbg !1597
  br i1 %61, label %62, label %84, !dbg !1598

62:                                               ; preds = %59
  %63 = bitcast i8** %4 to i8*, !dbg !1599
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %63) #18, !dbg !1599
  call void @llvm.dbg.value(metadata i8* null, metadata !1530, metadata !DIExpression()) #18, !dbg !1600
  store i8* null, i8** %4, align 8, !dbg !1601, !tbaa !1342
  call void @llvm.dbg.value(metadata i8** %4, metadata !1530, metadata !DIExpression(DW_OP_deref)) #18, !dbg !1600
  %64 = call i64 @strtoul(i8* nonnull %53, i8** nonnull %4, i32 10) #18, !dbg !1602
  call void @llvm.dbg.value(metadata i64 %64, metadata !1533, metadata !DIExpression()) #18, !dbg !1600
  %65 = load i8*, i8** %4, align 8, !dbg !1603, !tbaa !1342
  call void @llvm.dbg.value(metadata i8* %65, metadata !1530, metadata !DIExpression()) #18, !dbg !1600
  %66 = icmp eq i8* %65, null, !dbg !1604
  br i1 %66, label %81, label %67, !dbg !1605

67:                                               ; preds = %62
  call void @llvm.dbg.value(metadata i8* %65, metadata !1530, metadata !DIExpression()) #18, !dbg !1600
  %68 = load i8, i8* %65, align 1, !dbg !1606, !tbaa !1540
  %69 = icmp eq i8 %68, 0, !dbg !1607
  br i1 %69, label %82, label %70, !dbg !1608

70:                                               ; preds = %67, %74
  %71 = phi i8* [ %75, %74 ], [ %65, %67 ]
  %72 = phi i8 [ %76, %74 ], [ %68, %67 ]
  %73 = sext i8 %72 to i32, !dbg !1606
  call void @llvm.dbg.value(metadata i32 %73, metadata !1543, metadata !DIExpression()) #18, !dbg !1609
  switch i32 %73, label %78 [
    i32 32, label %74
    i32 9, label %74
    i32 10, label %74
    i32 11, label %74
    i32 12, label %74
    i32 13, label %74
  ], !dbg !1611

74:                                               ; preds = %70, %70, %70, %70, %70, %70
  call void @llvm.dbg.value(metadata i8* %71, metadata !1530, metadata !DIExpression()) #18, !dbg !1600
  %75 = getelementptr inbounds i8, i8* %71, i64 1, !dbg !1612
  call void @llvm.dbg.value(metadata i8* %75, metadata !1530, metadata !DIExpression()) #18, !dbg !1600
  call void @llvm.dbg.value(metadata i8* %75, metadata !1530, metadata !DIExpression()) #18, !dbg !1600
  %76 = load i8, i8* %75, align 1, !dbg !1606, !tbaa !1540
  %77 = icmp eq i8 %76, 0, !dbg !1607
  br i1 %77, label %80, label %70, !dbg !1608, !llvm.loop !1613

78:                                               ; preds = %70
  store i8* %71, i8** %4, align 8, !dbg !1612, !tbaa !1342
  call void @llvm.dbg.value(metadata i8* undef, metadata !1530, metadata !DIExpression()) #18, !dbg !1600
  %79 = icmp eq i8 %72, 44, !dbg !1615
  br i1 %79, label %82, label %81, !dbg !1615

80:                                               ; preds = %74
  store i8* %75, i8** %4, align 8, !dbg !1612, !tbaa !1342
  br label %82, !dbg !1608

81:                                               ; preds = %78, %62
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %63) #18, !dbg !1616
  br label %84

82:                                               ; preds = %67, %78, %80
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %63) #18, !dbg !1616
  call void @llvm.dbg.value(metadata i64 %64, metadata !1485, metadata !DIExpression()), !dbg !1521
  %83 = icmp eq i64 %64, 0, !dbg !1617
  br i1 %83, label %84, label %85, !dbg !1619

84:                                               ; preds = %55, %48, %59, %81, %44, %82
  br label %85, !dbg !1619

85:                                               ; preds = %82, %84
  %86 = phi i64 [ -1, %84 ], [ %64, %82 ]
  call void @llvm.dbg.value(metadata i64 %86, metadata !1485, metadata !DIExpression()), !dbg !1521
  %87 = icmp eq i64 %45, 0, !dbg !1620
  %88 = icmp ult i64 %45, %86, !dbg !1622
  %89 = select i1 %88, i64 %45, i64 %86, !dbg !1622
  call void @llvm.dbg.value(metadata i32 undef, metadata !1484, metadata !DIExpression()), !dbg !1521
  br i1 %87, label %90, label %128

90:                                               ; preds = %1, %85
  %91 = phi i64 [ %86, %85 ], [ -1, %1 ]
  %92 = bitcast %struct.cpu_set_t* %3 to i8*, !dbg !1623
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %92) #18, !dbg !1623
  %93 = call i32 @sched_getaffinity(i32 0, i64 128, %struct.cpu_set_t* nonnull %3) #18, !dbg !1624
  %94 = icmp eq i32 %93, 0, !dbg !1625
  br i1 %94, label %95, label %98, !dbg !1626

95:                                               ; preds = %90
  %96 = call i32 @__sched_cpucount(i64 128, %struct.cpu_set_t* nonnull %3) #18, !dbg !1627
  call void @llvm.dbg.value(metadata i32 %96, metadata !1497, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !1628
  %97 = icmp eq i32 %96, 0, !dbg !1629
  br i1 %97, label %98, label %101

98:                                               ; preds = %95, %90
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %92) #18, !dbg !1631
  %99 = call i64 @sysconf(i32 84) #18, !dbg !1632
  call void @llvm.dbg.value(metadata i64 %99, metadata !1514, metadata !DIExpression()) #18, !dbg !1633
  %100 = icmp sgt i64 %99, 0, !dbg !1634
  br i1 %100, label %123, label %121

101:                                              ; preds = %95
  %102 = sext i32 %96 to i64, !dbg !1627
  call void @llvm.dbg.value(metadata i64 %102, metadata !1497, metadata !DIExpression()) #18, !dbg !1628
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %92) #18, !dbg !1631
  call void @llvm.dbg.value(metadata i64 %102, metadata !1511, metadata !DIExpression()) #18, !dbg !1636
  br label %123

103:                                              ; preds = %1
  %104 = tail call i64 @sysconf(i32 83) #18, !dbg !1637
  call void @llvm.dbg.value(metadata i64 %104, metadata !1516, metadata !DIExpression()) #18, !dbg !1638
  %105 = add i64 %104, -1, !dbg !1639
  %106 = icmp ult i64 %105, 2, !dbg !1639
  br i1 %106, label %107, label %118, !dbg !1639

107:                                              ; preds = %103
  %108 = bitcast %struct.cpu_set_t* %2 to i8*, !dbg !1640
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %108) #18, !dbg !1640
  %109 = call i32 @sched_getaffinity(i32 0, i64 128, %struct.cpu_set_t* nonnull %2) #18, !dbg !1641
  %110 = icmp eq i32 %109, 0, !dbg !1642
  br i1 %110, label %111, label %114, !dbg !1643

111:                                              ; preds = %107
  %112 = call i32 @__sched_cpucount(i64 128, %struct.cpu_set_t* nonnull %2) #18, !dbg !1644
  call void @llvm.dbg.value(metadata i32 %112, metadata !1497, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !1645
  %113 = icmp eq i32 %112, 0, !dbg !1646
  br i1 %113, label %114, label %115

114:                                              ; preds = %111, %107
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %108) #18, !dbg !1647
  br label %123

115:                                              ; preds = %111
  %116 = sext i32 %112 to i64, !dbg !1644
  call void @llvm.dbg.value(metadata i64 %116, metadata !1497, metadata !DIExpression()) #18, !dbg !1645
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %108) #18, !dbg !1647
  call void @llvm.dbg.value(metadata i64 %116, metadata !1517, metadata !DIExpression()) #18, !dbg !1648
  %117 = icmp ult i64 %104, %116, !dbg !1649
  br i1 %117, label %118, label %123

118:                                              ; preds = %115, %103
  %119 = phi i64 [ %104, %103 ], [ %116, %115 ], !dbg !1638
  call void @llvm.dbg.value(metadata i64 %119, metadata !1516, metadata !DIExpression()) #18, !dbg !1638
  %120 = icmp slt i64 %119, 1, !dbg !1651
  br i1 %120, label %121, label %123

121:                                              ; preds = %118, %98
  %122 = phi i64 [ -1, %118 ], [ %91, %98 ]
  br label %123, !dbg !1653

123:                                              ; preds = %98, %101, %114, %115, %118, %121
  %124 = phi i64 [ %122, %121 ], [ %91, %98 ], [ %91, %101 ], [ -1, %118 ], [ -1, %114 ], [ -1, %115 ]
  %125 = phi i64 [ 1, %121 ], [ %99, %98 ], [ %102, %101 ], [ %119, %118 ], [ %104, %114 ], [ %104, %115 ], !dbg !1654
  call void @llvm.dbg.value(metadata i64 %125, metadata !1489, metadata !DIExpression()), !dbg !1655
  %126 = icmp ult i64 %125, %124, !dbg !1656
  %127 = select i1 %126, i64 %125, i64 %124, !dbg !1656
  br label %128

128:                                              ; preds = %85, %123
  %129 = phi i64 [ %127, %123 ], [ %89, %85 ], !dbg !1521
  ret i64 %129, !dbg !1657
}

; Function Attrs: nofree nounwind readonly
declare !dbg !612 i8* @getenv(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare i64 @strtoul(i8* readonly, i8** nocapture, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !617 i32 @sched_getaffinity(i32, i64, %struct.cpu_set_t*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__sched_cpucount(i64, %struct.cpu_set_t*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !613 i64 @sysconf(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1658 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1660, metadata !DIExpression()), !dbg !1663
  %2 = icmp eq i8* %0, null, !dbg !1664
  br i1 %2, label %3, label %6, !dbg !1666

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1667, !tbaa !1342
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.50, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #25, !dbg !1669
  tail call void @abort() #22, !dbg !1670
  unreachable, !dbg !1670

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #21, !dbg !1671
  call void @llvm.dbg.value(metadata i8* %7, metadata !1661, metadata !DIExpression()), !dbg !1663
  %8 = icmp eq i8* %7, null, !dbg !1672
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1673
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1673
  call void @llvm.dbg.value(metadata i8* %10, metadata !1662, metadata !DIExpression()), !dbg !1663
  %11 = ptrtoint i8* %10 to i64, !dbg !1674
  %12 = ptrtoint i8* %0 to i64, !dbg !1674
  %13 = sub i64 %11, %12, !dbg !1674
  %14 = icmp sgt i64 %13, 6, !dbg !1676
  br i1 %14, label %15, label %24, !dbg !1677

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1678
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.51, i64 0, i64 0), i64 7) #21, !dbg !1679
  %18 = icmp eq i32 %17, 0, !dbg !1680
  br i1 %18, label %19, label %24, !dbg !1681

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1660, metadata !DIExpression()), !dbg !1663
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.52, i64 0, i64 0), i64 3) #21, !dbg !1682
  %21 = icmp eq i32 %20, 0, !dbg !1685
  br i1 %21, label %22, label %24, !dbg !1686

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1687
  call void @llvm.dbg.value(metadata i8* %23, metadata !1660, metadata !DIExpression()), !dbg !1663
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1689, !tbaa !1342
  br label %24, !dbg !1690

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1660, metadata !DIExpression()), !dbg !1663
  store i8* %25, i8** @program_name, align 8, !dbg !1691, !tbaa !1342
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1692, !tbaa !1342
  ret void, !dbg !1693
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1694 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1699, metadata !DIExpression()), !dbg !1702
  %2 = tail call i32* @__errno_location() #24, !dbg !1703
  %3 = load i32, i32* %2, align 4, !dbg !1703, !tbaa !1415
  call void @llvm.dbg.value(metadata i32 %3, metadata !1700, metadata !DIExpression()), !dbg !1702
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1704
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1704
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1704
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #18, !dbg !1705
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1705
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1701, metadata !DIExpression()), !dbg !1702
  store i32 %3, i32* %2, align 4, !dbg !1706, !tbaa !1415
  ret %struct.quoting_options* %8, !dbg !1707
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #13 !dbg !1708 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1712, metadata !DIExpression()), !dbg !1713
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1714
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1714
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1715
  %5 = load i32, i32* %4, align 8, !dbg !1715, !tbaa !1716
  ret i32 %5, !dbg !1718
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #9 !dbg !1719 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1723, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata i32 %1, metadata !1724, metadata !DIExpression()), !dbg !1725
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1726
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1726
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1727
  store i32 %1, i32* %5, align 8, !dbg !1728, !tbaa !1716
  ret void, !dbg !1729
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #14 !dbg !1730 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1734, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 %1, metadata !1735, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i32 %2, metadata !1736, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 %1, metadata !1737, metadata !DIExpression()), !dbg !1743
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1744
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1744
  %6 = lshr i8 %1, 5, !dbg !1745
  %7 = zext i8 %6 to i64, !dbg !1745
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1746
  call void @llvm.dbg.value(metadata i32* %8, metadata !1739, metadata !DIExpression()), !dbg !1743
  %9 = and i8 %1, 31, !dbg !1747
  %10 = zext i8 %9 to i32, !dbg !1747
  call void @llvm.dbg.value(metadata i32 %10, metadata !1741, metadata !DIExpression()), !dbg !1743
  %11 = load i32, i32* %8, align 4, !dbg !1748, !tbaa !1415
  %12 = lshr i32 %11, %10, !dbg !1749
  %13 = and i32 %12, 1, !dbg !1750
  call void @llvm.dbg.value(metadata i32 %13, metadata !1742, metadata !DIExpression()), !dbg !1743
  %14 = and i32 %2, 1, !dbg !1751
  %15 = xor i32 %13, %14, !dbg !1752
  %16 = shl i32 %15, %10, !dbg !1753
  %17 = xor i32 %16, %11, !dbg !1754
  store i32 %17, i32* %8, align 4, !dbg !1754, !tbaa !1415
  ret i32 %13, !dbg !1755
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #14 !dbg !1756 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1760, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i32 %1, metadata !1761, metadata !DIExpression()), !dbg !1763
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1764
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1766
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1760, metadata !DIExpression()), !dbg !1763
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1767
  %6 = load i32, i32* %5, align 4, !dbg !1767, !tbaa !1768
  call void @llvm.dbg.value(metadata i32 %6, metadata !1762, metadata !DIExpression()), !dbg !1763
  store i32 %1, i32* %5, align 4, !dbg !1769, !tbaa !1768
  ret i32 %6, !dbg !1770
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1771 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1775, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8* %1, metadata !1776, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8* %2, metadata !1777, metadata !DIExpression()), !dbg !1778
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1779
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1781
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1775, metadata !DIExpression()), !dbg !1778
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1782
  store i32 10, i32* %6, align 8, !dbg !1783, !tbaa !1716
  %7 = icmp ne i8* %1, null, !dbg !1784
  %8 = icmp ne i8* %2, null, !dbg !1786
  %9 = and i1 %7, %8, !dbg !1787
  br i1 %9, label %11, label %10, !dbg !1787

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !1788
  unreachable, !dbg !1788

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1789
  store i8* %1, i8** %12, align 8, !dbg !1790, !tbaa !1791
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1792
  store i8* %2, i8** %13, align 8, !dbg !1793, !tbaa !1794
  ret void, !dbg !1795
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1796 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1800, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %1, metadata !1801, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8* %2, metadata !1802, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %3, metadata !1803, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1804, metadata !DIExpression()), !dbg !1808
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1809
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1809
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1805, metadata !DIExpression()), !dbg !1808
  %8 = tail call i32* @__errno_location() #24, !dbg !1810
  %9 = load i32, i32* %8, align 4, !dbg !1810, !tbaa !1415
  call void @llvm.dbg.value(metadata i32 %9, metadata !1806, metadata !DIExpression()), !dbg !1808
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1811
  %11 = load i32, i32* %10, align 8, !dbg !1811, !tbaa !1716
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1812
  %13 = load i32, i32* %12, align 4, !dbg !1812, !tbaa !1768
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1813
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1814
  %16 = load i8*, i8** %15, align 8, !dbg !1814, !tbaa !1791
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1815
  %18 = load i8*, i8** %17, align 8, !dbg !1815, !tbaa !1794
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1816
  call void @llvm.dbg.value(metadata i64 %19, metadata !1807, metadata !DIExpression()), !dbg !1808
  store i32 %9, i32* %8, align 4, !dbg !1817, !tbaa !1415
  ret i64 %19, !dbg !1818
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1819 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1825, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %1, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %2, metadata !1827, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %3, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i32 %4, metadata !1829, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i32 %5, metadata !1830, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i32* %6, metadata !1831, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %7, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %8, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 0, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 0, metadata !1836, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* null, metadata !1837, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 0, metadata !1838, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 0, metadata !1839, metadata !DIExpression()), !dbg !1883
  %13 = tail call i64 @__ctype_get_mb_cur_max() #18, !dbg !1884
  %14 = icmp eq i64 %13, 1, !dbg !1885
  call void @llvm.dbg.value(metadata i1 %14, metadata !1840, metadata !DIExpression()), !dbg !1883
  %15 = lshr i32 %5, 1, !dbg !1886
  %16 = trunc i32 %15 to i8, !dbg !1886
  %17 = and i8 %16, 1, !dbg !1886
  call void @llvm.dbg.value(metadata i8 %17, metadata !1841, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 0, metadata !1842, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 0, metadata !1843, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 1, metadata !1844, metadata !DIExpression()), !dbg !1883
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1887
  %19 = and i32 %5, 4, !dbg !1889
  %20 = icmp eq i32 %19, 0, !dbg !1889
  %21 = and i32 %5, 1, !dbg !1892
  %22 = icmp eq i32 %21, 0, !dbg !1892
  %23 = bitcast i64* %10 to i8*, !dbg !1895
  %24 = bitcast i32* %12 to i8*, !dbg !1896
  %25 = icmp eq i32* %6, null, !dbg !1897
  br label %26, !dbg !1899

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !1900
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !1901
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !1902
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !1903
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !1883
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !1904
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !1905
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !1906
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %38, metadata !1844, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %37, metadata !1843, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %36, metadata !1842, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %35, metadata !1841, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %34, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %33, metadata !1839, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %32, metadata !1838, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %31, metadata !1837, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %30, metadata !1836, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 0, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %29, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %28, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i32 %27, metadata !1829, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.label(metadata !1877), !dbg !1907
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
  ], !dbg !1908

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !1829, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 1, metadata !1841, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %35, metadata !1841, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i32 5, metadata !1829, metadata !DIExpression()), !dbg !1883
  br label %92, !dbg !1909

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1841, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i32 5, metadata !1829, metadata !DIExpression()), !dbg !1883
  %42 = and i8 %35, 1, !dbg !1911
  %43 = icmp eq i8 %42, 0, !dbg !1911
  br i1 %43, label %44, label %92, !dbg !1909

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1913
  br i1 %45, label %92, label %46, !dbg !1916

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1913, !tbaa !1540
  br label %92, !dbg !1913

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.63, i64 0, i64 0), i32 %27), !dbg !1917
  call void @llvm.dbg.value(metadata i8* %48, metadata !1832, metadata !DIExpression()), !dbg !1883
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), i32 %27), !dbg !1921
  call void @llvm.dbg.value(metadata i8* %49, metadata !1833, metadata !DIExpression()), !dbg !1883
  br label %50, !dbg !1922

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %51, metadata !1832, metadata !DIExpression()), !dbg !1883
  %53 = and i8 %35, 1, !dbg !1923
  %54 = icmp eq i8 %53, 0, !dbg !1923
  br i1 %54, label %55, label %70, !dbg !1925

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1837, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 0, metadata !1835, metadata !DIExpression()), !dbg !1883
  %56 = load i8, i8* %51, align 1, !dbg !1926, !tbaa !1540
  %57 = icmp eq i8 %56, 0, !dbg !1929
  br i1 %57, label %70, label %58, !dbg !1929

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1837, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %61, metadata !1835, metadata !DIExpression()), !dbg !1883
  %62 = icmp ult i64 %61, %39, !dbg !1930
  br i1 %62, label %63, label %65, !dbg !1933

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1930
  store i8 %59, i8* %64, align 1, !dbg !1930, !tbaa !1540
  br label %65, !dbg !1930

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1933
  call void @llvm.dbg.value(metadata i64 %66, metadata !1835, metadata !DIExpression()), !dbg !1883
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1934
  call void @llvm.dbg.value(metadata i8* %67, metadata !1837, metadata !DIExpression()), !dbg !1883
  %68 = load i8, i8* %67, align 1, !dbg !1926, !tbaa !1540
  %69 = icmp eq i8 %68, 0, !dbg !1929
  br i1 %69, label %70, label %58, !dbg !1929, !llvm.loop !1935

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1937
  call void @llvm.dbg.value(metadata i64 %71, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 1, metadata !1839, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %52, metadata !1837, metadata !DIExpression()), !dbg !1883
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #21, !dbg !1938
  call void @llvm.dbg.value(metadata i64 %72, metadata !1838, metadata !DIExpression()), !dbg !1883
  br label %92, !dbg !1939

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1839, metadata !DIExpression()), !dbg !1883
  br label %74, !dbg !1940

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1883
  call void @llvm.dbg.value(metadata i8 %75, metadata !1839, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 1, metadata !1841, metadata !DIExpression()), !dbg !1883
  br label %76, !dbg !1941

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1903
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1883
  call void @llvm.dbg.value(metadata i8 %78, metadata !1841, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %77, metadata !1839, metadata !DIExpression()), !dbg !1883
  %79 = and i8 %78, 1, !dbg !1942
  %80 = icmp eq i8 %79, 0, !dbg !1942
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1944
  br label %82, !dbg !1944

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1883
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1886
  call void @llvm.dbg.value(metadata i8 %84, metadata !1841, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %83, metadata !1839, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i32 2, metadata !1829, metadata !DIExpression()), !dbg !1883
  %85 = and i8 %84, 1, !dbg !1945
  %86 = icmp eq i8 %85, 0, !dbg !1945
  br i1 %86, label %87, label %92, !dbg !1947

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1948
  br i1 %88, label %92, label %89, !dbg !1951

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1948, !tbaa !1540
  br label %92, !dbg !1948

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1841, metadata !DIExpression()), !dbg !1883
  br label %92, !dbg !1952

91:                                               ; preds = %26
  call void @abort() #22, !dbg !1953
  unreachable, !dbg !1953

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !1937
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %40 ], !dbg !1883
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !1883
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !1883
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !1883
  call void @llvm.dbg.value(metadata i8 %100, metadata !1841, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %99, metadata !1839, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %98, metadata !1838, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %97, metadata !1837, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %96, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %94, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i32 %93, metadata !1829, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 0, metadata !1834, metadata !DIExpression()), !dbg !1883
  %101 = and i8 %99, 1, !dbg !1954
  %102 = icmp ne i8 %101, 0, !dbg !1954
  %103 = icmp ne i32 %93, 2, !dbg !1954
  %104 = and i1 %103, %102, !dbg !1954
  %105 = icmp ne i64 %98, 0, !dbg !1954
  %106 = and i1 %105, %104, !dbg !1954
  %107 = icmp ugt i64 %98, 1, !dbg !1954
  %108 = and i8 %100, 1, !dbg !1956
  %109 = icmp eq i8 %108, 0, !dbg !1956
  %110 = icmp eq i32 %93, 2, !dbg !1959
  %111 = or i1 %103, %109, !dbg !1961
  %112 = icmp ne i8 %108, 0, !dbg !1963
  %113 = and i1 %110, %112, !dbg !1963
  %114 = xor i1 %102, true, !dbg !1964
  %115 = xor i1 %104, true, !dbg !1897
  %116 = and i1 %109, %115, !dbg !1897
  %117 = or i1 %25, %116, !dbg !1897
  %118 = and i8 %99, %100, !dbg !1965
  %119 = and i8 %118, 1, !dbg !1965
  %120 = icmp ne i8 %119, 0, !dbg !1965
  %121 = and i1 %120, %105, !dbg !1965
  br label %122, !dbg !1967

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !1968
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !1937
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !1900
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !1904
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !1905
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !1906
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %129, metadata !1844, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %128, metadata !1843, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %127, metadata !1842, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %126, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %125, metadata !1836, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %124, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %123, metadata !1834, metadata !DIExpression()), !dbg !1883
  %131 = icmp eq i64 %126, -1, !dbg !1969
  br i1 %131, label %132, label %136, !dbg !1970

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1971
  %134 = load i8, i8* %133, align 1, !dbg !1971, !tbaa !1540
  %135 = icmp eq i8 %134, 0, !dbg !1972
  br i1 %135, label %581, label %138, !dbg !1973

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !1974
  br i1 %137, label %581, label %138, !dbg !1973

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1850, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 0, metadata !1851, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 0, metadata !1852, metadata !DIExpression()), !dbg !1975
  br i1 %106, label %139, label %154, !dbg !1976

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !1977
  %141 = and i1 %107, %131, !dbg !1978
  br i1 %141, label %142, label %144, !dbg !1978

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !1979
  call void @llvm.dbg.value(metadata i64 %143, metadata !1828, metadata !DIExpression()), !dbg !1883
  br label %144, !dbg !1980

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !1828, metadata !DIExpression()), !dbg !1883
  %146 = icmp ugt i64 %140, %145, !dbg !1981
  br i1 %146, label %154, label %147, !dbg !1982

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1983
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !1984
  %150 = icmp ne i32 %149, 0, !dbg !1985
  %151 = or i1 %150, %109, !dbg !1986
  %152 = xor i1 %150, true, !dbg !1986
  %153 = zext i1 %152 to i8, !dbg !1986
  br i1 %151, label %154, label %639, !dbg !1986

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !1975
  call void @llvm.dbg.value(metadata i8 %156, metadata !1850, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i64 %155, metadata !1828, metadata !DIExpression()), !dbg !1883
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1987
  %158 = load i8, i8* %157, align 1, !dbg !1987, !tbaa !1540
  call void @llvm.dbg.value(metadata i8 %158, metadata !1845, metadata !DIExpression()), !dbg !1975
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
  ], !dbg !1988

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !1989

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !1990

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1851, metadata !DIExpression()), !dbg !1975
  %162 = and i8 %127, 1, !dbg !1993
  %163 = icmp eq i8 %162, 0, !dbg !1993
  %164 = and i1 %110, %163, !dbg !1993
  br i1 %164, label %165, label %181, !dbg !1993

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1995
  br i1 %166, label %167, label %169, !dbg !1999

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1995
  store i8 39, i8* %168, align 1, !dbg !1995, !tbaa !1540
  br label %169, !dbg !1995

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1999
  call void @llvm.dbg.value(metadata i64 %170, metadata !1835, metadata !DIExpression()), !dbg !1883
  %171 = icmp ult i64 %170, %130, !dbg !2000
  br i1 %171, label %172, label %174, !dbg !2003

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2000
  store i8 36, i8* %173, align 1, !dbg !2000, !tbaa !1540
  br label %174, !dbg !2000

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2003
  call void @llvm.dbg.value(metadata i64 %175, metadata !1835, metadata !DIExpression()), !dbg !1883
  %176 = icmp ult i64 %175, %130, !dbg !2004
  br i1 %176, label %177, label %179, !dbg !2007

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2004
  store i8 39, i8* %178, align 1, !dbg !2004, !tbaa !1540
  br label %179, !dbg !2004

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2007
  call void @llvm.dbg.value(metadata i64 %180, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 1, metadata !1842, metadata !DIExpression()), !dbg !1883
  br label %181, !dbg !2008

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !1883
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !1883
  call void @llvm.dbg.value(metadata i8 %183, metadata !1842, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %182, metadata !1835, metadata !DIExpression()), !dbg !1883
  %184 = icmp ult i64 %182, %130, !dbg !2009
  br i1 %184, label %185, label %187, !dbg !2012

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2009
  store i8 92, i8* %186, align 1, !dbg !2009, !tbaa !1540
  br label %187, !dbg !2009

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2012
  call void @llvm.dbg.value(metadata i64 %188, metadata !1835, metadata !DIExpression()), !dbg !1883
  br i1 %103, label %189, label %463, !dbg !2013

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !2015
  %191 = icmp ult i64 %190, %155, !dbg !2016
  br i1 %191, label %192, label %463, !dbg !2017

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2018
  %194 = load i8, i8* %193, align 1, !dbg !2018, !tbaa !1540
  %195 = add i8 %194, -48, !dbg !2019
  %196 = icmp ult i8 %195, 10, !dbg !2019
  br i1 %196, label %197, label %463, !dbg !2019

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2020
  br i1 %198, label %199, label %201, !dbg !2024

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2020
  store i8 48, i8* %200, align 1, !dbg !2020, !tbaa !1540
  br label %201, !dbg !2020

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2024
  call void @llvm.dbg.value(metadata i64 %202, metadata !1835, metadata !DIExpression()), !dbg !1883
  %203 = icmp ult i64 %202, %130, !dbg !2025
  br i1 %203, label %204, label %206, !dbg !2028

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2025
  store i8 48, i8* %205, align 1, !dbg !2025, !tbaa !1540
  br label %206, !dbg !2025

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2028
  call void @llvm.dbg.value(metadata i64 %207, metadata !1835, metadata !DIExpression()), !dbg !1883
  br label %463, !dbg !2029

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !2030

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2031

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !2032

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !2033

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !2034
  %214 = icmp ult i64 %213, %155, !dbg !2035
  br i1 %214, label %215, label %463, !dbg !2036

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !2037
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2038
  %218 = load i8, i8* %217, align 1, !dbg !2038, !tbaa !1540
  %219 = icmp eq i8 %218, 63, !dbg !2039
  br i1 %219, label %220, label %463, !dbg !2040

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2041
  %222 = load i8, i8* %221, align 1, !dbg !2041, !tbaa !1540
  %223 = sext i8 %222 to i32, !dbg !2041
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
  ], !dbg !2042

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !2043

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1845, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i64 %213, metadata !1834, metadata !DIExpression()), !dbg !1883
  %226 = icmp ult i64 %124, %130, !dbg !2045
  br i1 %226, label %227, label %229, !dbg !2048

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2045
  store i8 63, i8* %228, align 1, !dbg !2045, !tbaa !1540
  br label %229, !dbg !2045

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2048
  call void @llvm.dbg.value(metadata i64 %230, metadata !1835, metadata !DIExpression()), !dbg !1883
  %231 = icmp ult i64 %230, %130, !dbg !2049
  br i1 %231, label %232, label %234, !dbg !2052

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2049
  store i8 34, i8* %233, align 1, !dbg !2049, !tbaa !1540
  br label %234, !dbg !2049

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2052
  call void @llvm.dbg.value(metadata i64 %235, metadata !1835, metadata !DIExpression()), !dbg !1883
  %236 = icmp ult i64 %235, %130, !dbg !2053
  br i1 %236, label %237, label %239, !dbg !2056

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2053
  store i8 34, i8* %238, align 1, !dbg !2053, !tbaa !1540
  br label %239, !dbg !2053

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2056
  call void @llvm.dbg.value(metadata i64 %240, metadata !1835, metadata !DIExpression()), !dbg !1883
  %241 = icmp ult i64 %240, %130, !dbg !2057
  br i1 %241, label %242, label %244, !dbg !2060

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2057
  store i8 63, i8* %243, align 1, !dbg !2057, !tbaa !1540
  br label %244, !dbg !2057

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2060
  call void @llvm.dbg.value(metadata i64 %245, metadata !1835, metadata !DIExpression()), !dbg !1883
  br label %463, !dbg !2061

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !1849, metadata !DIExpression()), !dbg !1975
  br label %256, !dbg !2062

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !1849, metadata !DIExpression()), !dbg !1975
  br label %256, !dbg !2063

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !1849, metadata !DIExpression()), !dbg !1975
  br label %254, !dbg !2064

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !1849, metadata !DIExpression()), !dbg !1975
  br label %254, !dbg !2065

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !1849, metadata !DIExpression()), !dbg !1975
  br label %256, !dbg !2066

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !1849, metadata !DIExpression()), !dbg !1975
  br i1 %110, label %252, label %253, !dbg !2067

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !2068

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !2071

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !2072
  call void @llvm.dbg.value(metadata i8 %255, metadata !1849, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.label(metadata !1878), !dbg !2073
  br i1 %111, label %256, label %625, !dbg !2074

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !2072
  call void @llvm.dbg.value(metadata i8 %257, metadata !1849, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.label(metadata !1879), !dbg !2076
  br i1 %102, label %488, label %463, !dbg !2077

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2078

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2079, !tbaa !1540
  %261 = icmp eq i8 %260, 0, !dbg !2080
  br i1 %261, label %262, label %463, !dbg !2081

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !2082
  br i1 %263, label %264, label %463, !dbg !2084

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1852, metadata !DIExpression()), !dbg !1975
  br label %265, !dbg !2085

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !1975
  call void @llvm.dbg.value(metadata i8 %266, metadata !1852, metadata !DIExpression()), !dbg !1975
  br i1 %111, label %463, label %625, !dbg !2086

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1843, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 1, metadata !1852, metadata !DIExpression()), !dbg !1975
  br i1 %110, label %268, label %463, !dbg !2087

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !2088

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !2090
  %271 = icmp ne i64 %125, 0, !dbg !2092
  %272 = or i1 %271, %270, !dbg !2093
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !2093
  %274 = select i1 %272, i64 %130, i64 0, !dbg !2093
  call void @llvm.dbg.value(metadata i64 %274, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %273, metadata !1836, metadata !DIExpression()), !dbg !1883
  %275 = icmp ult i64 %124, %274, !dbg !2094
  br i1 %275, label %276, label %278, !dbg !2097

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2094
  store i8 39, i8* %277, align 1, !dbg !2094, !tbaa !1540
  br label %278, !dbg !2094

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !2097
  call void @llvm.dbg.value(metadata i64 %279, metadata !1835, metadata !DIExpression()), !dbg !1883
  %280 = icmp ult i64 %279, %274, !dbg !2098
  br i1 %280, label %281, label %283, !dbg !2101

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2098
  store i8 92, i8* %282, align 1, !dbg !2098, !tbaa !1540
  br label %283, !dbg !2098

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !2101
  call void @llvm.dbg.value(metadata i64 %284, metadata !1835, metadata !DIExpression()), !dbg !1883
  %285 = icmp ult i64 %284, %274, !dbg !2102
  br i1 %285, label %286, label %288, !dbg !2105

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2102
  store i8 39, i8* %287, align 1, !dbg !2102, !tbaa !1540
  br label %288, !dbg !2102

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !2105
  call void @llvm.dbg.value(metadata i64 %289, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 0, metadata !1842, metadata !DIExpression()), !dbg !1883
  br label %463, !dbg !2106

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !2107

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1853, metadata !DIExpression()), !dbg !2108
  %292 = tail call i16** @__ctype_b_loc() #24, !dbg !2109
  %293 = load i16*, i16** %292, align 8, !dbg !2109, !tbaa !1342
  %294 = zext i8 %158 to i64, !dbg !2109
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2109
  %296 = load i16, i16* %295, align 2, !dbg !2109, !tbaa !2111
  %297 = lshr i16 %296, 14, !dbg !2113
  %298 = trunc i16 %297 to i8, !dbg !2113
  %299 = and i8 %298, 1, !dbg !2113
  call void @llvm.dbg.value(metadata i8 %299, metadata !1856, metadata !DIExpression()), !dbg !2108
  br label %355, !dbg !2114

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2115
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1857, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8* %23, metadata !2117, metadata !DIExpression()) #18, !dbg !2125
  call void @llvm.dbg.value(metadata i32 0, metadata !2123, metadata !DIExpression()) #18, !dbg !2125
  call void @llvm.dbg.value(metadata i64 8, metadata !2124, metadata !DIExpression()) #18, !dbg !2125
  store i64 0, i64* %10, align 8, !dbg !2127
  call void @llvm.dbg.value(metadata i64 0, metadata !1853, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i8 1, metadata !1856, metadata !DIExpression()), !dbg !2108
  %301 = icmp eq i64 %155, -1, !dbg !2128
  br i1 %301, label %302, label %304, !dbg !2130

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !2131
  call void @llvm.dbg.value(metadata i64 %303, metadata !1828, metadata !DIExpression()), !dbg !1883
  br label %304, !dbg !2132

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !1975
  call void @llvm.dbg.value(metadata i64 %305, metadata !1828, metadata !DIExpression()), !dbg !1883
  br label %306, !dbg !2133

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !2134
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !2135
  call void @llvm.dbg.value(metadata i8 %308, metadata !1856, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i64 %307, metadata !1853, metadata !DIExpression()), !dbg !2108
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2136
  %309 = add i64 %307, %123, !dbg !2137
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !2138
  %311 = sub i64 %305, %309, !dbg !2139
  call void @llvm.dbg.value(metadata i32* %12, metadata !1863, metadata !DIExpression(DW_OP_deref)), !dbg !1896
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #18, !dbg !2140
  call void @llvm.dbg.value(metadata i64 %312, metadata !1866, metadata !DIExpression()), !dbg !1896
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !2141

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1853, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i64 %307, metadata !1853, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i64 %307, metadata !1853, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i64 %307, metadata !1853, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i64 %307, metadata !1853, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i64 %307, metadata !1853, metadata !DIExpression()), !dbg !2108
  %314 = icmp ugt i64 %305, %309, !dbg !2142
  br i1 %314, label %315, label %340, !dbg !2144

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !2145
  br label %317, !dbg !2145

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !1853, metadata !DIExpression()), !dbg !2108
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !2146
  %321 = load i8, i8* %320, align 1, !dbg !2146, !tbaa !1540
  %322 = icmp eq i8 %321, 0, !dbg !2144
  br i1 %322, label %340, label %323, !dbg !2145

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !2147
  call void @llvm.dbg.value(metadata i64 %324, metadata !1853, metadata !DIExpression()), !dbg !2108
  %325 = add i64 %324, %123, !dbg !2148
  %326 = icmp ult i64 %325, %305, !dbg !2142
  br i1 %326, label %317, label %340, !dbg !2144, !llvm.loop !2149

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !2150
  %329 = and i1 %113, %328, !dbg !2153
  call void @llvm.dbg.value(metadata i64 1, metadata !1867, metadata !DIExpression()), !dbg !2154
  br i1 %329, label %330, label %343, !dbg !2153

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !1867, metadata !DIExpression()), !dbg !2154
  %332 = add i64 %331, %309, !dbg !2155
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !2156
  %334 = load i8, i8* %333, align 1, !dbg !2156, !tbaa !1540
  %335 = sext i8 %334 to i32, !dbg !2156
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !2157

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !2158
  call void @llvm.dbg.value(metadata i64 %337, metadata !1867, metadata !DIExpression()), !dbg !2154
  %338 = icmp eq i64 %337, %312, !dbg !2150
  br i1 %338, label %343, label %330, !dbg !2159, !llvm.loop !2160

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1853, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i8 %308, metadata !1856, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i64 %307, metadata !1853, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i8 %308, metadata !1856, metadata !DIExpression()), !dbg !2108
  br label %340, !dbg !2162

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2162
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !2163, !tbaa !1415
  call void @llvm.dbg.value(metadata i32 %344, metadata !1863, metadata !DIExpression()), !dbg !1896
  %345 = call i32 @iswprint(i32 %344) #18, !dbg !2165
  %346 = icmp eq i32 %345, 0, !dbg !2165
  %347 = select i1 %346, i8 0, i8 %308, !dbg !2166
  call void @llvm.dbg.value(metadata i8 %347, metadata !1856, metadata !DIExpression()), !dbg !2108
  %348 = add i64 %312, %307, !dbg !2167
  call void @llvm.dbg.value(metadata i64 %348, metadata !1853, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i8 %347, metadata !1856, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i64 %348, metadata !1853, metadata !DIExpression()), !dbg !2108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2162
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #21, !dbg !2168
  %350 = icmp eq i32 %349, 0, !dbg !2169
  br i1 %350, label %306, label %351, !dbg !2170, !llvm.loop !2171

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2173
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %94, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %94, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %94, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %94, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %305, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %305, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %305, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %305, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %305, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %94, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %94, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %94, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %94, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %94, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %305, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %305, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %305, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %305, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %305, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %94, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %94, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %94, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %94, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %94, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %305, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %305, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %305, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %305, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %305, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %94, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %94, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %94, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %94, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %94, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %305, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %305, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %305, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %305, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %305, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i32 2, metadata !1829, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i32 2, metadata !1829, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i32 2, metadata !1829, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i32 2, metadata !1829, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i32 2, metadata !1829, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %94, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %94, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %94, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %94, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %94, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %99, metadata !1839, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %99, metadata !1839, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %99, metadata !1839, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %99, metadata !1839, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %99, metadata !1839, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %305, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %305, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %305, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %305, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %305, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i32 2, metadata !1829, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i32 2, metadata !1829, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i32 2, metadata !1829, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i32 2, metadata !1829, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i32 2, metadata !1829, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %94, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %94, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %94, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %94, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %94, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %99, metadata !1839, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %99, metadata !1839, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %99, metadata !1839, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %99, metadata !1839, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %99, metadata !1839, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %305, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %305, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %305, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %305, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %305, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2162
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2173
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !1975
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !2174
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !2174
  call void @llvm.dbg.value(metadata i8 %358, metadata !1856, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i64 %357, metadata !1853, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i64 %356, metadata !1828, metadata !DIExpression()), !dbg !1883
  %359 = and i8 %358, 1, !dbg !2175
  %360 = icmp ne i8 %359, 0, !dbg !2175
  call void @llvm.dbg.value(metadata i8 %359, metadata !1852, metadata !DIExpression()), !dbg !1975
  %361 = icmp ult i64 %357, 2, !dbg !2176
  %362 = or i1 %360, %114, !dbg !2177
  %363 = and i1 %361, %362, !dbg !2178
  br i1 %363, label %463, label %364, !dbg !2178

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !2179
  call void @llvm.dbg.value(metadata i64 %365, metadata !1874, metadata !DIExpression()), !dbg !2180
  br label %366, !dbg !2181

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !1968
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !1883
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !1904
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !1975
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !1975
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !2182
  call void @llvm.dbg.value(metadata i8 %372, metadata !1851, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %371, metadata !1850, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %370, metadata !1845, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %369, metadata !1842, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %368, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %367, metadata !1834, metadata !DIExpression()), !dbg !1883
  br i1 %362, label %419, label %373, !dbg !2183

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !2188

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !1851, metadata !DIExpression()), !dbg !1975
  %375 = and i8 %369, 1, !dbg !2191
  %376 = icmp eq i8 %375, 0, !dbg !2191
  %377 = and i1 %110, %376, !dbg !2191
  br i1 %377, label %378, label %394, !dbg !2191

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !2193
  br i1 %379, label %380, label %382, !dbg !2197

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2193
  store i8 39, i8* %381, align 1, !dbg !2193, !tbaa !1540
  br label %382, !dbg !2193

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !2197
  call void @llvm.dbg.value(metadata i64 %383, metadata !1835, metadata !DIExpression()), !dbg !1883
  %384 = icmp ult i64 %383, %130, !dbg !2198
  br i1 %384, label %385, label %387, !dbg !2201

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2198
  store i8 36, i8* %386, align 1, !dbg !2198, !tbaa !1540
  br label %387, !dbg !2198

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !2201
  call void @llvm.dbg.value(metadata i64 %388, metadata !1835, metadata !DIExpression()), !dbg !1883
  %389 = icmp ult i64 %388, %130, !dbg !2202
  br i1 %389, label %390, label %392, !dbg !2205

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !2202
  store i8 39, i8* %391, align 1, !dbg !2202, !tbaa !1540
  br label %392, !dbg !2202

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !2205
  call void @llvm.dbg.value(metadata i64 %393, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 1, metadata !1842, metadata !DIExpression()), !dbg !1883
  br label %394, !dbg !2206

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !1883
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !1883
  call void @llvm.dbg.value(metadata i8 %396, metadata !1842, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %395, metadata !1835, metadata !DIExpression()), !dbg !1883
  %397 = icmp ult i64 %395, %130, !dbg !2207
  br i1 %397, label %398, label %400, !dbg !2210

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2207
  store i8 92, i8* %399, align 1, !dbg !2207, !tbaa !1540
  br label %400, !dbg !2207

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !2210
  call void @llvm.dbg.value(metadata i64 %401, metadata !1835, metadata !DIExpression()), !dbg !1883
  %402 = icmp ult i64 %401, %130, !dbg !2211
  br i1 %402, label %403, label %407, !dbg !2214

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !2211
  %405 = or i8 %404, 48, !dbg !2211
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2211
  store i8 %405, i8* %406, align 1, !dbg !2211, !tbaa !1540
  br label %407, !dbg !2211

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !2214
  call void @llvm.dbg.value(metadata i64 %408, metadata !1835, metadata !DIExpression()), !dbg !1883
  %409 = icmp ult i64 %408, %130, !dbg !2215
  br i1 %409, label %410, label %415, !dbg !2218

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !2215
  %412 = and i8 %411, 7, !dbg !2215
  %413 = or i8 %412, 48, !dbg !2215
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2215
  store i8 %413, i8* %414, align 1, !dbg !2215, !tbaa !1540
  br label %415, !dbg !2215

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !2218
  call void @llvm.dbg.value(metadata i64 %416, metadata !1835, metadata !DIExpression()), !dbg !1883
  %417 = and i8 %370, 7, !dbg !2219
  %418 = or i8 %417, 48, !dbg !2220
  call void @llvm.dbg.value(metadata i8 %418, metadata !1845, metadata !DIExpression()), !dbg !1975
  br label %428, !dbg !2221

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !2222
  %421 = icmp eq i8 %420, 0, !dbg !2222
  br i1 %421, label %428, label %422, !dbg !2224

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !2225
  br i1 %423, label %424, label %426, !dbg !2229

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2225
  store i8 92, i8* %425, align 1, !dbg !2225, !tbaa !1540
  br label %426, !dbg !2225

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !2229
  call void @llvm.dbg.value(metadata i64 %427, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 0, metadata !1850, metadata !DIExpression()), !dbg !1975
  br label %428, !dbg !2230

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !1883
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !1904
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !1975
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !1975
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !1975
  call void @llvm.dbg.value(metadata i8 %433, metadata !1851, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %432, metadata !1850, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %431, metadata !1845, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %430, metadata !1842, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %429, metadata !1835, metadata !DIExpression()), !dbg !1883
  %434 = add i64 %367, 1, !dbg !2231
  %435 = icmp ugt i64 %365, %434, !dbg !2233
  br i1 %435, label %436, label %526, !dbg !2234

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !2235
  %438 = icmp ne i8 %437, 0, !dbg !2235
  %439 = and i8 %433, 1, !dbg !2235
  %440 = icmp eq i8 %439, 0, !dbg !2235
  %441 = and i1 %438, %440, !dbg !2235
  br i1 %441, label %442, label %453, !dbg !2235

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !2238
  br i1 %443, label %444, label %446, !dbg !2242

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !2238
  store i8 39, i8* %445, align 1, !dbg !2238, !tbaa !1540
  br label %446, !dbg !2238

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !2242
  call void @llvm.dbg.value(metadata i64 %447, metadata !1835, metadata !DIExpression()), !dbg !1883
  %448 = icmp ult i64 %447, %130, !dbg !2243
  br i1 %448, label %449, label %451, !dbg !2246

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !2243
  store i8 39, i8* %450, align 1, !dbg !2243, !tbaa !1540
  br label %451, !dbg !2243

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !2246
  call void @llvm.dbg.value(metadata i64 %452, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 0, metadata !1842, metadata !DIExpression()), !dbg !1883
  br label %453, !dbg !2247

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !2248
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !1883
  call void @llvm.dbg.value(metadata i8 %455, metadata !1842, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %454, metadata !1835, metadata !DIExpression()), !dbg !1883
  %456 = icmp ult i64 %454, %130, !dbg !2249
  br i1 %456, label %457, label %459, !dbg !2252

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2249
  store i8 %431, i8* %458, align 1, !dbg !2249, !tbaa !1540
  br label %459, !dbg !2249

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !2252
  call void @llvm.dbg.value(metadata i64 %460, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %434, metadata !1834, metadata !DIExpression()), !dbg !1883
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !2253
  %462 = load i8, i8* %461, align 1, !dbg !2253, !tbaa !1540
  call void @llvm.dbg.value(metadata i8 %462, metadata !1845, metadata !DIExpression()), !dbg !1975
  br label %366, !dbg !2254, !llvm.loop !2255

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !1968
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !1883
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !1900
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !2258
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !1883
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !1883
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !1975
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !1975
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !1975
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %472, metadata !1852, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %471, metadata !1851, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %156, metadata !1850, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %470, metadata !1845, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %469, metadata !1843, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %468, metadata !1842, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %467, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %466, metadata !1836, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %465, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %464, metadata !1834, metadata !DIExpression()), !dbg !1883
  br i1 %117, label %486, label %474, !dbg !2259

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !2260
  %476 = zext i8 %475 to i64, !dbg !2260
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !2261
  %478 = load i32, i32* %477, align 4, !dbg !2261, !tbaa !1415
  %479 = and i8 %470, 31, !dbg !2262
  %480 = zext i8 %479 to i32, !dbg !2262
  %481 = shl nuw i32 1, %480, !dbg !2263
  %482 = and i32 %478, %481, !dbg !2263
  %483 = icmp eq i32 %482, 0, !dbg !2263
  %484 = icmp eq i8 %156, 0, !dbg !2264
  %485 = and i1 %484, %483, !dbg !2265
  br i1 %485, label %526, label %488, !dbg !2265

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !2264
  br i1 %487, label %526, label %488, !dbg !2266

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !2267
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !1883
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !1900
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !2258
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !1904
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !1905
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !1975
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !1975
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %496, metadata !1852, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %495, metadata !1845, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %494, metadata !1843, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %493, metadata !1842, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %492, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %491, metadata !1836, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %490, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %489, metadata !1834, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.label(metadata !1880), !dbg !2268
  br i1 %109, label %498, label %629, !dbg !2269

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !1851, metadata !DIExpression()), !dbg !1975
  %499 = and i8 %493, 1, !dbg !2271
  %500 = icmp eq i8 %499, 0, !dbg !2271
  %501 = and i1 %110, %500, !dbg !2271
  br i1 %501, label %502, label %518, !dbg !2271

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !2273
  br i1 %503, label %504, label %506, !dbg !2277

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !2273
  store i8 39, i8* %505, align 1, !dbg !2273, !tbaa !1540
  br label %506, !dbg !2273

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !2277
  call void @llvm.dbg.value(metadata i64 %507, metadata !1835, metadata !DIExpression()), !dbg !1883
  %508 = icmp ult i64 %507, %497, !dbg !2278
  br i1 %508, label %509, label %511, !dbg !2281

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !2278
  store i8 36, i8* %510, align 1, !dbg !2278, !tbaa !1540
  br label %511, !dbg !2278

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !2281
  call void @llvm.dbg.value(metadata i64 %512, metadata !1835, metadata !DIExpression()), !dbg !1883
  %513 = icmp ult i64 %512, %497, !dbg !2282
  br i1 %513, label %514, label %516, !dbg !2285

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2282
  store i8 39, i8* %515, align 1, !dbg !2282, !tbaa !1540
  br label %516, !dbg !2282

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !2285
  call void @llvm.dbg.value(metadata i64 %517, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 1, metadata !1842, metadata !DIExpression()), !dbg !1883
  br label %518, !dbg !2286

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !1975
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !1883
  call void @llvm.dbg.value(metadata i8 %520, metadata !1842, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %519, metadata !1835, metadata !DIExpression()), !dbg !1883
  %521 = icmp ult i64 %519, %497, !dbg !2287
  br i1 %521, label %522, label %524, !dbg !2290

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2287
  store i8 92, i8* %523, align 1, !dbg !2287, !tbaa !1540
  br label %524, !dbg !2287

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !2290
  call void @llvm.dbg.value(metadata i64 %525, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %536, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %535, metadata !1852, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %534, metadata !1851, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %533, metadata !1845, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %532, metadata !1843, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %531, metadata !1842, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %530, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %529, metadata !1836, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %528, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %527, metadata !1834, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.label(metadata !1881), !dbg !2291
  br label %553, !dbg !2292

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !2267
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !1883
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !1900
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !2258
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !1904
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !1905
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2295
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !1975
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !1975
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %535, metadata !1852, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %534, metadata !1851, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %533, metadata !1845, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %532, metadata !1843, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %531, metadata !1842, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %530, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %529, metadata !1836, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %528, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %527, metadata !1834, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.label(metadata !1881), !dbg !2291
  %537 = and i8 %531, 1, !dbg !2292
  %538 = icmp ne i8 %537, 0, !dbg !2292
  %539 = and i8 %534, 1, !dbg !2292
  %540 = icmp eq i8 %539, 0, !dbg !2292
  %541 = and i1 %538, %540, !dbg !2292
  br i1 %541, label %542, label %553, !dbg !2292

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2296
  br i1 %543, label %544, label %546, !dbg !2300

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2296
  store i8 39, i8* %545, align 1, !dbg !2296, !tbaa !1540
  br label %546, !dbg !2296

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2300
  call void @llvm.dbg.value(metadata i64 %547, metadata !1835, metadata !DIExpression()), !dbg !1883
  %548 = icmp ult i64 %547, %536, !dbg !2301
  br i1 %548, label %549, label %551, !dbg !2304

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2301
  store i8 39, i8* %550, align 1, !dbg !2301, !tbaa !1540
  br label %551, !dbg !2301

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2304
  call void @llvm.dbg.value(metadata i64 %552, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 0, metadata !1842, metadata !DIExpression()), !dbg !1883
  br label %553, !dbg !2305

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !1975
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !1883
  call void @llvm.dbg.value(metadata i8 %562, metadata !1842, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %561, metadata !1835, metadata !DIExpression()), !dbg !1883
  %563 = icmp ult i64 %561, %554, !dbg !2306
  br i1 %563, label %564, label %566, !dbg !2309

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2306
  store i8 %556, i8* %565, align 1, !dbg !2306, !tbaa !1540
  br label %566, !dbg !2306

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2309
  call void @llvm.dbg.value(metadata i64 %567, metadata !1835, metadata !DIExpression()), !dbg !1883
  %568 = and i8 %555, 1, !dbg !2310
  %569 = icmp eq i8 %568, 0, !dbg !2310
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2312
  call void @llvm.dbg.value(metadata i8 %570, metadata !1844, metadata !DIExpression()), !dbg !1883
  br label %571, !dbg !2313

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !2267
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !1883
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !1900
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !2258
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !1904
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !1883
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !1906
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %578, metadata !1844, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %577, metadata !1843, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %576, metadata !1842, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %575, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %574, metadata !1836, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %573, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %572, metadata !1834, metadata !DIExpression()), !dbg !1883
  %580 = add i64 %572, 1, !dbg !2314
  call void @llvm.dbg.value(metadata i64 %580, metadata !1834, metadata !DIExpression()), !dbg !1883
  br label %122, !dbg !2315, !llvm.loop !2316

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %124, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %125, metadata !1836, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %125, metadata !1836, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %127, metadata !1842, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %127, metadata !1842, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %128, metadata !1843, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %128, metadata !1843, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %129, metadata !1844, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %129, metadata !1844, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %124, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %124, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %125, metadata !1836, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %125, metadata !1836, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %127, metadata !1842, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %127, metadata !1842, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %128, metadata !1843, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %128, metadata !1843, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %129, metadata !1844, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %129, metadata !1844, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %124, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %124, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %125, metadata !1836, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %125, metadata !1836, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %127, metadata !1842, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %127, metadata !1842, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %128, metadata !1843, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %128, metadata !1843, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %129, metadata !1844, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %129, metadata !1844, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %124, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %124, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %125, metadata !1836, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %125, metadata !1836, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %127, metadata !1842, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %127, metadata !1842, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %128, metadata !1843, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %128, metadata !1843, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %129, metadata !1844, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %129, metadata !1844, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %124, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %124, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %125, metadata !1836, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %125, metadata !1836, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %582, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %582, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %127, metadata !1842, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %127, metadata !1842, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %128, metadata !1843, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %128, metadata !1843, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %129, metadata !1844, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %129, metadata !1844, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %124, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %124, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %125, metadata !1836, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %125, metadata !1836, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %582, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %582, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %127, metadata !1842, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %127, metadata !1842, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %128, metadata !1843, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %128, metadata !1843, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %129, metadata !1844, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %129, metadata !1844, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  %583 = icmp eq i64 %124, 0, !dbg !2318
  %584 = and i1 %110, %583, !dbg !2320
  %585 = xor i1 %584, true, !dbg !2320
  %586 = or i1 %109, %585, !dbg !2320
  br i1 %586, label %587, label %629, !dbg !2320

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2321
  %589 = xor i1 %588, true, !dbg !2321
  %590 = and i8 %128, 1, !dbg !2323
  %591 = icmp eq i8 %590, 0, !dbg !2323
  %592 = or i1 %591, %589, !dbg !2321
  br i1 %592, label %602, label %593, !dbg !2321

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2324
  %595 = icmp eq i8 %594, 0, !dbg !2324
  br i1 %595, label %598, label %596, !dbg !2327

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %94, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %125, metadata !1836, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %582, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %94, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %125, metadata !1836, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %582, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %94, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %125, metadata !1836, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %582, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %94, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %125, metadata !1836, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %94, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %125, metadata !1836, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %582, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %94, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %125, metadata !1836, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %582, metadata !1828, metadata !DIExpression()), !dbg !1883
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2328
  br label %645, !dbg !2329

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2330
  %600 = icmp ne i64 %125, 0, !dbg !2332
  %601 = and i1 %600, %599, !dbg !2333
  br i1 %601, label %26, label %602, !dbg !2333

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !1837, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %97, metadata !1837, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %124, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %124, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %97, metadata !1837, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %97, metadata !1837, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %124, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %124, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %97, metadata !1837, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %97, metadata !1837, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %124, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %124, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %97, metadata !1837, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %97, metadata !1837, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %124, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %124, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %97, metadata !1837, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %97, metadata !1837, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %124, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %124, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %130, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %97, metadata !1837, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %97, metadata !1837, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %124, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %124, metadata !1835, metadata !DIExpression()), !dbg !1883
  %603 = icmp ne i8* %97, null, !dbg !2334
  %604 = and i1 %603, %109, !dbg !2336
  br i1 %604, label %605, label %620, !dbg !2336

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1837, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %124, metadata !1835, metadata !DIExpression()), !dbg !1883
  %606 = load i8, i8* %97, align 1, !dbg !2337, !tbaa !1540
  %607 = icmp eq i8 %606, 0, !dbg !2340
  br i1 %607, label %620, label %608, !dbg !2340

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !1837, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %611, metadata !1835, metadata !DIExpression()), !dbg !1883
  %612 = icmp ult i64 %611, %130, !dbg !2341
  br i1 %612, label %613, label %615, !dbg !2344

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2341
  store i8 %609, i8* %614, align 1, !dbg !2341, !tbaa !1540
  br label %615, !dbg !2341

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2344
  call void @llvm.dbg.value(metadata i64 %616, metadata !1835, metadata !DIExpression()), !dbg !1883
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2345
  call void @llvm.dbg.value(metadata i8* %617, metadata !1837, metadata !DIExpression()), !dbg !1883
  %618 = load i8, i8* %617, align 1, !dbg !2337, !tbaa !1540
  %619 = icmp eq i8 %618, 0, !dbg !2340
  br i1 %619, label %620, label %608, !dbg !2340, !llvm.loop !2346

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !1937
  call void @llvm.dbg.value(metadata i64 %621, metadata !1835, metadata !DIExpression()), !dbg !1883
  %622 = icmp ult i64 %621, %130, !dbg !2348
  br i1 %622, label %623, label %645, !dbg !2350

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2351
  store i8 0, i8* %624, align 1, !dbg !2352, !tbaa !1540
  br label %645, !dbg !2351

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %630, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.label(metadata !1882), !dbg !2353
  %627 = icmp eq i8 %101, 0, !dbg !2354
  %628 = select i1 %627, i32 2, i32 4, !dbg !2354
  br label %635, !dbg !2354

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %630, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.label(metadata !1882), !dbg !2353
  %632 = icmp eq i32 %93, 2, !dbg !2356
  %633 = icmp eq i8 %101, 0, !dbg !2354
  %634 = select i1 %633, i32 2, i32 4, !dbg !2354
  br i1 %632, label %635, label %639, !dbg !2354

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2354

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !1829, metadata !DIExpression()), !dbg !1883
  %643 = and i32 %5, -3, !dbg !2357
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2358
  br label %645, !dbg !2359

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2360
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2361 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2365, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i32 %1, metadata !2366, metadata !DIExpression()), !dbg !2369
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #18, !dbg !2370
  call void @llvm.dbg.value(metadata i8* %3, metadata !2367, metadata !DIExpression()), !dbg !2369
  %4 = icmp eq i8* %3, %0, !dbg !2371
  br i1 %4, label %5, label %71, !dbg !2373

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #18, !dbg !2374
  call void @llvm.dbg.value(metadata i8* %6, metadata !2368, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8* %6, metadata !2375, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8* undef, metadata !2381, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 85, metadata !2382, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 84, metadata !2383, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 70, metadata !2384, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 45, metadata !2385, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 56, metadata !2386, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 0, metadata !2387, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 0, metadata !2388, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 0, metadata !2389, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 0, metadata !2390, metadata !DIExpression()), !dbg !2391
  %7 = load i8, i8* %6, align 1, !dbg !2394, !tbaa !1540
  %8 = and i8 %7, -33, !dbg !2394
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2394

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2396, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i8* undef, metadata !2401, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i8 84, metadata !2402, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i8 70, metadata !2403, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i8 45, metadata !2404, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i8 56, metadata !2405, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i8 0, metadata !2406, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i8 0, metadata !2407, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i8 0, metadata !2408, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i8 0, metadata !2409, metadata !DIExpression()), !dbg !2410
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2414
  %11 = load i8, i8* %10, align 1, !dbg !2414, !tbaa !1540
  %12 = and i8 %11, -33, !dbg !2414
  %13 = icmp eq i8 %12, 84, !dbg !2414
  br i1 %13, label %14, label %68, !dbg !2414

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2416, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8* undef, metadata !2421, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 70, metadata !2422, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 45, metadata !2423, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 56, metadata !2424, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 0, metadata !2425, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 0, metadata !2426, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 0, metadata !2427, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 0, metadata !2428, metadata !DIExpression()), !dbg !2429
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2433
  %16 = load i8, i8* %15, align 1, !dbg !2433, !tbaa !1540
  %17 = and i8 %16, -33, !dbg !2433
  %18 = icmp eq i8 %17, 70, !dbg !2433
  br i1 %18, label %19, label %68, !dbg !2433

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2435, metadata !DIExpression()), !dbg !2447
  call void @llvm.dbg.value(metadata i8* undef, metadata !2440, metadata !DIExpression()), !dbg !2447
  call void @llvm.dbg.value(metadata i8 45, metadata !2441, metadata !DIExpression()), !dbg !2447
  call void @llvm.dbg.value(metadata i8 56, metadata !2442, metadata !DIExpression()), !dbg !2447
  call void @llvm.dbg.value(metadata i8 0, metadata !2443, metadata !DIExpression()), !dbg !2447
  call void @llvm.dbg.value(metadata i8 0, metadata !2444, metadata !DIExpression()), !dbg !2447
  call void @llvm.dbg.value(metadata i8 0, metadata !2445, metadata !DIExpression()), !dbg !2447
  call void @llvm.dbg.value(metadata i8 0, metadata !2446, metadata !DIExpression()), !dbg !2447
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2451
  %21 = load i8, i8* %20, align 1, !dbg !2451, !tbaa !1540
  %22 = icmp eq i8 %21, 45, !dbg !2451
  br i1 %22, label %23, label %68, !dbg !2453

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2454, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i8* undef, metadata !2459, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i8 56, metadata !2460, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i8 0, metadata !2461, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i8 0, metadata !2462, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i8 0, metadata !2463, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i8 0, metadata !2464, metadata !DIExpression()), !dbg !2465
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2469
  %25 = load i8, i8* %24, align 1, !dbg !2469, !tbaa !1540
  %26 = icmp eq i8 %25, 56, !dbg !2469
  br i1 %26, label %27, label %68, !dbg !2471

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2472, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i8* undef, metadata !2477, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i8 0, metadata !2478, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i8 0, metadata !2479, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i8 0, metadata !2480, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i8 0, metadata !2481, metadata !DIExpression()), !dbg !2482
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2486
  %29 = load i8, i8* %28, align 1, !dbg !2486, !tbaa !1540
  %30 = icmp eq i8 %29, 0, !dbg !2486
  br i1 %30, label %31, label %68, !dbg !2488

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2489, !tbaa !1540
  %33 = icmp eq i8 %32, 96, !dbg !2490
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.66, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.67, i64 0, i64 0), !dbg !2489
  br label %71, !dbg !2491

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2396, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i8* undef, metadata !2401, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i8 66, metadata !2402, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i8 49, metadata !2403, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i8 56, metadata !2404, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i8 48, metadata !2405, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i8 51, metadata !2406, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i8 48, metadata !2407, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i8 0, metadata !2408, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i8 0, metadata !2409, metadata !DIExpression()), !dbg !2492
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2496
  %37 = load i8, i8* %36, align 1, !dbg !2496, !tbaa !1540
  %38 = and i8 %37, -33, !dbg !2496
  %39 = icmp eq i8 %38, 66, !dbg !2496
  br i1 %39, label %40, label %68, !dbg !2496

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2416, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i8* undef, metadata !2421, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i8 49, metadata !2422, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i8 56, metadata !2423, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i8 48, metadata !2424, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i8 51, metadata !2425, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i8 48, metadata !2426, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i8 0, metadata !2427, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i8 0, metadata !2428, metadata !DIExpression()), !dbg !2497
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2499
  %42 = load i8, i8* %41, align 1, !dbg !2499, !tbaa !1540
  %43 = icmp eq i8 %42, 49, !dbg !2499
  br i1 %43, label %44, label %68, !dbg !2500

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2435, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.value(metadata i8* undef, metadata !2440, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.value(metadata i8 56, metadata !2441, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.value(metadata i8 48, metadata !2442, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.value(metadata i8 51, metadata !2443, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.value(metadata i8 48, metadata !2444, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.value(metadata i8 0, metadata !2445, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.value(metadata i8 0, metadata !2446, metadata !DIExpression()), !dbg !2501
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2503
  %46 = load i8, i8* %45, align 1, !dbg !2503, !tbaa !1540
  %47 = icmp eq i8 %46, 56, !dbg !2503
  br i1 %47, label %48, label %68, !dbg !2504

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2454, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata i8* undef, metadata !2459, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata i8 48, metadata !2460, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata i8 51, metadata !2461, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata i8 48, metadata !2462, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata i8 0, metadata !2463, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata i8 0, metadata !2464, metadata !DIExpression()), !dbg !2505
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2507
  %50 = load i8, i8* %49, align 1, !dbg !2507, !tbaa !1540
  %51 = icmp eq i8 %50, 48, !dbg !2507
  br i1 %51, label %52, label %68, !dbg !2508

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2472, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i8* undef, metadata !2477, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i8 51, metadata !2478, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i8 48, metadata !2479, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i8 0, metadata !2480, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i8 0, metadata !2481, metadata !DIExpression()), !dbg !2509
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2511
  %54 = load i8, i8* %53, align 1, !dbg !2511, !tbaa !1540
  %55 = icmp eq i8 %54, 51, !dbg !2511
  br i1 %55, label %56, label %68, !dbg !2512

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2513, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata i8* undef, metadata !2518, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata i8 48, metadata !2519, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata i8 0, metadata !2520, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata i8 0, metadata !2521, metadata !DIExpression()), !dbg !2522
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2526
  %58 = load i8, i8* %57, align 1, !dbg !2526, !tbaa !1540
  %59 = icmp eq i8 %58, 48, !dbg !2526
  br i1 %59, label %60, label %68, !dbg !2528

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2529, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i8* undef, metadata !2534, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i8 0, metadata !2535, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i8 0, metadata !2536, metadata !DIExpression()), !dbg !2537
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2541
  %62 = load i8, i8* %61, align 1, !dbg !2541, !tbaa !1540
  %63 = icmp eq i8 %62, 0, !dbg !2541
  br i1 %63, label %64, label %68, !dbg !2543

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2544, !tbaa !1540
  %66 = icmp eq i8 %65, 96, !dbg !2545
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.68, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.69, i64 0, i64 0), !dbg !2544
  br label %71, !dbg !2546

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2547
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), !dbg !2548
  br label %71, !dbg !2549

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2369
  ret i8* %72, !dbg !2550
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #15

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #16

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !326 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !330 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2551 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2555, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i64 %1, metadata !2556, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2557, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i8* %0, metadata !2559, metadata !DIExpression()) #18, !dbg !2572
  call void @llvm.dbg.value(metadata i64 %1, metadata !2564, metadata !DIExpression()) #18, !dbg !2572
  call void @llvm.dbg.value(metadata i64* null, metadata !2565, metadata !DIExpression()) #18, !dbg !2572
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2566, metadata !DIExpression()) #18, !dbg !2572
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2574
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2574
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2567, metadata !DIExpression()) #18, !dbg !2572
  %6 = tail call i32* @__errno_location() #24, !dbg !2575
  %7 = load i32, i32* %6, align 4, !dbg !2575, !tbaa !1415
  call void @llvm.dbg.value(metadata i32 %7, metadata !2568, metadata !DIExpression()) #18, !dbg !2572
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2576
  %9 = load i32, i32* %8, align 4, !dbg !2576, !tbaa !1768
  %10 = or i32 %9, 1, !dbg !2577
  call void @llvm.dbg.value(metadata i32 %10, metadata !2569, metadata !DIExpression()) #18, !dbg !2572
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2578
  %12 = load i32, i32* %11, align 8, !dbg !2578, !tbaa !1716
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2579
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2580
  %15 = load i8*, i8** %14, align 8, !dbg !2580, !tbaa !1791
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2581
  %17 = load i8*, i8** %16, align 8, !dbg !2581, !tbaa !1794
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #18, !dbg !2582
  %19 = add i64 %18, 1, !dbg !2583
  call void @llvm.dbg.value(metadata i64 %19, metadata !2570, metadata !DIExpression()) #18, !dbg !2572
  call void @llvm.dbg.value(metadata i64 %19, metadata !2584, metadata !DIExpression()) #18, !dbg !2589
  %20 = tail call noalias i8* @xmalloc(i64 %19) #18, !dbg !2591
  call void @llvm.dbg.value(metadata i8* %20, metadata !2571, metadata !DIExpression()) #18, !dbg !2572
  %21 = load i32, i32* %11, align 8, !dbg !2592, !tbaa !1716
  %22 = load i8*, i8** %14, align 8, !dbg !2593, !tbaa !1791
  %23 = load i8*, i8** %16, align 8, !dbg !2594, !tbaa !1794
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #18, !dbg !2595
  store i32 %7, i32* %6, align 4, !dbg !2596, !tbaa !1415
  ret i8* %20, !dbg !2597
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2560 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2559, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i64 %1, metadata !2564, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i64* %2, metadata !2565, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2566, metadata !DIExpression()), !dbg !2598
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2599
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2599
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2567, metadata !DIExpression()), !dbg !2598
  %7 = tail call i32* @__errno_location() #24, !dbg !2600
  %8 = load i32, i32* %7, align 4, !dbg !2600, !tbaa !1415
  call void @llvm.dbg.value(metadata i32 %8, metadata !2568, metadata !DIExpression()), !dbg !2598
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2601
  %10 = load i32, i32* %9, align 4, !dbg !2601, !tbaa !1768
  %11 = icmp ne i64* %2, null, !dbg !2602
  %12 = xor i1 %11, true, !dbg !2602
  %13 = zext i1 %12 to i32, !dbg !2602
  %14 = or i32 %10, %13, !dbg !2603
  call void @llvm.dbg.value(metadata i32 %14, metadata !2569, metadata !DIExpression()), !dbg !2598
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2604
  %16 = load i32, i32* %15, align 8, !dbg !2604, !tbaa !1716
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2605
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2606
  %19 = load i8*, i8** %18, align 8, !dbg !2606, !tbaa !1791
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2607
  %21 = load i8*, i8** %20, align 8, !dbg !2607, !tbaa !1794
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2608
  %23 = add i64 %22, 1, !dbg !2609
  call void @llvm.dbg.value(metadata i64 %23, metadata !2570, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i64 %23, metadata !2584, metadata !DIExpression()) #18, !dbg !2610
  %24 = tail call noalias i8* @xmalloc(i64 %23) #18, !dbg !2612
  call void @llvm.dbg.value(metadata i8* %24, metadata !2571, metadata !DIExpression()), !dbg !2598
  %25 = load i32, i32* %15, align 8, !dbg !2613, !tbaa !1716
  %26 = load i8*, i8** %18, align 8, !dbg !2614, !tbaa !1791
  %27 = load i8*, i8** %20, align 8, !dbg !2615, !tbaa !1794
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2616
  store i32 %8, i32* %7, align 4, !dbg !2617, !tbaa !1415
  br i1 %11, label %29, label %30, !dbg !2618

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2619, !tbaa !2621
  br label %30, !dbg !2623

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !2624
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2625 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2629, !tbaa !1342
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2627, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i32 1, metadata !2628, metadata !DIExpression()), !dbg !2630
  %2 = load i32, i32* @nslots, align 4, !dbg !2631, !tbaa !1415
  %3 = icmp sgt i32 %2, 1, !dbg !2634
  br i1 %3, label %4, label %12, !dbg !2635

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2628, metadata !DIExpression()), !dbg !2630
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2636
  %7 = load i8*, i8** %6, align 8, !dbg !2636, !tbaa !2637
  tail call void @free(i8* %7) #18, !dbg !2639
  %8 = add nuw nsw i64 %5, 1, !dbg !2640
  call void @llvm.dbg.value(metadata i64 %8, metadata !2628, metadata !DIExpression()), !dbg !2630
  %9 = load i32, i32* @nslots, align 4, !dbg !2631, !tbaa !1415
  %10 = sext i32 %9 to i64, !dbg !2634
  %11 = icmp slt i64 %8, %10, !dbg !2634
  br i1 %11, label %4, label %12, !dbg !2635, !llvm.loop !2641

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2643
  %14 = load i8*, i8** %13, align 8, !dbg !2643, !tbaa !2637
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2645
  br i1 %15, label %17, label %16, !dbg !2646

16:                                               ; preds = %12
  tail call void @free(i8* %14) #18, !dbg !2647
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2649, !tbaa !2650
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2651, !tbaa !2637
  br label %17, !dbg !2652

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2653
  br i1 %18, label %21, label %19, !dbg !2655

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2656
  tail call void @free(i8* %20) #18, !dbg !2658
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2659, !tbaa !1342
  br label %21, !dbg !2660

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2661, !tbaa !1415
  ret void, !dbg !2662
}

; Function Attrs: nounwind
declare !dbg !303 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2663 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2665, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i8* %1, metadata !2666, metadata !DIExpression()), !dbg !2667
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2668
  ret i8* %3, !dbg !2669
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2670 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2674, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8* %1, metadata !2675, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %2, metadata !2676, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2677, metadata !DIExpression()), !dbg !2689
  %5 = tail call i32* @__errno_location() #24, !dbg !2690
  %6 = load i32, i32* %5, align 4, !dbg !2690, !tbaa !1415
  call void @llvm.dbg.value(metadata i32 %6, metadata !2678, metadata !DIExpression()), !dbg !2689
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2691, !tbaa !1342
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2679, metadata !DIExpression()), !dbg !2689
  %8 = icmp slt i32 %0, 0, !dbg !2692
  br i1 %8, label %9, label %10, !dbg !2694

9:                                                ; preds = %4
  tail call void @abort() #22, !dbg !2695
  unreachable, !dbg !2695

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2696, !tbaa !1415
  %12 = icmp sgt i32 %11, %0, !dbg !2697
  br i1 %12, label %34, label %13, !dbg !2698

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2699
  call void @llvm.dbg.value(metadata i1 %14, metadata !2680, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2683, metadata !DIExpression()), !dbg !2700
  %15 = icmp eq i32 %0, 2147483647, !dbg !2701
  br i1 %15, label %16, label %17, !dbg !2703

16:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !2704
  unreachable, !dbg !2704

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2705
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2705
  %20 = add nuw nsw i32 %0, 1, !dbg !2706
  %21 = sext i32 %20 to i64, !dbg !2707
  %22 = shl nuw nsw i64 %21, 4, !dbg !2708
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #18, !dbg !2709
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2709
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2679, metadata !DIExpression()), !dbg !2689
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2710, !tbaa !1342
  br i1 %14, label %25, label %26, !dbg !2711

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2712, !tbaa.struct !2714
  br label %26, !dbg !2715

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2716, !tbaa !1415
  %28 = sext i32 %27 to i64, !dbg !2717
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2717
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2718
  %31 = sub nsw i32 %20, %27, !dbg !2719
  %32 = sext i32 %31 to i64, !dbg !2720
  %33 = shl nsw i64 %32, 4, !dbg !2721
  call void @llvm.dbg.value(metadata i8* %30, metadata !2117, metadata !DIExpression()) #18, !dbg !2722
  call void @llvm.dbg.value(metadata i32 0, metadata !2123, metadata !DIExpression()) #18, !dbg !2722
  call void @llvm.dbg.value(metadata i64 %33, metadata !2124, metadata !DIExpression()) #18, !dbg !2722
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #18, !dbg !2724
  store i32 %20, i32* @nslots, align 4, !dbg !2725, !tbaa !1415
  br label %34, !dbg !2726

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2689
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2679, metadata !DIExpression()), !dbg !2689
  %36 = zext i32 %0 to i64, !dbg !2727
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2728
  %38 = load i64, i64* %37, align 8, !dbg !2728, !tbaa !2650
  call void @llvm.dbg.value(metadata i64 %38, metadata !2684, metadata !DIExpression()), !dbg !2729
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2730
  %40 = load i8*, i8** %39, align 8, !dbg !2730, !tbaa !2637
  call void @llvm.dbg.value(metadata i8* %40, metadata !2686, metadata !DIExpression()), !dbg !2729
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2731
  %42 = load i32, i32* %41, align 4, !dbg !2731, !tbaa !1768
  %43 = or i32 %42, 1, !dbg !2732
  call void @llvm.dbg.value(metadata i32 %43, metadata !2687, metadata !DIExpression()), !dbg !2729
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2733
  %45 = load i32, i32* %44, align 8, !dbg !2733, !tbaa !1716
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2734
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2735
  %48 = load i8*, i8** %47, align 8, !dbg !2735, !tbaa !1791
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2736
  %50 = load i8*, i8** %49, align 8, !dbg !2736, !tbaa !1794
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2737
  call void @llvm.dbg.value(metadata i64 %51, metadata !2688, metadata !DIExpression()), !dbg !2729
  %52 = icmp ugt i64 %38, %51, !dbg !2738
  br i1 %52, label %63, label %53, !dbg !2740

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2741
  call void @llvm.dbg.value(metadata i64 %54, metadata !2684, metadata !DIExpression()), !dbg !2729
  store i64 %54, i64* %37, align 8, !dbg !2743, !tbaa !2650
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2744
  br i1 %55, label %57, label %56, !dbg !2746

56:                                               ; preds = %53
  tail call void @free(i8* %40) #18, !dbg !2747
  br label %57, !dbg !2747

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2584, metadata !DIExpression()) #18, !dbg !2748
  %58 = tail call noalias i8* @xmalloc(i64 %54) #18, !dbg !2750
  call void @llvm.dbg.value(metadata i8* %58, metadata !2686, metadata !DIExpression()), !dbg !2729
  store i8* %58, i8** %39, align 8, !dbg !2751, !tbaa !2637
  %59 = load i32, i32* %44, align 8, !dbg !2752, !tbaa !1716
  %60 = load i8*, i8** %47, align 8, !dbg !2753, !tbaa !1791
  %61 = load i8*, i8** %49, align 8, !dbg !2754, !tbaa !1794
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2755
  br label %63, !dbg !2756

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2729
  call void @llvm.dbg.value(metadata i8* %64, metadata !2686, metadata !DIExpression()), !dbg !2729
  store i32 %6, i32* %5, align 4, !dbg !2757, !tbaa !1415
  ret i8* %64, !dbg !2758
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2759 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2763, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8* %1, metadata !2764, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i64 %2, metadata !2765, metadata !DIExpression()), !dbg !2766
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2767
  ret i8* %4, !dbg !2768
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2769 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2771, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i32 0, metadata !2665, metadata !DIExpression()) #18, !dbg !2773
  call void @llvm.dbg.value(metadata i8* %0, metadata !2666, metadata !DIExpression()) #18, !dbg !2773
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !2775
  ret i8* %2, !dbg !2776
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2777 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2781, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i64 %1, metadata !2782, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i32 0, metadata !2763, metadata !DIExpression()) #18, !dbg !2784
  call void @llvm.dbg.value(metadata i8* %0, metadata !2764, metadata !DIExpression()) #18, !dbg !2784
  call void @llvm.dbg.value(metadata i64 %1, metadata !2765, metadata !DIExpression()) #18, !dbg !2784
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !2786
  ret i8* %3, !dbg !2787
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2788 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2792, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i32 %1, metadata !2793, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i8* %2, metadata !2794, metadata !DIExpression()), !dbg !2796
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2797
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2797
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2795, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata i32 %1, metadata !2799, metadata !DIExpression()) #18, !dbg !2805
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2804, metadata !DIExpression()) #18, !dbg !2807
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !2807, !alias.scope !2808
  %6 = icmp eq i32 %1, 10, !dbg !2811
  br i1 %6, label %7, label %8, !dbg !2813

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2814, !noalias !2808
  unreachable, !dbg !2814

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2815
  store i32 %1, i32* %9, align 8, !dbg !2816, !tbaa !1716, !alias.scope !2808
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2817
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2818
  ret i8* %10, !dbg !2819
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2820 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2824, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i32 %1, metadata !2825, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i8* %2, metadata !2826, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i64 %3, metadata !2827, metadata !DIExpression()), !dbg !2829
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2830
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2830
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2828, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i32 %1, metadata !2799, metadata !DIExpression()) #18, !dbg !2832
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2804, metadata !DIExpression()) #18, !dbg !2834
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #18, !dbg !2834, !alias.scope !2835
  %7 = icmp eq i32 %1, 10, !dbg !2838
  br i1 %7, label %8, label %9, !dbg !2839

8:                                                ; preds = %4
  tail call void @abort() #22, !dbg !2840, !noalias !2835
  unreachable, !dbg !2840

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2841
  store i32 %1, i32* %10, align 8, !dbg !2842, !tbaa !1716, !alias.scope !2835
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2843
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2844
  ret i8* %11, !dbg !2845
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2846 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2804, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2795, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i32 %0, metadata !2850, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i8* %1, metadata !2851, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i32 0, metadata !2792, metadata !DIExpression()) #18, !dbg !2857
  call void @llvm.dbg.value(metadata i32 %0, metadata !2793, metadata !DIExpression()) #18, !dbg !2857
  call void @llvm.dbg.value(metadata i8* %1, metadata !2794, metadata !DIExpression()) #18, !dbg !2857
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2858
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2858
  call void @llvm.dbg.value(metadata i32 %0, metadata !2799, metadata !DIExpression()) #18, !dbg !2859
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #18, !dbg !2852, !alias.scope !2860
  %5 = icmp eq i32 %0, 10, !dbg !2863
  br i1 %5, label %6, label %7, !dbg !2864

6:                                                ; preds = %2
  tail call void @abort() #22, !dbg !2865, !noalias !2860
  unreachable, !dbg !2865

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2866
  store i32 %0, i32* %8, align 8, !dbg !2867, !tbaa !1716, !alias.scope !2860
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !2868
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2869
  ret i8* %9, !dbg !2870
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2871 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2804, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2828, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i32 %0, metadata !2875, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i8* %1, metadata !2876, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i64 %2, metadata !2877, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i32 0, metadata !2824, metadata !DIExpression()) #18, !dbg !2883
  call void @llvm.dbg.value(metadata i32 %0, metadata !2825, metadata !DIExpression()) #18, !dbg !2883
  call void @llvm.dbg.value(metadata i8* %1, metadata !2826, metadata !DIExpression()) #18, !dbg !2883
  call void @llvm.dbg.value(metadata i64 %2, metadata !2827, metadata !DIExpression()) #18, !dbg !2883
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2884
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2884
  call void @llvm.dbg.value(metadata i32 %0, metadata !2799, metadata !DIExpression()) #18, !dbg !2885
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !2878, !alias.scope !2886
  %6 = icmp eq i32 %0, 10, !dbg !2889
  br i1 %6, label %7, label %8, !dbg !2890

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2891, !noalias !2886
  unreachable, !dbg !2891

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2892
  store i32 %0, i32* %9, align 8, !dbg !2893, !tbaa !1716, !alias.scope !2886
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #18, !dbg !2894
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2895
  ret i8* %10, !dbg !2896
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2897 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2901, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i64 %1, metadata !2902, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i8 %2, metadata !2903, metadata !DIExpression()), !dbg !2905
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2906
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2906
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2904, metadata !DIExpression()), !dbg !2907
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2908, !tbaa.struct !2909
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1734, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i8 %2, metadata !1735, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i32 1, metadata !1736, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i8 %2, metadata !1737, metadata !DIExpression()), !dbg !2910
  %6 = lshr i8 %2, 5, !dbg !2912
  %7 = zext i8 %6 to i64, !dbg !2912
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2913
  call void @llvm.dbg.value(metadata i32* %8, metadata !1739, metadata !DIExpression()), !dbg !2910
  %9 = and i8 %2, 31, !dbg !2914
  %10 = zext i8 %9 to i32, !dbg !2914
  call void @llvm.dbg.value(metadata i32 %10, metadata !1741, metadata !DIExpression()), !dbg !2910
  %11 = load i32, i32* %8, align 4, !dbg !2915, !tbaa !1415
  %12 = lshr i32 %11, %10, !dbg !2916
  %13 = and i32 %12, 1, !dbg !2917
  call void @llvm.dbg.value(metadata i32 %13, metadata !1742, metadata !DIExpression()), !dbg !2910
  %14 = xor i32 %13, 1, !dbg !2918
  %15 = shl i32 %14, %10, !dbg !2919
  %16 = xor i32 %15, %11, !dbg !2920
  store i32 %16, i32* %8, align 4, !dbg !2920, !tbaa !1415
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2921
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2922
  ret i8* %17, !dbg !2923
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2924 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2904, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8* %0, metadata !2928, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 %1, metadata !2929, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8* %0, metadata !2901, metadata !DIExpression()) #18, !dbg !2933
  call void @llvm.dbg.value(metadata i64 -1, metadata !2902, metadata !DIExpression()) #18, !dbg !2933
  call void @llvm.dbg.value(metadata i8 %1, metadata !2903, metadata !DIExpression()) #18, !dbg !2933
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2934
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2934
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2935, !tbaa.struct !2909
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1734, metadata !DIExpression()) #18, !dbg !2936
  call void @llvm.dbg.value(metadata i8 %1, metadata !1735, metadata !DIExpression()) #18, !dbg !2936
  call void @llvm.dbg.value(metadata i32 1, metadata !1736, metadata !DIExpression()) #18, !dbg !2936
  call void @llvm.dbg.value(metadata i8 %1, metadata !1737, metadata !DIExpression()) #18, !dbg !2936
  %5 = lshr i8 %1, 5, !dbg !2938
  %6 = zext i8 %5 to i64, !dbg !2938
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2939
  call void @llvm.dbg.value(metadata i32* %7, metadata !1739, metadata !DIExpression()) #18, !dbg !2936
  %8 = and i8 %1, 31, !dbg !2940
  %9 = zext i8 %8 to i32, !dbg !2940
  call void @llvm.dbg.value(metadata i32 %9, metadata !1741, metadata !DIExpression()) #18, !dbg !2936
  %10 = load i32, i32* %7, align 4, !dbg !2941, !tbaa !1415
  %11 = lshr i32 %10, %9, !dbg !2942
  %12 = and i32 %11, 1, !dbg !2943
  call void @llvm.dbg.value(metadata i32 %12, metadata !1742, metadata !DIExpression()) #18, !dbg !2936
  %13 = xor i32 %12, 1, !dbg !2944
  %14 = shl i32 %13, %9, !dbg !2945
  %15 = xor i32 %14, %10, !dbg !2946
  store i32 %15, i32* %7, align 4, !dbg !2946, !tbaa !1415
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !2947
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2948
  ret i8* %16, !dbg !2949
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2950 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2904, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i8* %0, metadata !2952, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i8* %0, metadata !2928, metadata !DIExpression()) #18, !dbg !2957
  call void @llvm.dbg.value(metadata i8 58, metadata !2929, metadata !DIExpression()) #18, !dbg !2957
  call void @llvm.dbg.value(metadata i8* %0, metadata !2901, metadata !DIExpression()) #18, !dbg !2958
  call void @llvm.dbg.value(metadata i64 -1, metadata !2902, metadata !DIExpression()) #18, !dbg !2958
  call void @llvm.dbg.value(metadata i8 58, metadata !2903, metadata !DIExpression()) #18, !dbg !2958
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2959
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #18, !dbg !2959
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2960, !tbaa.struct !2909
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1734, metadata !DIExpression()) #18, !dbg !2961
  call void @llvm.dbg.value(metadata i8 58, metadata !1735, metadata !DIExpression()) #18, !dbg !2961
  call void @llvm.dbg.value(metadata i32 1, metadata !1736, metadata !DIExpression()) #18, !dbg !2961
  call void @llvm.dbg.value(metadata i8 58, metadata !1737, metadata !DIExpression()) #18, !dbg !2961
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2963
  call void @llvm.dbg.value(metadata i32* %4, metadata !1739, metadata !DIExpression()) #18, !dbg !2961
  call void @llvm.dbg.value(metadata i32 26, metadata !1741, metadata !DIExpression()) #18, !dbg !2961
  %5 = load i32, i32* %4, align 4, !dbg !2964, !tbaa !1415
  call void @llvm.dbg.value(metadata i32 %5, metadata !1742, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !2961
  %6 = or i32 %5, 67108864, !dbg !2965
  store i32 %6, i32* %4, align 4, !dbg !2965, !tbaa !1415
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #18, !dbg !2966
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #18, !dbg !2967
  ret i8* %7, !dbg !2968
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2969 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2904, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %0, metadata !2971, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %1, metadata !2972, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i8* %0, metadata !2901, metadata !DIExpression()) #18, !dbg !2976
  call void @llvm.dbg.value(metadata i64 %1, metadata !2902, metadata !DIExpression()) #18, !dbg !2976
  call void @llvm.dbg.value(metadata i8 58, metadata !2903, metadata !DIExpression()) #18, !dbg !2976
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2977
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2977
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2978, !tbaa.struct !2909
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1734, metadata !DIExpression()) #18, !dbg !2979
  call void @llvm.dbg.value(metadata i8 58, metadata !1735, metadata !DIExpression()) #18, !dbg !2979
  call void @llvm.dbg.value(metadata i32 1, metadata !1736, metadata !DIExpression()) #18, !dbg !2979
  call void @llvm.dbg.value(metadata i8 58, metadata !1737, metadata !DIExpression()) #18, !dbg !2979
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2981
  call void @llvm.dbg.value(metadata i32* %5, metadata !1739, metadata !DIExpression()) #18, !dbg !2979
  call void @llvm.dbg.value(metadata i32 26, metadata !1741, metadata !DIExpression()) #18, !dbg !2979
  %6 = load i32, i32* %5, align 4, !dbg !2982, !tbaa !1415
  call void @llvm.dbg.value(metadata i32 %6, metadata !1742, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !2979
  %7 = or i32 %6, 67108864, !dbg !2983
  store i32 %7, i32* %5, align 4, !dbg !2983, !tbaa !1415
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #18, !dbg !2984
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2985
  ret i8* %8, !dbg !2986
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2987 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2804, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2993
  call void @llvm.dbg.value(metadata i32 %0, metadata !2989, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i32 %1, metadata !2990, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i8* %2, metadata !2991, metadata !DIExpression()), !dbg !2995
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2996
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2996
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2992, metadata !DIExpression()), !dbg !2997
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2998
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2998
  call void @llvm.dbg.value(metadata i32 %1, metadata !2799, metadata !DIExpression()) #18, !dbg !2999
  call void @llvm.dbg.value(metadata i32 0, metadata !2804, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2999
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2993, !alias.scope !3000
  %8 = icmp eq i32 %1, 10, !dbg !3003
  br i1 %8, label %9, label %10, !dbg !3004

9:                                                ; preds = %3
  tail call void @abort() #22, !dbg !3005, !noalias !3000
  unreachable, !dbg !3005

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2804, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2999
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2998
  store i32 %1, i32* %11, align 8, !dbg !2998, !tbaa.struct !2909
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2998
  %13 = bitcast i32* %12 to i8*, !dbg !2998
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2998, !tbaa.struct !2909
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2998
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1734, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i8 58, metadata !1735, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i32 1, metadata !1736, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i8 58, metadata !1737, metadata !DIExpression()), !dbg !3006
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3008
  call void @llvm.dbg.value(metadata i32* %14, metadata !1739, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i32 26, metadata !1741, metadata !DIExpression()), !dbg !3006
  %15 = load i32, i32* %14, align 4, !dbg !3009, !tbaa !1415
  call void @llvm.dbg.value(metadata i32 %15, metadata !1742, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3006
  %16 = or i32 %15, 67108864, !dbg !3010
  store i32 %16, i32* %14, align 4, !dbg !3010, !tbaa !1415
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3011
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3012
  ret i8* %17, !dbg !3013
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3014 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3022, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i32 %0, metadata !3018, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i8* %1, metadata !3019, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i8* %2, metadata !3020, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i8* %3, metadata !3021, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i32 %0, metadata !3027, metadata !DIExpression()) #18, !dbg !3035
  call void @llvm.dbg.value(metadata i8* %1, metadata !3028, metadata !DIExpression()) #18, !dbg !3035
  call void @llvm.dbg.value(metadata i8* %2, metadata !3029, metadata !DIExpression()) #18, !dbg !3035
  call void @llvm.dbg.value(metadata i8* %3, metadata !3030, metadata !DIExpression()) #18, !dbg !3035
  call void @llvm.dbg.value(metadata i64 -1, metadata !3031, metadata !DIExpression()) #18, !dbg !3035
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3036
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3036
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3037, !tbaa.struct !2909
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1775, metadata !DIExpression()) #18, !dbg !3038
  call void @llvm.dbg.value(metadata i8* %1, metadata !1776, metadata !DIExpression()) #18, !dbg !3038
  call void @llvm.dbg.value(metadata i8* %2, metadata !1777, metadata !DIExpression()) #18, !dbg !3038
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1775, metadata !DIExpression()) #18, !dbg !3038
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3040
  store i32 10, i32* %7, align 8, !dbg !3041, !tbaa !1716
  %8 = icmp ne i8* %1, null, !dbg !3042
  %9 = icmp ne i8* %2, null, !dbg !3043
  %10 = and i1 %8, %9, !dbg !3044
  br i1 %10, label %12, label %11, !dbg !3044

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !3045
  unreachable, !dbg !3045

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3046
  store i8* %1, i8** %13, align 8, !dbg !3047, !tbaa !1791
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3048
  store i8* %2, i8** %14, align 8, !dbg !3049, !tbaa !1794
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #18, !dbg !3050
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3051
  ret i8* %15, !dbg !3052
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3023 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3027, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i8* %1, metadata !3028, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i8* %2, metadata !3029, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i8* %3, metadata !3030, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i64 %4, metadata !3031, metadata !DIExpression()), !dbg !3053
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3054
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #18, !dbg !3054
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3022, metadata !DIExpression()), !dbg !3055
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3056, !tbaa.struct !2909
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1775, metadata !DIExpression()) #18, !dbg !3057
  call void @llvm.dbg.value(metadata i8* %1, metadata !1776, metadata !DIExpression()) #18, !dbg !3057
  call void @llvm.dbg.value(metadata i8* %2, metadata !1777, metadata !DIExpression()) #18, !dbg !3057
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1775, metadata !DIExpression()) #18, !dbg !3057
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3059
  store i32 10, i32* %8, align 8, !dbg !3060, !tbaa !1716
  %9 = icmp ne i8* %1, null, !dbg !3061
  %10 = icmp ne i8* %2, null, !dbg !3062
  %11 = and i1 %9, %10, !dbg !3063
  br i1 %11, label %13, label %12, !dbg !3063

12:                                               ; preds = %5
  tail call void @abort() #22, !dbg !3064
  unreachable, !dbg !3064

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3065
  store i8* %1, i8** %14, align 8, !dbg !3066, !tbaa !1791
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3067
  store i8* %2, i8** %15, align 8, !dbg !3068, !tbaa !1794
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3069
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #18, !dbg !3070
  ret i8* %16, !dbg !3071
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3072 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3022, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata i8* %0, metadata !3076, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i8* %1, metadata !3077, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i8* %2, metadata !3078, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i32 0, metadata !3018, metadata !DIExpression()) #18, !dbg !3083
  call void @llvm.dbg.value(metadata i8* %0, metadata !3019, metadata !DIExpression()) #18, !dbg !3083
  call void @llvm.dbg.value(metadata i8* %1, metadata !3020, metadata !DIExpression()) #18, !dbg !3083
  call void @llvm.dbg.value(metadata i8* %2, metadata !3021, metadata !DIExpression()) #18, !dbg !3083
  call void @llvm.dbg.value(metadata i32 0, metadata !3027, metadata !DIExpression()) #18, !dbg !3084
  call void @llvm.dbg.value(metadata i8* %0, metadata !3028, metadata !DIExpression()) #18, !dbg !3084
  call void @llvm.dbg.value(metadata i8* %1, metadata !3029, metadata !DIExpression()) #18, !dbg !3084
  call void @llvm.dbg.value(metadata i8* %2, metadata !3030, metadata !DIExpression()) #18, !dbg !3084
  call void @llvm.dbg.value(metadata i64 -1, metadata !3031, metadata !DIExpression()) #18, !dbg !3084
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3085
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3085
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3086, !tbaa.struct !2909
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1775, metadata !DIExpression()) #18, !dbg !3087
  call void @llvm.dbg.value(metadata i8* %0, metadata !1776, metadata !DIExpression()) #18, !dbg !3087
  call void @llvm.dbg.value(metadata i8* %1, metadata !1777, metadata !DIExpression()) #18, !dbg !3087
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1775, metadata !DIExpression()) #18, !dbg !3087
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3089
  store i32 10, i32* %6, align 8, !dbg !3090, !tbaa !1716
  %7 = icmp ne i8* %0, null, !dbg !3091
  %8 = icmp ne i8* %1, null, !dbg !3092
  %9 = and i1 %7, %8, !dbg !3093
  br i1 %9, label %11, label %10, !dbg !3093

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !3094
  unreachable, !dbg !3094

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3095
  store i8* %0, i8** %12, align 8, !dbg !3096, !tbaa !1791
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3097
  store i8* %1, i8** %13, align 8, !dbg !3098, !tbaa !1794
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #18, !dbg !3099
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3100
  ret i8* %14, !dbg !3101
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3102 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3022, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i8* %0, metadata !3106, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata i8* %1, metadata !3107, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata i8* %2, metadata !3108, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata i64 %3, metadata !3109, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata i32 0, metadata !3027, metadata !DIExpression()) #18, !dbg !3113
  call void @llvm.dbg.value(metadata i8* %0, metadata !3028, metadata !DIExpression()) #18, !dbg !3113
  call void @llvm.dbg.value(metadata i8* %1, metadata !3029, metadata !DIExpression()) #18, !dbg !3113
  call void @llvm.dbg.value(metadata i8* %2, metadata !3030, metadata !DIExpression()) #18, !dbg !3113
  call void @llvm.dbg.value(metadata i64 %3, metadata !3031, metadata !DIExpression()) #18, !dbg !3113
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3114
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3114
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3115, !tbaa.struct !2909
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1775, metadata !DIExpression()) #18, !dbg !3116
  call void @llvm.dbg.value(metadata i8* %0, metadata !1776, metadata !DIExpression()) #18, !dbg !3116
  call void @llvm.dbg.value(metadata i8* %1, metadata !1777, metadata !DIExpression()) #18, !dbg !3116
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1775, metadata !DIExpression()) #18, !dbg !3116
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3118
  store i32 10, i32* %7, align 8, !dbg !3119, !tbaa !1716
  %8 = icmp ne i8* %0, null, !dbg !3120
  %9 = icmp ne i8* %1, null, !dbg !3121
  %10 = and i1 %8, %9, !dbg !3122
  br i1 %10, label %12, label %11, !dbg !3122

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !3123
  unreachable, !dbg !3123

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3124
  store i8* %0, i8** %13, align 8, !dbg !3125, !tbaa !1791
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3126
  store i8* %1, i8** %14, align 8, !dbg !3127, !tbaa !1794
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #18, !dbg !3128
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3129
  ret i8* %15, !dbg !3130
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3131 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3135, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i8* %1, metadata !3136, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i64 %2, metadata !3137, metadata !DIExpression()), !dbg !3138
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3139
  ret i8* %4, !dbg !3140
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3141 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3145, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i64 %1, metadata !3146, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i32 0, metadata !3135, metadata !DIExpression()) #18, !dbg !3148
  call void @llvm.dbg.value(metadata i8* %0, metadata !3136, metadata !DIExpression()) #18, !dbg !3148
  call void @llvm.dbg.value(metadata i64 %1, metadata !3137, metadata !DIExpression()) #18, !dbg !3148
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3150
  ret i8* %3, !dbg !3151
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3152 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3156, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i8* %1, metadata !3157, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i32 %0, metadata !3135, metadata !DIExpression()) #18, !dbg !3159
  call void @llvm.dbg.value(metadata i8* %1, metadata !3136, metadata !DIExpression()) #18, !dbg !3159
  call void @llvm.dbg.value(metadata i64 -1, metadata !3137, metadata !DIExpression()) #18, !dbg !3159
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3161
  ret i8* %3, !dbg !3162
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3163 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3165, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i32 0, metadata !3156, metadata !DIExpression()) #18, !dbg !3167
  call void @llvm.dbg.value(metadata i8* %0, metadata !3157, metadata !DIExpression()) #18, !dbg !3167
  call void @llvm.dbg.value(metadata i32 0, metadata !3135, metadata !DIExpression()) #18, !dbg !3169
  call void @llvm.dbg.value(metadata i8* %0, metadata !3136, metadata !DIExpression()) #18, !dbg !3169
  call void @llvm.dbg.value(metadata i64 -1, metadata !3137, metadata !DIExpression()) #18, !dbg !3169
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3171
  ret i8* %2, !dbg !3172
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3173 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3181, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i8* %1, metadata !3182, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i8* %2, metadata !3183, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i8* %3, metadata !3184, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i8** %4, metadata !3185, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i64 %5, metadata !3186, metadata !DIExpression()), !dbg !3187
  %7 = icmp eq i8* %1, null, !dbg !3188
  br i1 %7, label %10, label %8, !dbg !3190

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.74, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #18, !dbg !3191
  br label %12, !dbg !3191

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.75, i64 0, i64 0), i8* %2, i8* %3) #18, !dbg !3192
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.76, i64 0, i64 0), i32 5) #18, !dbg !3193
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #18, !dbg !3193
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.77, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3194
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.78, i64 0, i64 0), i32 5) #18, !dbg !3195
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.79, i64 0, i64 0)) #18, !dbg !3195
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.77, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3196
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
  ], !dbg !3197

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.80, i64 0, i64 0), i32 5) #18, !dbg !3198
  %21 = load i8*, i8** %4, align 8, !dbg !3198, !tbaa !1342
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #18, !dbg !3198
  br label %147, !dbg !3200

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.81, i64 0, i64 0), i32 5) #18, !dbg !3201
  %25 = load i8*, i8** %4, align 8, !dbg !3201, !tbaa !1342
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3201
  %27 = load i8*, i8** %26, align 8, !dbg !3201, !tbaa !1342
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #18, !dbg !3201
  br label %147, !dbg !3202

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.82, i64 0, i64 0), i32 5) #18, !dbg !3203
  %31 = load i8*, i8** %4, align 8, !dbg !3203, !tbaa !1342
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3203
  %33 = load i8*, i8** %32, align 8, !dbg !3203, !tbaa !1342
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3203
  %35 = load i8*, i8** %34, align 8, !dbg !3203, !tbaa !1342
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #18, !dbg !3203
  br label %147, !dbg !3204

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.83, i64 0, i64 0), i32 5) #18, !dbg !3205
  %39 = load i8*, i8** %4, align 8, !dbg !3205, !tbaa !1342
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3205
  %41 = load i8*, i8** %40, align 8, !dbg !3205, !tbaa !1342
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3205
  %43 = load i8*, i8** %42, align 8, !dbg !3205, !tbaa !1342
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3205
  %45 = load i8*, i8** %44, align 8, !dbg !3205, !tbaa !1342
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #18, !dbg !3205
  br label %147, !dbg !3206

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.84, i64 0, i64 0), i32 5) #18, !dbg !3207
  %49 = load i8*, i8** %4, align 8, !dbg !3207, !tbaa !1342
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3207
  %51 = load i8*, i8** %50, align 8, !dbg !3207, !tbaa !1342
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3207
  %53 = load i8*, i8** %52, align 8, !dbg !3207, !tbaa !1342
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3207
  %55 = load i8*, i8** %54, align 8, !dbg !3207, !tbaa !1342
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3207
  %57 = load i8*, i8** %56, align 8, !dbg !3207, !tbaa !1342
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #18, !dbg !3207
  br label %147, !dbg !3208

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.85, i64 0, i64 0), i32 5) #18, !dbg !3209
  %61 = load i8*, i8** %4, align 8, !dbg !3209, !tbaa !1342
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3209
  %63 = load i8*, i8** %62, align 8, !dbg !3209, !tbaa !1342
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3209
  %65 = load i8*, i8** %64, align 8, !dbg !3209, !tbaa !1342
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3209
  %67 = load i8*, i8** %66, align 8, !dbg !3209, !tbaa !1342
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3209
  %69 = load i8*, i8** %68, align 8, !dbg !3209, !tbaa !1342
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3209
  %71 = load i8*, i8** %70, align 8, !dbg !3209, !tbaa !1342
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #18, !dbg !3209
  br label %147, !dbg !3210

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.86, i64 0, i64 0), i32 5) #18, !dbg !3211
  %75 = load i8*, i8** %4, align 8, !dbg !3211, !tbaa !1342
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3211
  %77 = load i8*, i8** %76, align 8, !dbg !3211, !tbaa !1342
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3211
  %79 = load i8*, i8** %78, align 8, !dbg !3211, !tbaa !1342
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3211
  %81 = load i8*, i8** %80, align 8, !dbg !3211, !tbaa !1342
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3211
  %83 = load i8*, i8** %82, align 8, !dbg !3211, !tbaa !1342
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3211
  %85 = load i8*, i8** %84, align 8, !dbg !3211, !tbaa !1342
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3211
  %87 = load i8*, i8** %86, align 8, !dbg !3211, !tbaa !1342
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #18, !dbg !3211
  br label %147, !dbg !3212

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.87, i64 0, i64 0), i32 5) #18, !dbg !3213
  %91 = load i8*, i8** %4, align 8, !dbg !3213, !tbaa !1342
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3213
  %93 = load i8*, i8** %92, align 8, !dbg !3213, !tbaa !1342
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3213
  %95 = load i8*, i8** %94, align 8, !dbg !3213, !tbaa !1342
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3213
  %97 = load i8*, i8** %96, align 8, !dbg !3213, !tbaa !1342
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3213
  %99 = load i8*, i8** %98, align 8, !dbg !3213, !tbaa !1342
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3213
  %101 = load i8*, i8** %100, align 8, !dbg !3213, !tbaa !1342
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3213
  %103 = load i8*, i8** %102, align 8, !dbg !3213, !tbaa !1342
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3213
  %105 = load i8*, i8** %104, align 8, !dbg !3213, !tbaa !1342
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #18, !dbg !3213
  br label %147, !dbg !3214

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.88, i64 0, i64 0), i32 5) #18, !dbg !3215
  %109 = load i8*, i8** %4, align 8, !dbg !3215, !tbaa !1342
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3215
  %111 = load i8*, i8** %110, align 8, !dbg !3215, !tbaa !1342
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3215
  %113 = load i8*, i8** %112, align 8, !dbg !3215, !tbaa !1342
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3215
  %115 = load i8*, i8** %114, align 8, !dbg !3215, !tbaa !1342
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3215
  %117 = load i8*, i8** %116, align 8, !dbg !3215, !tbaa !1342
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3215
  %119 = load i8*, i8** %118, align 8, !dbg !3215, !tbaa !1342
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3215
  %121 = load i8*, i8** %120, align 8, !dbg !3215, !tbaa !1342
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3215
  %123 = load i8*, i8** %122, align 8, !dbg !3215, !tbaa !1342
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3215
  %125 = load i8*, i8** %124, align 8, !dbg !3215, !tbaa !1342
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #18, !dbg !3215
  br label %147, !dbg !3216

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.89, i64 0, i64 0), i32 5) #18, !dbg !3217
  %129 = load i8*, i8** %4, align 8, !dbg !3217, !tbaa !1342
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3217
  %131 = load i8*, i8** %130, align 8, !dbg !3217, !tbaa !1342
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3217
  %133 = load i8*, i8** %132, align 8, !dbg !3217, !tbaa !1342
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3217
  %135 = load i8*, i8** %134, align 8, !dbg !3217, !tbaa !1342
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3217
  %137 = load i8*, i8** %136, align 8, !dbg !3217, !tbaa !1342
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3217
  %139 = load i8*, i8** %138, align 8, !dbg !3217, !tbaa !1342
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3217
  %141 = load i8*, i8** %140, align 8, !dbg !3217, !tbaa !1342
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3217
  %143 = load i8*, i8** %142, align 8, !dbg !3217, !tbaa !1342
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3217
  %145 = load i8*, i8** %144, align 8, !dbg !3217, !tbaa !1342
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #18, !dbg !3217
  br label %147, !dbg !3218

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3219
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3220 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3224, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8* %1, metadata !3225, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8* %2, metadata !3226, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8* %3, metadata !3227, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8** %4, metadata !3228, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 0, metadata !3229, metadata !DIExpression()), !dbg !3230
  br label %6, !dbg !3231

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3233
  call void @llvm.dbg.value(metadata i64 %7, metadata !3229, metadata !DIExpression()), !dbg !3230
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3234
  %9 = load i8*, i8** %8, align 8, !dbg !3234, !tbaa !1342
  %10 = icmp eq i8* %9, null, !dbg !3236
  %11 = add i64 %7, 1, !dbg !3237
  call void @llvm.dbg.value(metadata i64 %11, metadata !3229, metadata !DIExpression()), !dbg !3230
  br i1 %10, label %12, label %6, !dbg !3236, !llvm.loop !3238

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3229, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %7, metadata !3229, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %7, metadata !3229, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %7, metadata !3229, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %7, metadata !3229, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %7, metadata !3229, metadata !DIExpression()), !dbg !3230
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3240
  ret void, !dbg !3241
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3242 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3253, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata i8* %1, metadata !3254, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata i8* %2, metadata !3255, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata i8* %3, metadata !3256, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3257, metadata !DIExpression()), !dbg !3261
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3262
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #18, !dbg !3262
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3259, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata i64 0, metadata !3258, metadata !DIExpression()), !dbg !3261
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !3264
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !3264
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !3264
  %11 = load i32, i32* %8, align 8, !dbg !3267
  %12 = icmp ult i32 %11, 41, !dbg !3267
  br i1 %12, label %13, label %18, !dbg !3267

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3267
  %15 = zext i32 %11 to i64, !dbg !3267
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3267
  %17 = add nuw nsw i32 %11, 8, !dbg !3267
  store i32 %17, i32* %8, align 8, !dbg !3267
  br label %21, !dbg !3267

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3267
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3267
  store i8* %20, i8** %9, align 8, !dbg !3267
  br label %21, !dbg !3267

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3267
  %25 = load i8*, i8** %24, align 8, !dbg !3267
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3268
  store i8* %25, i8** %26, align 16, !dbg !3269, !tbaa !1342
  %27 = icmp eq i8* %25, null, !dbg !3270
  br i1 %27, label %30, label %28, !dbg !3271

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3258, metadata !DIExpression()), !dbg !3261
  %29 = icmp ult i32 %22, 41, !dbg !3267
  br i1 %29, label %35, label %32, !dbg !3267

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3272
  call void @llvm.dbg.value(metadata i64 %31, metadata !3258, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata i64 %31, metadata !3258, metadata !DIExpression()), !dbg !3261
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3273
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #18, !dbg !3274
  ret void, !dbg !3274

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3267
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3267
  store i8* %34, i8** %9, align 8, !dbg !3267
  br label %40, !dbg !3267

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3267
  %37 = zext i32 %22 to i64, !dbg !3267
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3267
  %39 = add nuw nsw i32 %22, 8, !dbg !3267
  store i32 %39, i32* %8, align 8, !dbg !3267
  br label %40, !dbg !3267

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3267
  %44 = load i8*, i8** %43, align 8, !dbg !3267
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3268
  store i8* %44, i8** %45, align 8, !dbg !3269, !tbaa !1342
  %46 = icmp eq i8* %44, null, !dbg !3270
  br i1 %46, label %30, label %47, !dbg !3271

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3258, metadata !DIExpression()), !dbg !3261
  %48 = icmp ult i32 %41, 41, !dbg !3267
  br i1 %48, label %52, label %49, !dbg !3267

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3267
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3267
  store i8* %51, i8** %9, align 8, !dbg !3267
  br label %57, !dbg !3267

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3267
  %54 = zext i32 %41 to i64, !dbg !3267
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3267
  %56 = add nuw nsw i32 %41, 8, !dbg !3267
  store i32 %56, i32* %8, align 8, !dbg !3267
  br label %57, !dbg !3267

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3267
  %61 = load i8*, i8** %60, align 8, !dbg !3267
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3268
  store i8* %61, i8** %62, align 16, !dbg !3269, !tbaa !1342
  %63 = icmp eq i8* %61, null, !dbg !3270
  br i1 %63, label %30, label %64, !dbg !3271

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3258, metadata !DIExpression()), !dbg !3261
  %65 = icmp ult i32 %58, 41, !dbg !3267
  br i1 %65, label %69, label %66, !dbg !3267

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3267
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3267
  store i8* %68, i8** %9, align 8, !dbg !3267
  br label %74, !dbg !3267

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3267
  %71 = zext i32 %58 to i64, !dbg !3267
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3267
  %73 = add nuw nsw i32 %58, 8, !dbg !3267
  store i32 %73, i32* %8, align 8, !dbg !3267
  br label %74, !dbg !3267

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3267
  %78 = load i8*, i8** %77, align 8, !dbg !3267
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3268
  store i8* %78, i8** %79, align 8, !dbg !3269, !tbaa !1342
  %80 = icmp eq i8* %78, null, !dbg !3270
  br i1 %80, label %30, label %81, !dbg !3271

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3258, metadata !DIExpression()), !dbg !3261
  %82 = icmp ult i32 %75, 41, !dbg !3267
  br i1 %82, label %86, label %83, !dbg !3267

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3267
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3267
  store i8* %85, i8** %9, align 8, !dbg !3267
  br label %91, !dbg !3267

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3267
  %88 = zext i32 %75 to i64, !dbg !3267
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3267
  %90 = add nuw nsw i32 %75, 8, !dbg !3267
  store i32 %90, i32* %8, align 8, !dbg !3267
  br label %91, !dbg !3267

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3267
  %95 = load i8*, i8** %94, align 8, !dbg !3267
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3268
  store i8* %95, i8** %96, align 16, !dbg !3269, !tbaa !1342
  %97 = icmp eq i8* %95, null, !dbg !3270
  br i1 %97, label %30, label %98, !dbg !3271

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3258, metadata !DIExpression()), !dbg !3261
  %99 = icmp ult i32 %92, 41, !dbg !3267
  br i1 %99, label %103, label %100, !dbg !3267

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3267
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3267
  store i8* %102, i8** %9, align 8, !dbg !3267
  br label %108, !dbg !3267

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3267
  %105 = zext i32 %92 to i64, !dbg !3267
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3267
  %107 = add nuw nsw i32 %92, 8, !dbg !3267
  store i32 %107, i32* %8, align 8, !dbg !3267
  br label %108, !dbg !3267

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3267
  %111 = load i8*, i8** %110, align 8, !dbg !3267
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3268
  store i8* %111, i8** %112, align 8, !dbg !3269, !tbaa !1342
  %113 = icmp eq i8* %111, null, !dbg !3270
  br i1 %113, label %30, label %114, !dbg !3271

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3258, metadata !DIExpression()), !dbg !3261
  %115 = load i8*, i8** %9, align 8, !dbg !3267
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3267
  store i8* %116, i8** %9, align 8, !dbg !3267
  %117 = bitcast i8* %115 to i8**, !dbg !3267
  %118 = load i8*, i8** %117, align 8, !dbg !3267
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3268
  store i8* %118, i8** %119, align 16, !dbg !3269, !tbaa !1342
  %120 = icmp eq i8* %118, null, !dbg !3270
  br i1 %120, label %30, label %121, !dbg !3271

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3258, metadata !DIExpression()), !dbg !3261
  %122 = load i8*, i8** %9, align 8, !dbg !3267
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3267
  store i8* %123, i8** %9, align 8, !dbg !3267
  %124 = bitcast i8* %122 to i8**, !dbg !3267
  %125 = load i8*, i8** %124, align 8, !dbg !3267
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3268
  store i8* %125, i8** %126, align 8, !dbg !3269, !tbaa !1342
  %127 = icmp eq i8* %125, null, !dbg !3270
  br i1 %127, label %30, label %128, !dbg !3271

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3258, metadata !DIExpression()), !dbg !3261
  %129 = load i8*, i8** %9, align 8, !dbg !3267
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3267
  store i8* %130, i8** %9, align 8, !dbg !3267
  %131 = bitcast i8* %129 to i8**, !dbg !3267
  %132 = load i8*, i8** %131, align 8, !dbg !3267
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3268
  store i8* %132, i8** %133, align 16, !dbg !3269, !tbaa !1342
  %134 = icmp eq i8* %132, null, !dbg !3270
  br i1 %134, label %30, label %135, !dbg !3271

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3258, metadata !DIExpression()), !dbg !3261
  %136 = load i8*, i8** %9, align 8, !dbg !3267
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3267
  store i8* %137, i8** %9, align 8, !dbg !3267
  %138 = bitcast i8* %136 to i8**, !dbg !3267
  %139 = load i8*, i8** %138, align 8, !dbg !3267
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3268
  store i8* %139, i8** %140, align 8, !dbg !3269, !tbaa !1342
  %141 = icmp eq i8* %139, null, !dbg !3270
  %142 = select i1 %141, i64 9, i64 10, !dbg !3271
  br label %30, !dbg !3271
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3275 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3279, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i8* %1, metadata !3280, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i8* %2, metadata !3281, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i8* %3, metadata !3282, metadata !DIExpression()), !dbg !3289
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3290
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #18, !dbg !3290
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3283, metadata !DIExpression()), !dbg !3291
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3292
  call void @llvm.va_start(i8* nonnull %6), !dbg !3292
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3293
  call void @llvm.va_end(i8* nonnull %6), !dbg !3294
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #18, !dbg !3295
  ret void, !dbg !3295
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #18

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3296 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3297, !tbaa !1342
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.77, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3297
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.92, i64 0, i64 0), i32 5) #18, !dbg !3298
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.93, i64 0, i64 0)) #18, !dbg !3298
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.94, i64 0, i64 0), i32 5) #18, !dbg !3299
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.95, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.96, i64 0, i64 0)) #18, !dbg !3299
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.97, i64 0, i64 0), i32 5) #18, !dbg !3300
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.98, i64 0, i64 0)) #18, !dbg !3300
  ret void, !dbg !3301
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #19 !dbg !3302 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3306, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i64 %1, metadata !3307, metadata !DIExpression()), !dbg !3308
  %3 = udiv i64 9223372036854775807, %1, !dbg !3309
  %4 = icmp ult i64 %3, %0, !dbg !3309
  br i1 %4, label %5, label %6, !dbg !3311

5:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !3312
  unreachable, !dbg !3312

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3313
  call void @llvm.dbg.value(metadata i64 %7, metadata !3314, metadata !DIExpression()) #18, !dbg !3320
  %8 = tail call noalias i8* @malloc(i64 %7) #18, !dbg !3322
  call void @llvm.dbg.value(metadata i8* %8, metadata !3319, metadata !DIExpression()) #18, !dbg !3320
  %9 = icmp eq i8* %8, null, !dbg !3323
  %10 = icmp ne i64 %7, 0, !dbg !3325
  %11 = and i1 %10, %9, !dbg !3326
  br i1 %11, label %12, label %13, !dbg !3326

12:                                               ; preds = %6
  tail call void @xalloc_die() #22, !dbg !3327
  unreachable, !dbg !3327

13:                                               ; preds = %6
  ret i8* %8, !dbg !3328
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3315 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3314, metadata !DIExpression()), !dbg !3329
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !3330
  call void @llvm.dbg.value(metadata i8* %2, metadata !3319, metadata !DIExpression()), !dbg !3329
  %3 = icmp eq i8* %2, null, !dbg !3331
  %4 = icmp ne i64 %0, 0, !dbg !3332
  %5 = and i1 %4, %3, !dbg !3333
  br i1 %5, label %6, label %7, !dbg !3333

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3334
  unreachable, !dbg !3334

7:                                                ; preds = %1
  ret i8* %2, !dbg !3335
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #19 !dbg !3336 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3340, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i64 %1, metadata !3341, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i64 %2, metadata !3342, metadata !DIExpression()), !dbg !3343
  %4 = udiv i64 9223372036854775807, %2, !dbg !3344
  %5 = icmp ult i64 %4, %1, !dbg !3344
  br i1 %5, label %6, label %7, !dbg !3346

6:                                                ; preds = %3
  tail call void @xalloc_die() #22, !dbg !3347
  unreachable, !dbg !3347

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3348
  call void @llvm.dbg.value(metadata i8* %0, metadata !3349, metadata !DIExpression()) #18, !dbg !3355
  call void @llvm.dbg.value(metadata i64 %8, metadata !3354, metadata !DIExpression()) #18, !dbg !3355
  %9 = icmp eq i64 %8, 0, !dbg !3357
  %10 = icmp ne i8* %0, null, !dbg !3359
  %11 = and i1 %10, %9, !dbg !3360
  br i1 %11, label %12, label %13, !dbg !3360

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #18, !dbg !3361
  br label %19, !dbg !3363

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #18, !dbg !3364
  call void @llvm.dbg.value(metadata i8* %14, metadata !3349, metadata !DIExpression()) #18, !dbg !3355
  %15 = icmp eq i8* %14, null, !dbg !3365
  %16 = icmp ne i64 %8, 0, !dbg !3367
  %17 = and i1 %16, %15, !dbg !3368
  br i1 %17, label %18, label %19, !dbg !3368

18:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3369
  unreachable, !dbg !3369

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3355
  ret i8* %20, !dbg !3370
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3350 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3349, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.value(metadata i64 %1, metadata !3354, metadata !DIExpression()), !dbg !3371
  %3 = icmp eq i64 %1, 0, !dbg !3372
  %4 = icmp ne i8* %0, null, !dbg !3373
  %5 = and i1 %4, %3, !dbg !3374
  br i1 %5, label %6, label %7, !dbg !3374

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #18, !dbg !3375
  br label %13, !dbg !3376

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #18, !dbg !3377
  call void @llvm.dbg.value(metadata i8* %8, metadata !3349, metadata !DIExpression()), !dbg !3371
  %9 = icmp eq i8* %8, null, !dbg !3378
  %10 = icmp ne i64 %1, 0, !dbg !3379
  %11 = and i1 %10, %9, !dbg !3380
  br i1 %11, label %12, label %13, !dbg !3380

12:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !3381
  unreachable, !dbg !3381

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3371
  ret i8* %14, !dbg !3382
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #19 !dbg !676 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !681, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64* %1, metadata !682, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %2, metadata !683, metadata !DIExpression()), !dbg !3383
  %4 = load i64, i64* %1, align 8, !dbg !3384, !tbaa !2621
  call void @llvm.dbg.value(metadata i64 %4, metadata !684, metadata !DIExpression()), !dbg !3383
  %5 = icmp eq i8* %0, null, !dbg !3385
  br i1 %5, label %6, label %20, !dbg !3387

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3388
  br i1 %7, label %8, label %13, !dbg !3391

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3392
  call void @llvm.dbg.value(metadata i64 %9, metadata !684, metadata !DIExpression()), !dbg !3383
  %10 = icmp ugt i64 %2, 128, !dbg !3394
  %11 = zext i1 %10 to i64, !dbg !3394
  %12 = add nuw nsw i64 %9, %11, !dbg !3395
  call void @llvm.dbg.value(metadata i64 %12, metadata !684, metadata !DIExpression()), !dbg !3383
  br label %13, !dbg !3396

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3383
  call void @llvm.dbg.value(metadata i64 %14, metadata !684, metadata !DIExpression()), !dbg !3383
  %15 = udiv i64 9223372036854775807, %2, !dbg !3397
  %16 = icmp ult i64 %15, %14, !dbg !3397
  br i1 %16, label %19, label %17, !dbg !3399

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !684, metadata !DIExpression()), !dbg !3383
  store i64 %14, i64* %1, align 8, !dbg !3400, !tbaa !2621
  %18 = mul i64 %14, %2, !dbg !3401
  call void @llvm.dbg.value(metadata i8* %0, metadata !3349, metadata !DIExpression()) #18, !dbg !3402
  call void @llvm.dbg.value(metadata i64 %28, metadata !3354, metadata !DIExpression()) #18, !dbg !3402
  br label %31, !dbg !3404

19:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3405
  unreachable, !dbg !3405

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3406
  %22 = icmp ugt i64 %21, %4, !dbg !3409
  br i1 %22, label %24, label %23, !dbg !3410

23:                                               ; preds = %20
  tail call void @xalloc_die() #22, !dbg !3411
  unreachable, !dbg !3411

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3412
  %26 = add nuw i64 %4, 1, !dbg !3413
  %27 = add i64 %26, %25, !dbg !3414
  call void @llvm.dbg.value(metadata i64 %27, metadata !684, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %27, metadata !684, metadata !DIExpression()), !dbg !3383
  store i64 %27, i64* %1, align 8, !dbg !3400, !tbaa !2621
  %28 = mul i64 %27, %2, !dbg !3401
  call void @llvm.dbg.value(metadata i8* %0, metadata !3349, metadata !DIExpression()) #18, !dbg !3402
  call void @llvm.dbg.value(metadata i64 %28, metadata !3354, metadata !DIExpression()) #18, !dbg !3402
  %29 = icmp eq i64 %28, 0, !dbg !3415
  br i1 %29, label %30, label %31, !dbg !3404

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #18, !dbg !3416
  br label %38, !dbg !3417

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #18, !dbg !3418
  call void @llvm.dbg.value(metadata i8* %33, metadata !3349, metadata !DIExpression()) #18, !dbg !3402
  %34 = icmp eq i8* %33, null, !dbg !3419
  %35 = icmp ne i64 %32, 0, !dbg !3420
  %36 = and i1 %35, %34, !dbg !3421
  br i1 %36, label %37, label %38, !dbg !3421

37:                                               ; preds = %31
  tail call void @xalloc_die() #22, !dbg !3422
  unreachable, !dbg !3422

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3402
  ret i8* %39, !dbg !3423
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #19 !dbg !3424 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3426, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata i64 %0, metadata !3314, metadata !DIExpression()) #18, !dbg !3428
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !3430
  call void @llvm.dbg.value(metadata i8* %2, metadata !3319, metadata !DIExpression()) #18, !dbg !3428
  %3 = icmp eq i8* %2, null, !dbg !3431
  %4 = icmp ne i64 %0, 0, !dbg !3432
  %5 = and i1 %4, %3, !dbg !3433
  br i1 %5, label %6, label %7, !dbg !3433

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3434
  unreachable, !dbg !3434

7:                                                ; preds = %1
  ret i8* %2, !dbg !3435
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3436 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3440, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i64* %1, metadata !3441, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i8* %0, metadata !681, metadata !DIExpression()) #18, !dbg !3443
  call void @llvm.dbg.value(metadata i64* %1, metadata !682, metadata !DIExpression()) #18, !dbg !3443
  call void @llvm.dbg.value(metadata i64 1, metadata !683, metadata !DIExpression()) #18, !dbg !3443
  %3 = load i64, i64* %1, align 8, !dbg !3445, !tbaa !2621
  call void @llvm.dbg.value(metadata i64 %3, metadata !684, metadata !DIExpression()) #18, !dbg !3443
  %4 = icmp eq i8* %0, null, !dbg !3446
  br i1 %4, label %5, label %12, !dbg !3447

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3448
  br i1 %6, label %9, label %7, !dbg !3449

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !684, metadata !DIExpression()) #18, !dbg !3443
  %8 = icmp slt i64 %3, 0, !dbg !3450
  br i1 %8, label %11, label %9, !dbg !3451

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !684, metadata !DIExpression()) #18, !dbg !3443
  store i64 %10, i64* %1, align 8, !dbg !3452, !tbaa !2621
  call void @llvm.dbg.value(metadata i8* %0, metadata !3349, metadata !DIExpression()) #18, !dbg !3453
  call void @llvm.dbg.value(metadata i64 %18, metadata !3354, metadata !DIExpression()) #18, !dbg !3453
  br label %21, !dbg !3455

11:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !3456
  unreachable, !dbg !3456

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3457
  br i1 %13, label %15, label %14, !dbg !3458

14:                                               ; preds = %12
  tail call void @xalloc_die() #22, !dbg !3459
  unreachable, !dbg !3459

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3460
  %17 = add nuw nsw i64 %3, 1, !dbg !3461
  %18 = add nuw nsw i64 %17, %16, !dbg !3462
  call void @llvm.dbg.value(metadata i64 %18, metadata !684, metadata !DIExpression()) #18, !dbg !3443
  call void @llvm.dbg.value(metadata i64 %18, metadata !684, metadata !DIExpression()) #18, !dbg !3443
  store i64 %18, i64* %1, align 8, !dbg !3452, !tbaa !2621
  call void @llvm.dbg.value(metadata i8* %0, metadata !3349, metadata !DIExpression()) #18, !dbg !3453
  call void @llvm.dbg.value(metadata i64 %18, metadata !3354, metadata !DIExpression()) #18, !dbg !3453
  %19 = icmp eq i64 %18, 0, !dbg !3463
  br i1 %19, label %20, label %21, !dbg !3455

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #18, !dbg !3464
  br label %28, !dbg !3465

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #18, !dbg !3466
  call void @llvm.dbg.value(metadata i8* %23, metadata !3349, metadata !DIExpression()) #18, !dbg !3453
  %24 = icmp eq i8* %23, null, !dbg !3467
  %25 = icmp ne i64 %22, 0, !dbg !3468
  %26 = and i1 %25, %24, !dbg !3469
  br i1 %26, label %27, label %28, !dbg !3469

27:                                               ; preds = %21
  tail call void @xalloc_die() #22, !dbg !3470
  unreachable, !dbg !3470

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3453
  ret i8* %29, !dbg !3471
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3472 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3474, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata i64 %0, metadata !3476, metadata !DIExpression()) #18, !dbg !3481
  call void @llvm.dbg.value(metadata i64 1, metadata !3479, metadata !DIExpression()) #18, !dbg !3481
  %2 = icmp slt i64 %0, 0, !dbg !3483
  br i1 %2, label %6, label %3, !dbg !3485

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #18, !dbg !3486
  call void @llvm.dbg.value(metadata i8* %4, metadata !3480, metadata !DIExpression()) #18, !dbg !3481
  %5 = icmp eq i8* %4, null, !dbg !3487
  br i1 %5, label %6, label %7, !dbg !3488

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #22, !dbg !3489
  unreachable, !dbg !3489

7:                                                ; preds = %3
  ret i8* %4, !dbg !3490
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3477 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3476, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata i64 %1, metadata !3479, metadata !DIExpression()), !dbg !3491
  %3 = udiv i64 9223372036854775807, %1, !dbg !3492
  %4 = icmp ult i64 %3, %0, !dbg !3492
  br i1 %4, label %8, label %5, !dbg !3493

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #18, !dbg !3494
  call void @llvm.dbg.value(metadata i8* %6, metadata !3480, metadata !DIExpression()), !dbg !3491
  %7 = icmp eq i8* %6, null, !dbg !3495
  br i1 %7, label %8, label %9, !dbg !3496

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #22, !dbg !3497
  unreachable, !dbg !3497

9:                                                ; preds = %5
  ret i8* %6, !dbg !3498
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3499 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3503, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i64 %1, metadata !3504, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i64 %1, metadata !3314, metadata !DIExpression()) #18, !dbg !3506
  %3 = tail call noalias i8* @malloc(i64 %1) #18, !dbg !3508
  call void @llvm.dbg.value(metadata i8* %3, metadata !3319, metadata !DIExpression()) #18, !dbg !3506
  %4 = icmp eq i8* %3, null, !dbg !3509
  %5 = icmp ne i64 %1, 0, !dbg !3510
  %6 = and i1 %5, %4, !dbg !3511
  br i1 %6, label %7, label %8, !dbg !3511

7:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !3512
  unreachable, !dbg !3512

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3513, metadata !DIExpression()) #18, !dbg !3522
  call void @llvm.dbg.value(metadata i8* %0, metadata !3520, metadata !DIExpression()) #18, !dbg !3522
  call void @llvm.dbg.value(metadata i64 %1, metadata !3521, metadata !DIExpression()) #18, !dbg !3522
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #18, !dbg !3524
  ret i8* %3, !dbg !3525
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3526 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3528, metadata !DIExpression()), !dbg !3529
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #21, !dbg !3530
  %3 = add i64 %2, 1, !dbg !3531
  call void @llvm.dbg.value(metadata i8* %0, metadata !3503, metadata !DIExpression()) #18, !dbg !3532
  call void @llvm.dbg.value(metadata i64 %3, metadata !3504, metadata !DIExpression()) #18, !dbg !3532
  call void @llvm.dbg.value(metadata i64 %3, metadata !3314, metadata !DIExpression()) #18, !dbg !3534
  %4 = tail call noalias i8* @malloc(i64 %3) #18, !dbg !3536
  call void @llvm.dbg.value(metadata i8* %4, metadata !3319, metadata !DIExpression()) #18, !dbg !3534
  %5 = icmp eq i8* %4, null, !dbg !3537
  %6 = icmp ne i64 %3, 0, !dbg !3538
  %7 = and i1 %6, %5, !dbg !3539
  br i1 %7, label %8, label %9, !dbg !3539

8:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3540
  unreachable, !dbg !3540

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3513, metadata !DIExpression()) #18, !dbg !3541
  call void @llvm.dbg.value(metadata i8* %0, metadata !3520, metadata !DIExpression()) #18, !dbg !3541
  call void @llvm.dbg.value(metadata i64 %3, metadata !3521, metadata !DIExpression()) #18, !dbg !3541
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #18, !dbg !3543
  ret i8* %4, !dbg !3544
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3545 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3546, !tbaa !1415
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.109, i64 0, i64 0), i32 5) #18, !dbg !3547
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i64 0, i64 0), i8* %2) #18, !dbg !3548
  tail call void @abort() #22, !dbg !3549
  unreachable, !dbg !3549
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xnumtoumax(i8* %0, i32 %1, i64 %2, i64 %3, i8* %4, i8* %5, i32 %6) local_unnamed_addr #8 !dbg !3550 {
  %8 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3558, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i32 %1, metadata !3559, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i64 %2, metadata !3560, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i64 %3, metadata !3561, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i8* %4, metadata !3562, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i8* %5, metadata !3563, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i32 %6, metadata !3564, metadata !DIExpression()), !dbg !3568
  %9 = bitcast i64* %8 to i8*, !dbg !3569
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #18, !dbg !3569
  call void @llvm.dbg.value(metadata i64* %8, metadata !3567, metadata !DIExpression(DW_OP_deref)), !dbg !3568
  %10 = call i32 @xstrtoumax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #18, !dbg !3570
  call void @llvm.dbg.value(metadata i32 %10, metadata !3565, metadata !DIExpression()), !dbg !3568
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %23
    i32 3, label %25
  ], !dbg !3571

11:                                               ; preds = %7
  %12 = tail call i32* @__errno_location() #24, !dbg !3572
  br label %27, !dbg !3571

13:                                               ; preds = %7
  %14 = load i64, i64* %8, align 8, !dbg !3575, !tbaa !2621
  call void @llvm.dbg.value(metadata i64 %14, metadata !3567, metadata !DIExpression()), !dbg !3568
  %15 = icmp ult i64 %14, %2, !dbg !3579
  %16 = icmp ugt i64 %14, %3, !dbg !3580
  %17 = or i1 %15, %16, !dbg !3581
  br i1 %17, label %18, label %36, !dbg !3581

18:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, metadata !3565, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i64 %14, metadata !3567, metadata !DIExpression()), !dbg !3568
  %19 = icmp ugt i64 %14, 1073741823, !dbg !3582
  %20 = tail call i32* @__errno_location() #24, !dbg !3585
  br i1 %19, label %21, label %22, !dbg !3586

21:                                               ; preds = %18
  store i32 75, i32* %20, align 4, !dbg !3587, !tbaa !1415
  call void @llvm.dbg.value(metadata i32 undef, metadata !3565, metadata !DIExpression()), !dbg !3568
  br label %27, !dbg !3588

22:                                               ; preds = %18
  store i32 34, i32* %20, align 4, !dbg !3589, !tbaa !1415
  call void @llvm.dbg.value(metadata i32 undef, metadata !3565, metadata !DIExpression()), !dbg !3568
  br label %27, !dbg !3588

23:                                               ; preds = %7
  %24 = tail call i32* @__errno_location() #24, !dbg !3590
  store i32 75, i32* %24, align 4, !dbg !3592, !tbaa !1415
  call void @llvm.dbg.value(metadata i32 undef, metadata !3565, metadata !DIExpression()), !dbg !3568
  br label %27, !dbg !3588

25:                                               ; preds = %7
  %26 = tail call i32* @__errno_location() #24, !dbg !3593
  store i32 0, i32* %26, align 4, !dbg !3595, !tbaa !1415
  call void @llvm.dbg.value(metadata i32 undef, metadata !3565, metadata !DIExpression()), !dbg !3568
  br label %27, !dbg !3588

27:                                               ; preds = %11, %25, %23, %22, %21
  %28 = phi i32* [ %12, %11 ], [ %26, %25 ], [ %24, %23 ], [ %20, %22 ], [ %20, %21 ], !dbg !3572
  %29 = icmp eq i32 %6, 0, !dbg !3596
  %30 = select i1 %29, i32 1, i32 %6, !dbg !3596
  %31 = load i32, i32* %28, align 4, !dbg !3572, !tbaa !1415
  %32 = icmp eq i32 %31, 22, !dbg !3597
  %33 = select i1 %32, i32 0, i32 %31, !dbg !3572
  %34 = call i8* @quote(i8* %0) #18, !dbg !3598
  call void (i32, i32, i8*, ...) @error(i32 %30, i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.111, i64 0, i64 0), i8* %5, i8* %34) #18, !dbg !3599
  %35 = load i64, i64* %8, align 8, !dbg !3600, !tbaa !2621
  br label %36, !dbg !3601

36:                                               ; preds = %13, %27
  %37 = phi i64 [ %14, %13 ], [ %35, %27 ], !dbg !3600
  call void @llvm.dbg.value(metadata i64 %37, metadata !3567, metadata !DIExpression()), !dbg !3568
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #18, !dbg !3602
  ret i64 %37, !dbg !3603
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xdectoumax(i8* %0, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5) local_unnamed_addr #8 !dbg !3604 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3608, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata i64 %1, metadata !3609, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata i64 %2, metadata !3610, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata i8* %3, metadata !3611, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata i8* %4, metadata !3612, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata i32 %5, metadata !3613, metadata !DIExpression()), !dbg !3614
  %7 = tail call i64 @xnumtoumax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5), !dbg !3615
  ret i64 %7, !dbg !3616
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoumax(i8* %0, i8** %1, i32 %2, i64* nocapture %3, i8* readonly %4) local_unnamed_addr #8 !dbg !3617 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3623, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i8** %1, metadata !3624, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i32 %2, metadata !3625, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i64* %3, metadata !3626, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i8* %4, metadata !3627, metadata !DIExpression()), !dbg !3641
  %7 = bitcast i8** %6 to i8*, !dbg !3642
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #18, !dbg !3642
  call void @llvm.dbg.value(metadata i32 0, metadata !3631, metadata !DIExpression()), !dbg !3641
  %8 = icmp ult i32 %2, 37, !dbg !3643
  br i1 %8, label %10, label %9, !dbg !3643

9:                                                ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.116, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.117, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #22, !dbg !3643
  unreachable, !dbg !3643

10:                                               ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !3646
  call void @llvm.dbg.value(metadata i8** %25, metadata !3629, metadata !DIExpression()), !dbg !3641
  %12 = tail call i32* @__errno_location() #24, !dbg !3647
  store i32 0, i32* %12, align 4, !dbg !3648, !tbaa !1415
  call void @llvm.dbg.value(metadata i8* %0, metadata !3632, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata i8 undef, metadata !3635, metadata !DIExpression()), !dbg !3649
  %13 = tail call i16** @__ctype_b_loc() #24, !dbg !3649
  %14 = load i16*, i16** %13, align 8, !dbg !3649, !tbaa !1342
  br label %15, !dbg !3650

15:                                               ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ], !dbg !3649
  %17 = load i8, i8* %16, align 1, !dbg !3649, !tbaa !1540
  call void @llvm.dbg.value(metadata i8 %17, metadata !3635, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata i8* %16, metadata !3632, metadata !DIExpression()), !dbg !3649
  %18 = zext i8 %17 to i64, !dbg !3651
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !3651
  %20 = load i16, i16* %19, align 2, !dbg !3651, !tbaa !2111
  %21 = and i16 %20, 8192, !dbg !3651
  %22 = icmp eq i16 %21, 0, !dbg !3650
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !3652
  call void @llvm.dbg.value(metadata i8* %23, metadata !3632, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata i8 undef, metadata !3635, metadata !DIExpression()), !dbg !3649
  br i1 %22, label %24, label %15, !dbg !3650, !llvm.loop !3653

24:                                               ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !3646
  %26 = icmp eq i8 %17, 45, !dbg !3655
  br i1 %26, label %285, label %27

27:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %0, metadata !3657, metadata !DIExpression()) #18, !dbg !3667
  call void @llvm.dbg.value(metadata i8** %25, metadata !3665, metadata !DIExpression()) #18, !dbg !3667
  call void @llvm.dbg.value(metadata i32 %2, metadata !3666, metadata !DIExpression()) #18, !dbg !3667
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #18, !dbg !3669
  call void @llvm.dbg.value(metadata i64 %28, metadata !3630, metadata !DIExpression()), !dbg !3641
  %29 = load i8*, i8** %25, align 8, !dbg !3670, !tbaa !1342
  %30 = icmp eq i8* %29, %0, !dbg !3672
  br i1 %30, label %31, label %40, !dbg !3673

31:                                               ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !3674
  br i1 %32, label %285, label %33, !dbg !3677

33:                                               ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !3678, !tbaa !1540
  %35 = icmp eq i8 %34, 0, !dbg !3678
  br i1 %35, label %285, label %36, !dbg !3679

36:                                               ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !3678
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #21, !dbg !3680
  %39 = icmp eq i8* %38, null, !dbg !3680
  br i1 %39, label %285, label %47, !dbg !3681

40:                                               ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !3682, !tbaa !1415
  switch i32 %41, label %285 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !3684

42:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, metadata !3631, metadata !DIExpression()), !dbg !3641
  br label %43, !dbg !3685

43:                                               ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ %41, %40 ], !dbg !3641
  call void @llvm.dbg.value(metadata i32 %44, metadata !3631, metadata !DIExpression()), !dbg !3641
  %45 = icmp eq i8* %4, null, !dbg !3687
  br i1 %45, label %46, label %47, !dbg !3689

46:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, metadata !3630, metadata !DIExpression()), !dbg !3641
  store i64 %28, i64* %3, align 8, !dbg !3690, !tbaa !2621
  br label %285, !dbg !3692

47:                                               ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !3693, !tbaa !1540
  %51 = sext i8 %50 to i32, !dbg !3693
  %52 = icmp eq i8 %50, 0, !dbg !3694
  br i1 %52, label %282, label %53, !dbg !3695

53:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, metadata !3636, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i32 1, metadata !3639, metadata !DIExpression()), !dbg !3696
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #21, !dbg !3697
  %55 = icmp eq i8* %54, null, !dbg !3697
  br i1 %55, label %56, label %58, !dbg !3699

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, metadata !3630, metadata !DIExpression()), !dbg !3641
  store i64 %49, i64* %3, align 8, !dbg !3700, !tbaa !2621
  %57 = or i32 %48, 2, !dbg !3702
  br label %285, !dbg !3703

58:                                               ; preds = %53
  switch i32 %51, label %72 [
    i32 69, label %59
    i32 71, label %59
    i32 103, label %59
    i32 107, label %59
    i32 75, label %59
    i32 77, label %59
    i32 109, label %59
    i32 80, label %59
    i32 84, label %59
    i32 116, label %59
    i32 89, label %59
    i32 90, label %59
  ], !dbg !3704

59:                                               ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #21, !dbg !3705
  %61 = icmp eq i8* %60, null, !dbg !3705
  br i1 %61, label %72, label %62, !dbg !3708

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !3709
  %64 = load i8, i8* %63, align 1, !dbg !3709, !tbaa !1540
  %65 = sext i8 %64 to i32, !dbg !3709
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !3710

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !3711
  %68 = load i8, i8* %67, align 1, !dbg !3711, !tbaa !1540
  %69 = icmp eq i8 %68, 66, !dbg !3714
  %70 = select i1 %69, i64 3, i64 1, !dbg !3715
  br label %72, !dbg !3715

71:                                               ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, metadata !3636, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i32 2, metadata !3639, metadata !DIExpression()), !dbg !3696
  br label %72, !dbg !3716

72:                                               ; preds = %66, %59, %62, %71, %58
  %73 = phi i64 [ 1024, %58 ], [ 1024, %62 ], [ 1000, %71 ], [ 1024, %59 ], [ 1024, %66 ]
  %74 = phi i64 [ 1, %58 ], [ 1, %62 ], [ 2, %71 ], [ 1, %59 ], [ %70, %66 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !3639, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i32 undef, metadata !3636, metadata !DIExpression()), !dbg !3696
  switch i32 %51, label %270 [
    i32 98, label %205
    i32 66, label %210
    i32 99, label %272
    i32 69, label %175
    i32 71, label %215
    i32 103, label %215
    i32 107, label %230
    i32 75, label %230
    i32 77, label %235
    i32 109, label %235
    i32 80, label %150
    i32 84, label %245
    i32 116, label %245
    i32 119, label %265
    i32 89, label %110
    i32 90, label %75
  ], !dbg !3717

75:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3718, metadata !DIExpression()) #18, !dbg !3726
  call void @llvm.dbg.value(metadata i32 6, metadata !3725, metadata !DIExpression()) #18, !dbg !3726
  call void @llvm.dbg.value(metadata i32 undef, metadata !3729, metadata !DIExpression()) #18, !dbg !3735
  %76 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !3737
  %77 = extractvalue { i64, i1 } %76, 1, !dbg !3737
  %78 = mul i64 %49, %73, !dbg !3739
  %79 = select i1 %77, i64 -1, i64 %78, !dbg !3739
  call void @llvm.dbg.value(metadata i1 %77, metadata !3718, metadata !DIExpression()) #18, !dbg !3726
  call void @llvm.dbg.value(metadata i32 5, metadata !3725, metadata !DIExpression()) #18, !dbg !3726
  %80 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %79) #18, !dbg !3737
  %81 = extractvalue { i64, i1 } %80, 1, !dbg !3737
  %82 = mul i64 %79, %73, !dbg !3739
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !3739
  %84 = or i1 %77, %81, !dbg !3740
  call void @llvm.dbg.value(metadata i1 %84, metadata !3718, metadata !DIExpression()) #18, !dbg !3726
  call void @llvm.dbg.value(metadata i32 4, metadata !3725, metadata !DIExpression()) #18, !dbg !3726
  %85 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %83) #18, !dbg !3737
  %86 = extractvalue { i64, i1 } %85, 1, !dbg !3737
  %87 = mul i64 %83, %73, !dbg !3739
  %88 = select i1 %86, i64 -1, i64 %87, !dbg !3739
  %89 = or i1 %84, %86, !dbg !3740
  call void @llvm.dbg.value(metadata i1 %89, metadata !3718, metadata !DIExpression()) #18, !dbg !3726
  call void @llvm.dbg.value(metadata i32 3, metadata !3725, metadata !DIExpression()) #18, !dbg !3726
  %90 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %88) #18, !dbg !3737
  %91 = extractvalue { i64, i1 } %90, 1, !dbg !3737
  %92 = mul i64 %88, %73, !dbg !3739
  %93 = select i1 %91, i64 -1, i64 %92, !dbg !3739
  %94 = or i1 %89, %91, !dbg !3740
  call void @llvm.dbg.value(metadata i1 %94, metadata !3718, metadata !DIExpression()) #18, !dbg !3726
  call void @llvm.dbg.value(metadata i32 2, metadata !3725, metadata !DIExpression()) #18, !dbg !3726
  %95 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %93) #18, !dbg !3737
  %96 = extractvalue { i64, i1 } %95, 1, !dbg !3737
  %97 = mul i64 %93, %73, !dbg !3739
  %98 = select i1 %96, i64 -1, i64 %97, !dbg !3739
  %99 = or i1 %94, %96, !dbg !3740
  call void @llvm.dbg.value(metadata i1 %99, metadata !3718, metadata !DIExpression()) #18, !dbg !3726
  call void @llvm.dbg.value(metadata i32 1, metadata !3725, metadata !DIExpression()) #18, !dbg !3726
  %100 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %98) #18, !dbg !3737
  %101 = extractvalue { i64, i1 } %100, 1, !dbg !3737
  %102 = mul i64 %98, %73, !dbg !3739
  %103 = select i1 %101, i64 -1, i64 %102, !dbg !3739
  %104 = or i1 %99, %101, !dbg !3740
  call void @llvm.dbg.value(metadata i1 %104, metadata !3718, metadata !DIExpression()) #18, !dbg !3726
  call void @llvm.dbg.value(metadata i32 0, metadata !3725, metadata !DIExpression()) #18, !dbg !3726
  %105 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %103) #18, !dbg !3737
  %106 = extractvalue { i64, i1 } %105, 1, !dbg !3737
  %107 = mul i64 %103, %73, !dbg !3739
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !3739
  %109 = or i1 %104, %106, !dbg !3740
  call void @llvm.dbg.value(metadata i1 %109, metadata !3718, metadata !DIExpression()) #18, !dbg !3726
  call void @llvm.dbg.value(metadata i32 0, metadata !3725, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !3726
  br label %272, !dbg !3741

110:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3718, metadata !DIExpression()) #18, !dbg !3742
  call void @llvm.dbg.value(metadata i32 7, metadata !3725, metadata !DIExpression()) #18, !dbg !3742
  call void @llvm.dbg.value(metadata i32 undef, metadata !3729, metadata !DIExpression()) #18, !dbg !3744
  %111 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !3746
  %112 = extractvalue { i64, i1 } %111, 1, !dbg !3746
  %113 = mul i64 %49, %73, !dbg !3747
  %114 = select i1 %112, i64 -1, i64 %113, !dbg !3747
  call void @llvm.dbg.value(metadata i1 %112, metadata !3718, metadata !DIExpression()) #18, !dbg !3742
  call void @llvm.dbg.value(metadata i32 6, metadata !3725, metadata !DIExpression()) #18, !dbg !3742
  %115 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %114) #18, !dbg !3746
  %116 = extractvalue { i64, i1 } %115, 1, !dbg !3746
  %117 = mul i64 %114, %73, !dbg !3747
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !3747
  %119 = or i1 %112, %116, !dbg !3748
  call void @llvm.dbg.value(metadata i1 %119, metadata !3718, metadata !DIExpression()) #18, !dbg !3742
  call void @llvm.dbg.value(metadata i32 5, metadata !3725, metadata !DIExpression()) #18, !dbg !3742
  %120 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %118) #18, !dbg !3746
  %121 = extractvalue { i64, i1 } %120, 1, !dbg !3746
  %122 = mul i64 %118, %73, !dbg !3747
  %123 = select i1 %121, i64 -1, i64 %122, !dbg !3747
  %124 = or i1 %119, %121, !dbg !3748
  call void @llvm.dbg.value(metadata i1 %124, metadata !3718, metadata !DIExpression()) #18, !dbg !3742
  call void @llvm.dbg.value(metadata i32 4, metadata !3725, metadata !DIExpression()) #18, !dbg !3742
  %125 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %123) #18, !dbg !3746
  %126 = extractvalue { i64, i1 } %125, 1, !dbg !3746
  %127 = mul i64 %123, %73, !dbg !3747
  %128 = select i1 %126, i64 -1, i64 %127, !dbg !3747
  %129 = or i1 %124, %126, !dbg !3748
  call void @llvm.dbg.value(metadata i1 %129, metadata !3718, metadata !DIExpression()) #18, !dbg !3742
  call void @llvm.dbg.value(metadata i32 3, metadata !3725, metadata !DIExpression()) #18, !dbg !3742
  %130 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %128) #18, !dbg !3746
  %131 = extractvalue { i64, i1 } %130, 1, !dbg !3746
  %132 = mul i64 %128, %73, !dbg !3747
  %133 = select i1 %131, i64 -1, i64 %132, !dbg !3747
  %134 = or i1 %129, %131, !dbg !3748
  call void @llvm.dbg.value(metadata i1 %134, metadata !3718, metadata !DIExpression()) #18, !dbg !3742
  call void @llvm.dbg.value(metadata i32 2, metadata !3725, metadata !DIExpression()) #18, !dbg !3742
  %135 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %133) #18, !dbg !3746
  %136 = extractvalue { i64, i1 } %135, 1, !dbg !3746
  %137 = mul i64 %133, %73, !dbg !3747
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !3747
  %139 = or i1 %134, %136, !dbg !3748
  call void @llvm.dbg.value(metadata i1 %139, metadata !3718, metadata !DIExpression()) #18, !dbg !3742
  call void @llvm.dbg.value(metadata i32 1, metadata !3725, metadata !DIExpression()) #18, !dbg !3742
  %140 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %138) #18, !dbg !3746
  %141 = extractvalue { i64, i1 } %140, 1, !dbg !3746
  %142 = mul i64 %138, %73, !dbg !3747
  %143 = select i1 %141, i64 -1, i64 %142, !dbg !3747
  %144 = or i1 %139, %141, !dbg !3748
  call void @llvm.dbg.value(metadata i1 %144, metadata !3718, metadata !DIExpression()) #18, !dbg !3742
  call void @llvm.dbg.value(metadata i32 0, metadata !3725, metadata !DIExpression()) #18, !dbg !3742
  %145 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %143) #18, !dbg !3746
  %146 = extractvalue { i64, i1 } %145, 1, !dbg !3746
  %147 = mul i64 %143, %73, !dbg !3747
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !3747
  %149 = or i1 %144, %146, !dbg !3748
  call void @llvm.dbg.value(metadata i1 %149, metadata !3718, metadata !DIExpression()) #18, !dbg !3742
  call void @llvm.dbg.value(metadata i32 0, metadata !3725, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !3742
  br label %272, !dbg !3741

150:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3718, metadata !DIExpression()) #18, !dbg !3749
  call void @llvm.dbg.value(metadata i32 4, metadata !3725, metadata !DIExpression()) #18, !dbg !3749
  call void @llvm.dbg.value(metadata i32 undef, metadata !3729, metadata !DIExpression()) #18, !dbg !3751
  %151 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !3753
  %152 = extractvalue { i64, i1 } %151, 1, !dbg !3753
  %153 = mul i64 %49, %73, !dbg !3754
  %154 = select i1 %152, i64 -1, i64 %153, !dbg !3754
  call void @llvm.dbg.value(metadata i1 %152, metadata !3718, metadata !DIExpression()) #18, !dbg !3749
  call void @llvm.dbg.value(metadata i32 3, metadata !3725, metadata !DIExpression()) #18, !dbg !3749
  %155 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %154) #18, !dbg !3753
  %156 = extractvalue { i64, i1 } %155, 1, !dbg !3753
  %157 = mul i64 %154, %73, !dbg !3754
  %158 = select i1 %156, i64 -1, i64 %157, !dbg !3754
  %159 = or i1 %152, %156, !dbg !3755
  call void @llvm.dbg.value(metadata i1 %159, metadata !3718, metadata !DIExpression()) #18, !dbg !3749
  call void @llvm.dbg.value(metadata i32 2, metadata !3725, metadata !DIExpression()) #18, !dbg !3749
  %160 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %158) #18, !dbg !3753
  %161 = extractvalue { i64, i1 } %160, 1, !dbg !3753
  %162 = mul i64 %158, %73, !dbg !3754
  %163 = select i1 %161, i64 -1, i64 %162, !dbg !3754
  %164 = or i1 %159, %161, !dbg !3755
  call void @llvm.dbg.value(metadata i1 %164, metadata !3718, metadata !DIExpression()) #18, !dbg !3749
  call void @llvm.dbg.value(metadata i32 1, metadata !3725, metadata !DIExpression()) #18, !dbg !3749
  %165 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %163) #18, !dbg !3753
  %166 = extractvalue { i64, i1 } %165, 1, !dbg !3753
  %167 = mul i64 %163, %73, !dbg !3754
  %168 = select i1 %166, i64 -1, i64 %167, !dbg !3754
  %169 = or i1 %164, %166, !dbg !3755
  call void @llvm.dbg.value(metadata i1 %169, metadata !3718, metadata !DIExpression()) #18, !dbg !3749
  call void @llvm.dbg.value(metadata i32 0, metadata !3725, metadata !DIExpression()) #18, !dbg !3749
  %170 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %168) #18, !dbg !3753
  %171 = extractvalue { i64, i1 } %170, 1, !dbg !3753
  %172 = mul i64 %168, %73, !dbg !3754
  %173 = select i1 %171, i64 -1, i64 %172, !dbg !3754
  %174 = or i1 %169, %171, !dbg !3755
  call void @llvm.dbg.value(metadata i1 %174, metadata !3718, metadata !DIExpression()) #18, !dbg !3749
  call void @llvm.dbg.value(metadata i32 0, metadata !3725, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !3749
  br label %272, !dbg !3741

175:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3718, metadata !DIExpression()) #18, !dbg !3756
  call void @llvm.dbg.value(metadata i32 5, metadata !3725, metadata !DIExpression()) #18, !dbg !3756
  call void @llvm.dbg.value(metadata i32 undef, metadata !3729, metadata !DIExpression()) #18, !dbg !3758
  %176 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !3760
  %177 = extractvalue { i64, i1 } %176, 1, !dbg !3760
  %178 = mul i64 %49, %73, !dbg !3761
  %179 = select i1 %177, i64 -1, i64 %178, !dbg !3761
  call void @llvm.dbg.value(metadata i1 %177, metadata !3718, metadata !DIExpression()) #18, !dbg !3756
  call void @llvm.dbg.value(metadata i32 4, metadata !3725, metadata !DIExpression()) #18, !dbg !3756
  %180 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %179) #18, !dbg !3760
  %181 = extractvalue { i64, i1 } %180, 1, !dbg !3760
  %182 = mul i64 %179, %73, !dbg !3761
  %183 = select i1 %181, i64 -1, i64 %182, !dbg !3761
  %184 = or i1 %177, %181, !dbg !3762
  call void @llvm.dbg.value(metadata i1 %184, metadata !3718, metadata !DIExpression()) #18, !dbg !3756
  call void @llvm.dbg.value(metadata i32 3, metadata !3725, metadata !DIExpression()) #18, !dbg !3756
  %185 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %183) #18, !dbg !3760
  %186 = extractvalue { i64, i1 } %185, 1, !dbg !3760
  %187 = mul i64 %183, %73, !dbg !3761
  %188 = select i1 %186, i64 -1, i64 %187, !dbg !3761
  %189 = or i1 %184, %186, !dbg !3762
  call void @llvm.dbg.value(metadata i1 %189, metadata !3718, metadata !DIExpression()) #18, !dbg !3756
  call void @llvm.dbg.value(metadata i32 2, metadata !3725, metadata !DIExpression()) #18, !dbg !3756
  %190 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %188) #18, !dbg !3760
  %191 = extractvalue { i64, i1 } %190, 1, !dbg !3760
  %192 = mul i64 %188, %73, !dbg !3761
  %193 = select i1 %191, i64 -1, i64 %192, !dbg !3761
  %194 = or i1 %189, %191, !dbg !3762
  call void @llvm.dbg.value(metadata i1 %194, metadata !3718, metadata !DIExpression()) #18, !dbg !3756
  call void @llvm.dbg.value(metadata i32 1, metadata !3725, metadata !DIExpression()) #18, !dbg !3756
  %195 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %193) #18, !dbg !3760
  %196 = extractvalue { i64, i1 } %195, 1, !dbg !3760
  %197 = mul i64 %193, %73, !dbg !3761
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !3761
  %199 = or i1 %194, %196, !dbg !3762
  call void @llvm.dbg.value(metadata i1 %199, metadata !3718, metadata !DIExpression()) #18, !dbg !3756
  call void @llvm.dbg.value(metadata i32 0, metadata !3725, metadata !DIExpression()) #18, !dbg !3756
  %200 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %198) #18, !dbg !3760
  %201 = extractvalue { i64, i1 } %200, 1, !dbg !3760
  %202 = mul i64 %198, %73, !dbg !3761
  %203 = select i1 %201, i64 -1, i64 %202, !dbg !3761
  %204 = or i1 %199, %201, !dbg !3762
  call void @llvm.dbg.value(metadata i1 %204, metadata !3718, metadata !DIExpression()) #18, !dbg !3756
  call void @llvm.dbg.value(metadata i32 0, metadata !3725, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !3756
  br label %272, !dbg !3741

205:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 512, metadata !3729, metadata !DIExpression()) #18, !dbg !3763
  %206 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 512) #18, !dbg !3765
  %207 = extractvalue { i64, i1 } %206, 1, !dbg !3765
  %208 = shl i64 %49, 9, !dbg !3766
  %209 = select i1 %207, i64 -1, i64 %208, !dbg !3766
  call void @llvm.dbg.value(metadata i1 %207, metadata !3640, metadata !DIExpression()), !dbg !3696
  br label %272, !dbg !3767

210:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 1024, metadata !3729, metadata !DIExpression()) #18, !dbg !3768
  %211 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 1024) #18, !dbg !3770
  %212 = extractvalue { i64, i1 } %211, 1, !dbg !3770
  %213 = shl i64 %49, 10, !dbg !3771
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !3771
  call void @llvm.dbg.value(metadata i1 %212, metadata !3640, metadata !DIExpression()), !dbg !3696
  br label %272, !dbg !3772

215:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !3724, metadata !DIExpression()) #18, !dbg !3773
  call void @llvm.dbg.value(metadata i32 0, metadata !3718, metadata !DIExpression()) #18, !dbg !3773
  call void @llvm.dbg.value(metadata i32 2, metadata !3725, metadata !DIExpression()) #18, !dbg !3773
  call void @llvm.dbg.value(metadata i32 undef, metadata !3729, metadata !DIExpression()) #18, !dbg !3775
  %216 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !3777
  %217 = extractvalue { i64, i1 } %216, 1, !dbg !3777
  %218 = mul i64 %49, %73, !dbg !3778
  %219 = select i1 %217, i64 -1, i64 %218, !dbg !3778
  call void @llvm.dbg.value(metadata i1 %217, metadata !3718, metadata !DIExpression()) #18, !dbg !3773
  call void @llvm.dbg.value(metadata i32 1, metadata !3725, metadata !DIExpression()) #18, !dbg !3773
  %220 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %219) #18, !dbg !3777
  %221 = extractvalue { i64, i1 } %220, 1, !dbg !3777
  %222 = mul i64 %219, %73, !dbg !3778
  %223 = select i1 %221, i64 -1, i64 %222, !dbg !3778
  %224 = or i1 %217, %221, !dbg !3779
  call void @llvm.dbg.value(metadata i1 %224, metadata !3718, metadata !DIExpression()) #18, !dbg !3773
  call void @llvm.dbg.value(metadata i32 0, metadata !3725, metadata !DIExpression()) #18, !dbg !3773
  %225 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %223) #18, !dbg !3777
  %226 = extractvalue { i64, i1 } %225, 1, !dbg !3777
  %227 = mul i64 %223, %73, !dbg !3778
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !3778
  %229 = or i1 %224, %226, !dbg !3779
  call void @llvm.dbg.value(metadata i1 %229, metadata !3718, metadata !DIExpression()) #18, !dbg !3773
  call void @llvm.dbg.value(metadata i32 0, metadata !3725, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !3773
  br label %272, !dbg !3741

230:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !3724, metadata !DIExpression()) #18, !dbg !3780
  call void @llvm.dbg.value(metadata i32 0, metadata !3718, metadata !DIExpression()) #18, !dbg !3780
  call void @llvm.dbg.value(metadata i32 undef, metadata !3725, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !3780
  call void @llvm.dbg.value(metadata i32 undef, metadata !3729, metadata !DIExpression()) #18, !dbg !3782
  %231 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !3784
  %232 = extractvalue { i64, i1 } %231, 1, !dbg !3784
  %233 = mul i64 %49, %73, !dbg !3785
  %234 = select i1 %232, i64 -1, i64 %233, !dbg !3785
  call void @llvm.dbg.value(metadata i1 %232, metadata !3718, metadata !DIExpression()) #18, !dbg !3780
  call void @llvm.dbg.value(metadata i32 undef, metadata !3725, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !3780
  br label %272, !dbg !3741

235:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !3724, metadata !DIExpression()) #18, !dbg !3786
  call void @llvm.dbg.value(metadata i32 0, metadata !3718, metadata !DIExpression()) #18, !dbg !3786
  call void @llvm.dbg.value(metadata i32 1, metadata !3725, metadata !DIExpression()) #18, !dbg !3786
  call void @llvm.dbg.value(metadata i32 undef, metadata !3729, metadata !DIExpression()) #18, !dbg !3788
  %236 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !3790
  %237 = extractvalue { i64, i1 } %236, 1, !dbg !3790
  %238 = mul i64 %49, %73, !dbg !3791
  %239 = select i1 %237, i64 -1, i64 %238, !dbg !3791
  call void @llvm.dbg.value(metadata i1 %237, metadata !3718, metadata !DIExpression()) #18, !dbg !3786
  call void @llvm.dbg.value(metadata i32 0, metadata !3725, metadata !DIExpression()) #18, !dbg !3786
  %240 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %239) #18, !dbg !3790
  %241 = extractvalue { i64, i1 } %240, 1, !dbg !3790
  %242 = mul i64 %239, %73, !dbg !3791
  %243 = select i1 %241, i64 -1, i64 %242, !dbg !3791
  %244 = or i1 %237, %241, !dbg !3792
  call void @llvm.dbg.value(metadata i1 %244, metadata !3718, metadata !DIExpression()) #18, !dbg !3786
  call void @llvm.dbg.value(metadata i32 0, metadata !3725, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !3786
  br label %272, !dbg !3741

245:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !3724, metadata !DIExpression()) #18, !dbg !3793
  call void @llvm.dbg.value(metadata i32 0, metadata !3718, metadata !DIExpression()) #18, !dbg !3793
  call void @llvm.dbg.value(metadata i32 3, metadata !3725, metadata !DIExpression()) #18, !dbg !3793
  call void @llvm.dbg.value(metadata i32 undef, metadata !3729, metadata !DIExpression()) #18, !dbg !3795
  %246 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !3797
  %247 = extractvalue { i64, i1 } %246, 1, !dbg !3797
  %248 = mul i64 %49, %73, !dbg !3798
  %249 = select i1 %247, i64 -1, i64 %248, !dbg !3798
  call void @llvm.dbg.value(metadata i1 %247, metadata !3718, metadata !DIExpression()) #18, !dbg !3793
  call void @llvm.dbg.value(metadata i32 2, metadata !3725, metadata !DIExpression()) #18, !dbg !3793
  %250 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %249) #18, !dbg !3797
  %251 = extractvalue { i64, i1 } %250, 1, !dbg !3797
  %252 = mul i64 %249, %73, !dbg !3798
  %253 = select i1 %251, i64 -1, i64 %252, !dbg !3798
  %254 = or i1 %247, %251, !dbg !3799
  call void @llvm.dbg.value(metadata i1 %254, metadata !3718, metadata !DIExpression()) #18, !dbg !3793
  call void @llvm.dbg.value(metadata i32 1, metadata !3725, metadata !DIExpression()) #18, !dbg !3793
  %255 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %253) #18, !dbg !3797
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !3797
  %257 = mul i64 %253, %73, !dbg !3798
  %258 = select i1 %256, i64 -1, i64 %257, !dbg !3798
  %259 = or i1 %254, %256, !dbg !3799
  call void @llvm.dbg.value(metadata i1 %259, metadata !3718, metadata !DIExpression()) #18, !dbg !3793
  call void @llvm.dbg.value(metadata i32 0, metadata !3725, metadata !DIExpression()) #18, !dbg !3793
  %260 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %258) #18, !dbg !3797
  %261 = extractvalue { i64, i1 } %260, 1, !dbg !3797
  %262 = mul i64 %258, %73, !dbg !3798
  %263 = select i1 %261, i64 -1, i64 %262, !dbg !3798
  %264 = or i1 %259, %261, !dbg !3799
  call void @llvm.dbg.value(metadata i1 %264, metadata !3718, metadata !DIExpression()) #18, !dbg !3793
  call void @llvm.dbg.value(metadata i32 0, metadata !3725, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !3793
  br label %272, !dbg !3741

265:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 2, metadata !3729, metadata !DIExpression()) #18, !dbg !3800
  %266 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 2) #18, !dbg !3802
  %267 = extractvalue { i64, i1 } %266, 1, !dbg !3802
  %268 = shl i64 %49, 1, !dbg !3803
  %269 = select i1 %267, i64 -1, i64 %268, !dbg !3803
  call void @llvm.dbg.value(metadata i1 %267, metadata !3640, metadata !DIExpression()), !dbg !3696
  br label %272, !dbg !3804

270:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, metadata !3630, metadata !DIExpression()), !dbg !3641
  store i64 %49, i64* %3, align 8, !dbg !3805, !tbaa !2621
  %271 = or i32 %48, 2, !dbg !3806
  br label %285, !dbg !3807

272:                                              ; preds = %75, %110, %245, %150, %235, %230, %215, %175, %205, %210, %265, %72
  %273 = phi i64 [ %269, %265 ], [ %49, %72 ], [ %214, %210 ], [ %209, %205 ], [ %203, %175 ], [ %228, %215 ], [ %234, %230 ], [ %243, %235 ], [ %173, %150 ], [ %263, %245 ], [ %148, %110 ], [ %108, %75 ], !dbg !3641
  %274 = phi i1 [ %267, %265 ], [ false, %72 ], [ %212, %210 ], [ %207, %205 ], [ %204, %175 ], [ %229, %215 ], [ %232, %230 ], [ %244, %235 ], [ %174, %150 ], [ %264, %245 ], [ %149, %110 ], [ %109, %75 ]
  %275 = zext i1 %274 to i32, !dbg !3808
  call void @llvm.dbg.value(metadata i32 %275, metadata !3640, metadata !DIExpression()), !dbg !3696
  %276 = or i32 %48, %275, !dbg !3741
  call void @llvm.dbg.value(metadata i32 %276, metadata !3631, metadata !DIExpression()), !dbg !3641
  %277 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !3809
  store i8* %277, i8** %25, align 8, !dbg !3809, !tbaa !1342
  %278 = load i8, i8* %277, align 1, !dbg !3810, !tbaa !1540
  %279 = icmp eq i8 %278, 0, !dbg !3810
  %280 = or i32 %276, 2, !dbg !3812
  %281 = select i1 %279, i32 %276, i32 %280, !dbg !3813
  call void @llvm.dbg.value(metadata i32 %281, metadata !3631, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i32 %281, metadata !3631, metadata !DIExpression()), !dbg !3641
  br label %282

282:                                              ; preds = %272, %47
  %283 = phi i64 [ %49, %47 ], [ %273, %272 ], !dbg !3814
  %284 = phi i32 [ %48, %47 ], [ %281, %272 ], !dbg !3815
  call void @llvm.dbg.value(metadata i32 %284, metadata !3631, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i64 %283, metadata !3630, metadata !DIExpression()), !dbg !3641
  store i64 %283, i64* %3, align 8, !dbg !3816, !tbaa !2621
  br label %285, !dbg !3817

285:                                              ; preds = %24, %56, %270, %40, %31, %33, %36, %282, %46
  %286 = phi i32 [ %284, %282 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %271, %270 ], !dbg !3641
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #18, !dbg !3818
  ret i32 %286, !dbg !3818
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !3819 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3821, metadata !DIExpression()), !dbg !3827
  call void @llvm.dbg.value(metadata i64 %1, metadata !3822, metadata !DIExpression()), !dbg !3827
  %3 = icmp eq i64 %0, 0, !dbg !3828
  %4 = icmp eq i64 %1, 0, !dbg !3829
  %5 = or i1 %3, %4, !dbg !3830
  br i1 %5, label %11, label %6, !dbg !3830

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3824, metadata !DIExpression()), !dbg !3831
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3832
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3832
  br i1 %8, label %9, label %11, !dbg !3834

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #24, !dbg !3835
  store i32 12, i32* %10, align 4, !dbg !3837, !tbaa !1415
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3821, metadata !DIExpression()), !dbg !3827
  call void @llvm.dbg.value(metadata i64 %12, metadata !3822, metadata !DIExpression()), !dbg !3827
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #18, !dbg !3838
  call void @llvm.dbg.value(metadata i8* %14, metadata !3823, metadata !DIExpression()), !dbg !3827
  br label %15, !dbg !3839

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3827
  ret i8* %16, !dbg !3840
}

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3841 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3849, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.value(metadata i8* %1, metadata !3850, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.value(metadata i64 %2, metadata !3851, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3852, metadata !DIExpression()), !dbg !3858
  %6 = bitcast i32* %5 to i8*, !dbg !3859
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3859
  %7 = icmp eq i32* %0, null, !dbg !3860
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3862
  call void @llvm.dbg.value(metadata i32* %8, metadata !3849, metadata !DIExpression()), !dbg !3858
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #18, !dbg !3863
  call void @llvm.dbg.value(metadata i64 %9, metadata !3853, metadata !DIExpression()), !dbg !3858
  %10 = icmp ugt i64 %9, -3, !dbg !3864
  %11 = icmp ne i64 %2, 0, !dbg !3865
  %12 = and i1 %11, %10, !dbg !3866
  br i1 %12, label %13, label %18, !dbg !3866

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #18, !dbg !3867
  br i1 %14, label %18, label %15, !dbg !3868

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3869, !tbaa !1540
  call void @llvm.dbg.value(metadata i8 %16, metadata !3855, metadata !DIExpression()), !dbg !3870
  %17 = zext i8 %16 to i32, !dbg !3871
  store i32 %17, i32* %8, align 4, !dbg !3872, !tbaa !1415
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3858
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3873
  ret i64 %19, !dbg !3873
}

; Function Attrs: nounwind
declare !dbg !722 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3874 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3880, metadata !DIExpression()), !dbg !3885
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #18, !dbg !3886
  call void @llvm.dbg.value(metadata i1 undef, metadata !3881, metadata !DIExpression()), !dbg !3885
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3887, metadata !DIExpression()), !dbg !3891
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3893
  %4 = load i32, i32* %3, align 8, !dbg !3893, !tbaa !3894
  %5 = and i32 %4, 32, !dbg !3893
  %6 = icmp eq i32 %5, 0, !dbg !3896
  call void @llvm.dbg.value(metadata i1 %6, metadata !3883, metadata !DIExpression()), !dbg !3885
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #18, !dbg !3897
  %8 = icmp ne i32 %7, 0, !dbg !3898
  call void @llvm.dbg.value(metadata i1 %8, metadata !3884, metadata !DIExpression()), !dbg !3885
  br i1 %6, label %9, label %19, !dbg !3899

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3901
  call void @llvm.dbg.value(metadata i1 %10, metadata !3881, metadata !DIExpression()), !dbg !3885
  %11 = xor i1 %8, true, !dbg !3902
  %12 = or i1 %10, %11, !dbg !3902
  %13 = sext i1 %8 to i32, !dbg !3902
  br i1 %12, label %22, label %14, !dbg !3902

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #24, !dbg !3903
  %16 = load i32, i32* %15, align 4, !dbg !3903, !tbaa !1415
  %17 = icmp ne i32 %16, 9, !dbg !3904
  %18 = sext i1 %17 to i32, !dbg !3905
  br label %22, !dbg !3905

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3906

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #24, !dbg !3908
  store i32 0, i32* %21, align 4, !dbg !3910, !tbaa !1415
  br label %22, !dbg !3908

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3885
  ret i32 %23, !dbg !3911
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3912 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3914, metadata !DIExpression()), !dbg !3919
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3920
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #18, !dbg !3920
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3915, metadata !DIExpression()), !dbg !3921
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #18, !dbg !3922
  %5 = icmp eq i32 %4, 0, !dbg !3922
  br i1 %5, label %6, label %13, !dbg !3924

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3925
  %8 = load i16, i16* %7, align 16, !dbg !3925
  %9 = icmp eq i16 %8, 67, !dbg !3925
  br i1 %9, label %13, label %10, !dbg !3926

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.126, i64 0, i64 0), i64 6), !dbg !3927
  %12 = icmp ne i32 %11, 0, !dbg !3928
  br label %13, !dbg !3926

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3919
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #18, !dbg !3929
  ret i1 %14, !dbg !3929
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3930 {
  %1 = tail call i8* @nl_langinfo(i32 14) #18, !dbg !3933
  call void @llvm.dbg.value(metadata i8* %1, metadata !3932, metadata !DIExpression()), !dbg !3934
  %2 = icmp eq i8* %1, null, !dbg !3935
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.129, i64 0, i64 0), i8* %1, !dbg !3937
  call void @llvm.dbg.value(metadata i8* %3, metadata !3932, metadata !DIExpression()), !dbg !3934
  %4 = load i8, i8* %3, align 1, !dbg !3938, !tbaa !1540
  %5 = icmp eq i8 %4, 0, !dbg !3942
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.130, i64 0, i64 0), i8* %3, !dbg !3943
  call void @llvm.dbg.value(metadata i8* %6, metadata !3932, metadata !DIExpression()), !dbg !3934
  ret i8* %6, !dbg !3944
}

; Function Attrs: nounwind
declare !dbg !1174 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3945 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3949, metadata !DIExpression()), !dbg !3952
  call void @llvm.dbg.value(metadata i8* %1, metadata !3950, metadata !DIExpression()), !dbg !3952
  call void @llvm.dbg.value(metadata i64 %2, metadata !3951, metadata !DIExpression()), !dbg !3952
  call void @llvm.dbg.value(metadata i32 %0, metadata !3953, metadata !DIExpression()) #18, !dbg !3962
  call void @llvm.dbg.value(metadata i8* %1, metadata !3956, metadata !DIExpression()) #18, !dbg !3962
  call void @llvm.dbg.value(metadata i64 %2, metadata !3957, metadata !DIExpression()) #18, !dbg !3962
  call void @llvm.dbg.value(metadata i32 %0, metadata !3964, metadata !DIExpression()) #18, !dbg !3970
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !3972
  call void @llvm.dbg.value(metadata i8* %4, metadata !3969, metadata !DIExpression()) #18, !dbg !3970
  call void @llvm.dbg.value(metadata i8* %4, metadata !3958, metadata !DIExpression()) #18, !dbg !3962
  %5 = icmp eq i8* %4, null, !dbg !3973
  br i1 %5, label %6, label %9, !dbg !3974

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3975
  br i1 %7, label %19, label %8, !dbg !3978

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3979, !tbaa !1540
  br label %19, !dbg !3980

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #21, !dbg !3981
  call void @llvm.dbg.value(metadata i64 %10, metadata !3959, metadata !DIExpression()) #18, !dbg !3982
  %11 = icmp ult i64 %10, %2, !dbg !3983
  br i1 %11, label %12, label %14, !dbg !3985

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3986
  call void @llvm.dbg.value(metadata i8* %1, metadata !3988, metadata !DIExpression()) #18, !dbg !3993
  call void @llvm.dbg.value(metadata i8* %4, metadata !3991, metadata !DIExpression()) #18, !dbg !3993
  call void @llvm.dbg.value(metadata i64 %13, metadata !3992, metadata !DIExpression()) #18, !dbg !3993
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #18, !dbg !3995
  br label %19, !dbg !3996

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3997
  br i1 %15, label %19, label %16, !dbg !4000

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4001
  call void @llvm.dbg.value(metadata i8* %1, metadata !3988, metadata !DIExpression()) #18, !dbg !4003
  call void @llvm.dbg.value(metadata i8* %4, metadata !3991, metadata !DIExpression()) #18, !dbg !4003
  call void @llvm.dbg.value(metadata i64 %17, metadata !3992, metadata !DIExpression()) #18, !dbg !4003
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #18, !dbg !4005
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4006
  store i8 0, i8* %18, align 1, !dbg !4007, !tbaa !1540
  br label %19, !dbg !4008

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !4009
  ret i32 %20, !dbg !4010
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4011 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4013, metadata !DIExpression()), !dbg !4014
  call void @llvm.dbg.value(metadata i32 %0, metadata !3964, metadata !DIExpression()) #18, !dbg !4015
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !4017
  call void @llvm.dbg.value(metadata i8* %2, metadata !3969, metadata !DIExpression()) #18, !dbg !4015
  ret i8* %2, !dbg !4018
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4019 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4025, metadata !DIExpression()), !dbg !4029
  call void @llvm.dbg.value(metadata i32 0, metadata !4026, metadata !DIExpression()), !dbg !4029
  call void @llvm.dbg.value(metadata i32 0, metadata !4028, metadata !DIExpression()), !dbg !4029
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !4030
  call void @llvm.dbg.value(metadata i32 %2, metadata !4027, metadata !DIExpression()), !dbg !4029
  %3 = icmp slt i32 %2, 0, !dbg !4031
  br i1 %3, label %4, label %6, !dbg !4033

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4034
  br label %24, !dbg !4035

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !4036
  %8 = icmp eq i32 %7, 0, !dbg !4036
  br i1 %8, label %13, label %9, !dbg !4038

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !4039
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #18, !dbg !4040
  %12 = icmp eq i64 %11, -1, !dbg !4041
  br i1 %12, label %16, label %13, !dbg !4042

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #18, !dbg !4043
  %15 = icmp eq i32 %14, 0, !dbg !4043
  br i1 %15, label %16, label %18, !dbg !4044

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4026, metadata !DIExpression()), !dbg !4029
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4045
  call void @llvm.dbg.value(metadata i32 %21, metadata !4028, metadata !DIExpression()), !dbg !4029
  br label %24, !dbg !4046

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #24, !dbg !4047
  %20 = load i32, i32* %19, align 4, !dbg !4047, !tbaa !1415
  call void @llvm.dbg.value(metadata i32 %20, metadata !4026, metadata !DIExpression()), !dbg !4029
  call void @llvm.dbg.value(metadata i32 %20, metadata !4026, metadata !DIExpression()), !dbg !4029
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4045
  call void @llvm.dbg.value(metadata i32 %21, metadata !4028, metadata !DIExpression()), !dbg !4029
  %22 = icmp eq i32 %20, 0, !dbg !4048
  br i1 %22, label %24, label %23, !dbg !4046

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4050, !tbaa !1415
  call void @llvm.dbg.value(metadata i32 -1, metadata !4028, metadata !DIExpression()), !dbg !4029
  br label %24, !dbg !4052

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4029
  ret i32 %25, !dbg !4053
}

; Function Attrs: nofree nounwind
declare !dbg !1183 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1218 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1219 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4054 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4060, metadata !DIExpression()), !dbg !4061
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4062
  br i1 %2, label %6, label %3, !dbg !4064

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !4065
  %5 = icmp eq i32 %4, 0, !dbg !4065
  br i1 %5, label %6, label %8, !dbg !4066

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4067
  br label %17, !dbg !4068

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4069, metadata !DIExpression()) #18, !dbg !4074
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4076
  %10 = load i32, i32* %9, align 8, !dbg !4076, !tbaa !3894
  %11 = and i32 %10, 256, !dbg !4078
  %12 = icmp eq i32 %11, 0, !dbg !4078
  br i1 %12, label %15, label %13, !dbg !4079

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #18, !dbg !4080
  br label %15, !dbg !4080

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4081
  br label %17, !dbg !4082

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4061
  ret i32 %18, !dbg !4083
}

; Function Attrs: nofree nounwind
declare !dbg !1226 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4084 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4091, metadata !DIExpression()), !dbg !4097
  call void @llvm.dbg.value(metadata i64 %1, metadata !4092, metadata !DIExpression()), !dbg !4097
  call void @llvm.dbg.value(metadata i32 %2, metadata !4093, metadata !DIExpression()), !dbg !4097
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4098
  %5 = load i8*, i8** %4, align 8, !dbg !4098, !tbaa !4099
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4100
  %7 = load i8*, i8** %6, align 8, !dbg !4100, !tbaa !4101
  %8 = icmp eq i8* %5, %7, !dbg !4102
  br i1 %8, label %9, label %28, !dbg !4103

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4104
  %11 = load i8*, i8** %10, align 8, !dbg !4104, !tbaa !4105
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4106
  %13 = load i8*, i8** %12, align 8, !dbg !4106, !tbaa !4107
  %14 = icmp eq i8* %11, %13, !dbg !4108
  br i1 %14, label %15, label %28, !dbg !4109

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4110
  %17 = load i8*, i8** %16, align 8, !dbg !4110, !tbaa !4111
  %18 = icmp eq i8* %17, null, !dbg !4112
  br i1 %18, label %19, label %28, !dbg !4113

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !4114
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #18, !dbg !4115
  call void @llvm.dbg.value(metadata i64 %21, metadata !4094, metadata !DIExpression()), !dbg !4116
  %22 = icmp eq i64 %21, -1, !dbg !4117
  br i1 %22, label %30, label %23, !dbg !4119

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4120
  %25 = load i32, i32* %24, align 8, !dbg !4121, !tbaa !3894
  %26 = and i32 %25, -17, !dbg !4121
  store i32 %26, i32* %24, align 8, !dbg !4121, !tbaa !3894
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4122
  store i64 %21, i64* %27, align 8, !dbg !4123, !tbaa !4124
  br label %30, !dbg !4125

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4126
  br label %30, !dbg !4127

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4097
  ret i32 %31, !dbg !4128
}

; Function Attrs: nofree nounwind
declare !dbg !1302 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

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

!llvm.dbg.cu = !{!2, !145, !150, !197, !390, !203, !244, !630, !384, !672, !693, !696, !712, !716, !719, !738, !777, !784, !1177, !1180, !1223, !1264}
!llvm.ident = !{!1305, !1305, !1305, !1305, !1305, !1305, !1305, !1305, !1305, !1305, !1305, !1305, !1305, !1305, !1305, !1305, !1305, !1305, !1305, !1305, !1305, !1305}
!llvm.module.flags = !{!1306, !1307, !1308, !1309, !1310}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 41, type: !140, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !12, globals: !139, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/nproc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nproc_query", file: !6, line: 32, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lib/nproc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "NPROC_ALL", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "NPROC_CURRENT", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "NPROC_CURRENT_OVERRIDABLE", value: 2, isUnsigned: true)
!12 = !{!13, !23, !84, !88, !92, !95, !98, !105, !17, !74, !120, !124, !128, !132, !136}
!13 = !DISubprogram(name: "dcgettext", scope: !14, file: !14, line: 51, type: !15, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!14 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !19, !19, !21}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !{}
!23 = !DISubprogram(name: "fputs_unlocked", scope: !24, file: !24, line: 662, type: !25, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!24 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!25 = !DISubroutineType(types: !26)
!26 = !{!21, !19, !27}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !29, line: 49, size: 1728, elements: !30)
!29 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!30 = !{!31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !46, !47, !48, !49, !53, !55, !57, !61, !64, !66, !69, !72, !73, !75, !79, !80}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !28, file: !29, line: 51, baseType: !21, size: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !28, file: !29, line: 54, baseType: !17, size: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !28, file: !29, line: 55, baseType: !17, size: 64, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !28, file: !29, line: 56, baseType: !17, size: 64, offset: 192)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !28, file: !29, line: 57, baseType: !17, size: 64, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !28, file: !29, line: 58, baseType: !17, size: 64, offset: 320)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !28, file: !29, line: 59, baseType: !17, size: 64, offset: 384)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !28, file: !29, line: 60, baseType: !17, size: 64, offset: 448)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !28, file: !29, line: 61, baseType: !17, size: 64, offset: 512)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !28, file: !29, line: 64, baseType: !17, size: 64, offset: 576)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !28, file: !29, line: 65, baseType: !17, size: 64, offset: 640)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !28, file: !29, line: 66, baseType: !17, size: 64, offset: 704)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !28, file: !29, line: 68, baseType: !44, size: 64, offset: 768)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !29, line: 36, flags: DIFlagFwdDecl)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !28, file: !29, line: 70, baseType: !27, size: 64, offset: 832)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !28, file: !29, line: 72, baseType: !21, size: 32, offset: 896)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !28, file: !29, line: 73, baseType: !21, size: 32, offset: 928)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !28, file: !29, line: 74, baseType: !50, size: 64, offset: 960)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !51, line: 152, baseType: !52)
!51 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!52 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !28, file: !29, line: 77, baseType: !54, size: 16, offset: 1024)
!54 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !28, file: !29, line: 78, baseType: !56, size: 8, offset: 1040)
!56 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !28, file: !29, line: 79, baseType: !58, size: 8, offset: 1048)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 1)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !28, file: !29, line: 81, baseType: !62, size: 64, offset: 1088)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !29, line: 43, baseType: null)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !28, file: !29, line: 89, baseType: !65, size: 64, offset: 1152)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !51, line: 153, baseType: !52)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !28, file: !29, line: 91, baseType: !67, size: 64, offset: 1216)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !29, line: 37, flags: DIFlagFwdDecl)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !28, file: !29, line: 92, baseType: !70, size: 64, offset: 1280)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !29, line: 38, flags: DIFlagFwdDecl)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !28, file: !29, line: 93, baseType: !27, size: 64, offset: 1344)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !28, file: !29, line: 94, baseType: !74, size: 64, offset: 1408)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !28, file: !29, line: 95, baseType: !76, size: 64, offset: 1472)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !77, line: 46, baseType: !78)
!77 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!78 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !28, file: !29, line: 96, baseType: !21, size: 32, offset: 1536)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !28, file: !29, line: 98, baseType: !81, size: 160, offset: 1568)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 160, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 20)
!84 = !DISubprogram(name: "set_program_name", scope: !85, file: !85, line: 37, type: !86, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!85 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!86 = !DISubroutineType(types: !87)
!87 = !{null, !19}
!88 = !DISubprogram(name: "setlocale", scope: !89, file: !89, line: 122, type: !90, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!89 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!90 = !DISubroutineType(types: !91)
!91 = !{!17, !21, !19}
!92 = !DISubprogram(name: "bindtextdomain", scope: !14, file: !14, line: 86, type: !93, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!93 = !DISubroutineType(types: !94)
!94 = !{!17, !19, !19}
!95 = !DISubprogram(name: "textdomain", scope: !14, file: !14, line: 82, type: !96, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!96 = !DISubroutineType(types: !97)
!97 = !{!17, !19}
!98 = !DISubprogram(name: "atexit", scope: !99, file: !99, line: 595, type: !100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!99 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!100 = !DISubroutineType(types: !101)
!101 = !{!21, !102}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{null}
!105 = !DISubprogram(name: "getopt_long", scope: !106, file: !106, line: 66, type: !107, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!106 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!107 = !DISubroutineType(types: !108)
!108 = !{!21, !21, !109, !19, !111, !118}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !106, line: 50, size: 256, elements: !114)
!114 = !{!115, !116, !117, !119}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !113, file: !106, line: 52, baseType: !19, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !113, file: !106, line: 55, baseType: !21, size: 32, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !113, file: !106, line: 56, baseType: !118, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !113, file: !106, line: 57, baseType: !21, size: 32, offset: 192)
!120 = !DISubprogram(name: "version_etc", scope: !121, file: !121, line: 69, type: !122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!121 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!122 = !DISubroutineType(types: !123)
!123 = !{null, !27, !19, !19, !19, null}
!124 = !DISubprogram(name: "xdectoumax", scope: !125, file: !125, line: 31, type: !126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!125 = !DIFile(filename: "./lib/xdectoint.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!126 = !DISubroutineType(types: !127)
!127 = !{!78, !19, !78, !78, !19, !19, !21}
!128 = !DISubprogram(name: "quote", scope: !129, file: !129, line: 44, type: !130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!129 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!130 = !DISubroutineType(types: !131)
!131 = !{!19, !19}
!132 = !DISubprogram(name: "error", scope: !133, file: !133, line: 52, type: !134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!133 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!134 = !DISubroutineType(types: !135)
!135 = !{null, !21, !21, !19, null}
!136 = !DISubprogram(name: "num_processors", scope: !6, file: !6, line: 42, type: !137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!137 = !DISubroutineType(types: !138)
!138 = !{!78, !5}
!139 = !{!0}
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 1280, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 5)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "Version", scope: !145, file: !146, line: 2, type: !19, isLocal: false, isDefinition: true)
!145 = distinct !DICompileUnit(language: DW_LANG_C99, file: !146, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !22, globals: !147, splitDebugInlining: false, nameTableKind: None)
!146 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!147 = !{!143}
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "file_name", scope: !150, file: !151, line: 46, type: !19, isLocal: true, isDefinition: true)
!150 = distinct !DICompileUnit(language: DW_LANG_C99, file: !151, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !22, retainedTypes: !152, globals: !191, splitDebugInlining: false, nameTableKind: None)
!151 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!152 = !{!153, !13, !189, !132}
!153 = !DISubprogram(name: "close_stream", scope: !154, file: !154, line: 2, type: !155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!154 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!155 = !DISubroutineType(types: !156)
!156 = !{!21, !157}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !29, line: 49, size: 1728, elements: !159)
!159 = !{!160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !158, file: !29, line: 51, baseType: !21, size: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !158, file: !29, line: 54, baseType: !17, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !158, file: !29, line: 55, baseType: !17, size: 64, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !158, file: !29, line: 56, baseType: !17, size: 64, offset: 192)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !158, file: !29, line: 57, baseType: !17, size: 64, offset: 256)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !158, file: !29, line: 58, baseType: !17, size: 64, offset: 320)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !158, file: !29, line: 59, baseType: !17, size: 64, offset: 384)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !158, file: !29, line: 60, baseType: !17, size: 64, offset: 448)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !158, file: !29, line: 61, baseType: !17, size: 64, offset: 512)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !158, file: !29, line: 64, baseType: !17, size: 64, offset: 576)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !158, file: !29, line: 65, baseType: !17, size: 64, offset: 640)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !158, file: !29, line: 66, baseType: !17, size: 64, offset: 704)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !158, file: !29, line: 68, baseType: !44, size: 64, offset: 768)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !158, file: !29, line: 70, baseType: !157, size: 64, offset: 832)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !158, file: !29, line: 72, baseType: !21, size: 32, offset: 896)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !158, file: !29, line: 73, baseType: !21, size: 32, offset: 928)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !158, file: !29, line: 74, baseType: !50, size: 64, offset: 960)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !158, file: !29, line: 77, baseType: !54, size: 16, offset: 1024)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !158, file: !29, line: 78, baseType: !56, size: 8, offset: 1040)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !158, file: !29, line: 79, baseType: !58, size: 8, offset: 1048)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !158, file: !29, line: 81, baseType: !62, size: 64, offset: 1088)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !158, file: !29, line: 89, baseType: !65, size: 64, offset: 1152)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !158, file: !29, line: 91, baseType: !67, size: 64, offset: 1216)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !158, file: !29, line: 92, baseType: !70, size: 64, offset: 1280)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !158, file: !29, line: 93, baseType: !157, size: 64, offset: 1344)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !158, file: !29, line: 94, baseType: !74, size: 64, offset: 1408)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !158, file: !29, line: 95, baseType: !76, size: 64, offset: 1472)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !158, file: !29, line: 96, baseType: !21, size: 32, offset: 1536)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !158, file: !29, line: 98, baseType: !81, size: 160, offset: 1568)
!189 = !DISubprogram(name: "quotearg_colon", scope: !190, file: !190, line: 391, type: !96, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!190 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!191 = !{!148, !192}
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !150, file: !151, line: 56, type: !194, isLocal: true, isDefinition: true)
!194 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "exit_failure", scope: !197, file: !198, line: 24, type: !200, isLocal: false, isDefinition: true)
!197 = distinct !DICompileUnit(language: DW_LANG_C99, file: !198, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !22, globals: !199, splitDebugInlining: false, nameTableKind: None)
!198 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!199 = !{!195}
!200 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !21)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "program_name", scope: !203, file: !204, line: 33, type: !19, isLocal: false, isDefinition: true)
!203 = distinct !DICompileUnit(language: DW_LANG_C99, file: !204, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !22, retainedTypes: !205, globals: !241, splitDebugInlining: false, nameTableKind: None)
!204 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!205 = !{!74, !206, !17}
!206 = !DISubprogram(name: "fputs", scope: !24, file: !24, line: 626, type: !207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!207 = !DISubroutineType(types: !208)
!208 = !{!21, !19, !209}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !29, line: 49, size: 1728, elements: !211)
!211 = !{!212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !210, file: !29, line: 51, baseType: !21, size: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !210, file: !29, line: 54, baseType: !17, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !210, file: !29, line: 55, baseType: !17, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !210, file: !29, line: 56, baseType: !17, size: 64, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !210, file: !29, line: 57, baseType: !17, size: 64, offset: 256)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !210, file: !29, line: 58, baseType: !17, size: 64, offset: 320)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !210, file: !29, line: 59, baseType: !17, size: 64, offset: 384)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !210, file: !29, line: 60, baseType: !17, size: 64, offset: 448)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !210, file: !29, line: 61, baseType: !17, size: 64, offset: 512)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !210, file: !29, line: 64, baseType: !17, size: 64, offset: 576)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !210, file: !29, line: 65, baseType: !17, size: 64, offset: 640)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !210, file: !29, line: 66, baseType: !17, size: 64, offset: 704)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !210, file: !29, line: 68, baseType: !44, size: 64, offset: 768)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !210, file: !29, line: 70, baseType: !209, size: 64, offset: 832)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !210, file: !29, line: 72, baseType: !21, size: 32, offset: 896)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !210, file: !29, line: 73, baseType: !21, size: 32, offset: 928)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !210, file: !29, line: 74, baseType: !50, size: 64, offset: 960)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !210, file: !29, line: 77, baseType: !54, size: 16, offset: 1024)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !210, file: !29, line: 78, baseType: !56, size: 8, offset: 1040)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !210, file: !29, line: 79, baseType: !58, size: 8, offset: 1048)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !210, file: !29, line: 81, baseType: !62, size: 64, offset: 1088)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !210, file: !29, line: 89, baseType: !65, size: 64, offset: 1152)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !210, file: !29, line: 91, baseType: !67, size: 64, offset: 1216)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !210, file: !29, line: 92, baseType: !70, size: 64, offset: 1280)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !210, file: !29, line: 93, baseType: !209, size: 64, offset: 1344)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !210, file: !29, line: 94, baseType: !74, size: 64, offset: 1408)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !210, file: !29, line: 95, baseType: !76, size: 64, offset: 1472)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !210, file: !29, line: 96, baseType: !21, size: 32, offset: 1536)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !210, file: !29, line: 98, baseType: !81, size: 160, offset: 1568)
!241 = !{!201}
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !244, file: !245, line: 85, type: !378, isLocal: false, isDefinition: true)
!244 = distinct !DICompileUnit(language: DW_LANG_C99, file: !245, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, retainedTypes: !280, globals: !351, splitDebugInlining: false, nameTableKind: None)
!245 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!246 = !{!247, !260, !265}
!247 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !190, line: 32, baseType: !7, size: 32, elements: !248)
!248 = !{!249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259}
!249 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!250 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!251 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!252 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!253 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!254 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!255 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!256 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!257 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!258 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!259 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!260 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !190, line: 242, baseType: !7, size: 32, elements: !261)
!261 = !{!262, !263, !264}
!262 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!263 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!264 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!265 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !266, line: 46, baseType: !7, size: 32, elements: !267)
!266 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!267 = !{!268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279}
!268 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!269 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!270 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!271 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!272 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!273 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!274 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!275 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!276 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!277 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!278 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!279 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!280 = !{!281, !287, !303, !306, !21, !54, !309, !76, !326, !330, !13, !336, !340, !17, !344, !347, !348}
!281 = !DISubprogram(name: "xmemdup", scope: !282, file: !282, line: 62, type: !283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!282 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!283 = !DISubroutineType(types: !284)
!284 = !{!74, !285, !78}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!287 = !DISubprogram(name: "quotearg_alloc_mem", scope: !190, file: !190, line: 342, type: !288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!288 = !DISubroutineType(types: !289)
!289 = !{!17, !19, !78, !290, !291}
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !293)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !245, line: 65, size: 448, elements: !294)
!294 = !{!295, !296, !297, !301, !302}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !293, file: !245, line: 68, baseType: !247, size: 32)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !293, file: !245, line: 71, baseType: !21, size: 32, offset: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !293, file: !245, line: 75, baseType: !298, size: 256, offset: 64)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 8)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !293, file: !245, line: 78, baseType: !19, size: 64, offset: 320)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !293, file: !245, line: 81, baseType: !19, size: 64, offset: 384)
!303 = !DISubprogram(name: "free", scope: !99, file: !99, line: 565, type: !304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !74}
!306 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !190, file: !190, line: 408, type: !307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!307 = !DISubroutineType(types: !308)
!308 = !{!17, !21, !19, !19, !19, !78}
!309 = !DISubprogram(name: "rpl_mbrtowc", scope: !310, file: !310, line: 717, type: !311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!310 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!311 = !DISubroutineType(types: !312)
!312 = !{!78, !118, !19, !78, !313}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !315, line: 13, size: 64, elements: !316)
!315 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!316 = !{!317, !318}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !314, file: !315, line: 15, baseType: !21, size: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !314, file: !315, line: 20, baseType: !319, size: 32, offset: 32)
!319 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !314, file: !315, line: 16, size: 32, elements: !320)
!320 = !{!321, !322}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !319, file: !315, line: 18, baseType: !7, size: 32)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !319, file: !315, line: 19, baseType: !323, size: 32)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 32, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 4)
!326 = !DISubprogram(name: "iswprint", scope: !327, file: !327, line: 120, type: !328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!327 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!328 = !DISubroutineType(types: !329)
!329 = !{!21, !7}
!330 = !DISubprogram(name: "mbsinit", scope: !331, file: !331, line: 292, type: !332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!331 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!332 = !DISubroutineType(types: !333)
!333 = !{!21, !334}
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !314)
!336 = !DISubprogram(name: "locale_charset", scope: !337, file: !337, line: 35, type: !338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!337 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!338 = !DISubroutineType(types: !339)
!339 = !{!19}
!340 = !DISubprogram(name: "c_strcasecmp", scope: !341, file: !341, line: 42, type: !342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!341 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!342 = !DISubroutineType(types: !343)
!343 = !{!21, !19, !19}
!344 = !DISubprogram(name: "xmalloc", scope: !282, file: !282, line: 53, type: !345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!345 = !DISubroutineType(types: !346)
!346 = !{!74, !78}
!347 = !DISubprogram(name: "xalloc_die", scope: !282, file: !282, line: 51, type: !103, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !22)
!348 = !DISubprogram(name: "xrealloc", scope: !282, file: !282, line: 59, type: !349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!349 = !DISubroutineType(types: !350)
!350 = !{!74, !74, !78}
!351 = !{!242, !352, !358, !360, !362, !367, !374, !376}
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !244, file: !245, line: 101, type: !354, isLocal: false, isDefinition: true)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 320, elements: !356)
!355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !247)
!356 = !{!357}
!357 = !DISubrange(count: 10)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !244, file: !245, line: 1052, type: !293, isLocal: false, isDefinition: true)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !244, file: !245, line: 116, type: !293, isLocal: true, isDefinition: true)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(name: "slot0", scope: !244, file: !245, line: 842, type: !364, isLocal: true, isDefinition: true)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 2048, elements: !365)
!365 = !{!366}
!366 = !DISubrange(count: 256)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(name: "slotvec", scope: !244, file: !245, line: 845, type: !369, isLocal: true, isDefinition: true)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !245, line: 834, size: 128, elements: !371)
!371 = !{!372, !373}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !370, file: !245, line: 836, baseType: !76, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !370, file: !245, line: 837, baseType: !17, size: 64, offset: 64)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(name: "nslots", scope: !244, file: !245, line: 843, type: !21, isLocal: true, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(name: "slotvec0", scope: !244, file: !245, line: 844, type: !370, isLocal: true, isDefinition: true)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 704, elements: !380)
!379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!380 = !{!381}
!381 = !DISubrange(count: 11)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !384, file: !385, line: 26, type: !387, isLocal: false, isDefinition: true)
!384 = distinct !DICompileUnit(language: DW_LANG_C99, file: !385, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !22, globals: !386, splitDebugInlining: false, nameTableKind: None)
!385 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!386 = !{!382}
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 376, elements: !388)
!388 = !{!389}
!389 = !DISubrange(count: 47)
!390 = distinct !DICompileUnit(language: DW_LANG_C99, file: !391, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !392, retainedTypes: !611, splitDebugInlining: false, nameTableKind: None)
!391 = !DIFile(filename: "lib/nproc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!392 = !{!5, !393}
!393 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !394, line: 71, baseType: !7, size: 32, elements: !395)
!394 = !DIFile(filename: "/usr/include/bits/confname.h", directory: "")
!395 = !{!396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610}
!396 = !DIEnumerator(name: "_SC_ARG_MAX", value: 0, isUnsigned: true)
!397 = !DIEnumerator(name: "_SC_CHILD_MAX", value: 1, isUnsigned: true)
!398 = !DIEnumerator(name: "_SC_CLK_TCK", value: 2, isUnsigned: true)
!399 = !DIEnumerator(name: "_SC_NGROUPS_MAX", value: 3, isUnsigned: true)
!400 = !DIEnumerator(name: "_SC_OPEN_MAX", value: 4, isUnsigned: true)
!401 = !DIEnumerator(name: "_SC_STREAM_MAX", value: 5, isUnsigned: true)
!402 = !DIEnumerator(name: "_SC_TZNAME_MAX", value: 6, isUnsigned: true)
!403 = !DIEnumerator(name: "_SC_JOB_CONTROL", value: 7, isUnsigned: true)
!404 = !DIEnumerator(name: "_SC_SAVED_IDS", value: 8, isUnsigned: true)
!405 = !DIEnumerator(name: "_SC_REALTIME_SIGNALS", value: 9, isUnsigned: true)
!406 = !DIEnumerator(name: "_SC_PRIORITY_SCHEDULING", value: 10, isUnsigned: true)
!407 = !DIEnumerator(name: "_SC_TIMERS", value: 11, isUnsigned: true)
!408 = !DIEnumerator(name: "_SC_ASYNCHRONOUS_IO", value: 12, isUnsigned: true)
!409 = !DIEnumerator(name: "_SC_PRIORITIZED_IO", value: 13, isUnsigned: true)
!410 = !DIEnumerator(name: "_SC_SYNCHRONIZED_IO", value: 14, isUnsigned: true)
!411 = !DIEnumerator(name: "_SC_FSYNC", value: 15, isUnsigned: true)
!412 = !DIEnumerator(name: "_SC_MAPPED_FILES", value: 16, isUnsigned: true)
!413 = !DIEnumerator(name: "_SC_MEMLOCK", value: 17, isUnsigned: true)
!414 = !DIEnumerator(name: "_SC_MEMLOCK_RANGE", value: 18, isUnsigned: true)
!415 = !DIEnumerator(name: "_SC_MEMORY_PROTECTION", value: 19, isUnsigned: true)
!416 = !DIEnumerator(name: "_SC_MESSAGE_PASSING", value: 20, isUnsigned: true)
!417 = !DIEnumerator(name: "_SC_SEMAPHORES", value: 21, isUnsigned: true)
!418 = !DIEnumerator(name: "_SC_SHARED_MEMORY_OBJECTS", value: 22, isUnsigned: true)
!419 = !DIEnumerator(name: "_SC_AIO_LISTIO_MAX", value: 23, isUnsigned: true)
!420 = !DIEnumerator(name: "_SC_AIO_MAX", value: 24, isUnsigned: true)
!421 = !DIEnumerator(name: "_SC_AIO_PRIO_DELTA_MAX", value: 25, isUnsigned: true)
!422 = !DIEnumerator(name: "_SC_DELAYTIMER_MAX", value: 26, isUnsigned: true)
!423 = !DIEnumerator(name: "_SC_MQ_OPEN_MAX", value: 27, isUnsigned: true)
!424 = !DIEnumerator(name: "_SC_MQ_PRIO_MAX", value: 28, isUnsigned: true)
!425 = !DIEnumerator(name: "_SC_VERSION", value: 29, isUnsigned: true)
!426 = !DIEnumerator(name: "_SC_PAGESIZE", value: 30, isUnsigned: true)
!427 = !DIEnumerator(name: "_SC_RTSIG_MAX", value: 31, isUnsigned: true)
!428 = !DIEnumerator(name: "_SC_SEM_NSEMS_MAX", value: 32, isUnsigned: true)
!429 = !DIEnumerator(name: "_SC_SEM_VALUE_MAX", value: 33, isUnsigned: true)
!430 = !DIEnumerator(name: "_SC_SIGQUEUE_MAX", value: 34, isUnsigned: true)
!431 = !DIEnumerator(name: "_SC_TIMER_MAX", value: 35, isUnsigned: true)
!432 = !DIEnumerator(name: "_SC_BC_BASE_MAX", value: 36, isUnsigned: true)
!433 = !DIEnumerator(name: "_SC_BC_DIM_MAX", value: 37, isUnsigned: true)
!434 = !DIEnumerator(name: "_SC_BC_SCALE_MAX", value: 38, isUnsigned: true)
!435 = !DIEnumerator(name: "_SC_BC_STRING_MAX", value: 39, isUnsigned: true)
!436 = !DIEnumerator(name: "_SC_COLL_WEIGHTS_MAX", value: 40, isUnsigned: true)
!437 = !DIEnumerator(name: "_SC_EQUIV_CLASS_MAX", value: 41, isUnsigned: true)
!438 = !DIEnumerator(name: "_SC_EXPR_NEST_MAX", value: 42, isUnsigned: true)
!439 = !DIEnumerator(name: "_SC_LINE_MAX", value: 43, isUnsigned: true)
!440 = !DIEnumerator(name: "_SC_RE_DUP_MAX", value: 44, isUnsigned: true)
!441 = !DIEnumerator(name: "_SC_CHARCLASS_NAME_MAX", value: 45, isUnsigned: true)
!442 = !DIEnumerator(name: "_SC_2_VERSION", value: 46, isUnsigned: true)
!443 = !DIEnumerator(name: "_SC_2_C_BIND", value: 47, isUnsigned: true)
!444 = !DIEnumerator(name: "_SC_2_C_DEV", value: 48, isUnsigned: true)
!445 = !DIEnumerator(name: "_SC_2_FORT_DEV", value: 49, isUnsigned: true)
!446 = !DIEnumerator(name: "_SC_2_FORT_RUN", value: 50, isUnsigned: true)
!447 = !DIEnumerator(name: "_SC_2_SW_DEV", value: 51, isUnsigned: true)
!448 = !DIEnumerator(name: "_SC_2_LOCALEDEF", value: 52, isUnsigned: true)
!449 = !DIEnumerator(name: "_SC_PII", value: 53, isUnsigned: true)
!450 = !DIEnumerator(name: "_SC_PII_XTI", value: 54, isUnsigned: true)
!451 = !DIEnumerator(name: "_SC_PII_SOCKET", value: 55, isUnsigned: true)
!452 = !DIEnumerator(name: "_SC_PII_INTERNET", value: 56, isUnsigned: true)
!453 = !DIEnumerator(name: "_SC_PII_OSI", value: 57, isUnsigned: true)
!454 = !DIEnumerator(name: "_SC_POLL", value: 58, isUnsigned: true)
!455 = !DIEnumerator(name: "_SC_SELECT", value: 59, isUnsigned: true)
!456 = !DIEnumerator(name: "_SC_UIO_MAXIOV", value: 60, isUnsigned: true)
!457 = !DIEnumerator(name: "_SC_IOV_MAX", value: 60, isUnsigned: true)
!458 = !DIEnumerator(name: "_SC_PII_INTERNET_STREAM", value: 61, isUnsigned: true)
!459 = !DIEnumerator(name: "_SC_PII_INTERNET_DGRAM", value: 62, isUnsigned: true)
!460 = !DIEnumerator(name: "_SC_PII_OSI_COTS", value: 63, isUnsigned: true)
!461 = !DIEnumerator(name: "_SC_PII_OSI_CLTS", value: 64, isUnsigned: true)
!462 = !DIEnumerator(name: "_SC_PII_OSI_M", value: 65, isUnsigned: true)
!463 = !DIEnumerator(name: "_SC_T_IOV_MAX", value: 66, isUnsigned: true)
!464 = !DIEnumerator(name: "_SC_THREADS", value: 67, isUnsigned: true)
!465 = !DIEnumerator(name: "_SC_THREAD_SAFE_FUNCTIONS", value: 68, isUnsigned: true)
!466 = !DIEnumerator(name: "_SC_GETGR_R_SIZE_MAX", value: 69, isUnsigned: true)
!467 = !DIEnumerator(name: "_SC_GETPW_R_SIZE_MAX", value: 70, isUnsigned: true)
!468 = !DIEnumerator(name: "_SC_LOGIN_NAME_MAX", value: 71, isUnsigned: true)
!469 = !DIEnumerator(name: "_SC_TTY_NAME_MAX", value: 72, isUnsigned: true)
!470 = !DIEnumerator(name: "_SC_THREAD_DESTRUCTOR_ITERATIONS", value: 73, isUnsigned: true)
!471 = !DIEnumerator(name: "_SC_THREAD_KEYS_MAX", value: 74, isUnsigned: true)
!472 = !DIEnumerator(name: "_SC_THREAD_STACK_MIN", value: 75, isUnsigned: true)
!473 = !DIEnumerator(name: "_SC_THREAD_THREADS_MAX", value: 76, isUnsigned: true)
!474 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKADDR", value: 77, isUnsigned: true)
!475 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKSIZE", value: 78, isUnsigned: true)
!476 = !DIEnumerator(name: "_SC_THREAD_PRIORITY_SCHEDULING", value: 79, isUnsigned: true)
!477 = !DIEnumerator(name: "_SC_THREAD_PRIO_INHERIT", value: 80, isUnsigned: true)
!478 = !DIEnumerator(name: "_SC_THREAD_PRIO_PROTECT", value: 81, isUnsigned: true)
!479 = !DIEnumerator(name: "_SC_THREAD_PROCESS_SHARED", value: 82, isUnsigned: true)
!480 = !DIEnumerator(name: "_SC_NPROCESSORS_CONF", value: 83, isUnsigned: true)
!481 = !DIEnumerator(name: "_SC_NPROCESSORS_ONLN", value: 84, isUnsigned: true)
!482 = !DIEnumerator(name: "_SC_PHYS_PAGES", value: 85, isUnsigned: true)
!483 = !DIEnumerator(name: "_SC_AVPHYS_PAGES", value: 86, isUnsigned: true)
!484 = !DIEnumerator(name: "_SC_ATEXIT_MAX", value: 87, isUnsigned: true)
!485 = !DIEnumerator(name: "_SC_PASS_MAX", value: 88, isUnsigned: true)
!486 = !DIEnumerator(name: "_SC_XOPEN_VERSION", value: 89, isUnsigned: true)
!487 = !DIEnumerator(name: "_SC_XOPEN_XCU_VERSION", value: 90, isUnsigned: true)
!488 = !DIEnumerator(name: "_SC_XOPEN_UNIX", value: 91, isUnsigned: true)
!489 = !DIEnumerator(name: "_SC_XOPEN_CRYPT", value: 92, isUnsigned: true)
!490 = !DIEnumerator(name: "_SC_XOPEN_ENH_I18N", value: 93, isUnsigned: true)
!491 = !DIEnumerator(name: "_SC_XOPEN_SHM", value: 94, isUnsigned: true)
!492 = !DIEnumerator(name: "_SC_2_CHAR_TERM", value: 95, isUnsigned: true)
!493 = !DIEnumerator(name: "_SC_2_C_VERSION", value: 96, isUnsigned: true)
!494 = !DIEnumerator(name: "_SC_2_UPE", value: 97, isUnsigned: true)
!495 = !DIEnumerator(name: "_SC_XOPEN_XPG2", value: 98, isUnsigned: true)
!496 = !DIEnumerator(name: "_SC_XOPEN_XPG3", value: 99, isUnsigned: true)
!497 = !DIEnumerator(name: "_SC_XOPEN_XPG4", value: 100, isUnsigned: true)
!498 = !DIEnumerator(name: "_SC_CHAR_BIT", value: 101, isUnsigned: true)
!499 = !DIEnumerator(name: "_SC_CHAR_MAX", value: 102, isUnsigned: true)
!500 = !DIEnumerator(name: "_SC_CHAR_MIN", value: 103, isUnsigned: true)
!501 = !DIEnumerator(name: "_SC_INT_MAX", value: 104, isUnsigned: true)
!502 = !DIEnumerator(name: "_SC_INT_MIN", value: 105, isUnsigned: true)
!503 = !DIEnumerator(name: "_SC_LONG_BIT", value: 106, isUnsigned: true)
!504 = !DIEnumerator(name: "_SC_WORD_BIT", value: 107, isUnsigned: true)
!505 = !DIEnumerator(name: "_SC_MB_LEN_MAX", value: 108, isUnsigned: true)
!506 = !DIEnumerator(name: "_SC_NZERO", value: 109, isUnsigned: true)
!507 = !DIEnumerator(name: "_SC_SSIZE_MAX", value: 110, isUnsigned: true)
!508 = !DIEnumerator(name: "_SC_SCHAR_MAX", value: 111, isUnsigned: true)
!509 = !DIEnumerator(name: "_SC_SCHAR_MIN", value: 112, isUnsigned: true)
!510 = !DIEnumerator(name: "_SC_SHRT_MAX", value: 113, isUnsigned: true)
!511 = !DIEnumerator(name: "_SC_SHRT_MIN", value: 114, isUnsigned: true)
!512 = !DIEnumerator(name: "_SC_UCHAR_MAX", value: 115, isUnsigned: true)
!513 = !DIEnumerator(name: "_SC_UINT_MAX", value: 116, isUnsigned: true)
!514 = !DIEnumerator(name: "_SC_ULONG_MAX", value: 117, isUnsigned: true)
!515 = !DIEnumerator(name: "_SC_USHRT_MAX", value: 118, isUnsigned: true)
!516 = !DIEnumerator(name: "_SC_NL_ARGMAX", value: 119, isUnsigned: true)
!517 = !DIEnumerator(name: "_SC_NL_LANGMAX", value: 120, isUnsigned: true)
!518 = !DIEnumerator(name: "_SC_NL_MSGMAX", value: 121, isUnsigned: true)
!519 = !DIEnumerator(name: "_SC_NL_NMAX", value: 122, isUnsigned: true)
!520 = !DIEnumerator(name: "_SC_NL_SETMAX", value: 123, isUnsigned: true)
!521 = !DIEnumerator(name: "_SC_NL_TEXTMAX", value: 124, isUnsigned: true)
!522 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFF32", value: 125, isUnsigned: true)
!523 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFFBIG", value: 126, isUnsigned: true)
!524 = !DIEnumerator(name: "_SC_XBS5_LP64_OFF64", value: 127, isUnsigned: true)
!525 = !DIEnumerator(name: "_SC_XBS5_LPBIG_OFFBIG", value: 128, isUnsigned: true)
!526 = !DIEnumerator(name: "_SC_XOPEN_LEGACY", value: 129, isUnsigned: true)
!527 = !DIEnumerator(name: "_SC_XOPEN_REALTIME", value: 130, isUnsigned: true)
!528 = !DIEnumerator(name: "_SC_XOPEN_REALTIME_THREADS", value: 131, isUnsigned: true)
!529 = !DIEnumerator(name: "_SC_ADVISORY_INFO", value: 132, isUnsigned: true)
!530 = !DIEnumerator(name: "_SC_BARRIERS", value: 133, isUnsigned: true)
!531 = !DIEnumerator(name: "_SC_BASE", value: 134, isUnsigned: true)
!532 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT", value: 135, isUnsigned: true)
!533 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT_R", value: 136, isUnsigned: true)
!534 = !DIEnumerator(name: "_SC_CLOCK_SELECTION", value: 137, isUnsigned: true)
!535 = !DIEnumerator(name: "_SC_CPUTIME", value: 138, isUnsigned: true)
!536 = !DIEnumerator(name: "_SC_THREAD_CPUTIME", value: 139, isUnsigned: true)
!537 = !DIEnumerator(name: "_SC_DEVICE_IO", value: 140, isUnsigned: true)
!538 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC", value: 141, isUnsigned: true)
!539 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC_R", value: 142, isUnsigned: true)
!540 = !DIEnumerator(name: "_SC_FD_MGMT", value: 143, isUnsigned: true)
!541 = !DIEnumerator(name: "_SC_FIFO", value: 144, isUnsigned: true)
!542 = !DIEnumerator(name: "_SC_PIPE", value: 145, isUnsigned: true)
!543 = !DIEnumerator(name: "_SC_FILE_ATTRIBUTES", value: 146, isUnsigned: true)
!544 = !DIEnumerator(name: "_SC_FILE_LOCKING", value: 147, isUnsigned: true)
!545 = !DIEnumerator(name: "_SC_FILE_SYSTEM", value: 148, isUnsigned: true)
!546 = !DIEnumerator(name: "_SC_MONOTONIC_CLOCK", value: 149, isUnsigned: true)
!547 = !DIEnumerator(name: "_SC_MULTI_PROCESS", value: 150, isUnsigned: true)
!548 = !DIEnumerator(name: "_SC_SINGLE_PROCESS", value: 151, isUnsigned: true)
!549 = !DIEnumerator(name: "_SC_NETWORKING", value: 152, isUnsigned: true)
!550 = !DIEnumerator(name: "_SC_READER_WRITER_LOCKS", value: 153, isUnsigned: true)
!551 = !DIEnumerator(name: "_SC_SPIN_LOCKS", value: 154, isUnsigned: true)
!552 = !DIEnumerator(name: "_SC_REGEXP", value: 155, isUnsigned: true)
!553 = !DIEnumerator(name: "_SC_REGEX_VERSION", value: 156, isUnsigned: true)
!554 = !DIEnumerator(name: "_SC_SHELL", value: 157, isUnsigned: true)
!555 = !DIEnumerator(name: "_SC_SIGNALS", value: 158, isUnsigned: true)
!556 = !DIEnumerator(name: "_SC_SPAWN", value: 159, isUnsigned: true)
!557 = !DIEnumerator(name: "_SC_SPORADIC_SERVER", value: 160, isUnsigned: true)
!558 = !DIEnumerator(name: "_SC_THREAD_SPORADIC_SERVER", value: 161, isUnsigned: true)
!559 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE", value: 162, isUnsigned: true)
!560 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE_R", value: 163, isUnsigned: true)
!561 = !DIEnumerator(name: "_SC_TIMEOUTS", value: 164, isUnsigned: true)
!562 = !DIEnumerator(name: "_SC_TYPED_MEMORY_OBJECTS", value: 165, isUnsigned: true)
!563 = !DIEnumerator(name: "_SC_USER_GROUPS", value: 166, isUnsigned: true)
!564 = !DIEnumerator(name: "_SC_USER_GROUPS_R", value: 167, isUnsigned: true)
!565 = !DIEnumerator(name: "_SC_2_PBS", value: 168, isUnsigned: true)
!566 = !DIEnumerator(name: "_SC_2_PBS_ACCOUNTING", value: 169, isUnsigned: true)
!567 = !DIEnumerator(name: "_SC_2_PBS_LOCATE", value: 170, isUnsigned: true)
!568 = !DIEnumerator(name: "_SC_2_PBS_MESSAGE", value: 171, isUnsigned: true)
!569 = !DIEnumerator(name: "_SC_2_PBS_TRACK", value: 172, isUnsigned: true)
!570 = !DIEnumerator(name: "_SC_SYMLOOP_MAX", value: 173, isUnsigned: true)
!571 = !DIEnumerator(name: "_SC_STREAMS", value: 174, isUnsigned: true)
!572 = !DIEnumerator(name: "_SC_2_PBS_CHECKPOINT", value: 175, isUnsigned: true)
!573 = !DIEnumerator(name: "_SC_V6_ILP32_OFF32", value: 176, isUnsigned: true)
!574 = !DIEnumerator(name: "_SC_V6_ILP32_OFFBIG", value: 177, isUnsigned: true)
!575 = !DIEnumerator(name: "_SC_V6_LP64_OFF64", value: 178, isUnsigned: true)
!576 = !DIEnumerator(name: "_SC_V6_LPBIG_OFFBIG", value: 179, isUnsigned: true)
!577 = !DIEnumerator(name: "_SC_HOST_NAME_MAX", value: 180, isUnsigned: true)
!578 = !DIEnumerator(name: "_SC_TRACE", value: 181, isUnsigned: true)
!579 = !DIEnumerator(name: "_SC_TRACE_EVENT_FILTER", value: 182, isUnsigned: true)
!580 = !DIEnumerator(name: "_SC_TRACE_INHERIT", value: 183, isUnsigned: true)
!581 = !DIEnumerator(name: "_SC_TRACE_LOG", value: 184, isUnsigned: true)
!582 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_SIZE", value: 185, isUnsigned: true)
!583 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_ASSOC", value: 186, isUnsigned: true)
!584 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_LINESIZE", value: 187, isUnsigned: true)
!585 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_SIZE", value: 188, isUnsigned: true)
!586 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_ASSOC", value: 189, isUnsigned: true)
!587 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_LINESIZE", value: 190, isUnsigned: true)
!588 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_SIZE", value: 191, isUnsigned: true)
!589 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_ASSOC", value: 192, isUnsigned: true)
!590 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_LINESIZE", value: 193, isUnsigned: true)
!591 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_SIZE", value: 194, isUnsigned: true)
!592 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_ASSOC", value: 195, isUnsigned: true)
!593 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_LINESIZE", value: 196, isUnsigned: true)
!594 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_SIZE", value: 197, isUnsigned: true)
!595 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_ASSOC", value: 198, isUnsigned: true)
!596 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_LINESIZE", value: 199, isUnsigned: true)
!597 = !DIEnumerator(name: "_SC_IPV6", value: 235, isUnsigned: true)
!598 = !DIEnumerator(name: "_SC_RAW_SOCKETS", value: 236, isUnsigned: true)
!599 = !DIEnumerator(name: "_SC_V7_ILP32_OFF32", value: 237, isUnsigned: true)
!600 = !DIEnumerator(name: "_SC_V7_ILP32_OFFBIG", value: 238, isUnsigned: true)
!601 = !DIEnumerator(name: "_SC_V7_LP64_OFF64", value: 239, isUnsigned: true)
!602 = !DIEnumerator(name: "_SC_V7_LPBIG_OFFBIG", value: 240, isUnsigned: true)
!603 = !DIEnumerator(name: "_SC_SS_REPL_MAX", value: 241, isUnsigned: true)
!604 = !DIEnumerator(name: "_SC_TRACE_EVENT_NAME_MAX", value: 242, isUnsigned: true)
!605 = !DIEnumerator(name: "_SC_TRACE_NAME_MAX", value: 243, isUnsigned: true)
!606 = !DIEnumerator(name: "_SC_TRACE_SYS_MAX", value: 244, isUnsigned: true)
!607 = !DIEnumerator(name: "_SC_TRACE_USER_EVENT_MAX", value: 245, isUnsigned: true)
!608 = !DIEnumerator(name: "_SC_XOPEN_STREAMS", value: 246, isUnsigned: true)
!609 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_INHERIT", value: 247, isUnsigned: true)
!610 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_PROTECT", value: 248, isUnsigned: true)
!611 = !{!612, !74, !613, !617}
!612 = !DISubprogram(name: "getenv", scope: !99, file: !99, line: 634, type: !96, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!613 = !DISubprogram(name: "sysconf", scope: !614, file: !614, line: 619, type: !615, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!614 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!615 = !DISubroutineType(types: !616)
!616 = !{!52, !21}
!617 = !DISubprogram(name: "sched_getaffinity", scope: !618, file: !618, line: 125, type: !619, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!618 = !DIFile(filename: "/usr/include/sched.h", directory: "")
!619 = !DISubroutineType(types: !620)
!620 = !{!21, !21, !78, !621}
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !623, line: 39, size: 1024, elements: !624)
!623 = !DIFile(filename: "/usr/include/bits/cpu-set.h", directory: "")
!624 = !{!625}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "__bits", scope: !622, file: !623, line: 41, baseType: !626, size: 1024)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !627, size: 1024, elements: !628)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "__cpu_mask", file: !623, line: 32, baseType: !78)
!628 = !{!629}
!629 = !DISubrange(count: 16)
!630 = distinct !DICompileUnit(language: DW_LANG_C99, file: !631, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !632, retainedTypes: !636, splitDebugInlining: false, nameTableKind: None)
!631 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!632 = !{!633}
!633 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !631, line: 40, baseType: !7, size: 32, elements: !634)
!634 = !{!635}
!635 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!636 = !{!13, !637, !74}
!637 = !DISubprogram(name: "fputs_unlocked", scope: !24, file: !24, line: 662, type: !638, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!638 = !DISubroutineType(types: !639)
!639 = !{!21, !19, !640}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !29, line: 49, size: 1728, elements: !642)
!642 = !{!643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !641, file: !29, line: 51, baseType: !21, size: 32)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !641, file: !29, line: 54, baseType: !17, size: 64, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !641, file: !29, line: 55, baseType: !17, size: 64, offset: 128)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !641, file: !29, line: 56, baseType: !17, size: 64, offset: 192)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !641, file: !29, line: 57, baseType: !17, size: 64, offset: 256)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !641, file: !29, line: 58, baseType: !17, size: 64, offset: 320)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !641, file: !29, line: 59, baseType: !17, size: 64, offset: 384)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !641, file: !29, line: 60, baseType: !17, size: 64, offset: 448)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !641, file: !29, line: 61, baseType: !17, size: 64, offset: 512)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !641, file: !29, line: 64, baseType: !17, size: 64, offset: 576)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !641, file: !29, line: 65, baseType: !17, size: 64, offset: 640)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !641, file: !29, line: 66, baseType: !17, size: 64, offset: 704)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !641, file: !29, line: 68, baseType: !44, size: 64, offset: 768)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !641, file: !29, line: 70, baseType: !640, size: 64, offset: 832)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !641, file: !29, line: 72, baseType: !21, size: 32, offset: 896)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !641, file: !29, line: 73, baseType: !21, size: 32, offset: 928)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !641, file: !29, line: 74, baseType: !50, size: 64, offset: 960)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !641, file: !29, line: 77, baseType: !54, size: 16, offset: 1024)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !641, file: !29, line: 78, baseType: !56, size: 8, offset: 1040)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !641, file: !29, line: 79, baseType: !58, size: 8, offset: 1048)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !641, file: !29, line: 81, baseType: !62, size: 64, offset: 1088)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !641, file: !29, line: 89, baseType: !65, size: 64, offset: 1152)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !641, file: !29, line: 91, baseType: !67, size: 64, offset: 1216)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !641, file: !29, line: 92, baseType: !70, size: 64, offset: 1280)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !641, file: !29, line: 93, baseType: !640, size: 64, offset: 1344)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !641, file: !29, line: 94, baseType: !74, size: 64, offset: 1408)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !641, file: !29, line: 95, baseType: !76, size: 64, offset: 1472)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !641, file: !29, line: 96, baseType: !21, size: 32, offset: 1536)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !641, file: !29, line: 98, baseType: !81, size: 160, offset: 1568)
!672 = distinct !DICompileUnit(language: DW_LANG_C99, file: !673, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !674, retainedTypes: !687, splitDebugInlining: false, nameTableKind: None)
!673 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!674 = !{!675}
!675 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !676, file: !282, line: 186, baseType: !7, size: 32, elements: !685)
!676 = distinct !DISubprogram(name: "x2nrealloc", scope: !282, file: !282, line: 174, type: !677, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !680)
!677 = !DISubroutineType(types: !678)
!678 = !{!74, !74, !679, !76}
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!680 = !{!681, !682, !683, !684}
!681 = !DILocalVariable(name: "p", arg: 1, scope: !676, file: !282, line: 174, type: !74)
!682 = !DILocalVariable(name: "pn", arg: 2, scope: !676, file: !282, line: 174, type: !679)
!683 = !DILocalVariable(name: "s", arg: 3, scope: !676, file: !282, line: 174, type: !76)
!684 = !DILocalVariable(name: "n", scope: !676, file: !282, line: 176, type: !76)
!685 = !{!686}
!686 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!687 = !{!76, !347, !344, !348, !17, !303, !74, !688, !691}
!688 = !DISubprogram(name: "xcalloc", scope: !282, file: !282, line: 57, type: !689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!689 = !DISubroutineType(types: !690)
!690 = !{!74, !78, !78}
!691 = !DISubprogram(name: "rpl_calloc", scope: !692, file: !692, line: 688, type: !689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!692 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!693 = distinct !DICompileUnit(language: DW_LANG_C99, file: !694, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !22, retainedTypes: !695, splitDebugInlining: false, nameTableKind: None)
!694 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!695 = !{!13, !132}
!696 = distinct !DICompileUnit(language: DW_LANG_C99, file: !697, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !698, retainedTypes: !707, splitDebugInlining: false, nameTableKind: None)
!697 = !DIFile(filename: "lib/xdectoumax.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!698 = !{!699}
!699 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !700, line: 25, baseType: !7, size: 32, elements: !701)
!700 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!701 = !{!702, !703, !704, !705, !706}
!702 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!703 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!704 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!705 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!706 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!707 = !{!708, !128, !132}
!708 = !DISubprogram(name: "xstrtoumax", scope: !700, file: !700, line: 48, type: !709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!709 = !DISubroutineType(types: !710)
!710 = !{!699, !19, !711, !21, !290, !19}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!712 = distinct !DICompileUnit(language: DW_LANG_C99, file: !713, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !714, retainedTypes: !715, splitDebugInlining: false, nameTableKind: None)
!713 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!714 = !{!699, !265}
!715 = !{!21, !54}
!716 = distinct !DICompileUnit(language: DW_LANG_C99, file: !717, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !22, retainedTypes: !718, splitDebugInlining: false, nameTableKind: None)
!717 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!718 = !{!74}
!719 = distinct !DICompileUnit(language: DW_LANG_C99, file: !720, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !22, retainedTypes: !721, splitDebugInlining: false, nameTableKind: None)
!720 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!721 = !{!722, !76, !734}
!722 = !DISubprogram(name: "mbrtowc", scope: !331, file: !331, line: 296, type: !723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!723 = !DISubroutineType(types: !724)
!724 = !{!78, !118, !19, !78, !725}
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !315, line: 13, size: 64, elements: !727)
!727 = !{!728, !729}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !726, file: !315, line: 15, baseType: !21, size: 32)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !726, file: !315, line: 20, baseType: !730, size: 32, offset: 32)
!730 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !726, file: !315, line: 16, size: 32, elements: !731)
!731 = !{!732, !733}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !730, file: !315, line: 18, baseType: !7, size: 32)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !730, file: !315, line: 19, baseType: !323, size: 32)
!734 = !DISubprogram(name: "hard_locale", scope: !735, file: !735, line: 26, type: !736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!735 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!736 = !DISubroutineType(types: !737)
!737 = !{!194, !21}
!738 = distinct !DICompileUnit(language: DW_LANG_C99, file: !739, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !22, retainedTypes: !740, splitDebugInlining: false, nameTableKind: None)
!739 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!740 = !{!741}
!741 = !DISubprogram(name: "rpl_fclose", scope: !742, file: !742, line: 672, type: !743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!742 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!743 = !DISubroutineType(types: !744)
!744 = !{!21, !745}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !29, line: 49, size: 1728, elements: !747)
!747 = !{!748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !746, file: !29, line: 51, baseType: !21, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !746, file: !29, line: 54, baseType: !17, size: 64, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !746, file: !29, line: 55, baseType: !17, size: 64, offset: 128)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !746, file: !29, line: 56, baseType: !17, size: 64, offset: 192)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !746, file: !29, line: 57, baseType: !17, size: 64, offset: 256)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !746, file: !29, line: 58, baseType: !17, size: 64, offset: 320)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !746, file: !29, line: 59, baseType: !17, size: 64, offset: 384)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !746, file: !29, line: 60, baseType: !17, size: 64, offset: 448)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !746, file: !29, line: 61, baseType: !17, size: 64, offset: 512)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !746, file: !29, line: 64, baseType: !17, size: 64, offset: 576)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !746, file: !29, line: 65, baseType: !17, size: 64, offset: 640)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !746, file: !29, line: 66, baseType: !17, size: 64, offset: 704)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !746, file: !29, line: 68, baseType: !44, size: 64, offset: 768)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !746, file: !29, line: 70, baseType: !745, size: 64, offset: 832)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !746, file: !29, line: 72, baseType: !21, size: 32, offset: 896)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !746, file: !29, line: 73, baseType: !21, size: 32, offset: 928)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !746, file: !29, line: 74, baseType: !50, size: 64, offset: 960)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !746, file: !29, line: 77, baseType: !54, size: 16, offset: 1024)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !746, file: !29, line: 78, baseType: !56, size: 8, offset: 1040)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !746, file: !29, line: 79, baseType: !58, size: 8, offset: 1048)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !746, file: !29, line: 81, baseType: !62, size: 64, offset: 1088)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !746, file: !29, line: 89, baseType: !65, size: 64, offset: 1152)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !746, file: !29, line: 91, baseType: !67, size: 64, offset: 1216)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !746, file: !29, line: 92, baseType: !70, size: 64, offset: 1280)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !746, file: !29, line: 93, baseType: !745, size: 64, offset: 1344)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !746, file: !29, line: 94, baseType: !74, size: 64, offset: 1408)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !746, file: !29, line: 95, baseType: !76, size: 64, offset: 1472)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !746, file: !29, line: 96, baseType: !21, size: 32, offset: 1536)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !746, file: !29, line: 98, baseType: !81, size: 160, offset: 1568)
!777 = distinct !DICompileUnit(language: DW_LANG_C99, file: !778, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !22, retainedTypes: !779, splitDebugInlining: false, nameTableKind: None)
!778 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!779 = !{!780}
!780 = !DISubprogram(name: "setlocale_null_r", scope: !781, file: !781, line: 64, type: !782, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!781 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!782 = !DISubroutineType(types: !783)
!783 = !{!21, !21, !17, !78}
!784 = distinct !DICompileUnit(language: DW_LANG_C99, file: !785, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !786, retainedTypes: !1173, splitDebugInlining: false, nameTableKind: None)
!785 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!786 = !{!787}
!787 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !788, line: 41, baseType: !7, size: 32, elements: !789)
!788 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!789 = !{!790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172}
!790 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!791 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!792 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!793 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!794 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!795 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!796 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!797 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!798 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!799 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!800 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!801 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!802 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!803 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!804 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!805 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!806 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!807 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!808 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!809 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!810 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!811 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!812 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!813 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!814 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!815 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!816 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!817 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!818 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!819 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!820 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!821 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!822 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!823 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!824 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!825 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!826 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!827 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!828 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!829 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!830 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!831 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!832 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!833 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!834 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!835 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!836 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!837 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!838 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!839 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!840 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!841 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!842 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!843 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!844 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!845 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!846 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!847 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!848 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!849 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!850 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!851 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!852 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!853 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!854 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!855 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!857 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!858 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!859 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!861 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!894 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!895 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!896 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!897 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!898 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!899 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!900 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!901 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!902 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!903 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!904 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!905 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!906 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!907 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!908 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!909 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!910 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!911 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!912 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!913 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!914 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!915 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!918 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!920 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!941 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!942 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!943 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!944 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!945 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!946 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!947 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!948 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!949 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!955 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!956 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!957 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!958 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!959 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!960 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!961 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!962 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!963 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!964 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!965 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!966 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!967 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!968 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!969 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!970 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!971 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!972 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!973 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!974 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!975 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!976 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!977 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!978 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!979 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!980 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!981 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!982 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!983 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!984 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!985 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!986 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!987 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!988 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!989 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!990 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!991 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!992 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!993 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!994 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!995 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!996 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!997 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!998 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!999 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!1000 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!1001 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!1002 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!1003 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!1004 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!1005 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!1006 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!1007 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!1008 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!1009 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!1010 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!1011 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!1012 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!1013 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!1014 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!1015 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!1016 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!1017 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!1018 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!1019 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!1020 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!1021 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!1022 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!1023 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!1024 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!1025 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!1026 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!1027 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!1028 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!1029 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!1030 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!1031 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!1032 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!1033 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!1034 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!1035 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!1036 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!1037 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!1038 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!1039 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!1040 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!1041 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!1042 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!1043 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!1044 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!1045 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!1046 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!1047 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!1048 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!1049 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!1050 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!1051 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!1052 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!1053 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!1054 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!1055 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!1056 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!1057 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!1058 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!1059 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!1060 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!1061 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!1062 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!1063 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!1064 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!1065 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!1066 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!1067 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!1068 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!1069 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!1070 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!1071 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!1072 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!1073 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!1074 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!1075 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!1076 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!1077 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!1078 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!1079 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!1080 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!1081 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!1082 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!1083 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!1084 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!1085 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!1086 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!1087 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!1088 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!1089 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!1090 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!1091 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!1092 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!1093 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!1094 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!1095 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!1096 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!1097 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!1098 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!1099 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!1100 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!1101 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!1102 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!1103 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!1104 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!1105 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!1106 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!1107 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!1108 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!1109 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!1110 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!1111 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!1112 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!1113 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!1114 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!1115 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!1116 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!1117 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!1118 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!1119 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!1120 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!1121 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!1122 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!1123 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!1124 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!1125 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!1126 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!1127 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!1128 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!1129 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!1130 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!1131 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!1132 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!1133 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!1134 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!1135 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!1136 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!1137 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!1138 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!1139 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!1140 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!1141 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!1142 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!1143 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!1144 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!1145 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!1146 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!1147 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!1148 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!1149 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!1150 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!1151 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!1152 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!1153 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!1154 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!1155 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!1156 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!1157 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!1158 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!1159 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!1160 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!1161 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!1162 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!1163 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!1164 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!1165 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!1166 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!1167 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!1168 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!1169 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!1170 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!1171 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!1172 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!1173 = !{!1174, !74}
!1174 = !DISubprogram(name: "nl_langinfo", scope: !788, file: !788, line: 661, type: !1175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!17, !21}
!1177 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1178, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !22, retainedTypes: !1179, splitDebugInlining: false, nameTableKind: None)
!1178 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1179 = !{!74, !88}
!1180 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1181, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !22, retainedTypes: !1182, splitDebugInlining: false, nameTableKind: None)
!1181 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1182 = !{!1183, !1218, !1219, !1222}
!1183 = !DISubprogram(name: "fileno", scope: !24, file: !24, line: 786, type: !1184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!21, !1186}
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !29, line: 49, size: 1728, elements: !1188)
!1188 = !{!1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1187, file: !29, line: 51, baseType: !21, size: 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1187, file: !29, line: 54, baseType: !17, size: 64, offset: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1187, file: !29, line: 55, baseType: !17, size: 64, offset: 128)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1187, file: !29, line: 56, baseType: !17, size: 64, offset: 192)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1187, file: !29, line: 57, baseType: !17, size: 64, offset: 256)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1187, file: !29, line: 58, baseType: !17, size: 64, offset: 320)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1187, file: !29, line: 59, baseType: !17, size: 64, offset: 384)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1187, file: !29, line: 60, baseType: !17, size: 64, offset: 448)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1187, file: !29, line: 61, baseType: !17, size: 64, offset: 512)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1187, file: !29, line: 64, baseType: !17, size: 64, offset: 576)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1187, file: !29, line: 65, baseType: !17, size: 64, offset: 640)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1187, file: !29, line: 66, baseType: !17, size: 64, offset: 704)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1187, file: !29, line: 68, baseType: !44, size: 64, offset: 768)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1187, file: !29, line: 70, baseType: !1186, size: 64, offset: 832)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1187, file: !29, line: 72, baseType: !21, size: 32, offset: 896)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1187, file: !29, line: 73, baseType: !21, size: 32, offset: 928)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1187, file: !29, line: 74, baseType: !50, size: 64, offset: 960)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1187, file: !29, line: 77, baseType: !54, size: 16, offset: 1024)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1187, file: !29, line: 78, baseType: !56, size: 8, offset: 1040)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1187, file: !29, line: 79, baseType: !58, size: 8, offset: 1048)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1187, file: !29, line: 81, baseType: !62, size: 64, offset: 1088)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1187, file: !29, line: 89, baseType: !65, size: 64, offset: 1152)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1187, file: !29, line: 91, baseType: !67, size: 64, offset: 1216)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1187, file: !29, line: 92, baseType: !70, size: 64, offset: 1280)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1187, file: !29, line: 93, baseType: !1186, size: 64, offset: 1344)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1187, file: !29, line: 94, baseType: !74, size: 64, offset: 1408)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1187, file: !29, line: 95, baseType: !76, size: 64, offset: 1472)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1187, file: !29, line: 96, baseType: !21, size: 32, offset: 1536)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1187, file: !29, line: 98, baseType: !81, size: 160, offset: 1568)
!1218 = !DISubprogram(name: "fclose", scope: !24, file: !24, line: 213, type: !1184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!1219 = !DISubprogram(name: "lseek", scope: !614, file: !614, line: 334, type: !1220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!52, !21, !52, !21}
!1222 = !DISubprogram(name: "rpl_fflush", scope: !742, file: !742, line: 718, type: !1184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!1223 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1224, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !22, retainedTypes: !1225, splitDebugInlining: false, nameTableKind: None)
!1224 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1225 = !{!74, !1226, !1261}
!1226 = !DISubprogram(name: "fflush", scope: !24, file: !24, line: 218, type: !1227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!21, !1229}
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !29, line: 49, size: 1728, elements: !1231)
!1231 = !{!1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1230, file: !29, line: 51, baseType: !21, size: 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1230, file: !29, line: 54, baseType: !17, size: 64, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1230, file: !29, line: 55, baseType: !17, size: 64, offset: 128)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1230, file: !29, line: 56, baseType: !17, size: 64, offset: 192)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1230, file: !29, line: 57, baseType: !17, size: 64, offset: 256)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1230, file: !29, line: 58, baseType: !17, size: 64, offset: 320)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1230, file: !29, line: 59, baseType: !17, size: 64, offset: 384)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1230, file: !29, line: 60, baseType: !17, size: 64, offset: 448)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1230, file: !29, line: 61, baseType: !17, size: 64, offset: 512)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1230, file: !29, line: 64, baseType: !17, size: 64, offset: 576)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1230, file: !29, line: 65, baseType: !17, size: 64, offset: 640)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1230, file: !29, line: 66, baseType: !17, size: 64, offset: 704)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1230, file: !29, line: 68, baseType: !44, size: 64, offset: 768)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1230, file: !29, line: 70, baseType: !1229, size: 64, offset: 832)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1230, file: !29, line: 72, baseType: !21, size: 32, offset: 896)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1230, file: !29, line: 73, baseType: !21, size: 32, offset: 928)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1230, file: !29, line: 74, baseType: !50, size: 64, offset: 960)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1230, file: !29, line: 77, baseType: !54, size: 16, offset: 1024)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1230, file: !29, line: 78, baseType: !56, size: 8, offset: 1040)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1230, file: !29, line: 79, baseType: !58, size: 8, offset: 1048)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1230, file: !29, line: 81, baseType: !62, size: 64, offset: 1088)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1230, file: !29, line: 89, baseType: !65, size: 64, offset: 1152)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1230, file: !29, line: 91, baseType: !67, size: 64, offset: 1216)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1230, file: !29, line: 92, baseType: !70, size: 64, offset: 1280)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1230, file: !29, line: 93, baseType: !1229, size: 64, offset: 1344)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1230, file: !29, line: 94, baseType: !74, size: 64, offset: 1408)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1230, file: !29, line: 95, baseType: !76, size: 64, offset: 1472)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1230, file: !29, line: 96, baseType: !21, size: 32, offset: 1536)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1230, file: !29, line: 98, baseType: !81, size: 160, offset: 1568)
!1261 = !DISubprogram(name: "rpl_fseeko", scope: !742, file: !742, line: 1034, type: !1262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!21, !1229, !52, !21}
!1264 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1265, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !22, retainedTypes: !1266, splitDebugInlining: false, nameTableKind: None)
!1265 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1266 = !{!74, !1267, !1219, !1302}
!1267 = !DISubprogram(name: "fileno", scope: !24, file: !24, line: 786, type: !1268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!21, !1270}
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !29, line: 49, size: 1728, elements: !1272)
!1272 = !{!1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1271, file: !29, line: 51, baseType: !21, size: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1271, file: !29, line: 54, baseType: !17, size: 64, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1271, file: !29, line: 55, baseType: !17, size: 64, offset: 128)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1271, file: !29, line: 56, baseType: !17, size: 64, offset: 192)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1271, file: !29, line: 57, baseType: !17, size: 64, offset: 256)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1271, file: !29, line: 58, baseType: !17, size: 64, offset: 320)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1271, file: !29, line: 59, baseType: !17, size: 64, offset: 384)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1271, file: !29, line: 60, baseType: !17, size: 64, offset: 448)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1271, file: !29, line: 61, baseType: !17, size: 64, offset: 512)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1271, file: !29, line: 64, baseType: !17, size: 64, offset: 576)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1271, file: !29, line: 65, baseType: !17, size: 64, offset: 640)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1271, file: !29, line: 66, baseType: !17, size: 64, offset: 704)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1271, file: !29, line: 68, baseType: !44, size: 64, offset: 768)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1271, file: !29, line: 70, baseType: !1270, size: 64, offset: 832)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1271, file: !29, line: 72, baseType: !21, size: 32, offset: 896)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1271, file: !29, line: 73, baseType: !21, size: 32, offset: 928)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1271, file: !29, line: 74, baseType: !50, size: 64, offset: 960)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1271, file: !29, line: 77, baseType: !54, size: 16, offset: 1024)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1271, file: !29, line: 78, baseType: !56, size: 8, offset: 1040)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1271, file: !29, line: 79, baseType: !58, size: 8, offset: 1048)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1271, file: !29, line: 81, baseType: !62, size: 64, offset: 1088)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1271, file: !29, line: 89, baseType: !65, size: 64, offset: 1152)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1271, file: !29, line: 91, baseType: !67, size: 64, offset: 1216)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1271, file: !29, line: 92, baseType: !70, size: 64, offset: 1280)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1271, file: !29, line: 93, baseType: !1270, size: 64, offset: 1344)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1271, file: !29, line: 94, baseType: !74, size: 64, offset: 1408)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1271, file: !29, line: 95, baseType: !76, size: 64, offset: 1472)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1271, file: !29, line: 96, baseType: !21, size: 32, offset: 1536)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1271, file: !29, line: 98, baseType: !81, size: 160, offset: 1568)
!1302 = !DISubprogram(name: "fseeko", scope: !24, file: !24, line: 707, type: !1303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !22)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!21, !1270, !52, !21}
!1305 = !{!"clang version 10.0.0 "}
!1306 = !{i32 7, !"Dwarf Version", i32 4}
!1307 = !{i32 2, !"Debug Info Version", i32 3}
!1308 = !{i32 1, !"wchar_size", i32 4}
!1309 = !{i32 7, !"PIC Level", i32 2}
!1310 = !{i32 7, !"PIE Level", i32 2}
!1311 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 51, type: !1312, scopeLine: 52, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1314)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{null, !21}
!1314 = !{!1315}
!1315 = !DILocalVariable(name: "status", arg: 1, scope: !1311, file: !3, line: 51, type: !21)
!1316 = !DILocalVariable(name: "infomap", scope: !1317, file: !1318, line: 636, type: !1330)
!1317 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1318, file: !1318, line: 634, type: !86, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1319)
!1318 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1319 = !{!1320, !1316, !1321, !1322, !1329}
!1320 = !DILocalVariable(name: "program", arg: 1, scope: !1317, file: !1318, line: 634, type: !19)
!1321 = !DILocalVariable(name: "node", scope: !1317, file: !1318, line: 646, type: !19)
!1322 = !DILocalVariable(name: "map_prog", scope: !1317, file: !1318, line: 647, type: !1323)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1325)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1317, file: !1318, line: 636, size: 128, elements: !1326)
!1326 = !{!1327, !1328}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1325, file: !1318, line: 636, baseType: !19, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1325, file: !1318, line: 636, baseType: !19, size: 64, offset: 64)
!1329 = !DILocalVariable(name: "lc_messages", scope: !1317, file: !1318, line: 659, type: !19)
!1330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1324, size: 896, elements: !1331)
!1331 = !{!1332}
!1332 = !DISubrange(count: 7)
!1333 = !DILocation(line: 636, column: 67, scope: !1317, inlinedAt: !1334)
!1334 = distinct !DILocation(line: 70, column: 7, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 56, column: 5)
!1336 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 53, column: 7)
!1337 = !DILocation(line: 0, scope: !1311)
!1338 = !DILocation(line: 53, column: 14, scope: !1336)
!1339 = !DILocation(line: 53, column: 7, scope: !1311)
!1340 = !DILocation(line: 54, column: 5, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 54, column: 5)
!1342 = !{!1343, !1343, i64 0}
!1343 = !{!"any pointer", !1344, i64 0}
!1344 = !{!"omnipotent char", !1345, i64 0}
!1345 = !{!"Simple C/C++ TBAA"}
!1346 = !DILocation(line: 57, column: 7, scope: !1335)
!1347 = !DILocation(line: 58, column: 7, scope: !1335)
!1348 = !DILocation(line: 63, column: 7, scope: !1335)
!1349 = !DILocation(line: 68, column: 7, scope: !1335)
!1350 = !DILocation(line: 69, column: 7, scope: !1335)
!1351 = !DILocation(line: 0, scope: !1317, inlinedAt: !1334)
!1352 = !DILocation(line: 636, column: 3, scope: !1317, inlinedAt: !1334)
!1353 = !DILocation(line: 647, column: 36, scope: !1317, inlinedAt: !1334)
!1354 = !DILocation(line: 649, column: 3, scope: !1317, inlinedAt: !1334)
!1355 = !DILocation(line: 649, column: 33, scope: !1317, inlinedAt: !1334)
!1356 = !DILocation(line: 650, column: 13, scope: !1317, inlinedAt: !1334)
!1357 = !DILocation(line: 649, column: 20, scope: !1317, inlinedAt: !1334)
!1358 = !{!1359, !1343, i64 0}
!1359 = !{!"infomap", !1343, i64 0, !1343, i64 8}
!1360 = !DILocation(line: 649, column: 10, scope: !1317, inlinedAt: !1334)
!1361 = !DILocation(line: 649, column: 28, scope: !1317, inlinedAt: !1334)
!1362 = distinct !{!1362, !1354, !1356}
!1363 = !DILocation(line: 652, column: 17, scope: !1364, inlinedAt: !1334)
!1364 = distinct !DILexicalBlock(scope: !1317, file: !1318, line: 652, column: 7)
!1365 = !{!1359, !1343, i64 8}
!1366 = !DILocation(line: 652, column: 7, scope: !1364, inlinedAt: !1334)
!1367 = !DILocation(line: 652, column: 7, scope: !1317, inlinedAt: !1334)
!1368 = !DILocation(line: 655, column: 3, scope: !1317, inlinedAt: !1334)
!1369 = !DILocation(line: 659, column: 29, scope: !1317, inlinedAt: !1334)
!1370 = !DILocation(line: 660, column: 7, scope: !1371, inlinedAt: !1334)
!1371 = distinct !DILexicalBlock(scope: !1317, file: !1318, line: 660, column: 7)
!1372 = !DILocation(line: 660, column: 19, scope: !1371, inlinedAt: !1334)
!1373 = !DILocation(line: 660, column: 22, scope: !1371, inlinedAt: !1334)
!1374 = !DILocation(line: 660, column: 7, scope: !1317, inlinedAt: !1334)
!1375 = !DILocation(line: 666, column: 7, scope: !1376, inlinedAt: !1334)
!1376 = distinct !DILexicalBlock(scope: !1371, file: !1318, line: 661, column: 5)
!1377 = !DILocation(line: 668, column: 5, scope: !1376, inlinedAt: !1334)
!1378 = !DILocation(line: 669, column: 3, scope: !1317, inlinedAt: !1334)
!1379 = !DILocation(line: 671, column: 3, scope: !1317, inlinedAt: !1334)
!1380 = !DILocation(line: 673, column: 1, scope: !1317, inlinedAt: !1334)
!1381 = !DILocation(line: 72, column: 3, scope: !1311)
!1382 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 76, type: !1383, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1385)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!21, !21, !711}
!1385 = !{!1386, !1387, !1388, !1389, !1390, !1391}
!1386 = !DILocalVariable(name: "argc", arg: 1, scope: !1382, file: !3, line: 76, type: !21)
!1387 = !DILocalVariable(name: "argv", arg: 2, scope: !1382, file: !3, line: 76, type: !711)
!1388 = !DILocalVariable(name: "nproc", scope: !1382, file: !3, line: 78, type: !78)
!1389 = !DILocalVariable(name: "ignore", scope: !1382, file: !3, line: 78, type: !78)
!1390 = !DILocalVariable(name: "mode", scope: !1382, file: !3, line: 87, type: !5)
!1391 = !DILocalVariable(name: "c", scope: !1392, file: !3, line: 91, type: !21)
!1392 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 90, column: 5)
!1393 = !DILocation(line: 0, scope: !1382)
!1394 = !DILocation(line: 80, column: 21, scope: !1382)
!1395 = !DILocation(line: 80, column: 3, scope: !1382)
!1396 = !DILocation(line: 81, column: 3, scope: !1382)
!1397 = !DILocation(line: 82, column: 3, scope: !1382)
!1398 = !DILocation(line: 83, column: 3, scope: !1382)
!1399 = !DILocation(line: 85, column: 3, scope: !1382)
!1400 = !DILocation(line: 89, column: 3, scope: !1382)
!1401 = !DILocation(line: 92, column: 11, scope: !1392)
!1402 = !DILocation(line: 87, column: 20, scope: !1382)
!1403 = !DILocation(line: 91, column: 15, scope: !1392)
!1404 = !DILocation(line: 0, scope: !1392)
!1405 = !DILocation(line: 96, column: 9, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 95, column: 9)
!1407 = !DILocation(line: 98, column: 9, scope: !1406)
!1408 = !DILocation(line: 105, column: 32, scope: !1406)
!1409 = !DILocation(line: 105, column: 58, scope: !1406)
!1410 = !DILocation(line: 105, column: 20, scope: !1406)
!1411 = !DILocation(line: 106, column: 11, scope: !1406)
!1412 = !DILocation(line: 109, column: 11, scope: !1406)
!1413 = !DILocation(line: 113, column: 15, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 113, column: 7)
!1415 = !{!1416, !1416, i64 0}
!1416 = !{!"int", !1344, i64 0}
!1417 = !DILocation(line: 113, column: 12, scope: !1414)
!1418 = !DILocation(line: 113, column: 7, scope: !1382)
!1419 = !DILocation(line: 115, column: 20, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 114, column: 5)
!1421 = !DILocation(line: 115, column: 55, scope: !1420)
!1422 = !DILocation(line: 115, column: 50, scope: !1420)
!1423 = !DILocation(line: 115, column: 43, scope: !1420)
!1424 = !DILocation(line: 115, column: 7, scope: !1420)
!1425 = !DILocation(line: 116, column: 7, scope: !1420)
!1426 = !DILocation(line: 119, column: 11, scope: !1382)
!1427 = !DILocation(line: 121, column: 14, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 121, column: 7)
!1429 = !DILocation(line: 121, column: 7, scope: !1382)
!1430 = !DILocation(line: 126, column: 3, scope: !1382)
!1431 = !DILocation(line: 129, column: 1, scope: !1382)
!1432 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !151, file: !151, line: 51, type: !86, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !1433)
!1433 = !{!1434}
!1434 = !DILocalVariable(name: "file", arg: 1, scope: !1432, file: !151, line: 51, type: !19)
!1435 = !DILocation(line: 0, scope: !1432)
!1436 = !DILocation(line: 53, column: 13, scope: !1432)
!1437 = !DILocation(line: 54, column: 1, scope: !1432)
!1438 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !151, file: !151, line: 88, type: !1439, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !1441)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{null, !194}
!1441 = !{!1442}
!1442 = !DILocalVariable(name: "ignore", arg: 1, scope: !1438, file: !151, line: 88, type: !194)
!1443 = !DILocation(line: 0, scope: !1438)
!1444 = !DILocation(line: 90, column: 16, scope: !1438)
!1445 = !{!1446, !1446, i64 0}
!1446 = !{!"_Bool", !1344, i64 0}
!1447 = !DILocation(line: 91, column: 1, scope: !1438)
!1448 = distinct !DISubprogram(name: "close_stdout", scope: !151, file: !151, line: 117, type: !103, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !1449)
!1449 = !{!1450}
!1450 = !DILocalVariable(name: "write_error", scope: !1451, file: !151, line: 122, type: !19)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !151, line: 121, column: 5)
!1452 = distinct !DILexicalBlock(scope: !1448, file: !151, line: 119, column: 7)
!1453 = !DILocation(line: 119, column: 21, scope: !1452)
!1454 = !DILocation(line: 119, column: 7, scope: !1452)
!1455 = !DILocation(line: 119, column: 29, scope: !1452)
!1456 = !DILocation(line: 120, column: 7, scope: !1452)
!1457 = !DILocation(line: 120, column: 12, scope: !1452)
!1458 = !{i8 0, i8 2}
!1459 = !DILocation(line: 120, column: 25, scope: !1452)
!1460 = !DILocation(line: 120, column: 28, scope: !1452)
!1461 = !DILocation(line: 120, column: 34, scope: !1452)
!1462 = !DILocation(line: 119, column: 7, scope: !1448)
!1463 = !DILocation(line: 122, column: 33, scope: !1451)
!1464 = !DILocation(line: 0, scope: !1451)
!1465 = !DILocation(line: 123, column: 11, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1451, file: !151, line: 123, column: 11)
!1467 = !DILocation(line: 0, scope: !1466)
!1468 = !DILocation(line: 123, column: 11, scope: !1451)
!1469 = !DILocation(line: 124, column: 36, scope: !1466)
!1470 = !DILocation(line: 124, column: 9, scope: !1466)
!1471 = !DILocation(line: 127, column: 9, scope: !1466)
!1472 = !DILocation(line: 129, column: 14, scope: !1451)
!1473 = !DILocation(line: 129, column: 7, scope: !1451)
!1474 = !DILocation(line: 134, column: 42, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1448, file: !151, line: 134, column: 7)
!1476 = !DILocation(line: 134, column: 28, scope: !1475)
!1477 = !DILocation(line: 134, column: 50, scope: !1475)
!1478 = !DILocation(line: 134, column: 7, scope: !1448)
!1479 = !DILocation(line: 135, column: 12, scope: !1475)
!1480 = !DILocation(line: 135, column: 5, scope: !1475)
!1481 = !DILocation(line: 136, column: 1, scope: !1448)
!1482 = distinct !DISubprogram(name: "num_processors", scope: !391, file: !391, line: 372, type: !137, scopeLine: 373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !1483)
!1483 = !{!1484, !1485, !1486, !1489}
!1484 = !DILocalVariable(name: "query", arg: 1, scope: !1482, file: !391, line: 372, type: !5)
!1485 = !DILocalVariable(name: "omp_env_limit", scope: !1482, file: !391, line: 374, type: !78)
!1486 = !DILocalVariable(name: "omp_env_threads", scope: !1487, file: !391, line: 378, type: !78)
!1487 = distinct !DILexicalBlock(scope: !1488, file: !391, line: 377, column: 5)
!1488 = distinct !DILexicalBlock(scope: !1482, file: !391, line: 376, column: 7)
!1489 = !DILocalVariable(name: "nprocs", scope: !1490, file: !391, line: 393, type: !78)
!1490 = distinct !DILexicalBlock(scope: !1482, file: !391, line: 392, column: 3)
!1491 = !DILocalVariable(name: "set", scope: !1492, file: !391, line: 129, type: !1500)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !391, line: 128, column: 3)
!1493 = distinct !DISubprogram(name: "num_processors_via_affinity_mask", scope: !391, file: !391, line: 69, type: !1494, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !1496)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!78}
!1496 = !{!1491, !1497}
!1497 = !DILocalVariable(name: "count", scope: !1498, file: !391, line: 133, type: !78)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !391, line: 132, column: 7)
!1499 = distinct !DILexicalBlock(scope: !1492, file: !391, line: 131, column: 9)
!1500 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpu_set_t", file: !623, line: 42, baseType: !622)
!1501 = !DILocation(line: 129, column: 15, scope: !1492, inlinedAt: !1502)
!1502 = distinct !DILocation(line: 257, column: 44, scope: !1503, inlinedAt: !1518)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !391, line: 256, column: 11)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !391, line: 255, column: 13)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !391, line: 245, column: 7)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !391, line: 243, column: 5)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !391, line: 223, column: 7)
!1508 = distinct !DISubprogram(name: "num_processors_ignoring_omp", scope: !391, file: !391, line: 206, type: !137, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !1509)
!1509 = !{!1510, !1511, !1514, !1516, !1517}
!1510 = !DILocalVariable(name: "query", arg: 1, scope: !1508, file: !391, line: 206, type: !5)
!1511 = !DILocalVariable(name: "nprocs", scope: !1512, file: !391, line: 227, type: !78)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !391, line: 226, column: 7)
!1513 = distinct !DILexicalBlock(scope: !1507, file: !391, line: 224, column: 5)
!1514 = !DILocalVariable(name: "nprocs", scope: !1515, file: !391, line: 236, type: !52)
!1515 = distinct !DILexicalBlock(scope: !1513, file: !391, line: 234, column: 7)
!1516 = !DILocalVariable(name: "nprocs", scope: !1505, file: !391, line: 247, type: !52)
!1517 = !DILocalVariable(name: "nprocs_current", scope: !1503, file: !391, line: 257, type: !78)
!1518 = distinct !DILocation(line: 393, column: 28, scope: !1490)
!1519 = !DILocation(line: 129, column: 15, scope: !1492, inlinedAt: !1520)
!1520 = distinct !DILocation(line: 227, column: 32, scope: !1512, inlinedAt: !1518)
!1521 = !DILocation(line: 0, scope: !1482)
!1522 = !DILocation(line: 376, column: 7, scope: !1482)
!1523 = !DILocation(line: 381, column: 44, scope: !1487)
!1524 = !DILocalVariable(name: "threads", arg: 1, scope: !1525, file: !391, line: 337, type: !19)
!1525 = distinct !DISubprogram(name: "parse_omp_threads", scope: !391, file: !391, line: 337, type: !1526, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !1528)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!78, !19}
!1528 = !{!1524, !1529, !1530, !1533}
!1529 = !DILocalVariable(name: "ret", scope: !1525, file: !391, line: 339, type: !78)
!1530 = !DILocalVariable(name: "endptr", scope: !1531, file: !391, line: 352, type: !17)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !391, line: 351, column: 5)
!1532 = distinct !DILexicalBlock(scope: !1525, file: !391, line: 350, column: 7)
!1533 = !DILocalVariable(name: "value", scope: !1531, file: !391, line: 353, type: !78)
!1534 = !DILocation(line: 0, scope: !1525, inlinedAt: !1535)
!1535 = distinct !DILocation(line: 381, column: 25, scope: !1487)
!1536 = !DILocation(line: 341, column: 15, scope: !1537, inlinedAt: !1535)
!1537 = distinct !DILexicalBlock(scope: !1525, file: !391, line: 341, column: 7)
!1538 = !DILocation(line: 341, column: 7, scope: !1525, inlinedAt: !1535)
!1539 = !DILocation(line: 346, column: 10, scope: !1525, inlinedAt: !1535)
!1540 = !{!1344, !1344, i64 0}
!1541 = !DILocation(line: 346, column: 19, scope: !1525, inlinedAt: !1535)
!1542 = !DILocation(line: 346, column: 27, scope: !1525, inlinedAt: !1535)
!1543 = !DILocalVariable(name: "c", arg: 1, scope: !1544, file: !1545, line: 300, type: !21)
!1544 = distinct !DISubprogram(name: "c_isspace", scope: !1545, file: !1545, line: 300, type: !736, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !1546)
!1545 = !DIFile(filename: "./lib/c-ctype.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1546 = !{!1543}
!1547 = !DILocation(line: 0, scope: !1544, inlinedAt: !1548)
!1548 = distinct !DILocation(line: 346, column: 30, scope: !1525, inlinedAt: !1535)
!1549 = !DILocation(line: 302, column: 3, scope: !1544, inlinedAt: !1548)
!1550 = !DILocation(line: 347, column: 12, scope: !1525, inlinedAt: !1535)
!1551 = distinct !{!1551, !1552, !1550}
!1552 = !DILocation(line: 346, column: 3, scope: !1525, inlinedAt: !1535)
!1553 = !DILocalVariable(name: "c", arg: 1, scope: !1554, file: !1545, line: 233, type: !21)
!1554 = distinct !DISubprogram(name: "c_isdigit", scope: !1545, file: !1545, line: 233, type: !736, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !1555)
!1555 = !{!1553}
!1556 = !DILocation(line: 0, scope: !1554, inlinedAt: !1557)
!1557 = distinct !DILocation(line: 350, column: 7, scope: !1532, inlinedAt: !1535)
!1558 = !DILocation(line: 235, column: 3, scope: !1554, inlinedAt: !1557)
!1559 = !DILocation(line: 350, column: 7, scope: !1525, inlinedAt: !1535)
!1560 = !DILocation(line: 352, column: 7, scope: !1531, inlinedAt: !1535)
!1561 = !DILocation(line: 0, scope: !1531, inlinedAt: !1535)
!1562 = !DILocation(line: 352, column: 13, scope: !1531, inlinedAt: !1535)
!1563 = !DILocation(line: 353, column: 33, scope: !1531, inlinedAt: !1535)
!1564 = !DILocation(line: 355, column: 11, scope: !1565, inlinedAt: !1535)
!1565 = distinct !DILexicalBlock(scope: !1531, file: !391, line: 355, column: 11)
!1566 = !DILocation(line: 355, column: 18, scope: !1565, inlinedAt: !1535)
!1567 = !DILocation(line: 355, column: 11, scope: !1531, inlinedAt: !1535)
!1568 = !DILocation(line: 357, column: 18, scope: !1569, inlinedAt: !1535)
!1569 = distinct !DILexicalBlock(scope: !1565, file: !391, line: 356, column: 9)
!1570 = !DILocation(line: 357, column: 26, scope: !1569, inlinedAt: !1535)
!1571 = !DILocation(line: 357, column: 34, scope: !1569, inlinedAt: !1535)
!1572 = !DILocation(line: 0, scope: !1544, inlinedAt: !1573)
!1573 = distinct !DILocation(line: 357, column: 37, scope: !1569, inlinedAt: !1535)
!1574 = !DILocation(line: 302, column: 3, scope: !1544, inlinedAt: !1573)
!1575 = !DILocation(line: 358, column: 19, scope: !1569, inlinedAt: !1535)
!1576 = distinct !{!1576, !1577, !1575}
!1577 = !DILocation(line: 357, column: 11, scope: !1569, inlinedAt: !1535)
!1578 = !DILocation(line: 359, column: 15, scope: !1569, inlinedAt: !1535)
!1579 = !DILocation(line: 366, column: 5, scope: !1532, inlinedAt: !1535)
!1580 = !DILocation(line: 0, scope: !1487)
!1581 = !DILocation(line: 382, column: 42, scope: !1487)
!1582 = !DILocation(line: 0, scope: !1525, inlinedAt: !1583)
!1583 = distinct !DILocation(line: 382, column: 23, scope: !1487)
!1584 = !DILocation(line: 341, column: 15, scope: !1537, inlinedAt: !1583)
!1585 = !DILocation(line: 341, column: 7, scope: !1525, inlinedAt: !1583)
!1586 = !DILocation(line: 346, column: 10, scope: !1525, inlinedAt: !1583)
!1587 = !DILocation(line: 346, column: 19, scope: !1525, inlinedAt: !1583)
!1588 = !DILocation(line: 346, column: 27, scope: !1525, inlinedAt: !1583)
!1589 = !DILocation(line: 0, scope: !1544, inlinedAt: !1590)
!1590 = distinct !DILocation(line: 346, column: 30, scope: !1525, inlinedAt: !1583)
!1591 = !DILocation(line: 302, column: 3, scope: !1544, inlinedAt: !1590)
!1592 = !DILocation(line: 347, column: 12, scope: !1525, inlinedAt: !1583)
!1593 = distinct !{!1593, !1594, !1592}
!1594 = !DILocation(line: 346, column: 3, scope: !1525, inlinedAt: !1583)
!1595 = !DILocation(line: 0, scope: !1554, inlinedAt: !1596)
!1596 = distinct !DILocation(line: 350, column: 7, scope: !1532, inlinedAt: !1583)
!1597 = !DILocation(line: 235, column: 3, scope: !1554, inlinedAt: !1596)
!1598 = !DILocation(line: 350, column: 7, scope: !1525, inlinedAt: !1583)
!1599 = !DILocation(line: 352, column: 7, scope: !1531, inlinedAt: !1583)
!1600 = !DILocation(line: 0, scope: !1531, inlinedAt: !1583)
!1601 = !DILocation(line: 352, column: 13, scope: !1531, inlinedAt: !1583)
!1602 = !DILocation(line: 353, column: 33, scope: !1531, inlinedAt: !1583)
!1603 = !DILocation(line: 355, column: 11, scope: !1565, inlinedAt: !1583)
!1604 = !DILocation(line: 355, column: 18, scope: !1565, inlinedAt: !1583)
!1605 = !DILocation(line: 355, column: 11, scope: !1531, inlinedAt: !1583)
!1606 = !DILocation(line: 357, column: 18, scope: !1569, inlinedAt: !1583)
!1607 = !DILocation(line: 357, column: 26, scope: !1569, inlinedAt: !1583)
!1608 = !DILocation(line: 357, column: 34, scope: !1569, inlinedAt: !1583)
!1609 = !DILocation(line: 0, scope: !1544, inlinedAt: !1610)
!1610 = distinct !DILocation(line: 357, column: 37, scope: !1569, inlinedAt: !1583)
!1611 = !DILocation(line: 302, column: 3, scope: !1544, inlinedAt: !1610)
!1612 = !DILocation(line: 358, column: 19, scope: !1569, inlinedAt: !1583)
!1613 = distinct !{!1613, !1614, !1612}
!1614 = !DILocation(line: 357, column: 11, scope: !1569, inlinedAt: !1583)
!1615 = !DILocation(line: 359, column: 15, scope: !1569, inlinedAt: !1583)
!1616 = !DILocation(line: 366, column: 5, scope: !1532, inlinedAt: !1583)
!1617 = !DILocation(line: 383, column: 13, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1487, file: !391, line: 383, column: 11)
!1619 = !DILocation(line: 383, column: 11, scope: !1487)
!1620 = !DILocation(line: 386, column: 11, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1487, file: !391, line: 386, column: 11)
!1622 = !DILocation(line: 386, column: 11, scope: !1487)
!1623 = !DILocation(line: 129, column: 5, scope: !1492, inlinedAt: !1520)
!1624 = !DILocation(line: 131, column: 9, scope: !1499, inlinedAt: !1520)
!1625 = !DILocation(line: 131, column: 51, scope: !1499, inlinedAt: !1520)
!1626 = !DILocation(line: 131, column: 9, scope: !1492, inlinedAt: !1520)
!1627 = !DILocation(line: 137, column: 17, scope: !1498, inlinedAt: !1520)
!1628 = !DILocation(line: 0, scope: !1498, inlinedAt: !1520)
!1629 = !DILocation(line: 146, column: 19, scope: !1630, inlinedAt: !1520)
!1630 = distinct !DILexicalBlock(scope: !1498, file: !391, line: 146, column: 13)
!1631 = !DILocation(line: 149, column: 3, scope: !1493, inlinedAt: !1520)
!1632 = !DILocation(line: 236, column: 27, scope: !1515, inlinedAt: !1518)
!1633 = !DILocation(line: 0, scope: !1515, inlinedAt: !1518)
!1634 = !DILocation(line: 237, column: 20, scope: !1635, inlinedAt: !1518)
!1635 = distinct !DILexicalBlock(scope: !1515, file: !391, line: 237, column: 13)
!1636 = !DILocation(line: 0, scope: !1512, inlinedAt: !1518)
!1637 = !DILocation(line: 247, column: 27, scope: !1505, inlinedAt: !1518)
!1638 = !DILocation(line: 0, scope: !1505, inlinedAt: !1518)
!1639 = !DILocation(line: 255, column: 25, scope: !1504, inlinedAt: !1518)
!1640 = !DILocation(line: 129, column: 5, scope: !1492, inlinedAt: !1502)
!1641 = !DILocation(line: 131, column: 9, scope: !1499, inlinedAt: !1502)
!1642 = !DILocation(line: 131, column: 51, scope: !1499, inlinedAt: !1502)
!1643 = !DILocation(line: 131, column: 9, scope: !1492, inlinedAt: !1502)
!1644 = !DILocation(line: 137, column: 17, scope: !1498, inlinedAt: !1502)
!1645 = !DILocation(line: 0, scope: !1498, inlinedAt: !1502)
!1646 = !DILocation(line: 146, column: 19, scope: !1630, inlinedAt: !1502)
!1647 = !DILocation(line: 149, column: 3, scope: !1493, inlinedAt: !1502)
!1648 = !DILocation(line: 0, scope: !1503, inlinedAt: !1518)
!1649 = !DILocation(line: 259, column: 60, scope: !1650, inlinedAt: !1518)
!1650 = distinct !DILexicalBlock(scope: !1503, file: !391, line: 259, column: 45)
!1651 = !DILocation(line: 264, column: 20, scope: !1652, inlinedAt: !1518)
!1652 = distinct !DILexicalBlock(scope: !1505, file: !391, line: 264, column: 13)
!1653 = !DILocation(line: 331, column: 3, scope: !1508, inlinedAt: !1518)
!1654 = !DILocation(line: 0, scope: !1508, inlinedAt: !1518)
!1655 = !DILocation(line: 0, scope: !1490)
!1656 = !DILocation(line: 394, column: 12, scope: !1490)
!1657 = !DILocation(line: 396, column: 1, scope: !1482)
!1658 = distinct !DISubprogram(name: "set_program_name", scope: !204, file: !204, line: 39, type: !86, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !1659)
!1659 = !{!1660, !1661, !1662}
!1660 = !DILocalVariable(name: "argv0", arg: 1, scope: !1658, file: !204, line: 39, type: !19)
!1661 = !DILocalVariable(name: "slash", scope: !1658, file: !204, line: 46, type: !19)
!1662 = !DILocalVariable(name: "base", scope: !1658, file: !204, line: 47, type: !19)
!1663 = !DILocation(line: 0, scope: !1658)
!1664 = !DILocation(line: 51, column: 13, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1658, file: !204, line: 51, column: 7)
!1666 = !DILocation(line: 51, column: 7, scope: !1658)
!1667 = !DILocation(line: 55, column: 14, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1665, file: !204, line: 52, column: 5)
!1669 = !DILocation(line: 54, column: 7, scope: !1668)
!1670 = !DILocation(line: 56, column: 7, scope: !1668)
!1671 = !DILocation(line: 59, column: 11, scope: !1658)
!1672 = !DILocation(line: 60, column: 17, scope: !1658)
!1673 = !DILocation(line: 60, column: 11, scope: !1658)
!1674 = !DILocation(line: 61, column: 12, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1658, file: !204, line: 61, column: 7)
!1676 = !DILocation(line: 61, column: 20, scope: !1675)
!1677 = !DILocation(line: 61, column: 25, scope: !1675)
!1678 = !DILocation(line: 61, column: 42, scope: !1675)
!1679 = !DILocation(line: 61, column: 28, scope: !1675)
!1680 = !DILocation(line: 61, column: 61, scope: !1675)
!1681 = !DILocation(line: 61, column: 7, scope: !1658)
!1682 = !DILocation(line: 64, column: 11, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !204, line: 64, column: 11)
!1684 = distinct !DILexicalBlock(scope: !1675, file: !204, line: 62, column: 5)
!1685 = !DILocation(line: 64, column: 36, scope: !1683)
!1686 = !DILocation(line: 64, column: 11, scope: !1684)
!1687 = !DILocation(line: 66, column: 24, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1683, file: !204, line: 65, column: 9)
!1689 = !DILocation(line: 70, column: 41, scope: !1688)
!1690 = !DILocation(line: 72, column: 9, scope: !1688)
!1691 = !DILocation(line: 84, column: 16, scope: !1658)
!1692 = !DILocation(line: 90, column: 27, scope: !1658)
!1693 = !DILocation(line: 92, column: 1, scope: !1658)
!1694 = distinct !DISubprogram(name: "clone_quoting_options", scope: !245, file: !245, line: 122, type: !1695, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !1698)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!1697, !1697}
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!1698 = !{!1699, !1700, !1701}
!1699 = !DILocalVariable(name: "o", arg: 1, scope: !1694, file: !245, line: 122, type: !1697)
!1700 = !DILocalVariable(name: "e", scope: !1694, file: !245, line: 124, type: !21)
!1701 = !DILocalVariable(name: "p", scope: !1694, file: !245, line: 125, type: !1697)
!1702 = !DILocation(line: 0, scope: !1694)
!1703 = !DILocation(line: 124, column: 11, scope: !1694)
!1704 = !DILocation(line: 125, column: 40, scope: !1694)
!1705 = !DILocation(line: 125, column: 31, scope: !1694)
!1706 = !DILocation(line: 127, column: 9, scope: !1694)
!1707 = !DILocation(line: 128, column: 3, scope: !1694)
!1708 = distinct !DISubprogram(name: "get_quoting_style", scope: !245, file: !245, line: 133, type: !1709, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !1711)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!247, !291}
!1711 = !{!1712}
!1712 = !DILocalVariable(name: "o", arg: 1, scope: !1708, file: !245, line: 133, type: !291)
!1713 = !DILocation(line: 0, scope: !1708)
!1714 = !DILocation(line: 135, column: 11, scope: !1708)
!1715 = !DILocation(line: 135, column: 46, scope: !1708)
!1716 = !{!1717, !1344, i64 0}
!1717 = !{!"quoting_options", !1344, i64 0, !1416, i64 4, !1344, i64 8, !1343, i64 40, !1343, i64 48}
!1718 = !DILocation(line: 135, column: 3, scope: !1708)
!1719 = distinct !DISubprogram(name: "set_quoting_style", scope: !245, file: !245, line: 141, type: !1720, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !1722)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{null, !1697, !247}
!1722 = !{!1723, !1724}
!1723 = !DILocalVariable(name: "o", arg: 1, scope: !1719, file: !245, line: 141, type: !1697)
!1724 = !DILocalVariable(name: "s", arg: 2, scope: !1719, file: !245, line: 141, type: !247)
!1725 = !DILocation(line: 0, scope: !1719)
!1726 = !DILocation(line: 143, column: 4, scope: !1719)
!1727 = !DILocation(line: 143, column: 39, scope: !1719)
!1728 = !DILocation(line: 143, column: 45, scope: !1719)
!1729 = !DILocation(line: 144, column: 1, scope: !1719)
!1730 = distinct !DISubprogram(name: "set_char_quoting", scope: !245, file: !245, line: 152, type: !1731, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !1733)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!21, !1697, !18, !21}
!1733 = !{!1734, !1735, !1736, !1737, !1739, !1741, !1742}
!1734 = !DILocalVariable(name: "o", arg: 1, scope: !1730, file: !245, line: 152, type: !1697)
!1735 = !DILocalVariable(name: "c", arg: 2, scope: !1730, file: !245, line: 152, type: !18)
!1736 = !DILocalVariable(name: "i", arg: 3, scope: !1730, file: !245, line: 152, type: !21)
!1737 = !DILocalVariable(name: "uc", scope: !1730, file: !245, line: 154, type: !1738)
!1738 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1739 = !DILocalVariable(name: "p", scope: !1730, file: !245, line: 155, type: !1740)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1741 = !DILocalVariable(name: "shift", scope: !1730, file: !245, line: 157, type: !21)
!1742 = !DILocalVariable(name: "r", scope: !1730, file: !245, line: 158, type: !21)
!1743 = !DILocation(line: 0, scope: !1730)
!1744 = !DILocation(line: 156, column: 6, scope: !1730)
!1745 = !DILocation(line: 156, column: 62, scope: !1730)
!1746 = !DILocation(line: 156, column: 57, scope: !1730)
!1747 = !DILocation(line: 157, column: 15, scope: !1730)
!1748 = !DILocation(line: 158, column: 12, scope: !1730)
!1749 = !DILocation(line: 158, column: 15, scope: !1730)
!1750 = !DILocation(line: 158, column: 25, scope: !1730)
!1751 = !DILocation(line: 159, column: 13, scope: !1730)
!1752 = !DILocation(line: 159, column: 18, scope: !1730)
!1753 = !DILocation(line: 159, column: 23, scope: !1730)
!1754 = !DILocation(line: 159, column: 6, scope: !1730)
!1755 = !DILocation(line: 160, column: 3, scope: !1730)
!1756 = distinct !DISubprogram(name: "set_quoting_flags", scope: !245, file: !245, line: 168, type: !1757, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !1759)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!21, !1697, !21}
!1759 = !{!1760, !1761, !1762}
!1760 = !DILocalVariable(name: "o", arg: 1, scope: !1756, file: !245, line: 168, type: !1697)
!1761 = !DILocalVariable(name: "i", arg: 2, scope: !1756, file: !245, line: 168, type: !21)
!1762 = !DILocalVariable(name: "r", scope: !1756, file: !245, line: 170, type: !21)
!1763 = !DILocation(line: 0, scope: !1756)
!1764 = !DILocation(line: 171, column: 8, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1756, file: !245, line: 171, column: 7)
!1766 = !DILocation(line: 171, column: 7, scope: !1756)
!1767 = !DILocation(line: 173, column: 10, scope: !1756)
!1768 = !{!1717, !1416, i64 4}
!1769 = !DILocation(line: 174, column: 12, scope: !1756)
!1770 = !DILocation(line: 175, column: 3, scope: !1756)
!1771 = distinct !DISubprogram(name: "set_custom_quoting", scope: !245, file: !245, line: 179, type: !1772, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !1774)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{null, !1697, !19, !19}
!1774 = !{!1775, !1776, !1777}
!1775 = !DILocalVariable(name: "o", arg: 1, scope: !1771, file: !245, line: 179, type: !1697)
!1776 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1771, file: !245, line: 180, type: !19)
!1777 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1771, file: !245, line: 180, type: !19)
!1778 = !DILocation(line: 0, scope: !1771)
!1779 = !DILocation(line: 182, column: 8, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1771, file: !245, line: 182, column: 7)
!1781 = !DILocation(line: 182, column: 7, scope: !1771)
!1782 = !DILocation(line: 184, column: 6, scope: !1771)
!1783 = !DILocation(line: 184, column: 12, scope: !1771)
!1784 = !DILocation(line: 185, column: 8, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1771, file: !245, line: 185, column: 7)
!1786 = !DILocation(line: 185, column: 23, scope: !1785)
!1787 = !DILocation(line: 185, column: 19, scope: !1785)
!1788 = !DILocation(line: 186, column: 5, scope: !1785)
!1789 = !DILocation(line: 187, column: 6, scope: !1771)
!1790 = !DILocation(line: 187, column: 17, scope: !1771)
!1791 = !{!1717, !1343, i64 40}
!1792 = !DILocation(line: 188, column: 6, scope: !1771)
!1793 = !DILocation(line: 188, column: 18, scope: !1771)
!1794 = !{!1717, !1343, i64 48}
!1795 = !DILocation(line: 189, column: 1, scope: !1771)
!1796 = distinct !DISubprogram(name: "quotearg_buffer", scope: !245, file: !245, line: 784, type: !1797, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !1799)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!76, !17, !76, !19, !76, !291}
!1799 = !{!1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807}
!1800 = !DILocalVariable(name: "buffer", arg: 1, scope: !1796, file: !245, line: 784, type: !17)
!1801 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1796, file: !245, line: 784, type: !76)
!1802 = !DILocalVariable(name: "arg", arg: 3, scope: !1796, file: !245, line: 785, type: !19)
!1803 = !DILocalVariable(name: "argsize", arg: 4, scope: !1796, file: !245, line: 785, type: !76)
!1804 = !DILocalVariable(name: "o", arg: 5, scope: !1796, file: !245, line: 786, type: !291)
!1805 = !DILocalVariable(name: "p", scope: !1796, file: !245, line: 788, type: !291)
!1806 = !DILocalVariable(name: "e", scope: !1796, file: !245, line: 789, type: !21)
!1807 = !DILocalVariable(name: "r", scope: !1796, file: !245, line: 790, type: !76)
!1808 = !DILocation(line: 0, scope: !1796)
!1809 = !DILocation(line: 788, column: 37, scope: !1796)
!1810 = !DILocation(line: 789, column: 11, scope: !1796)
!1811 = !DILocation(line: 791, column: 43, scope: !1796)
!1812 = !DILocation(line: 791, column: 53, scope: !1796)
!1813 = !DILocation(line: 791, column: 60, scope: !1796)
!1814 = !DILocation(line: 792, column: 43, scope: !1796)
!1815 = !DILocation(line: 792, column: 58, scope: !1796)
!1816 = !DILocation(line: 790, column: 14, scope: !1796)
!1817 = !DILocation(line: 793, column: 9, scope: !1796)
!1818 = !DILocation(line: 794, column: 3, scope: !1796)
!1819 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !245, file: !245, line: 256, type: !1820, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !1824)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!76, !17, !76, !19, !76, !247, !21, !1822, !19, !19}
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1824 = !{!1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1849, !1850, !1851, !1852, !1853, !1856, !1857, !1863, !1866, !1867, !1874, !1877, !1878, !1879, !1880, !1881, !1882}
!1825 = !DILocalVariable(name: "buffer", arg: 1, scope: !1819, file: !245, line: 256, type: !17)
!1826 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1819, file: !245, line: 256, type: !76)
!1827 = !DILocalVariable(name: "arg", arg: 3, scope: !1819, file: !245, line: 257, type: !19)
!1828 = !DILocalVariable(name: "argsize", arg: 4, scope: !1819, file: !245, line: 257, type: !76)
!1829 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1819, file: !245, line: 258, type: !247)
!1830 = !DILocalVariable(name: "flags", arg: 6, scope: !1819, file: !245, line: 258, type: !21)
!1831 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1819, file: !245, line: 259, type: !1822)
!1832 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1819, file: !245, line: 260, type: !19)
!1833 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1819, file: !245, line: 261, type: !19)
!1834 = !DILocalVariable(name: "i", scope: !1819, file: !245, line: 263, type: !76)
!1835 = !DILocalVariable(name: "len", scope: !1819, file: !245, line: 264, type: !76)
!1836 = !DILocalVariable(name: "orig_buffersize", scope: !1819, file: !245, line: 265, type: !76)
!1837 = !DILocalVariable(name: "quote_string", scope: !1819, file: !245, line: 266, type: !19)
!1838 = !DILocalVariable(name: "quote_string_len", scope: !1819, file: !245, line: 267, type: !76)
!1839 = !DILocalVariable(name: "backslash_escapes", scope: !1819, file: !245, line: 268, type: !194)
!1840 = !DILocalVariable(name: "unibyte_locale", scope: !1819, file: !245, line: 269, type: !194)
!1841 = !DILocalVariable(name: "elide_outer_quotes", scope: !1819, file: !245, line: 270, type: !194)
!1842 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1819, file: !245, line: 271, type: !194)
!1843 = !DILocalVariable(name: "encountered_single_quote", scope: !1819, file: !245, line: 272, type: !194)
!1844 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1819, file: !245, line: 273, type: !194)
!1845 = !DILocalVariable(name: "c", scope: !1846, file: !245, line: 402, type: !1738)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !245, line: 401, column: 5)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !245, line: 400, column: 3)
!1848 = distinct !DILexicalBlock(scope: !1819, file: !245, line: 400, column: 3)
!1849 = !DILocalVariable(name: "esc", scope: !1846, file: !245, line: 403, type: !1738)
!1850 = !DILocalVariable(name: "is_right_quote", scope: !1846, file: !245, line: 404, type: !194)
!1851 = !DILocalVariable(name: "escaping", scope: !1846, file: !245, line: 405, type: !194)
!1852 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1846, file: !245, line: 406, type: !194)
!1853 = !DILocalVariable(name: "m", scope: !1854, file: !245, line: 610, type: !76)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !245, line: 608, column: 11)
!1855 = distinct !DILexicalBlock(scope: !1846, file: !245, line: 426, column: 9)
!1856 = !DILocalVariable(name: "printable", scope: !1854, file: !245, line: 612, type: !194)
!1857 = !DILocalVariable(name: "mbstate", scope: !1858, file: !245, line: 621, type: !1860)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !245, line: 620, column: 15)
!1859 = distinct !DILexicalBlock(scope: !1854, file: !245, line: 614, column: 17)
!1860 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1861, line: 6, baseType: !1862)
!1861 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1862 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !315, line: 21, baseType: !314)
!1863 = !DILocalVariable(name: "w", scope: !1864, file: !245, line: 631, type: !1865)
!1864 = distinct !DILexicalBlock(scope: !1858, file: !245, line: 630, column: 19)
!1865 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !77, line: 74, baseType: !21)
!1866 = !DILocalVariable(name: "bytes", scope: !1864, file: !245, line: 632, type: !76)
!1867 = !DILocalVariable(name: "j", scope: !1868, file: !245, line: 657, type: !76)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !245, line: 656, column: 27)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !245, line: 654, column: 29)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !245, line: 649, column: 23)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !245, line: 641, column: 30)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !245, line: 636, column: 30)
!1873 = distinct !DILexicalBlock(scope: !1864, file: !245, line: 634, column: 25)
!1874 = !DILocalVariable(name: "ilim", scope: !1875, file: !245, line: 684, type: !76)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !245, line: 681, column: 15)
!1876 = distinct !DILexicalBlock(scope: !1854, file: !245, line: 680, column: 17)
!1877 = !DILabel(scope: !1819, name: "process_input", file: !245, line: 314)
!1878 = !DILabel(scope: !1855, name: "c_and_shell_escape", file: !245, line: 512)
!1879 = !DILabel(scope: !1855, name: "c_escape", file: !245, line: 517)
!1880 = !DILabel(scope: !1846, name: "store_escape", file: !245, line: 719)
!1881 = !DILabel(scope: !1846, name: "store_c", file: !245, line: 722)
!1882 = !DILabel(scope: !1819, name: "force_outer_quoting_style", file: !245, line: 763)
!1883 = !DILocation(line: 0, scope: !1819)
!1884 = !DILocation(line: 269, column: 25, scope: !1819)
!1885 = !DILocation(line: 269, column: 36, scope: !1819)
!1886 = !DILocation(line: 270, column: 8, scope: !1819)
!1887 = !DILocation(line: 0, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1855, file: !245, line: 526, column: 15)
!1889 = !DILocation(line: 0, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !245, line: 462, column: 19)
!1891 = distinct !DILexicalBlock(scope: !1855, file: !245, line: 455, column: 13)
!1892 = !DILocation(line: 0, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !245, line: 449, column: 20)
!1894 = distinct !DILexicalBlock(scope: !1855, file: !245, line: 428, column: 15)
!1895 = !DILocation(line: 0, scope: !1858)
!1896 = !DILocation(line: 0, scope: !1864)
!1897 = !DILocation(line: 0, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1846, file: !245, line: 712, column: 11)
!1899 = !DILocation(line: 273, column: 3, scope: !1819)
!1900 = !DILocation(line: 265, column: 10, scope: !1819)
!1901 = !DILocation(line: 266, column: 15, scope: !1819)
!1902 = !DILocation(line: 267, column: 10, scope: !1819)
!1903 = !DILocation(line: 268, column: 8, scope: !1819)
!1904 = !DILocation(line: 271, column: 8, scope: !1819)
!1905 = !DILocation(line: 272, column: 8, scope: !1819)
!1906 = !DILocation(line: 273, column: 8, scope: !1819)
!1907 = !DILocation(line: 314, column: 2, scope: !1819)
!1908 = !DILocation(line: 316, column: 3, scope: !1819)
!1909 = !DILocation(line: 323, column: 11, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1819, file: !245, line: 317, column: 5)
!1911 = !DILocation(line: 323, column: 12, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1910, file: !245, line: 323, column: 11)
!1913 = !DILocation(line: 324, column: 9, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !245, line: 324, column: 9)
!1915 = distinct !DILexicalBlock(scope: !1912, file: !245, line: 324, column: 9)
!1916 = !DILocation(line: 324, column: 9, scope: !1915)
!1917 = !DILocation(line: 362, column: 26, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !245, line: 340, column: 11)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !245, line: 339, column: 13)
!1920 = distinct !DILexicalBlock(scope: !1910, file: !245, line: 338, column: 7)
!1921 = !DILocation(line: 363, column: 27, scope: !1918)
!1922 = !DILocation(line: 364, column: 11, scope: !1918)
!1923 = !DILocation(line: 365, column: 14, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1920, file: !245, line: 365, column: 13)
!1925 = !DILocation(line: 365, column: 13, scope: !1920)
!1926 = !DILocation(line: 366, column: 43, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !245, line: 366, column: 11)
!1928 = distinct !DILexicalBlock(scope: !1924, file: !245, line: 366, column: 11)
!1929 = !DILocation(line: 366, column: 11, scope: !1928)
!1930 = !DILocation(line: 367, column: 13, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !245, line: 367, column: 13)
!1932 = distinct !DILexicalBlock(scope: !1927, file: !245, line: 367, column: 13)
!1933 = !DILocation(line: 367, column: 13, scope: !1932)
!1934 = !DILocation(line: 366, column: 70, scope: !1927)
!1935 = distinct !{!1935, !1929, !1936}
!1936 = !DILocation(line: 367, column: 13, scope: !1928)
!1937 = !DILocation(line: 264, column: 10, scope: !1819)
!1938 = !DILocation(line: 370, column: 28, scope: !1920)
!1939 = !DILocation(line: 372, column: 7, scope: !1910)
!1940 = !DILocation(line: 376, column: 7, scope: !1910)
!1941 = !DILocation(line: 379, column: 7, scope: !1910)
!1942 = !DILocation(line: 381, column: 12, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1910, file: !245, line: 381, column: 11)
!1944 = !DILocation(line: 381, column: 11, scope: !1910)
!1945 = !DILocation(line: 386, column: 12, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1910, file: !245, line: 386, column: 11)
!1947 = !DILocation(line: 386, column: 11, scope: !1910)
!1948 = !DILocation(line: 387, column: 9, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !245, line: 387, column: 9)
!1950 = distinct !DILexicalBlock(scope: !1946, file: !245, line: 387, column: 9)
!1951 = !DILocation(line: 387, column: 9, scope: !1950)
!1952 = !DILocation(line: 394, column: 7, scope: !1910)
!1953 = !DILocation(line: 397, column: 7, scope: !1910)
!1954 = !DILocation(line: 0, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1846, file: !245, line: 408, column: 11)
!1956 = !DILocation(line: 0, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !245, line: 419, column: 15)
!1958 = distinct !DILexicalBlock(scope: !1955, file: !245, line: 418, column: 9)
!1959 = !DILocation(line: 0, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1855, file: !245, line: 556, column: 15)
!1961 = !DILocation(line: 0, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1855, file: !245, line: 548, column: 15)
!1963 = !DILocation(line: 0, scope: !1869)
!1964 = !DILocation(line: 0, scope: !1876)
!1965 = !DILocation(line: 0, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1855, file: !245, line: 509, column: 15)
!1967 = !DILocation(line: 400, column: 8, scope: !1848)
!1968 = !DILocation(line: 0, scope: !1848)
!1969 = !DILocation(line: 400, column: 27, scope: !1847)
!1970 = !DILocation(line: 400, column: 19, scope: !1847)
!1971 = !DILocation(line: 400, column: 41, scope: !1847)
!1972 = !DILocation(line: 400, column: 48, scope: !1847)
!1973 = !DILocation(line: 400, column: 3, scope: !1848)
!1974 = !DILocation(line: 400, column: 60, scope: !1847)
!1975 = !DILocation(line: 0, scope: !1846)
!1976 = !DILocation(line: 409, column: 11, scope: !1955)
!1977 = !DILocation(line: 411, column: 17, scope: !1955)
!1978 = !DILocation(line: 412, column: 39, scope: !1955)
!1979 = !DILocation(line: 416, column: 32, scope: !1955)
!1980 = !DILocation(line: 412, column: 19, scope: !1955)
!1981 = !DILocation(line: 412, column: 15, scope: !1955)
!1982 = !DILocation(line: 417, column: 11, scope: !1955)
!1983 = !DILocation(line: 417, column: 26, scope: !1955)
!1984 = !DILocation(line: 417, column: 14, scope: !1955)
!1985 = !DILocation(line: 417, column: 63, scope: !1955)
!1986 = !DILocation(line: 408, column: 11, scope: !1846)
!1987 = !DILocation(line: 424, column: 11, scope: !1846)
!1988 = !DILocation(line: 425, column: 7, scope: !1846)
!1989 = !DILocation(line: 428, column: 15, scope: !1855)
!1990 = !DILocation(line: 430, column: 15, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !245, line: 430, column: 15)
!1992 = distinct !DILexicalBlock(scope: !1894, file: !245, line: 429, column: 13)
!1993 = !DILocation(line: 430, column: 15, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1991, file: !245, line: 430, column: 15)
!1995 = !DILocation(line: 430, column: 15, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !245, line: 430, column: 15)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !245, line: 430, column: 15)
!1998 = distinct !DILexicalBlock(scope: !1994, file: !245, line: 430, column: 15)
!1999 = !DILocation(line: 430, column: 15, scope: !1997)
!2000 = !DILocation(line: 430, column: 15, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !245, line: 430, column: 15)
!2002 = distinct !DILexicalBlock(scope: !1998, file: !245, line: 430, column: 15)
!2003 = !DILocation(line: 430, column: 15, scope: !2002)
!2004 = !DILocation(line: 430, column: 15, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !245, line: 430, column: 15)
!2006 = distinct !DILexicalBlock(scope: !1998, file: !245, line: 430, column: 15)
!2007 = !DILocation(line: 430, column: 15, scope: !2006)
!2008 = !DILocation(line: 430, column: 15, scope: !1998)
!2009 = !DILocation(line: 430, column: 15, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !245, line: 430, column: 15)
!2011 = distinct !DILexicalBlock(scope: !1991, file: !245, line: 430, column: 15)
!2012 = !DILocation(line: 430, column: 15, scope: !2011)
!2013 = !DILocation(line: 438, column: 19, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1992, file: !245, line: 437, column: 19)
!2015 = !DILocation(line: 438, column: 24, scope: !2014)
!2016 = !DILocation(line: 438, column: 28, scope: !2014)
!2017 = !DILocation(line: 438, column: 38, scope: !2014)
!2018 = !DILocation(line: 438, column: 48, scope: !2014)
!2019 = !DILocation(line: 438, column: 59, scope: !2014)
!2020 = !DILocation(line: 440, column: 19, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !245, line: 440, column: 19)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !245, line: 440, column: 19)
!2023 = distinct !DILexicalBlock(scope: !2014, file: !245, line: 439, column: 17)
!2024 = !DILocation(line: 440, column: 19, scope: !2022)
!2025 = !DILocation(line: 441, column: 19, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !245, line: 441, column: 19)
!2027 = distinct !DILexicalBlock(scope: !2023, file: !245, line: 441, column: 19)
!2028 = !DILocation(line: 441, column: 19, scope: !2027)
!2029 = !DILocation(line: 442, column: 17, scope: !2023)
!2030 = !DILocation(line: 449, column: 20, scope: !1894)
!2031 = !DILocation(line: 454, column: 11, scope: !1855)
!2032 = !DILocation(line: 457, column: 19, scope: !1891)
!2033 = !DILocation(line: 463, column: 19, scope: !1890)
!2034 = !DILocation(line: 463, column: 24, scope: !1890)
!2035 = !DILocation(line: 463, column: 28, scope: !1890)
!2036 = !DILocation(line: 463, column: 38, scope: !1890)
!2037 = !DILocation(line: 463, column: 47, scope: !1890)
!2038 = !DILocation(line: 463, column: 41, scope: !1890)
!2039 = !DILocation(line: 463, column: 52, scope: !1890)
!2040 = !DILocation(line: 462, column: 19, scope: !1891)
!2041 = !DILocation(line: 464, column: 25, scope: !1890)
!2042 = !DILocation(line: 464, column: 17, scope: !1890)
!2043 = !DILocation(line: 471, column: 25, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !1890, file: !245, line: 465, column: 19)
!2045 = !DILocation(line: 475, column: 21, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !245, line: 475, column: 21)
!2047 = distinct !DILexicalBlock(scope: !2044, file: !245, line: 475, column: 21)
!2048 = !DILocation(line: 475, column: 21, scope: !2047)
!2049 = !DILocation(line: 476, column: 21, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !245, line: 476, column: 21)
!2051 = distinct !DILexicalBlock(scope: !2044, file: !245, line: 476, column: 21)
!2052 = !DILocation(line: 476, column: 21, scope: !2051)
!2053 = !DILocation(line: 477, column: 21, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !245, line: 477, column: 21)
!2055 = distinct !DILexicalBlock(scope: !2044, file: !245, line: 477, column: 21)
!2056 = !DILocation(line: 477, column: 21, scope: !2055)
!2057 = !DILocation(line: 478, column: 21, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !245, line: 478, column: 21)
!2059 = distinct !DILexicalBlock(scope: !2044, file: !245, line: 478, column: 21)
!2060 = !DILocation(line: 478, column: 21, scope: !2059)
!2061 = !DILocation(line: 479, column: 21, scope: !2044)
!2062 = !DILocation(line: 492, column: 31, scope: !1855)
!2063 = !DILocation(line: 493, column: 31, scope: !1855)
!2064 = !DILocation(line: 495, column: 31, scope: !1855)
!2065 = !DILocation(line: 496, column: 31, scope: !1855)
!2066 = !DILocation(line: 497, column: 31, scope: !1855)
!2067 = !DILocation(line: 500, column: 15, scope: !1855)
!2068 = !DILocation(line: 502, column: 19, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !245, line: 501, column: 13)
!2070 = distinct !DILexicalBlock(scope: !1855, file: !245, line: 500, column: 15)
!2071 = !DILocation(line: 509, column: 33, scope: !1966)
!2072 = !DILocation(line: 0, scope: !1855)
!2073 = !DILocation(line: 512, column: 9, scope: !1855)
!2074 = !DILocation(line: 514, column: 15, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !1855, file: !245, line: 513, column: 15)
!2076 = !DILocation(line: 517, column: 9, scope: !1855)
!2077 = !DILocation(line: 518, column: 15, scope: !1855)
!2078 = !DILocation(line: 526, column: 15, scope: !1855)
!2079 = !DILocation(line: 526, column: 40, scope: !1888)
!2080 = !DILocation(line: 526, column: 47, scope: !1888)
!2081 = !DILocation(line: 526, column: 18, scope: !1888)
!2082 = !DILocation(line: 530, column: 17, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !1855, file: !245, line: 530, column: 15)
!2084 = !DILocation(line: 530, column: 15, scope: !1855)
!2085 = !DILocation(line: 535, column: 11, scope: !1855)
!2086 = !DILocation(line: 549, column: 15, scope: !1962)
!2087 = !DILocation(line: 556, column: 15, scope: !1855)
!2088 = !DILocation(line: 558, column: 19, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !1960, file: !245, line: 557, column: 13)
!2090 = !DILocation(line: 561, column: 19, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2089, file: !245, line: 561, column: 19)
!2092 = !DILocation(line: 561, column: 35, scope: !2091)
!2093 = !DILocation(line: 561, column: 30, scope: !2091)
!2094 = !DILocation(line: 570, column: 15, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !245, line: 570, column: 15)
!2096 = distinct !DILexicalBlock(scope: !2089, file: !245, line: 570, column: 15)
!2097 = !DILocation(line: 570, column: 15, scope: !2096)
!2098 = !DILocation(line: 571, column: 15, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !245, line: 571, column: 15)
!2100 = distinct !DILexicalBlock(scope: !2089, file: !245, line: 571, column: 15)
!2101 = !DILocation(line: 571, column: 15, scope: !2100)
!2102 = !DILocation(line: 572, column: 15, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !245, line: 572, column: 15)
!2104 = distinct !DILexicalBlock(scope: !2089, file: !245, line: 572, column: 15)
!2105 = !DILocation(line: 572, column: 15, scope: !2104)
!2106 = !DILocation(line: 574, column: 13, scope: !2089)
!2107 = !DILocation(line: 614, column: 17, scope: !1854)
!2108 = !DILocation(line: 0, scope: !1854)
!2109 = !DILocation(line: 617, column: 29, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !1859, file: !245, line: 615, column: 15)
!2111 = !{!2112, !2112, i64 0}
!2112 = !{!"short", !1344, i64 0}
!2113 = !DILocation(line: 617, column: 27, scope: !2110)
!2114 = !DILocation(line: 618, column: 15, scope: !2110)
!2115 = !DILocation(line: 621, column: 17, scope: !1858)
!2116 = !DILocation(line: 621, column: 27, scope: !1858)
!2117 = !DILocalVariable(name: "__dest", arg: 1, scope: !2118, file: !2119, line: 59, type: !74)
!2118 = distinct !DISubprogram(name: "memset", scope: !2119, file: !2119, line: 59, type: !2120, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2122)
!2119 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!74, !74, !21, !76}
!2122 = !{!2117, !2123, !2124}
!2123 = !DILocalVariable(name: "__ch", arg: 2, scope: !2118, file: !2119, line: 59, type: !21)
!2124 = !DILocalVariable(name: "__len", arg: 3, scope: !2118, file: !2119, line: 59, type: !76)
!2125 = !DILocation(line: 0, scope: !2118, inlinedAt: !2126)
!2126 = distinct !DILocation(line: 622, column: 17, scope: !1858)
!2127 = !DILocation(line: 71, column: 10, scope: !2118, inlinedAt: !2126)
!2128 = !DILocation(line: 626, column: 29, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !1858, file: !245, line: 626, column: 21)
!2130 = !DILocation(line: 626, column: 21, scope: !1858)
!2131 = !DILocation(line: 627, column: 29, scope: !2129)
!2132 = !DILocation(line: 627, column: 19, scope: !2129)
!2133 = !DILocation(line: 629, column: 17, scope: !1858)
!2134 = !DILocation(line: 624, column: 19, scope: !1858)
!2135 = !DILocation(line: 625, column: 27, scope: !1858)
!2136 = !DILocation(line: 631, column: 21, scope: !1864)
!2137 = !DILocation(line: 632, column: 56, scope: !1864)
!2138 = !DILocation(line: 632, column: 50, scope: !1864)
!2139 = !DILocation(line: 633, column: 53, scope: !1864)
!2140 = !DILocation(line: 632, column: 36, scope: !1864)
!2141 = !DILocation(line: 634, column: 25, scope: !1864)
!2142 = !DILocation(line: 644, column: 38, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !1871, file: !245, line: 642, column: 23)
!2144 = !DILocation(line: 644, column: 48, scope: !2143)
!2145 = !DILocation(line: 644, column: 25, scope: !2143)
!2146 = !DILocation(line: 644, column: 51, scope: !2143)
!2147 = !DILocation(line: 645, column: 28, scope: !2143)
!2148 = !DILocation(line: 644, column: 34, scope: !2143)
!2149 = distinct !{!2149, !2145, !2147}
!2150 = !DILocation(line: 658, column: 43, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !245, line: 658, column: 29)
!2152 = distinct !DILexicalBlock(scope: !1868, file: !245, line: 658, column: 29)
!2153 = !DILocation(line: 655, column: 29, scope: !1869)
!2154 = !DILocation(line: 0, scope: !1868)
!2155 = !DILocation(line: 659, column: 49, scope: !2151)
!2156 = !DILocation(line: 659, column: 39, scope: !2151)
!2157 = !DILocation(line: 659, column: 31, scope: !2151)
!2158 = !DILocation(line: 658, column: 53, scope: !2151)
!2159 = !DILocation(line: 658, column: 29, scope: !2152)
!2160 = distinct !{!2160, !2159, !2161}
!2161 = !DILocation(line: 667, column: 33, scope: !2152)
!2162 = !DILocation(line: 674, column: 19, scope: !1858)
!2163 = !DILocation(line: 670, column: 41, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !1870, file: !245, line: 670, column: 29)
!2165 = !DILocation(line: 670, column: 31, scope: !2164)
!2166 = !DILocation(line: 670, column: 29, scope: !1870)
!2167 = !DILocation(line: 672, column: 27, scope: !1870)
!2168 = !DILocation(line: 675, column: 26, scope: !1858)
!2169 = !DILocation(line: 675, column: 24, scope: !1858)
!2170 = !DILocation(line: 674, column: 19, scope: !1864)
!2171 = distinct !{!2171, !2133, !2172}
!2172 = !DILocation(line: 675, column: 44, scope: !1858)
!2173 = !DILocation(line: 676, column: 15, scope: !1859)
!2174 = !DILocation(line: 0, scope: !1859)
!2175 = !DILocation(line: 678, column: 40, scope: !1854)
!2176 = !DILocation(line: 680, column: 19, scope: !1876)
!2177 = !DILocation(line: 680, column: 45, scope: !1876)
!2178 = !DILocation(line: 680, column: 23, scope: !1876)
!2179 = !DILocation(line: 684, column: 33, scope: !1875)
!2180 = !DILocation(line: 0, scope: !1875)
!2181 = !DILocation(line: 686, column: 17, scope: !1875)
!2182 = !DILocation(line: 405, column: 12, scope: !1846)
!2183 = !DILocation(line: 688, column: 43, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !245, line: 688, column: 25)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !245, line: 687, column: 19)
!2186 = distinct !DILexicalBlock(scope: !2187, file: !245, line: 686, column: 17)
!2187 = distinct !DILexicalBlock(scope: !1875, file: !245, line: 686, column: 17)
!2188 = !DILocation(line: 690, column: 25, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !245, line: 690, column: 25)
!2190 = distinct !DILexicalBlock(scope: !2184, file: !245, line: 689, column: 23)
!2191 = !DILocation(line: 690, column: 25, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2189, file: !245, line: 690, column: 25)
!2193 = !DILocation(line: 690, column: 25, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !245, line: 690, column: 25)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !245, line: 690, column: 25)
!2196 = distinct !DILexicalBlock(scope: !2192, file: !245, line: 690, column: 25)
!2197 = !DILocation(line: 690, column: 25, scope: !2195)
!2198 = !DILocation(line: 690, column: 25, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !245, line: 690, column: 25)
!2200 = distinct !DILexicalBlock(scope: !2196, file: !245, line: 690, column: 25)
!2201 = !DILocation(line: 690, column: 25, scope: !2200)
!2202 = !DILocation(line: 690, column: 25, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !245, line: 690, column: 25)
!2204 = distinct !DILexicalBlock(scope: !2196, file: !245, line: 690, column: 25)
!2205 = !DILocation(line: 690, column: 25, scope: !2204)
!2206 = !DILocation(line: 690, column: 25, scope: !2196)
!2207 = !DILocation(line: 690, column: 25, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !245, line: 690, column: 25)
!2209 = distinct !DILexicalBlock(scope: !2189, file: !245, line: 690, column: 25)
!2210 = !DILocation(line: 690, column: 25, scope: !2209)
!2211 = !DILocation(line: 691, column: 25, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !245, line: 691, column: 25)
!2213 = distinct !DILexicalBlock(scope: !2190, file: !245, line: 691, column: 25)
!2214 = !DILocation(line: 691, column: 25, scope: !2213)
!2215 = !DILocation(line: 692, column: 25, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !245, line: 692, column: 25)
!2217 = distinct !DILexicalBlock(scope: !2190, file: !245, line: 692, column: 25)
!2218 = !DILocation(line: 692, column: 25, scope: !2217)
!2219 = !DILocation(line: 693, column: 38, scope: !2190)
!2220 = !DILocation(line: 693, column: 33, scope: !2190)
!2221 = !DILocation(line: 694, column: 23, scope: !2190)
!2222 = !DILocation(line: 695, column: 30, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2184, file: !245, line: 695, column: 30)
!2224 = !DILocation(line: 695, column: 30, scope: !2184)
!2225 = !DILocation(line: 697, column: 25, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !245, line: 697, column: 25)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !245, line: 697, column: 25)
!2228 = distinct !DILexicalBlock(scope: !2223, file: !245, line: 696, column: 23)
!2229 = !DILocation(line: 697, column: 25, scope: !2227)
!2230 = !DILocation(line: 699, column: 23, scope: !2228)
!2231 = !DILocation(line: 700, column: 35, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2185, file: !245, line: 700, column: 25)
!2233 = !DILocation(line: 700, column: 30, scope: !2232)
!2234 = !DILocation(line: 700, column: 25, scope: !2185)
!2235 = !DILocation(line: 702, column: 21, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !245, line: 702, column: 21)
!2237 = distinct !DILexicalBlock(scope: !2185, file: !245, line: 702, column: 21)
!2238 = !DILocation(line: 702, column: 21, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !245, line: 702, column: 21)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !245, line: 702, column: 21)
!2241 = distinct !DILexicalBlock(scope: !2236, file: !245, line: 702, column: 21)
!2242 = !DILocation(line: 702, column: 21, scope: !2240)
!2243 = !DILocation(line: 702, column: 21, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !245, line: 702, column: 21)
!2245 = distinct !DILexicalBlock(scope: !2241, file: !245, line: 702, column: 21)
!2246 = !DILocation(line: 702, column: 21, scope: !2245)
!2247 = !DILocation(line: 702, column: 21, scope: !2241)
!2248 = !DILocation(line: 0, scope: !2185)
!2249 = !DILocation(line: 703, column: 21, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !245, line: 703, column: 21)
!2251 = distinct !DILexicalBlock(scope: !2185, file: !245, line: 703, column: 21)
!2252 = !DILocation(line: 703, column: 21, scope: !2251)
!2253 = !DILocation(line: 704, column: 25, scope: !2185)
!2254 = !DILocation(line: 686, column: 17, scope: !2186)
!2255 = distinct !{!2255, !2256, !2257}
!2256 = !DILocation(line: 686, column: 17, scope: !2187)
!2257 = !DILocation(line: 705, column: 19, scope: !2187)
!2258 = !DILocation(line: 416, column: 30, scope: !1955)
!2259 = !DILocation(line: 712, column: 34, scope: !1898)
!2260 = !DILocation(line: 715, column: 35, scope: !1898)
!2261 = !DILocation(line: 715, column: 17, scope: !1898)
!2262 = !DILocation(line: 715, column: 47, scope: !1898)
!2263 = !DILocation(line: 715, column: 65, scope: !1898)
!2264 = !DILocation(line: 716, column: 15, scope: !1898)
!2265 = !DILocation(line: 716, column: 11, scope: !1898)
!2266 = !DILocation(line: 712, column: 11, scope: !1846)
!2267 = !DILocation(line: 400, column: 10, scope: !1848)
!2268 = !DILocation(line: 719, column: 5, scope: !1846)
!2269 = !DILocation(line: 720, column: 7, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !1846, file: !245, line: 720, column: 7)
!2271 = !DILocation(line: 720, column: 7, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2270, file: !245, line: 720, column: 7)
!2273 = !DILocation(line: 720, column: 7, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !245, line: 720, column: 7)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !245, line: 720, column: 7)
!2276 = distinct !DILexicalBlock(scope: !2272, file: !245, line: 720, column: 7)
!2277 = !DILocation(line: 720, column: 7, scope: !2275)
!2278 = !DILocation(line: 720, column: 7, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !245, line: 720, column: 7)
!2280 = distinct !DILexicalBlock(scope: !2276, file: !245, line: 720, column: 7)
!2281 = !DILocation(line: 720, column: 7, scope: !2280)
!2282 = !DILocation(line: 720, column: 7, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !245, line: 720, column: 7)
!2284 = distinct !DILexicalBlock(scope: !2276, file: !245, line: 720, column: 7)
!2285 = !DILocation(line: 720, column: 7, scope: !2284)
!2286 = !DILocation(line: 720, column: 7, scope: !2276)
!2287 = !DILocation(line: 720, column: 7, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !245, line: 720, column: 7)
!2289 = distinct !DILexicalBlock(scope: !2270, file: !245, line: 720, column: 7)
!2290 = !DILocation(line: 720, column: 7, scope: !2289)
!2291 = !DILocation(line: 722, column: 5, scope: !1846)
!2292 = !DILocation(line: 723, column: 7, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !245, line: 723, column: 7)
!2294 = distinct !DILexicalBlock(scope: !1846, file: !245, line: 723, column: 7)
!2295 = !DILocation(line: 424, column: 9, scope: !1846)
!2296 = !DILocation(line: 723, column: 7, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2298, file: !245, line: 723, column: 7)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !245, line: 723, column: 7)
!2299 = distinct !DILexicalBlock(scope: !2293, file: !245, line: 723, column: 7)
!2300 = !DILocation(line: 723, column: 7, scope: !2298)
!2301 = !DILocation(line: 723, column: 7, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !245, line: 723, column: 7)
!2303 = distinct !DILexicalBlock(scope: !2299, file: !245, line: 723, column: 7)
!2304 = !DILocation(line: 723, column: 7, scope: !2303)
!2305 = !DILocation(line: 723, column: 7, scope: !2299)
!2306 = !DILocation(line: 724, column: 7, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2308, file: !245, line: 724, column: 7)
!2308 = distinct !DILexicalBlock(scope: !1846, file: !245, line: 724, column: 7)
!2309 = !DILocation(line: 724, column: 7, scope: !2308)
!2310 = !DILocation(line: 726, column: 13, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !1846, file: !245, line: 726, column: 11)
!2312 = !DILocation(line: 726, column: 11, scope: !1846)
!2313 = !DILocation(line: 728, column: 5, scope: !1847)
!2314 = !DILocation(line: 400, column: 75, scope: !1847)
!2315 = !DILocation(line: 400, column: 3, scope: !1847)
!2316 = distinct !{!2316, !1973, !2317}
!2317 = !DILocation(line: 728, column: 5, scope: !1848)
!2318 = !DILocation(line: 730, column: 11, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !1819, file: !245, line: 730, column: 7)
!2320 = !DILocation(line: 730, column: 16, scope: !2319)
!2321 = !DILocation(line: 738, column: 51, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !1819, file: !245, line: 738, column: 7)
!2323 = !DILocation(line: 739, column: 10, scope: !2322)
!2324 = !DILocation(line: 741, column: 11, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !245, line: 741, column: 11)
!2326 = distinct !DILexicalBlock(scope: !2322, file: !245, line: 740, column: 5)
!2327 = !DILocation(line: 741, column: 11, scope: !2326)
!2328 = !DILocation(line: 742, column: 16, scope: !2325)
!2329 = !DILocation(line: 742, column: 9, scope: !2325)
!2330 = !DILocation(line: 746, column: 18, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2325, file: !245, line: 746, column: 16)
!2332 = !DILocation(line: 746, column: 32, scope: !2331)
!2333 = !DILocation(line: 746, column: 29, scope: !2331)
!2334 = !DILocation(line: 755, column: 7, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !1819, file: !245, line: 755, column: 7)
!2336 = !DILocation(line: 755, column: 20, scope: !2335)
!2337 = !DILocation(line: 756, column: 12, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !245, line: 756, column: 5)
!2339 = distinct !DILexicalBlock(scope: !2335, file: !245, line: 756, column: 5)
!2340 = !DILocation(line: 756, column: 5, scope: !2339)
!2341 = !DILocation(line: 757, column: 7, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !245, line: 757, column: 7)
!2343 = distinct !DILexicalBlock(scope: !2338, file: !245, line: 757, column: 7)
!2344 = !DILocation(line: 757, column: 7, scope: !2343)
!2345 = !DILocation(line: 756, column: 39, scope: !2338)
!2346 = distinct !{!2346, !2340, !2347}
!2347 = !DILocation(line: 757, column: 7, scope: !2339)
!2348 = !DILocation(line: 759, column: 11, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !1819, file: !245, line: 759, column: 7)
!2350 = !DILocation(line: 759, column: 7, scope: !1819)
!2351 = !DILocation(line: 760, column: 5, scope: !2349)
!2352 = !DILocation(line: 760, column: 17, scope: !2349)
!2353 = !DILocation(line: 763, column: 2, scope: !1819)
!2354 = !DILocation(line: 766, column: 51, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !1819, file: !245, line: 766, column: 7)
!2356 = !DILocation(line: 766, column: 21, scope: !2355)
!2357 = !DILocation(line: 770, column: 42, scope: !1819)
!2358 = !DILocation(line: 768, column: 10, scope: !1819)
!2359 = !DILocation(line: 768, column: 3, scope: !1819)
!2360 = !DILocation(line: 772, column: 1, scope: !1819)
!2361 = distinct !DISubprogram(name: "gettext_quote", scope: !245, file: !245, line: 207, type: !2362, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2364)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!19, !19, !247}
!2364 = !{!2365, !2366, !2367, !2368}
!2365 = !DILocalVariable(name: "msgid", arg: 1, scope: !2361, file: !245, line: 207, type: !19)
!2366 = !DILocalVariable(name: "s", arg: 2, scope: !2361, file: !245, line: 207, type: !247)
!2367 = !DILocalVariable(name: "translation", scope: !2361, file: !245, line: 209, type: !19)
!2368 = !DILocalVariable(name: "locale_code", scope: !2361, file: !245, line: 210, type: !19)
!2369 = !DILocation(line: 0, scope: !2361)
!2370 = !DILocation(line: 209, column: 29, scope: !2361)
!2371 = !DILocation(line: 212, column: 19, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2361, file: !245, line: 212, column: 7)
!2373 = !DILocation(line: 212, column: 7, scope: !2361)
!2374 = !DILocation(line: 233, column: 17, scope: !2361)
!2375 = !DILocalVariable(name: "s1", arg: 1, scope: !2376, file: !2377, line: 160, type: !19)
!2376 = distinct !DISubprogram(name: "strcaseeq0", scope: !2377, file: !2377, line: 160, type: !2378, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2380)
!2377 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!21, !19, !19, !18, !18, !18, !18, !18, !18, !18, !18, !18}
!2380 = !{!2375, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390}
!2381 = !DILocalVariable(name: "s2", arg: 2, scope: !2376, file: !2377, line: 160, type: !19)
!2382 = !DILocalVariable(name: "s20", arg: 3, scope: !2376, file: !2377, line: 160, type: !18)
!2383 = !DILocalVariable(name: "s21", arg: 4, scope: !2376, file: !2377, line: 160, type: !18)
!2384 = !DILocalVariable(name: "s22", arg: 5, scope: !2376, file: !2377, line: 160, type: !18)
!2385 = !DILocalVariable(name: "s23", arg: 6, scope: !2376, file: !2377, line: 160, type: !18)
!2386 = !DILocalVariable(name: "s24", arg: 7, scope: !2376, file: !2377, line: 160, type: !18)
!2387 = !DILocalVariable(name: "s25", arg: 8, scope: !2376, file: !2377, line: 160, type: !18)
!2388 = !DILocalVariable(name: "s26", arg: 9, scope: !2376, file: !2377, line: 160, type: !18)
!2389 = !DILocalVariable(name: "s27", arg: 10, scope: !2376, file: !2377, line: 160, type: !18)
!2390 = !DILocalVariable(name: "s28", arg: 11, scope: !2376, file: !2377, line: 160, type: !18)
!2391 = !DILocation(line: 0, scope: !2376, inlinedAt: !2392)
!2392 = distinct !DILocation(line: 234, column: 7, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2361, file: !245, line: 234, column: 7)
!2394 = !DILocation(line: 162, column: 7, scope: !2395, inlinedAt: !2392)
!2395 = distinct !DILexicalBlock(scope: !2376, file: !2377, line: 162, column: 7)
!2396 = !DILocalVariable(name: "s1", arg: 1, scope: !2397, file: !2377, line: 146, type: !19)
!2397 = distinct !DISubprogram(name: "strcaseeq1", scope: !2377, file: !2377, line: 146, type: !2398, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2400)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!21, !19, !19, !18, !18, !18, !18, !18, !18, !18, !18}
!2400 = !{!2396, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409}
!2401 = !DILocalVariable(name: "s2", arg: 2, scope: !2397, file: !2377, line: 146, type: !19)
!2402 = !DILocalVariable(name: "s21", arg: 3, scope: !2397, file: !2377, line: 146, type: !18)
!2403 = !DILocalVariable(name: "s22", arg: 4, scope: !2397, file: !2377, line: 146, type: !18)
!2404 = !DILocalVariable(name: "s23", arg: 5, scope: !2397, file: !2377, line: 146, type: !18)
!2405 = !DILocalVariable(name: "s24", arg: 6, scope: !2397, file: !2377, line: 146, type: !18)
!2406 = !DILocalVariable(name: "s25", arg: 7, scope: !2397, file: !2377, line: 146, type: !18)
!2407 = !DILocalVariable(name: "s26", arg: 8, scope: !2397, file: !2377, line: 146, type: !18)
!2408 = !DILocalVariable(name: "s27", arg: 9, scope: !2397, file: !2377, line: 146, type: !18)
!2409 = !DILocalVariable(name: "s28", arg: 10, scope: !2397, file: !2377, line: 146, type: !18)
!2410 = !DILocation(line: 0, scope: !2397, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 167, column: 16, scope: !2412, inlinedAt: !2392)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !2377, line: 164, column: 11)
!2413 = distinct !DILexicalBlock(scope: !2395, file: !2377, line: 163, column: 5)
!2414 = !DILocation(line: 148, column: 7, scope: !2415, inlinedAt: !2411)
!2415 = distinct !DILexicalBlock(scope: !2397, file: !2377, line: 148, column: 7)
!2416 = !DILocalVariable(name: "s1", arg: 1, scope: !2417, file: !2377, line: 132, type: !19)
!2417 = distinct !DISubprogram(name: "strcaseeq2", scope: !2377, file: !2377, line: 132, type: !2418, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2420)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!21, !19, !19, !18, !18, !18, !18, !18, !18, !18}
!2420 = !{!2416, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428}
!2421 = !DILocalVariable(name: "s2", arg: 2, scope: !2417, file: !2377, line: 132, type: !19)
!2422 = !DILocalVariable(name: "s22", arg: 3, scope: !2417, file: !2377, line: 132, type: !18)
!2423 = !DILocalVariable(name: "s23", arg: 4, scope: !2417, file: !2377, line: 132, type: !18)
!2424 = !DILocalVariable(name: "s24", arg: 5, scope: !2417, file: !2377, line: 132, type: !18)
!2425 = !DILocalVariable(name: "s25", arg: 6, scope: !2417, file: !2377, line: 132, type: !18)
!2426 = !DILocalVariable(name: "s26", arg: 7, scope: !2417, file: !2377, line: 132, type: !18)
!2427 = !DILocalVariable(name: "s27", arg: 8, scope: !2417, file: !2377, line: 132, type: !18)
!2428 = !DILocalVariable(name: "s28", arg: 9, scope: !2417, file: !2377, line: 132, type: !18)
!2429 = !DILocation(line: 0, scope: !2417, inlinedAt: !2430)
!2430 = distinct !DILocation(line: 153, column: 16, scope: !2431, inlinedAt: !2411)
!2431 = distinct !DILexicalBlock(scope: !2432, file: !2377, line: 150, column: 11)
!2432 = distinct !DILexicalBlock(scope: !2415, file: !2377, line: 149, column: 5)
!2433 = !DILocation(line: 134, column: 7, scope: !2434, inlinedAt: !2430)
!2434 = distinct !DILexicalBlock(scope: !2417, file: !2377, line: 134, column: 7)
!2435 = !DILocalVariable(name: "s1", arg: 1, scope: !2436, file: !2377, line: 118, type: !19)
!2436 = distinct !DISubprogram(name: "strcaseeq3", scope: !2377, file: !2377, line: 118, type: !2437, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2439)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!21, !19, !19, !18, !18, !18, !18, !18, !18}
!2439 = !{!2435, !2440, !2441, !2442, !2443, !2444, !2445, !2446}
!2440 = !DILocalVariable(name: "s2", arg: 2, scope: !2436, file: !2377, line: 118, type: !19)
!2441 = !DILocalVariable(name: "s23", arg: 3, scope: !2436, file: !2377, line: 118, type: !18)
!2442 = !DILocalVariable(name: "s24", arg: 4, scope: !2436, file: !2377, line: 118, type: !18)
!2443 = !DILocalVariable(name: "s25", arg: 5, scope: !2436, file: !2377, line: 118, type: !18)
!2444 = !DILocalVariable(name: "s26", arg: 6, scope: !2436, file: !2377, line: 118, type: !18)
!2445 = !DILocalVariable(name: "s27", arg: 7, scope: !2436, file: !2377, line: 118, type: !18)
!2446 = !DILocalVariable(name: "s28", arg: 8, scope: !2436, file: !2377, line: 118, type: !18)
!2447 = !DILocation(line: 0, scope: !2436, inlinedAt: !2448)
!2448 = distinct !DILocation(line: 139, column: 16, scope: !2449, inlinedAt: !2430)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !2377, line: 136, column: 11)
!2450 = distinct !DILexicalBlock(scope: !2434, file: !2377, line: 135, column: 5)
!2451 = !DILocation(line: 120, column: 7, scope: !2452, inlinedAt: !2448)
!2452 = distinct !DILexicalBlock(scope: !2436, file: !2377, line: 120, column: 7)
!2453 = !DILocation(line: 120, column: 7, scope: !2436, inlinedAt: !2448)
!2454 = !DILocalVariable(name: "s1", arg: 1, scope: !2455, file: !2377, line: 104, type: !19)
!2455 = distinct !DISubprogram(name: "strcaseeq4", scope: !2377, file: !2377, line: 104, type: !2456, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2458)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!21, !19, !19, !18, !18, !18, !18, !18}
!2458 = !{!2454, !2459, !2460, !2461, !2462, !2463, !2464}
!2459 = !DILocalVariable(name: "s2", arg: 2, scope: !2455, file: !2377, line: 104, type: !19)
!2460 = !DILocalVariable(name: "s24", arg: 3, scope: !2455, file: !2377, line: 104, type: !18)
!2461 = !DILocalVariable(name: "s25", arg: 4, scope: !2455, file: !2377, line: 104, type: !18)
!2462 = !DILocalVariable(name: "s26", arg: 5, scope: !2455, file: !2377, line: 104, type: !18)
!2463 = !DILocalVariable(name: "s27", arg: 6, scope: !2455, file: !2377, line: 104, type: !18)
!2464 = !DILocalVariable(name: "s28", arg: 7, scope: !2455, file: !2377, line: 104, type: !18)
!2465 = !DILocation(line: 0, scope: !2455, inlinedAt: !2466)
!2466 = distinct !DILocation(line: 125, column: 16, scope: !2467, inlinedAt: !2448)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !2377, line: 122, column: 11)
!2468 = distinct !DILexicalBlock(scope: !2452, file: !2377, line: 121, column: 5)
!2469 = !DILocation(line: 106, column: 7, scope: !2470, inlinedAt: !2466)
!2470 = distinct !DILexicalBlock(scope: !2455, file: !2377, line: 106, column: 7)
!2471 = !DILocation(line: 106, column: 7, scope: !2455, inlinedAt: !2466)
!2472 = !DILocalVariable(name: "s1", arg: 1, scope: !2473, file: !2377, line: 90, type: !19)
!2473 = distinct !DISubprogram(name: "strcaseeq5", scope: !2377, file: !2377, line: 90, type: !2474, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2476)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!21, !19, !19, !18, !18, !18, !18}
!2476 = !{!2472, !2477, !2478, !2479, !2480, !2481}
!2477 = !DILocalVariable(name: "s2", arg: 2, scope: !2473, file: !2377, line: 90, type: !19)
!2478 = !DILocalVariable(name: "s25", arg: 3, scope: !2473, file: !2377, line: 90, type: !18)
!2479 = !DILocalVariable(name: "s26", arg: 4, scope: !2473, file: !2377, line: 90, type: !18)
!2480 = !DILocalVariable(name: "s27", arg: 5, scope: !2473, file: !2377, line: 90, type: !18)
!2481 = !DILocalVariable(name: "s28", arg: 6, scope: !2473, file: !2377, line: 90, type: !18)
!2482 = !DILocation(line: 0, scope: !2473, inlinedAt: !2483)
!2483 = distinct !DILocation(line: 111, column: 16, scope: !2484, inlinedAt: !2466)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !2377, line: 108, column: 11)
!2485 = distinct !DILexicalBlock(scope: !2470, file: !2377, line: 107, column: 5)
!2486 = !DILocation(line: 92, column: 7, scope: !2487, inlinedAt: !2483)
!2487 = distinct !DILexicalBlock(scope: !2473, file: !2377, line: 92, column: 7)
!2488 = !DILocation(line: 92, column: 7, scope: !2473, inlinedAt: !2483)
!2489 = !DILocation(line: 235, column: 12, scope: !2393)
!2490 = !DILocation(line: 235, column: 21, scope: !2393)
!2491 = !DILocation(line: 235, column: 5, scope: !2393)
!2492 = !DILocation(line: 0, scope: !2397, inlinedAt: !2493)
!2493 = distinct !DILocation(line: 167, column: 16, scope: !2412, inlinedAt: !2494)
!2494 = distinct !DILocation(line: 236, column: 7, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2361, file: !245, line: 236, column: 7)
!2496 = !DILocation(line: 148, column: 7, scope: !2415, inlinedAt: !2493)
!2497 = !DILocation(line: 0, scope: !2417, inlinedAt: !2498)
!2498 = distinct !DILocation(line: 153, column: 16, scope: !2431, inlinedAt: !2493)
!2499 = !DILocation(line: 134, column: 7, scope: !2434, inlinedAt: !2498)
!2500 = !DILocation(line: 134, column: 7, scope: !2417, inlinedAt: !2498)
!2501 = !DILocation(line: 0, scope: !2436, inlinedAt: !2502)
!2502 = distinct !DILocation(line: 139, column: 16, scope: !2449, inlinedAt: !2498)
!2503 = !DILocation(line: 120, column: 7, scope: !2452, inlinedAt: !2502)
!2504 = !DILocation(line: 120, column: 7, scope: !2436, inlinedAt: !2502)
!2505 = !DILocation(line: 0, scope: !2455, inlinedAt: !2506)
!2506 = distinct !DILocation(line: 125, column: 16, scope: !2467, inlinedAt: !2502)
!2507 = !DILocation(line: 106, column: 7, scope: !2470, inlinedAt: !2506)
!2508 = !DILocation(line: 106, column: 7, scope: !2455, inlinedAt: !2506)
!2509 = !DILocation(line: 0, scope: !2473, inlinedAt: !2510)
!2510 = distinct !DILocation(line: 111, column: 16, scope: !2484, inlinedAt: !2506)
!2511 = !DILocation(line: 92, column: 7, scope: !2487, inlinedAt: !2510)
!2512 = !DILocation(line: 92, column: 7, scope: !2473, inlinedAt: !2510)
!2513 = !DILocalVariable(name: "s1", arg: 1, scope: !2514, file: !2377, line: 76, type: !19)
!2514 = distinct !DISubprogram(name: "strcaseeq6", scope: !2377, file: !2377, line: 76, type: !2515, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2517)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!21, !19, !19, !18, !18, !18}
!2517 = !{!2513, !2518, !2519, !2520, !2521}
!2518 = !DILocalVariable(name: "s2", arg: 2, scope: !2514, file: !2377, line: 76, type: !19)
!2519 = !DILocalVariable(name: "s26", arg: 3, scope: !2514, file: !2377, line: 76, type: !18)
!2520 = !DILocalVariable(name: "s27", arg: 4, scope: !2514, file: !2377, line: 76, type: !18)
!2521 = !DILocalVariable(name: "s28", arg: 5, scope: !2514, file: !2377, line: 76, type: !18)
!2522 = !DILocation(line: 0, scope: !2514, inlinedAt: !2523)
!2523 = distinct !DILocation(line: 97, column: 16, scope: !2524, inlinedAt: !2510)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !2377, line: 94, column: 11)
!2525 = distinct !DILexicalBlock(scope: !2487, file: !2377, line: 93, column: 5)
!2526 = !DILocation(line: 78, column: 7, scope: !2527, inlinedAt: !2523)
!2527 = distinct !DILexicalBlock(scope: !2514, file: !2377, line: 78, column: 7)
!2528 = !DILocation(line: 78, column: 7, scope: !2514, inlinedAt: !2523)
!2529 = !DILocalVariable(name: "s1", arg: 1, scope: !2530, file: !2377, line: 62, type: !19)
!2530 = distinct !DISubprogram(name: "strcaseeq7", scope: !2377, file: !2377, line: 62, type: !2531, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2533)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!21, !19, !19, !18, !18}
!2533 = !{!2529, !2534, !2535, !2536}
!2534 = !DILocalVariable(name: "s2", arg: 2, scope: !2530, file: !2377, line: 62, type: !19)
!2535 = !DILocalVariable(name: "s27", arg: 3, scope: !2530, file: !2377, line: 62, type: !18)
!2536 = !DILocalVariable(name: "s28", arg: 4, scope: !2530, file: !2377, line: 62, type: !18)
!2537 = !DILocation(line: 0, scope: !2530, inlinedAt: !2538)
!2538 = distinct !DILocation(line: 83, column: 16, scope: !2539, inlinedAt: !2523)
!2539 = distinct !DILexicalBlock(scope: !2540, file: !2377, line: 80, column: 11)
!2540 = distinct !DILexicalBlock(scope: !2527, file: !2377, line: 79, column: 5)
!2541 = !DILocation(line: 64, column: 7, scope: !2542, inlinedAt: !2538)
!2542 = distinct !DILexicalBlock(scope: !2530, file: !2377, line: 64, column: 7)
!2543 = !DILocation(line: 236, column: 7, scope: !2361)
!2544 = !DILocation(line: 237, column: 12, scope: !2495)
!2545 = !DILocation(line: 237, column: 21, scope: !2495)
!2546 = !DILocation(line: 237, column: 5, scope: !2495)
!2547 = !DILocation(line: 239, column: 13, scope: !2361)
!2548 = !DILocation(line: 239, column: 11, scope: !2361)
!2549 = !DILocation(line: 239, column: 3, scope: !2361)
!2550 = !DILocation(line: 240, column: 1, scope: !2361)
!2551 = distinct !DISubprogram(name: "quotearg_alloc", scope: !245, file: !245, line: 799, type: !2552, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2554)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!17, !19, !76, !291}
!2554 = !{!2555, !2556, !2557}
!2555 = !DILocalVariable(name: "arg", arg: 1, scope: !2551, file: !245, line: 799, type: !19)
!2556 = !DILocalVariable(name: "argsize", arg: 2, scope: !2551, file: !245, line: 799, type: !76)
!2557 = !DILocalVariable(name: "o", arg: 3, scope: !2551, file: !245, line: 800, type: !291)
!2558 = !DILocation(line: 0, scope: !2551)
!2559 = !DILocalVariable(name: "arg", arg: 1, scope: !2560, file: !245, line: 812, type: !19)
!2560 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !245, file: !245, line: 812, type: !2561, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2563)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!17, !19, !76, !679, !291}
!2563 = !{!2559, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571}
!2564 = !DILocalVariable(name: "argsize", arg: 2, scope: !2560, file: !245, line: 812, type: !76)
!2565 = !DILocalVariable(name: "size", arg: 3, scope: !2560, file: !245, line: 812, type: !679)
!2566 = !DILocalVariable(name: "o", arg: 4, scope: !2560, file: !245, line: 813, type: !291)
!2567 = !DILocalVariable(name: "p", scope: !2560, file: !245, line: 815, type: !291)
!2568 = !DILocalVariable(name: "e", scope: !2560, file: !245, line: 816, type: !21)
!2569 = !DILocalVariable(name: "flags", scope: !2560, file: !245, line: 818, type: !21)
!2570 = !DILocalVariable(name: "bufsize", scope: !2560, file: !245, line: 819, type: !76)
!2571 = !DILocalVariable(name: "buf", scope: !2560, file: !245, line: 823, type: !17)
!2572 = !DILocation(line: 0, scope: !2560, inlinedAt: !2573)
!2573 = distinct !DILocation(line: 802, column: 10, scope: !2551)
!2574 = !DILocation(line: 815, column: 37, scope: !2560, inlinedAt: !2573)
!2575 = !DILocation(line: 816, column: 11, scope: !2560, inlinedAt: !2573)
!2576 = !DILocation(line: 818, column: 18, scope: !2560, inlinedAt: !2573)
!2577 = !DILocation(line: 818, column: 24, scope: !2560, inlinedAt: !2573)
!2578 = !DILocation(line: 819, column: 69, scope: !2560, inlinedAt: !2573)
!2579 = !DILocation(line: 820, column: 53, scope: !2560, inlinedAt: !2573)
!2580 = !DILocation(line: 821, column: 49, scope: !2560, inlinedAt: !2573)
!2581 = !DILocation(line: 822, column: 49, scope: !2560, inlinedAt: !2573)
!2582 = !DILocation(line: 819, column: 20, scope: !2560, inlinedAt: !2573)
!2583 = !DILocation(line: 822, column: 62, scope: !2560, inlinedAt: !2573)
!2584 = !DILocalVariable(name: "n", arg: 1, scope: !2585, file: !282, line: 216, type: !76)
!2585 = distinct !DISubprogram(name: "xcharalloc", scope: !282, file: !282, line: 216, type: !2586, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2588)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{!17, !76}
!2588 = !{!2584}
!2589 = !DILocation(line: 0, scope: !2585, inlinedAt: !2590)
!2590 = distinct !DILocation(line: 823, column: 15, scope: !2560, inlinedAt: !2573)
!2591 = !DILocation(line: 218, column: 10, scope: !2585, inlinedAt: !2590)
!2592 = !DILocation(line: 824, column: 60, scope: !2560, inlinedAt: !2573)
!2593 = !DILocation(line: 826, column: 32, scope: !2560, inlinedAt: !2573)
!2594 = !DILocation(line: 826, column: 47, scope: !2560, inlinedAt: !2573)
!2595 = !DILocation(line: 824, column: 3, scope: !2560, inlinedAt: !2573)
!2596 = !DILocation(line: 827, column: 9, scope: !2560, inlinedAt: !2573)
!2597 = !DILocation(line: 802, column: 3, scope: !2551)
!2598 = !DILocation(line: 0, scope: !2560)
!2599 = !DILocation(line: 815, column: 37, scope: !2560)
!2600 = !DILocation(line: 816, column: 11, scope: !2560)
!2601 = !DILocation(line: 818, column: 18, scope: !2560)
!2602 = !DILocation(line: 818, column: 27, scope: !2560)
!2603 = !DILocation(line: 818, column: 24, scope: !2560)
!2604 = !DILocation(line: 819, column: 69, scope: !2560)
!2605 = !DILocation(line: 820, column: 53, scope: !2560)
!2606 = !DILocation(line: 821, column: 49, scope: !2560)
!2607 = !DILocation(line: 822, column: 49, scope: !2560)
!2608 = !DILocation(line: 819, column: 20, scope: !2560)
!2609 = !DILocation(line: 822, column: 62, scope: !2560)
!2610 = !DILocation(line: 0, scope: !2585, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 823, column: 15, scope: !2560)
!2612 = !DILocation(line: 218, column: 10, scope: !2585, inlinedAt: !2611)
!2613 = !DILocation(line: 824, column: 60, scope: !2560)
!2614 = !DILocation(line: 826, column: 32, scope: !2560)
!2615 = !DILocation(line: 826, column: 47, scope: !2560)
!2616 = !DILocation(line: 824, column: 3, scope: !2560)
!2617 = !DILocation(line: 827, column: 9, scope: !2560)
!2618 = !DILocation(line: 828, column: 7, scope: !2560)
!2619 = !DILocation(line: 829, column: 11, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2560, file: !245, line: 828, column: 7)
!2621 = !{!2622, !2622, i64 0}
!2622 = !{!"long", !1344, i64 0}
!2623 = !DILocation(line: 829, column: 5, scope: !2620)
!2624 = !DILocation(line: 830, column: 3, scope: !2560)
!2625 = distinct !DISubprogram(name: "quotearg_free", scope: !245, file: !245, line: 848, type: !103, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2626)
!2626 = !{!2627, !2628}
!2627 = !DILocalVariable(name: "sv", scope: !2625, file: !245, line: 850, type: !369)
!2628 = !DILocalVariable(name: "i", scope: !2625, file: !245, line: 851, type: !21)
!2629 = !DILocation(line: 850, column: 24, scope: !2625)
!2630 = !DILocation(line: 0, scope: !2625)
!2631 = !DILocation(line: 852, column: 19, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2633, file: !245, line: 852, column: 3)
!2633 = distinct !DILexicalBlock(scope: !2625, file: !245, line: 852, column: 3)
!2634 = !DILocation(line: 852, column: 17, scope: !2632)
!2635 = !DILocation(line: 852, column: 3, scope: !2633)
!2636 = !DILocation(line: 853, column: 17, scope: !2632)
!2637 = !{!2638, !1343, i64 8}
!2638 = !{!"slotvec", !2622, i64 0, !1343, i64 8}
!2639 = !DILocation(line: 853, column: 5, scope: !2632)
!2640 = !DILocation(line: 852, column: 28, scope: !2632)
!2641 = distinct !{!2641, !2635, !2642}
!2642 = !DILocation(line: 853, column: 20, scope: !2633)
!2643 = !DILocation(line: 854, column: 13, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2625, file: !245, line: 854, column: 7)
!2645 = !DILocation(line: 854, column: 17, scope: !2644)
!2646 = !DILocation(line: 854, column: 7, scope: !2625)
!2647 = !DILocation(line: 856, column: 7, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2644, file: !245, line: 855, column: 5)
!2649 = !DILocation(line: 857, column: 21, scope: !2648)
!2650 = !{!2638, !2622, i64 0}
!2651 = !DILocation(line: 858, column: 20, scope: !2648)
!2652 = !DILocation(line: 859, column: 5, scope: !2648)
!2653 = !DILocation(line: 860, column: 10, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2625, file: !245, line: 860, column: 7)
!2655 = !DILocation(line: 860, column: 7, scope: !2625)
!2656 = !DILocation(line: 862, column: 13, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2654, file: !245, line: 861, column: 5)
!2658 = !DILocation(line: 862, column: 7, scope: !2657)
!2659 = !DILocation(line: 863, column: 15, scope: !2657)
!2660 = !DILocation(line: 864, column: 5, scope: !2657)
!2661 = !DILocation(line: 865, column: 10, scope: !2625)
!2662 = !DILocation(line: 866, column: 1, scope: !2625)
!2663 = distinct !DISubprogram(name: "quotearg_n", scope: !245, file: !245, line: 931, type: !90, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2664)
!2664 = !{!2665, !2666}
!2665 = !DILocalVariable(name: "n", arg: 1, scope: !2663, file: !245, line: 931, type: !21)
!2666 = !DILocalVariable(name: "arg", arg: 2, scope: !2663, file: !245, line: 931, type: !19)
!2667 = !DILocation(line: 0, scope: !2663)
!2668 = !DILocation(line: 933, column: 10, scope: !2663)
!2669 = !DILocation(line: 933, column: 3, scope: !2663)
!2670 = distinct !DISubprogram(name: "quotearg_n_options", scope: !245, file: !245, line: 877, type: !2671, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2673)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{!17, !21, !19, !76, !291}
!2673 = !{!2674, !2675, !2676, !2677, !2678, !2679, !2680, !2683, !2684, !2686, !2687, !2688}
!2674 = !DILocalVariable(name: "n", arg: 1, scope: !2670, file: !245, line: 877, type: !21)
!2675 = !DILocalVariable(name: "arg", arg: 2, scope: !2670, file: !245, line: 877, type: !19)
!2676 = !DILocalVariable(name: "argsize", arg: 3, scope: !2670, file: !245, line: 877, type: !76)
!2677 = !DILocalVariable(name: "options", arg: 4, scope: !2670, file: !245, line: 878, type: !291)
!2678 = !DILocalVariable(name: "e", scope: !2670, file: !245, line: 880, type: !21)
!2679 = !DILocalVariable(name: "sv", scope: !2670, file: !245, line: 882, type: !369)
!2680 = !DILocalVariable(name: "preallocated", scope: !2681, file: !245, line: 889, type: !194)
!2681 = distinct !DILexicalBlock(scope: !2682, file: !245, line: 888, column: 5)
!2682 = distinct !DILexicalBlock(scope: !2670, file: !245, line: 887, column: 7)
!2683 = !DILocalVariable(name: "nmax", scope: !2681, file: !245, line: 890, type: !21)
!2684 = !DILocalVariable(name: "size", scope: !2685, file: !245, line: 903, type: !76)
!2685 = distinct !DILexicalBlock(scope: !2670, file: !245, line: 902, column: 3)
!2686 = !DILocalVariable(name: "val", scope: !2685, file: !245, line: 904, type: !17)
!2687 = !DILocalVariable(name: "flags", scope: !2685, file: !245, line: 906, type: !21)
!2688 = !DILocalVariable(name: "qsize", scope: !2685, file: !245, line: 907, type: !76)
!2689 = !DILocation(line: 0, scope: !2670)
!2690 = !DILocation(line: 880, column: 11, scope: !2670)
!2691 = !DILocation(line: 882, column: 24, scope: !2670)
!2692 = !DILocation(line: 884, column: 9, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2670, file: !245, line: 884, column: 7)
!2694 = !DILocation(line: 884, column: 7, scope: !2670)
!2695 = !DILocation(line: 885, column: 5, scope: !2693)
!2696 = !DILocation(line: 887, column: 7, scope: !2682)
!2697 = !DILocation(line: 887, column: 14, scope: !2682)
!2698 = !DILocation(line: 887, column: 7, scope: !2670)
!2699 = !DILocation(line: 889, column: 31, scope: !2681)
!2700 = !DILocation(line: 0, scope: !2681)
!2701 = !DILocation(line: 892, column: 16, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2681, file: !245, line: 892, column: 11)
!2703 = !DILocation(line: 892, column: 11, scope: !2681)
!2704 = !DILocation(line: 893, column: 9, scope: !2702)
!2705 = !DILocation(line: 895, column: 32, scope: !2681)
!2706 = !DILocation(line: 895, column: 61, scope: !2681)
!2707 = !DILocation(line: 895, column: 58, scope: !2681)
!2708 = !DILocation(line: 895, column: 66, scope: !2681)
!2709 = !DILocation(line: 895, column: 22, scope: !2681)
!2710 = !DILocation(line: 895, column: 15, scope: !2681)
!2711 = !DILocation(line: 896, column: 11, scope: !2681)
!2712 = !DILocation(line: 897, column: 15, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2681, file: !245, line: 896, column: 11)
!2714 = !{i64 0, i64 8, !2621, i64 8, i64 8, !1342}
!2715 = !DILocation(line: 897, column: 9, scope: !2713)
!2716 = !DILocation(line: 898, column: 20, scope: !2681)
!2717 = !DILocation(line: 898, column: 18, scope: !2681)
!2718 = !DILocation(line: 898, column: 15, scope: !2681)
!2719 = !DILocation(line: 898, column: 38, scope: !2681)
!2720 = !DILocation(line: 898, column: 31, scope: !2681)
!2721 = !DILocation(line: 898, column: 48, scope: !2681)
!2722 = !DILocation(line: 0, scope: !2118, inlinedAt: !2723)
!2723 = distinct !DILocation(line: 898, column: 7, scope: !2681)
!2724 = !DILocation(line: 71, column: 10, scope: !2118, inlinedAt: !2723)
!2725 = !DILocation(line: 899, column: 14, scope: !2681)
!2726 = !DILocation(line: 900, column: 5, scope: !2681)
!2727 = !DILocation(line: 903, column: 19, scope: !2685)
!2728 = !DILocation(line: 903, column: 25, scope: !2685)
!2729 = !DILocation(line: 0, scope: !2685)
!2730 = !DILocation(line: 904, column: 23, scope: !2685)
!2731 = !DILocation(line: 906, column: 26, scope: !2685)
!2732 = !DILocation(line: 906, column: 32, scope: !2685)
!2733 = !DILocation(line: 908, column: 55, scope: !2685)
!2734 = !DILocation(line: 909, column: 46, scope: !2685)
!2735 = !DILocation(line: 910, column: 55, scope: !2685)
!2736 = !DILocation(line: 911, column: 55, scope: !2685)
!2737 = !DILocation(line: 907, column: 20, scope: !2685)
!2738 = !DILocation(line: 913, column: 14, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2685, file: !245, line: 913, column: 9)
!2740 = !DILocation(line: 913, column: 9, scope: !2685)
!2741 = !DILocation(line: 915, column: 35, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2739, file: !245, line: 914, column: 7)
!2743 = !DILocation(line: 915, column: 20, scope: !2742)
!2744 = !DILocation(line: 916, column: 17, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2742, file: !245, line: 916, column: 13)
!2746 = !DILocation(line: 916, column: 13, scope: !2742)
!2747 = !DILocation(line: 917, column: 11, scope: !2745)
!2748 = !DILocation(line: 0, scope: !2585, inlinedAt: !2749)
!2749 = distinct !DILocation(line: 918, column: 27, scope: !2742)
!2750 = !DILocation(line: 218, column: 10, scope: !2585, inlinedAt: !2749)
!2751 = !DILocation(line: 918, column: 19, scope: !2742)
!2752 = !DILocation(line: 919, column: 69, scope: !2742)
!2753 = !DILocation(line: 921, column: 44, scope: !2742)
!2754 = !DILocation(line: 922, column: 44, scope: !2742)
!2755 = !DILocation(line: 919, column: 9, scope: !2742)
!2756 = !DILocation(line: 923, column: 7, scope: !2742)
!2757 = !DILocation(line: 925, column: 11, scope: !2685)
!2758 = !DILocation(line: 926, column: 5, scope: !2685)
!2759 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !245, file: !245, line: 937, type: !2760, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2762)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!17, !21, !19, !76}
!2762 = !{!2763, !2764, !2765}
!2763 = !DILocalVariable(name: "n", arg: 1, scope: !2759, file: !245, line: 937, type: !21)
!2764 = !DILocalVariable(name: "arg", arg: 2, scope: !2759, file: !245, line: 937, type: !19)
!2765 = !DILocalVariable(name: "argsize", arg: 3, scope: !2759, file: !245, line: 937, type: !76)
!2766 = !DILocation(line: 0, scope: !2759)
!2767 = !DILocation(line: 939, column: 10, scope: !2759)
!2768 = !DILocation(line: 939, column: 3, scope: !2759)
!2769 = distinct !DISubprogram(name: "quotearg", scope: !245, file: !245, line: 943, type: !96, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2770)
!2770 = !{!2771}
!2771 = !DILocalVariable(name: "arg", arg: 1, scope: !2769, file: !245, line: 943, type: !19)
!2772 = !DILocation(line: 0, scope: !2769)
!2773 = !DILocation(line: 0, scope: !2663, inlinedAt: !2774)
!2774 = distinct !DILocation(line: 945, column: 10, scope: !2769)
!2775 = !DILocation(line: 933, column: 10, scope: !2663, inlinedAt: !2774)
!2776 = !DILocation(line: 945, column: 3, scope: !2769)
!2777 = distinct !DISubprogram(name: "quotearg_mem", scope: !245, file: !245, line: 949, type: !2778, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2780)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!17, !19, !76}
!2780 = !{!2781, !2782}
!2781 = !DILocalVariable(name: "arg", arg: 1, scope: !2777, file: !245, line: 949, type: !19)
!2782 = !DILocalVariable(name: "argsize", arg: 2, scope: !2777, file: !245, line: 949, type: !76)
!2783 = !DILocation(line: 0, scope: !2777)
!2784 = !DILocation(line: 0, scope: !2759, inlinedAt: !2785)
!2785 = distinct !DILocation(line: 951, column: 10, scope: !2777)
!2786 = !DILocation(line: 939, column: 10, scope: !2759, inlinedAt: !2785)
!2787 = !DILocation(line: 951, column: 3, scope: !2777)
!2788 = distinct !DISubprogram(name: "quotearg_n_style", scope: !245, file: !245, line: 955, type: !2789, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2791)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!17, !21, !247, !19}
!2791 = !{!2792, !2793, !2794, !2795}
!2792 = !DILocalVariable(name: "n", arg: 1, scope: !2788, file: !245, line: 955, type: !21)
!2793 = !DILocalVariable(name: "s", arg: 2, scope: !2788, file: !245, line: 955, type: !247)
!2794 = !DILocalVariable(name: "arg", arg: 3, scope: !2788, file: !245, line: 955, type: !19)
!2795 = !DILocalVariable(name: "o", scope: !2788, file: !245, line: 957, type: !292)
!2796 = !DILocation(line: 0, scope: !2788)
!2797 = !DILocation(line: 957, column: 3, scope: !2788)
!2798 = !DILocation(line: 957, column: 32, scope: !2788)
!2799 = !DILocalVariable(name: "style", arg: 1, scope: !2800, file: !245, line: 193, type: !247)
!2800 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !245, file: !245, line: 193, type: !2801, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2803)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!293, !247}
!2803 = !{!2799, !2804}
!2804 = !DILocalVariable(name: "o", scope: !2800, file: !245, line: 195, type: !293)
!2805 = !DILocation(line: 0, scope: !2800, inlinedAt: !2806)
!2806 = distinct !DILocation(line: 957, column: 36, scope: !2788)
!2807 = !DILocation(line: 195, column: 26, scope: !2800, inlinedAt: !2806)
!2808 = !{!2809}
!2809 = distinct !{!2809, !2810, !"quoting_options_from_style: argument 0"}
!2810 = distinct !{!2810, !"quoting_options_from_style"}
!2811 = !DILocation(line: 196, column: 13, scope: !2812, inlinedAt: !2806)
!2812 = distinct !DILexicalBlock(scope: !2800, file: !245, line: 196, column: 7)
!2813 = !DILocation(line: 196, column: 7, scope: !2800, inlinedAt: !2806)
!2814 = !DILocation(line: 197, column: 5, scope: !2812, inlinedAt: !2806)
!2815 = !DILocation(line: 198, column: 5, scope: !2800, inlinedAt: !2806)
!2816 = !DILocation(line: 198, column: 11, scope: !2800, inlinedAt: !2806)
!2817 = !DILocation(line: 958, column: 10, scope: !2788)
!2818 = !DILocation(line: 959, column: 1, scope: !2788)
!2819 = !DILocation(line: 958, column: 3, scope: !2788)
!2820 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !245, file: !245, line: 962, type: !2821, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2823)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!17, !21, !247, !19, !76}
!2823 = !{!2824, !2825, !2826, !2827, !2828}
!2824 = !DILocalVariable(name: "n", arg: 1, scope: !2820, file: !245, line: 962, type: !21)
!2825 = !DILocalVariable(name: "s", arg: 2, scope: !2820, file: !245, line: 962, type: !247)
!2826 = !DILocalVariable(name: "arg", arg: 3, scope: !2820, file: !245, line: 963, type: !19)
!2827 = !DILocalVariable(name: "argsize", arg: 4, scope: !2820, file: !245, line: 963, type: !76)
!2828 = !DILocalVariable(name: "o", scope: !2820, file: !245, line: 965, type: !292)
!2829 = !DILocation(line: 0, scope: !2820)
!2830 = !DILocation(line: 965, column: 3, scope: !2820)
!2831 = !DILocation(line: 965, column: 32, scope: !2820)
!2832 = !DILocation(line: 0, scope: !2800, inlinedAt: !2833)
!2833 = distinct !DILocation(line: 965, column: 36, scope: !2820)
!2834 = !DILocation(line: 195, column: 26, scope: !2800, inlinedAt: !2833)
!2835 = !{!2836}
!2836 = distinct !{!2836, !2837, !"quoting_options_from_style: argument 0"}
!2837 = distinct !{!2837, !"quoting_options_from_style"}
!2838 = !DILocation(line: 196, column: 13, scope: !2812, inlinedAt: !2833)
!2839 = !DILocation(line: 196, column: 7, scope: !2800, inlinedAt: !2833)
!2840 = !DILocation(line: 197, column: 5, scope: !2812, inlinedAt: !2833)
!2841 = !DILocation(line: 198, column: 5, scope: !2800, inlinedAt: !2833)
!2842 = !DILocation(line: 198, column: 11, scope: !2800, inlinedAt: !2833)
!2843 = !DILocation(line: 966, column: 10, scope: !2820)
!2844 = !DILocation(line: 967, column: 1, scope: !2820)
!2845 = !DILocation(line: 966, column: 3, scope: !2820)
!2846 = distinct !DISubprogram(name: "quotearg_style", scope: !245, file: !245, line: 970, type: !2847, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2849)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!17, !247, !19}
!2849 = !{!2850, !2851}
!2850 = !DILocalVariable(name: "s", arg: 1, scope: !2846, file: !245, line: 970, type: !247)
!2851 = !DILocalVariable(name: "arg", arg: 2, scope: !2846, file: !245, line: 970, type: !19)
!2852 = !DILocation(line: 195, column: 26, scope: !2800, inlinedAt: !2853)
!2853 = distinct !DILocation(line: 957, column: 36, scope: !2788, inlinedAt: !2854)
!2854 = distinct !DILocation(line: 972, column: 10, scope: !2846)
!2855 = !DILocation(line: 957, column: 32, scope: !2788, inlinedAt: !2854)
!2856 = !DILocation(line: 0, scope: !2846)
!2857 = !DILocation(line: 0, scope: !2788, inlinedAt: !2854)
!2858 = !DILocation(line: 957, column: 3, scope: !2788, inlinedAt: !2854)
!2859 = !DILocation(line: 0, scope: !2800, inlinedAt: !2853)
!2860 = !{!2861}
!2861 = distinct !{!2861, !2862, !"quoting_options_from_style: argument 0"}
!2862 = distinct !{!2862, !"quoting_options_from_style"}
!2863 = !DILocation(line: 196, column: 13, scope: !2812, inlinedAt: !2853)
!2864 = !DILocation(line: 196, column: 7, scope: !2800, inlinedAt: !2853)
!2865 = !DILocation(line: 197, column: 5, scope: !2812, inlinedAt: !2853)
!2866 = !DILocation(line: 198, column: 5, scope: !2800, inlinedAt: !2853)
!2867 = !DILocation(line: 198, column: 11, scope: !2800, inlinedAt: !2853)
!2868 = !DILocation(line: 958, column: 10, scope: !2788, inlinedAt: !2854)
!2869 = !DILocation(line: 959, column: 1, scope: !2788, inlinedAt: !2854)
!2870 = !DILocation(line: 972, column: 3, scope: !2846)
!2871 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !245, file: !245, line: 976, type: !2872, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2874)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!17, !247, !19, !76}
!2874 = !{!2875, !2876, !2877}
!2875 = !DILocalVariable(name: "s", arg: 1, scope: !2871, file: !245, line: 976, type: !247)
!2876 = !DILocalVariable(name: "arg", arg: 2, scope: !2871, file: !245, line: 976, type: !19)
!2877 = !DILocalVariable(name: "argsize", arg: 3, scope: !2871, file: !245, line: 976, type: !76)
!2878 = !DILocation(line: 195, column: 26, scope: !2800, inlinedAt: !2879)
!2879 = distinct !DILocation(line: 965, column: 36, scope: !2820, inlinedAt: !2880)
!2880 = distinct !DILocation(line: 978, column: 10, scope: !2871)
!2881 = !DILocation(line: 965, column: 32, scope: !2820, inlinedAt: !2880)
!2882 = !DILocation(line: 0, scope: !2871)
!2883 = !DILocation(line: 0, scope: !2820, inlinedAt: !2880)
!2884 = !DILocation(line: 965, column: 3, scope: !2820, inlinedAt: !2880)
!2885 = !DILocation(line: 0, scope: !2800, inlinedAt: !2879)
!2886 = !{!2887}
!2887 = distinct !{!2887, !2888, !"quoting_options_from_style: argument 0"}
!2888 = distinct !{!2888, !"quoting_options_from_style"}
!2889 = !DILocation(line: 196, column: 13, scope: !2812, inlinedAt: !2879)
!2890 = !DILocation(line: 196, column: 7, scope: !2800, inlinedAt: !2879)
!2891 = !DILocation(line: 197, column: 5, scope: !2812, inlinedAt: !2879)
!2892 = !DILocation(line: 198, column: 5, scope: !2800, inlinedAt: !2879)
!2893 = !DILocation(line: 198, column: 11, scope: !2800, inlinedAt: !2879)
!2894 = !DILocation(line: 966, column: 10, scope: !2820, inlinedAt: !2880)
!2895 = !DILocation(line: 967, column: 1, scope: !2820, inlinedAt: !2880)
!2896 = !DILocation(line: 978, column: 3, scope: !2871)
!2897 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !245, file: !245, line: 982, type: !2898, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2900)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!17, !19, !76, !18}
!2900 = !{!2901, !2902, !2903, !2904}
!2901 = !DILocalVariable(name: "arg", arg: 1, scope: !2897, file: !245, line: 982, type: !19)
!2902 = !DILocalVariable(name: "argsize", arg: 2, scope: !2897, file: !245, line: 982, type: !76)
!2903 = !DILocalVariable(name: "ch", arg: 3, scope: !2897, file: !245, line: 982, type: !18)
!2904 = !DILocalVariable(name: "options", scope: !2897, file: !245, line: 984, type: !293)
!2905 = !DILocation(line: 0, scope: !2897)
!2906 = !DILocation(line: 984, column: 3, scope: !2897)
!2907 = !DILocation(line: 984, column: 26, scope: !2897)
!2908 = !DILocation(line: 985, column: 13, scope: !2897)
!2909 = !{i64 0, i64 4, !1540, i64 4, i64 4, !1415, i64 8, i64 32, !1540, i64 40, i64 8, !1342, i64 48, i64 8, !1342}
!2910 = !DILocation(line: 0, scope: !1730, inlinedAt: !2911)
!2911 = distinct !DILocation(line: 986, column: 3, scope: !2897)
!2912 = !DILocation(line: 156, column: 62, scope: !1730, inlinedAt: !2911)
!2913 = !DILocation(line: 156, column: 57, scope: !1730, inlinedAt: !2911)
!2914 = !DILocation(line: 157, column: 15, scope: !1730, inlinedAt: !2911)
!2915 = !DILocation(line: 158, column: 12, scope: !1730, inlinedAt: !2911)
!2916 = !DILocation(line: 158, column: 15, scope: !1730, inlinedAt: !2911)
!2917 = !DILocation(line: 158, column: 25, scope: !1730, inlinedAt: !2911)
!2918 = !DILocation(line: 159, column: 18, scope: !1730, inlinedAt: !2911)
!2919 = !DILocation(line: 159, column: 23, scope: !1730, inlinedAt: !2911)
!2920 = !DILocation(line: 159, column: 6, scope: !1730, inlinedAt: !2911)
!2921 = !DILocation(line: 987, column: 10, scope: !2897)
!2922 = !DILocation(line: 988, column: 1, scope: !2897)
!2923 = !DILocation(line: 987, column: 3, scope: !2897)
!2924 = distinct !DISubprogram(name: "quotearg_char", scope: !245, file: !245, line: 991, type: !2925, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2927)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!17, !19, !18}
!2927 = !{!2928, !2929}
!2928 = !DILocalVariable(name: "arg", arg: 1, scope: !2924, file: !245, line: 991, type: !19)
!2929 = !DILocalVariable(name: "ch", arg: 2, scope: !2924, file: !245, line: 991, type: !18)
!2930 = !DILocation(line: 984, column: 26, scope: !2897, inlinedAt: !2931)
!2931 = distinct !DILocation(line: 993, column: 10, scope: !2924)
!2932 = !DILocation(line: 0, scope: !2924)
!2933 = !DILocation(line: 0, scope: !2897, inlinedAt: !2931)
!2934 = !DILocation(line: 984, column: 3, scope: !2897, inlinedAt: !2931)
!2935 = !DILocation(line: 985, column: 13, scope: !2897, inlinedAt: !2931)
!2936 = !DILocation(line: 0, scope: !1730, inlinedAt: !2937)
!2937 = distinct !DILocation(line: 986, column: 3, scope: !2897, inlinedAt: !2931)
!2938 = !DILocation(line: 156, column: 62, scope: !1730, inlinedAt: !2937)
!2939 = !DILocation(line: 156, column: 57, scope: !1730, inlinedAt: !2937)
!2940 = !DILocation(line: 157, column: 15, scope: !1730, inlinedAt: !2937)
!2941 = !DILocation(line: 158, column: 12, scope: !1730, inlinedAt: !2937)
!2942 = !DILocation(line: 158, column: 15, scope: !1730, inlinedAt: !2937)
!2943 = !DILocation(line: 158, column: 25, scope: !1730, inlinedAt: !2937)
!2944 = !DILocation(line: 159, column: 18, scope: !1730, inlinedAt: !2937)
!2945 = !DILocation(line: 159, column: 23, scope: !1730, inlinedAt: !2937)
!2946 = !DILocation(line: 159, column: 6, scope: !1730, inlinedAt: !2937)
!2947 = !DILocation(line: 987, column: 10, scope: !2897, inlinedAt: !2931)
!2948 = !DILocation(line: 988, column: 1, scope: !2897, inlinedAt: !2931)
!2949 = !DILocation(line: 993, column: 3, scope: !2924)
!2950 = distinct !DISubprogram(name: "quotearg_colon", scope: !245, file: !245, line: 997, type: !96, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2951)
!2951 = !{!2952}
!2952 = !DILocalVariable(name: "arg", arg: 1, scope: !2950, file: !245, line: 997, type: !19)
!2953 = !DILocation(line: 984, column: 26, scope: !2897, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 993, column: 10, scope: !2924, inlinedAt: !2955)
!2955 = distinct !DILocation(line: 999, column: 10, scope: !2950)
!2956 = !DILocation(line: 0, scope: !2950)
!2957 = !DILocation(line: 0, scope: !2924, inlinedAt: !2955)
!2958 = !DILocation(line: 0, scope: !2897, inlinedAt: !2954)
!2959 = !DILocation(line: 984, column: 3, scope: !2897, inlinedAt: !2954)
!2960 = !DILocation(line: 985, column: 13, scope: !2897, inlinedAt: !2954)
!2961 = !DILocation(line: 0, scope: !1730, inlinedAt: !2962)
!2962 = distinct !DILocation(line: 986, column: 3, scope: !2897, inlinedAt: !2954)
!2963 = !DILocation(line: 156, column: 57, scope: !1730, inlinedAt: !2962)
!2964 = !DILocation(line: 158, column: 12, scope: !1730, inlinedAt: !2962)
!2965 = !DILocation(line: 159, column: 6, scope: !1730, inlinedAt: !2962)
!2966 = !DILocation(line: 987, column: 10, scope: !2897, inlinedAt: !2954)
!2967 = !DILocation(line: 988, column: 1, scope: !2897, inlinedAt: !2954)
!2968 = !DILocation(line: 999, column: 3, scope: !2950)
!2969 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !245, file: !245, line: 1003, type: !2778, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2970)
!2970 = !{!2971, !2972}
!2971 = !DILocalVariable(name: "arg", arg: 1, scope: !2969, file: !245, line: 1003, type: !19)
!2972 = !DILocalVariable(name: "argsize", arg: 2, scope: !2969, file: !245, line: 1003, type: !76)
!2973 = !DILocation(line: 984, column: 26, scope: !2897, inlinedAt: !2974)
!2974 = distinct !DILocation(line: 1005, column: 10, scope: !2969)
!2975 = !DILocation(line: 0, scope: !2969)
!2976 = !DILocation(line: 0, scope: !2897, inlinedAt: !2974)
!2977 = !DILocation(line: 984, column: 3, scope: !2897, inlinedAt: !2974)
!2978 = !DILocation(line: 985, column: 13, scope: !2897, inlinedAt: !2974)
!2979 = !DILocation(line: 0, scope: !1730, inlinedAt: !2980)
!2980 = distinct !DILocation(line: 986, column: 3, scope: !2897, inlinedAt: !2974)
!2981 = !DILocation(line: 156, column: 57, scope: !1730, inlinedAt: !2980)
!2982 = !DILocation(line: 158, column: 12, scope: !1730, inlinedAt: !2980)
!2983 = !DILocation(line: 159, column: 6, scope: !1730, inlinedAt: !2980)
!2984 = !DILocation(line: 987, column: 10, scope: !2897, inlinedAt: !2974)
!2985 = !DILocation(line: 988, column: 1, scope: !2897, inlinedAt: !2974)
!2986 = !DILocation(line: 1005, column: 3, scope: !2969)
!2987 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !245, file: !245, line: 1009, type: !2789, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2988)
!2988 = !{!2989, !2990, !2991, !2992}
!2989 = !DILocalVariable(name: "n", arg: 1, scope: !2987, file: !245, line: 1009, type: !21)
!2990 = !DILocalVariable(name: "s", arg: 2, scope: !2987, file: !245, line: 1009, type: !247)
!2991 = !DILocalVariable(name: "arg", arg: 3, scope: !2987, file: !245, line: 1009, type: !19)
!2992 = !DILocalVariable(name: "options", scope: !2987, file: !245, line: 1011, type: !293)
!2993 = !DILocation(line: 195, column: 26, scope: !2800, inlinedAt: !2994)
!2994 = distinct !DILocation(line: 1012, column: 13, scope: !2987)
!2995 = !DILocation(line: 0, scope: !2987)
!2996 = !DILocation(line: 1011, column: 3, scope: !2987)
!2997 = !DILocation(line: 1011, column: 26, scope: !2987)
!2998 = !DILocation(line: 1012, column: 13, scope: !2987)
!2999 = !DILocation(line: 0, scope: !2800, inlinedAt: !2994)
!3000 = !{!3001}
!3001 = distinct !{!3001, !3002, !"quoting_options_from_style: argument 0"}
!3002 = distinct !{!3002, !"quoting_options_from_style"}
!3003 = !DILocation(line: 196, column: 13, scope: !2812, inlinedAt: !2994)
!3004 = !DILocation(line: 196, column: 7, scope: !2800, inlinedAt: !2994)
!3005 = !DILocation(line: 197, column: 5, scope: !2812, inlinedAt: !2994)
!3006 = !DILocation(line: 0, scope: !1730, inlinedAt: !3007)
!3007 = distinct !DILocation(line: 1013, column: 3, scope: !2987)
!3008 = !DILocation(line: 156, column: 57, scope: !1730, inlinedAt: !3007)
!3009 = !DILocation(line: 158, column: 12, scope: !1730, inlinedAt: !3007)
!3010 = !DILocation(line: 159, column: 6, scope: !1730, inlinedAt: !3007)
!3011 = !DILocation(line: 1014, column: 10, scope: !2987)
!3012 = !DILocation(line: 1015, column: 1, scope: !2987)
!3013 = !DILocation(line: 1014, column: 3, scope: !2987)
!3014 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !245, file: !245, line: 1018, type: !3015, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !3017)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!17, !21, !19, !19, !19}
!3017 = !{!3018, !3019, !3020, !3021}
!3018 = !DILocalVariable(name: "n", arg: 1, scope: !3014, file: !245, line: 1018, type: !21)
!3019 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3014, file: !245, line: 1018, type: !19)
!3020 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3014, file: !245, line: 1019, type: !19)
!3021 = !DILocalVariable(name: "arg", arg: 4, scope: !3014, file: !245, line: 1019, type: !19)
!3022 = !DILocalVariable(name: "o", scope: !3023, file: !245, line: 1030, type: !293)
!3023 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !245, file: !245, line: 1026, type: !3024, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !3026)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!17, !21, !19, !19, !19, !76}
!3026 = !{!3027, !3028, !3029, !3030, !3031, !3022}
!3027 = !DILocalVariable(name: "n", arg: 1, scope: !3023, file: !245, line: 1026, type: !21)
!3028 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3023, file: !245, line: 1026, type: !19)
!3029 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3023, file: !245, line: 1027, type: !19)
!3030 = !DILocalVariable(name: "arg", arg: 4, scope: !3023, file: !245, line: 1028, type: !19)
!3031 = !DILocalVariable(name: "argsize", arg: 5, scope: !3023, file: !245, line: 1028, type: !76)
!3032 = !DILocation(line: 1030, column: 26, scope: !3023, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 1021, column: 10, scope: !3014)
!3034 = !DILocation(line: 0, scope: !3014)
!3035 = !DILocation(line: 0, scope: !3023, inlinedAt: !3033)
!3036 = !DILocation(line: 1030, column: 3, scope: !3023, inlinedAt: !3033)
!3037 = !DILocation(line: 1030, column: 30, scope: !3023, inlinedAt: !3033)
!3038 = !DILocation(line: 0, scope: !1771, inlinedAt: !3039)
!3039 = distinct !DILocation(line: 1031, column: 3, scope: !3023, inlinedAt: !3033)
!3040 = !DILocation(line: 184, column: 6, scope: !1771, inlinedAt: !3039)
!3041 = !DILocation(line: 184, column: 12, scope: !1771, inlinedAt: !3039)
!3042 = !DILocation(line: 185, column: 8, scope: !1785, inlinedAt: !3039)
!3043 = !DILocation(line: 185, column: 23, scope: !1785, inlinedAt: !3039)
!3044 = !DILocation(line: 185, column: 19, scope: !1785, inlinedAt: !3039)
!3045 = !DILocation(line: 186, column: 5, scope: !1785, inlinedAt: !3039)
!3046 = !DILocation(line: 187, column: 6, scope: !1771, inlinedAt: !3039)
!3047 = !DILocation(line: 187, column: 17, scope: !1771, inlinedAt: !3039)
!3048 = !DILocation(line: 188, column: 6, scope: !1771, inlinedAt: !3039)
!3049 = !DILocation(line: 188, column: 18, scope: !1771, inlinedAt: !3039)
!3050 = !DILocation(line: 1032, column: 10, scope: !3023, inlinedAt: !3033)
!3051 = !DILocation(line: 1033, column: 1, scope: !3023, inlinedAt: !3033)
!3052 = !DILocation(line: 1021, column: 3, scope: !3014)
!3053 = !DILocation(line: 0, scope: !3023)
!3054 = !DILocation(line: 1030, column: 3, scope: !3023)
!3055 = !DILocation(line: 1030, column: 26, scope: !3023)
!3056 = !DILocation(line: 1030, column: 30, scope: !3023)
!3057 = !DILocation(line: 0, scope: !1771, inlinedAt: !3058)
!3058 = distinct !DILocation(line: 1031, column: 3, scope: !3023)
!3059 = !DILocation(line: 184, column: 6, scope: !1771, inlinedAt: !3058)
!3060 = !DILocation(line: 184, column: 12, scope: !1771, inlinedAt: !3058)
!3061 = !DILocation(line: 185, column: 8, scope: !1785, inlinedAt: !3058)
!3062 = !DILocation(line: 185, column: 23, scope: !1785, inlinedAt: !3058)
!3063 = !DILocation(line: 185, column: 19, scope: !1785, inlinedAt: !3058)
!3064 = !DILocation(line: 186, column: 5, scope: !1785, inlinedAt: !3058)
!3065 = !DILocation(line: 187, column: 6, scope: !1771, inlinedAt: !3058)
!3066 = !DILocation(line: 187, column: 17, scope: !1771, inlinedAt: !3058)
!3067 = !DILocation(line: 188, column: 6, scope: !1771, inlinedAt: !3058)
!3068 = !DILocation(line: 188, column: 18, scope: !1771, inlinedAt: !3058)
!3069 = !DILocation(line: 1032, column: 10, scope: !3023)
!3070 = !DILocation(line: 1033, column: 1, scope: !3023)
!3071 = !DILocation(line: 1032, column: 3, scope: !3023)
!3072 = distinct !DISubprogram(name: "quotearg_custom", scope: !245, file: !245, line: 1036, type: !3073, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !3075)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!17, !19, !19, !19}
!3075 = !{!3076, !3077, !3078}
!3076 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3072, file: !245, line: 1036, type: !19)
!3077 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3072, file: !245, line: 1036, type: !19)
!3078 = !DILocalVariable(name: "arg", arg: 3, scope: !3072, file: !245, line: 1037, type: !19)
!3079 = !DILocation(line: 1030, column: 26, scope: !3023, inlinedAt: !3080)
!3080 = distinct !DILocation(line: 1021, column: 10, scope: !3014, inlinedAt: !3081)
!3081 = distinct !DILocation(line: 1039, column: 10, scope: !3072)
!3082 = !DILocation(line: 0, scope: !3072)
!3083 = !DILocation(line: 0, scope: !3014, inlinedAt: !3081)
!3084 = !DILocation(line: 0, scope: !3023, inlinedAt: !3080)
!3085 = !DILocation(line: 1030, column: 3, scope: !3023, inlinedAt: !3080)
!3086 = !DILocation(line: 1030, column: 30, scope: !3023, inlinedAt: !3080)
!3087 = !DILocation(line: 0, scope: !1771, inlinedAt: !3088)
!3088 = distinct !DILocation(line: 1031, column: 3, scope: !3023, inlinedAt: !3080)
!3089 = !DILocation(line: 184, column: 6, scope: !1771, inlinedAt: !3088)
!3090 = !DILocation(line: 184, column: 12, scope: !1771, inlinedAt: !3088)
!3091 = !DILocation(line: 185, column: 8, scope: !1785, inlinedAt: !3088)
!3092 = !DILocation(line: 185, column: 23, scope: !1785, inlinedAt: !3088)
!3093 = !DILocation(line: 185, column: 19, scope: !1785, inlinedAt: !3088)
!3094 = !DILocation(line: 186, column: 5, scope: !1785, inlinedAt: !3088)
!3095 = !DILocation(line: 187, column: 6, scope: !1771, inlinedAt: !3088)
!3096 = !DILocation(line: 187, column: 17, scope: !1771, inlinedAt: !3088)
!3097 = !DILocation(line: 188, column: 6, scope: !1771, inlinedAt: !3088)
!3098 = !DILocation(line: 188, column: 18, scope: !1771, inlinedAt: !3088)
!3099 = !DILocation(line: 1032, column: 10, scope: !3023, inlinedAt: !3080)
!3100 = !DILocation(line: 1033, column: 1, scope: !3023, inlinedAt: !3080)
!3101 = !DILocation(line: 1039, column: 3, scope: !3072)
!3102 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !245, file: !245, line: 1043, type: !3103, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !3105)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!17, !19, !19, !19, !76}
!3105 = !{!3106, !3107, !3108, !3109}
!3106 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3102, file: !245, line: 1043, type: !19)
!3107 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3102, file: !245, line: 1043, type: !19)
!3108 = !DILocalVariable(name: "arg", arg: 3, scope: !3102, file: !245, line: 1044, type: !19)
!3109 = !DILocalVariable(name: "argsize", arg: 4, scope: !3102, file: !245, line: 1044, type: !76)
!3110 = !DILocation(line: 1030, column: 26, scope: !3023, inlinedAt: !3111)
!3111 = distinct !DILocation(line: 1046, column: 10, scope: !3102)
!3112 = !DILocation(line: 0, scope: !3102)
!3113 = !DILocation(line: 0, scope: !3023, inlinedAt: !3111)
!3114 = !DILocation(line: 1030, column: 3, scope: !3023, inlinedAt: !3111)
!3115 = !DILocation(line: 1030, column: 30, scope: !3023, inlinedAt: !3111)
!3116 = !DILocation(line: 0, scope: !1771, inlinedAt: !3117)
!3117 = distinct !DILocation(line: 1031, column: 3, scope: !3023, inlinedAt: !3111)
!3118 = !DILocation(line: 184, column: 6, scope: !1771, inlinedAt: !3117)
!3119 = !DILocation(line: 184, column: 12, scope: !1771, inlinedAt: !3117)
!3120 = !DILocation(line: 185, column: 8, scope: !1785, inlinedAt: !3117)
!3121 = !DILocation(line: 185, column: 23, scope: !1785, inlinedAt: !3117)
!3122 = !DILocation(line: 185, column: 19, scope: !1785, inlinedAt: !3117)
!3123 = !DILocation(line: 186, column: 5, scope: !1785, inlinedAt: !3117)
!3124 = !DILocation(line: 187, column: 6, scope: !1771, inlinedAt: !3117)
!3125 = !DILocation(line: 187, column: 17, scope: !1771, inlinedAt: !3117)
!3126 = !DILocation(line: 188, column: 6, scope: !1771, inlinedAt: !3117)
!3127 = !DILocation(line: 188, column: 18, scope: !1771, inlinedAt: !3117)
!3128 = !DILocation(line: 1032, column: 10, scope: !3023, inlinedAt: !3111)
!3129 = !DILocation(line: 1033, column: 1, scope: !3023, inlinedAt: !3111)
!3130 = !DILocation(line: 1046, column: 3, scope: !3102)
!3131 = distinct !DISubprogram(name: "quote_n_mem", scope: !245, file: !245, line: 1061, type: !3132, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !3134)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!19, !21, !19, !76}
!3134 = !{!3135, !3136, !3137}
!3135 = !DILocalVariable(name: "n", arg: 1, scope: !3131, file: !245, line: 1061, type: !21)
!3136 = !DILocalVariable(name: "arg", arg: 2, scope: !3131, file: !245, line: 1061, type: !19)
!3137 = !DILocalVariable(name: "argsize", arg: 3, scope: !3131, file: !245, line: 1061, type: !76)
!3138 = !DILocation(line: 0, scope: !3131)
!3139 = !DILocation(line: 1063, column: 10, scope: !3131)
!3140 = !DILocation(line: 1063, column: 3, scope: !3131)
!3141 = distinct !DISubprogram(name: "quote_mem", scope: !245, file: !245, line: 1067, type: !3142, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !3144)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!19, !19, !76}
!3144 = !{!3145, !3146}
!3145 = !DILocalVariable(name: "arg", arg: 1, scope: !3141, file: !245, line: 1067, type: !19)
!3146 = !DILocalVariable(name: "argsize", arg: 2, scope: !3141, file: !245, line: 1067, type: !76)
!3147 = !DILocation(line: 0, scope: !3141)
!3148 = !DILocation(line: 0, scope: !3131, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 1069, column: 10, scope: !3141)
!3150 = !DILocation(line: 1063, column: 10, scope: !3131, inlinedAt: !3149)
!3151 = !DILocation(line: 1069, column: 3, scope: !3141)
!3152 = distinct !DISubprogram(name: "quote_n", scope: !245, file: !245, line: 1073, type: !3153, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !3155)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!19, !21, !19}
!3155 = !{!3156, !3157}
!3156 = !DILocalVariable(name: "n", arg: 1, scope: !3152, file: !245, line: 1073, type: !21)
!3157 = !DILocalVariable(name: "arg", arg: 2, scope: !3152, file: !245, line: 1073, type: !19)
!3158 = !DILocation(line: 0, scope: !3152)
!3159 = !DILocation(line: 0, scope: !3131, inlinedAt: !3160)
!3160 = distinct !DILocation(line: 1075, column: 10, scope: !3152)
!3161 = !DILocation(line: 1063, column: 10, scope: !3131, inlinedAt: !3160)
!3162 = !DILocation(line: 1075, column: 3, scope: !3152)
!3163 = distinct !DISubprogram(name: "quote", scope: !245, file: !245, line: 1079, type: !130, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !3164)
!3164 = !{!3165}
!3165 = !DILocalVariable(name: "arg", arg: 1, scope: !3163, file: !245, line: 1079, type: !19)
!3166 = !DILocation(line: 0, scope: !3163)
!3167 = !DILocation(line: 0, scope: !3152, inlinedAt: !3168)
!3168 = distinct !DILocation(line: 1081, column: 10, scope: !3163)
!3169 = !DILocation(line: 0, scope: !3131, inlinedAt: !3170)
!3170 = distinct !DILocation(line: 1075, column: 10, scope: !3152, inlinedAt: !3168)
!3171 = !DILocation(line: 1063, column: 10, scope: !3131, inlinedAt: !3170)
!3172 = !DILocation(line: 1081, column: 3, scope: !3163)
!3173 = distinct !DISubprogram(name: "version_etc_arn", scope: !631, file: !631, line: 61, type: !3174, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !630, retainedNodes: !3180)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{null, !3176, !19, !19, !19, !3179, !76}
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3178, line: 7, baseType: !641)
!3178 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!3180 = !{!3181, !3182, !3183, !3184, !3185, !3186}
!3181 = !DILocalVariable(name: "stream", arg: 1, scope: !3173, file: !631, line: 61, type: !3176)
!3182 = !DILocalVariable(name: "command_name", arg: 2, scope: !3173, file: !631, line: 62, type: !19)
!3183 = !DILocalVariable(name: "package", arg: 3, scope: !3173, file: !631, line: 62, type: !19)
!3184 = !DILocalVariable(name: "version", arg: 4, scope: !3173, file: !631, line: 63, type: !19)
!3185 = !DILocalVariable(name: "authors", arg: 5, scope: !3173, file: !631, line: 64, type: !3179)
!3186 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3173, file: !631, line: 64, type: !76)
!3187 = !DILocation(line: 0, scope: !3173)
!3188 = !DILocation(line: 66, column: 7, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3173, file: !631, line: 66, column: 7)
!3190 = !DILocation(line: 66, column: 7, scope: !3173)
!3191 = !DILocation(line: 67, column: 5, scope: !3189)
!3192 = !DILocation(line: 69, column: 5, scope: !3189)
!3193 = !DILocation(line: 83, column: 3, scope: !3173)
!3194 = !DILocation(line: 85, column: 3, scope: !3173)
!3195 = !DILocation(line: 88, column: 3, scope: !3173)
!3196 = !DILocation(line: 95, column: 3, scope: !3173)
!3197 = !DILocation(line: 97, column: 3, scope: !3173)
!3198 = !DILocation(line: 105, column: 7, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3173, file: !631, line: 98, column: 5)
!3200 = !DILocation(line: 106, column: 7, scope: !3199)
!3201 = !DILocation(line: 109, column: 7, scope: !3199)
!3202 = !DILocation(line: 110, column: 7, scope: !3199)
!3203 = !DILocation(line: 113, column: 7, scope: !3199)
!3204 = !DILocation(line: 115, column: 7, scope: !3199)
!3205 = !DILocation(line: 120, column: 7, scope: !3199)
!3206 = !DILocation(line: 122, column: 7, scope: !3199)
!3207 = !DILocation(line: 127, column: 7, scope: !3199)
!3208 = !DILocation(line: 129, column: 7, scope: !3199)
!3209 = !DILocation(line: 134, column: 7, scope: !3199)
!3210 = !DILocation(line: 137, column: 7, scope: !3199)
!3211 = !DILocation(line: 142, column: 7, scope: !3199)
!3212 = !DILocation(line: 145, column: 7, scope: !3199)
!3213 = !DILocation(line: 150, column: 7, scope: !3199)
!3214 = !DILocation(line: 154, column: 7, scope: !3199)
!3215 = !DILocation(line: 159, column: 7, scope: !3199)
!3216 = !DILocation(line: 163, column: 7, scope: !3199)
!3217 = !DILocation(line: 170, column: 7, scope: !3199)
!3218 = !DILocation(line: 174, column: 7, scope: !3199)
!3219 = !DILocation(line: 176, column: 1, scope: !3173)
!3220 = distinct !DISubprogram(name: "version_etc_ar", scope: !631, file: !631, line: 183, type: !3221, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !630, retainedNodes: !3223)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{null, !3176, !19, !19, !19, !3179}
!3223 = !{!3224, !3225, !3226, !3227, !3228, !3229}
!3224 = !DILocalVariable(name: "stream", arg: 1, scope: !3220, file: !631, line: 183, type: !3176)
!3225 = !DILocalVariable(name: "command_name", arg: 2, scope: !3220, file: !631, line: 184, type: !19)
!3226 = !DILocalVariable(name: "package", arg: 3, scope: !3220, file: !631, line: 184, type: !19)
!3227 = !DILocalVariable(name: "version", arg: 4, scope: !3220, file: !631, line: 185, type: !19)
!3228 = !DILocalVariable(name: "authors", arg: 5, scope: !3220, file: !631, line: 185, type: !3179)
!3229 = !DILocalVariable(name: "n_authors", scope: !3220, file: !631, line: 187, type: !76)
!3230 = !DILocation(line: 0, scope: !3220)
!3231 = !DILocation(line: 189, column: 8, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3220, file: !631, line: 189, column: 3)
!3233 = !DILocation(line: 0, scope: !3232)
!3234 = !DILocation(line: 189, column: 23, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3232, file: !631, line: 189, column: 3)
!3236 = !DILocation(line: 189, column: 3, scope: !3232)
!3237 = !DILocation(line: 189, column: 52, scope: !3235)
!3238 = distinct !{!3238, !3236, !3239}
!3239 = !DILocation(line: 190, column: 5, scope: !3232)
!3240 = !DILocation(line: 191, column: 3, scope: !3220)
!3241 = !DILocation(line: 192, column: 1, scope: !3220)
!3242 = distinct !DISubprogram(name: "version_etc_va", scope: !631, file: !631, line: 199, type: !3243, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !630, retainedNodes: !3252)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{null, !3176, !19, !19, !19, !3245}
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !631, line: 192, size: 192, elements: !3247)
!3247 = !{!3248, !3249, !3250, !3251}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3246, file: !631, line: 192, baseType: !7, size: 32)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3246, file: !631, line: 192, baseType: !7, size: 32, offset: 32)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3246, file: !631, line: 192, baseType: !74, size: 64, offset: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3246, file: !631, line: 192, baseType: !74, size: 64, offset: 128)
!3252 = !{!3253, !3254, !3255, !3256, !3257, !3258, !3259}
!3253 = !DILocalVariable(name: "stream", arg: 1, scope: !3242, file: !631, line: 199, type: !3176)
!3254 = !DILocalVariable(name: "command_name", arg: 2, scope: !3242, file: !631, line: 200, type: !19)
!3255 = !DILocalVariable(name: "package", arg: 3, scope: !3242, file: !631, line: 200, type: !19)
!3256 = !DILocalVariable(name: "version", arg: 4, scope: !3242, file: !631, line: 201, type: !19)
!3257 = !DILocalVariable(name: "authors", arg: 5, scope: !3242, file: !631, line: 201, type: !3245)
!3258 = !DILocalVariable(name: "n_authors", scope: !3242, file: !631, line: 203, type: !76)
!3259 = !DILocalVariable(name: "authtab", scope: !3242, file: !631, line: 204, type: !3260)
!3260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 640, elements: !356)
!3261 = !DILocation(line: 0, scope: !3242)
!3262 = !DILocation(line: 204, column: 3, scope: !3242)
!3263 = !DILocation(line: 204, column: 15, scope: !3242)
!3264 = !DILocation(line: 0, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3266, file: !631, line: 206, column: 3)
!3266 = distinct !DILexicalBlock(scope: !3242, file: !631, line: 206, column: 3)
!3267 = !DILocation(line: 208, column: 35, scope: !3265)
!3268 = !DILocation(line: 208, column: 14, scope: !3265)
!3269 = !DILocation(line: 208, column: 33, scope: !3265)
!3270 = !DILocation(line: 208, column: 67, scope: !3265)
!3271 = !DILocation(line: 206, column: 3, scope: !3266)
!3272 = !DILocation(line: 0, scope: !3266)
!3273 = !DILocation(line: 211, column: 3, scope: !3242)
!3274 = !DILocation(line: 213, column: 1, scope: !3242)
!3275 = distinct !DISubprogram(name: "version_etc", scope: !631, file: !631, line: 230, type: !3276, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !630, retainedNodes: !3278)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{null, !3176, !19, !19, !19, null}
!3278 = !{!3279, !3280, !3281, !3282, !3283}
!3279 = !DILocalVariable(name: "stream", arg: 1, scope: !3275, file: !631, line: 230, type: !3176)
!3280 = !DILocalVariable(name: "command_name", arg: 2, scope: !3275, file: !631, line: 231, type: !19)
!3281 = !DILocalVariable(name: "package", arg: 3, scope: !3275, file: !631, line: 231, type: !19)
!3282 = !DILocalVariable(name: "version", arg: 4, scope: !3275, file: !631, line: 232, type: !19)
!3283 = !DILocalVariable(name: "authors", scope: !3275, file: !631, line: 234, type: !3284)
!3284 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !24, line: 52, baseType: !3285)
!3285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3286, line: 32, baseType: !3287)
!3286 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!3287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !631, line: 234, baseType: !3288)
!3288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3246, size: 192, elements: !59)
!3289 = !DILocation(line: 0, scope: !3275)
!3290 = !DILocation(line: 234, column: 3, scope: !3275)
!3291 = !DILocation(line: 234, column: 11, scope: !3275)
!3292 = !DILocation(line: 236, column: 3, scope: !3275)
!3293 = !DILocation(line: 237, column: 3, scope: !3275)
!3294 = !DILocation(line: 238, column: 3, scope: !3275)
!3295 = !DILocation(line: 239, column: 1, scope: !3275)
!3296 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !631, file: !631, line: 242, type: !103, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !630, retainedNodes: !22)
!3297 = !DILocation(line: 244, column: 3, scope: !3296)
!3298 = !DILocation(line: 249, column: 3, scope: !3296)
!3299 = !DILocation(line: 255, column: 3, scope: !3296)
!3300 = !DILocation(line: 260, column: 3, scope: !3296)
!3301 = !DILocation(line: 262, column: 1, scope: !3296)
!3302 = distinct !DISubprogram(name: "xnmalloc", scope: !282, file: !282, line: 99, type: !3303, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !3305)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!74, !76, !76}
!3305 = !{!3306, !3307}
!3306 = !DILocalVariable(name: "n", arg: 1, scope: !3302, file: !282, line: 99, type: !76)
!3307 = !DILocalVariable(name: "s", arg: 2, scope: !3302, file: !282, line: 99, type: !76)
!3308 = !DILocation(line: 0, scope: !3302)
!3309 = !DILocation(line: 101, column: 7, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3302, file: !282, line: 101, column: 7)
!3311 = !DILocation(line: 101, column: 7, scope: !3302)
!3312 = !DILocation(line: 102, column: 5, scope: !3310)
!3313 = !DILocation(line: 103, column: 21, scope: !3302)
!3314 = !DILocalVariable(name: "n", arg: 1, scope: !3315, file: !673, line: 39, type: !76)
!3315 = distinct !DISubprogram(name: "xmalloc", scope: !673, file: !673, line: 39, type: !3316, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !3318)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!74, !76}
!3318 = !{!3314, !3319}
!3319 = !DILocalVariable(name: "p", scope: !3315, file: !673, line: 41, type: !74)
!3320 = !DILocation(line: 0, scope: !3315, inlinedAt: !3321)
!3321 = distinct !DILocation(line: 103, column: 10, scope: !3302)
!3322 = !DILocation(line: 41, column: 13, scope: !3315, inlinedAt: !3321)
!3323 = !DILocation(line: 42, column: 8, scope: !3324, inlinedAt: !3321)
!3324 = distinct !DILexicalBlock(scope: !3315, file: !673, line: 42, column: 7)
!3325 = !DILocation(line: 42, column: 15, scope: !3324, inlinedAt: !3321)
!3326 = !DILocation(line: 42, column: 10, scope: !3324, inlinedAt: !3321)
!3327 = !DILocation(line: 43, column: 5, scope: !3324, inlinedAt: !3321)
!3328 = !DILocation(line: 103, column: 3, scope: !3302)
!3329 = !DILocation(line: 0, scope: !3315)
!3330 = !DILocation(line: 41, column: 13, scope: !3315)
!3331 = !DILocation(line: 42, column: 8, scope: !3324)
!3332 = !DILocation(line: 42, column: 15, scope: !3324)
!3333 = !DILocation(line: 42, column: 10, scope: !3324)
!3334 = !DILocation(line: 43, column: 5, scope: !3324)
!3335 = !DILocation(line: 44, column: 3, scope: !3315)
!3336 = distinct !DISubprogram(name: "xnrealloc", scope: !282, file: !282, line: 112, type: !3337, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !3339)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!74, !74, !76, !76}
!3339 = !{!3340, !3341, !3342}
!3340 = !DILocalVariable(name: "p", arg: 1, scope: !3336, file: !282, line: 112, type: !74)
!3341 = !DILocalVariable(name: "n", arg: 2, scope: !3336, file: !282, line: 112, type: !76)
!3342 = !DILocalVariable(name: "s", arg: 3, scope: !3336, file: !282, line: 112, type: !76)
!3343 = !DILocation(line: 0, scope: !3336)
!3344 = !DILocation(line: 114, column: 7, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3336, file: !282, line: 114, column: 7)
!3346 = !DILocation(line: 114, column: 7, scope: !3336)
!3347 = !DILocation(line: 115, column: 5, scope: !3345)
!3348 = !DILocation(line: 116, column: 25, scope: !3336)
!3349 = !DILocalVariable(name: "p", arg: 1, scope: !3350, file: !673, line: 51, type: !74)
!3350 = distinct !DISubprogram(name: "xrealloc", scope: !673, file: !673, line: 51, type: !3351, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !3353)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!74, !74, !76}
!3353 = !{!3349, !3354}
!3354 = !DILocalVariable(name: "n", arg: 2, scope: !3350, file: !673, line: 51, type: !76)
!3355 = !DILocation(line: 0, scope: !3350, inlinedAt: !3356)
!3356 = distinct !DILocation(line: 116, column: 10, scope: !3336)
!3357 = !DILocation(line: 53, column: 8, scope: !3358, inlinedAt: !3356)
!3358 = distinct !DILexicalBlock(scope: !3350, file: !673, line: 53, column: 7)
!3359 = !DILocation(line: 53, column: 13, scope: !3358, inlinedAt: !3356)
!3360 = !DILocation(line: 53, column: 10, scope: !3358, inlinedAt: !3356)
!3361 = !DILocation(line: 57, column: 7, scope: !3362, inlinedAt: !3356)
!3362 = distinct !DILexicalBlock(scope: !3358, file: !673, line: 54, column: 5)
!3363 = !DILocation(line: 58, column: 7, scope: !3362, inlinedAt: !3356)
!3364 = !DILocation(line: 61, column: 7, scope: !3350, inlinedAt: !3356)
!3365 = !DILocation(line: 62, column: 8, scope: !3366, inlinedAt: !3356)
!3366 = distinct !DILexicalBlock(scope: !3350, file: !673, line: 62, column: 7)
!3367 = !DILocation(line: 62, column: 13, scope: !3366, inlinedAt: !3356)
!3368 = !DILocation(line: 62, column: 10, scope: !3366, inlinedAt: !3356)
!3369 = !DILocation(line: 63, column: 5, scope: !3366, inlinedAt: !3356)
!3370 = !DILocation(line: 116, column: 3, scope: !3336)
!3371 = !DILocation(line: 0, scope: !3350)
!3372 = !DILocation(line: 53, column: 8, scope: !3358)
!3373 = !DILocation(line: 53, column: 13, scope: !3358)
!3374 = !DILocation(line: 53, column: 10, scope: !3358)
!3375 = !DILocation(line: 57, column: 7, scope: !3362)
!3376 = !DILocation(line: 58, column: 7, scope: !3362)
!3377 = !DILocation(line: 61, column: 7, scope: !3350)
!3378 = !DILocation(line: 62, column: 8, scope: !3366)
!3379 = !DILocation(line: 62, column: 13, scope: !3366)
!3380 = !DILocation(line: 62, column: 10, scope: !3366)
!3381 = !DILocation(line: 63, column: 5, scope: !3366)
!3382 = !DILocation(line: 65, column: 1, scope: !3350)
!3383 = !DILocation(line: 0, scope: !676)
!3384 = !DILocation(line: 176, column: 14, scope: !676)
!3385 = !DILocation(line: 178, column: 9, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !676, file: !282, line: 178, column: 7)
!3387 = !DILocation(line: 178, column: 7, scope: !676)
!3388 = !DILocation(line: 180, column: 13, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3390, file: !282, line: 180, column: 11)
!3390 = distinct !DILexicalBlock(scope: !3386, file: !282, line: 179, column: 5)
!3391 = !DILocation(line: 180, column: 11, scope: !3390)
!3392 = !DILocation(line: 188, column: 30, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3389, file: !282, line: 181, column: 9)
!3394 = !DILocation(line: 189, column: 16, scope: !3393)
!3395 = !DILocation(line: 189, column: 13, scope: !3393)
!3396 = !DILocation(line: 190, column: 9, scope: !3393)
!3397 = !DILocation(line: 191, column: 11, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3390, file: !282, line: 191, column: 11)
!3399 = !DILocation(line: 191, column: 11, scope: !3390)
!3400 = !DILocation(line: 206, column: 7, scope: !676)
!3401 = !DILocation(line: 207, column: 25, scope: !676)
!3402 = !DILocation(line: 0, scope: !3350, inlinedAt: !3403)
!3403 = distinct !DILocation(line: 207, column: 10, scope: !676)
!3404 = !DILocation(line: 53, column: 10, scope: !3358, inlinedAt: !3403)
!3405 = !DILocation(line: 192, column: 9, scope: !3398)
!3406 = !DILocation(line: 200, column: 69, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3408, file: !282, line: 200, column: 11)
!3408 = distinct !DILexicalBlock(scope: !3386, file: !282, line: 195, column: 5)
!3409 = !DILocation(line: 201, column: 11, scope: !3407)
!3410 = !DILocation(line: 200, column: 11, scope: !3408)
!3411 = !DILocation(line: 202, column: 9, scope: !3407)
!3412 = !DILocation(line: 203, column: 14, scope: !3408)
!3413 = !DILocation(line: 203, column: 18, scope: !3408)
!3414 = !DILocation(line: 203, column: 9, scope: !3408)
!3415 = !DILocation(line: 53, column: 8, scope: !3358, inlinedAt: !3403)
!3416 = !DILocation(line: 57, column: 7, scope: !3362, inlinedAt: !3403)
!3417 = !DILocation(line: 58, column: 7, scope: !3362, inlinedAt: !3403)
!3418 = !DILocation(line: 61, column: 7, scope: !3350, inlinedAt: !3403)
!3419 = !DILocation(line: 62, column: 8, scope: !3366, inlinedAt: !3403)
!3420 = !DILocation(line: 62, column: 13, scope: !3366, inlinedAt: !3403)
!3421 = !DILocation(line: 62, column: 10, scope: !3366, inlinedAt: !3403)
!3422 = !DILocation(line: 63, column: 5, scope: !3366, inlinedAt: !3403)
!3423 = !DILocation(line: 207, column: 3, scope: !676)
!3424 = distinct !DISubprogram(name: "xcharalloc", scope: !282, file: !282, line: 216, type: !2586, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !3425)
!3425 = !{!3426}
!3426 = !DILocalVariable(name: "n", arg: 1, scope: !3424, file: !282, line: 216, type: !76)
!3427 = !DILocation(line: 0, scope: !3424)
!3428 = !DILocation(line: 0, scope: !3315, inlinedAt: !3429)
!3429 = distinct !DILocation(line: 218, column: 10, scope: !3424)
!3430 = !DILocation(line: 41, column: 13, scope: !3315, inlinedAt: !3429)
!3431 = !DILocation(line: 42, column: 8, scope: !3324, inlinedAt: !3429)
!3432 = !DILocation(line: 42, column: 15, scope: !3324, inlinedAt: !3429)
!3433 = !DILocation(line: 42, column: 10, scope: !3324, inlinedAt: !3429)
!3434 = !DILocation(line: 43, column: 5, scope: !3324, inlinedAt: !3429)
!3435 = !DILocation(line: 218, column: 3, scope: !3424)
!3436 = distinct !DISubprogram(name: "x2realloc", scope: !673, file: !673, line: 74, type: !3437, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !3439)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!74, !74, !679}
!3439 = !{!3440, !3441}
!3440 = !DILocalVariable(name: "p", arg: 1, scope: !3436, file: !673, line: 74, type: !74)
!3441 = !DILocalVariable(name: "pn", arg: 2, scope: !3436, file: !673, line: 74, type: !679)
!3442 = !DILocation(line: 0, scope: !3436)
!3443 = !DILocation(line: 0, scope: !676, inlinedAt: !3444)
!3444 = distinct !DILocation(line: 76, column: 10, scope: !3436)
!3445 = !DILocation(line: 176, column: 14, scope: !676, inlinedAt: !3444)
!3446 = !DILocation(line: 178, column: 9, scope: !3386, inlinedAt: !3444)
!3447 = !DILocation(line: 178, column: 7, scope: !676, inlinedAt: !3444)
!3448 = !DILocation(line: 180, column: 13, scope: !3389, inlinedAt: !3444)
!3449 = !DILocation(line: 180, column: 11, scope: !3390, inlinedAt: !3444)
!3450 = !DILocation(line: 191, column: 11, scope: !3398, inlinedAt: !3444)
!3451 = !DILocation(line: 191, column: 11, scope: !3390, inlinedAt: !3444)
!3452 = !DILocation(line: 206, column: 7, scope: !676, inlinedAt: !3444)
!3453 = !DILocation(line: 0, scope: !3350, inlinedAt: !3454)
!3454 = distinct !DILocation(line: 207, column: 10, scope: !676, inlinedAt: !3444)
!3455 = !DILocation(line: 53, column: 10, scope: !3358, inlinedAt: !3454)
!3456 = !DILocation(line: 192, column: 9, scope: !3398, inlinedAt: !3444)
!3457 = !DILocation(line: 201, column: 11, scope: !3407, inlinedAt: !3444)
!3458 = !DILocation(line: 200, column: 11, scope: !3408, inlinedAt: !3444)
!3459 = !DILocation(line: 202, column: 9, scope: !3407, inlinedAt: !3444)
!3460 = !DILocation(line: 203, column: 14, scope: !3408, inlinedAt: !3444)
!3461 = !DILocation(line: 203, column: 18, scope: !3408, inlinedAt: !3444)
!3462 = !DILocation(line: 203, column: 9, scope: !3408, inlinedAt: !3444)
!3463 = !DILocation(line: 53, column: 8, scope: !3358, inlinedAt: !3454)
!3464 = !DILocation(line: 57, column: 7, scope: !3362, inlinedAt: !3454)
!3465 = !DILocation(line: 58, column: 7, scope: !3362, inlinedAt: !3454)
!3466 = !DILocation(line: 61, column: 7, scope: !3350, inlinedAt: !3454)
!3467 = !DILocation(line: 62, column: 8, scope: !3366, inlinedAt: !3454)
!3468 = !DILocation(line: 62, column: 13, scope: !3366, inlinedAt: !3454)
!3469 = !DILocation(line: 62, column: 10, scope: !3366, inlinedAt: !3454)
!3470 = !DILocation(line: 63, column: 5, scope: !3366, inlinedAt: !3454)
!3471 = !DILocation(line: 76, column: 3, scope: !3436)
!3472 = distinct !DISubprogram(name: "xzalloc", scope: !673, file: !673, line: 84, type: !3316, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !3473)
!3473 = !{!3474}
!3474 = !DILocalVariable(name: "n", arg: 1, scope: !3472, file: !673, line: 84, type: !76)
!3475 = !DILocation(line: 0, scope: !3472)
!3476 = !DILocalVariable(name: "n", arg: 1, scope: !3477, file: !673, line: 93, type: !76)
!3477 = distinct !DISubprogram(name: "xcalloc", scope: !673, file: !673, line: 93, type: !3303, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !3478)
!3478 = !{!3476, !3479, !3480}
!3479 = !DILocalVariable(name: "s", arg: 2, scope: !3477, file: !673, line: 93, type: !76)
!3480 = !DILocalVariable(name: "p", scope: !3477, file: !673, line: 95, type: !74)
!3481 = !DILocation(line: 0, scope: !3477, inlinedAt: !3482)
!3482 = distinct !DILocation(line: 86, column: 10, scope: !3472)
!3483 = !DILocation(line: 100, column: 7, scope: !3484, inlinedAt: !3482)
!3484 = distinct !DILexicalBlock(scope: !3477, file: !673, line: 100, column: 7)
!3485 = !DILocation(line: 101, column: 7, scope: !3484, inlinedAt: !3482)
!3486 = !DILocation(line: 101, column: 18, scope: !3484, inlinedAt: !3482)
!3487 = !DILocation(line: 101, column: 16, scope: !3484, inlinedAt: !3482)
!3488 = !DILocation(line: 100, column: 7, scope: !3477, inlinedAt: !3482)
!3489 = !DILocation(line: 102, column: 5, scope: !3484, inlinedAt: !3482)
!3490 = !DILocation(line: 86, column: 3, scope: !3472)
!3491 = !DILocation(line: 0, scope: !3477)
!3492 = !DILocation(line: 100, column: 7, scope: !3484)
!3493 = !DILocation(line: 101, column: 7, scope: !3484)
!3494 = !DILocation(line: 101, column: 18, scope: !3484)
!3495 = !DILocation(line: 101, column: 16, scope: !3484)
!3496 = !DILocation(line: 100, column: 7, scope: !3477)
!3497 = !DILocation(line: 102, column: 5, scope: !3484)
!3498 = !DILocation(line: 103, column: 3, scope: !3477)
!3499 = distinct !DISubprogram(name: "xmemdup", scope: !673, file: !673, line: 111, type: !3500, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !3502)
!3500 = !DISubroutineType(types: !3501)
!3501 = !{!74, !285, !76}
!3502 = !{!3503, !3504}
!3503 = !DILocalVariable(name: "p", arg: 1, scope: !3499, file: !673, line: 111, type: !285)
!3504 = !DILocalVariable(name: "s", arg: 2, scope: !3499, file: !673, line: 111, type: !76)
!3505 = !DILocation(line: 0, scope: !3499)
!3506 = !DILocation(line: 0, scope: !3315, inlinedAt: !3507)
!3507 = distinct !DILocation(line: 113, column: 18, scope: !3499)
!3508 = !DILocation(line: 41, column: 13, scope: !3315, inlinedAt: !3507)
!3509 = !DILocation(line: 42, column: 8, scope: !3324, inlinedAt: !3507)
!3510 = !DILocation(line: 42, column: 15, scope: !3324, inlinedAt: !3507)
!3511 = !DILocation(line: 42, column: 10, scope: !3324, inlinedAt: !3507)
!3512 = !DILocation(line: 43, column: 5, scope: !3324, inlinedAt: !3507)
!3513 = !DILocalVariable(name: "__dest", arg: 1, scope: !3514, file: !2119, line: 31, type: !3517)
!3514 = distinct !DISubprogram(name: "memcpy", scope: !2119, file: !2119, line: 31, type: !3515, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !3519)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{!74, !3517, !3518, !76}
!3517 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !74)
!3518 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !285)
!3519 = !{!3513, !3520, !3521}
!3520 = !DILocalVariable(name: "__src", arg: 2, scope: !3514, file: !2119, line: 31, type: !3518)
!3521 = !DILocalVariable(name: "__len", arg: 3, scope: !3514, file: !2119, line: 31, type: !76)
!3522 = !DILocation(line: 0, scope: !3514, inlinedAt: !3523)
!3523 = distinct !DILocation(line: 113, column: 10, scope: !3499)
!3524 = !DILocation(line: 34, column: 10, scope: !3514, inlinedAt: !3523)
!3525 = !DILocation(line: 113, column: 3, scope: !3499)
!3526 = distinct !DISubprogram(name: "xstrdup", scope: !673, file: !673, line: 119, type: !96, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !3527)
!3527 = !{!3528}
!3528 = !DILocalVariable(name: "string", arg: 1, scope: !3526, file: !673, line: 119, type: !19)
!3529 = !DILocation(line: 0, scope: !3526)
!3530 = !DILocation(line: 121, column: 27, scope: !3526)
!3531 = !DILocation(line: 121, column: 43, scope: !3526)
!3532 = !DILocation(line: 0, scope: !3499, inlinedAt: !3533)
!3533 = distinct !DILocation(line: 121, column: 10, scope: !3526)
!3534 = !DILocation(line: 0, scope: !3315, inlinedAt: !3535)
!3535 = distinct !DILocation(line: 113, column: 18, scope: !3499, inlinedAt: !3533)
!3536 = !DILocation(line: 41, column: 13, scope: !3315, inlinedAt: !3535)
!3537 = !DILocation(line: 42, column: 8, scope: !3324, inlinedAt: !3535)
!3538 = !DILocation(line: 42, column: 15, scope: !3324, inlinedAt: !3535)
!3539 = !DILocation(line: 42, column: 10, scope: !3324, inlinedAt: !3535)
!3540 = !DILocation(line: 43, column: 5, scope: !3324, inlinedAt: !3535)
!3541 = !DILocation(line: 0, scope: !3514, inlinedAt: !3542)
!3542 = distinct !DILocation(line: 113, column: 10, scope: !3499, inlinedAt: !3533)
!3543 = !DILocation(line: 34, column: 10, scope: !3514, inlinedAt: !3542)
!3544 = !DILocation(line: 121, column: 3, scope: !3526)
!3545 = distinct !DISubprogram(name: "xalloc_die", scope: !694, file: !694, line: 32, type: !103, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !22)
!3546 = !DILocation(line: 34, column: 10, scope: !3545)
!3547 = !DILocation(line: 34, column: 33, scope: !3545)
!3548 = !DILocation(line: 34, column: 3, scope: !3545)
!3549 = !DILocation(line: 40, column: 3, scope: !3545)
!3550 = distinct !DISubprogram(name: "xnumtoumax", scope: !3551, file: !3551, line: 36, type: !3552, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !3557)
!3551 = !DIFile(filename: "./lib/xdectoint.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!3554, !19, !21, !3554, !3554, !19, !19, !21}
!3554 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !3555, line: 102, baseType: !3556)
!3555 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!3556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !51, line: 73, baseType: !78)
!3557 = !{!3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3567}
!3558 = !DILocalVariable(name: "n_str", arg: 1, scope: !3550, file: !3551, line: 36, type: !19)
!3559 = !DILocalVariable(name: "base", arg: 2, scope: !3550, file: !3551, line: 36, type: !21)
!3560 = !DILocalVariable(name: "min", arg: 3, scope: !3550, file: !3551, line: 36, type: !3554)
!3561 = !DILocalVariable(name: "max", arg: 4, scope: !3550, file: !3551, line: 36, type: !3554)
!3562 = !DILocalVariable(name: "suffixes", arg: 5, scope: !3550, file: !3551, line: 37, type: !19)
!3563 = !DILocalVariable(name: "err", arg: 6, scope: !3550, file: !3551, line: 37, type: !19)
!3564 = !DILocalVariable(name: "err_exit", arg: 7, scope: !3550, file: !3551, line: 37, type: !21)
!3565 = !DILocalVariable(name: "s_err", scope: !3550, file: !3551, line: 39, type: !3566)
!3566 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !700, line: 38, baseType: !699)
!3567 = !DILocalVariable(name: "tnum", scope: !3550, file: !3551, line: 41, type: !3554)
!3568 = !DILocation(line: 0, scope: !3550)
!3569 = !DILocation(line: 41, column: 3, scope: !3550)
!3570 = !DILocation(line: 42, column: 11, scope: !3550)
!3571 = !DILocation(line: 44, column: 7, scope: !3550)
!3572 = !DILocation(line: 69, column: 50, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3574, file: !3551, line: 67, column: 5)
!3574 = distinct !DILexicalBlock(scope: !3550, file: !3551, line: 66, column: 7)
!3575 = !DILocation(line: 46, column: 11, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3577, file: !3551, line: 46, column: 11)
!3577 = distinct !DILexicalBlock(scope: !3578, file: !3551, line: 45, column: 5)
!3578 = distinct !DILexicalBlock(scope: !3550, file: !3551, line: 44, column: 7)
!3579 = !DILocation(line: 46, column: 16, scope: !3576)
!3580 = !DILocation(line: 46, column: 29, scope: !3576)
!3581 = !DILocation(line: 46, column: 22, scope: !3576)
!3582 = !DILocation(line: 51, column: 20, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3584, file: !3551, line: 51, column: 15)
!3584 = distinct !DILexicalBlock(scope: !3576, file: !3551, line: 47, column: 9)
!3585 = !DILocation(line: 0, scope: !3583)
!3586 = !DILocation(line: 51, column: 15, scope: !3584)
!3587 = !DILocation(line: 52, column: 19, scope: !3583)
!3588 = !DILocation(line: 66, column: 7, scope: !3550)
!3589 = !DILocation(line: 58, column: 19, scope: !3583)
!3590 = !DILocation(line: 62, column: 5, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3578, file: !3551, line: 61, column: 12)
!3592 = !DILocation(line: 62, column: 11, scope: !3591)
!3593 = !DILocation(line: 64, column: 5, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3591, file: !3551, line: 63, column: 12)
!3595 = !DILocation(line: 64, column: 11, scope: !3594)
!3596 = !DILocation(line: 69, column: 14, scope: !3573)
!3597 = !DILocation(line: 69, column: 56, scope: !3573)
!3598 = !DILocation(line: 70, column: 29, scope: !3573)
!3599 = !DILocation(line: 69, column: 7, scope: !3573)
!3600 = !DILocation(line: 73, column: 10, scope: !3550)
!3601 = !DILocation(line: 71, column: 5, scope: !3573)
!3602 = !DILocation(line: 74, column: 1, scope: !3550)
!3603 = !DILocation(line: 73, column: 3, scope: !3550)
!3604 = distinct !DISubprogram(name: "xdectoumax", scope: !3551, file: !3551, line: 82, type: !3605, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !3607)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{!3554, !19, !3554, !3554, !19, !19, !21}
!3607 = !{!3608, !3609, !3610, !3611, !3612, !3613}
!3608 = !DILocalVariable(name: "n_str", arg: 1, scope: !3604, file: !3551, line: 82, type: !19)
!3609 = !DILocalVariable(name: "min", arg: 2, scope: !3604, file: !3551, line: 82, type: !3554)
!3610 = !DILocalVariable(name: "max", arg: 3, scope: !3604, file: !3551, line: 82, type: !3554)
!3611 = !DILocalVariable(name: "suffixes", arg: 4, scope: !3604, file: !3551, line: 83, type: !19)
!3612 = !DILocalVariable(name: "err", arg: 5, scope: !3604, file: !3551, line: 83, type: !19)
!3613 = !DILocalVariable(name: "err_exit", arg: 6, scope: !3604, file: !3551, line: 83, type: !21)
!3614 = !DILocation(line: 0, scope: !3604)
!3615 = !DILocation(line: 85, column: 10, scope: !3604)
!3616 = !DILocation(line: 85, column: 3, scope: !3604)
!3617 = distinct !DISubprogram(name: "xstrtoumax", scope: !3618, file: !3618, line: 76, type: !3619, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3622)
!3618 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3619 = !DISubroutineType(types: !3620)
!3620 = !{!3566, !19, !711, !21, !3621, !19}
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3622 = !{!3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3635, !3636, !3639, !3640}
!3623 = !DILocalVariable(name: "s", arg: 1, scope: !3617, file: !3618, line: 76, type: !19)
!3624 = !DILocalVariable(name: "ptr", arg: 2, scope: !3617, file: !3618, line: 76, type: !711)
!3625 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3617, file: !3618, line: 76, type: !21)
!3626 = !DILocalVariable(name: "val", arg: 4, scope: !3617, file: !3618, line: 77, type: !3621)
!3627 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3617, file: !3618, line: 77, type: !19)
!3628 = !DILocalVariable(name: "t_ptr", scope: !3617, file: !3618, line: 79, type: !17)
!3629 = !DILocalVariable(name: "p", scope: !3617, file: !3618, line: 80, type: !711)
!3630 = !DILocalVariable(name: "tmp", scope: !3617, file: !3618, line: 81, type: !3554)
!3631 = !DILocalVariable(name: "err", scope: !3617, file: !3618, line: 82, type: !3566)
!3632 = !DILocalVariable(name: "q", scope: !3633, file: !3618, line: 92, type: !19)
!3633 = distinct !DILexicalBlock(scope: !3634, file: !3618, line: 91, column: 5)
!3634 = distinct !DILexicalBlock(scope: !3617, file: !3618, line: 90, column: 7)
!3635 = !DILocalVariable(name: "ch", scope: !3633, file: !3618, line: 93, type: !1738)
!3636 = !DILocalVariable(name: "base", scope: !3637, file: !3618, line: 129, type: !21)
!3637 = distinct !DILexicalBlock(scope: !3638, file: !3618, line: 128, column: 5)
!3638 = distinct !DILexicalBlock(scope: !3617, file: !3618, line: 127, column: 7)
!3639 = !DILocalVariable(name: "suffixes", scope: !3637, file: !3618, line: 130, type: !21)
!3640 = !DILocalVariable(name: "overflow", scope: !3637, file: !3618, line: 131, type: !3566)
!3641 = !DILocation(line: 0, scope: !3617)
!3642 = !DILocation(line: 79, column: 3, scope: !3617)
!3643 = !DILocation(line: 84, column: 3, scope: !3644)
!3644 = distinct !DILexicalBlock(scope: !3645, file: !3618, line: 84, column: 3)
!3645 = distinct !DILexicalBlock(scope: !3617, file: !3618, line: 84, column: 3)
!3646 = !DILocation(line: 86, column: 8, scope: !3617)
!3647 = !DILocation(line: 88, column: 3, scope: !3617)
!3648 = !DILocation(line: 88, column: 9, scope: !3617)
!3649 = !DILocation(line: 0, scope: !3633)
!3650 = !DILocation(line: 94, column: 7, scope: !3633)
!3651 = !DILocation(line: 94, column: 14, scope: !3633)
!3652 = !DILocation(line: 95, column: 15, scope: !3633)
!3653 = distinct !{!3653, !3650, !3654}
!3654 = !DILocation(line: 95, column: 17, scope: !3633)
!3655 = !DILocation(line: 96, column: 14, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3633, file: !3618, line: 96, column: 11)
!3657 = !DILocalVariable(name: "nptr", arg: 1, scope: !3658, file: !3659, line: 336, type: !3662)
!3658 = distinct !DISubprogram(name: "strtoumax", scope: !3659, file: !3659, line: 336, type: !3660, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3664)
!3659 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!3554, !3662, !3663, !21}
!3662 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !19)
!3663 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !711)
!3664 = !{!3657, !3665, !3666}
!3665 = !DILocalVariable(name: "endptr", arg: 2, scope: !3658, file: !3659, line: 336, type: !3663)
!3666 = !DILocalVariable(name: "base", arg: 3, scope: !3658, file: !3659, line: 336, type: !21)
!3667 = !DILocation(line: 0, scope: !3658, inlinedAt: !3668)
!3668 = distinct !DILocation(line: 100, column: 9, scope: !3617)
!3669 = !DILocation(line: 339, column: 10, scope: !3658, inlinedAt: !3668)
!3670 = !DILocation(line: 102, column: 7, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3617, file: !3618, line: 102, column: 7)
!3672 = !DILocation(line: 102, column: 10, scope: !3671)
!3673 = !DILocation(line: 102, column: 7, scope: !3617)
!3674 = !DILocation(line: 106, column: 11, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3676, file: !3618, line: 106, column: 11)
!3676 = distinct !DILexicalBlock(scope: !3671, file: !3618, line: 103, column: 5)
!3677 = !DILocation(line: 106, column: 26, scope: !3675)
!3678 = !DILocation(line: 106, column: 29, scope: !3675)
!3679 = !DILocation(line: 106, column: 33, scope: !3675)
!3680 = !DILocation(line: 106, column: 36, scope: !3675)
!3681 = !DILocation(line: 106, column: 11, scope: !3676)
!3682 = !DILocation(line: 111, column: 12, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3671, file: !3618, line: 111, column: 12)
!3684 = !DILocation(line: 111, column: 12, scope: !3671)
!3685 = !DILocation(line: 116, column: 5, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3683, file: !3618, line: 112, column: 5)
!3687 = !DILocation(line: 121, column: 8, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3617, file: !3618, line: 121, column: 7)
!3689 = !DILocation(line: 121, column: 7, scope: !3617)
!3690 = !DILocation(line: 123, column: 12, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3688, file: !3618, line: 122, column: 5)
!3692 = !DILocation(line: 124, column: 7, scope: !3691)
!3693 = !DILocation(line: 127, column: 7, scope: !3638)
!3694 = !DILocation(line: 127, column: 11, scope: !3638)
!3695 = !DILocation(line: 127, column: 7, scope: !3617)
!3696 = !DILocation(line: 0, scope: !3637)
!3697 = !DILocation(line: 133, column: 12, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3637, file: !3618, line: 133, column: 11)
!3699 = !DILocation(line: 133, column: 11, scope: !3637)
!3700 = !DILocation(line: 135, column: 16, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3698, file: !3618, line: 134, column: 9)
!3702 = !DILocation(line: 136, column: 22, scope: !3701)
!3703 = !DILocation(line: 136, column: 11, scope: !3701)
!3704 = !DILocation(line: 139, column: 7, scope: !3637)
!3705 = !DILocation(line: 151, column: 15, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3707, file: !3618, line: 151, column: 15)
!3707 = distinct !DILexicalBlock(scope: !3637, file: !3618, line: 140, column: 9)
!3708 = !DILocation(line: 151, column: 15, scope: !3707)
!3709 = !DILocation(line: 152, column: 21, scope: !3706)
!3710 = !DILocation(line: 152, column: 13, scope: !3706)
!3711 = !DILocation(line: 155, column: 21, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3713, file: !3618, line: 155, column: 21)
!3713 = distinct !DILexicalBlock(scope: !3706, file: !3618, line: 153, column: 15)
!3714 = !DILocation(line: 155, column: 29, scope: !3712)
!3715 = !DILocation(line: 155, column: 21, scope: !3713)
!3716 = !DILocation(line: 163, column: 17, scope: !3713)
!3717 = !DILocation(line: 167, column: 7, scope: !3637)
!3718 = !DILocalVariable(name: "err", scope: !3719, file: !3618, line: 67, type: !3566)
!3719 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3618, file: !3618, line: 65, type: !3720, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3722)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!3566, !3621, !21, !21}
!3722 = !{!3723, !3724, !3725, !3718}
!3723 = !DILocalVariable(name: "x", arg: 1, scope: !3719, file: !3618, line: 65, type: !3621)
!3724 = !DILocalVariable(name: "base", arg: 2, scope: !3719, file: !3618, line: 65, type: !21)
!3725 = !DILocalVariable(name: "power", arg: 3, scope: !3719, file: !3618, line: 65, type: !21)
!3726 = !DILocation(line: 0, scope: !3719, inlinedAt: !3727)
!3727 = distinct !DILocation(line: 221, column: 22, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3637, file: !3618, line: 168, column: 9)
!3729 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3730, file: !3618, line: 48, type: !21)
!3730 = distinct !DISubprogram(name: "bkm_scale", scope: !3618, file: !3618, line: 48, type: !3731, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3733)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!3566, !3621, !21}
!3733 = !{!3734, !3729}
!3734 = !DILocalVariable(name: "x", arg: 1, scope: !3730, file: !3618, line: 48, type: !3621)
!3735 = !DILocation(line: 0, scope: !3730, inlinedAt: !3736)
!3736 = distinct !DILocation(line: 69, column: 12, scope: !3719, inlinedAt: !3727)
!3737 = !DILocation(line: 55, column: 39, scope: !3738, inlinedAt: !3736)
!3738 = distinct !DILexicalBlock(scope: !3730, file: !3618, line: 55, column: 7)
!3739 = !DILocation(line: 55, column: 7, scope: !3730, inlinedAt: !3736)
!3740 = !DILocation(line: 69, column: 9, scope: !3719, inlinedAt: !3727)
!3741 = !DILocation(line: 229, column: 11, scope: !3637)
!3742 = !DILocation(line: 0, scope: !3719, inlinedAt: !3743)
!3743 = distinct !DILocation(line: 217, column: 22, scope: !3728)
!3744 = !DILocation(line: 0, scope: !3730, inlinedAt: !3745)
!3745 = distinct !DILocation(line: 69, column: 12, scope: !3719, inlinedAt: !3743)
!3746 = !DILocation(line: 55, column: 39, scope: !3738, inlinedAt: !3745)
!3747 = !DILocation(line: 55, column: 7, scope: !3730, inlinedAt: !3745)
!3748 = !DILocation(line: 69, column: 9, scope: !3719, inlinedAt: !3743)
!3749 = !DILocation(line: 0, scope: !3719, inlinedAt: !3750)
!3750 = distinct !DILocation(line: 204, column: 22, scope: !3728)
!3751 = !DILocation(line: 0, scope: !3730, inlinedAt: !3752)
!3752 = distinct !DILocation(line: 69, column: 12, scope: !3719, inlinedAt: !3750)
!3753 = !DILocation(line: 55, column: 39, scope: !3738, inlinedAt: !3752)
!3754 = !DILocation(line: 55, column: 7, scope: !3730, inlinedAt: !3752)
!3755 = !DILocation(line: 69, column: 9, scope: !3719, inlinedAt: !3750)
!3756 = !DILocation(line: 0, scope: !3719, inlinedAt: !3757)
!3757 = distinct !DILocation(line: 185, column: 22, scope: !3728)
!3758 = !DILocation(line: 0, scope: !3730, inlinedAt: !3759)
!3759 = distinct !DILocation(line: 69, column: 12, scope: !3719, inlinedAt: !3757)
!3760 = !DILocation(line: 55, column: 39, scope: !3738, inlinedAt: !3759)
!3761 = !DILocation(line: 55, column: 7, scope: !3730, inlinedAt: !3759)
!3762 = !DILocation(line: 69, column: 9, scope: !3719, inlinedAt: !3757)
!3763 = !DILocation(line: 0, scope: !3730, inlinedAt: !3764)
!3764 = distinct !DILocation(line: 170, column: 22, scope: !3728)
!3765 = !DILocation(line: 55, column: 39, scope: !3738, inlinedAt: !3764)
!3766 = !DILocation(line: 55, column: 7, scope: !3730, inlinedAt: !3764)
!3767 = !DILocation(line: 171, column: 11, scope: !3728)
!3768 = !DILocation(line: 0, scope: !3730, inlinedAt: !3769)
!3769 = distinct !DILocation(line: 177, column: 22, scope: !3728)
!3770 = !DILocation(line: 55, column: 39, scope: !3738, inlinedAt: !3769)
!3771 = !DILocation(line: 55, column: 7, scope: !3730, inlinedAt: !3769)
!3772 = !DILocation(line: 178, column: 11, scope: !3728)
!3773 = !DILocation(line: 0, scope: !3719, inlinedAt: !3774)
!3774 = distinct !DILocation(line: 190, column: 22, scope: !3728)
!3775 = !DILocation(line: 0, scope: !3730, inlinedAt: !3776)
!3776 = distinct !DILocation(line: 69, column: 12, scope: !3719, inlinedAt: !3774)
!3777 = !DILocation(line: 55, column: 39, scope: !3738, inlinedAt: !3776)
!3778 = !DILocation(line: 55, column: 7, scope: !3730, inlinedAt: !3776)
!3779 = !DILocation(line: 69, column: 9, scope: !3719, inlinedAt: !3774)
!3780 = !DILocation(line: 0, scope: !3719, inlinedAt: !3781)
!3781 = distinct !DILocation(line: 195, column: 22, scope: !3728)
!3782 = !DILocation(line: 0, scope: !3730, inlinedAt: !3783)
!3783 = distinct !DILocation(line: 69, column: 12, scope: !3719, inlinedAt: !3781)
!3784 = !DILocation(line: 55, column: 39, scope: !3738, inlinedAt: !3783)
!3785 = !DILocation(line: 55, column: 7, scope: !3730, inlinedAt: !3783)
!3786 = !DILocation(line: 0, scope: !3719, inlinedAt: !3787)
!3787 = distinct !DILocation(line: 200, column: 22, scope: !3728)
!3788 = !DILocation(line: 0, scope: !3730, inlinedAt: !3789)
!3789 = distinct !DILocation(line: 69, column: 12, scope: !3719, inlinedAt: !3787)
!3790 = !DILocation(line: 55, column: 39, scope: !3738, inlinedAt: !3789)
!3791 = !DILocation(line: 55, column: 7, scope: !3730, inlinedAt: !3789)
!3792 = !DILocation(line: 69, column: 9, scope: !3719, inlinedAt: !3787)
!3793 = !DILocation(line: 0, scope: !3719, inlinedAt: !3794)
!3794 = distinct !DILocation(line: 209, column: 22, scope: !3728)
!3795 = !DILocation(line: 0, scope: !3730, inlinedAt: !3796)
!3796 = distinct !DILocation(line: 69, column: 12, scope: !3719, inlinedAt: !3794)
!3797 = !DILocation(line: 55, column: 39, scope: !3738, inlinedAt: !3796)
!3798 = !DILocation(line: 55, column: 7, scope: !3730, inlinedAt: !3796)
!3799 = !DILocation(line: 69, column: 9, scope: !3719, inlinedAt: !3794)
!3800 = !DILocation(line: 0, scope: !3730, inlinedAt: !3801)
!3801 = distinct !DILocation(line: 213, column: 22, scope: !3728)
!3802 = !DILocation(line: 55, column: 39, scope: !3738, inlinedAt: !3801)
!3803 = !DILocation(line: 55, column: 7, scope: !3730, inlinedAt: !3801)
!3804 = !DILocation(line: 214, column: 11, scope: !3728)
!3805 = !DILocation(line: 225, column: 16, scope: !3728)
!3806 = !DILocation(line: 226, column: 22, scope: !3728)
!3807 = !DILocation(line: 226, column: 11, scope: !3728)
!3808 = !DILocation(line: 0, scope: !3728)
!3809 = !DILocation(line: 230, column: 10, scope: !3637)
!3810 = !DILocation(line: 231, column: 11, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3637, file: !3618, line: 231, column: 11)
!3812 = !DILocation(line: 232, column: 13, scope: !3811)
!3813 = !DILocation(line: 231, column: 11, scope: !3637)
!3814 = !DILocation(line: 107, column: 13, scope: !3675)
!3815 = !DILocation(line: 82, column: 16, scope: !3617)
!3816 = !DILocation(line: 235, column: 8, scope: !3617)
!3817 = !DILocation(line: 236, column: 3, scope: !3617)
!3818 = !DILocation(line: 237, column: 1, scope: !3617)
!3819 = distinct !DISubprogram(name: "rpl_calloc", scope: !717, file: !717, line: 42, type: !3303, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3820)
!3820 = !{!3821, !3822, !3823, !3824}
!3821 = !DILocalVariable(name: "n", arg: 1, scope: !3819, file: !717, line: 42, type: !76)
!3822 = !DILocalVariable(name: "s", arg: 2, scope: !3819, file: !717, line: 42, type: !76)
!3823 = !DILocalVariable(name: "result", scope: !3819, file: !717, line: 44, type: !74)
!3824 = !DILocalVariable(name: "bytes", scope: !3825, file: !717, line: 56, type: !76)
!3825 = distinct !DILexicalBlock(scope: !3826, file: !717, line: 53, column: 5)
!3826 = distinct !DILexicalBlock(scope: !3819, file: !717, line: 47, column: 7)
!3827 = !DILocation(line: 0, scope: !3819)
!3828 = !DILocation(line: 47, column: 9, scope: !3826)
!3829 = !DILocation(line: 47, column: 19, scope: !3826)
!3830 = !DILocation(line: 47, column: 14, scope: !3826)
!3831 = !DILocation(line: 0, scope: !3825)
!3832 = !DILocation(line: 57, column: 21, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3825, file: !717, line: 57, column: 11)
!3834 = !DILocation(line: 57, column: 11, scope: !3825)
!3835 = !DILocation(line: 59, column: 11, scope: !3836)
!3836 = distinct !DILexicalBlock(scope: !3833, file: !717, line: 58, column: 9)
!3837 = !DILocation(line: 59, column: 17, scope: !3836)
!3838 = !DILocation(line: 65, column: 12, scope: !3819)
!3839 = !DILocation(line: 72, column: 3, scope: !3819)
!3840 = !DILocation(line: 73, column: 1, scope: !3819)
!3841 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !720, file: !720, line: 86, type: !3842, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3848)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!76, !3844, !19, !76, !3845}
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1861, line: 6, baseType: !3847)
!3847 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !315, line: 21, baseType: !726)
!3848 = !{!3849, !3850, !3851, !3852, !3853, !3854, !3855}
!3849 = !DILocalVariable(name: "pwc", arg: 1, scope: !3841, file: !720, line: 86, type: !3844)
!3850 = !DILocalVariable(name: "s", arg: 2, scope: !3841, file: !720, line: 86, type: !19)
!3851 = !DILocalVariable(name: "n", arg: 3, scope: !3841, file: !720, line: 86, type: !76)
!3852 = !DILocalVariable(name: "ps", arg: 4, scope: !3841, file: !720, line: 86, type: !3845)
!3853 = !DILocalVariable(name: "ret", scope: !3841, file: !720, line: 88, type: !76)
!3854 = !DILocalVariable(name: "wc", scope: !3841, file: !720, line: 89, type: !1865)
!3855 = !DILocalVariable(name: "uc", scope: !3856, file: !720, line: 156, type: !1738)
!3856 = distinct !DILexicalBlock(scope: !3857, file: !720, line: 155, column: 5)
!3857 = distinct !DILexicalBlock(scope: !3841, file: !720, line: 154, column: 7)
!3858 = !DILocation(line: 0, scope: !3841)
!3859 = !DILocation(line: 89, column: 3, scope: !3841)
!3860 = !DILocation(line: 105, column: 9, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3841, file: !720, line: 105, column: 7)
!3862 = !DILocation(line: 105, column: 7, scope: !3841)
!3863 = !DILocation(line: 145, column: 9, scope: !3841)
!3864 = !DILocation(line: 154, column: 19, scope: !3857)
!3865 = !DILocation(line: 154, column: 31, scope: !3857)
!3866 = !DILocation(line: 154, column: 26, scope: !3857)
!3867 = !DILocation(line: 154, column: 41, scope: !3857)
!3868 = !DILocation(line: 154, column: 7, scope: !3841)
!3869 = !DILocation(line: 156, column: 26, scope: !3856)
!3870 = !DILocation(line: 0, scope: !3856)
!3871 = !DILocation(line: 157, column: 14, scope: !3856)
!3872 = !DILocation(line: 157, column: 12, scope: !3856)
!3873 = !DILocation(line: 163, column: 1, scope: !3841)
!3874 = distinct !DISubprogram(name: "close_stream", scope: !739, file: !739, line: 56, type: !3875, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3879)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{!21, !3877}
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3178, line: 7, baseType: !746)
!3879 = !{!3880, !3881, !3883, !3884}
!3880 = !DILocalVariable(name: "stream", arg: 1, scope: !3874, file: !739, line: 56, type: !3877)
!3881 = !DILocalVariable(name: "some_pending", scope: !3874, file: !739, line: 58, type: !3882)
!3882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!3883 = !DILocalVariable(name: "prev_fail", scope: !3874, file: !739, line: 59, type: !3882)
!3884 = !DILocalVariable(name: "fclose_fail", scope: !3874, file: !739, line: 60, type: !3882)
!3885 = !DILocation(line: 0, scope: !3874)
!3886 = !DILocation(line: 58, column: 30, scope: !3874)
!3887 = !DILocalVariable(name: "__stream", arg: 1, scope: !3888, file: !3889, line: 135, type: !3877)
!3888 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3889, file: !3889, line: 135, type: !3875, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3890)
!3889 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!3890 = !{!3887}
!3891 = !DILocation(line: 0, scope: !3888, inlinedAt: !3892)
!3892 = distinct !DILocation(line: 59, column: 27, scope: !3874)
!3893 = !DILocation(line: 137, column: 10, scope: !3888, inlinedAt: !3892)
!3894 = !{!3895, !1416, i64 0}
!3895 = !{!"_IO_FILE", !1416, i64 0, !1343, i64 8, !1343, i64 16, !1343, i64 24, !1343, i64 32, !1343, i64 40, !1343, i64 48, !1343, i64 56, !1343, i64 64, !1343, i64 72, !1343, i64 80, !1343, i64 88, !1343, i64 96, !1343, i64 104, !1416, i64 112, !1416, i64 116, !2622, i64 120, !2112, i64 128, !1344, i64 130, !1344, i64 131, !1343, i64 136, !2622, i64 144, !1343, i64 152, !1343, i64 160, !1343, i64 168, !1343, i64 176, !2622, i64 184, !1416, i64 192, !1344, i64 196}
!3896 = !DILocation(line: 59, column: 43, scope: !3874)
!3897 = !DILocation(line: 60, column: 29, scope: !3874)
!3898 = !DILocation(line: 60, column: 45, scope: !3874)
!3899 = !DILocation(line: 70, column: 17, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3874, file: !739, line: 70, column: 7)
!3901 = !DILocation(line: 58, column: 50, scope: !3874)
!3902 = !DILocation(line: 70, column: 33, scope: !3900)
!3903 = !DILocation(line: 70, column: 53, scope: !3900)
!3904 = !DILocation(line: 70, column: 59, scope: !3900)
!3905 = !DILocation(line: 70, column: 7, scope: !3874)
!3906 = !DILocation(line: 72, column: 11, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3900, file: !739, line: 71, column: 5)
!3908 = !DILocation(line: 73, column: 9, scope: !3909)
!3909 = distinct !DILexicalBlock(scope: !3907, file: !739, line: 72, column: 11)
!3910 = !DILocation(line: 73, column: 15, scope: !3909)
!3911 = !DILocation(line: 78, column: 1, scope: !3874)
!3912 = distinct !DISubprogram(name: "hard_locale", scope: !778, file: !778, line: 27, type: !736, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3913)
!3913 = !{!3914, !3915}
!3914 = !DILocalVariable(name: "category", arg: 1, scope: !3912, file: !778, line: 27, type: !21)
!3915 = !DILocalVariable(name: "locale", scope: !3912, file: !778, line: 29, type: !3916)
!3916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 2056, elements: !3917)
!3917 = !{!3918}
!3918 = !DISubrange(count: 257)
!3919 = !DILocation(line: 0, scope: !3912)
!3920 = !DILocation(line: 29, column: 3, scope: !3912)
!3921 = !DILocation(line: 29, column: 8, scope: !3912)
!3922 = !DILocation(line: 31, column: 7, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3912, file: !778, line: 31, column: 7)
!3924 = !DILocation(line: 31, column: 7, scope: !3912)
!3925 = !DILocation(line: 34, column: 12, scope: !3912)
!3926 = !DILocation(line: 34, column: 38, scope: !3912)
!3927 = !DILocation(line: 34, column: 41, scope: !3912)
!3928 = !DILocation(line: 34, column: 66, scope: !3912)
!3929 = !DILocation(line: 35, column: 1, scope: !3912)
!3930 = distinct !DISubprogram(name: "locale_charset", scope: !785, file: !785, line: 831, type: !338, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !3931)
!3931 = !{!3932}
!3932 = !DILocalVariable(name: "codeset", scope: !3930, file: !785, line: 833, type: !19)
!3933 = !DILocation(line: 847, column: 13, scope: !3930)
!3934 = !DILocation(line: 0, scope: !3930)
!3935 = !DILocation(line: 911, column: 15, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3930, file: !785, line: 911, column: 7)
!3937 = !DILocation(line: 911, column: 7, scope: !3930)
!3938 = !DILocation(line: 1070, column: 13, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3940, file: !785, line: 1070, column: 13)
!3940 = distinct !DILexicalBlock(scope: !3941, file: !785, line: 1060, column: 7)
!3941 = distinct !DILexicalBlock(scope: !3930, file: !785, line: 1019, column: 3)
!3942 = !DILocation(line: 1070, column: 24, scope: !3939)
!3943 = !DILocation(line: 1070, column: 13, scope: !3940)
!3944 = !DILocation(line: 1158, column: 3, scope: !3930)
!3945 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1178, file: !1178, line: 269, type: !3946, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1177, retainedNodes: !3948)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!21, !21, !17, !76}
!3948 = !{!3949, !3950, !3951}
!3949 = !DILocalVariable(name: "category", arg: 1, scope: !3945, file: !1178, line: 269, type: !21)
!3950 = !DILocalVariable(name: "buf", arg: 2, scope: !3945, file: !1178, line: 269, type: !17)
!3951 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3945, file: !1178, line: 269, type: !76)
!3952 = !DILocation(line: 0, scope: !3945)
!3953 = !DILocalVariable(name: "category", arg: 1, scope: !3954, file: !1178, line: 91, type: !21)
!3954 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1178, file: !1178, line: 91, type: !3946, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1177, retainedNodes: !3955)
!3955 = !{!3953, !3956, !3957, !3958, !3959}
!3956 = !DILocalVariable(name: "buf", arg: 2, scope: !3954, file: !1178, line: 91, type: !17)
!3957 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3954, file: !1178, line: 91, type: !76)
!3958 = !DILocalVariable(name: "result", scope: !3954, file: !1178, line: 140, type: !19)
!3959 = !DILocalVariable(name: "length", scope: !3960, file: !1178, line: 154, type: !76)
!3960 = distinct !DILexicalBlock(scope: !3961, file: !1178, line: 153, column: 5)
!3961 = distinct !DILexicalBlock(scope: !3954, file: !1178, line: 142, column: 7)
!3962 = !DILocation(line: 0, scope: !3954, inlinedAt: !3963)
!3963 = distinct !DILocation(line: 274, column: 10, scope: !3945)
!3964 = !DILocalVariable(name: "category", arg: 1, scope: !3965, file: !1178, line: 60, type: !21)
!3965 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !1178, file: !1178, line: 60, type: !3966, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1177, retainedNodes: !3968)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!19, !21}
!3968 = !{!3964, !3969}
!3969 = !DILocalVariable(name: "result", scope: !3965, file: !1178, line: 62, type: !19)
!3970 = !DILocation(line: 0, scope: !3965, inlinedAt: !3971)
!3971 = distinct !DILocation(line: 140, column: 24, scope: !3954, inlinedAt: !3963)
!3972 = !DILocation(line: 62, column: 24, scope: !3965, inlinedAt: !3971)
!3973 = !DILocation(line: 142, column: 14, scope: !3961, inlinedAt: !3963)
!3974 = !DILocation(line: 142, column: 7, scope: !3954, inlinedAt: !3963)
!3975 = !DILocation(line: 145, column: 19, scope: !3976, inlinedAt: !3963)
!3976 = distinct !DILexicalBlock(scope: !3977, file: !1178, line: 145, column: 11)
!3977 = distinct !DILexicalBlock(scope: !3961, file: !1178, line: 143, column: 5)
!3978 = !DILocation(line: 145, column: 11, scope: !3977, inlinedAt: !3963)
!3979 = !DILocation(line: 149, column: 16, scope: !3976, inlinedAt: !3963)
!3980 = !DILocation(line: 149, column: 9, scope: !3976, inlinedAt: !3963)
!3981 = !DILocation(line: 154, column: 23, scope: !3960, inlinedAt: !3963)
!3982 = !DILocation(line: 0, scope: !3960, inlinedAt: !3963)
!3983 = !DILocation(line: 155, column: 18, scope: !3984, inlinedAt: !3963)
!3984 = distinct !DILexicalBlock(scope: !3960, file: !1178, line: 155, column: 11)
!3985 = !DILocation(line: 155, column: 11, scope: !3960, inlinedAt: !3963)
!3986 = !DILocation(line: 157, column: 39, scope: !3987, inlinedAt: !3963)
!3987 = distinct !DILexicalBlock(scope: !3984, file: !1178, line: 156, column: 9)
!3988 = !DILocalVariable(name: "__dest", arg: 1, scope: !3989, file: !2119, line: 31, type: !3517)
!3989 = distinct !DISubprogram(name: "memcpy", scope: !2119, file: !2119, line: 31, type: !3515, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1177, retainedNodes: !3990)
!3990 = !{!3988, !3991, !3992}
!3991 = !DILocalVariable(name: "__src", arg: 2, scope: !3989, file: !2119, line: 31, type: !3518)
!3992 = !DILocalVariable(name: "__len", arg: 3, scope: !3989, file: !2119, line: 31, type: !76)
!3993 = !DILocation(line: 0, scope: !3989, inlinedAt: !3994)
!3994 = distinct !DILocation(line: 157, column: 11, scope: !3987, inlinedAt: !3963)
!3995 = !DILocation(line: 34, column: 10, scope: !3989, inlinedAt: !3994)
!3996 = !DILocation(line: 158, column: 11, scope: !3987, inlinedAt: !3963)
!3997 = !DILocation(line: 162, column: 23, scope: !3998, inlinedAt: !3963)
!3998 = distinct !DILexicalBlock(scope: !3999, file: !1178, line: 162, column: 15)
!3999 = distinct !DILexicalBlock(scope: !3984, file: !1178, line: 161, column: 9)
!4000 = !DILocation(line: 162, column: 15, scope: !3999, inlinedAt: !3963)
!4001 = !DILocation(line: 167, column: 44, scope: !4002, inlinedAt: !3963)
!4002 = distinct !DILexicalBlock(scope: !3998, file: !1178, line: 163, column: 13)
!4003 = !DILocation(line: 0, scope: !3989, inlinedAt: !4004)
!4004 = distinct !DILocation(line: 167, column: 15, scope: !4002, inlinedAt: !3963)
!4005 = !DILocation(line: 34, column: 10, scope: !3989, inlinedAt: !4004)
!4006 = !DILocation(line: 168, column: 15, scope: !4002, inlinedAt: !3963)
!4007 = !DILocation(line: 168, column: 32, scope: !4002, inlinedAt: !3963)
!4008 = !DILocation(line: 169, column: 13, scope: !4002, inlinedAt: !3963)
!4009 = !DILocation(line: 0, scope: !3961, inlinedAt: !3963)
!4010 = !DILocation(line: 274, column: 3, scope: !3945)
!4011 = distinct !DISubprogram(name: "setlocale_null", scope: !1178, file: !1178, line: 301, type: !3966, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1177, retainedNodes: !4012)
!4012 = !{!4013}
!4013 = !DILocalVariable(name: "category", arg: 1, scope: !4011, file: !1178, line: 301, type: !21)
!4014 = !DILocation(line: 0, scope: !4011)
!4015 = !DILocation(line: 0, scope: !3965, inlinedAt: !4016)
!4016 = distinct !DILocation(line: 304, column: 10, scope: !4011)
!4017 = !DILocation(line: 62, column: 24, scope: !3965, inlinedAt: !4016)
!4018 = !DILocation(line: 304, column: 3, scope: !4011)
!4019 = distinct !DISubprogram(name: "rpl_fclose", scope: !1181, file: !1181, line: 58, type: !4020, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1180, retainedNodes: !4024)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!21, !4022}
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3178, line: 7, baseType: !1187)
!4024 = !{!4025, !4026, !4027, !4028}
!4025 = !DILocalVariable(name: "fp", arg: 1, scope: !4019, file: !1181, line: 58, type: !4022)
!4026 = !DILocalVariable(name: "saved_errno", scope: !4019, file: !1181, line: 60, type: !21)
!4027 = !DILocalVariable(name: "fd", scope: !4019, file: !1181, line: 61, type: !21)
!4028 = !DILocalVariable(name: "result", scope: !4019, file: !1181, line: 62, type: !21)
!4029 = !DILocation(line: 0, scope: !4019)
!4030 = !DILocation(line: 65, column: 8, scope: !4019)
!4031 = !DILocation(line: 66, column: 10, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4019, file: !1181, line: 66, column: 7)
!4033 = !DILocation(line: 66, column: 7, scope: !4019)
!4034 = !DILocation(line: 67, column: 12, scope: !4032)
!4035 = !DILocation(line: 67, column: 5, scope: !4032)
!4036 = !DILocation(line: 72, column: 9, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !4019, file: !1181, line: 72, column: 7)
!4038 = !DILocation(line: 72, column: 23, scope: !4037)
!4039 = !DILocation(line: 72, column: 33, scope: !4037)
!4040 = !DILocation(line: 72, column: 26, scope: !4037)
!4041 = !DILocation(line: 72, column: 59, scope: !4037)
!4042 = !DILocation(line: 73, column: 7, scope: !4037)
!4043 = !DILocation(line: 73, column: 10, scope: !4037)
!4044 = !DILocation(line: 72, column: 7, scope: !4019)
!4045 = !DILocation(line: 100, column: 12, scope: !4019)
!4046 = !DILocation(line: 105, column: 7, scope: !4019)
!4047 = !DILocation(line: 74, column: 19, scope: !4037)
!4048 = !DILocation(line: 105, column: 19, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4019, file: !1181, line: 105, column: 7)
!4050 = !DILocation(line: 107, column: 13, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !4049, file: !1181, line: 106, column: 5)
!4052 = !DILocation(line: 109, column: 5, scope: !4051)
!4053 = !DILocation(line: 112, column: 1, scope: !4019)
!4054 = distinct !DISubprogram(name: "rpl_fflush", scope: !1224, file: !1224, line: 129, type: !4055, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1223, retainedNodes: !4059)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!21, !4057}
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3178, line: 7, baseType: !1230)
!4059 = !{!4060}
!4060 = !DILocalVariable(name: "stream", arg: 1, scope: !4054, file: !1224, line: 129, type: !4057)
!4061 = !DILocation(line: 0, scope: !4054)
!4062 = !DILocation(line: 150, column: 14, scope: !4063)
!4063 = distinct !DILexicalBlock(scope: !4054, file: !1224, line: 150, column: 7)
!4064 = !DILocation(line: 150, column: 22, scope: !4063)
!4065 = !DILocation(line: 150, column: 27, scope: !4063)
!4066 = !DILocation(line: 150, column: 7, scope: !4054)
!4067 = !DILocation(line: 151, column: 12, scope: !4063)
!4068 = !DILocation(line: 151, column: 5, scope: !4063)
!4069 = !DILocalVariable(name: "fp", arg: 1, scope: !4070, file: !1224, line: 41, type: !4057)
!4070 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1224, file: !1224, line: 41, type: !4071, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1223, retainedNodes: !4073)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{null, !4057}
!4073 = !{!4069}
!4074 = !DILocation(line: 0, scope: !4070, inlinedAt: !4075)
!4075 = distinct !DILocation(line: 156, column: 3, scope: !4054)
!4076 = !DILocation(line: 43, column: 11, scope: !4077, inlinedAt: !4075)
!4077 = distinct !DILexicalBlock(scope: !4070, file: !1224, line: 43, column: 7)
!4078 = !DILocation(line: 43, column: 18, scope: !4077, inlinedAt: !4075)
!4079 = !DILocation(line: 43, column: 7, scope: !4070, inlinedAt: !4075)
!4080 = !DILocation(line: 45, column: 5, scope: !4077, inlinedAt: !4075)
!4081 = !DILocation(line: 158, column: 10, scope: !4054)
!4082 = !DILocation(line: 158, column: 3, scope: !4054)
!4083 = !DILocation(line: 235, column: 1, scope: !4054)
!4084 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1265, file: !1265, line: 28, type: !4085, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1264, retainedNodes: !4090)
!4085 = !DISubroutineType(types: !4086)
!4086 = !{!21, !4087, !4089, !21}
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3178, line: 7, baseType: !1271)
!4089 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !24, line: 63, baseType: !50)
!4090 = !{!4091, !4092, !4093, !4094}
!4091 = !DILocalVariable(name: "fp", arg: 1, scope: !4084, file: !1265, line: 28, type: !4087)
!4092 = !DILocalVariable(name: "offset", arg: 2, scope: !4084, file: !1265, line: 28, type: !4089)
!4093 = !DILocalVariable(name: "whence", arg: 3, scope: !4084, file: !1265, line: 28, type: !21)
!4094 = !DILocalVariable(name: "pos", scope: !4095, file: !1265, line: 117, type: !4089)
!4095 = distinct !DILexicalBlock(scope: !4096, file: !1265, line: 113, column: 5)
!4096 = distinct !DILexicalBlock(scope: !4084, file: !1265, line: 52, column: 7)
!4097 = !DILocation(line: 0, scope: !4084)
!4098 = !DILocation(line: 52, column: 11, scope: !4096)
!4099 = !{!3895, !1343, i64 16}
!4100 = !DILocation(line: 52, column: 31, scope: !4096)
!4101 = !{!3895, !1343, i64 8}
!4102 = !DILocation(line: 52, column: 24, scope: !4096)
!4103 = !DILocation(line: 53, column: 7, scope: !4096)
!4104 = !DILocation(line: 53, column: 14, scope: !4096)
!4105 = !{!3895, !1343, i64 40}
!4106 = !DILocation(line: 53, column: 35, scope: !4096)
!4107 = !{!3895, !1343, i64 32}
!4108 = !DILocation(line: 53, column: 28, scope: !4096)
!4109 = !DILocation(line: 54, column: 7, scope: !4096)
!4110 = !DILocation(line: 54, column: 14, scope: !4096)
!4111 = !{!3895, !1343, i64 72}
!4112 = !DILocation(line: 54, column: 28, scope: !4096)
!4113 = !DILocation(line: 52, column: 7, scope: !4084)
!4114 = !DILocation(line: 117, column: 26, scope: !4095)
!4115 = !DILocation(line: 117, column: 19, scope: !4095)
!4116 = !DILocation(line: 0, scope: !4095)
!4117 = !DILocation(line: 118, column: 15, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4095, file: !1265, line: 118, column: 11)
!4119 = !DILocation(line: 118, column: 11, scope: !4095)
!4120 = !DILocation(line: 129, column: 11, scope: !4095)
!4121 = !DILocation(line: 129, column: 18, scope: !4095)
!4122 = !DILocation(line: 130, column: 11, scope: !4095)
!4123 = !DILocation(line: 130, column: 19, scope: !4095)
!4124 = !{!3895, !2622, i64 144}
!4125 = !DILocation(line: 161, column: 7, scope: !4095)
!4126 = !DILocation(line: 163, column: 10, scope: !4084)
!4127 = !DILocation(line: 163, column: 3, scope: !4084)
!4128 = !DILocation(line: 164, column: 1, scope: !4084)
