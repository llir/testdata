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
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), align 8, !dbg !32
@.str.34 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !38
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !43
@.str.37 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.38 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.39 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !46
@.str.44 = private unnamed_addr constant [16 x i8] c"OMP_NUM_THREADS\00", align 1
@.str.1.45 = private unnamed_addr constant [17 x i8] c"OMP_THREAD_LIMIT\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !52
@.str.50 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.51 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.52 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.54, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.55, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.56, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.57, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.58, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.59, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.60, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.62, i32 0, i32 0), i8* null], align 16, !dbg !58
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !103
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !109
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !121
@.str.11.63 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.64 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.65 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.66 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.67 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.68 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.69 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !128
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !135
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !123
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !137
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !143
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
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !825 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !829, metadata !DIExpression()), !dbg !830
  %3 = icmp eq i32 %0, 0, !dbg !831
  br i1 %3, label %9, label %4, !dbg !833

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !834, !tbaa !836
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #26, !dbg !834
  %7 = load i8*, i8** @program_name, align 8, !dbg !834, !tbaa !836
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #26, !dbg !834
  br label %61, !dbg !834

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 5) #26, !dbg !840
  %11 = load i8*, i8** @program_name, align 8, !dbg !840, !tbaa !836
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #26, !dbg !840
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.2, i64 0, i64 0), i32 5) #26, !dbg !842
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !842, !tbaa !836
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !842
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.3, i64 0, i64 0), i32 5) #26, !dbg !843
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !843, !tbaa !836
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !843
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #26, !dbg !844
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !844, !tbaa !836
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !844
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #26, !dbg !845
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !845, !tbaa !836
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !845
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), metadata !846, metadata !DIExpression()) #26, !dbg !865
  %25 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !867
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %25) #26, !dbg !867
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !852, metadata !DIExpression()) #26, !dbg !868
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %25, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #26, !dbg !868
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), metadata !861, metadata !DIExpression()) #26, !dbg !865
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !862, metadata !DIExpression()) #26, !dbg !865
  %26 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !869
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !862, metadata !DIExpression()) #26, !dbg !865
  br label %27, !dbg !870

27:                                               ; preds = %32, %9
  %28 = phi i8* [ %35, %32 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), %9 ]
  %29 = phi %struct.infomap* [ %33, %32 ], [ %26, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !862, metadata !DIExpression()) #26, !dbg !865
  %30 = tail call i32 @strcmp(i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %28) #27, !dbg !871
  %31 = icmp eq i32 %30, 0, !dbg !871
  br i1 %31, label %37, label %32, !dbg !870

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i64 1, !dbg !872
  call void @llvm.dbg.value(metadata %struct.infomap* %33, metadata !862, metadata !DIExpression()) #26, !dbg !865
  %34 = getelementptr inbounds %struct.infomap, %struct.infomap* %33, i64 0, i32 0, !dbg !873
  %35 = load i8*, i8** %34, align 8, !dbg !873, !tbaa !874
  %36 = icmp eq i8* %35, null, !dbg !876
  br i1 %36, label %37, label %27, !dbg !877, !llvm.loop !878

37:                                               ; preds = %32, %27
  %38 = phi %struct.infomap* [ %29, %27 ], [ %33, %32 ]
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 0, i32 1, !dbg !880
  %40 = load i8*, i8** %39, align 8, !dbg !880, !tbaa !882
  %41 = icmp eq i8* %40, null, !dbg !883
  %42 = select i1 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %40, !dbg !884
  call void @llvm.dbg.value(metadata i8* %42, metadata !861, metadata !DIExpression()) #26, !dbg !865
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 5) #26, !dbg !885
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0)) #26, !dbg !885
  %45 = tail call i8* @setlocale(i32 5, i8* null) #26, !dbg !886
  call void @llvm.dbg.value(metadata i8* %45, metadata !864, metadata !DIExpression()) #26, !dbg !865
  %46 = icmp eq i8* %45, null, !dbg !887
  br i1 %46, label %54, label %47, !dbg !889

47:                                               ; preds = %37
  %48 = tail call i32 @strncmp(i8* nonnull %45, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i64 3) #27, !dbg !890
  %49 = icmp eq i32 %48, 0, !dbg !890
  br i1 %49, label %54, label %50, !dbg !891

50:                                               ; preds = %47
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.26, i64 0, i64 0), i32 5) #26, !dbg !892
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !892, !tbaa !836
  %53 = tail call i32 @fputs_unlocked(i8* %51, %struct._IO_FILE* %52) #26, !dbg !892
  br label %54, !dbg !894

54:                                               ; preds = %37, %47, %50
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i32 5) #26, !dbg !895
  %56 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #26, !dbg !895
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i64 0, i64 0), i32 5) #26, !dbg !896
  %58 = icmp eq i8* %42, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), !dbg !896
  %59 = select i1 %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !896
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* %42, i8* %59) #26, !dbg !896
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %25) #26, !dbg !897
  br label %61

61:                                               ; preds = %54, %4
  tail call void @exit(i32 %0) #28, !dbg !898
  unreachable, !dbg !898
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !899 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !903 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !959 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !963 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !968, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata i8** %1, metadata !969, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata i64 0, metadata !971, metadata !DIExpression()), !dbg !975
  %3 = load i8*, i8** %1, align 8, !dbg !976, !tbaa !836
  tail call void @set_program_name(i8* %3) #26, !dbg !977
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #26, !dbg !978
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #26, !dbg !979
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #26, !dbg !980
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #26, !dbg !981
  call void @llvm.dbg.value(metadata i32 2, metadata !972, metadata !DIExpression()), !dbg !975
  br label %8, !dbg !982

8:                                                ; preds = %18, %2
  %9 = phi i64 [ %21, %18 ], [ 0, %2 ]
  %10 = phi i32 [ %12, %18 ], [ 2, %2 ]
  br label %11, !dbg !983

11:                                               ; preds = %8, %11
  %12 = phi i32 [ 0, %11 ], [ %10, %8 ], !dbg !984
  call void @llvm.dbg.value(metadata i32 %12, metadata !972, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata i64 %9, metadata !971, metadata !DIExpression()), !dbg !975
  %13 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #26, !dbg !985
  call void @llvm.dbg.value(metadata i32 %13, metadata !973, metadata !DIExpression()), !dbg !986
  switch i32 %13, label %22 [
    i32 -1, label %23
    i32 -130, label %14
    i32 -131, label %15
    i32 128, label %11
    i32 129, label %18
  ], !dbg !983

14:                                               ; preds = %11
  tail call void @usage(i32 0) #29, !dbg !987
  unreachable, !dbg !987

15:                                               ; preds = %11
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !989, !tbaa !836
  %17 = load i8*, i8** @Version, align 8, !dbg !989, !tbaa !836
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8* null) #26, !dbg !989
  tail call void @exit(i32 0) #28, !dbg !989
  unreachable, !dbg !989

18:                                               ; preds = %11
  %19 = load i8*, i8** @optarg, align 8, !dbg !990, !tbaa !836
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 5) #26, !dbg !991
  %21 = tail call i64 @xdectoumax(i8* %19, i64 0, i64 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* %20, i32 0) #26, !dbg !992
  call void @llvm.dbg.value(metadata i64 %21, metadata !971, metadata !DIExpression()), !dbg !975
  br label %8, !dbg !993

22:                                               ; preds = %11
  tail call void @usage(i32 1) #29, !dbg !994
  unreachable, !dbg !994

23:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i32 undef, metadata !972, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata i64 undef, metadata !971, metadata !DIExpression()), !dbg !975
  %24 = load i32, i32* @optind, align 4, !dbg !995, !tbaa !997
  %25 = icmp eq i32 %24, %0, !dbg !999
  br i1 %25, label %33, label %26, !dbg !1000

26:                                               ; preds = %23
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 5) #26, !dbg !1001
  %28 = load i32, i32* @optind, align 4, !dbg !1003, !tbaa !997
  %29 = sext i32 %28 to i64, !dbg !1004
  %30 = getelementptr inbounds i8*, i8** %1, i64 %29, !dbg !1004
  %31 = load i8*, i8** %30, align 8, !dbg !1004, !tbaa !836
  %32 = tail call i8* @quote(i8* %31) #26, !dbg !1005
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %27, i8* %32) #26, !dbg !1006
  tail call void @usage(i32 1) #29, !dbg !1007
  unreachable, !dbg !1007

33:                                               ; preds = %23
  %34 = tail call i64 @num_processors(i32 %12) #26, !dbg !1008
  call void @llvm.dbg.value(metadata i64 %34, metadata !970, metadata !DIExpression()), !dbg !975
  %35 = icmp ugt i64 %34, %9, !dbg !1009
  %36 = sub i64 %34, %9, !dbg !1011
  %37 = select i1 %35, i64 %36, i64 1, !dbg !1011
  call void @llvm.dbg.value(metadata i64 %37, metadata !970, metadata !DIExpression()), !dbg !975
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i64 %37) #26, !dbg !1012
  ret i32 0, !dbg !1013
}

; Function Attrs: nounwind
declare !dbg !1014 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1017 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1020 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1027 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !1033 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #9 !dbg !1037 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1039, metadata !DIExpression()), !dbg !1040
  store i8* %0, i8** @file_name, align 8, !dbg !1041, !tbaa !836
  ret void, !dbg !1042
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #9 !dbg !1043 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1047, metadata !DIExpression()), !dbg !1048
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1049, !tbaa !1050
  ret void, !dbg !1052
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1053 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1058, !tbaa !836
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #26, !dbg !1059
  %3 = icmp eq i32 %2, 0, !dbg !1060
  br i1 %3, label %22, label %4, !dbg !1061

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1062, !tbaa !1050, !range !1063
  %6 = icmp eq i8 %5, 0, !dbg !1062
  br i1 %6, label %11, label %7, !dbg !1064

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #30, !dbg !1065
  %9 = load i32, i32* %8, align 4, !dbg !1065, !tbaa !997
  %10 = icmp eq i32 %9, 32, !dbg !1066
  br i1 %10, label %22, label %11, !dbg !1067

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i32 5) #26, !dbg !1068
  call void @llvm.dbg.value(metadata i8* %12, metadata !1055, metadata !DIExpression()), !dbg !1069
  %13 = load i8*, i8** @file_name, align 8, !dbg !1070, !tbaa !836
  %14 = icmp eq i8* %13, null, !dbg !1070
  %15 = tail call i32* @__errno_location() #30, !dbg !1072
  %16 = load i32, i32* %15, align 4, !dbg !1072, !tbaa !997
  br i1 %14, label %19, label %17, !dbg !1073

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #26, !dbg !1074
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.38, i64 0, i64 0), i8* %18, i8* %12) #26, !dbg !1075
  br label %20, !dbg !1075

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.39, i64 0, i64 0), i8* %12) #26, !dbg !1076
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1077, !tbaa !997
  tail call void @_exit(i32 %21) #28, !dbg !1078
  unreachable, !dbg !1078

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1079, !tbaa !836
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #26, !dbg !1081
  %25 = icmp eq i32 %24, 0, !dbg !1082
  br i1 %25, label %28, label %26, !dbg !1083

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1084, !tbaa !997
  tail call void @_exit(i32 %27) #28, !dbg !1085
  unreachable, !dbg !1085

28:                                               ; preds = %22
  ret void, !dbg !1086
}

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @num_processors(i32 %0) local_unnamed_addr #8 !dbg !1087 {
  %2 = alloca %struct.cpu_set_t, align 8
  %3 = alloca %struct.cpu_set_t, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1091, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 -1, metadata !1092, metadata !DIExpression()), !dbg !1098
  switch i32 %0, label %101 [
    i32 2, label %6
    i32 1, label %88
  ], !dbg !1099

6:                                                ; preds = %1
  %7 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i64 0, i64 0)) #26, !dbg !1100
  call void @llvm.dbg.value(metadata i8* %7, metadata !1101, metadata !DIExpression()) #26, !dbg !1111
  call void @llvm.dbg.value(metadata i64 0, metadata !1106, metadata !DIExpression()) #26, !dbg !1111
  %8 = icmp eq i8* %7, null, !dbg !1113
  br i1 %8, label %43, label %9, !dbg !1115

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %7, metadata !1101, metadata !DIExpression()) #26, !dbg !1111
  %10 = load i8, i8* %7, align 1, !dbg !1116, !tbaa !1117
  %11 = icmp eq i8 %10, 0, !dbg !1118
  br i1 %11, label %43, label %12, !dbg !1119

12:                                               ; preds = %9, %16
  %13 = phi i8 [ %18, %16 ], [ %10, %9 ]
  %14 = phi i8* [ %17, %16 ], [ %7, %9 ]
  call void @llvm.dbg.value(metadata i8* %14, metadata !1101, metadata !DIExpression()) #26, !dbg !1111
  %15 = sext i8 %13 to i32, !dbg !1116
  call void @llvm.dbg.value(metadata i32 %15, metadata !1120, metadata !DIExpression()) #26, !dbg !1126
  switch i32 %15, label %20 [
    i32 32, label %16
    i32 9, label %16
    i32 10, label %16
    i32 11, label %16
    i32 12, label %16
    i32 13, label %16
  ], !dbg !1128

16:                                               ; preds = %12, %12, %12, %12, %12, %12
  %17 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !1129
  call void @llvm.dbg.value(metadata i8* %17, metadata !1101, metadata !DIExpression()) #26, !dbg !1111
  %18 = load i8, i8* %17, align 1, !dbg !1116, !tbaa !1117
  %19 = icmp eq i8 %18, 0, !dbg !1118
  br i1 %19, label %43, label %12, !dbg !1119, !llvm.loop !1130

20:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i32 %15, metadata !1132, metadata !DIExpression()) #26, !dbg !1135
  %21 = add nsw i32 %15, -48, !dbg !1137
  %22 = icmp ult i32 %21, 10, !dbg !1137
  br i1 %22, label %23, label %43, !dbg !1138

23:                                               ; preds = %20
  %24 = bitcast i8** %5 to i8*, !dbg !1139
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24) #26, !dbg !1139
  call void @llvm.dbg.value(metadata i8* null, metadata !1107, metadata !DIExpression()) #26, !dbg !1140
  store i8* null, i8** %5, align 8, !dbg !1141, !tbaa !836
  call void @llvm.dbg.value(metadata i8** %5, metadata !1107, metadata !DIExpression(DW_OP_deref)) #26, !dbg !1140
  %25 = call i64 @strtoul(i8* nonnull %14, i8** nonnull %5, i32 10) #26, !dbg !1142
  call void @llvm.dbg.value(metadata i64 %25, metadata !1110, metadata !DIExpression()) #26, !dbg !1140
  %26 = load i8*, i8** %5, align 8, !dbg !1143, !tbaa !836
  call void @llvm.dbg.value(metadata i8* %26, metadata !1107, metadata !DIExpression()) #26, !dbg !1140
  %27 = icmp eq i8* %26, null, !dbg !1145
  br i1 %27, label %42, label %28, !dbg !1146

28:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %26, metadata !1107, metadata !DIExpression()) #26, !dbg !1140
  %29 = load i8, i8* %26, align 1, !dbg !1147, !tbaa !1117
  %30 = icmp eq i8 %29, 0, !dbg !1149
  br i1 %30, label %41, label %31, !dbg !1150

31:                                               ; preds = %28, %35
  %32 = phi i8 [ %37, %35 ], [ %29, %28 ]
  %33 = phi i8* [ %36, %35 ], [ %26, %28 ]
  %34 = sext i8 %32 to i32, !dbg !1147
  call void @llvm.dbg.value(metadata i32 %34, metadata !1120, metadata !DIExpression()) #26, !dbg !1151
  switch i32 %34, label %39 [
    i32 32, label %35
    i32 9, label %35
    i32 10, label %35
    i32 11, label %35
    i32 12, label %35
    i32 13, label %35
  ], !dbg !1153

35:                                               ; preds = %31, %31, %31, %31, %31, %31
  call void @llvm.dbg.value(metadata i8* %33, metadata !1107, metadata !DIExpression()) #26, !dbg !1140
  %36 = getelementptr inbounds i8, i8* %33, i64 1, !dbg !1154
  call void @llvm.dbg.value(metadata i8* %36, metadata !1107, metadata !DIExpression()) #26, !dbg !1140
  call void @llvm.dbg.value(metadata i8* %36, metadata !1107, metadata !DIExpression()) #26, !dbg !1140
  %37 = load i8, i8* %36, align 1, !dbg !1147, !tbaa !1117
  %38 = icmp eq i8 %37, 0, !dbg !1149
  br i1 %38, label %41, label %31, !dbg !1150, !llvm.loop !1155

39:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i8* undef, metadata !1107, metadata !DIExpression()) #26, !dbg !1140
  %40 = icmp eq i8 %32, 44, !dbg !1157
  br i1 %40, label %41, label %42, !dbg !1157

41:                                               ; preds = %35, %39, %28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #26, !dbg !1158
  br label %43

42:                                               ; preds = %39, %23
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #26, !dbg !1158
  br label %43

43:                                               ; preds = %16, %6, %9, %20, %41, %42
  %44 = phi i64 [ %25, %41 ], [ 0, %6 ], [ 0, %42 ], [ 0, %20 ], [ 0, %9 ], [ 0, %16 ], !dbg !1111
  call void @llvm.dbg.value(metadata i64 %44, metadata !1093, metadata !DIExpression()), !dbg !1159
  %45 = tail call i8* @getenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.45, i64 0, i64 0)) #26, !dbg !1160
  call void @llvm.dbg.value(metadata i8* %45, metadata !1101, metadata !DIExpression()) #26, !dbg !1161
  call void @llvm.dbg.value(metadata i64 0, metadata !1106, metadata !DIExpression()) #26, !dbg !1161
  %46 = icmp eq i8* %45, null, !dbg !1163
  br i1 %46, label %82, label %47, !dbg !1164

47:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i8* %45, metadata !1101, metadata !DIExpression()) #26, !dbg !1161
  %48 = load i8, i8* %45, align 1, !dbg !1165, !tbaa !1117
  %49 = icmp eq i8 %48, 0, !dbg !1166
  br i1 %49, label %82, label %50, !dbg !1167

50:                                               ; preds = %47, %54
  %51 = phi i8 [ %56, %54 ], [ %48, %47 ]
  %52 = phi i8* [ %55, %54 ], [ %45, %47 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1101, metadata !DIExpression()) #26, !dbg !1161
  %53 = sext i8 %51 to i32, !dbg !1165
  call void @llvm.dbg.value(metadata i32 %53, metadata !1120, metadata !DIExpression()) #26, !dbg !1168
  switch i32 %53, label %58 [
    i32 32, label %54
    i32 9, label %54
    i32 10, label %54
    i32 11, label %54
    i32 12, label %54
    i32 13, label %54
  ], !dbg !1170

54:                                               ; preds = %50, %50, %50, %50, %50, %50
  %55 = getelementptr inbounds i8, i8* %52, i64 1, !dbg !1171
  call void @llvm.dbg.value(metadata i8* %55, metadata !1101, metadata !DIExpression()) #26, !dbg !1161
  %56 = load i8, i8* %55, align 1, !dbg !1165, !tbaa !1117
  %57 = icmp eq i8 %56, 0, !dbg !1166
  br i1 %57, label %82, label %50, !dbg !1167, !llvm.loop !1172

58:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i32 %53, metadata !1132, metadata !DIExpression()) #26, !dbg !1174
  %59 = add nsw i32 %53, -48, !dbg !1176
  %60 = icmp ult i32 %59, 10, !dbg !1176
  br i1 %60, label %61, label %82, !dbg !1177

61:                                               ; preds = %58
  %62 = bitcast i8** %4 to i8*, !dbg !1178
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %62) #26, !dbg !1178
  call void @llvm.dbg.value(metadata i8* null, metadata !1107, metadata !DIExpression()) #26, !dbg !1179
  store i8* null, i8** %4, align 8, !dbg !1180, !tbaa !836
  call void @llvm.dbg.value(metadata i8** %4, metadata !1107, metadata !DIExpression(DW_OP_deref)) #26, !dbg !1179
  %63 = call i64 @strtoul(i8* nonnull %52, i8** nonnull %4, i32 10) #26, !dbg !1181
  call void @llvm.dbg.value(metadata i64 %63, metadata !1110, metadata !DIExpression()) #26, !dbg !1179
  %64 = load i8*, i8** %4, align 8, !dbg !1182, !tbaa !836
  call void @llvm.dbg.value(metadata i8* %64, metadata !1107, metadata !DIExpression()) #26, !dbg !1179
  %65 = icmp eq i8* %64, null, !dbg !1183
  br i1 %65, label %79, label %66, !dbg !1184

66:                                               ; preds = %61
  call void @llvm.dbg.value(metadata i8* %64, metadata !1107, metadata !DIExpression()) #26, !dbg !1179
  %67 = load i8, i8* %64, align 1, !dbg !1185, !tbaa !1117
  %68 = icmp eq i8 %67, 0, !dbg !1186
  br i1 %68, label %80, label %69, !dbg !1187

69:                                               ; preds = %66, %73
  %70 = phi i8 [ %75, %73 ], [ %67, %66 ]
  %71 = phi i8* [ %74, %73 ], [ %64, %66 ]
  %72 = sext i8 %70 to i32, !dbg !1185
  call void @llvm.dbg.value(metadata i32 %72, metadata !1120, metadata !DIExpression()) #26, !dbg !1188
  switch i32 %72, label %77 [
    i32 32, label %73
    i32 9, label %73
    i32 10, label %73
    i32 11, label %73
    i32 12, label %73
    i32 13, label %73
  ], !dbg !1190

73:                                               ; preds = %69, %69, %69, %69, %69, %69
  call void @llvm.dbg.value(metadata i8* %71, metadata !1107, metadata !DIExpression()) #26, !dbg !1179
  %74 = getelementptr inbounds i8, i8* %71, i64 1, !dbg !1191
  call void @llvm.dbg.value(metadata i8* %74, metadata !1107, metadata !DIExpression()) #26, !dbg !1179
  %75 = load i8, i8* %74, align 1, !dbg !1185, !tbaa !1117
  %76 = icmp eq i8 %75, 0, !dbg !1186
  br i1 %76, label %80, label %69, !dbg !1187, !llvm.loop !1192

77:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i8* undef, metadata !1107, metadata !DIExpression()) #26, !dbg !1179
  %78 = icmp eq i8 %70, 44, !dbg !1194
  br i1 %78, label %80, label %79, !dbg !1194

79:                                               ; preds = %77, %61
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %62) #26, !dbg !1195
  br label %82

80:                                               ; preds = %73, %66, %77
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %62) #26, !dbg !1195
  call void @llvm.dbg.value(metadata i64 %63, metadata !1092, metadata !DIExpression()), !dbg !1098
  %81 = icmp eq i64 %63, 0, !dbg !1196
  br i1 %81, label %82, label %83, !dbg !1198

82:                                               ; preds = %54, %47, %58, %79, %43, %80
  br label %83, !dbg !1198

83:                                               ; preds = %80, %82
  %84 = phi i64 [ -1, %82 ], [ %63, %80 ]
  call void @llvm.dbg.value(metadata i64 %84, metadata !1092, metadata !DIExpression()), !dbg !1098
  %85 = icmp eq i64 %44, 0, !dbg !1199
  %86 = icmp ult i64 %44, %84, !dbg !1201
  %87 = select i1 %86, i64 %44, i64 %84, !dbg !1201
  call void @llvm.dbg.value(metadata i32 undef, metadata !1091, metadata !DIExpression()), !dbg !1098
  br i1 %85, label %88, label %126

88:                                               ; preds = %1, %83
  %89 = phi i64 [ %84, %83 ], [ -1, %1 ]
  %90 = bitcast %struct.cpu_set_t* %3 to i8*, !dbg !1202
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %90) #26, !dbg !1202
  call void @llvm.dbg.declare(metadata %struct.cpu_set_t* %3, metadata !1208, metadata !DIExpression()) #26, !dbg !1238
  %91 = call i32 @sched_getaffinity(i32 0, i64 128, %struct.cpu_set_t* nonnull %3) #26, !dbg !1239
  %92 = icmp eq i32 %91, 0, !dbg !1240
  br i1 %92, label %93, label %96, !dbg !1241

93:                                               ; preds = %88
  %94 = call i32 @__sched_cpucount(i64 128, %struct.cpu_set_t* nonnull %3) #26, !dbg !1242
  call void @llvm.dbg.value(metadata i32 %94, metadata !1218, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)) #26, !dbg !1243
  %95 = icmp eq i32 %94, 0, !dbg !1244
  br i1 %95, label %96, label %99

96:                                               ; preds = %93, %88
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %90) #26, !dbg !1246
  %97 = call i64 @sysconf(i32 84) #26, !dbg !1247
  call void @llvm.dbg.value(metadata i64 %97, metadata !1229, metadata !DIExpression()) #26, !dbg !1248
  %98 = icmp sgt i64 %97, 0, !dbg !1249
  br i1 %98, label %121, label %119

99:                                               ; preds = %93
  %100 = sext i32 %94 to i64, !dbg !1242
  call void @llvm.dbg.value(metadata i64 %100, metadata !1218, metadata !DIExpression()) #26, !dbg !1243
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %90) #26, !dbg !1246
  call void @llvm.dbg.value(metadata i64 %100, metadata !1228, metadata !DIExpression()) #26, !dbg !1251
  br label %121

101:                                              ; preds = %1
  %102 = tail call i64 @sysconf(i32 83) #26, !dbg !1252
  call void @llvm.dbg.value(metadata i64 %102, metadata !1231, metadata !DIExpression()) #26, !dbg !1253
  %103 = add i64 %102, -1, !dbg !1254
  %104 = icmp ult i64 %103, 2, !dbg !1254
  br i1 %104, label %105, label %116, !dbg !1254

105:                                              ; preds = %101
  %106 = bitcast %struct.cpu_set_t* %2 to i8*, !dbg !1255
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %106) #26, !dbg !1255
  call void @llvm.dbg.declare(metadata %struct.cpu_set_t* %2, metadata !1208, metadata !DIExpression()) #26, !dbg !1257
  %107 = call i32 @sched_getaffinity(i32 0, i64 128, %struct.cpu_set_t* nonnull %2) #26, !dbg !1258
  %108 = icmp eq i32 %107, 0, !dbg !1259
  br i1 %108, label %109, label %112, !dbg !1260

109:                                              ; preds = %105
  %110 = call i32 @__sched_cpucount(i64 128, %struct.cpu_set_t* nonnull %2) #26, !dbg !1261
  call void @llvm.dbg.value(metadata i32 %110, metadata !1218, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)) #26, !dbg !1262
  %111 = icmp eq i32 %110, 0, !dbg !1263
  br i1 %111, label %112, label %113

112:                                              ; preds = %109, %105
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %106) #26, !dbg !1264
  call void @llvm.dbg.value(metadata i64 undef, metadata !1231, metadata !DIExpression()) #26, !dbg !1253
  br label %121

113:                                              ; preds = %109
  %114 = sext i32 %110 to i64, !dbg !1261
  call void @llvm.dbg.value(metadata i64 %114, metadata !1218, metadata !DIExpression()) #26, !dbg !1262
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %106) #26, !dbg !1264
  call void @llvm.dbg.value(metadata i64 %114, metadata !1234, metadata !DIExpression()) #26, !dbg !1265
  %115 = icmp ult i64 %102, %114, !dbg !1266
  call void @llvm.dbg.value(metadata i64 undef, metadata !1231, metadata !DIExpression()) #26, !dbg !1253
  br i1 %115, label %116, label %121

116:                                              ; preds = %113, %101
  %117 = phi i64 [ %102, %101 ], [ %114, %113 ], !dbg !1253
  call void @llvm.dbg.value(metadata i64 %117, metadata !1231, metadata !DIExpression()) #26, !dbg !1253
  %118 = icmp sgt i64 %117, 0, !dbg !1268
  br i1 %118, label %121, label %119

119:                                              ; preds = %116, %96
  %120 = phi i64 [ -1, %116 ], [ %89, %96 ]
  br label %121, !dbg !1270

121:                                              ; preds = %96, %99, %112, %113, %116, %119
  %122 = phi i64 [ %120, %119 ], [ %89, %96 ], [ %89, %99 ], [ -1, %116 ], [ -1, %112 ], [ -1, %113 ]
  %123 = phi i64 [ 1, %119 ], [ %97, %96 ], [ %100, %99 ], [ %117, %116 ], [ %102, %112 ], [ %102, %113 ], !dbg !1271
  call void @llvm.dbg.value(metadata i64 %123, metadata !1096, metadata !DIExpression()), !dbg !1272
  %124 = icmp ult i64 %123, %122, !dbg !1273
  %125 = select i1 %124, i64 %123, i64 %122, !dbg !1273
  br label %126

126:                                              ; preds = %83, %121
  %127 = phi i64 [ %125, %121 ], [ %87, %83 ], !dbg !1098
  ret i64 %127, !dbg !1274
}

; Function Attrs: nofree nounwind readonly
declare !dbg !1275 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind willreturn
declare i64 @strtoul(i8* readonly, i8** nocapture, i32) local_unnamed_addr #13

; Function Attrs: nounwind
declare !dbg !1276 i32 @sched_getaffinity(i32, i64, %struct.cpu_set_t*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__sched_cpucount(i64, %struct.cpu_set_t*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1281 i64 @sysconf(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1285 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1287, metadata !DIExpression()), !dbg !1290
  %2 = icmp eq i8* %0, null, !dbg !1291
  br i1 %2, label %3, label %6, !dbg !1293

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1294, !tbaa !836
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.50, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #31, !dbg !1296
  tail call void @abort() #28, !dbg !1297
  unreachable, !dbg !1297

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #27, !dbg !1298
  call void @llvm.dbg.value(metadata i8* %7, metadata !1288, metadata !DIExpression()), !dbg !1290
  %8 = icmp eq i8* %7, null, !dbg !1299
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1300
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1300
  call void @llvm.dbg.value(metadata i8* %10, metadata !1289, metadata !DIExpression()), !dbg !1290
  %11 = ptrtoint i8* %10 to i64, !dbg !1301
  %12 = ptrtoint i8* %0 to i64, !dbg !1301
  %13 = sub i64 %11, %12, !dbg !1301
  %14 = icmp sgt i64 %13, 6, !dbg !1303
  br i1 %14, label %15, label %24, !dbg !1304

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1305
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.51, i64 0, i64 0), i64 7) #27, !dbg !1306
  %18 = icmp eq i32 %17, 0, !dbg !1307
  br i1 %18, label %19, label %24, !dbg !1308

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1287, metadata !DIExpression()), !dbg !1290
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.52, i64 0, i64 0), i64 3) #27, !dbg !1309
  %21 = icmp eq i32 %20, 0, !dbg !1312
  br i1 %21, label %22, label %24, !dbg !1313

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %23, metadata !1287, metadata !DIExpression()), !dbg !1290
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1316, !tbaa !836
  br label %24, !dbg !1317

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1287, metadata !DIExpression()), !dbg !1290
  store i8* %25, i8** @program_name, align 8, !dbg !1318, !tbaa !836
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1319, !tbaa !836
  ret void, !dbg !1320
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #14

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1321 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1326, metadata !DIExpression()), !dbg !1329
  %2 = tail call i32* @__errno_location() #30, !dbg !1330
  %3 = load i32, i32* %2, align 4, !dbg !1330, !tbaa !997
  call void @llvm.dbg.value(metadata i32 %3, metadata !1327, metadata !DIExpression()), !dbg !1329
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1331
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1331
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1331
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #26, !dbg !1332
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1332
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1328, metadata !DIExpression()), !dbg !1329
  store i32 %3, i32* %2, align 4, !dbg !1333, !tbaa !997
  ret %struct.quoting_options* %8, !dbg !1334
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #15 !dbg !1335 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1341, metadata !DIExpression()), !dbg !1342
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1343
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1343
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1344
  %5 = load i32, i32* %4, align 8, !dbg !1344, !tbaa !1345
  ret i32 %5, !dbg !1347
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #9 !dbg !1348 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1352, metadata !DIExpression()), !dbg !1354
  call void @llvm.dbg.value(metadata i32 %1, metadata !1353, metadata !DIExpression()), !dbg !1354
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1355
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1355
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1356
  store i32 %1, i32* %5, align 8, !dbg !1357, !tbaa !1345
  ret void, !dbg !1358
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #16 !dbg !1359 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1363, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.value(metadata i8 %1, metadata !1364, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.value(metadata i32 %2, metadata !1365, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.value(metadata i8 %1, metadata !1366, metadata !DIExpression()), !dbg !1372
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1373
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1373
  %6 = lshr i8 %1, 5, !dbg !1374
  %7 = zext i8 %6 to i64, !dbg !1374
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1375
  call void @llvm.dbg.value(metadata i32* %8, metadata !1368, metadata !DIExpression()), !dbg !1372
  %9 = and i8 %1, 31, !dbg !1376
  %10 = zext i8 %9 to i32, !dbg !1376
  call void @llvm.dbg.value(metadata i32 %10, metadata !1370, metadata !DIExpression()), !dbg !1372
  %11 = load i32, i32* %8, align 4, !dbg !1377, !tbaa !997
  %12 = lshr i32 %11, %10, !dbg !1378
  %13 = and i32 %12, 1, !dbg !1379
  call void @llvm.dbg.value(metadata i32 %13, metadata !1371, metadata !DIExpression()), !dbg !1372
  %14 = and i32 %2, 1, !dbg !1380
  %15 = xor i32 %13, %14, !dbg !1381
  %16 = shl i32 %15, %10, !dbg !1382
  %17 = xor i32 %16, %11, !dbg !1383
  store i32 %17, i32* %8, align 4, !dbg !1383, !tbaa !997
  ret i32 %13, !dbg !1384
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #16 !dbg !1385 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1389, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata i32 %1, metadata !1390, metadata !DIExpression()), !dbg !1392
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1393
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1395
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1389, metadata !DIExpression()), !dbg !1392
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1396
  %6 = load i32, i32* %5, align 4, !dbg !1396, !tbaa !1397
  call void @llvm.dbg.value(metadata i32 %6, metadata !1391, metadata !DIExpression()), !dbg !1392
  store i32 %1, i32* %5, align 4, !dbg !1398, !tbaa !1397
  ret i32 %6, !dbg !1399
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1400 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1404, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i8* %1, metadata !1405, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i8* %2, metadata !1406, metadata !DIExpression()), !dbg !1407
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1408
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1410
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1404, metadata !DIExpression()), !dbg !1407
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1411
  store i32 10, i32* %6, align 8, !dbg !1412, !tbaa !1345
  %7 = icmp ne i8* %1, null, !dbg !1413
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1415
  br i1 %9, label %11, label %10, !dbg !1415

10:                                               ; preds = %3
  tail call void @abort() #28, !dbg !1416
  unreachable, !dbg !1416

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1417
  store i8* %1, i8** %12, align 8, !dbg !1418, !tbaa !1419
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1420
  store i8* %2, i8** %13, align 8, !dbg !1421, !tbaa !1422
  ret void, !dbg !1423
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1424 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1428, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %1, metadata !1429, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i8* %2, metadata !1430, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %3, metadata !1431, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1432, metadata !DIExpression()), !dbg !1436
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1437
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1437
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1433, metadata !DIExpression()), !dbg !1436
  %8 = tail call i32* @__errno_location() #30, !dbg !1438
  %9 = load i32, i32* %8, align 4, !dbg !1438, !tbaa !997
  call void @llvm.dbg.value(metadata i32 %9, metadata !1434, metadata !DIExpression()), !dbg !1436
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1439
  %11 = load i32, i32* %10, align 8, !dbg !1439, !tbaa !1345
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1440
  %13 = load i32, i32* %12, align 4, !dbg !1440, !tbaa !1397
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1441
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1442
  %16 = load i8*, i8** %15, align 8, !dbg !1442, !tbaa !1419
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1443
  %18 = load i8*, i8** %17, align 8, !dbg !1443, !tbaa !1422
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %19, metadata !1435, metadata !DIExpression()), !dbg !1436
  store i32 %9, i32* %8, align 4, !dbg !1445, !tbaa !997
  ret i64 %19, !dbg !1446
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1447 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1453, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %1, metadata !1454, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8* %2, metadata !1455, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %3, metadata !1456, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i32 %4, metadata !1457, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i32 %5, metadata !1458, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i32* %6, metadata !1459, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8* %7, metadata !1460, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8* %8, metadata !1461, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 0, metadata !1463, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 0, metadata !1464, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8* null, metadata !1465, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 0, metadata !1466, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8 0, metadata !1467, metadata !DIExpression()), !dbg !1523
  %13 = tail call i64 @__ctype_get_mb_cur_max() #26, !dbg !1524
  %14 = icmp eq i64 %13, 1, !dbg !1525
  call void @llvm.dbg.value(metadata i1 %14, metadata !1468, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1523
  %15 = lshr i32 %5, 1, !dbg !1526
  %16 = trunc i32 %15 to i8, !dbg !1526
  %17 = and i8 %16, 1, !dbg !1526
  call void @llvm.dbg.value(metadata i8 %17, metadata !1469, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8 0, metadata !1470, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8 0, metadata !1471, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8 1, metadata !1472, metadata !DIExpression()), !dbg !1523
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1527

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1528
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1529
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1530
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1531
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1523
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1532
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1533
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1534
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1454, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8 %38, metadata !1472, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8 %37, metadata !1471, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8 %36, metadata !1470, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8 %35, metadata !1469, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %34, metadata !1456, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8 %33, metadata !1467, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %32, metadata !1466, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8* %31, metadata !1465, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %30, metadata !1464, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 0, metadata !1463, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8* %29, metadata !1461, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8* %28, metadata !1460, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i32 %27, metadata !1457, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.label(metadata !1517), !dbg !1535
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
  ], !dbg !1536

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1469, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i32 5, metadata !1457, metadata !DIExpression()), !dbg !1523
  br label %92, !dbg !1537

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1469, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i32 5, metadata !1457, metadata !DIExpression()), !dbg !1523
  %42 = and i8 %35, 1, !dbg !1539
  %43 = icmp eq i8 %42, 0, !dbg !1539
  br i1 %43, label %44, label %92, !dbg !1537

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1541
  br i1 %45, label %92, label %46, !dbg !1544

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1541, !tbaa !1117
  br label %92, !dbg !1541

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.63, i64 0, i64 0), i32 %27), !dbg !1545
  call void @llvm.dbg.value(metadata i8* %48, metadata !1460, metadata !DIExpression()), !dbg !1523
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), i32 %27), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %49, metadata !1461, metadata !DIExpression()), !dbg !1523
  br label %50, !dbg !1550

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1461, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8* %51, metadata !1460, metadata !DIExpression()), !dbg !1523
  %53 = and i8 %35, 1, !dbg !1551
  %54 = icmp eq i8 %53, 0, !dbg !1551
  br i1 %54, label %55, label %70, !dbg !1553

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1465, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 0, metadata !1463, metadata !DIExpression()), !dbg !1523
  %56 = load i8, i8* %51, align 1, !dbg !1554, !tbaa !1117
  %57 = icmp eq i8 %56, 0, !dbg !1557
  br i1 %57, label %70, label %58, !dbg !1557

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1465, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %61, metadata !1463, metadata !DIExpression()), !dbg !1523
  %62 = icmp ult i64 %61, %39, !dbg !1558
  br i1 %62, label %63, label %65, !dbg !1561

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1558
  store i8 %59, i8* %64, align 1, !dbg !1558, !tbaa !1117
  br label %65, !dbg !1558

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1561
  call void @llvm.dbg.value(metadata i64 %66, metadata !1463, metadata !DIExpression()), !dbg !1523
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1562
  call void @llvm.dbg.value(metadata i8* %67, metadata !1465, metadata !DIExpression()), !dbg !1523
  %68 = load i8, i8* %67, align 1, !dbg !1554, !tbaa !1117
  %69 = icmp eq i8 %68, 0, !dbg !1557
  br i1 %69, label %70, label %58, !dbg !1557, !llvm.loop !1563

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1565
  call void @llvm.dbg.value(metadata i64 %71, metadata !1463, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8 1, metadata !1467, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8* %52, metadata !1465, metadata !DIExpression()), !dbg !1523
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #27, !dbg !1566
  call void @llvm.dbg.value(metadata i64 %72, metadata !1466, metadata !DIExpression()), !dbg !1523
  br label %92, !dbg !1567

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1467, metadata !DIExpression()), !dbg !1523
  br label %74, !dbg !1568

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1523
  call void @llvm.dbg.value(metadata i8 %75, metadata !1467, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8 1, metadata !1469, metadata !DIExpression()), !dbg !1523
  br label %76, !dbg !1569

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1531
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1523
  call void @llvm.dbg.value(metadata i8 %78, metadata !1469, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8 %77, metadata !1467, metadata !DIExpression()), !dbg !1523
  %79 = and i8 %78, 1, !dbg !1570
  %80 = icmp eq i8 %79, 0, !dbg !1570
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1572
  br label %82, !dbg !1572

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1523
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1526
  call void @llvm.dbg.value(metadata i8 %84, metadata !1469, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8 %83, metadata !1467, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i32 2, metadata !1457, metadata !DIExpression()), !dbg !1523
  %85 = and i8 %84, 1, !dbg !1573
  %86 = icmp eq i8 %85, 0, !dbg !1573
  br i1 %86, label %87, label %92, !dbg !1575

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1576
  br i1 %88, label %92, label %89, !dbg !1579

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1576, !tbaa !1117
  br label %92, !dbg !1576

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1469, metadata !DIExpression()), !dbg !1523
  br label %92, !dbg !1580

91:                                               ; preds = %26
  call void @abort() #28, !dbg !1581
  unreachable, !dbg !1581

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1565
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %40 ], !dbg !1523
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1523
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1523
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1523
  call void @llvm.dbg.value(metadata i8 %100, metadata !1469, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8 %99, metadata !1467, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %98, metadata !1466, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8* %97, metadata !1465, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %96, metadata !1463, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8* %95, metadata !1461, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8* %94, metadata !1460, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i32 %93, metadata !1457, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 0, metadata !1462, metadata !DIExpression()), !dbg !1523
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
  br label %121, !dbg !1582

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1583
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1565
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1528
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1532
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1533
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1534
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1454, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8 %128, metadata !1472, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8 %127, metadata !1471, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8 %126, metadata !1470, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %125, metadata !1456, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %124, metadata !1464, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %123, metadata !1463, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %122, metadata !1462, metadata !DIExpression()), !dbg !1523
  %130 = icmp eq i64 %125, -1, !dbg !1584
  br i1 %130, label %131, label %135, !dbg !1585

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1586
  %133 = load i8, i8* %132, align 1, !dbg !1586, !tbaa !1117
  %134 = icmp eq i8 %133, 0, !dbg !1587
  br i1 %134, label %587, label %137, !dbg !1588

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1589
  br i1 %136, label %587, label %137, !dbg !1588

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1478, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 0, metadata !1479, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 0, metadata !1480, metadata !DIExpression()), !dbg !1590
  br i1 %106, label %138, label %153, !dbg !1591

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1593
  %140 = and i1 %107, %130, !dbg !1594
  br i1 %140, label %141, label %143, !dbg !1594

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #27, !dbg !1595
  call void @llvm.dbg.value(metadata i64 %142, metadata !1456, metadata !DIExpression()), !dbg !1523
  br label %143, !dbg !1596

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1596
  call void @llvm.dbg.value(metadata i64 %144, metadata !1456, metadata !DIExpression()), !dbg !1523
  %145 = icmp ugt i64 %139, %144, !dbg !1597
  br i1 %145, label %153, label %146, !dbg !1598

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1599
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1600
  %149 = icmp ne i32 %148, 0, !dbg !1601
  %150 = or i1 %149, %109, !dbg !1602
  %151 = xor i1 %149, true, !dbg !1602
  %152 = zext i1 %151 to i8, !dbg !1602
  br i1 %150, label %153, label %646, !dbg !1602

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1590
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1590
  call void @llvm.dbg.value(metadata i8 %156, metadata !1478, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i64 %154, metadata !1456, metadata !DIExpression()), !dbg !1523
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1603
  %158 = load i8, i8* %157, align 1, !dbg !1603, !tbaa !1117
  call void @llvm.dbg.value(metadata i8 %158, metadata !1473, metadata !DIExpression()), !dbg !1590
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
  ], !dbg !1604

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1605

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1606

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1479, metadata !DIExpression()), !dbg !1590
  %162 = and i8 %126, 1, !dbg !1610
  %163 = icmp eq i8 %162, 0, !dbg !1610
  %164 = and i1 %110, %163, !dbg !1610
  br i1 %164, label %165, label %181, !dbg !1610

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1612
  br i1 %166, label %167, label %169, !dbg !1616

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1612
  store i8 39, i8* %168, align 1, !dbg !1612, !tbaa !1117
  br label %169, !dbg !1612

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1616
  call void @llvm.dbg.value(metadata i64 %170, metadata !1463, metadata !DIExpression()), !dbg !1523
  %171 = icmp ult i64 %170, %129, !dbg !1617
  br i1 %171, label %172, label %174, !dbg !1620

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1617
  store i8 36, i8* %173, align 1, !dbg !1617, !tbaa !1117
  br label %174, !dbg !1617

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1620
  call void @llvm.dbg.value(metadata i64 %175, metadata !1463, metadata !DIExpression()), !dbg !1523
  %176 = icmp ult i64 %175, %129, !dbg !1621
  br i1 %176, label %177, label %179, !dbg !1624

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1621
  store i8 39, i8* %178, align 1, !dbg !1621, !tbaa !1117
  br label %179, !dbg !1621

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1624
  call void @llvm.dbg.value(metadata i64 %180, metadata !1463, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8 1, metadata !1470, metadata !DIExpression()), !dbg !1523
  br label %181, !dbg !1625

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1523
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1523
  call void @llvm.dbg.value(metadata i8 %183, metadata !1470, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %182, metadata !1463, metadata !DIExpression()), !dbg !1523
  %184 = icmp ult i64 %182, %129, !dbg !1626
  br i1 %184, label %185, label %187, !dbg !1629

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1626
  store i8 92, i8* %186, align 1, !dbg !1626, !tbaa !1117
  br label %187, !dbg !1626

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1629
  call void @llvm.dbg.value(metadata i64 %188, metadata !1463, metadata !DIExpression()), !dbg !1523
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1630
  br i1 %191, label %192, label %473, !dbg !1630

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1632
  %194 = load i8, i8* %193, align 1, !dbg !1632, !tbaa !1117
  %195 = add i8 %194, -48, !dbg !1633
  %196 = icmp ult i8 %195, 10, !dbg !1633
  br i1 %196, label %197, label %473, !dbg !1633

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1634
  br i1 %198, label %199, label %201, !dbg !1638

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1634
  store i8 48, i8* %200, align 1, !dbg !1634, !tbaa !1117
  br label %201, !dbg !1634

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1638
  call void @llvm.dbg.value(metadata i64 %202, metadata !1463, metadata !DIExpression()), !dbg !1523
  %203 = icmp ult i64 %202, %129, !dbg !1639
  br i1 %203, label %204, label %206, !dbg !1642

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1639
  store i8 48, i8* %205, align 1, !dbg !1639, !tbaa !1117
  br label %206, !dbg !1639

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1642
  call void @llvm.dbg.value(metadata i64 %207, metadata !1463, metadata !DIExpression()), !dbg !1523
  br label %473, !dbg !1643

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1644

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1645

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1646

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1648
  br i1 %214, label %215, label %473, !dbg !1648

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1650
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1651
  %218 = load i8, i8* %217, align 1, !dbg !1651, !tbaa !1117
  %219 = icmp eq i8 %218, 63, !dbg !1652
  br i1 %219, label %220, label %473, !dbg !1653

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1654
  %222 = load i8, i8* %221, align 1, !dbg !1654, !tbaa !1117
  %223 = sext i8 %222 to i32, !dbg !1654
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
  ], !dbg !1655

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1656

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1473, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i64 undef, metadata !1462, metadata !DIExpression()), !dbg !1523
  %226 = icmp ult i64 %123, %129, !dbg !1658
  br i1 %226, label %227, label %229, !dbg !1661

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1658
  store i8 63, i8* %228, align 1, !dbg !1658, !tbaa !1117
  br label %229, !dbg !1658

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !1661
  call void @llvm.dbg.value(metadata i64 %230, metadata !1463, metadata !DIExpression()), !dbg !1523
  %231 = icmp ult i64 %230, %129, !dbg !1662
  br i1 %231, label %232, label %234, !dbg !1665

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1662
  store i8 34, i8* %233, align 1, !dbg !1662, !tbaa !1117
  br label %234, !dbg !1662

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !1665
  call void @llvm.dbg.value(metadata i64 %235, metadata !1463, metadata !DIExpression()), !dbg !1523
  %236 = icmp ult i64 %235, %129, !dbg !1666
  br i1 %236, label %237, label %239, !dbg !1669

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1666
  store i8 34, i8* %238, align 1, !dbg !1666, !tbaa !1117
  br label %239, !dbg !1666

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !1669
  call void @llvm.dbg.value(metadata i64 %240, metadata !1463, metadata !DIExpression()), !dbg !1523
  %241 = icmp ult i64 %240, %129, !dbg !1670
  br i1 %241, label %242, label %244, !dbg !1673

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1670
  store i8 63, i8* %243, align 1, !dbg !1670, !tbaa !1117
  br label %244, !dbg !1670

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !1673
  call void @llvm.dbg.value(metadata i64 %245, metadata !1463, metadata !DIExpression()), !dbg !1523
  br label %473, !dbg !1674

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1477, metadata !DIExpression()), !dbg !1590
  br label %256, !dbg !1675

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1477, metadata !DIExpression()), !dbg !1590
  br label %256, !dbg !1676

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1477, metadata !DIExpression()), !dbg !1590
  br label %254, !dbg !1677

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1477, metadata !DIExpression()), !dbg !1590
  br label %254, !dbg !1678

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1477, metadata !DIExpression()), !dbg !1590
  br label %256, !dbg !1679

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1477, metadata !DIExpression()), !dbg !1590
  br i1 %110, label %252, label %253, !dbg !1680

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !1681

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !1684

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !1686
  call void @llvm.dbg.value(metadata i8 %255, metadata !1477, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.label(metadata !1518), !dbg !1687
  br i1 %111, label %256, label %631, !dbg !1688

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !1686
  call void @llvm.dbg.value(metadata i8 %257, metadata !1477, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.label(metadata !1519), !dbg !1690
  br i1 %102, label %495, label %473, !dbg !1691

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1692

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1693, !tbaa !1117
  %261 = icmp eq i8 %260, 0, !dbg !1695
  br i1 %261, label %262, label %473, !dbg !1696

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !1697
  br i1 %263, label %264, label %473, !dbg !1699

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1480, metadata !DIExpression()), !dbg !1590
  br label %265, !dbg !1700

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1590
  call void @llvm.dbg.value(metadata i8 %266, metadata !1480, metadata !DIExpression()), !dbg !1590
  br i1 %111, label %473, label %631, !dbg !1701

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1471, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8 1, metadata !1480, metadata !DIExpression()), !dbg !1590
  br i1 %110, label %268, label %473, !dbg !1703

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !1704

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !1707
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !1709
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !1709
  %274 = select i1 %272, i64 %129, i64 0, !dbg !1709
  call void @llvm.dbg.value(metadata i64 %274, metadata !1454, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %273, metadata !1464, metadata !DIExpression()), !dbg !1523
  %275 = icmp ult i64 %123, %274, !dbg !1710
  br i1 %275, label %276, label %278, !dbg !1713

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1710
  store i8 39, i8* %277, align 1, !dbg !1710, !tbaa !1117
  br label %278, !dbg !1710

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !1713
  call void @llvm.dbg.value(metadata i64 %279, metadata !1463, metadata !DIExpression()), !dbg !1523
  %280 = icmp ult i64 %279, %274, !dbg !1714
  br i1 %280, label %281, label %283, !dbg !1717

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1714
  store i8 92, i8* %282, align 1, !dbg !1714, !tbaa !1117
  br label %283, !dbg !1714

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !1717
  call void @llvm.dbg.value(metadata i64 %284, metadata !1463, metadata !DIExpression()), !dbg !1523
  %285 = icmp ult i64 %284, %274, !dbg !1718
  br i1 %285, label %286, label %288, !dbg !1721

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1718
  store i8 39, i8* %287, align 1, !dbg !1718, !tbaa !1117
  br label %288, !dbg !1718

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !1721
  call void @llvm.dbg.value(metadata i64 %289, metadata !1463, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8 0, metadata !1470, metadata !DIExpression()), !dbg !1523
  br label %473, !dbg !1722

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !1723

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1481, metadata !DIExpression()), !dbg !1724
  %292 = tail call i16** @__ctype_b_loc() #30, !dbg !1725
  %293 = load i16*, i16** %292, align 8, !dbg !1725, !tbaa !836
  %294 = zext i8 %158 to i64, !dbg !1725
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1725
  %296 = load i16, i16* %295, align 2, !dbg !1725, !tbaa !1727
  %297 = lshr i16 %296, 14, !dbg !1729
  %298 = trunc i16 %297 to i8, !dbg !1729
  %299 = and i8 %298, 1, !dbg !1729
  call void @llvm.dbg.value(metadata i8 %354, metadata !1484, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i64 %355, metadata !1481, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i64 %306, metadata !1456, metadata !DIExpression()), !dbg !1523
  %300 = icmp eq i8 %299, 0, !dbg !1730
  call void @llvm.dbg.value(metadata i1 %357, metadata !1480, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1590
  br label %359, !dbg !1731

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #26, !dbg !1732
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1485, metadata !DIExpression()), !dbg !1733
  call void @llvm.dbg.value(metadata i8* %23, metadata !1734, metadata !DIExpression()) #26, !dbg !1742
  call void @llvm.dbg.value(metadata i32 0, metadata !1740, metadata !DIExpression()) #26, !dbg !1742
  call void @llvm.dbg.value(metadata i64 8, metadata !1741, metadata !DIExpression()) #26, !dbg !1742
  store i64 0, i64* %10, align 8, !dbg !1744
  call void @llvm.dbg.value(metadata i64 0, metadata !1481, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i8 1, metadata !1484, metadata !DIExpression()), !dbg !1724
  %302 = icmp eq i64 %154, -1, !dbg !1745
  br i1 %302, label %303, label %305, !dbg !1747

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #27, !dbg !1748
  call void @llvm.dbg.value(metadata i64 %304, metadata !1456, metadata !DIExpression()), !dbg !1523
  br label %305, !dbg !1749

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1590
  call void @llvm.dbg.value(metadata i64 %306, metadata !1456, metadata !DIExpression()), !dbg !1523
  br label %307, !dbg !1750

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !1751
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !1752
  call void @llvm.dbg.value(metadata i8 %309, metadata !1484, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i64 %308, metadata !1481, metadata !DIExpression()), !dbg !1724
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #26, !dbg !1753
  %310 = add i64 %308, %122, !dbg !1754
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !1755
  %312 = sub i64 %306, %310, !dbg !1756
  call void @llvm.dbg.value(metadata i32* %12, metadata !1503, metadata !DIExpression(DW_OP_deref)), !dbg !1757
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #26, !dbg !1758
  call void @llvm.dbg.value(metadata i64 %313, metadata !1506, metadata !DIExpression()), !dbg !1757
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !1759

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1481, metadata !DIExpression()), !dbg !1724
  %315 = icmp ugt i64 %306, %310, !dbg !1760
  br i1 %315, label %316, label %341, !dbg !1762

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !1763
  br label %318, !dbg !1763

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1481, metadata !DIExpression()), !dbg !1724
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !1764
  %322 = load i8, i8* %321, align 1, !dbg !1764, !tbaa !1117
  %323 = icmp eq i8 %322, 0, !dbg !1762
  br i1 %323, label %341, label %324, !dbg !1763

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !1765
  call void @llvm.dbg.value(metadata i64 %325, metadata !1481, metadata !DIExpression()), !dbg !1724
  %326 = add i64 %325, %122, !dbg !1766
  %327 = icmp ult i64 %326, %306, !dbg !1760
  br i1 %327, label %318, label %341, !dbg !1762, !llvm.loop !1767

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !1768
  call void @llvm.dbg.value(metadata i64 1, metadata !1507, metadata !DIExpression()), !dbg !1769
  br i1 %330, label %331, label %344, !dbg !1768

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1507, metadata !DIExpression()), !dbg !1769
  %333 = add i64 %332, %310, !dbg !1770
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !1773
  %335 = load i8, i8* %334, align 1, !dbg !1773, !tbaa !1117
  %336 = sext i8 %335 to i32, !dbg !1773
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !1774

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !1775
  call void @llvm.dbg.value(metadata i64 %338, metadata !1507, metadata !DIExpression()), !dbg !1769
  %339 = icmp eq i64 %338, %313, !dbg !1776
  br i1 %339, label %344, label %331, !dbg !1777, !llvm.loop !1778

340:                                              ; preds = %307
  br label %341, !dbg !1780

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1484, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i64 undef, metadata !1481, metadata !DIExpression()), !dbg !1724
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #26, !dbg !1780
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !1781, !tbaa !997
  call void @llvm.dbg.value(metadata i32 %345, metadata !1503, metadata !DIExpression()), !dbg !1757
  %346 = call i32 @iswprint(i32 %345) #26, !dbg !1783
  %347 = icmp eq i32 %346, 0, !dbg !1783
  %348 = select i1 %347, i8 0, i8 %309, !dbg !1784
  call void @llvm.dbg.value(metadata i8 %348, metadata !1484, metadata !DIExpression()), !dbg !1724
  %349 = add i64 %313, %308, !dbg !1785
  call void @llvm.dbg.value(metadata i64 %349, metadata !1481, metadata !DIExpression()), !dbg !1724
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #26, !dbg !1780
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #27, !dbg !1786
  %351 = icmp eq i32 %350, 0, !dbg !1787
  br i1 %351, label %307, label %353, !dbg !1788, !llvm.loop !1789

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1484, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i64 undef, metadata !1481, metadata !DIExpression()), !dbg !1724
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #26, !dbg !1780
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #26, !dbg !1791
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #26, !dbg !1791
  call void @llvm.dbg.value(metadata i8 %354, metadata !1484, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i64 %355, metadata !1481, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i64 %306, metadata !1456, metadata !DIExpression()), !dbg !1523
  %356 = and i8 %354, 1, !dbg !1730
  %357 = icmp eq i8 %356, 0, !dbg !1730
  call void @llvm.dbg.value(metadata i1 %357, metadata !1480, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1590
  %358 = icmp ugt i64 %355, 1, !dbg !1792
  br i1 %358, label %367, label %359, !dbg !1731

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !1793
  br i1 %364, label %367, label %365, !dbg !1793

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1590
  call void @llvm.dbg.value(metadata i8 %472, metadata !1480, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %441, metadata !1479, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %440, metadata !1478, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %439, metadata !1473, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %438, metadata !1470, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %371, metadata !1456, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %437, metadata !1463, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %375, metadata !1462, metadata !DIExpression()), !dbg !1523
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !1794
  call void @llvm.dbg.value(metadata i64 %372, metadata !1514, metadata !DIExpression()), !dbg !1795
  %373 = and i1 %102, %368
  br label %374, !dbg !1796

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1583
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1523
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1532
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1590
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1590
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !1797
  call void @llvm.dbg.value(metadata i8 %380, metadata !1479, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %379, metadata !1478, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %378, metadata !1473, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %377, metadata !1470, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %376, metadata !1463, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %375, metadata !1462, metadata !DIExpression()), !dbg !1523
  br i1 %373, label %381, label %427, !dbg !1798

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !1803

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1479, metadata !DIExpression()), !dbg !1590
  %383 = and i8 %377, 1, !dbg !1806
  %384 = icmp eq i8 %383, 0, !dbg !1806
  %385 = and i1 %110, %384, !dbg !1806
  br i1 %385, label %386, label %402, !dbg !1806

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !1808
  br i1 %387, label %388, label %390, !dbg !1812

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1808
  store i8 39, i8* %389, align 1, !dbg !1808, !tbaa !1117
  br label %390, !dbg !1808

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !1812
  call void @llvm.dbg.value(metadata i64 %391, metadata !1463, metadata !DIExpression()), !dbg !1523
  %392 = icmp ult i64 %391, %129, !dbg !1813
  br i1 %392, label %393, label %395, !dbg !1816

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !1813
  store i8 36, i8* %394, align 1, !dbg !1813, !tbaa !1117
  br label %395, !dbg !1813

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !1816
  call void @llvm.dbg.value(metadata i64 %396, metadata !1463, metadata !DIExpression()), !dbg !1523
  %397 = icmp ult i64 %396, %129, !dbg !1817
  br i1 %397, label %398, label %400, !dbg !1820

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1817
  store i8 39, i8* %399, align 1, !dbg !1817, !tbaa !1117
  br label %400, !dbg !1817

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !1820
  call void @llvm.dbg.value(metadata i64 %401, metadata !1463, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8 1, metadata !1470, metadata !DIExpression()), !dbg !1523
  br label %402, !dbg !1821

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1523
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1523
  call void @llvm.dbg.value(metadata i8 %404, metadata !1470, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %403, metadata !1463, metadata !DIExpression()), !dbg !1523
  %405 = icmp ult i64 %403, %129, !dbg !1822
  br i1 %405, label %406, label %408, !dbg !1825

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1822
  store i8 92, i8* %407, align 1, !dbg !1822, !tbaa !1117
  br label %408, !dbg !1822

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !1825
  call void @llvm.dbg.value(metadata i64 %409, metadata !1463, metadata !DIExpression()), !dbg !1523
  %410 = icmp ult i64 %409, %129, !dbg !1826
  br i1 %410, label %411, label %415, !dbg !1829

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !1826
  %413 = or i8 %412, 48, !dbg !1826
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !1826
  store i8 %413, i8* %414, align 1, !dbg !1826, !tbaa !1117
  br label %415, !dbg !1826

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !1829
  call void @llvm.dbg.value(metadata i64 %416, metadata !1463, metadata !DIExpression()), !dbg !1523
  %417 = icmp ult i64 %416, %129, !dbg !1830
  br i1 %417, label %418, label %423, !dbg !1833

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !1830
  %420 = and i8 %419, 7, !dbg !1830
  %421 = or i8 %420, 48, !dbg !1830
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !1830
  store i8 %421, i8* %422, align 1, !dbg !1830, !tbaa !1117
  br label %423, !dbg !1830

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !1833
  call void @llvm.dbg.value(metadata i64 %424, metadata !1463, metadata !DIExpression()), !dbg !1523
  %425 = and i8 %378, 7, !dbg !1834
  %426 = or i8 %425, 48, !dbg !1835
  call void @llvm.dbg.value(metadata i8 %426, metadata !1473, metadata !DIExpression()), !dbg !1590
  br label %436, !dbg !1836

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !1837
  %429 = icmp eq i8 %428, 0, !dbg !1837
  br i1 %429, label %436, label %430, !dbg !1839

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !1840
  br i1 %431, label %432, label %434, !dbg !1844

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1840
  store i8 92, i8* %433, align 1, !dbg !1840, !tbaa !1117
  br label %434, !dbg !1840

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !1844
  call void @llvm.dbg.value(metadata i64 %435, metadata !1463, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8 0, metadata !1478, metadata !DIExpression()), !dbg !1590
  br label %436, !dbg !1845

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1523
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1532
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1590
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1590
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1590
  call void @llvm.dbg.value(metadata i8 %441, metadata !1479, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %440, metadata !1478, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %439, metadata !1473, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %438, metadata !1470, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %437, metadata !1463, metadata !DIExpression()), !dbg !1523
  %442 = add i64 %375, 1, !dbg !1846
  %443 = icmp ugt i64 %372, %442, !dbg !1848
  br i1 %443, label %444, label %471, !dbg !1849

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !1850
  %446 = icmp ne i8 %445, 0, !dbg !1850
  %447 = and i8 %441, 1, !dbg !1850
  %448 = icmp eq i8 %447, 0, !dbg !1850
  %449 = and i1 %446, %448, !dbg !1850
  br i1 %449, label %450, label %461, !dbg !1850

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !1853
  br i1 %451, label %452, label %454, !dbg !1857

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !1853
  store i8 39, i8* %453, align 1, !dbg !1853, !tbaa !1117
  br label %454, !dbg !1853

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !1857
  call void @llvm.dbg.value(metadata i64 %455, metadata !1463, metadata !DIExpression()), !dbg !1523
  %456 = icmp ult i64 %455, %129, !dbg !1858
  br i1 %456, label %457, label %459, !dbg !1861

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !1858
  store i8 39, i8* %458, align 1, !dbg !1858, !tbaa !1117
  br label %459, !dbg !1858

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !1861
  call void @llvm.dbg.value(metadata i64 %460, metadata !1463, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8 0, metadata !1470, metadata !DIExpression()), !dbg !1523
  br label %461, !dbg !1862

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !1863
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1523
  call void @llvm.dbg.value(metadata i8 %463, metadata !1470, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %462, metadata !1463, metadata !DIExpression()), !dbg !1523
  %464 = icmp ult i64 %462, %129, !dbg !1864
  br i1 %464, label %465, label %467, !dbg !1867

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !1864
  store i8 %439, i8* %466, align 1, !dbg !1864, !tbaa !1117
  br label %467, !dbg !1864

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !1867
  call void @llvm.dbg.value(metadata i64 %468, metadata !1463, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %442, metadata !1462, metadata !DIExpression()), !dbg !1523
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !1868
  %470 = load i8, i8* %469, align 1, !dbg !1868, !tbaa !1117
  call void @llvm.dbg.value(metadata i8 %470, metadata !1473, metadata !DIExpression()), !dbg !1590
  br label %374, !dbg !1869, !llvm.loop !1870

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1590
  call void @llvm.dbg.value(metadata i8 %472, metadata !1480, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %441, metadata !1479, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %440, metadata !1478, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %439, metadata !1473, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %438, metadata !1470, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %371, metadata !1456, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %437, metadata !1463, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %375, metadata !1462, metadata !DIExpression()), !dbg !1523
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1583
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1523
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1528
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !1873
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1523
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1523
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1590
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1590
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1590
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1454, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8 %482, metadata !1480, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %481, metadata !1479, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %156, metadata !1478, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %480, metadata !1473, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %479, metadata !1471, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8 %478, metadata !1470, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %477, metadata !1456, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %476, metadata !1464, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %475, metadata !1463, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %474, metadata !1462, metadata !DIExpression()), !dbg !1523
  br i1 %116, label %494, label %484, !dbg !1874

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !1876
  %486 = zext i8 %485 to i64, !dbg !1876
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !1877
  %488 = load i32, i32* %487, align 4, !dbg !1877, !tbaa !997
  %489 = and i8 %480, 31, !dbg !1878
  %490 = zext i8 %489 to i32, !dbg !1878
  %491 = shl nuw i32 1, %490, !dbg !1879
  %492 = and i32 %488, %491, !dbg !1879
  %493 = icmp eq i32 %492, 0, !dbg !1879
  br i1 %493, label %494, label %495, !dbg !1880

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !1881

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !1882
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1523
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1528
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !1873
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1532
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1533
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1590
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1590
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1454, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8 %503, metadata !1480, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %502, metadata !1473, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %501, metadata !1471, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8 %500, metadata !1470, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %499, metadata !1456, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %498, metadata !1464, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %497, metadata !1463, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %496, metadata !1462, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.label(metadata !1520), !dbg !1883
  br i1 %109, label %505, label %635, !dbg !1884

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1479, metadata !DIExpression()), !dbg !1590
  %506 = and i8 %500, 1, !dbg !1886
  %507 = icmp eq i8 %506, 0, !dbg !1886
  %508 = and i1 %110, %507, !dbg !1886
  br i1 %508, label %509, label %525, !dbg !1886

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !1888
  br i1 %510, label %511, label %513, !dbg !1892

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !1888
  store i8 39, i8* %512, align 1, !dbg !1888, !tbaa !1117
  br label %513, !dbg !1888

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !1892
  call void @llvm.dbg.value(metadata i64 %514, metadata !1463, metadata !DIExpression()), !dbg !1523
  %515 = icmp ult i64 %514, %504, !dbg !1893
  br i1 %515, label %516, label %518, !dbg !1896

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !1893
  store i8 36, i8* %517, align 1, !dbg !1893, !tbaa !1117
  br label %518, !dbg !1893

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !1896
  call void @llvm.dbg.value(metadata i64 %519, metadata !1463, metadata !DIExpression()), !dbg !1523
  %520 = icmp ult i64 %519, %504, !dbg !1897
  br i1 %520, label %521, label %523, !dbg !1900

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1897
  store i8 39, i8* %522, align 1, !dbg !1897, !tbaa !1117
  br label %523, !dbg !1897

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !1900
  call void @llvm.dbg.value(metadata i64 %524, metadata !1463, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8 1, metadata !1470, metadata !DIExpression()), !dbg !1523
  br label %525, !dbg !1901

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1590
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1523
  call void @llvm.dbg.value(metadata i8 %527, metadata !1470, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %526, metadata !1463, metadata !DIExpression()), !dbg !1523
  %528 = icmp ult i64 %526, %504, !dbg !1902
  br i1 %528, label %529, label %531, !dbg !1905

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1902
  store i8 92, i8* %530, align 1, !dbg !1902, !tbaa !1117
  br label %531, !dbg !1902

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !1905
  call void @llvm.dbg.value(metadata i64 %543, metadata !1454, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8 %542, metadata !1480, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %541, metadata !1479, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %540, metadata !1473, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %539, metadata !1471, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8 %538, metadata !1470, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %537, metadata !1456, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %536, metadata !1464, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %535, metadata !1463, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %534, metadata !1462, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.label(metadata !1521), !dbg !1906
  br label %560, !dbg !1907

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !1882
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1523
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1528
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !1873
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1532
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1533
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !1910
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1590
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1590
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1454, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8 %542, metadata !1480, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %541, metadata !1479, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %540, metadata !1473, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %539, metadata !1471, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8 %538, metadata !1470, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %537, metadata !1456, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %536, metadata !1464, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %535, metadata !1463, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %534, metadata !1462, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.label(metadata !1521), !dbg !1906
  %544 = and i8 %538, 1, !dbg !1907
  %545 = icmp ne i8 %544, 0, !dbg !1907
  %546 = and i8 %541, 1, !dbg !1907
  %547 = icmp eq i8 %546, 0, !dbg !1907
  %548 = and i1 %545, %547, !dbg !1907
  br i1 %548, label %549, label %560, !dbg !1907

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !1911
  br i1 %550, label %551, label %553, !dbg !1915

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !1911
  store i8 39, i8* %552, align 1, !dbg !1911, !tbaa !1117
  br label %553, !dbg !1911

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !1915
  call void @llvm.dbg.value(metadata i64 %554, metadata !1463, metadata !DIExpression()), !dbg !1523
  %555 = icmp ult i64 %554, %543, !dbg !1916
  br i1 %555, label %556, label %558, !dbg !1919

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !1916
  store i8 39, i8* %557, align 1, !dbg !1916, !tbaa !1117
  br label %558, !dbg !1916

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !1919
  call void @llvm.dbg.value(metadata i64 %559, metadata !1463, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8 0, metadata !1470, metadata !DIExpression()), !dbg !1523
  br label %560, !dbg !1920

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1590
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1523
  call void @llvm.dbg.value(metadata i8 %569, metadata !1470, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %568, metadata !1463, metadata !DIExpression()), !dbg !1523
  %570 = icmp ult i64 %568, %561, !dbg !1921
  br i1 %570, label %571, label %573, !dbg !1924

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !1921
  store i8 %563, i8* %572, align 1, !dbg !1921, !tbaa !1117
  br label %573, !dbg !1921

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !1924
  call void @llvm.dbg.value(metadata i64 %574, metadata !1463, metadata !DIExpression()), !dbg !1523
  %575 = icmp eq i8 %562, 0, !dbg !1925
  %576 = select i1 %575, i8 0, i8 %128, !dbg !1927
  call void @llvm.dbg.value(metadata i8 %576, metadata !1472, metadata !DIExpression()), !dbg !1523
  br label %577, !dbg !1928

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !1882
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1523
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1528
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !1873
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1532
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1523
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1534
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1454, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8 %584, metadata !1472, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8 %583, metadata !1471, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8 %582, metadata !1470, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %581, metadata !1456, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %580, metadata !1464, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %579, metadata !1463, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %578, metadata !1462, metadata !DIExpression()), !dbg !1523
  %586 = add i64 %578, 1, !dbg !1929
  call void @llvm.dbg.value(metadata i64 %586, metadata !1462, metadata !DIExpression()), !dbg !1523
  br label %121, !dbg !1930, !llvm.loop !1931

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !1933
  %590 = and i1 %110, %589, !dbg !1935
  %591 = xor i1 %590, true, !dbg !1935
  %592 = or i1 %109, %591, !dbg !1935
  br i1 %592, label %593, label %635, !dbg !1935

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !1936
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !1936
  br i1 %597, label %598, label %607, !dbg !1936

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !1938
  %600 = icmp eq i8 %599, 0, !dbg !1938
  br i1 %600, label %603, label %601, !dbg !1941

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !1942
  br label %652, !dbg !1943

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !1944
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !1946
  br i1 %606, label %26, label %607, !dbg !1946

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !1947
  %610 = and i1 %609, %608, !dbg !1949
  br i1 %610, label %611, label %626, !dbg !1949

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1465, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %123, metadata !1463, metadata !DIExpression()), !dbg !1523
  %612 = load i8, i8* %97, align 1, !dbg !1950, !tbaa !1117
  %613 = icmp eq i8 %612, 0, !dbg !1953
  br i1 %613, label %626, label %614, !dbg !1953

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1465, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %617, metadata !1463, metadata !DIExpression()), !dbg !1523
  %618 = icmp ult i64 %617, %129, !dbg !1954
  br i1 %618, label %619, label %621, !dbg !1957

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !1954
  store i8 %615, i8* %620, align 1, !dbg !1954, !tbaa !1117
  br label %621, !dbg !1954

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !1957
  call void @llvm.dbg.value(metadata i64 %622, metadata !1463, metadata !DIExpression()), !dbg !1523
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !1958
  call void @llvm.dbg.value(metadata i8* %623, metadata !1465, metadata !DIExpression()), !dbg !1523
  %624 = load i8, i8* %623, align 1, !dbg !1950, !tbaa !1117
  %625 = icmp eq i8 %624, 0, !dbg !1953
  br i1 %625, label %626, label %614, !dbg !1953, !llvm.loop !1959

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1565
  call void @llvm.dbg.value(metadata i64 %627, metadata !1463, metadata !DIExpression()), !dbg !1523
  %628 = icmp ult i64 %627, %129, !dbg !1961
  br i1 %628, label %629, label %652, !dbg !1963

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !1964
  store i8 0, i8* %630, align 1, !dbg !1965, !tbaa !1117
  br label %652, !dbg !1964

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1454, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %637, metadata !1456, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.label(metadata !1522), !dbg !1966
  %633 = icmp eq i8 %101, 0, !dbg !1967
  %634 = select i1 %633, i32 2, i32 4, !dbg !1967
  br label %642, !dbg !1967

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1454, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %637, metadata !1456, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.label(metadata !1522), !dbg !1966
  %639 = icmp eq i32 %93, 2, !dbg !1969
  %640 = icmp eq i8 %636, 0, !dbg !1967
  %641 = select i1 %640, i32 2, i32 4, !dbg !1967
  br i1 %639, label %642, label %646, !dbg !1967

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !1967

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1457, metadata !DIExpression()), !dbg !1523
  %650 = and i32 %5, -3, !dbg !1970
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !1971
  br label %652, !dbg !1972

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !1973
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !1974 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1978, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata i32 %1, metadata !1979, metadata !DIExpression()), !dbg !1982
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #26, !dbg !1983
  call void @llvm.dbg.value(metadata i8* %3, metadata !1980, metadata !DIExpression()), !dbg !1982
  %4 = icmp eq i8* %3, %0, !dbg !1984
  br i1 %4, label %5, label %72, !dbg !1986

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #26, !dbg !1987
  call void @llvm.dbg.value(metadata i8* %6, metadata !1981, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata i8* %6, metadata !1988, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i8* undef, metadata !1994, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i8 85, metadata !1995, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i8 84, metadata !1996, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i8 70, metadata !1997, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i8 45, metadata !1998, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i8 56, metadata !1999, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i8 0, metadata !2000, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i8 0, metadata !2001, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i8 0, metadata !2002, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i8 0, metadata !2003, metadata !DIExpression()), !dbg !2004
  %7 = load i8, i8* %6, align 1, !dbg !2007, !tbaa !1117
  %8 = and i8 %7, -33, !dbg !2007
  %9 = sext i8 %8 to i32, !dbg !2007
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !2007

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2009, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8* undef, metadata !2014, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 84, metadata !2015, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 70, metadata !2016, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 45, metadata !2017, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 56, metadata !2018, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 0, metadata !2019, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 0, metadata !2020, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 0, metadata !2021, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 0, metadata !2022, metadata !DIExpression()), !dbg !2023
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2027
  %12 = load i8, i8* %11, align 1, !dbg !2027, !tbaa !1117
  %13 = and i8 %12, -33, !dbg !2027
  %14 = icmp eq i8 %13, 84, !dbg !2027
  br i1 %14, label %15, label %69, !dbg !2027

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !2029, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i8* undef, metadata !2034, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i8 70, metadata !2035, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i8 45, metadata !2036, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i8 56, metadata !2037, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i8 0, metadata !2038, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i8 0, metadata !2039, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i8 0, metadata !2040, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i8 0, metadata !2041, metadata !DIExpression()), !dbg !2042
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2046
  %17 = load i8, i8* %16, align 1, !dbg !2046, !tbaa !1117
  %18 = and i8 %17, -33, !dbg !2046
  %19 = icmp eq i8 %18, 70, !dbg !2046
  br i1 %19, label %20, label %69, !dbg !2046

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !2048, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i8* undef, metadata !2053, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i8 45, metadata !2054, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i8 56, metadata !2055, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i8 0, metadata !2056, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i8 0, metadata !2057, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i8 0, metadata !2058, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i8 0, metadata !2059, metadata !DIExpression()), !dbg !2060
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2064
  %22 = load i8, i8* %21, align 1, !dbg !2064, !tbaa !1117
  %23 = icmp eq i8 %22, 45, !dbg !2064
  br i1 %23, label %24, label %69, !dbg !2066

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !2067, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8* undef, metadata !2072, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 56, metadata !2073, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 0, metadata !2074, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 0, metadata !2075, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 0, metadata !2076, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 0, metadata !2077, metadata !DIExpression()), !dbg !2078
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2082
  %26 = load i8, i8* %25, align 1, !dbg !2082, !tbaa !1117
  %27 = icmp eq i8 %26, 56, !dbg !2082
  br i1 %27, label %28, label %69, !dbg !2084

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !2085, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i8* undef, metadata !2090, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i8 0, metadata !2091, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i8 0, metadata !2092, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i8 0, metadata !2093, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i8 0, metadata !2094, metadata !DIExpression()), !dbg !2095
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2099
  %30 = load i8, i8* %29, align 1, !dbg !2099, !tbaa !1117
  %31 = icmp eq i8 %30, 0, !dbg !2099
  br i1 %31, label %32, label %69, !dbg !2101

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !2102, !tbaa !1117
  %34 = icmp eq i8 %33, 96, !dbg !2103
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.66, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.67, i64 0, i64 0), !dbg !2102
  br label %72, !dbg !2104

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2009, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* undef, metadata !2014, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8 66, metadata !2015, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8 49, metadata !2016, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8 56, metadata !2017, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8 48, metadata !2018, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8 51, metadata !2019, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8 48, metadata !2020, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8 0, metadata !2021, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8 0, metadata !2022, metadata !DIExpression()), !dbg !2105
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2109
  %38 = load i8, i8* %37, align 1, !dbg !2109, !tbaa !1117
  %39 = and i8 %38, -33, !dbg !2109
  %40 = icmp eq i8 %39, 66, !dbg !2109
  br i1 %40, label %41, label %69, !dbg !2109

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !2029, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.value(metadata i8* undef, metadata !2034, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.value(metadata i8 49, metadata !2035, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.value(metadata i8 56, metadata !2036, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.value(metadata i8 48, metadata !2037, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.value(metadata i8 51, metadata !2038, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.value(metadata i8 48, metadata !2039, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.value(metadata i8 0, metadata !2040, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.value(metadata i8 0, metadata !2041, metadata !DIExpression()), !dbg !2110
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2112
  %43 = load i8, i8* %42, align 1, !dbg !2112, !tbaa !1117
  %44 = icmp eq i8 %43, 49, !dbg !2112
  br i1 %44, label %45, label %69, !dbg !2113

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !2048, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i8* undef, metadata !2053, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i8 56, metadata !2054, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i8 48, metadata !2055, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i8 51, metadata !2056, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i8 48, metadata !2057, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i8 0, metadata !2058, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i8 0, metadata !2059, metadata !DIExpression()), !dbg !2114
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2116
  %47 = load i8, i8* %46, align 1, !dbg !2116, !tbaa !1117
  %48 = icmp eq i8 %47, 56, !dbg !2116
  br i1 %48, label %49, label %69, !dbg !2117

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* undef, metadata !2072, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 48, metadata !2073, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 51, metadata !2074, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 48, metadata !2075, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 0, metadata !2076, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 0, metadata !2077, metadata !DIExpression()), !dbg !2118
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2120
  %51 = load i8, i8* %50, align 1, !dbg !2120, !tbaa !1117
  %52 = icmp eq i8 %51, 48, !dbg !2120
  br i1 %52, label %53, label %69, !dbg !2121

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !2085, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata i8* undef, metadata !2090, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata i8 51, metadata !2091, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata i8 48, metadata !2092, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata i8 0, metadata !2093, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata i8 0, metadata !2094, metadata !DIExpression()), !dbg !2122
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2124
  %55 = load i8, i8* %54, align 1, !dbg !2124, !tbaa !1117
  %56 = icmp eq i8 %55, 51, !dbg !2124
  br i1 %56, label %57, label %69, !dbg !2125

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !2126, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8* undef, metadata !2131, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8 48, metadata !2132, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8 0, metadata !2133, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8 0, metadata !2134, metadata !DIExpression()), !dbg !2135
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2139
  %59 = load i8, i8* %58, align 1, !dbg !2139, !tbaa !1117
  %60 = icmp eq i8 %59, 48, !dbg !2139
  br i1 %60, label %61, label %69, !dbg !2141

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !2142, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.value(metadata i8* undef, metadata !2147, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.value(metadata i8 0, metadata !2148, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.value(metadata i8 0, metadata !2149, metadata !DIExpression()), !dbg !2150
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2154
  %63 = load i8, i8* %62, align 1, !dbg !2154, !tbaa !1117
  %64 = icmp eq i8 %63, 0, !dbg !2154
  br i1 %64, label %65, label %69, !dbg !2156

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !2157, !tbaa !1117
  %67 = icmp eq i8 %66, 96, !dbg !2158
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.68, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.69, i64 0, i64 0), !dbg !2157
  br label %72, !dbg !2159

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !2160
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), !dbg !2161
  br label %72, !dbg !2162

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !1982
  ret i8* %73, !dbg !2163
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #17

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !2164 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !2168 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2174 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2178, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i64 %1, metadata !2179, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2180, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i8* %0, metadata !2182, metadata !DIExpression()) #26, !dbg !2195
  call void @llvm.dbg.value(metadata i64 %1, metadata !2187, metadata !DIExpression()) #26, !dbg !2195
  call void @llvm.dbg.value(metadata i64* null, metadata !2188, metadata !DIExpression()) #26, !dbg !2195
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2189, metadata !DIExpression()) #26, !dbg !2195
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2197
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2197
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2190, metadata !DIExpression()) #26, !dbg !2195
  %6 = tail call i32* @__errno_location() #30, !dbg !2198
  %7 = load i32, i32* %6, align 4, !dbg !2198, !tbaa !997
  call void @llvm.dbg.value(metadata i32 %7, metadata !2191, metadata !DIExpression()) #26, !dbg !2195
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2199
  %9 = load i32, i32* %8, align 4, !dbg !2199, !tbaa !1397
  %10 = or i32 %9, 1, !dbg !2200
  call void @llvm.dbg.value(metadata i32 %10, metadata !2192, metadata !DIExpression()) #26, !dbg !2195
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2201
  %12 = load i32, i32* %11, align 8, !dbg !2201, !tbaa !1345
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2202
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2203
  %15 = load i8*, i8** %14, align 8, !dbg !2203, !tbaa !1419
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2204
  %17 = load i8*, i8** %16, align 8, !dbg !2204, !tbaa !1422
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #26, !dbg !2205
  %19 = add i64 %18, 1, !dbg !2206
  call void @llvm.dbg.value(metadata i64 %19, metadata !2193, metadata !DIExpression()) #26, !dbg !2195
  call void @llvm.dbg.value(metadata i64 %19, metadata !2207, metadata !DIExpression()) #26, !dbg !2212
  %20 = tail call noalias i8* @xmalloc(i64 %19) #26, !dbg !2214
  call void @llvm.dbg.value(metadata i8* %20, metadata !2194, metadata !DIExpression()) #26, !dbg !2195
  %21 = load i32, i32* %11, align 8, !dbg !2215, !tbaa !1345
  %22 = load i8*, i8** %14, align 8, !dbg !2216, !tbaa !1419
  %23 = load i8*, i8** %16, align 8, !dbg !2217, !tbaa !1422
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #26, !dbg !2218
  store i32 %7, i32* %6, align 4, !dbg !2219, !tbaa !997
  ret i8* %20, !dbg !2220
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2183 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2182, metadata !DIExpression()), !dbg !2221
  call void @llvm.dbg.value(metadata i64 %1, metadata !2187, metadata !DIExpression()), !dbg !2221
  call void @llvm.dbg.value(metadata i64* %2, metadata !2188, metadata !DIExpression()), !dbg !2221
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2189, metadata !DIExpression()), !dbg !2221
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2222
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2222
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2190, metadata !DIExpression()), !dbg !2221
  %7 = tail call i32* @__errno_location() #30, !dbg !2223
  %8 = load i32, i32* %7, align 4, !dbg !2223, !tbaa !997
  call void @llvm.dbg.value(metadata i32 %8, metadata !2191, metadata !DIExpression()), !dbg !2221
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2224
  %10 = load i32, i32* %9, align 4, !dbg !2224, !tbaa !1397
  %11 = icmp eq i64* %2, null, !dbg !2225
  %12 = zext i1 %11 to i32, !dbg !2225
  %13 = or i32 %10, %12, !dbg !2226
  call void @llvm.dbg.value(metadata i32 %13, metadata !2192, metadata !DIExpression()), !dbg !2221
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2227
  %15 = load i32, i32* %14, align 8, !dbg !2227, !tbaa !1345
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2228
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2229
  %18 = load i8*, i8** %17, align 8, !dbg !2229, !tbaa !1419
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2230
  %20 = load i8*, i8** %19, align 8, !dbg !2230, !tbaa !1422
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !2231
  %22 = add i64 %21, 1, !dbg !2232
  call void @llvm.dbg.value(metadata i64 %22, metadata !2193, metadata !DIExpression()), !dbg !2221
  call void @llvm.dbg.value(metadata i64 %22, metadata !2207, metadata !DIExpression()) #26, !dbg !2233
  %23 = tail call noalias i8* @xmalloc(i64 %22) #26, !dbg !2235
  call void @llvm.dbg.value(metadata i8* %23, metadata !2194, metadata !DIExpression()), !dbg !2221
  %24 = load i32, i32* %14, align 8, !dbg !2236, !tbaa !1345
  %25 = load i8*, i8** %17, align 8, !dbg !2237, !tbaa !1419
  %26 = load i8*, i8** %19, align 8, !dbg !2238, !tbaa !1422
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !2239
  store i32 %8, i32* %7, align 4, !dbg !2240, !tbaa !997
  br i1 %11, label %29, label %28, !dbg !2241

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2242, !tbaa !2244
  br label %29, !dbg !2246

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2247
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2248 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2252, !tbaa !836
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2250, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.value(metadata i32 1, metadata !2251, metadata !DIExpression()), !dbg !2253
  %2 = load i32, i32* @nslots, align 4, !dbg !2254, !tbaa !997
  %3 = icmp sgt i32 %2, 1, !dbg !2257
  br i1 %3, label %4, label %12, !dbg !2258

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2257
  br label %6, !dbg !2258

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !2251, metadata !DIExpression()), !dbg !2253
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !2259
  %9 = load i8*, i8** %8, align 8, !dbg !2259, !tbaa !2260
  tail call void @free(i8* %9) #26, !dbg !2262
  %10 = add nuw nsw i64 %7, 1, !dbg !2263
  call void @llvm.dbg.value(metadata i64 %10, metadata !2251, metadata !DIExpression()), !dbg !2253
  %11 = icmp eq i64 %10, %5, !dbg !2257
  br i1 %11, label %12, label %6, !dbg !2258, !llvm.loop !2264

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2266
  %14 = load i8*, i8** %13, align 8, !dbg !2266, !tbaa !2260
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2268
  br i1 %15, label %17, label %16, !dbg !2269

16:                                               ; preds = %12
  tail call void @free(i8* %14) #26, !dbg !2270
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2272, !tbaa !2273
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2274, !tbaa !2260
  br label %17, !dbg !2275

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2276
  br i1 %18, label %21, label %19, !dbg !2278

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2279
  tail call void @free(i8* %20) #26, !dbg !2281
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2282, !tbaa !836
  br label %21, !dbg !2283

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2284, !tbaa !997
  ret void, !dbg !2285
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2286 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2288, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8* %1, metadata !2289, metadata !DIExpression()), !dbg !2290
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2291
  ret i8* %3, !dbg !2292
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2293 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2297, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i8* %1, metadata !2298, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i64 %2, metadata !2299, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2300, metadata !DIExpression()), !dbg !2312
  %5 = tail call i32* @__errno_location() #30, !dbg !2313
  %6 = load i32, i32* %5, align 4, !dbg !2313, !tbaa !997
  call void @llvm.dbg.value(metadata i32 %6, metadata !2301, metadata !DIExpression()), !dbg !2312
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2314, !tbaa !836
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2302, metadata !DIExpression()), !dbg !2312
  %8 = icmp slt i32 %0, 0, !dbg !2315
  br i1 %8, label %9, label %10, !dbg !2317

9:                                                ; preds = %4
  tail call void @abort() #28, !dbg !2318
  unreachable, !dbg !2318

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2319, !tbaa !997
  %12 = icmp sgt i32 %11, %0, !dbg !2320
  br i1 %12, label %34, label %13, !dbg !2321

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2322
  call void @llvm.dbg.value(metadata i1 %14, metadata !2303, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2323
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2306, metadata !DIExpression()), !dbg !2323
  %15 = icmp eq i32 %0, 2147483647, !dbg !2324
  br i1 %15, label %16, label %17, !dbg !2326

16:                                               ; preds = %13
  tail call void @xalloc_die() #28, !dbg !2327
  unreachable, !dbg !2327

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2328
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2328
  %20 = add nuw nsw i32 %0, 1, !dbg !2329
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2330
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #26, !dbg !2331
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2331
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2302, metadata !DIExpression()), !dbg !2312
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2332, !tbaa !836
  br i1 %14, label %25, label %26, !dbg !2333

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2334, !tbaa.struct !2336
  br label %26, !dbg !2337

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2338, !tbaa !997
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2339
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2340
  %31 = sub nsw i32 %20, %27, !dbg !2341
  %32 = sext i32 %31 to i64, !dbg !2342
  %33 = shl nsw i64 %32, 4, !dbg !2343
  call void @llvm.dbg.value(metadata i8* %30, metadata !1734, metadata !DIExpression()) #26, !dbg !2344
  call void @llvm.dbg.value(metadata i32 0, metadata !1740, metadata !DIExpression()) #26, !dbg !2344
  call void @llvm.dbg.value(metadata i64 %33, metadata !1741, metadata !DIExpression()) #26, !dbg !2344
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #26, !dbg !2346
  store i32 %20, i32* @nslots, align 4, !dbg !2347, !tbaa !997
  br label %34, !dbg !2348

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2312
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2302, metadata !DIExpression()), !dbg !2312
  %36 = zext i32 %0 to i64, !dbg !2349
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2350
  %38 = load i64, i64* %37, align 8, !dbg !2350, !tbaa !2273
  call void @llvm.dbg.value(metadata i64 %38, metadata !2307, metadata !DIExpression()), !dbg !2351
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2352
  %40 = load i8*, i8** %39, align 8, !dbg !2352, !tbaa !2260
  call void @llvm.dbg.value(metadata i8* %40, metadata !2309, metadata !DIExpression()), !dbg !2351
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2353
  %42 = load i32, i32* %41, align 4, !dbg !2353, !tbaa !1397
  %43 = or i32 %42, 1, !dbg !2354
  call void @llvm.dbg.value(metadata i32 %43, metadata !2310, metadata !DIExpression()), !dbg !2351
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2355
  %45 = load i32, i32* %44, align 8, !dbg !2355, !tbaa !1345
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2356
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2357
  %48 = load i8*, i8** %47, align 8, !dbg !2357, !tbaa !1419
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2358
  %50 = load i8*, i8** %49, align 8, !dbg !2358, !tbaa !1422
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2359
  call void @llvm.dbg.value(metadata i64 %51, metadata !2311, metadata !DIExpression()), !dbg !2351
  %52 = icmp ugt i64 %38, %51, !dbg !2360
  br i1 %52, label %63, label %53, !dbg !2362

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2363
  call void @llvm.dbg.value(metadata i64 %54, metadata !2307, metadata !DIExpression()), !dbg !2351
  store i64 %54, i64* %37, align 8, !dbg !2365, !tbaa !2273
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2366
  br i1 %55, label %57, label %56, !dbg !2368

56:                                               ; preds = %53
  tail call void @free(i8* %40) #26, !dbg !2369
  br label %57, !dbg !2369

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !2207, metadata !DIExpression()) #26, !dbg !2370
  %58 = tail call noalias i8* @xmalloc(i64 %54) #26, !dbg !2372
  call void @llvm.dbg.value(metadata i8* %58, metadata !2309, metadata !DIExpression()), !dbg !2351
  store i8* %58, i8** %39, align 8, !dbg !2373, !tbaa !2260
  %59 = load i32, i32* %44, align 8, !dbg !2374, !tbaa !1345
  %60 = load i8*, i8** %47, align 8, !dbg !2375, !tbaa !1419
  %61 = load i8*, i8** %49, align 8, !dbg !2376, !tbaa !1422
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2377
  br label %63, !dbg !2378

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2351
  call void @llvm.dbg.value(metadata i8* %64, metadata !2309, metadata !DIExpression()), !dbg !2351
  store i32 %6, i32* %5, align 4, !dbg !2379, !tbaa !997
  ret i8* %64, !dbg !2380
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2381 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2385, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8* %1, metadata !2386, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %2, metadata !2387, metadata !DIExpression()), !dbg !2388
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2389
  ret i8* %4, !dbg !2390
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2391 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2393, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i32 0, metadata !2288, metadata !DIExpression()) #26, !dbg !2395
  call void @llvm.dbg.value(metadata i8* %0, metadata !2289, metadata !DIExpression()) #26, !dbg !2395
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #26, !dbg !2397
  ret i8* %2, !dbg !2398
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2399 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2403, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %1, metadata !2404, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i32 0, metadata !2385, metadata !DIExpression()) #26, !dbg !2406
  call void @llvm.dbg.value(metadata i8* %0, metadata !2386, metadata !DIExpression()) #26, !dbg !2406
  call void @llvm.dbg.value(metadata i64 %1, metadata !2387, metadata !DIExpression()) #26, !dbg !2406
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #26, !dbg !2408
  ret i8* %3, !dbg !2409
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2410 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2414, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i32 %1, metadata !2415, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i8* %2, metadata !2416, metadata !DIExpression()), !dbg !2418
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2419
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2419
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2417, metadata !DIExpression()), !dbg !2420
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2421), !dbg !2424
  call void @llvm.dbg.value(metadata i32 %1, metadata !2425, metadata !DIExpression()) #26, !dbg !2431
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2430, metadata !DIExpression()) #26, !dbg !2433
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #26, !dbg !2433, !alias.scope !2421
  %6 = icmp eq i32 %1, 10, !dbg !2434
  br i1 %6, label %7, label %8, !dbg !2436

7:                                                ; preds = %3
  tail call void @abort() #28, !dbg !2437, !noalias !2421
  unreachable, !dbg !2437

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2438
  store i32 %1, i32* %9, align 8, !dbg !2439, !tbaa !1345, !alias.scope !2421
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2440
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2441
  ret i8* %10, !dbg !2442
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2443 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2447, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i32 %1, metadata !2448, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8* %2, metadata !2449, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i64 %3, metadata !2450, metadata !DIExpression()), !dbg !2452
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2453
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2453
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2451, metadata !DIExpression()), !dbg !2454
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2455), !dbg !2458
  call void @llvm.dbg.value(metadata i32 %1, metadata !2425, metadata !DIExpression()) #26, !dbg !2459
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2430, metadata !DIExpression()) #26, !dbg !2461
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #26, !dbg !2461, !alias.scope !2455
  %7 = icmp eq i32 %1, 10, !dbg !2462
  br i1 %7, label %8, label %9, !dbg !2463

8:                                                ; preds = %4
  tail call void @abort() #28, !dbg !2464, !noalias !2455
  unreachable, !dbg !2464

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2465
  store i32 %1, i32* %10, align 8, !dbg !2466, !tbaa !1345, !alias.scope !2455
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2467
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2468
  ret i8* %11, !dbg !2469
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2470 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2474, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i8* %1, metadata !2475, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i32 0, metadata !2414, metadata !DIExpression()) #26, !dbg !2477
  call void @llvm.dbg.value(metadata i32 %0, metadata !2415, metadata !DIExpression()) #26, !dbg !2477
  call void @llvm.dbg.value(metadata i8* %1, metadata !2416, metadata !DIExpression()) #26, !dbg !2477
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2479
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2479
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2417, metadata !DIExpression()) #26, !dbg !2480
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2481) #26, !dbg !2484
  call void @llvm.dbg.value(metadata i32 %0, metadata !2425, metadata !DIExpression()) #26, !dbg !2485
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2430, metadata !DIExpression()) #26, !dbg !2487
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #26, !dbg !2487, !alias.scope !2481
  %5 = icmp eq i32 %0, 10, !dbg !2488
  br i1 %5, label %6, label %7, !dbg !2489

6:                                                ; preds = %2
  tail call void @abort() #28, !dbg !2490, !noalias !2481
  unreachable, !dbg !2490

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2491
  store i32 %0, i32* %8, align 8, !dbg !2492, !tbaa !1345, !alias.scope !2481
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #26, !dbg !2493
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2494
  ret i8* %9, !dbg !2495
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2496 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2500, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata i8* %1, metadata !2501, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata i64 %2, metadata !2502, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata i32 0, metadata !2447, metadata !DIExpression()) #26, !dbg !2504
  call void @llvm.dbg.value(metadata i32 %0, metadata !2448, metadata !DIExpression()) #26, !dbg !2504
  call void @llvm.dbg.value(metadata i8* %1, metadata !2449, metadata !DIExpression()) #26, !dbg !2504
  call void @llvm.dbg.value(metadata i64 %2, metadata !2450, metadata !DIExpression()) #26, !dbg !2504
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2506
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2506
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2451, metadata !DIExpression()) #26, !dbg !2507
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2508) #26, !dbg !2511
  call void @llvm.dbg.value(metadata i32 %0, metadata !2425, metadata !DIExpression()) #26, !dbg !2512
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2430, metadata !DIExpression()) #26, !dbg !2514
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #26, !dbg !2514, !alias.scope !2508
  %6 = icmp eq i32 %0, 10, !dbg !2515
  br i1 %6, label %7, label %8, !dbg !2516

7:                                                ; preds = %3
  tail call void @abort() #28, !dbg !2517, !noalias !2508
  unreachable, !dbg !2517

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2518
  store i32 %0, i32* %9, align 8, !dbg !2519, !tbaa !1345, !alias.scope !2508
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #26, !dbg !2520
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2521
  ret i8* %10, !dbg !2522
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2523 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2527, metadata !DIExpression()), !dbg !2531
  call void @llvm.dbg.value(metadata i64 %1, metadata !2528, metadata !DIExpression()), !dbg !2531
  call void @llvm.dbg.value(metadata i8 %2, metadata !2529, metadata !DIExpression()), !dbg !2531
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2532
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2532
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2530, metadata !DIExpression()), !dbg !2533
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2534, !tbaa.struct !2535
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1363, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i8 %2, metadata !1364, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i32 1, metadata !1365, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i8 %2, metadata !1366, metadata !DIExpression()), !dbg !2536
  %6 = lshr i8 %2, 5, !dbg !2538
  %7 = zext i8 %6 to i64, !dbg !2538
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2539
  call void @llvm.dbg.value(metadata i32* %8, metadata !1368, metadata !DIExpression()), !dbg !2536
  %9 = and i8 %2, 31, !dbg !2540
  %10 = zext i8 %9 to i32, !dbg !2540
  call void @llvm.dbg.value(metadata i32 %10, metadata !1370, metadata !DIExpression()), !dbg !2536
  %11 = load i32, i32* %8, align 4, !dbg !2541, !tbaa !997
  %12 = lshr i32 %11, %10, !dbg !2542
  %13 = and i32 %12, 1, !dbg !2543
  call void @llvm.dbg.value(metadata i32 %13, metadata !1371, metadata !DIExpression()), !dbg !2536
  %14 = xor i32 %13, 1, !dbg !2544
  %15 = shl i32 %14, %10, !dbg !2545
  %16 = xor i32 %15, %11, !dbg !2546
  store i32 %16, i32* %8, align 4, !dbg !2546, !tbaa !997
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2547
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2548
  ret i8* %17, !dbg !2549
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2550 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2554, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i8 %1, metadata !2555, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i8* %0, metadata !2527, metadata !DIExpression()) #26, !dbg !2557
  call void @llvm.dbg.value(metadata i64 -1, metadata !2528, metadata !DIExpression()) #26, !dbg !2557
  call void @llvm.dbg.value(metadata i8 %1, metadata !2529, metadata !DIExpression()) #26, !dbg !2557
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2559
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2559
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2530, metadata !DIExpression()) #26, !dbg !2560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #26, !dbg !2561, !tbaa.struct !2535
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1363, metadata !DIExpression()) #26, !dbg !2562
  call void @llvm.dbg.value(metadata i8 %1, metadata !1364, metadata !DIExpression()) #26, !dbg !2562
  call void @llvm.dbg.value(metadata i32 1, metadata !1365, metadata !DIExpression()) #26, !dbg !2562
  call void @llvm.dbg.value(metadata i8 %1, metadata !1366, metadata !DIExpression()) #26, !dbg !2562
  %5 = lshr i8 %1, 5, !dbg !2564
  %6 = zext i8 %5 to i64, !dbg !2564
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2565
  call void @llvm.dbg.value(metadata i32* %7, metadata !1368, metadata !DIExpression()) #26, !dbg !2562
  %8 = and i8 %1, 31, !dbg !2566
  %9 = zext i8 %8 to i32, !dbg !2566
  call void @llvm.dbg.value(metadata i32 %9, metadata !1370, metadata !DIExpression()) #26, !dbg !2562
  %10 = load i32, i32* %7, align 4, !dbg !2567, !tbaa !997
  %11 = lshr i32 %10, %9, !dbg !2568
  %12 = and i32 %11, 1, !dbg !2569
  call void @llvm.dbg.value(metadata i32 %12, metadata !1371, metadata !DIExpression()) #26, !dbg !2562
  %13 = xor i32 %12, 1, !dbg !2570
  %14 = shl i32 %13, %9, !dbg !2571
  %15 = xor i32 %14, %10, !dbg !2572
  store i32 %15, i32* %7, align 4, !dbg !2572, !tbaa !997
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #26, !dbg !2573
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2574
  ret i8* %16, !dbg !2575
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2576 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2578, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8* %0, metadata !2554, metadata !DIExpression()) #26, !dbg !2580
  call void @llvm.dbg.value(metadata i8 58, metadata !2555, metadata !DIExpression()) #26, !dbg !2580
  call void @llvm.dbg.value(metadata i8* %0, metadata !2527, metadata !DIExpression()) #26, !dbg !2582
  call void @llvm.dbg.value(metadata i64 -1, metadata !2528, metadata !DIExpression()) #26, !dbg !2582
  call void @llvm.dbg.value(metadata i8 58, metadata !2529, metadata !DIExpression()) #26, !dbg !2582
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2584
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #26, !dbg !2584
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2530, metadata !DIExpression()) #26, !dbg !2585
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #26, !dbg !2586, !tbaa.struct !2535
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1363, metadata !DIExpression()) #26, !dbg !2587
  call void @llvm.dbg.value(metadata i8 58, metadata !1364, metadata !DIExpression()) #26, !dbg !2587
  call void @llvm.dbg.value(metadata i32 1, metadata !1365, metadata !DIExpression()) #26, !dbg !2587
  call void @llvm.dbg.value(metadata i8 58, metadata !1366, metadata !DIExpression()) #26, !dbg !2587
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2589
  call void @llvm.dbg.value(metadata i32* %4, metadata !1368, metadata !DIExpression()) #26, !dbg !2587
  call void @llvm.dbg.value(metadata i32 26, metadata !1370, metadata !DIExpression()) #26, !dbg !2587
  %5 = load i32, i32* %4, align 4, !dbg !2590, !tbaa !997
  call void @llvm.dbg.value(metadata i32 %5, metadata !1371, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #26, !dbg !2587
  %6 = or i32 %5, 67108864, !dbg !2591
  store i32 %6, i32* %4, align 4, !dbg !2591, !tbaa !997
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #26, !dbg !2592
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #26, !dbg !2593
  ret i8* %7, !dbg !2594
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2595 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2597, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.value(metadata i64 %1, metadata !2598, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.value(metadata i8* %0, metadata !2527, metadata !DIExpression()) #26, !dbg !2600
  call void @llvm.dbg.value(metadata i64 %1, metadata !2528, metadata !DIExpression()) #26, !dbg !2600
  call void @llvm.dbg.value(metadata i8 58, metadata !2529, metadata !DIExpression()) #26, !dbg !2600
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2602
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2602
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2530, metadata !DIExpression()) #26, !dbg !2603
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #26, !dbg !2604, !tbaa.struct !2535
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1363, metadata !DIExpression()) #26, !dbg !2605
  call void @llvm.dbg.value(metadata i8 58, metadata !1364, metadata !DIExpression()) #26, !dbg !2605
  call void @llvm.dbg.value(metadata i32 1, metadata !1365, metadata !DIExpression()) #26, !dbg !2605
  call void @llvm.dbg.value(metadata i8 58, metadata !1366, metadata !DIExpression()) #26, !dbg !2605
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2607
  call void @llvm.dbg.value(metadata i32* %5, metadata !1368, metadata !DIExpression()) #26, !dbg !2605
  call void @llvm.dbg.value(metadata i32 26, metadata !1370, metadata !DIExpression()) #26, !dbg !2605
  %6 = load i32, i32* %5, align 4, !dbg !2608, !tbaa !997
  call void @llvm.dbg.value(metadata i32 %6, metadata !1371, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #26, !dbg !2605
  %7 = or i32 %6, 67108864, !dbg !2609
  store i32 %7, i32* %5, align 4, !dbg !2609, !tbaa !997
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #26, !dbg !2610
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2611
  ret i8* %8, !dbg !2612
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2613 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2430, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2619
  call void @llvm.dbg.value(metadata i32 %0, metadata !2615, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i32 %1, metadata !2616, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i8* %2, metadata !2617, metadata !DIExpression()), !dbg !2621
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2622
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2622
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2618, metadata !DIExpression()), !dbg !2623
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2624
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2624
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2625), !dbg !2624
  call void @llvm.dbg.value(metadata i32 %1, metadata !2425, metadata !DIExpression()) #26, !dbg !2628
  call void @llvm.dbg.value(metadata i32 0, metadata !2430, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2628
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2619, !alias.scope !2625
  %8 = icmp eq i32 %1, 10, !dbg !2629
  br i1 %8, label %9, label %10, !dbg !2630

9:                                                ; preds = %3
  tail call void @abort() #28, !dbg !2631, !noalias !2625
  unreachable, !dbg !2631

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2430, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2628
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2624
  store i32 %1, i32* %11, align 8, !dbg !2624, !tbaa.struct !2535
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2624
  %13 = bitcast i32* %12 to i8*, !dbg !2624
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2624, !tbaa.struct !2632
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2624
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1363, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i8 58, metadata !1364, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i32 1, metadata !1365, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i8 58, metadata !1366, metadata !DIExpression()), !dbg !2633
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2635
  call void @llvm.dbg.value(metadata i32* %14, metadata !1368, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i32 26, metadata !1370, metadata !DIExpression()), !dbg !2633
  %15 = load i32, i32* %14, align 4, !dbg !2636, !tbaa !997
  call void @llvm.dbg.value(metadata i32 %15, metadata !1371, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2633
  %16 = or i32 %15, 67108864, !dbg !2637
  store i32 %16, i32* %14, align 4, !dbg !2637, !tbaa !997
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2638
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2639
  ret i8* %17, !dbg !2640
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2641 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2645, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i8* %1, metadata !2646, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i8* %2, metadata !2647, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i8* %3, metadata !2648, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i32 %0, metadata !2650, metadata !DIExpression()) #26, !dbg !2660
  call void @llvm.dbg.value(metadata i8* %1, metadata !2655, metadata !DIExpression()) #26, !dbg !2660
  call void @llvm.dbg.value(metadata i8* %2, metadata !2656, metadata !DIExpression()) #26, !dbg !2660
  call void @llvm.dbg.value(metadata i8* %3, metadata !2657, metadata !DIExpression()) #26, !dbg !2660
  call void @llvm.dbg.value(metadata i64 -1, metadata !2658, metadata !DIExpression()) #26, !dbg !2660
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2662
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2662
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2659, metadata !DIExpression()) #26, !dbg !2663
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #26, !dbg !2664, !tbaa.struct !2535
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1404, metadata !DIExpression()) #26, !dbg !2665
  call void @llvm.dbg.value(metadata i8* %1, metadata !1405, metadata !DIExpression()) #26, !dbg !2665
  call void @llvm.dbg.value(metadata i8* %2, metadata !1406, metadata !DIExpression()) #26, !dbg !2665
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1404, metadata !DIExpression()) #26, !dbg !2665
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2667
  store i32 10, i32* %7, align 8, !dbg !2668, !tbaa !1345
  %8 = icmp ne i8* %1, null, !dbg !2669
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2670
  br i1 %10, label %12, label %11, !dbg !2670

11:                                               ; preds = %4
  tail call void @abort() #28, !dbg !2671
  unreachable, !dbg !2671

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2672
  store i8* %1, i8** %13, align 8, !dbg !2673, !tbaa !1419
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2674
  store i8* %2, i8** %14, align 8, !dbg !2675, !tbaa !1422
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #26, !dbg !2676
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2677
  ret i8* %15, !dbg !2678
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2651 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2650, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i8* %1, metadata !2655, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i8* %2, metadata !2656, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i8* %3, metadata !2657, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i64 %4, metadata !2658, metadata !DIExpression()), !dbg !2679
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2680
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #26, !dbg !2680
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2659, metadata !DIExpression()), !dbg !2681
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2682, !tbaa.struct !2535
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1404, metadata !DIExpression()) #26, !dbg !2683
  call void @llvm.dbg.value(metadata i8* %1, metadata !1405, metadata !DIExpression()) #26, !dbg !2683
  call void @llvm.dbg.value(metadata i8* %2, metadata !1406, metadata !DIExpression()) #26, !dbg !2683
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1404, metadata !DIExpression()) #26, !dbg !2683
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2685
  store i32 10, i32* %8, align 8, !dbg !2686, !tbaa !1345
  %9 = icmp ne i8* %1, null, !dbg !2687
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2688
  br i1 %11, label %13, label %12, !dbg !2688

12:                                               ; preds = %5
  tail call void @abort() #28, !dbg !2689
  unreachable, !dbg !2689

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2690
  store i8* %1, i8** %14, align 8, !dbg !2691, !tbaa !1419
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2692
  store i8* %2, i8** %15, align 8, !dbg !2693, !tbaa !1422
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2694
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #26, !dbg !2695
  ret i8* %16, !dbg !2696
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2697 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2701, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i8* %1, metadata !2702, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i8* %2, metadata !2703, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i32 0, metadata !2645, metadata !DIExpression()) #26, !dbg !2705
  call void @llvm.dbg.value(metadata i8* %0, metadata !2646, metadata !DIExpression()) #26, !dbg !2705
  call void @llvm.dbg.value(metadata i8* %1, metadata !2647, metadata !DIExpression()) #26, !dbg !2705
  call void @llvm.dbg.value(metadata i8* %2, metadata !2648, metadata !DIExpression()) #26, !dbg !2705
  call void @llvm.dbg.value(metadata i32 0, metadata !2650, metadata !DIExpression()) #26, !dbg !2707
  call void @llvm.dbg.value(metadata i8* %0, metadata !2655, metadata !DIExpression()) #26, !dbg !2707
  call void @llvm.dbg.value(metadata i8* %1, metadata !2656, metadata !DIExpression()) #26, !dbg !2707
  call void @llvm.dbg.value(metadata i8* %2, metadata !2657, metadata !DIExpression()) #26, !dbg !2707
  call void @llvm.dbg.value(metadata i64 -1, metadata !2658, metadata !DIExpression()) #26, !dbg !2707
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2709
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2709
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2659, metadata !DIExpression()) #26, !dbg !2710
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #26, !dbg !2711, !tbaa.struct !2535
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1404, metadata !DIExpression()) #26, !dbg !2712
  call void @llvm.dbg.value(metadata i8* %0, metadata !1405, metadata !DIExpression()) #26, !dbg !2712
  call void @llvm.dbg.value(metadata i8* %1, metadata !1406, metadata !DIExpression()) #26, !dbg !2712
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1404, metadata !DIExpression()) #26, !dbg !2712
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2714
  store i32 10, i32* %6, align 8, !dbg !2715, !tbaa !1345
  %7 = icmp ne i8* %0, null, !dbg !2716
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2717
  br i1 %9, label %11, label %10, !dbg !2717

10:                                               ; preds = %3
  tail call void @abort() #28, !dbg !2718
  unreachable, !dbg !2718

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2719
  store i8* %0, i8** %12, align 8, !dbg !2720, !tbaa !1419
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2721
  store i8* %1, i8** %13, align 8, !dbg !2722, !tbaa !1422
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #26, !dbg !2723
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2724
  ret i8* %14, !dbg !2725
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2726 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2730, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i8* %1, metadata !2731, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i8* %2, metadata !2732, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i64 %3, metadata !2733, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i32 0, metadata !2650, metadata !DIExpression()) #26, !dbg !2735
  call void @llvm.dbg.value(metadata i8* %0, metadata !2655, metadata !DIExpression()) #26, !dbg !2735
  call void @llvm.dbg.value(metadata i8* %1, metadata !2656, metadata !DIExpression()) #26, !dbg !2735
  call void @llvm.dbg.value(metadata i8* %2, metadata !2657, metadata !DIExpression()) #26, !dbg !2735
  call void @llvm.dbg.value(metadata i64 %3, metadata !2658, metadata !DIExpression()) #26, !dbg !2735
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2737
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2737
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2659, metadata !DIExpression()) #26, !dbg !2738
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #26, !dbg !2739, !tbaa.struct !2535
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1404, metadata !DIExpression()) #26, !dbg !2740
  call void @llvm.dbg.value(metadata i8* %0, metadata !1405, metadata !DIExpression()) #26, !dbg !2740
  call void @llvm.dbg.value(metadata i8* %1, metadata !1406, metadata !DIExpression()) #26, !dbg !2740
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1404, metadata !DIExpression()) #26, !dbg !2740
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2742
  store i32 10, i32* %7, align 8, !dbg !2743, !tbaa !1345
  %8 = icmp ne i8* %0, null, !dbg !2744
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2745
  br i1 %10, label %12, label %11, !dbg !2745

11:                                               ; preds = %4
  tail call void @abort() #28, !dbg !2746
  unreachable, !dbg !2746

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2747
  store i8* %0, i8** %13, align 8, !dbg !2748, !tbaa !1419
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2749
  store i8* %1, i8** %14, align 8, !dbg !2750, !tbaa !1422
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #26, !dbg !2751
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2752
  ret i8* %15, !dbg !2753
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2754 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2758, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %1, metadata !2759, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %2, metadata !2760, metadata !DIExpression()), !dbg !2761
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2762
  ret i8* %4, !dbg !2763
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2764 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2768, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata i64 %1, metadata !2769, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata i32 0, metadata !2758, metadata !DIExpression()) #26, !dbg !2771
  call void @llvm.dbg.value(metadata i8* %0, metadata !2759, metadata !DIExpression()) #26, !dbg !2771
  call void @llvm.dbg.value(metadata i64 %1, metadata !2760, metadata !DIExpression()) #26, !dbg !2771
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #26, !dbg !2773
  ret i8* %3, !dbg !2774
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2775 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2779, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i8* %1, metadata !2780, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i32 %0, metadata !2758, metadata !DIExpression()) #26, !dbg !2782
  call void @llvm.dbg.value(metadata i8* %1, metadata !2759, metadata !DIExpression()) #26, !dbg !2782
  call void @llvm.dbg.value(metadata i64 -1, metadata !2760, metadata !DIExpression()) #26, !dbg !2782
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #26, !dbg !2784
  ret i8* %3, !dbg !2785
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2786 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2790, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i32 0, metadata !2779, metadata !DIExpression()) #26, !dbg !2792
  call void @llvm.dbg.value(metadata i8* %0, metadata !2780, metadata !DIExpression()) #26, !dbg !2792
  call void @llvm.dbg.value(metadata i32 0, metadata !2758, metadata !DIExpression()) #26, !dbg !2794
  call void @llvm.dbg.value(metadata i8* %0, metadata !2759, metadata !DIExpression()) #26, !dbg !2794
  call void @llvm.dbg.value(metadata i64 -1, metadata !2760, metadata !DIExpression()) #26, !dbg !2794
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #26, !dbg !2796
  ret i8* %2, !dbg !2797
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2798 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2838, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i8* %1, metadata !2839, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i8* %2, metadata !2840, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i8* %3, metadata !2841, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i8** %4, metadata !2842, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %5, metadata !2843, metadata !DIExpression()), !dbg !2844
  %7 = icmp eq i8* %1, null, !dbg !2845
  br i1 %7, label %10, label %8, !dbg !2847

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.74, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #26, !dbg !2848
  br label %12, !dbg !2848

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.75, i64 0, i64 0), i8* %2, i8* %3) #26, !dbg !2849
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.76, i64 0, i64 0), i32 5) #26, !dbg !2850
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #26, !dbg !2850
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.77, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2851
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.78, i64 0, i64 0), i32 5) #26, !dbg !2852
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.79, i64 0, i64 0)) #26, !dbg !2852
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.77, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2853
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
  ], !dbg !2854

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.80, i64 0, i64 0), i32 5) #26, !dbg !2855
  %21 = load i8*, i8** %4, align 8, !dbg !2855, !tbaa !836
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #26, !dbg !2855
  br label %147, !dbg !2857

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.81, i64 0, i64 0), i32 5) #26, !dbg !2858
  %25 = load i8*, i8** %4, align 8, !dbg !2858, !tbaa !836
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2858
  %27 = load i8*, i8** %26, align 8, !dbg !2858, !tbaa !836
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #26, !dbg !2858
  br label %147, !dbg !2859

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.82, i64 0, i64 0), i32 5) #26, !dbg !2860
  %31 = load i8*, i8** %4, align 8, !dbg !2860, !tbaa !836
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2860
  %33 = load i8*, i8** %32, align 8, !dbg !2860, !tbaa !836
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2860
  %35 = load i8*, i8** %34, align 8, !dbg !2860, !tbaa !836
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #26, !dbg !2860
  br label %147, !dbg !2861

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.83, i64 0, i64 0), i32 5) #26, !dbg !2862
  %39 = load i8*, i8** %4, align 8, !dbg !2862, !tbaa !836
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2862
  %41 = load i8*, i8** %40, align 8, !dbg !2862, !tbaa !836
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2862
  %43 = load i8*, i8** %42, align 8, !dbg !2862, !tbaa !836
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2862
  %45 = load i8*, i8** %44, align 8, !dbg !2862, !tbaa !836
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #26, !dbg !2862
  br label %147, !dbg !2863

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.84, i64 0, i64 0), i32 5) #26, !dbg !2864
  %49 = load i8*, i8** %4, align 8, !dbg !2864, !tbaa !836
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2864
  %51 = load i8*, i8** %50, align 8, !dbg !2864, !tbaa !836
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2864
  %53 = load i8*, i8** %52, align 8, !dbg !2864, !tbaa !836
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2864
  %55 = load i8*, i8** %54, align 8, !dbg !2864, !tbaa !836
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2864
  %57 = load i8*, i8** %56, align 8, !dbg !2864, !tbaa !836
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #26, !dbg !2864
  br label %147, !dbg !2865

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.85, i64 0, i64 0), i32 5) #26, !dbg !2866
  %61 = load i8*, i8** %4, align 8, !dbg !2866, !tbaa !836
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2866
  %63 = load i8*, i8** %62, align 8, !dbg !2866, !tbaa !836
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2866
  %65 = load i8*, i8** %64, align 8, !dbg !2866, !tbaa !836
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2866
  %67 = load i8*, i8** %66, align 8, !dbg !2866, !tbaa !836
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2866
  %69 = load i8*, i8** %68, align 8, !dbg !2866, !tbaa !836
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2866
  %71 = load i8*, i8** %70, align 8, !dbg !2866, !tbaa !836
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #26, !dbg !2866
  br label %147, !dbg !2867

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.86, i64 0, i64 0), i32 5) #26, !dbg !2868
  %75 = load i8*, i8** %4, align 8, !dbg !2868, !tbaa !836
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2868
  %77 = load i8*, i8** %76, align 8, !dbg !2868, !tbaa !836
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2868
  %79 = load i8*, i8** %78, align 8, !dbg !2868, !tbaa !836
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2868
  %81 = load i8*, i8** %80, align 8, !dbg !2868, !tbaa !836
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2868
  %83 = load i8*, i8** %82, align 8, !dbg !2868, !tbaa !836
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2868
  %85 = load i8*, i8** %84, align 8, !dbg !2868, !tbaa !836
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2868
  %87 = load i8*, i8** %86, align 8, !dbg !2868, !tbaa !836
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #26, !dbg !2868
  br label %147, !dbg !2869

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.87, i64 0, i64 0), i32 5) #26, !dbg !2870
  %91 = load i8*, i8** %4, align 8, !dbg !2870, !tbaa !836
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2870
  %93 = load i8*, i8** %92, align 8, !dbg !2870, !tbaa !836
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2870
  %95 = load i8*, i8** %94, align 8, !dbg !2870, !tbaa !836
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2870
  %97 = load i8*, i8** %96, align 8, !dbg !2870, !tbaa !836
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2870
  %99 = load i8*, i8** %98, align 8, !dbg !2870, !tbaa !836
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2870
  %101 = load i8*, i8** %100, align 8, !dbg !2870, !tbaa !836
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2870
  %103 = load i8*, i8** %102, align 8, !dbg !2870, !tbaa !836
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2870
  %105 = load i8*, i8** %104, align 8, !dbg !2870, !tbaa !836
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #26, !dbg !2870
  br label %147, !dbg !2871

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.88, i64 0, i64 0), i32 5) #26, !dbg !2872
  %109 = load i8*, i8** %4, align 8, !dbg !2872, !tbaa !836
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2872
  %111 = load i8*, i8** %110, align 8, !dbg !2872, !tbaa !836
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2872
  %113 = load i8*, i8** %112, align 8, !dbg !2872, !tbaa !836
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2872
  %115 = load i8*, i8** %114, align 8, !dbg !2872, !tbaa !836
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2872
  %117 = load i8*, i8** %116, align 8, !dbg !2872, !tbaa !836
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2872
  %119 = load i8*, i8** %118, align 8, !dbg !2872, !tbaa !836
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2872
  %121 = load i8*, i8** %120, align 8, !dbg !2872, !tbaa !836
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2872
  %123 = load i8*, i8** %122, align 8, !dbg !2872, !tbaa !836
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2872
  %125 = load i8*, i8** %124, align 8, !dbg !2872, !tbaa !836
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #26, !dbg !2872
  br label %147, !dbg !2873

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.89, i64 0, i64 0), i32 5) #26, !dbg !2874
  %129 = load i8*, i8** %4, align 8, !dbg !2874, !tbaa !836
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2874
  %131 = load i8*, i8** %130, align 8, !dbg !2874, !tbaa !836
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2874
  %133 = load i8*, i8** %132, align 8, !dbg !2874, !tbaa !836
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2874
  %135 = load i8*, i8** %134, align 8, !dbg !2874, !tbaa !836
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2874
  %137 = load i8*, i8** %136, align 8, !dbg !2874, !tbaa !836
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2874
  %139 = load i8*, i8** %138, align 8, !dbg !2874, !tbaa !836
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2874
  %141 = load i8*, i8** %140, align 8, !dbg !2874, !tbaa !836
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2874
  %143 = load i8*, i8** %142, align 8, !dbg !2874, !tbaa !836
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2874
  %145 = load i8*, i8** %144, align 8, !dbg !2874, !tbaa !836
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #26, !dbg !2874
  br label %147, !dbg !2875

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2876
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !2877 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2881, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i8* %1, metadata !2882, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i8* %2, metadata !2883, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i8* %3, metadata !2884, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i8** %4, metadata !2885, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i64 0, metadata !2886, metadata !DIExpression()), !dbg !2887
  br label %6, !dbg !2888

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2890
  call void @llvm.dbg.value(metadata i64 %7, metadata !2886, metadata !DIExpression()), !dbg !2887
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2891
  %9 = load i8*, i8** %8, align 8, !dbg !2891, !tbaa !836
  %10 = icmp eq i8* %9, null, !dbg !2893
  %11 = add i64 %7, 1, !dbg !2894
  call void @llvm.dbg.value(metadata i64 %11, metadata !2886, metadata !DIExpression()), !dbg !2887
  br i1 %10, label %12, label %6, !dbg !2893, !llvm.loop !2895

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2897
  ret void, !dbg !2898
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !2899 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2910, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i8* %1, metadata !2911, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i8* %2, metadata !2912, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i8* %3, metadata !2913, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2914, metadata !DIExpression()), !dbg !2918
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2919
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #26, !dbg !2919
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2916, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i64 0, metadata !2915, metadata !DIExpression()), !dbg !2918
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !2915, metadata !DIExpression()), !dbg !2918
  %11 = load i32, i32* %8, align 8, !dbg !2921
  %12 = icmp ult i32 %11, 41, !dbg !2921
  br i1 %12, label %13, label %18, !dbg !2921

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2921
  %15 = zext i32 %11 to i64, !dbg !2921
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2921
  %17 = add nuw nsw i32 %11, 8, !dbg !2921
  store i32 %17, i32* %8, align 8, !dbg !2921
  br label %21, !dbg !2921

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2921
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2921
  store i8* %20, i8** %9, align 8, !dbg !2921
  br label %21, !dbg !2921

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2921
  %25 = load i8*, i8** %24, align 8, !dbg !2921
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2924
  store i8* %25, i8** %26, align 16, !dbg !2925, !tbaa !836
  %27 = icmp eq i8* %25, null, !dbg !2926
  br i1 %27, label %30, label %28, !dbg !2927

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2915, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i64 1, metadata !2915, metadata !DIExpression()), !dbg !2918
  %29 = icmp ult i32 %22, 41, !dbg !2921
  br i1 %29, label %35, label %32, !dbg !2921

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2928
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2929
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #26, !dbg !2930
  ret void, !dbg !2930

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2921
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2921
  store i8* %34, i8** %9, align 8, !dbg !2921
  br label %40, !dbg !2921

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2921
  %37 = zext i32 %22 to i64, !dbg !2921
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2921
  %39 = add nuw nsw i32 %22, 8, !dbg !2921
  store i32 %39, i32* %8, align 8, !dbg !2921
  br label %40, !dbg !2921

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2921
  %44 = load i8*, i8** %43, align 8, !dbg !2921
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2924
  store i8* %44, i8** %45, align 8, !dbg !2925, !tbaa !836
  %46 = icmp eq i8* %44, null, !dbg !2926
  br i1 %46, label %30, label %47, !dbg !2927

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2915, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i64 2, metadata !2915, metadata !DIExpression()), !dbg !2918
  %48 = icmp ult i32 %41, 41, !dbg !2921
  br i1 %48, label %52, label %49, !dbg !2921

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2921
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2921
  store i8* %51, i8** %9, align 8, !dbg !2921
  br label %57, !dbg !2921

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2921
  %54 = zext i32 %41 to i64, !dbg !2921
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2921
  %56 = add nuw nsw i32 %41, 8, !dbg !2921
  store i32 %56, i32* %8, align 8, !dbg !2921
  br label %57, !dbg !2921

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2921
  %61 = load i8*, i8** %60, align 8, !dbg !2921
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2924
  store i8* %61, i8** %62, align 16, !dbg !2925, !tbaa !836
  %63 = icmp eq i8* %61, null, !dbg !2926
  br i1 %63, label %30, label %64, !dbg !2927

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2915, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i64 3, metadata !2915, metadata !DIExpression()), !dbg !2918
  %65 = icmp ult i32 %58, 41, !dbg !2921
  br i1 %65, label %69, label %66, !dbg !2921

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2921
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2921
  store i8* %68, i8** %9, align 8, !dbg !2921
  br label %74, !dbg !2921

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2921
  %71 = zext i32 %58 to i64, !dbg !2921
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2921
  %73 = add nuw nsw i32 %58, 8, !dbg !2921
  store i32 %73, i32* %8, align 8, !dbg !2921
  br label %74, !dbg !2921

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2921
  %78 = load i8*, i8** %77, align 8, !dbg !2921
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2924
  store i8* %78, i8** %79, align 8, !dbg !2925, !tbaa !836
  %80 = icmp eq i8* %78, null, !dbg !2926
  br i1 %80, label %30, label %81, !dbg !2927

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2915, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i64 4, metadata !2915, metadata !DIExpression()), !dbg !2918
  %82 = icmp ult i32 %75, 41, !dbg !2921
  br i1 %82, label %86, label %83, !dbg !2921

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2921
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2921
  store i8* %85, i8** %9, align 8, !dbg !2921
  br label %91, !dbg !2921

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2921
  %88 = zext i32 %75 to i64, !dbg !2921
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2921
  %90 = add nuw nsw i32 %75, 8, !dbg !2921
  store i32 %90, i32* %8, align 8, !dbg !2921
  br label %91, !dbg !2921

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2921
  %95 = load i8*, i8** %94, align 8, !dbg !2921
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2924
  store i8* %95, i8** %96, align 16, !dbg !2925, !tbaa !836
  %97 = icmp eq i8* %95, null, !dbg !2926
  br i1 %97, label %30, label %98, !dbg !2927

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2915, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i64 5, metadata !2915, metadata !DIExpression()), !dbg !2918
  %99 = icmp ult i32 %92, 41, !dbg !2921
  br i1 %99, label %103, label %100, !dbg !2921

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2921
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2921
  store i8* %102, i8** %9, align 8, !dbg !2921
  br label %108, !dbg !2921

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2921
  %105 = zext i32 %92 to i64, !dbg !2921
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2921
  %107 = add nuw nsw i32 %92, 8, !dbg !2921
  store i32 %107, i32* %8, align 8, !dbg !2921
  br label %108, !dbg !2921

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2921
  %111 = load i8*, i8** %110, align 8, !dbg !2921
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2924
  store i8* %111, i8** %112, align 8, !dbg !2925, !tbaa !836
  %113 = icmp eq i8* %111, null, !dbg !2926
  br i1 %113, label %30, label %114, !dbg !2927

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2915, metadata !DIExpression()), !dbg !2918
  %115 = load i8*, i8** %9, align 8, !dbg !2921
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2921
  store i8* %116, i8** %9, align 8, !dbg !2921
  %117 = bitcast i8* %115 to i8**, !dbg !2921
  %118 = load i8*, i8** %117, align 8, !dbg !2921
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2924
  store i8* %118, i8** %119, align 16, !dbg !2925, !tbaa !836
  %120 = icmp eq i8* %118, null, !dbg !2926
  br i1 %120, label %30, label %121, !dbg !2927

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2915, metadata !DIExpression()), !dbg !2918
  %122 = load i8*, i8** %9, align 8, !dbg !2921
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2921
  store i8* %123, i8** %9, align 8, !dbg !2921
  %124 = bitcast i8* %122 to i8**, !dbg !2921
  %125 = load i8*, i8** %124, align 8, !dbg !2921
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2924
  store i8* %125, i8** %126, align 8, !dbg !2925, !tbaa !836
  %127 = icmp eq i8* %125, null, !dbg !2926
  br i1 %127, label %30, label %128, !dbg !2927

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2915, metadata !DIExpression()), !dbg !2918
  %129 = load i8*, i8** %9, align 8, !dbg !2921
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2921
  store i8* %130, i8** %9, align 8, !dbg !2921
  %131 = bitcast i8* %129 to i8**, !dbg !2921
  %132 = load i8*, i8** %131, align 8, !dbg !2921
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2924
  store i8* %132, i8** %133, align 16, !dbg !2925, !tbaa !836
  %134 = icmp eq i8* %132, null, !dbg !2926
  br i1 %134, label %30, label %135, !dbg !2927

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2915, metadata !DIExpression()), !dbg !2918
  %136 = load i8*, i8** %9, align 8, !dbg !2921
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2921
  store i8* %137, i8** %9, align 8, !dbg !2921
  %138 = bitcast i8* %136 to i8**, !dbg !2921
  %139 = load i8*, i8** %138, align 8, !dbg !2921
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2924
  store i8* %139, i8** %140, align 8, !dbg !2925, !tbaa !836
  %141 = icmp eq i8* %139, null, !dbg !2926
  %142 = select i1 %141, i64 9, i64 10, !dbg !2927
  br label %30, !dbg !2927
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !2931 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2935, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i8* %1, metadata !2936, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i8* %2, metadata !2937, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i8* %3, metadata !2938, metadata !DIExpression()), !dbg !2945
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2946
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #26, !dbg !2946
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2939, metadata !DIExpression()), !dbg !2947
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2948
  call void @llvm.va_start(i8* nonnull %6), !dbg !2948
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2949
  call void @llvm.va_end(i8* nonnull %6), !dbg !2950
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #26, !dbg !2951
  ret void, !dbg !2951
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #22

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !2952 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2953, !tbaa !836
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.77, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2953
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.92, i64 0, i64 0), i32 5) #26, !dbg !2954
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.93, i64 0, i64 0)) #26, !dbg !2954
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.94, i64 0, i64 0), i32 5) #26, !dbg !2955
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.95, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.96, i64 0, i64 0)) #26, !dbg !2955
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.97, i64 0, i64 0), i32 5) #26, !dbg !2956
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.98, i64 0, i64 0)) #26, !dbg !2956
  ret void, !dbg !2957
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #23 !dbg !2958 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2962, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i64 %1, metadata !2963, metadata !DIExpression()), !dbg !2964
  %3 = udiv i64 9223372036854775807, %1, !dbg !2965
  %4 = icmp ult i64 %3, %0, !dbg !2965
  br i1 %4, label %5, label %6, !dbg !2967

5:                                                ; preds = %2
  tail call void @xalloc_die() #28, !dbg !2968
  unreachable, !dbg !2968

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2969
  call void @llvm.dbg.value(metadata i64 %7, metadata !2970, metadata !DIExpression()) #26, !dbg !2976
  %8 = tail call noalias i8* @malloc(i64 %7) #26, !dbg !2978
  call void @llvm.dbg.value(metadata i8* %8, metadata !2975, metadata !DIExpression()) #26, !dbg !2976
  %9 = icmp eq i8* %8, null, !dbg !2979
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !2981
  br i1 %11, label %12, label %13, !dbg !2981

12:                                               ; preds = %6
  tail call void @xalloc_die() #28, !dbg !2982
  unreachable, !dbg !2982

13:                                               ; preds = %6
  ret i8* %8, !dbg !2983
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #24

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !2971 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2970, metadata !DIExpression()), !dbg !2984
  %2 = tail call noalias i8* @malloc(i64 %0) #26, !dbg !2985
  call void @llvm.dbg.value(metadata i8* %2, metadata !2975, metadata !DIExpression()), !dbg !2984
  %3 = icmp eq i8* %2, null, !dbg !2986
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2987
  br i1 %5, label %6, label %7, !dbg !2987

6:                                                ; preds = %1
  tail call void @xalloc_die() #28, !dbg !2988
  unreachable, !dbg !2988

7:                                                ; preds = %1
  ret i8* %2, !dbg !2989
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #23 !dbg !2990 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2994, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i64 %1, metadata !2995, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i64 %2, metadata !2996, metadata !DIExpression()), !dbg !2997
  %4 = udiv i64 9223372036854775807, %2, !dbg !2998
  %5 = icmp ult i64 %4, %1, !dbg !2998
  br i1 %5, label %6, label %7, !dbg !3000

6:                                                ; preds = %3
  tail call void @xalloc_die() #28, !dbg !3001
  unreachable, !dbg !3001

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3002
  call void @llvm.dbg.value(metadata i8* %0, metadata !3003, metadata !DIExpression()) #26, !dbg !3009
  call void @llvm.dbg.value(metadata i64 %8, metadata !3008, metadata !DIExpression()) #26, !dbg !3009
  %9 = icmp eq i64 %8, 0, !dbg !3011
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !3013
  br i1 %11, label %12, label %13, !dbg !3013

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #26, !dbg !3014
  br label %19, !dbg !3016

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #26, !dbg !3017
  call void @llvm.dbg.value(metadata i8* %14, metadata !3003, metadata !DIExpression()) #26, !dbg !3009
  %15 = icmp eq i8* %14, null, !dbg !3018
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !3020
  br i1 %17, label %18, label %19, !dbg !3020

18:                                               ; preds = %13
  tail call void @xalloc_die() #28, !dbg !3021
  unreachable, !dbg !3021

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3009
  ret i8* %20, !dbg !3022
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3004 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3003, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i64 %1, metadata !3008, metadata !DIExpression()), !dbg !3023
  %3 = icmp eq i64 %1, 0, !dbg !3024
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !3025
  br i1 %5, label %6, label %7, !dbg !3025

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #26, !dbg !3026
  br label %13, !dbg !3027

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #26, !dbg !3028
  call void @llvm.dbg.value(metadata i8* %8, metadata !3003, metadata !DIExpression()), !dbg !3023
  %9 = icmp eq i8* %8, null, !dbg !3029
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !3030
  br i1 %11, label %12, label %13, !dbg !3030

12:                                               ; preds = %7
  tail call void @xalloc_die() #28, !dbg !3031
  unreachable, !dbg !3031

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3023
  ret i8* %14, !dbg !3032
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #23 !dbg !384 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !389, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64* %1, metadata !390, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %2, metadata !391, metadata !DIExpression()), !dbg !3033
  %4 = load i64, i64* %1, align 8, !dbg !3034, !tbaa !2244
  call void @llvm.dbg.value(metadata i64 %4, metadata !392, metadata !DIExpression()), !dbg !3033
  %5 = icmp eq i8* %0, null, !dbg !3035
  br i1 %5, label %6, label %20, !dbg !3037

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3038
  br i1 %7, label %8, label %13, !dbg !3041

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3042
  call void @llvm.dbg.value(metadata i64 %9, metadata !392, metadata !DIExpression()), !dbg !3033
  %10 = icmp ugt i64 %2, 128, !dbg !3044
  %11 = zext i1 %10 to i64, !dbg !3044
  %12 = add nuw nsw i64 %9, %11, !dbg !3045
  call void @llvm.dbg.value(metadata i64 %12, metadata !392, metadata !DIExpression()), !dbg !3033
  br label %13, !dbg !3046

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3033
  call void @llvm.dbg.value(metadata i64 %14, metadata !392, metadata !DIExpression()), !dbg !3033
  %15 = udiv i64 9223372036854775807, %2, !dbg !3047
  %16 = icmp ult i64 %15, %14, !dbg !3047
  br i1 %16, label %19, label %17, !dbg !3049

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !392, metadata !DIExpression()), !dbg !3033
  store i64 %14, i64* %1, align 8, !dbg !3050, !tbaa !2244
  %18 = mul i64 %14, %2, !dbg !3051
  call void @llvm.dbg.value(metadata i8* %0, metadata !3003, metadata !DIExpression()) #26, !dbg !3052
  call void @llvm.dbg.value(metadata i64 %28, metadata !3008, metadata !DIExpression()) #26, !dbg !3052
  br label %31, !dbg !3054

19:                                               ; preds = %13
  tail call void @xalloc_die() #28, !dbg !3055
  unreachable, !dbg !3055

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3056
  %22 = icmp ugt i64 %21, %4, !dbg !3059
  br i1 %22, label %24, label %23, !dbg !3060

23:                                               ; preds = %20
  tail call void @xalloc_die() #28, !dbg !3061
  unreachable, !dbg !3061

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3062
  %26 = add nuw i64 %4, 1, !dbg !3063
  %27 = add i64 %26, %25, !dbg !3064
  call void @llvm.dbg.value(metadata i64 %27, metadata !392, metadata !DIExpression()), !dbg !3033
  store i64 %27, i64* %1, align 8, !dbg !3050, !tbaa !2244
  %28 = mul i64 %27, %2, !dbg !3051
  call void @llvm.dbg.value(metadata i8* %0, metadata !3003, metadata !DIExpression()) #26, !dbg !3052
  call void @llvm.dbg.value(metadata i64 %28, metadata !3008, metadata !DIExpression()) #26, !dbg !3052
  %29 = icmp eq i64 %28, 0, !dbg !3065
  br i1 %29, label %30, label %31, !dbg !3054

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #26, !dbg !3066
  br label %38, !dbg !3067

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #26, !dbg !3068
  call void @llvm.dbg.value(metadata i8* %33, metadata !3003, metadata !DIExpression()) #26, !dbg !3052
  %34 = icmp eq i8* %33, null, !dbg !3069
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !3070
  br i1 %36, label %37, label %38, !dbg !3070

37:                                               ; preds = %31
  tail call void @xalloc_die() #28, !dbg !3071
  unreachable, !dbg !3071

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3052
  ret i8* %39, !dbg !3072
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #23 !dbg !3073 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3075, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata i64 %0, metadata !2970, metadata !DIExpression()) #26, !dbg !3077
  %2 = tail call noalias i8* @malloc(i64 %0) #26, !dbg !3079
  call void @llvm.dbg.value(metadata i8* %2, metadata !2975, metadata !DIExpression()) #26, !dbg !3077
  %3 = icmp eq i8* %2, null, !dbg !3080
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3081
  br i1 %5, label %6, label %7, !dbg !3081

6:                                                ; preds = %1
  tail call void @xalloc_die() #28, !dbg !3082
  unreachable, !dbg !3082

7:                                                ; preds = %1
  ret i8* %2, !dbg !3083
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3084 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3088, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i64* %1, metadata !3089, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i8* %0, metadata !389, metadata !DIExpression()) #26, !dbg !3091
  call void @llvm.dbg.value(metadata i64* %1, metadata !390, metadata !DIExpression()) #26, !dbg !3091
  call void @llvm.dbg.value(metadata i64 1, metadata !391, metadata !DIExpression()) #26, !dbg !3091
  %3 = load i64, i64* %1, align 8, !dbg !3093, !tbaa !2244
  call void @llvm.dbg.value(metadata i64 %3, metadata !392, metadata !DIExpression()) #26, !dbg !3091
  %4 = icmp eq i8* %0, null, !dbg !3094
  br i1 %4, label %5, label %10, !dbg !3095

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3096
  br i1 %6, label %17, label %7, !dbg !3097

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !392, metadata !DIExpression()) #26, !dbg !3091
  %8 = icmp slt i64 %3, 0, !dbg !3098
  br i1 %8, label %9, label %17, !dbg !3099

9:                                                ; preds = %7
  tail call void @xalloc_die() #28, !dbg !3100
  unreachable, !dbg !3100

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !3101
  br i1 %11, label %13, label %12, !dbg !3102

12:                                               ; preds = %10
  tail call void @xalloc_die() #28, !dbg !3103
  unreachable, !dbg !3103

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !3104
  %15 = add nuw nsw i64 %3, 1, !dbg !3105
  %16 = add nuw nsw i64 %15, %14, !dbg !3106
  call void @llvm.dbg.value(metadata i64 %16, metadata !392, metadata !DIExpression()) #26, !dbg !3091
  call void @llvm.dbg.value(metadata i8* %0, metadata !3003, metadata !DIExpression()) #26, !dbg !3107
  call void @llvm.dbg.value(metadata i64 %16, metadata !3008, metadata !DIExpression()) #26, !dbg !3107
  br label %17, !dbg !3109

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !3110
  store i64 %18, i64* %1, align 8, !dbg !3110, !tbaa !2244
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #26, !dbg !3111
  call void @llvm.dbg.value(metadata i8* %19, metadata !3003, metadata !DIExpression()) #26, !dbg !3107
  %20 = icmp eq i8* %19, null, !dbg !3112
  br i1 %20, label %21, label %22, !dbg !3113

21:                                               ; preds = %17
  tail call void @xalloc_die() #28, !dbg !3114
  unreachable, !dbg !3114

22:                                               ; preds = %17
  ret i8* %19, !dbg !3115
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3116 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3118, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %0, metadata !3120, metadata !DIExpression()) #26, !dbg !3125
  call void @llvm.dbg.value(metadata i64 1, metadata !3123, metadata !DIExpression()) #26, !dbg !3125
  %2 = icmp slt i64 %0, 0, !dbg !3127
  br i1 %2, label %6, label %3, !dbg !3129

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #26, !dbg !3130
  call void @llvm.dbg.value(metadata i8* %4, metadata !3124, metadata !DIExpression()) #26, !dbg !3125
  %5 = icmp eq i8* %4, null, !dbg !3131
  br i1 %5, label %6, label %7, !dbg !3132

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #28, !dbg !3133
  unreachable, !dbg !3133

7:                                                ; preds = %3
  ret i8* %4, !dbg !3134
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3121 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3120, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata i64 %1, metadata !3123, metadata !DIExpression()), !dbg !3135
  %3 = udiv i64 9223372036854775807, %1, !dbg !3136
  %4 = icmp ult i64 %3, %0, !dbg !3136
  br i1 %4, label %8, label %5, !dbg !3137

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #26, !dbg !3138
  call void @llvm.dbg.value(metadata i8* %6, metadata !3124, metadata !DIExpression()), !dbg !3135
  %7 = icmp eq i8* %6, null, !dbg !3139
  br i1 %7, label %8, label %9, !dbg !3140

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #28, !dbg !3141
  unreachable, !dbg !3141

9:                                                ; preds = %5
  ret i8* %6, !dbg !3142
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3143 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3149, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i64 %1, metadata !3150, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i64 %1, metadata !2970, metadata !DIExpression()) #26, !dbg !3152
  %3 = tail call noalias i8* @malloc(i64 %1) #26, !dbg !3154
  call void @llvm.dbg.value(metadata i8* %3, metadata !2975, metadata !DIExpression()) #26, !dbg !3152
  %4 = icmp eq i8* %3, null, !dbg !3155
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !3156
  br i1 %6, label %7, label %8, !dbg !3156

7:                                                ; preds = %2
  tail call void @xalloc_die() #28, !dbg !3157
  unreachable, !dbg !3157

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3158, metadata !DIExpression()) #26, !dbg !3167
  call void @llvm.dbg.value(metadata i8* %0, metadata !3165, metadata !DIExpression()) #26, !dbg !3167
  call void @llvm.dbg.value(metadata i64 %1, metadata !3166, metadata !DIExpression()) #26, !dbg !3167
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #26, !dbg !3169
  ret i8* %3, !dbg !3170
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3171 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3173, metadata !DIExpression()), !dbg !3174
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #27, !dbg !3175
  %3 = add i64 %2, 1, !dbg !3176
  call void @llvm.dbg.value(metadata i8* %0, metadata !3149, metadata !DIExpression()) #26, !dbg !3177
  call void @llvm.dbg.value(metadata i64 %3, metadata !3150, metadata !DIExpression()) #26, !dbg !3177
  call void @llvm.dbg.value(metadata i64 %3, metadata !2970, metadata !DIExpression()) #26, !dbg !3179
  %4 = tail call noalias i8* @malloc(i64 %3) #26, !dbg !3181
  call void @llvm.dbg.value(metadata i8* %4, metadata !2975, metadata !DIExpression()) #26, !dbg !3179
  %5 = icmp eq i8* %4, null, !dbg !3182
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !3183
  br i1 %7, label %8, label %9, !dbg !3183

8:                                                ; preds = %1
  tail call void @xalloc_die() #28, !dbg !3184
  unreachable, !dbg !3184

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3158, metadata !DIExpression()) #26, !dbg !3185
  call void @llvm.dbg.value(metadata i8* %0, metadata !3165, metadata !DIExpression()) #26, !dbg !3185
  call void @llvm.dbg.value(metadata i64 %3, metadata !3166, metadata !DIExpression()) #26, !dbg !3185
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #26, !dbg !3187
  ret i8* %4, !dbg !3188
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3189 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3190, !tbaa !997
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.109, i64 0, i64 0), i32 5) #26, !dbg !3191
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i64 0, i64 0), i8* %2) #26, !dbg !3192
  tail call void @abort() #28, !dbg !3193
  unreachable, !dbg !3193
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xnumtoumax(i8* %0, i32 %1, i64 %2, i64 %3, i8* %4, i8* %5, i32 %6) local_unnamed_addr #8 !dbg !3194 {
  %8 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3202, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i32 %1, metadata !3203, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %2, metadata !3204, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %3, metadata !3205, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %4, metadata !3206, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %5, metadata !3207, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i32 %6, metadata !3208, metadata !DIExpression()), !dbg !3212
  %9 = bitcast i64* %8 to i8*, !dbg !3213
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #26, !dbg !3213
  call void @llvm.dbg.value(metadata i64* %8, metadata !3211, metadata !DIExpression(DW_OP_deref)), !dbg !3212
  %10 = call i32 @xstrtoumax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #26, !dbg !3214
  call void @llvm.dbg.value(metadata i32 %10, metadata !3209, metadata !DIExpression()), !dbg !3212
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %23
    i32 3, label %25
  ], !dbg !3215

11:                                               ; preds = %7
  %12 = tail call i32* @__errno_location() #30, !dbg !3216
  br label %27, !dbg !3215

13:                                               ; preds = %7
  %14 = load i64, i64* %8, align 8, !dbg !3219, !tbaa !2244
  call void @llvm.dbg.value(metadata i64 %14, metadata !3211, metadata !DIExpression()), !dbg !3212
  %15 = icmp ult i64 %14, %2, !dbg !3223
  %16 = icmp ugt i64 %14, %3
  %17 = or i1 %15, %16, !dbg !3224
  br i1 %17, label %18, label %36, !dbg !3224

18:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, metadata !3209, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %14, metadata !3211, metadata !DIExpression()), !dbg !3212
  %19 = icmp ugt i64 %14, 1073741823, !dbg !3225
  %20 = tail call i32* @__errno_location() #30, !dbg !3228
  br i1 %19, label %21, label %22, !dbg !3229

21:                                               ; preds = %18
  store i32 75, i32* %20, align 4, !dbg !3230, !tbaa !997
  call void @llvm.dbg.value(metadata i32 undef, metadata !3209, metadata !DIExpression()), !dbg !3212
  br label %27, !dbg !3231

22:                                               ; preds = %18
  store i32 34, i32* %20, align 4, !dbg !3232, !tbaa !997
  call void @llvm.dbg.value(metadata i32 undef, metadata !3209, metadata !DIExpression()), !dbg !3212
  br label %27, !dbg !3231

23:                                               ; preds = %7
  %24 = tail call i32* @__errno_location() #30, !dbg !3233
  store i32 75, i32* %24, align 4, !dbg !3235, !tbaa !997
  call void @llvm.dbg.value(metadata i32 undef, metadata !3209, metadata !DIExpression()), !dbg !3212
  br label %27, !dbg !3231

25:                                               ; preds = %7
  %26 = tail call i32* @__errno_location() #30, !dbg !3236
  store i32 0, i32* %26, align 4, !dbg !3238, !tbaa !997
  call void @llvm.dbg.value(metadata i32 undef, metadata !3209, metadata !DIExpression()), !dbg !3212
  br label %27, !dbg !3231

27:                                               ; preds = %11, %21, %22, %25, %23
  %28 = phi i32* [ %12, %11 ], [ %20, %21 ], [ %20, %22 ], [ %26, %25 ], [ %24, %23 ], !dbg !3216
  %29 = icmp eq i32 %6, 0, !dbg !3239
  %30 = select i1 %29, i32 1, i32 %6, !dbg !3239
  %31 = load i32, i32* %28, align 4, !dbg !3216, !tbaa !997
  %32 = icmp eq i32 %31, 22, !dbg !3240
  %33 = select i1 %32, i32 0, i32 %31, !dbg !3216
  %34 = call i8* @quote(i8* %0) #26, !dbg !3241
  call void (i32, i32, i8*, ...) @error(i32 %30, i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.111, i64 0, i64 0), i8* %5, i8* %34) #26, !dbg !3242
  %35 = load i64, i64* %8, align 8, !dbg !3243, !tbaa !2244
  br label %36, !dbg !3244

36:                                               ; preds = %13, %27
  %37 = phi i64 [ %14, %13 ], [ %35, %27 ], !dbg !3243
  call void @llvm.dbg.value(metadata i64 %37, metadata !3211, metadata !DIExpression()), !dbg !3212
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #26, !dbg !3245
  ret i64 %37, !dbg !3246
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xdectoumax(i8* %0, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5) local_unnamed_addr #8 !dbg !3247 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3251, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i64 %1, metadata !3252, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i64 %2, metadata !3253, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8* %3, metadata !3254, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8* %4, metadata !3255, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i32 %5, metadata !3256, metadata !DIExpression()), !dbg !3257
  %7 = tail call i64 @xnumtoumax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5), !dbg !3258
  ret i64 %7, !dbg !3259
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoumax(i8* %0, i8** %1, i32 %2, i64* nocapture %3, i8* readonly %4) local_unnamed_addr #8 !dbg !3260 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3266, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i8** %1, metadata !3267, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i32 %2, metadata !3268, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i64* %3, metadata !3269, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i8* %4, metadata !3270, metadata !DIExpression()), !dbg !3284
  %7 = bitcast i8** %6 to i8*, !dbg !3285
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #26, !dbg !3285
  call void @llvm.dbg.value(metadata i32 0, metadata !3274, metadata !DIExpression()), !dbg !3284
  %8 = icmp ult i32 %2, 37, !dbg !3286
  br i1 %8, label %10, label %9, !dbg !3286

9:                                                ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.116, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.117, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #28, !dbg !3286
  unreachable, !dbg !3286

10:                                               ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !3289
  call void @llvm.dbg.value(metadata i8** %25, metadata !3272, metadata !DIExpression()), !dbg !3284
  %12 = tail call i32* @__errno_location() #30, !dbg !3290
  store i32 0, i32* %12, align 4, !dbg !3291, !tbaa !997
  call void @llvm.dbg.value(metadata i8* %0, metadata !3275, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8 undef, metadata !3278, metadata !DIExpression()), !dbg !3292
  %13 = tail call i16** @__ctype_b_loc() #30, !dbg !3284
  %14 = load i16*, i16** %13, align 8, !tbaa !836
  br label %15, !dbg !3293

15:                                               ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ], !dbg !3292
  %17 = load i8, i8* %16, align 1, !dbg !3292, !tbaa !1117
  call void @llvm.dbg.value(metadata i8 %17, metadata !3278, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %16, metadata !3275, metadata !DIExpression()), !dbg !3292
  %18 = zext i8 %17 to i64, !dbg !3294
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !3294
  %20 = load i16, i16* %19, align 2, !dbg !3294, !tbaa !1727
  %21 = and i16 %20, 8192, !dbg !3294
  %22 = icmp eq i16 %21, 0, !dbg !3293
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !3295
  call void @llvm.dbg.value(metadata i8* %23, metadata !3275, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8 undef, metadata !3278, metadata !DIExpression()), !dbg !3292
  br i1 %22, label %24, label %15, !dbg !3293, !llvm.loop !3296

24:                                               ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !3289
  %26 = icmp eq i8 %17, 45, !dbg !3298
  br i1 %26, label %285, label %27

27:                                               ; preds = %24
  %28 = call i64 @strtoumax(i8* %0, i8** %25, i32 %2) #26, !dbg !3300
  call void @llvm.dbg.value(metadata i64 %28, metadata !3273, metadata !DIExpression()), !dbg !3284
  %29 = load i8*, i8** %25, align 8, !dbg !3301, !tbaa !836
  %30 = icmp eq i8* %29, %0, !dbg !3303
  br i1 %30, label %31, label %40, !dbg !3304

31:                                               ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !3305
  br i1 %32, label %285, label %33, !dbg !3308

33:                                               ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !3309, !tbaa !1117
  %35 = icmp eq i8 %34, 0, !dbg !3309
  br i1 %35, label %285, label %36, !dbg !3310

36:                                               ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !3309
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #27, !dbg !3311
  %39 = icmp eq i8* %38, null, !dbg !3311
  br i1 %39, label %285, label %47, !dbg !3312

40:                                               ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !3313, !tbaa !997
  switch i32 %41, label %285 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !3315

42:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, metadata !3274, metadata !DIExpression()), !dbg !3284
  br label %43, !dbg !3316

43:                                               ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ %41, %40 ], !dbg !3284
  call void @llvm.dbg.value(metadata i32 %44, metadata !3274, metadata !DIExpression()), !dbg !3284
  %45 = icmp eq i8* %4, null, !dbg !3318
  br i1 %45, label %46, label %47, !dbg !3320

46:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, metadata !3273, metadata !DIExpression()), !dbg !3284
  store i64 %28, i64* %3, align 8, !dbg !3321, !tbaa !2244
  br label %285, !dbg !3323

47:                                               ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !3324, !tbaa !1117
  %51 = sext i8 %50 to i32, !dbg !3324
  %52 = icmp eq i8 %50, 0, !dbg !3325
  br i1 %52, label %282, label %53, !dbg !3326

53:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, metadata !3279, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i32 1, metadata !3282, metadata !DIExpression()), !dbg !3327
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #27, !dbg !3328
  %55 = icmp eq i8* %54, null, !dbg !3328
  br i1 %55, label %56, label %58, !dbg !3330

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, metadata !3273, metadata !DIExpression()), !dbg !3284
  store i64 %49, i64* %3, align 8, !dbg !3331, !tbaa !2244
  %57 = or i32 %48, 2, !dbg !3333
  br label %285, !dbg !3334

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
  ], !dbg !3335

59:                                               ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #27, !dbg !3336
  %61 = icmp eq i8* %60, null, !dbg !3336
  br i1 %61, label %72, label %62, !dbg !3339

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !3340
  %64 = load i8, i8* %63, align 1, !dbg !3340, !tbaa !1117
  %65 = sext i8 %64 to i32, !dbg !3340
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !3341

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !3342
  %68 = load i8, i8* %67, align 1, !dbg !3342, !tbaa !1117
  %69 = icmp eq i8 %68, 66, !dbg !3345
  %70 = select i1 %69, i64 3, i64 1, !dbg !3346
  br label %72, !dbg !3346

71:                                               ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, metadata !3279, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i32 2, metadata !3282, metadata !DIExpression()), !dbg !3327
  br label %72, !dbg !3347

72:                                               ; preds = %66, %59, %62, %71, %58
  %73 = phi i64 [ 1024, %58 ], [ 1024, %62 ], [ 1000, %71 ], [ 1024, %59 ], [ 1024, %66 ]
  %74 = phi i64 [ 1, %58 ], [ 1, %62 ], [ 2, %71 ], [ 1, %59 ], [ %70, %66 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !3282, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i32 undef, metadata !3279, metadata !DIExpression()), !dbg !3327
  switch i32 %51, label %265 [
    i32 98, label %205
    i32 66, label %210
    i32 99, label %272
    i32 69, label %175
    i32 71, label %215
    i32 103, label %215
    i32 107, label %267
    i32 75, label %267
    i32 77, label %230
    i32 109, label %230
    i32 80, label %150
    i32 84, label %240
    i32 116, label %240
    i32 119, label %260
    i32 89, label %110
    i32 90, label %75
  ], !dbg !3348

75:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3349, metadata !DIExpression()) #26, !dbg !3357
  call void @llvm.dbg.value(metadata i32 7, metadata !3356, metadata !DIExpression()) #26, !dbg !3357
  call void @llvm.dbg.value(metadata i32 6, metadata !3356, metadata !DIExpression()) #26, !dbg !3357
  call void @llvm.dbg.value(metadata i64* undef, metadata !3360, metadata !DIExpression()) #26, !dbg !3366
  call void @llvm.dbg.value(metadata i32 undef, metadata !3365, metadata !DIExpression()) #26, !dbg !3366
  %76 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #26, !dbg !3368
  %77 = extractvalue { i64, i1 } %76, 1, !dbg !3368
  %78 = mul i64 %49, %73, !dbg !3370
  %79 = select i1 %77, i64 -1, i64 %78, !dbg !3370
  call void @llvm.dbg.value(metadata i1 %77, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3357
  call void @llvm.dbg.value(metadata i32 6, metadata !3356, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3357
  call void @llvm.dbg.value(metadata i1 %77, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3357
  call void @llvm.dbg.value(metadata i32 6, metadata !3356, metadata !DIExpression()) #26, !dbg !3357
  call void @llvm.dbg.value(metadata i32 5, metadata !3356, metadata !DIExpression()) #26, !dbg !3357
  call void @llvm.dbg.value(metadata i64* undef, metadata !3360, metadata !DIExpression()) #26, !dbg !3366
  call void @llvm.dbg.value(metadata i32 undef, metadata !3365, metadata !DIExpression()) #26, !dbg !3366
  %80 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %79) #26, !dbg !3368
  %81 = extractvalue { i64, i1 } %80, 1, !dbg !3368
  %82 = mul i64 %79, %73, !dbg !3370
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !3370
  %84 = or i1 %77, %81, !dbg !3371
  call void @llvm.dbg.value(metadata i1 %84, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3357
  call void @llvm.dbg.value(metadata i32 5, metadata !3356, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3357
  call void @llvm.dbg.value(metadata i1 %84, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3357
  call void @llvm.dbg.value(metadata i32 5, metadata !3356, metadata !DIExpression()) #26, !dbg !3357
  call void @llvm.dbg.value(metadata i32 4, metadata !3356, metadata !DIExpression()) #26, !dbg !3357
  call void @llvm.dbg.value(metadata i64* undef, metadata !3360, metadata !DIExpression()) #26, !dbg !3366
  call void @llvm.dbg.value(metadata i32 undef, metadata !3365, metadata !DIExpression()) #26, !dbg !3366
  %85 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %83) #26, !dbg !3368
  %86 = extractvalue { i64, i1 } %85, 1, !dbg !3368
  %87 = mul i64 %83, %73, !dbg !3370
  %88 = select i1 %86, i64 -1, i64 %87, !dbg !3370
  %89 = or i1 %84, %86, !dbg !3371
  call void @llvm.dbg.value(metadata i1 %89, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3357
  call void @llvm.dbg.value(metadata i32 4, metadata !3356, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3357
  call void @llvm.dbg.value(metadata i1 %89, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3357
  call void @llvm.dbg.value(metadata i32 4, metadata !3356, metadata !DIExpression()) #26, !dbg !3357
  call void @llvm.dbg.value(metadata i32 3, metadata !3356, metadata !DIExpression()) #26, !dbg !3357
  call void @llvm.dbg.value(metadata i64* undef, metadata !3360, metadata !DIExpression()) #26, !dbg !3366
  call void @llvm.dbg.value(metadata i32 undef, metadata !3365, metadata !DIExpression()) #26, !dbg !3366
  %90 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %88) #26, !dbg !3368
  %91 = extractvalue { i64, i1 } %90, 1, !dbg !3368
  %92 = mul i64 %88, %73, !dbg !3370
  %93 = select i1 %91, i64 -1, i64 %92, !dbg !3370
  %94 = or i1 %89, %91, !dbg !3371
  call void @llvm.dbg.value(metadata i1 %94, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3357
  call void @llvm.dbg.value(metadata i32 3, metadata !3356, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3357
  call void @llvm.dbg.value(metadata i1 %94, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3357
  call void @llvm.dbg.value(metadata i32 3, metadata !3356, metadata !DIExpression()) #26, !dbg !3357
  call void @llvm.dbg.value(metadata i32 2, metadata !3356, metadata !DIExpression()) #26, !dbg !3357
  call void @llvm.dbg.value(metadata i64* undef, metadata !3360, metadata !DIExpression()) #26, !dbg !3366
  call void @llvm.dbg.value(metadata i32 undef, metadata !3365, metadata !DIExpression()) #26, !dbg !3366
  %95 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %93) #26, !dbg !3368
  %96 = extractvalue { i64, i1 } %95, 1, !dbg !3368
  %97 = mul i64 %93, %73, !dbg !3370
  %98 = select i1 %96, i64 -1, i64 %97, !dbg !3370
  %99 = or i1 %94, %96, !dbg !3371
  call void @llvm.dbg.value(metadata i1 %99, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3357
  call void @llvm.dbg.value(metadata i32 2, metadata !3356, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3357
  call void @llvm.dbg.value(metadata i1 %99, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3357
  call void @llvm.dbg.value(metadata i32 2, metadata !3356, metadata !DIExpression()) #26, !dbg !3357
  call void @llvm.dbg.value(metadata i32 1, metadata !3356, metadata !DIExpression()) #26, !dbg !3357
  call void @llvm.dbg.value(metadata i64* undef, metadata !3360, metadata !DIExpression()) #26, !dbg !3366
  call void @llvm.dbg.value(metadata i32 undef, metadata !3365, metadata !DIExpression()) #26, !dbg !3366
  %100 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %98) #26, !dbg !3368
  %101 = extractvalue { i64, i1 } %100, 1, !dbg !3368
  %102 = mul i64 %98, %73, !dbg !3370
  %103 = select i1 %101, i64 -1, i64 %102, !dbg !3370
  %104 = or i1 %99, %101, !dbg !3371
  call void @llvm.dbg.value(metadata i1 %104, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3357
  call void @llvm.dbg.value(metadata i32 1, metadata !3356, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3357
  call void @llvm.dbg.value(metadata i1 %104, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3357
  call void @llvm.dbg.value(metadata i32 1, metadata !3356, metadata !DIExpression()) #26, !dbg !3357
  call void @llvm.dbg.value(metadata i32 0, metadata !3356, metadata !DIExpression()) #26, !dbg !3357
  call void @llvm.dbg.value(metadata i64* undef, metadata !3360, metadata !DIExpression()) #26, !dbg !3366
  call void @llvm.dbg.value(metadata i32 undef, metadata !3365, metadata !DIExpression()) #26, !dbg !3366
  %105 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %103) #26, !dbg !3368
  %106 = extractvalue { i64, i1 } %105, 1, !dbg !3368
  %107 = mul i64 %103, %73, !dbg !3370
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !3370
  %109 = or i1 %104, %106, !dbg !3371
  call void @llvm.dbg.value(metadata i1 %109, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3357
  call void @llvm.dbg.value(metadata i32 0, metadata !3356, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3357
  br label %272, !dbg !3372

110:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3349, metadata !DIExpression()) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i32 8, metadata !3356, metadata !DIExpression()) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i32 7, metadata !3356, metadata !DIExpression()) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i64* undef, metadata !3360, metadata !DIExpression()) #26, !dbg !3375
  call void @llvm.dbg.value(metadata i32 undef, metadata !3365, metadata !DIExpression()) #26, !dbg !3375
  %111 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #26, !dbg !3377
  %112 = extractvalue { i64, i1 } %111, 1, !dbg !3377
  %113 = mul i64 %49, %73, !dbg !3378
  %114 = select i1 %112, i64 -1, i64 %113, !dbg !3378
  call void @llvm.dbg.value(metadata i1 %112, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i32 7, metadata !3356, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i1 %112, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i32 7, metadata !3356, metadata !DIExpression()) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i32 6, metadata !3356, metadata !DIExpression()) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i64* undef, metadata !3360, metadata !DIExpression()) #26, !dbg !3375
  call void @llvm.dbg.value(metadata i32 undef, metadata !3365, metadata !DIExpression()) #26, !dbg !3375
  %115 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %114) #26, !dbg !3377
  %116 = extractvalue { i64, i1 } %115, 1, !dbg !3377
  %117 = mul i64 %114, %73, !dbg !3378
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !3378
  %119 = or i1 %112, %116, !dbg !3379
  call void @llvm.dbg.value(metadata i1 %119, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i32 6, metadata !3356, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i1 %119, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i32 6, metadata !3356, metadata !DIExpression()) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i32 5, metadata !3356, metadata !DIExpression()) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i64* undef, metadata !3360, metadata !DIExpression()) #26, !dbg !3375
  call void @llvm.dbg.value(metadata i32 undef, metadata !3365, metadata !DIExpression()) #26, !dbg !3375
  %120 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %118) #26, !dbg !3377
  %121 = extractvalue { i64, i1 } %120, 1, !dbg !3377
  %122 = mul i64 %118, %73, !dbg !3378
  %123 = select i1 %121, i64 -1, i64 %122, !dbg !3378
  %124 = or i1 %119, %121, !dbg !3379
  call void @llvm.dbg.value(metadata i1 %124, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i32 5, metadata !3356, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i1 %124, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i32 5, metadata !3356, metadata !DIExpression()) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i32 4, metadata !3356, metadata !DIExpression()) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i64* undef, metadata !3360, metadata !DIExpression()) #26, !dbg !3375
  call void @llvm.dbg.value(metadata i32 undef, metadata !3365, metadata !DIExpression()) #26, !dbg !3375
  %125 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %123) #26, !dbg !3377
  %126 = extractvalue { i64, i1 } %125, 1, !dbg !3377
  %127 = mul i64 %123, %73, !dbg !3378
  %128 = select i1 %126, i64 -1, i64 %127, !dbg !3378
  %129 = or i1 %124, %126, !dbg !3379
  call void @llvm.dbg.value(metadata i1 %129, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i32 4, metadata !3356, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i1 %129, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i32 4, metadata !3356, metadata !DIExpression()) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i32 3, metadata !3356, metadata !DIExpression()) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i64* undef, metadata !3360, metadata !DIExpression()) #26, !dbg !3375
  call void @llvm.dbg.value(metadata i32 undef, metadata !3365, metadata !DIExpression()) #26, !dbg !3375
  %130 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %128) #26, !dbg !3377
  %131 = extractvalue { i64, i1 } %130, 1, !dbg !3377
  %132 = mul i64 %128, %73, !dbg !3378
  %133 = select i1 %131, i64 -1, i64 %132, !dbg !3378
  %134 = or i1 %129, %131, !dbg !3379
  call void @llvm.dbg.value(metadata i1 %134, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i32 3, metadata !3356, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i1 %134, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i32 3, metadata !3356, metadata !DIExpression()) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i32 2, metadata !3356, metadata !DIExpression()) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i64* undef, metadata !3360, metadata !DIExpression()) #26, !dbg !3375
  call void @llvm.dbg.value(metadata i32 undef, metadata !3365, metadata !DIExpression()) #26, !dbg !3375
  %135 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %133) #26, !dbg !3377
  %136 = extractvalue { i64, i1 } %135, 1, !dbg !3377
  %137 = mul i64 %133, %73, !dbg !3378
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !3378
  %139 = or i1 %134, %136, !dbg !3379
  call void @llvm.dbg.value(metadata i1 %139, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i32 2, metadata !3356, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i1 %139, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i32 2, metadata !3356, metadata !DIExpression()) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i32 1, metadata !3356, metadata !DIExpression()) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i64* undef, metadata !3360, metadata !DIExpression()) #26, !dbg !3375
  call void @llvm.dbg.value(metadata i32 undef, metadata !3365, metadata !DIExpression()) #26, !dbg !3375
  %140 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %138) #26, !dbg !3377
  %141 = extractvalue { i64, i1 } %140, 1, !dbg !3377
  %142 = mul i64 %138, %73, !dbg !3378
  %143 = select i1 %141, i64 -1, i64 %142, !dbg !3378
  %144 = or i1 %139, %141, !dbg !3379
  call void @llvm.dbg.value(metadata i1 %144, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i32 1, metadata !3356, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i1 %144, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i32 1, metadata !3356, metadata !DIExpression()) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i32 0, metadata !3356, metadata !DIExpression()) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i64* undef, metadata !3360, metadata !DIExpression()) #26, !dbg !3375
  call void @llvm.dbg.value(metadata i32 undef, metadata !3365, metadata !DIExpression()) #26, !dbg !3375
  %145 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %143) #26, !dbg !3377
  %146 = extractvalue { i64, i1 } %145, 1, !dbg !3377
  %147 = mul i64 %143, %73, !dbg !3378
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !3378
  %149 = or i1 %144, %146, !dbg !3379
  call void @llvm.dbg.value(metadata i1 %149, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i32 0, metadata !3356, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3373
  br label %272, !dbg !3372

150:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3349, metadata !DIExpression()) #26, !dbg !3380
  call void @llvm.dbg.value(metadata i32 5, metadata !3356, metadata !DIExpression()) #26, !dbg !3380
  call void @llvm.dbg.value(metadata i32 4, metadata !3356, metadata !DIExpression()) #26, !dbg !3380
  call void @llvm.dbg.value(metadata i64* undef, metadata !3360, metadata !DIExpression()) #26, !dbg !3382
  call void @llvm.dbg.value(metadata i32 undef, metadata !3365, metadata !DIExpression()) #26, !dbg !3382
  %151 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #26, !dbg !3384
  %152 = extractvalue { i64, i1 } %151, 1, !dbg !3384
  %153 = mul i64 %49, %73, !dbg !3385
  %154 = select i1 %152, i64 -1, i64 %153, !dbg !3385
  call void @llvm.dbg.value(metadata i1 %152, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3380
  call void @llvm.dbg.value(metadata i32 4, metadata !3356, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3380
  call void @llvm.dbg.value(metadata i1 %152, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3380
  call void @llvm.dbg.value(metadata i32 4, metadata !3356, metadata !DIExpression()) #26, !dbg !3380
  call void @llvm.dbg.value(metadata i32 3, metadata !3356, metadata !DIExpression()) #26, !dbg !3380
  call void @llvm.dbg.value(metadata i64* undef, metadata !3360, metadata !DIExpression()) #26, !dbg !3382
  call void @llvm.dbg.value(metadata i32 undef, metadata !3365, metadata !DIExpression()) #26, !dbg !3382
  %155 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %154) #26, !dbg !3384
  %156 = extractvalue { i64, i1 } %155, 1, !dbg !3384
  %157 = mul i64 %154, %73, !dbg !3385
  %158 = select i1 %156, i64 -1, i64 %157, !dbg !3385
  %159 = or i1 %152, %156, !dbg !3386
  call void @llvm.dbg.value(metadata i1 %159, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3380
  call void @llvm.dbg.value(metadata i32 3, metadata !3356, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3380
  call void @llvm.dbg.value(metadata i1 %159, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3380
  call void @llvm.dbg.value(metadata i32 3, metadata !3356, metadata !DIExpression()) #26, !dbg !3380
  call void @llvm.dbg.value(metadata i32 2, metadata !3356, metadata !DIExpression()) #26, !dbg !3380
  call void @llvm.dbg.value(metadata i64* undef, metadata !3360, metadata !DIExpression()) #26, !dbg !3382
  call void @llvm.dbg.value(metadata i32 undef, metadata !3365, metadata !DIExpression()) #26, !dbg !3382
  %160 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %158) #26, !dbg !3384
  %161 = extractvalue { i64, i1 } %160, 1, !dbg !3384
  %162 = mul i64 %158, %73, !dbg !3385
  %163 = select i1 %161, i64 -1, i64 %162, !dbg !3385
  %164 = or i1 %159, %161, !dbg !3386
  call void @llvm.dbg.value(metadata i1 %164, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3380
  call void @llvm.dbg.value(metadata i32 2, metadata !3356, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3380
  call void @llvm.dbg.value(metadata i1 %164, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3380
  call void @llvm.dbg.value(metadata i32 2, metadata !3356, metadata !DIExpression()) #26, !dbg !3380
  call void @llvm.dbg.value(metadata i32 1, metadata !3356, metadata !DIExpression()) #26, !dbg !3380
  call void @llvm.dbg.value(metadata i64* undef, metadata !3360, metadata !DIExpression()) #26, !dbg !3382
  call void @llvm.dbg.value(metadata i32 undef, metadata !3365, metadata !DIExpression()) #26, !dbg !3382
  %165 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %163) #26, !dbg !3384
  %166 = extractvalue { i64, i1 } %165, 1, !dbg !3384
  %167 = mul i64 %163, %73, !dbg !3385
  %168 = select i1 %166, i64 -1, i64 %167, !dbg !3385
  %169 = or i1 %164, %166, !dbg !3386
  call void @llvm.dbg.value(metadata i1 %169, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3380
  call void @llvm.dbg.value(metadata i32 1, metadata !3356, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3380
  call void @llvm.dbg.value(metadata i1 %169, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3380
  call void @llvm.dbg.value(metadata i32 1, metadata !3356, metadata !DIExpression()) #26, !dbg !3380
  call void @llvm.dbg.value(metadata i32 0, metadata !3356, metadata !DIExpression()) #26, !dbg !3380
  call void @llvm.dbg.value(metadata i64* undef, metadata !3360, metadata !DIExpression()) #26, !dbg !3382
  call void @llvm.dbg.value(metadata i32 undef, metadata !3365, metadata !DIExpression()) #26, !dbg !3382
  %170 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %168) #26, !dbg !3384
  %171 = extractvalue { i64, i1 } %170, 1, !dbg !3384
  %172 = mul i64 %168, %73, !dbg !3385
  %173 = select i1 %171, i64 -1, i64 %172, !dbg !3385
  %174 = or i1 %169, %171, !dbg !3386
  call void @llvm.dbg.value(metadata i1 %174, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3380
  call void @llvm.dbg.value(metadata i32 0, metadata !3356, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3380
  br label %272, !dbg !3372

175:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3349, metadata !DIExpression()) #26, !dbg !3387
  call void @llvm.dbg.value(metadata i32 6, metadata !3356, metadata !DIExpression()) #26, !dbg !3387
  call void @llvm.dbg.value(metadata i32 5, metadata !3356, metadata !DIExpression()) #26, !dbg !3387
  call void @llvm.dbg.value(metadata i64* undef, metadata !3360, metadata !DIExpression()) #26, !dbg !3389
  call void @llvm.dbg.value(metadata i32 undef, metadata !3365, metadata !DIExpression()) #26, !dbg !3389
  %176 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #26, !dbg !3391
  %177 = extractvalue { i64, i1 } %176, 1, !dbg !3391
  %178 = mul i64 %49, %73, !dbg !3392
  %179 = select i1 %177, i64 -1, i64 %178, !dbg !3392
  call void @llvm.dbg.value(metadata i1 %177, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3387
  call void @llvm.dbg.value(metadata i32 5, metadata !3356, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3387
  call void @llvm.dbg.value(metadata i1 %177, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3387
  call void @llvm.dbg.value(metadata i32 5, metadata !3356, metadata !DIExpression()) #26, !dbg !3387
  call void @llvm.dbg.value(metadata i32 4, metadata !3356, metadata !DIExpression()) #26, !dbg !3387
  call void @llvm.dbg.value(metadata i64* undef, metadata !3360, metadata !DIExpression()) #26, !dbg !3389
  call void @llvm.dbg.value(metadata i32 undef, metadata !3365, metadata !DIExpression()) #26, !dbg !3389
  %180 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %179) #26, !dbg !3391
  %181 = extractvalue { i64, i1 } %180, 1, !dbg !3391
  %182 = mul i64 %179, %73, !dbg !3392
  %183 = select i1 %181, i64 -1, i64 %182, !dbg !3392
  %184 = or i1 %177, %181, !dbg !3393
  call void @llvm.dbg.value(metadata i1 %184, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3387
  call void @llvm.dbg.value(metadata i32 4, metadata !3356, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3387
  call void @llvm.dbg.value(metadata i1 %184, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3387
  call void @llvm.dbg.value(metadata i32 4, metadata !3356, metadata !DIExpression()) #26, !dbg !3387
  call void @llvm.dbg.value(metadata i32 3, metadata !3356, metadata !DIExpression()) #26, !dbg !3387
  call void @llvm.dbg.value(metadata i64* undef, metadata !3360, metadata !DIExpression()) #26, !dbg !3389
  call void @llvm.dbg.value(metadata i32 undef, metadata !3365, metadata !DIExpression()) #26, !dbg !3389
  %185 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %183) #26, !dbg !3391
  %186 = extractvalue { i64, i1 } %185, 1, !dbg !3391
  %187 = mul i64 %183, %73, !dbg !3392
  %188 = select i1 %186, i64 -1, i64 %187, !dbg !3392
  %189 = or i1 %184, %186, !dbg !3393
  call void @llvm.dbg.value(metadata i1 %189, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3387
  call void @llvm.dbg.value(metadata i32 3, metadata !3356, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3387
  call void @llvm.dbg.value(metadata i1 %189, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3387
  call void @llvm.dbg.value(metadata i32 3, metadata !3356, metadata !DIExpression()) #26, !dbg !3387
  call void @llvm.dbg.value(metadata i32 2, metadata !3356, metadata !DIExpression()) #26, !dbg !3387
  call void @llvm.dbg.value(metadata i64* undef, metadata !3360, metadata !DIExpression()) #26, !dbg !3389
  call void @llvm.dbg.value(metadata i32 undef, metadata !3365, metadata !DIExpression()) #26, !dbg !3389
  %190 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %188) #26, !dbg !3391
  %191 = extractvalue { i64, i1 } %190, 1, !dbg !3391
  %192 = mul i64 %188, %73, !dbg !3392
  %193 = select i1 %191, i64 -1, i64 %192, !dbg !3392
  %194 = or i1 %189, %191, !dbg !3393
  call void @llvm.dbg.value(metadata i1 %194, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3387
  call void @llvm.dbg.value(metadata i32 2, metadata !3356, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3387
  call void @llvm.dbg.value(metadata i1 %194, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3387
  call void @llvm.dbg.value(metadata i32 2, metadata !3356, metadata !DIExpression()) #26, !dbg !3387
  call void @llvm.dbg.value(metadata i32 1, metadata !3356, metadata !DIExpression()) #26, !dbg !3387
  call void @llvm.dbg.value(metadata i64* undef, metadata !3360, metadata !DIExpression()) #26, !dbg !3389
  call void @llvm.dbg.value(metadata i32 undef, metadata !3365, metadata !DIExpression()) #26, !dbg !3389
  %195 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %193) #26, !dbg !3391
  %196 = extractvalue { i64, i1 } %195, 1, !dbg !3391
  %197 = mul i64 %193, %73, !dbg !3392
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !3392
  %199 = or i1 %194, %196, !dbg !3393
  call void @llvm.dbg.value(metadata i1 %199, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3387
  call void @llvm.dbg.value(metadata i32 1, metadata !3356, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3387
  call void @llvm.dbg.value(metadata i1 %199, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3387
  call void @llvm.dbg.value(metadata i32 1, metadata !3356, metadata !DIExpression()) #26, !dbg !3387
  call void @llvm.dbg.value(metadata i32 0, metadata !3356, metadata !DIExpression()) #26, !dbg !3387
  call void @llvm.dbg.value(metadata i64* undef, metadata !3360, metadata !DIExpression()) #26, !dbg !3389
  call void @llvm.dbg.value(metadata i32 undef, metadata !3365, metadata !DIExpression()) #26, !dbg !3389
  %200 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %198) #26, !dbg !3391
  %201 = extractvalue { i64, i1 } %200, 1, !dbg !3391
  %202 = mul i64 %198, %73, !dbg !3392
  %203 = select i1 %201, i64 -1, i64 %202, !dbg !3392
  %204 = or i1 %199, %201, !dbg !3393
  call void @llvm.dbg.value(metadata i1 %204, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3387
  call void @llvm.dbg.value(metadata i32 0, metadata !3356, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3387
  br label %272, !dbg !3372

205:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3360, metadata !DIExpression()) #26, !dbg !3394
  call void @llvm.dbg.value(metadata i32 512, metadata !3365, metadata !DIExpression()) #26, !dbg !3394
  %206 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 512) #26, !dbg !3396
  %207 = extractvalue { i64, i1 } %206, 1, !dbg !3396
  %208 = shl i64 %49, 9, !dbg !3397
  %209 = select i1 %207, i64 -1, i64 %208, !dbg !3397
  call void @llvm.dbg.value(metadata i1 %207, metadata !3283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3327
  br label %272, !dbg !3398

210:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3360, metadata !DIExpression()) #26, !dbg !3399
  call void @llvm.dbg.value(metadata i32 1024, metadata !3365, metadata !DIExpression()) #26, !dbg !3399
  %211 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 1024) #26, !dbg !3401
  %212 = extractvalue { i64, i1 } %211, 1, !dbg !3401
  %213 = shl i64 %49, 10, !dbg !3402
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !3402
  call void @llvm.dbg.value(metadata i1 %212, metadata !3283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3327
  br label %272, !dbg !3403

215:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3354, metadata !DIExpression()) #26, !dbg !3404
  call void @llvm.dbg.value(metadata i32 undef, metadata !3355, metadata !DIExpression()) #26, !dbg !3404
  call void @llvm.dbg.value(metadata i32 0, metadata !3349, metadata !DIExpression()) #26, !dbg !3404
  call void @llvm.dbg.value(metadata i32 3, metadata !3356, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3404
  call void @llvm.dbg.value(metadata i32 0, metadata !3349, metadata !DIExpression()) #26, !dbg !3404
  call void @llvm.dbg.value(metadata i32 3, metadata !3356, metadata !DIExpression()) #26, !dbg !3404
  call void @llvm.dbg.value(metadata i32 2, metadata !3356, metadata !DIExpression()) #26, !dbg !3404
  call void @llvm.dbg.value(metadata i64* undef, metadata !3360, metadata !DIExpression()) #26, !dbg !3406
  call void @llvm.dbg.value(metadata i32 undef, metadata !3365, metadata !DIExpression()) #26, !dbg !3406
  %216 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #26, !dbg !3408
  %217 = extractvalue { i64, i1 } %216, 1, !dbg !3408
  %218 = mul i64 %49, %73, !dbg !3409
  %219 = select i1 %217, i64 -1, i64 %218, !dbg !3409
  call void @llvm.dbg.value(metadata i1 %217, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3404
  call void @llvm.dbg.value(metadata i32 2, metadata !3356, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3404
  call void @llvm.dbg.value(metadata i1 %217, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3404
  call void @llvm.dbg.value(metadata i32 2, metadata !3356, metadata !DIExpression()) #26, !dbg !3404
  call void @llvm.dbg.value(metadata i32 1, metadata !3356, metadata !DIExpression()) #26, !dbg !3404
  call void @llvm.dbg.value(metadata i64* undef, metadata !3360, metadata !DIExpression()) #26, !dbg !3406
  call void @llvm.dbg.value(metadata i32 undef, metadata !3365, metadata !DIExpression()) #26, !dbg !3406
  %220 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %219) #26, !dbg !3408
  %221 = extractvalue { i64, i1 } %220, 1, !dbg !3408
  %222 = mul i64 %219, %73, !dbg !3409
  %223 = select i1 %221, i64 -1, i64 %222, !dbg !3409
  %224 = or i1 %217, %221, !dbg !3410
  call void @llvm.dbg.value(metadata i1 %224, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3404
  call void @llvm.dbg.value(metadata i32 1, metadata !3356, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3404
  call void @llvm.dbg.value(metadata i1 %224, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3404
  call void @llvm.dbg.value(metadata i32 1, metadata !3356, metadata !DIExpression()) #26, !dbg !3404
  call void @llvm.dbg.value(metadata i32 0, metadata !3356, metadata !DIExpression()) #26, !dbg !3404
  call void @llvm.dbg.value(metadata i64* undef, metadata !3360, metadata !DIExpression()) #26, !dbg !3406
  call void @llvm.dbg.value(metadata i32 undef, metadata !3365, metadata !DIExpression()) #26, !dbg !3406
  %225 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %223) #26, !dbg !3408
  %226 = extractvalue { i64, i1 } %225, 1, !dbg !3408
  %227 = mul i64 %223, %73, !dbg !3409
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !3409
  %229 = or i1 %224, %226, !dbg !3410
  call void @llvm.dbg.value(metadata i1 %229, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3404
  call void @llvm.dbg.value(metadata i32 0, metadata !3356, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3404
  br label %272, !dbg !3372

230:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3354, metadata !DIExpression()) #26, !dbg !3411
  call void @llvm.dbg.value(metadata i32 undef, metadata !3355, metadata !DIExpression()) #26, !dbg !3411
  call void @llvm.dbg.value(metadata i32 0, metadata !3349, metadata !DIExpression()) #26, !dbg !3411
  call void @llvm.dbg.value(metadata i32 1, metadata !3356, metadata !DIExpression()) #26, !dbg !3411
  call void @llvm.dbg.value(metadata i64* undef, metadata !3360, metadata !DIExpression()) #26, !dbg !3413
  call void @llvm.dbg.value(metadata i32 undef, metadata !3365, metadata !DIExpression()) #26, !dbg !3413
  %231 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #26, !dbg !3415
  %232 = extractvalue { i64, i1 } %231, 1, !dbg !3415
  %233 = mul i64 %49, %73, !dbg !3416
  %234 = select i1 %232, i64 -1, i64 %233, !dbg !3416
  call void @llvm.dbg.value(metadata i1 %232, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3411
  call void @llvm.dbg.value(metadata i32 0, metadata !3356, metadata !DIExpression()) #26, !dbg !3411
  %235 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %234) #26, !dbg !3415
  %236 = extractvalue { i64, i1 } %235, 1, !dbg !3415
  %237 = mul i64 %234, %73, !dbg !3416
  %238 = select i1 %236, i64 -1, i64 %237, !dbg !3416
  %239 = or i1 %232, %236, !dbg !3417
  call void @llvm.dbg.value(metadata i1 %239, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3411
  call void @llvm.dbg.value(metadata i32 0, metadata !3356, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3411
  br label %272, !dbg !3372

240:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3354, metadata !DIExpression()) #26, !dbg !3418
  call void @llvm.dbg.value(metadata i32 undef, metadata !3355, metadata !DIExpression()) #26, !dbg !3418
  call void @llvm.dbg.value(metadata i32 0, metadata !3349, metadata !DIExpression()) #26, !dbg !3418
  call void @llvm.dbg.value(metadata i32 3, metadata !3356, metadata !DIExpression()) #26, !dbg !3418
  call void @llvm.dbg.value(metadata i64* undef, metadata !3360, metadata !DIExpression()) #26, !dbg !3420
  call void @llvm.dbg.value(metadata i32 undef, metadata !3365, metadata !DIExpression()) #26, !dbg !3420
  %241 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #26, !dbg !3422
  %242 = extractvalue { i64, i1 } %241, 1, !dbg !3422
  %243 = mul i64 %49, %73, !dbg !3423
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !3423
  call void @llvm.dbg.value(metadata i1 %242, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3418
  call void @llvm.dbg.value(metadata i32 2, metadata !3356, metadata !DIExpression()) #26, !dbg !3418
  %245 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %244) #26, !dbg !3422
  %246 = extractvalue { i64, i1 } %245, 1, !dbg !3422
  %247 = mul i64 %244, %73, !dbg !3423
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !3423
  %249 = or i1 %242, %246, !dbg !3424
  call void @llvm.dbg.value(metadata i1 %249, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3418
  call void @llvm.dbg.value(metadata i32 1, metadata !3356, metadata !DIExpression()) #26, !dbg !3418
  %250 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %248) #26, !dbg !3422
  %251 = extractvalue { i64, i1 } %250, 1, !dbg !3422
  %252 = mul i64 %248, %73, !dbg !3423
  %253 = select i1 %251, i64 -1, i64 %252, !dbg !3423
  %254 = or i1 %249, %251, !dbg !3424
  call void @llvm.dbg.value(metadata i1 %254, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3418
  call void @llvm.dbg.value(metadata i32 0, metadata !3356, metadata !DIExpression()) #26, !dbg !3418
  %255 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %253) #26, !dbg !3422
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !3422
  %257 = mul i64 %253, %73, !dbg !3423
  %258 = select i1 %256, i64 -1, i64 %257, !dbg !3423
  %259 = or i1 %254, %256, !dbg !3424
  call void @llvm.dbg.value(metadata i1 %259, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3418
  call void @llvm.dbg.value(metadata i32 0, metadata !3356, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3418
  br label %272, !dbg !3372

260:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3360, metadata !DIExpression()) #26, !dbg !3425
  call void @llvm.dbg.value(metadata i32 2, metadata !3365, metadata !DIExpression()) #26, !dbg !3425
  %261 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 2) #26, !dbg !3427
  %262 = extractvalue { i64, i1 } %261, 1, !dbg !3427
  %263 = shl i64 %49, 1, !dbg !3428
  %264 = select i1 %262, i64 -1, i64 %263, !dbg !3428
  call void @llvm.dbg.value(metadata i1 %262, metadata !3283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3327
  br label %272, !dbg !3429

265:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, metadata !3273, metadata !DIExpression()), !dbg !3284
  store i64 %49, i64* %3, align 8, !dbg !3430, !tbaa !2244
  %266 = or i32 %48, 2, !dbg !3431
  br label %285, !dbg !3432

267:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3354, metadata !DIExpression()) #26, !dbg !3433
  call void @llvm.dbg.value(metadata i32 undef, metadata !3355, metadata !DIExpression()) #26, !dbg !3433
  call void @llvm.dbg.value(metadata i32 0, metadata !3349, metadata !DIExpression()) #26, !dbg !3433
  call void @llvm.dbg.value(metadata i32 undef, metadata !3356, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3433
  call void @llvm.dbg.value(metadata i64* undef, metadata !3360, metadata !DIExpression()) #26, !dbg !3435
  call void @llvm.dbg.value(metadata i32 undef, metadata !3365, metadata !DIExpression()) #26, !dbg !3435
  %268 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #26, !dbg !3437
  %269 = extractvalue { i64, i1 } %268, 1, !dbg !3437
  call void @llvm.dbg.value(metadata i32 undef, metadata !3356, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3433
  call void @llvm.dbg.value(metadata i1 %269, metadata !3349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3433
  %270 = mul i64 %49, %73, !dbg !3438
  %271 = select i1 %269, i64 -1, i64 %270, !dbg !3438
  br label %272, !dbg !3372

272:                                              ; preds = %75, %110, %240, %150, %230, %267, %215, %175, %205, %210, %260, %72
  %273 = phi i64 [ %264, %260 ], [ %49, %72 ], [ %214, %210 ], [ %209, %205 ], [ %203, %175 ], [ %228, %215 ], [ %271, %267 ], [ %238, %230 ], [ %173, %150 ], [ %258, %240 ], [ %148, %110 ], [ %108, %75 ], !dbg !3284
  %274 = phi i1 [ %262, %260 ], [ false, %72 ], [ %212, %210 ], [ %207, %205 ], [ %204, %175 ], [ %229, %215 ], [ %269, %267 ], [ %239, %230 ], [ %174, %150 ], [ %259, %240 ], [ %149, %110 ], [ %109, %75 ]
  %275 = zext i1 %274 to i32, !dbg !3439
  call void @llvm.dbg.value(metadata i32 %275, metadata !3283, metadata !DIExpression()), !dbg !3327
  %276 = or i32 %48, %275, !dbg !3372
  call void @llvm.dbg.value(metadata i32 %276, metadata !3274, metadata !DIExpression()), !dbg !3284
  %277 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !3440
  store i8* %277, i8** %25, align 8, !dbg !3440, !tbaa !836
  %278 = load i8, i8* %277, align 1, !dbg !3441, !tbaa !1117
  %279 = icmp eq i8 %278, 0, !dbg !3441
  %280 = or i32 %276, 2
  %281 = select i1 %279, i32 %276, i32 %280, !dbg !3443
  call void @llvm.dbg.value(metadata i32 %281, metadata !3274, metadata !DIExpression()), !dbg !3284
  br label %282

282:                                              ; preds = %272, %47
  %283 = phi i64 [ %49, %47 ], [ %273, %272 ], !dbg !3444
  %284 = phi i32 [ %48, %47 ], [ %281, %272 ], !dbg !3445
  call void @llvm.dbg.value(metadata i32 %284, metadata !3274, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i64 %283, metadata !3273, metadata !DIExpression()), !dbg !3284
  store i64 %283, i64* %3, align 8, !dbg !3446, !tbaa !2244
  br label %285, !dbg !3447

285:                                              ; preds = %56, %265, %40, %31, %33, %36, %24, %282, %46
  %286 = phi i32 [ %284, %282 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %266, %265 ], !dbg !3284
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #26, !dbg !3448
  ret i32 %286, !dbg !3448
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !3449 i64 @strtoumax(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #25 !dbg !3453 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3455, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i64 %1, metadata !3456, metadata !DIExpression()), !dbg !3461
  %3 = icmp eq i64 %0, 0, !dbg !3462
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !3463
  br i1 %5, label %11, label %6, !dbg !3463

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3458, metadata !DIExpression()), !dbg !3464
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3465
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3465
  br i1 %8, label %9, label %11, !dbg !3467

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #30, !dbg !3468
  store i32 12, i32* %10, align 4, !dbg !3470, !tbaa !997
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3455, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i64 %12, metadata !3456, metadata !DIExpression()), !dbg !3461
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #26, !dbg !3471
  call void @llvm.dbg.value(metadata i8* %14, metadata !3457, metadata !DIExpression()), !dbg !3461
  br label %15, !dbg !3472

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3461
  ret i8* %16, !dbg !3473
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #24

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3474 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3490, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i8* %1, metadata !3491, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i64 %2, metadata !3492, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3493, metadata !DIExpression()), !dbg !3499
  %6 = bitcast i32* %5 to i8*, !dbg !3500
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #26, !dbg !3500
  %7 = icmp eq i32* %0, null, !dbg !3501
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3503
  call void @llvm.dbg.value(metadata i32* %8, metadata !3490, metadata !DIExpression()), !dbg !3499
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #26, !dbg !3504
  call void @llvm.dbg.value(metadata i64 %9, metadata !3494, metadata !DIExpression()), !dbg !3499
  %10 = icmp ugt i64 %9, -3, !dbg !3505
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !3506
  br i1 %12, label %13, label %18, !dbg !3506

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #26, !dbg !3507
  br i1 %14, label %18, label %15, !dbg !3508

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3509, !tbaa !1117
  call void @llvm.dbg.value(metadata i8 %16, metadata !3496, metadata !DIExpression()), !dbg !3510
  %17 = zext i8 %16 to i32, !dbg !3511
  store i32 %17, i32* %8, align 4, !dbg !3512, !tbaa !997
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3499
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #26, !dbg !3513
  ret i64 %19, !dbg !3513
}

; Function Attrs: nounwind
declare !dbg !3514 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3518 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3556, metadata !DIExpression()), !dbg !3561
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #26, !dbg !3562
  call void @llvm.dbg.value(metadata i1 undef, metadata !3557, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3561
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3563, metadata !DIExpression()), !dbg !3567
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3569
  %4 = load i32, i32* %3, align 8, !dbg !3569, !tbaa !3570
  %5 = and i32 %4, 32, !dbg !3572
  %6 = icmp eq i32 %5, 0, !dbg !3572
  call void @llvm.dbg.value(metadata i1 %6, metadata !3559, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3561
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #26, !dbg !3573
  %8 = icmp eq i32 %7, 0, !dbg !3574
  call void @llvm.dbg.value(metadata i1 %8, metadata !3560, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3561
  br i1 %6, label %9, label %19, !dbg !3575

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3577
  call void @llvm.dbg.value(metadata i1 %10, metadata !3557, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3561
  %11 = or i1 %10, %8, !dbg !3578
  %12 = xor i1 %8, true, !dbg !3578
  %13 = sext i1 %12 to i32, !dbg !3578
  br i1 %11, label %22, label %14, !dbg !3578

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #30, !dbg !3579
  %16 = load i32, i32* %15, align 4, !dbg !3579, !tbaa !997
  %17 = icmp ne i32 %16, 9, !dbg !3580
  %18 = sext i1 %17 to i32, !dbg !3581
  br label %22, !dbg !3581

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3582

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #30, !dbg !3584
  store i32 0, i32* %21, align 4, !dbg !3586, !tbaa !997
  br label %22, !dbg !3584

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3561
  ret i32 %23, !dbg !3587
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3588 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3590, metadata !DIExpression()), !dbg !3595
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3596
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #26, !dbg !3596
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3591, metadata !DIExpression()), !dbg !3597
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #26, !dbg !3598
  %5 = icmp eq i32 %4, 0, !dbg !3598
  br i1 %5, label %6, label %13, !dbg !3600

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3601
  %8 = load i16, i16* %7, align 16, !dbg !3601
  %9 = icmp eq i16 %8, 67, !dbg !3601
  br i1 %9, label %13, label %10, !dbg !3602

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.126, i64 0, i64 0), i64 6), !dbg !3603
  %12 = icmp ne i32 %11, 0, !dbg !3604
  br label %13, !dbg !3602

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3595
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #26, !dbg !3605
  ret i1 %14, !dbg !3605
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3606 {
  %1 = tail call i8* @nl_langinfo(i32 14) #26, !dbg !3611
  call void @llvm.dbg.value(metadata i8* %1, metadata !3610, metadata !DIExpression()), !dbg !3612
  %2 = icmp eq i8* %1, null, !dbg !3613
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.129, i64 0, i64 0), i8* %1, !dbg !3615
  call void @llvm.dbg.value(metadata i8* %3, metadata !3610, metadata !DIExpression()), !dbg !3612
  %4 = load i8, i8* %3, align 1, !dbg !3616, !tbaa !1117
  %5 = icmp eq i8 %4, 0, !dbg !3620
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.130, i64 0, i64 0), i8* %3, !dbg !3621
  call void @llvm.dbg.value(metadata i8* %6, metadata !3610, metadata !DIExpression()), !dbg !3612
  ret i8* %6, !dbg !3622
}

; Function Attrs: nounwind
declare !dbg !3623 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3626 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3630, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata i8* %1, metadata !3631, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata i64 %2, metadata !3632, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata i32 %0, metadata !3634, metadata !DIExpression()) #26, !dbg !3643
  call void @llvm.dbg.value(metadata i8* %1, metadata !3637, metadata !DIExpression()) #26, !dbg !3643
  call void @llvm.dbg.value(metadata i64 %2, metadata !3638, metadata !DIExpression()) #26, !dbg !3643
  call void @llvm.dbg.value(metadata i32 %0, metadata !3645, metadata !DIExpression()) #26, !dbg !3651
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #26, !dbg !3653
  call void @llvm.dbg.value(metadata i8* %4, metadata !3650, metadata !DIExpression()) #26, !dbg !3651
  call void @llvm.dbg.value(metadata i8* %4, metadata !3639, metadata !DIExpression()) #26, !dbg !3643
  %5 = icmp eq i8* %4, null, !dbg !3654
  br i1 %5, label %6, label %9, !dbg !3655

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3656
  br i1 %7, label %19, label %8, !dbg !3659

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3660, !tbaa !1117
  br label %19, !dbg !3661

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #27, !dbg !3662
  call void @llvm.dbg.value(metadata i64 %10, metadata !3640, metadata !DIExpression()) #26, !dbg !3663
  %11 = icmp ult i64 %10, %2, !dbg !3664
  br i1 %11, label %12, label %14, !dbg !3666

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3667
  call void @llvm.dbg.value(metadata i8* %1, metadata !3669, metadata !DIExpression()) #26, !dbg !3674
  call void @llvm.dbg.value(metadata i8* %4, metadata !3672, metadata !DIExpression()) #26, !dbg !3674
  call void @llvm.dbg.value(metadata i64 %13, metadata !3673, metadata !DIExpression()) #26, !dbg !3674
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #26, !dbg !3676
  br label %19, !dbg !3677

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3678
  br i1 %15, label %19, label %16, !dbg !3681

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3682
  call void @llvm.dbg.value(metadata i8* %1, metadata !3669, metadata !DIExpression()) #26, !dbg !3684
  call void @llvm.dbg.value(metadata i8* %4, metadata !3672, metadata !DIExpression()) #26, !dbg !3684
  call void @llvm.dbg.value(metadata i64 %17, metadata !3673, metadata !DIExpression()) #26, !dbg !3684
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #26, !dbg !3686
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3687
  store i8 0, i8* %18, align 1, !dbg !3688, !tbaa !1117
  br label %19, !dbg !3689

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3690
  ret i32 %20, !dbg !3691
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3692 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3694, metadata !DIExpression()), !dbg !3695
  call void @llvm.dbg.value(metadata i32 %0, metadata !3645, metadata !DIExpression()) #26, !dbg !3696
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #26, !dbg !3698
  call void @llvm.dbg.value(metadata i8* %2, metadata !3650, metadata !DIExpression()) #26, !dbg !3696
  ret i8* %2, !dbg !3699
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3700 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3738, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i32 0, metadata !3739, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i32 0, metadata !3741, metadata !DIExpression()), !dbg !3742
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #26, !dbg !3743
  call void @llvm.dbg.value(metadata i32 %2, metadata !3740, metadata !DIExpression()), !dbg !3742
  %3 = icmp slt i32 %2, 0, !dbg !3744
  br i1 %3, label %4, label %6, !dbg !3746

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3747
  br label %24, !dbg !3748

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #26, !dbg !3749
  %8 = icmp eq i32 %7, 0, !dbg !3749
  br i1 %8, label %13, label %9, !dbg !3751

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #26, !dbg !3752
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #26, !dbg !3753
  %12 = icmp eq i64 %11, -1, !dbg !3754
  br i1 %12, label %16, label %13, !dbg !3755

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #26, !dbg !3756
  %15 = icmp eq i32 %14, 0, !dbg !3756
  br i1 %15, label %16, label %18, !dbg !3757

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3739, metadata !DIExpression()), !dbg !3742
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3758
  call void @llvm.dbg.value(metadata i32 %21, metadata !3741, metadata !DIExpression()), !dbg !3742
  br label %24, !dbg !3759

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #30, !dbg !3760
  %20 = load i32, i32* %19, align 4, !dbg !3760, !tbaa !997
  call void @llvm.dbg.value(metadata i32 %20, metadata !3739, metadata !DIExpression()), !dbg !3742
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3758
  call void @llvm.dbg.value(metadata i32 %21, metadata !3741, metadata !DIExpression()), !dbg !3742
  %22 = icmp eq i32 %20, 0, !dbg !3761
  br i1 %22, label %24, label %23, !dbg !3759

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3763, !tbaa !997
  call void @llvm.dbg.value(metadata i32 -1, metadata !3741, metadata !DIExpression()), !dbg !3742
  br label %24, !dbg !3765

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3742
  ret i32 %25, !dbg !3766
}

; Function Attrs: nofree nounwind
declare !dbg !3767 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3770 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3771 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3774 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3812, metadata !DIExpression()), !dbg !3813
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3814
  br i1 %2, label %6, label %3, !dbg !3816

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #26, !dbg !3817
  %5 = icmp eq i32 %4, 0, !dbg !3817
  br i1 %5, label %6, label %8, !dbg !3818

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3819
  br label %17, !dbg !3820

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3821, metadata !DIExpression()) #26, !dbg !3826
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3828
  %10 = load i32, i32* %9, align 8, !dbg !3828, !tbaa !3570
  %11 = and i32 %10, 256, !dbg !3830
  %12 = icmp eq i32 %11, 0, !dbg !3830
  br i1 %12, label %15, label %13, !dbg !3831

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #26, !dbg !3832
  br label %15, !dbg !3832

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3833
  br label %17, !dbg !3834

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3813
  ret i32 %18, !dbg !3835
}

; Function Attrs: nofree nounwind
declare !dbg !3836 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3839 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3878, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata i64 %1, metadata !3879, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata i32 %2, metadata !3880, metadata !DIExpression()), !dbg !3884
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3885
  %5 = load i8*, i8** %4, align 8, !dbg !3885, !tbaa !3886
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3887
  %7 = load i8*, i8** %6, align 8, !dbg !3887, !tbaa !3888
  %8 = icmp eq i8* %5, %7, !dbg !3889
  br i1 %8, label %9, label %28, !dbg !3890

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3891
  %11 = load i8*, i8** %10, align 8, !dbg !3891, !tbaa !3892
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3893
  %13 = load i8*, i8** %12, align 8, !dbg !3893, !tbaa !3894
  %14 = icmp eq i8* %11, %13, !dbg !3895
  br i1 %14, label %15, label %28, !dbg !3896

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3897
  %17 = load i8*, i8** %16, align 8, !dbg !3897, !tbaa !3898
  %18 = icmp eq i8* %17, null, !dbg !3899
  br i1 %18, label %19, label %28, !dbg !3900

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #26, !dbg !3901
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #26, !dbg !3902
  call void @llvm.dbg.value(metadata i64 %21, metadata !3881, metadata !DIExpression()), !dbg !3903
  %22 = icmp eq i64 %21, -1, !dbg !3904
  br i1 %22, label %30, label %23, !dbg !3906

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3907
  %25 = load i32, i32* %24, align 8, !dbg !3908, !tbaa !3570
  %26 = and i32 %25, -17, !dbg !3908
  store i32 %26, i32* %24, align 8, !dbg !3908, !tbaa !3570
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3909
  store i64 %21, i64* %27, align 8, !dbg !3910, !tbaa !3911
  br label %30, !dbg !3912

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3913
  br label %30, !dbg !3914

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3884
  ret i32 %31, !dbg !3915
}

; Function Attrs: nofree nounwind
declare !dbg !3916 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { noreturn nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nofree nounwind readonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nofree nounwind }
attributes #15 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { argmemonly nofree nounwind readonly willreturn }
attributes #18 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #21 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #22 = { nofree nosync nounwind willreturn }
attributes #23 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #24 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #25 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #26 = { nounwind }
attributes #27 = { nounwind readonly willreturn }
attributes #28 = { noreturn nounwind }
attributes #29 = { noreturn }
attributes #30 = { nounwind readnone willreturn }
attributes #31 = { cold }

!llvm.dbg.cu = !{!2, !34, !40, !48, !151, !54, !60, !373, !145, !379, !396, !398, !409, !413, !415, !418, !420, !422, !811, !813, !815, !817}
!llvm.ident = !{!819, !819, !819, !819, !819, !819, !819, !819, !819, !819, !819, !819, !819, !819, !819, !819, !819, !819, !819, !819, !819, !819}
!llvm.module.flags = !{!820, !821, !822, !823, !824}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 41, type: !17, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !12, globals: !16, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/nproc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nproc_query", file: !6, line: 32, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lib/nproc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "NPROC_ALL", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "NPROC_CURRENT", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "NPROC_CURRENT_OVERRIDABLE", value: 2, isUnsigned: true)
!12 = !{!13, !15}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !{!0}
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 1280, elements: !30)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !20, line: 50, size: 256, elements: !21)
!20 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!21 = !{!22, !25, !27, !29}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !19, file: !20, line: 52, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !19, file: !20, line: 55, baseType: !26, size: 32, offset: 64)
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !19, file: !20, line: 56, baseType: !28, size: 64, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !19, file: !20, line: 57, baseType: !26, size: 32, offset: 192)
!30 = !{!31}
!31 = !DISubrange(count: 5)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "Version", scope: !34, file: !35, line: 2, type: !23, isLocal: false, isDefinition: true)
!34 = distinct !DICompileUnit(language: DW_LANG_C99, file: !35, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, globals: !37, splitDebugInlining: false, nameTableKind: None)
!35 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!36 = !{}
!37 = !{!32}
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "file_name", scope: !40, file: !41, line: 46, type: !23, isLocal: true, isDefinition: true)
!40 = distinct !DICompileUnit(language: DW_LANG_C99, file: !41, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, globals: !42, splitDebugInlining: false, nameTableKind: None)
!41 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!42 = !{!38, !43}
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !40, file: !41, line: 56, type: !45, isLocal: true, isDefinition: true)
!45 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "exit_failure", scope: !48, file: !49, line: 24, type: !51, isLocal: false, isDefinition: true)
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, globals: !50, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!50 = !{!46}
!51 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !26)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "program_name", scope: !54, file: !55, line: 33, type: !23, isLocal: false, isDefinition: true)
!54 = distinct !DICompileUnit(language: DW_LANG_C99, file: !55, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, retainedTypes: !56, globals: !57, splitDebugInlining: false, nameTableKind: None)
!55 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!56 = !{!15, !13}
!57 = !{!52}
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !60, file: !61, line: 85, type: !139, isLocal: false, isDefinition: true)
!60 = distinct !DICompileUnit(language: DW_LANG_C99, file: !61, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !62, retainedTypes: !97, globals: !102, splitDebugInlining: false, nameTableKind: None)
!61 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!62 = !{!63, !77, !82}
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !64, line: 32, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!65 = !{!66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76}
!66 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!67 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!68 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!69 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!70 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!71 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!72 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!73 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!74 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!75 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!76 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !64, line: 242, baseType: !7, size: 32, elements: !78)
!78 = !{!79, !80, !81}
!79 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!80 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!81 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !83, line: 46, baseType: !7, size: 32, elements: !84)
!83 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!84 = !{!85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96}
!85 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!86 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!87 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!88 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!89 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!90 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!91 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!92 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!93 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!94 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!95 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!96 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!97 = !{!26, !98, !99, !13}
!98 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !100, line: 46, baseType: !101)
!100 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!101 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!102 = !{!58, !103, !109, !121, !123, !128, !135, !137}
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !60, file: !61, line: 101, type: !105, isLocal: false, isDefinition: true)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 320, elements: !107)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!107 = !{!108}
!108 = !DISubrange(count: 10)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !60, file: !61, line: 1052, type: !111, isLocal: false, isDefinition: true)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !61, line: 65, size: 448, elements: !112)
!112 = !{!113, !114, !115, !119, !120}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !111, file: !61, line: 68, baseType: !63, size: 32)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !111, file: !61, line: 71, baseType: !26, size: 32, offset: 32)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !111, file: !61, line: 75, baseType: !116, size: 256, offset: 64)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 8)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !111, file: !61, line: 78, baseType: !23, size: 64, offset: 320)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !111, file: !61, line: 81, baseType: !23, size: 64, offset: 384)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !60, file: !61, line: 116, type: !111, isLocal: true, isDefinition: true)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "slot0", scope: !60, file: !61, line: 842, type: !125, isLocal: true, isDefinition: true)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2048, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 256)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "slotvec", scope: !60, file: !61, line: 845, type: !130, isLocal: true, isDefinition: true)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !61, line: 834, size: 128, elements: !132)
!132 = !{!133, !134}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !131, file: !61, line: 836, baseType: !99, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !131, file: !61, line: 837, baseType: !13, size: 64, offset: 64)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "nslots", scope: !60, file: !61, line: 843, type: !26, isLocal: true, isDefinition: true)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(name: "slotvec0", scope: !60, file: !61, line: 844, type: !131, isLocal: true, isDefinition: true)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 704, elements: !141)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!141 = !{!142}
!142 = !DISubrange(count: 11)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !145, file: !146, line: 26, type: !148, isLocal: false, isDefinition: true)
!145 = distinct !DICompileUnit(language: DW_LANG_C99, file: !146, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, globals: !147, splitDebugInlining: false, nameTableKind: None)
!146 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!147 = !{!143}
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 376, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 47)
!151 = distinct !DICompileUnit(language: DW_LANG_C99, file: !152, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !153, retainedTypes: !372, splitDebugInlining: false, nameTableKind: None)
!152 = !DIFile(filename: "lib/nproc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!153 = !{!5, !154}
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !155, line: 71, baseType: !7, size: 32, elements: !156)
!155 = !DIFile(filename: "/usr/include/bits/confname.h", directory: "")
!156 = !{!157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371}
!157 = !DIEnumerator(name: "_SC_ARG_MAX", value: 0, isUnsigned: true)
!158 = !DIEnumerator(name: "_SC_CHILD_MAX", value: 1, isUnsigned: true)
!159 = !DIEnumerator(name: "_SC_CLK_TCK", value: 2, isUnsigned: true)
!160 = !DIEnumerator(name: "_SC_NGROUPS_MAX", value: 3, isUnsigned: true)
!161 = !DIEnumerator(name: "_SC_OPEN_MAX", value: 4, isUnsigned: true)
!162 = !DIEnumerator(name: "_SC_STREAM_MAX", value: 5, isUnsigned: true)
!163 = !DIEnumerator(name: "_SC_TZNAME_MAX", value: 6, isUnsigned: true)
!164 = !DIEnumerator(name: "_SC_JOB_CONTROL", value: 7, isUnsigned: true)
!165 = !DIEnumerator(name: "_SC_SAVED_IDS", value: 8, isUnsigned: true)
!166 = !DIEnumerator(name: "_SC_REALTIME_SIGNALS", value: 9, isUnsigned: true)
!167 = !DIEnumerator(name: "_SC_PRIORITY_SCHEDULING", value: 10, isUnsigned: true)
!168 = !DIEnumerator(name: "_SC_TIMERS", value: 11, isUnsigned: true)
!169 = !DIEnumerator(name: "_SC_ASYNCHRONOUS_IO", value: 12, isUnsigned: true)
!170 = !DIEnumerator(name: "_SC_PRIORITIZED_IO", value: 13, isUnsigned: true)
!171 = !DIEnumerator(name: "_SC_SYNCHRONIZED_IO", value: 14, isUnsigned: true)
!172 = !DIEnumerator(name: "_SC_FSYNC", value: 15, isUnsigned: true)
!173 = !DIEnumerator(name: "_SC_MAPPED_FILES", value: 16, isUnsigned: true)
!174 = !DIEnumerator(name: "_SC_MEMLOCK", value: 17, isUnsigned: true)
!175 = !DIEnumerator(name: "_SC_MEMLOCK_RANGE", value: 18, isUnsigned: true)
!176 = !DIEnumerator(name: "_SC_MEMORY_PROTECTION", value: 19, isUnsigned: true)
!177 = !DIEnumerator(name: "_SC_MESSAGE_PASSING", value: 20, isUnsigned: true)
!178 = !DIEnumerator(name: "_SC_SEMAPHORES", value: 21, isUnsigned: true)
!179 = !DIEnumerator(name: "_SC_SHARED_MEMORY_OBJECTS", value: 22, isUnsigned: true)
!180 = !DIEnumerator(name: "_SC_AIO_LISTIO_MAX", value: 23, isUnsigned: true)
!181 = !DIEnumerator(name: "_SC_AIO_MAX", value: 24, isUnsigned: true)
!182 = !DIEnumerator(name: "_SC_AIO_PRIO_DELTA_MAX", value: 25, isUnsigned: true)
!183 = !DIEnumerator(name: "_SC_DELAYTIMER_MAX", value: 26, isUnsigned: true)
!184 = !DIEnumerator(name: "_SC_MQ_OPEN_MAX", value: 27, isUnsigned: true)
!185 = !DIEnumerator(name: "_SC_MQ_PRIO_MAX", value: 28, isUnsigned: true)
!186 = !DIEnumerator(name: "_SC_VERSION", value: 29, isUnsigned: true)
!187 = !DIEnumerator(name: "_SC_PAGESIZE", value: 30, isUnsigned: true)
!188 = !DIEnumerator(name: "_SC_RTSIG_MAX", value: 31, isUnsigned: true)
!189 = !DIEnumerator(name: "_SC_SEM_NSEMS_MAX", value: 32, isUnsigned: true)
!190 = !DIEnumerator(name: "_SC_SEM_VALUE_MAX", value: 33, isUnsigned: true)
!191 = !DIEnumerator(name: "_SC_SIGQUEUE_MAX", value: 34, isUnsigned: true)
!192 = !DIEnumerator(name: "_SC_TIMER_MAX", value: 35, isUnsigned: true)
!193 = !DIEnumerator(name: "_SC_BC_BASE_MAX", value: 36, isUnsigned: true)
!194 = !DIEnumerator(name: "_SC_BC_DIM_MAX", value: 37, isUnsigned: true)
!195 = !DIEnumerator(name: "_SC_BC_SCALE_MAX", value: 38, isUnsigned: true)
!196 = !DIEnumerator(name: "_SC_BC_STRING_MAX", value: 39, isUnsigned: true)
!197 = !DIEnumerator(name: "_SC_COLL_WEIGHTS_MAX", value: 40, isUnsigned: true)
!198 = !DIEnumerator(name: "_SC_EQUIV_CLASS_MAX", value: 41, isUnsigned: true)
!199 = !DIEnumerator(name: "_SC_EXPR_NEST_MAX", value: 42, isUnsigned: true)
!200 = !DIEnumerator(name: "_SC_LINE_MAX", value: 43, isUnsigned: true)
!201 = !DIEnumerator(name: "_SC_RE_DUP_MAX", value: 44, isUnsigned: true)
!202 = !DIEnumerator(name: "_SC_CHARCLASS_NAME_MAX", value: 45, isUnsigned: true)
!203 = !DIEnumerator(name: "_SC_2_VERSION", value: 46, isUnsigned: true)
!204 = !DIEnumerator(name: "_SC_2_C_BIND", value: 47, isUnsigned: true)
!205 = !DIEnumerator(name: "_SC_2_C_DEV", value: 48, isUnsigned: true)
!206 = !DIEnumerator(name: "_SC_2_FORT_DEV", value: 49, isUnsigned: true)
!207 = !DIEnumerator(name: "_SC_2_FORT_RUN", value: 50, isUnsigned: true)
!208 = !DIEnumerator(name: "_SC_2_SW_DEV", value: 51, isUnsigned: true)
!209 = !DIEnumerator(name: "_SC_2_LOCALEDEF", value: 52, isUnsigned: true)
!210 = !DIEnumerator(name: "_SC_PII", value: 53, isUnsigned: true)
!211 = !DIEnumerator(name: "_SC_PII_XTI", value: 54, isUnsigned: true)
!212 = !DIEnumerator(name: "_SC_PII_SOCKET", value: 55, isUnsigned: true)
!213 = !DIEnumerator(name: "_SC_PII_INTERNET", value: 56, isUnsigned: true)
!214 = !DIEnumerator(name: "_SC_PII_OSI", value: 57, isUnsigned: true)
!215 = !DIEnumerator(name: "_SC_POLL", value: 58, isUnsigned: true)
!216 = !DIEnumerator(name: "_SC_SELECT", value: 59, isUnsigned: true)
!217 = !DIEnumerator(name: "_SC_UIO_MAXIOV", value: 60, isUnsigned: true)
!218 = !DIEnumerator(name: "_SC_IOV_MAX", value: 60, isUnsigned: true)
!219 = !DIEnumerator(name: "_SC_PII_INTERNET_STREAM", value: 61, isUnsigned: true)
!220 = !DIEnumerator(name: "_SC_PII_INTERNET_DGRAM", value: 62, isUnsigned: true)
!221 = !DIEnumerator(name: "_SC_PII_OSI_COTS", value: 63, isUnsigned: true)
!222 = !DIEnumerator(name: "_SC_PII_OSI_CLTS", value: 64, isUnsigned: true)
!223 = !DIEnumerator(name: "_SC_PII_OSI_M", value: 65, isUnsigned: true)
!224 = !DIEnumerator(name: "_SC_T_IOV_MAX", value: 66, isUnsigned: true)
!225 = !DIEnumerator(name: "_SC_THREADS", value: 67, isUnsigned: true)
!226 = !DIEnumerator(name: "_SC_THREAD_SAFE_FUNCTIONS", value: 68, isUnsigned: true)
!227 = !DIEnumerator(name: "_SC_GETGR_R_SIZE_MAX", value: 69, isUnsigned: true)
!228 = !DIEnumerator(name: "_SC_GETPW_R_SIZE_MAX", value: 70, isUnsigned: true)
!229 = !DIEnumerator(name: "_SC_LOGIN_NAME_MAX", value: 71, isUnsigned: true)
!230 = !DIEnumerator(name: "_SC_TTY_NAME_MAX", value: 72, isUnsigned: true)
!231 = !DIEnumerator(name: "_SC_THREAD_DESTRUCTOR_ITERATIONS", value: 73, isUnsigned: true)
!232 = !DIEnumerator(name: "_SC_THREAD_KEYS_MAX", value: 74, isUnsigned: true)
!233 = !DIEnumerator(name: "_SC_THREAD_STACK_MIN", value: 75, isUnsigned: true)
!234 = !DIEnumerator(name: "_SC_THREAD_THREADS_MAX", value: 76, isUnsigned: true)
!235 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKADDR", value: 77, isUnsigned: true)
!236 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKSIZE", value: 78, isUnsigned: true)
!237 = !DIEnumerator(name: "_SC_THREAD_PRIORITY_SCHEDULING", value: 79, isUnsigned: true)
!238 = !DIEnumerator(name: "_SC_THREAD_PRIO_INHERIT", value: 80, isUnsigned: true)
!239 = !DIEnumerator(name: "_SC_THREAD_PRIO_PROTECT", value: 81, isUnsigned: true)
!240 = !DIEnumerator(name: "_SC_THREAD_PROCESS_SHARED", value: 82, isUnsigned: true)
!241 = !DIEnumerator(name: "_SC_NPROCESSORS_CONF", value: 83, isUnsigned: true)
!242 = !DIEnumerator(name: "_SC_NPROCESSORS_ONLN", value: 84, isUnsigned: true)
!243 = !DIEnumerator(name: "_SC_PHYS_PAGES", value: 85, isUnsigned: true)
!244 = !DIEnumerator(name: "_SC_AVPHYS_PAGES", value: 86, isUnsigned: true)
!245 = !DIEnumerator(name: "_SC_ATEXIT_MAX", value: 87, isUnsigned: true)
!246 = !DIEnumerator(name: "_SC_PASS_MAX", value: 88, isUnsigned: true)
!247 = !DIEnumerator(name: "_SC_XOPEN_VERSION", value: 89, isUnsigned: true)
!248 = !DIEnumerator(name: "_SC_XOPEN_XCU_VERSION", value: 90, isUnsigned: true)
!249 = !DIEnumerator(name: "_SC_XOPEN_UNIX", value: 91, isUnsigned: true)
!250 = !DIEnumerator(name: "_SC_XOPEN_CRYPT", value: 92, isUnsigned: true)
!251 = !DIEnumerator(name: "_SC_XOPEN_ENH_I18N", value: 93, isUnsigned: true)
!252 = !DIEnumerator(name: "_SC_XOPEN_SHM", value: 94, isUnsigned: true)
!253 = !DIEnumerator(name: "_SC_2_CHAR_TERM", value: 95, isUnsigned: true)
!254 = !DIEnumerator(name: "_SC_2_C_VERSION", value: 96, isUnsigned: true)
!255 = !DIEnumerator(name: "_SC_2_UPE", value: 97, isUnsigned: true)
!256 = !DIEnumerator(name: "_SC_XOPEN_XPG2", value: 98, isUnsigned: true)
!257 = !DIEnumerator(name: "_SC_XOPEN_XPG3", value: 99, isUnsigned: true)
!258 = !DIEnumerator(name: "_SC_XOPEN_XPG4", value: 100, isUnsigned: true)
!259 = !DIEnumerator(name: "_SC_CHAR_BIT", value: 101, isUnsigned: true)
!260 = !DIEnumerator(name: "_SC_CHAR_MAX", value: 102, isUnsigned: true)
!261 = !DIEnumerator(name: "_SC_CHAR_MIN", value: 103, isUnsigned: true)
!262 = !DIEnumerator(name: "_SC_INT_MAX", value: 104, isUnsigned: true)
!263 = !DIEnumerator(name: "_SC_INT_MIN", value: 105, isUnsigned: true)
!264 = !DIEnumerator(name: "_SC_LONG_BIT", value: 106, isUnsigned: true)
!265 = !DIEnumerator(name: "_SC_WORD_BIT", value: 107, isUnsigned: true)
!266 = !DIEnumerator(name: "_SC_MB_LEN_MAX", value: 108, isUnsigned: true)
!267 = !DIEnumerator(name: "_SC_NZERO", value: 109, isUnsigned: true)
!268 = !DIEnumerator(name: "_SC_SSIZE_MAX", value: 110, isUnsigned: true)
!269 = !DIEnumerator(name: "_SC_SCHAR_MAX", value: 111, isUnsigned: true)
!270 = !DIEnumerator(name: "_SC_SCHAR_MIN", value: 112, isUnsigned: true)
!271 = !DIEnumerator(name: "_SC_SHRT_MAX", value: 113, isUnsigned: true)
!272 = !DIEnumerator(name: "_SC_SHRT_MIN", value: 114, isUnsigned: true)
!273 = !DIEnumerator(name: "_SC_UCHAR_MAX", value: 115, isUnsigned: true)
!274 = !DIEnumerator(name: "_SC_UINT_MAX", value: 116, isUnsigned: true)
!275 = !DIEnumerator(name: "_SC_ULONG_MAX", value: 117, isUnsigned: true)
!276 = !DIEnumerator(name: "_SC_USHRT_MAX", value: 118, isUnsigned: true)
!277 = !DIEnumerator(name: "_SC_NL_ARGMAX", value: 119, isUnsigned: true)
!278 = !DIEnumerator(name: "_SC_NL_LANGMAX", value: 120, isUnsigned: true)
!279 = !DIEnumerator(name: "_SC_NL_MSGMAX", value: 121, isUnsigned: true)
!280 = !DIEnumerator(name: "_SC_NL_NMAX", value: 122, isUnsigned: true)
!281 = !DIEnumerator(name: "_SC_NL_SETMAX", value: 123, isUnsigned: true)
!282 = !DIEnumerator(name: "_SC_NL_TEXTMAX", value: 124, isUnsigned: true)
!283 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFF32", value: 125, isUnsigned: true)
!284 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFFBIG", value: 126, isUnsigned: true)
!285 = !DIEnumerator(name: "_SC_XBS5_LP64_OFF64", value: 127, isUnsigned: true)
!286 = !DIEnumerator(name: "_SC_XBS5_LPBIG_OFFBIG", value: 128, isUnsigned: true)
!287 = !DIEnumerator(name: "_SC_XOPEN_LEGACY", value: 129, isUnsigned: true)
!288 = !DIEnumerator(name: "_SC_XOPEN_REALTIME", value: 130, isUnsigned: true)
!289 = !DIEnumerator(name: "_SC_XOPEN_REALTIME_THREADS", value: 131, isUnsigned: true)
!290 = !DIEnumerator(name: "_SC_ADVISORY_INFO", value: 132, isUnsigned: true)
!291 = !DIEnumerator(name: "_SC_BARRIERS", value: 133, isUnsigned: true)
!292 = !DIEnumerator(name: "_SC_BASE", value: 134, isUnsigned: true)
!293 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT", value: 135, isUnsigned: true)
!294 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT_R", value: 136, isUnsigned: true)
!295 = !DIEnumerator(name: "_SC_CLOCK_SELECTION", value: 137, isUnsigned: true)
!296 = !DIEnumerator(name: "_SC_CPUTIME", value: 138, isUnsigned: true)
!297 = !DIEnumerator(name: "_SC_THREAD_CPUTIME", value: 139, isUnsigned: true)
!298 = !DIEnumerator(name: "_SC_DEVICE_IO", value: 140, isUnsigned: true)
!299 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC", value: 141, isUnsigned: true)
!300 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC_R", value: 142, isUnsigned: true)
!301 = !DIEnumerator(name: "_SC_FD_MGMT", value: 143, isUnsigned: true)
!302 = !DIEnumerator(name: "_SC_FIFO", value: 144, isUnsigned: true)
!303 = !DIEnumerator(name: "_SC_PIPE", value: 145, isUnsigned: true)
!304 = !DIEnumerator(name: "_SC_FILE_ATTRIBUTES", value: 146, isUnsigned: true)
!305 = !DIEnumerator(name: "_SC_FILE_LOCKING", value: 147, isUnsigned: true)
!306 = !DIEnumerator(name: "_SC_FILE_SYSTEM", value: 148, isUnsigned: true)
!307 = !DIEnumerator(name: "_SC_MONOTONIC_CLOCK", value: 149, isUnsigned: true)
!308 = !DIEnumerator(name: "_SC_MULTI_PROCESS", value: 150, isUnsigned: true)
!309 = !DIEnumerator(name: "_SC_SINGLE_PROCESS", value: 151, isUnsigned: true)
!310 = !DIEnumerator(name: "_SC_NETWORKING", value: 152, isUnsigned: true)
!311 = !DIEnumerator(name: "_SC_READER_WRITER_LOCKS", value: 153, isUnsigned: true)
!312 = !DIEnumerator(name: "_SC_SPIN_LOCKS", value: 154, isUnsigned: true)
!313 = !DIEnumerator(name: "_SC_REGEXP", value: 155, isUnsigned: true)
!314 = !DIEnumerator(name: "_SC_REGEX_VERSION", value: 156, isUnsigned: true)
!315 = !DIEnumerator(name: "_SC_SHELL", value: 157, isUnsigned: true)
!316 = !DIEnumerator(name: "_SC_SIGNALS", value: 158, isUnsigned: true)
!317 = !DIEnumerator(name: "_SC_SPAWN", value: 159, isUnsigned: true)
!318 = !DIEnumerator(name: "_SC_SPORADIC_SERVER", value: 160, isUnsigned: true)
!319 = !DIEnumerator(name: "_SC_THREAD_SPORADIC_SERVER", value: 161, isUnsigned: true)
!320 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE", value: 162, isUnsigned: true)
!321 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE_R", value: 163, isUnsigned: true)
!322 = !DIEnumerator(name: "_SC_TIMEOUTS", value: 164, isUnsigned: true)
!323 = !DIEnumerator(name: "_SC_TYPED_MEMORY_OBJECTS", value: 165, isUnsigned: true)
!324 = !DIEnumerator(name: "_SC_USER_GROUPS", value: 166, isUnsigned: true)
!325 = !DIEnumerator(name: "_SC_USER_GROUPS_R", value: 167, isUnsigned: true)
!326 = !DIEnumerator(name: "_SC_2_PBS", value: 168, isUnsigned: true)
!327 = !DIEnumerator(name: "_SC_2_PBS_ACCOUNTING", value: 169, isUnsigned: true)
!328 = !DIEnumerator(name: "_SC_2_PBS_LOCATE", value: 170, isUnsigned: true)
!329 = !DIEnumerator(name: "_SC_2_PBS_MESSAGE", value: 171, isUnsigned: true)
!330 = !DIEnumerator(name: "_SC_2_PBS_TRACK", value: 172, isUnsigned: true)
!331 = !DIEnumerator(name: "_SC_SYMLOOP_MAX", value: 173, isUnsigned: true)
!332 = !DIEnumerator(name: "_SC_STREAMS", value: 174, isUnsigned: true)
!333 = !DIEnumerator(name: "_SC_2_PBS_CHECKPOINT", value: 175, isUnsigned: true)
!334 = !DIEnumerator(name: "_SC_V6_ILP32_OFF32", value: 176, isUnsigned: true)
!335 = !DIEnumerator(name: "_SC_V6_ILP32_OFFBIG", value: 177, isUnsigned: true)
!336 = !DIEnumerator(name: "_SC_V6_LP64_OFF64", value: 178, isUnsigned: true)
!337 = !DIEnumerator(name: "_SC_V6_LPBIG_OFFBIG", value: 179, isUnsigned: true)
!338 = !DIEnumerator(name: "_SC_HOST_NAME_MAX", value: 180, isUnsigned: true)
!339 = !DIEnumerator(name: "_SC_TRACE", value: 181, isUnsigned: true)
!340 = !DIEnumerator(name: "_SC_TRACE_EVENT_FILTER", value: 182, isUnsigned: true)
!341 = !DIEnumerator(name: "_SC_TRACE_INHERIT", value: 183, isUnsigned: true)
!342 = !DIEnumerator(name: "_SC_TRACE_LOG", value: 184, isUnsigned: true)
!343 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_SIZE", value: 185, isUnsigned: true)
!344 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_ASSOC", value: 186, isUnsigned: true)
!345 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_LINESIZE", value: 187, isUnsigned: true)
!346 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_SIZE", value: 188, isUnsigned: true)
!347 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_ASSOC", value: 189, isUnsigned: true)
!348 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_LINESIZE", value: 190, isUnsigned: true)
!349 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_SIZE", value: 191, isUnsigned: true)
!350 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_ASSOC", value: 192, isUnsigned: true)
!351 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_LINESIZE", value: 193, isUnsigned: true)
!352 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_SIZE", value: 194, isUnsigned: true)
!353 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_ASSOC", value: 195, isUnsigned: true)
!354 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_LINESIZE", value: 196, isUnsigned: true)
!355 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_SIZE", value: 197, isUnsigned: true)
!356 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_ASSOC", value: 198, isUnsigned: true)
!357 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_LINESIZE", value: 199, isUnsigned: true)
!358 = !DIEnumerator(name: "_SC_IPV6", value: 235, isUnsigned: true)
!359 = !DIEnumerator(name: "_SC_RAW_SOCKETS", value: 236, isUnsigned: true)
!360 = !DIEnumerator(name: "_SC_V7_ILP32_OFF32", value: 237, isUnsigned: true)
!361 = !DIEnumerator(name: "_SC_V7_ILP32_OFFBIG", value: 238, isUnsigned: true)
!362 = !DIEnumerator(name: "_SC_V7_LP64_OFF64", value: 239, isUnsigned: true)
!363 = !DIEnumerator(name: "_SC_V7_LPBIG_OFFBIG", value: 240, isUnsigned: true)
!364 = !DIEnumerator(name: "_SC_SS_REPL_MAX", value: 241, isUnsigned: true)
!365 = !DIEnumerator(name: "_SC_TRACE_EVENT_NAME_MAX", value: 242, isUnsigned: true)
!366 = !DIEnumerator(name: "_SC_TRACE_NAME_MAX", value: 243, isUnsigned: true)
!367 = !DIEnumerator(name: "_SC_TRACE_SYS_MAX", value: 244, isUnsigned: true)
!368 = !DIEnumerator(name: "_SC_TRACE_USER_EVENT_MAX", value: 245, isUnsigned: true)
!369 = !DIEnumerator(name: "_SC_XOPEN_STREAMS", value: 246, isUnsigned: true)
!370 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_INHERIT", value: 247, isUnsigned: true)
!371 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_PROTECT", value: 248, isUnsigned: true)
!372 = !{!15}
!373 = distinct !DICompileUnit(language: DW_LANG_C99, file: !374, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !375, retainedTypes: !372, splitDebugInlining: false, nameTableKind: None)
!374 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!375 = !{!376}
!376 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !374, line: 40, baseType: !7, size: 32, elements: !377)
!377 = !{!378}
!378 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!379 = distinct !DICompileUnit(language: DW_LANG_C99, file: !380, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !381, retainedTypes: !395, splitDebugInlining: false, nameTableKind: None)
!380 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!381 = !{!382}
!382 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !384, file: !383, line: 186, baseType: !7, size: 32, elements: !393)
!383 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!384 = distinct !DISubprogram(name: "x2nrealloc", scope: !383, file: !383, line: 174, type: !385, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !388)
!385 = !DISubroutineType(types: !386)
!386 = !{!15, !15, !387, !99}
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!388 = !{!389, !390, !391, !392}
!389 = !DILocalVariable(name: "p", arg: 1, scope: !384, file: !383, line: 174, type: !15)
!390 = !DILocalVariable(name: "pn", arg: 2, scope: !384, file: !383, line: 174, type: !387)
!391 = !DILocalVariable(name: "s", arg: 3, scope: !384, file: !383, line: 174, type: !99)
!392 = !DILocalVariable(name: "n", scope: !384, file: !383, line: 176, type: !99)
!393 = !{!394}
!394 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!395 = !{!99, !13, !15}
!396 = distinct !DICompileUnit(language: DW_LANG_C99, file: !397, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, splitDebugInlining: false, nameTableKind: None)
!397 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!398 = distinct !DICompileUnit(language: DW_LANG_C99, file: !399, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !400, splitDebugInlining: false, nameTableKind: None)
!399 = !DIFile(filename: "lib/xdectoumax.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!400 = !{!401}
!401 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !402, line: 25, baseType: !7, size: 32, elements: !403)
!402 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!403 = !{!404, !405, !406, !407, !408}
!404 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!405 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!406 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!407 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!408 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!409 = distinct !DICompileUnit(language: DW_LANG_C99, file: !410, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !411, retainedTypes: !412, splitDebugInlining: false, nameTableKind: None)
!410 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!411 = !{!401, !82}
!412 = !{!26, !98}
!413 = distinct !DICompileUnit(language: DW_LANG_C99, file: !414, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, retainedTypes: !372, splitDebugInlining: false, nameTableKind: None)
!414 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!415 = distinct !DICompileUnit(language: DW_LANG_C99, file: !416, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, retainedTypes: !417, splitDebugInlining: false, nameTableKind: None)
!416 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!417 = !{!99}
!418 = distinct !DICompileUnit(language: DW_LANG_C99, file: !419, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, splitDebugInlining: false, nameTableKind: None)
!419 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!420 = distinct !DICompileUnit(language: DW_LANG_C99, file: !421, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, splitDebugInlining: false, nameTableKind: None)
!421 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!422 = distinct !DICompileUnit(language: DW_LANG_C99, file: !423, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !424, retainedTypes: !372, splitDebugInlining: false, nameTableKind: None)
!423 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!424 = !{!425}
!425 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !426, line: 41, baseType: !7, size: 32, elements: !427)
!426 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!427 = !{!428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810}
!428 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!429 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!430 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!431 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!432 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!433 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!434 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!435 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!436 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!437 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!438 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!439 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!440 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!441 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!442 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!443 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!444 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!445 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!446 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!447 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!448 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!449 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!450 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!451 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!452 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!453 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!454 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!455 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!456 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!457 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!458 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!459 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!460 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!461 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!462 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!463 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!464 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!465 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!466 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!467 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!468 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!469 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!470 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!471 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!472 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!473 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!474 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!475 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!476 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!477 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!536 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!539 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!540 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!541 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!542 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!543 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!544 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!545 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!546 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!547 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!548 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!549 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!550 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!623 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!696 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!697 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!698 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!699 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!700 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!701 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!702 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!703 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!704 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!705 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!706 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!707 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!708 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!709 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!710 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!712 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!713 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!714 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!715 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!716 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!717 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!737 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!743 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!744 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!745 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!746 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!747 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!752 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!753 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!754 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!755 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!779 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!782 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!811 = distinct !DICompileUnit(language: DW_LANG_C99, file: !812, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, retainedTypes: !372, splitDebugInlining: false, nameTableKind: None)
!812 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!813 = distinct !DICompileUnit(language: DW_LANG_C99, file: !814, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, splitDebugInlining: false, nameTableKind: None)
!814 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!815 = distinct !DICompileUnit(language: DW_LANG_C99, file: !816, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, retainedTypes: !372, splitDebugInlining: false, nameTableKind: None)
!816 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!817 = distinct !DICompileUnit(language: DW_LANG_C99, file: !818, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, retainedTypes: !372, splitDebugInlining: false, nameTableKind: None)
!818 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!819 = !{!"clang version 12.0.1"}
!820 = !{i32 7, !"Dwarf Version", i32 4}
!821 = !{i32 2, !"Debug Info Version", i32 3}
!822 = !{i32 1, !"wchar_size", i32 4}
!823 = !{i32 7, !"PIC Level", i32 2}
!824 = !{i32 7, !"PIE Level", i32 2}
!825 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 51, type: !826, scopeLine: 52, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !828)
!826 = !DISubroutineType(types: !827)
!827 = !{null, !26}
!828 = !{!829}
!829 = !DILocalVariable(name: "status", arg: 1, scope: !825, file: !3, line: 51, type: !26)
!830 = !DILocation(line: 0, scope: !825)
!831 = !DILocation(line: 53, column: 14, scope: !832)
!832 = distinct !DILexicalBlock(scope: !825, file: !3, line: 53, column: 7)
!833 = !DILocation(line: 53, column: 7, scope: !825)
!834 = !DILocation(line: 54, column: 5, scope: !835)
!835 = distinct !DILexicalBlock(scope: !832, file: !3, line: 54, column: 5)
!836 = !{!837, !837, i64 0}
!837 = !{!"any pointer", !838, i64 0}
!838 = !{!"omnipotent char", !839, i64 0}
!839 = !{!"Simple C/C++ TBAA"}
!840 = !DILocation(line: 57, column: 7, scope: !841)
!841 = distinct !DILexicalBlock(scope: !832, file: !3, line: 56, column: 5)
!842 = !DILocation(line: 58, column: 7, scope: !841)
!843 = !DILocation(line: 63, column: 7, scope: !841)
!844 = !DILocation(line: 68, column: 7, scope: !841)
!845 = !DILocation(line: 69, column: 7, scope: !841)
!846 = !DILocalVariable(name: "program", arg: 1, scope: !847, file: !848, line: 634, type: !23)
!847 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !848, file: !848, line: 634, type: !849, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !851)
!848 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!849 = !DISubroutineType(types: !850)
!850 = !{null, !23}
!851 = !{!846, !852, !861, !862, !864}
!852 = !DILocalVariable(name: "infomap", scope: !847, file: !848, line: 636, type: !853)
!853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !854, size: 896, elements: !859)
!854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !855)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !847, file: !848, line: 636, size: 128, elements: !856)
!856 = !{!857, !858}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !855, file: !848, line: 636, baseType: !23, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !855, file: !848, line: 636, baseType: !23, size: 64, offset: 64)
!859 = !{!860}
!860 = !DISubrange(count: 7)
!861 = !DILocalVariable(name: "node", scope: !847, file: !848, line: 646, type: !23)
!862 = !DILocalVariable(name: "map_prog", scope: !847, file: !848, line: 647, type: !863)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!864 = !DILocalVariable(name: "lc_messages", scope: !847, file: !848, line: 659, type: !23)
!865 = !DILocation(line: 0, scope: !847, inlinedAt: !866)
!866 = distinct !DILocation(line: 70, column: 7, scope: !841)
!867 = !DILocation(line: 636, column: 3, scope: !847, inlinedAt: !866)
!868 = !DILocation(line: 636, column: 67, scope: !847, inlinedAt: !866)
!869 = !DILocation(line: 647, column: 36, scope: !847, inlinedAt: !866)
!870 = !DILocation(line: 649, column: 3, scope: !847, inlinedAt: !866)
!871 = !DILocation(line: 649, column: 33, scope: !847, inlinedAt: !866)
!872 = !DILocation(line: 650, column: 13, scope: !847, inlinedAt: !866)
!873 = !DILocation(line: 649, column: 20, scope: !847, inlinedAt: !866)
!874 = !{!875, !837, i64 0}
!875 = !{!"infomap", !837, i64 0, !837, i64 8}
!876 = !DILocation(line: 649, column: 10, scope: !847, inlinedAt: !866)
!877 = !DILocation(line: 649, column: 28, scope: !847, inlinedAt: !866)
!878 = distinct !{!878, !870, !872, !879}
!879 = !{!"llvm.loop.mustprogress"}
!880 = !DILocation(line: 652, column: 17, scope: !881, inlinedAt: !866)
!881 = distinct !DILexicalBlock(scope: !847, file: !848, line: 652, column: 7)
!882 = !{!875, !837, i64 8}
!883 = !DILocation(line: 652, column: 7, scope: !881, inlinedAt: !866)
!884 = !DILocation(line: 652, column: 7, scope: !847, inlinedAt: !866)
!885 = !DILocation(line: 655, column: 3, scope: !847, inlinedAt: !866)
!886 = !DILocation(line: 659, column: 29, scope: !847, inlinedAt: !866)
!887 = !DILocation(line: 660, column: 7, scope: !888, inlinedAt: !866)
!888 = distinct !DILexicalBlock(scope: !847, file: !848, line: 660, column: 7)
!889 = !DILocation(line: 660, column: 19, scope: !888, inlinedAt: !866)
!890 = !DILocation(line: 660, column: 22, scope: !888, inlinedAt: !866)
!891 = !DILocation(line: 660, column: 7, scope: !847, inlinedAt: !866)
!892 = !DILocation(line: 666, column: 7, scope: !893, inlinedAt: !866)
!893 = distinct !DILexicalBlock(scope: !888, file: !848, line: 661, column: 5)
!894 = !DILocation(line: 668, column: 5, scope: !893, inlinedAt: !866)
!895 = !DILocation(line: 669, column: 3, scope: !847, inlinedAt: !866)
!896 = !DILocation(line: 671, column: 3, scope: !847, inlinedAt: !866)
!897 = !DILocation(line: 673, column: 1, scope: !847, inlinedAt: !866)
!898 = !DILocation(line: 72, column: 3, scope: !825)
!899 = !DISubprogram(name: "dcgettext", scope: !900, file: !900, line: 51, type: !901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!900 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!901 = !DISubroutineType(types: !902)
!902 = !{!13, !23, !23, !26}
!903 = !DISubprogram(name: "fputs_unlocked", scope: !904, file: !904, line: 667, type: !905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!904 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!905 = !DISubroutineType(types: !906)
!906 = !{!26, !23, !907}
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !909, line: 49, size: 1728, elements: !910)
!909 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!910 = !{!911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !926, !927, !928, !929, !933, !934, !936, !940, !943, !945, !948, !951, !952, !953, !954, !955}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !908, file: !909, line: 51, baseType: !26, size: 32)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !908, file: !909, line: 54, baseType: !13, size: 64, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !908, file: !909, line: 55, baseType: !13, size: 64, offset: 128)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !908, file: !909, line: 56, baseType: !13, size: 64, offset: 192)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !908, file: !909, line: 57, baseType: !13, size: 64, offset: 256)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !908, file: !909, line: 58, baseType: !13, size: 64, offset: 320)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !908, file: !909, line: 59, baseType: !13, size: 64, offset: 384)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !908, file: !909, line: 60, baseType: !13, size: 64, offset: 448)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !908, file: !909, line: 61, baseType: !13, size: 64, offset: 512)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !908, file: !909, line: 64, baseType: !13, size: 64, offset: 576)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !908, file: !909, line: 65, baseType: !13, size: 64, offset: 640)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !908, file: !909, line: 66, baseType: !13, size: 64, offset: 704)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !908, file: !909, line: 68, baseType: !924, size: 64, offset: 768)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !909, line: 36, flags: DIFlagFwdDecl)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !908, file: !909, line: 70, baseType: !907, size: 64, offset: 832)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !908, file: !909, line: 72, baseType: !26, size: 32, offset: 896)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !908, file: !909, line: 73, baseType: !26, size: 32, offset: 928)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !908, file: !909, line: 74, baseType: !930, size: 64, offset: 960)
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !931, line: 152, baseType: !932)
!931 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!932 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !908, file: !909, line: 77, baseType: !98, size: 16, offset: 1024)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !908, file: !909, line: 78, baseType: !935, size: 8, offset: 1040)
!935 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !908, file: !909, line: 79, baseType: !937, size: 8, offset: 1048)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8, elements: !938)
!938 = !{!939}
!939 = !DISubrange(count: 1)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !908, file: !909, line: 81, baseType: !941, size: 64, offset: 1088)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !909, line: 43, baseType: null)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !908, file: !909, line: 89, baseType: !944, size: 64, offset: 1152)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !931, line: 153, baseType: !932)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !908, file: !909, line: 91, baseType: !946, size: 64, offset: 1216)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !909, line: 37, flags: DIFlagFwdDecl)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !908, file: !909, line: 92, baseType: !949, size: 64, offset: 1280)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !909, line: 38, flags: DIFlagFwdDecl)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !908, file: !909, line: 93, baseType: !907, size: 64, offset: 1344)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !908, file: !909, line: 94, baseType: !15, size: 64, offset: 1408)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !908, file: !909, line: 95, baseType: !99, size: 64, offset: 1472)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !908, file: !909, line: 96, baseType: !26, size: 32, offset: 1536)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !908, file: !909, line: 98, baseType: !956, size: 160, offset: 1568)
!956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 160, elements: !957)
!957 = !{!958}
!958 = !DISubrange(count: 20)
!959 = !DISubprogram(name: "setlocale", scope: !960, file: !960, line: 122, type: !961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!960 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!961 = !DISubroutineType(types: !962)
!962 = !{!13, !26, !23}
!963 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 76, type: !964, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !967)
!964 = !DISubroutineType(types: !965)
!965 = !{!26, !26, !966}
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!967 = !{!968, !969, !970, !971, !972, !973}
!968 = !DILocalVariable(name: "argc", arg: 1, scope: !963, file: !3, line: 76, type: !26)
!969 = !DILocalVariable(name: "argv", arg: 2, scope: !963, file: !3, line: 76, type: !966)
!970 = !DILocalVariable(name: "nproc", scope: !963, file: !3, line: 78, type: !101)
!971 = !DILocalVariable(name: "ignore", scope: !963, file: !3, line: 78, type: !101)
!972 = !DILocalVariable(name: "mode", scope: !963, file: !3, line: 87, type: !5)
!973 = !DILocalVariable(name: "c", scope: !974, file: !3, line: 91, type: !26)
!974 = distinct !DILexicalBlock(scope: !963, file: !3, line: 90, column: 5)
!975 = !DILocation(line: 0, scope: !963)
!976 = !DILocation(line: 80, column: 21, scope: !963)
!977 = !DILocation(line: 80, column: 3, scope: !963)
!978 = !DILocation(line: 81, column: 3, scope: !963)
!979 = !DILocation(line: 82, column: 3, scope: !963)
!980 = !DILocation(line: 83, column: 3, scope: !963)
!981 = !DILocation(line: 85, column: 3, scope: !963)
!982 = !DILocation(line: 89, column: 3, scope: !963)
!983 = !DILocation(line: 92, column: 11, scope: !974)
!984 = !DILocation(line: 87, column: 20, scope: !963)
!985 = !DILocation(line: 91, column: 15, scope: !974)
!986 = !DILocation(line: 0, scope: !974)
!987 = !DILocation(line: 96, column: 9, scope: !988)
!988 = distinct !DILexicalBlock(scope: !974, file: !3, line: 95, column: 9)
!989 = !DILocation(line: 98, column: 9, scope: !988)
!990 = !DILocation(line: 105, column: 32, scope: !988)
!991 = !DILocation(line: 105, column: 58, scope: !988)
!992 = !DILocation(line: 105, column: 20, scope: !988)
!993 = !DILocation(line: 106, column: 11, scope: !988)
!994 = !DILocation(line: 109, column: 11, scope: !988)
!995 = !DILocation(line: 113, column: 15, scope: !996)
!996 = distinct !DILexicalBlock(scope: !963, file: !3, line: 113, column: 7)
!997 = !{!998, !998, i64 0}
!998 = !{!"int", !838, i64 0}
!999 = !DILocation(line: 113, column: 12, scope: !996)
!1000 = !DILocation(line: 113, column: 7, scope: !963)
!1001 = !DILocation(line: 115, column: 20, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !996, file: !3, line: 114, column: 5)
!1003 = !DILocation(line: 115, column: 55, scope: !1002)
!1004 = !DILocation(line: 115, column: 50, scope: !1002)
!1005 = !DILocation(line: 115, column: 43, scope: !1002)
!1006 = !DILocation(line: 115, column: 7, scope: !1002)
!1007 = !DILocation(line: 116, column: 7, scope: !1002)
!1008 = !DILocation(line: 119, column: 11, scope: !963)
!1009 = !DILocation(line: 121, column: 14, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !963, file: !3, line: 121, column: 7)
!1011 = !DILocation(line: 121, column: 7, scope: !963)
!1012 = !DILocation(line: 126, column: 3, scope: !963)
!1013 = !DILocation(line: 129, column: 1, scope: !963)
!1014 = !DISubprogram(name: "bindtextdomain", scope: !900, file: !900, line: 86, type: !1015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!13, !23, !23}
!1017 = !DISubprogram(name: "textdomain", scope: !900, file: !900, line: 82, type: !1018, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!13, !23}
!1020 = !DISubprogram(name: "atexit", scope: !1021, file: !1021, line: 595, type: !1022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!1021 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!26, !1024}
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{null}
!1027 = !DISubprogram(name: "getopt_long", scope: !20, file: !20, line: 66, type: !1028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!26, !26, !1030, !23, !1032, !28}
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!1033 = !DISubprogram(name: "error", scope: !1034, file: !1034, line: 52, type: !1035, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!1034 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1035 = !DISubroutineType(types: !1036)
!1036 = !{null, !26, !26, !23, null}
!1037 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !41, file: !41, line: 51, type: !849, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !1038)
!1038 = !{!1039}
!1039 = !DILocalVariable(name: "file", arg: 1, scope: !1037, file: !41, line: 51, type: !23)
!1040 = !DILocation(line: 0, scope: !1037)
!1041 = !DILocation(line: 53, column: 13, scope: !1037)
!1042 = !DILocation(line: 54, column: 1, scope: !1037)
!1043 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !41, file: !41, line: 88, type: !1044, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !1046)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{null, !45}
!1046 = !{!1047}
!1047 = !DILocalVariable(name: "ignore", arg: 1, scope: !1043, file: !41, line: 88, type: !45)
!1048 = !DILocation(line: 0, scope: !1043)
!1049 = !DILocation(line: 90, column: 16, scope: !1043)
!1050 = !{!1051, !1051, i64 0}
!1051 = !{!"_Bool", !838, i64 0}
!1052 = !DILocation(line: 91, column: 1, scope: !1043)
!1053 = distinct !DISubprogram(name: "close_stdout", scope: !41, file: !41, line: 117, type: !1025, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !1054)
!1054 = !{!1055}
!1055 = !DILocalVariable(name: "write_error", scope: !1056, file: !41, line: 122, type: !23)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !41, line: 121, column: 5)
!1057 = distinct !DILexicalBlock(scope: !1053, file: !41, line: 119, column: 7)
!1058 = !DILocation(line: 119, column: 21, scope: !1057)
!1059 = !DILocation(line: 119, column: 7, scope: !1057)
!1060 = !DILocation(line: 119, column: 29, scope: !1057)
!1061 = !DILocation(line: 120, column: 7, scope: !1057)
!1062 = !DILocation(line: 120, column: 12, scope: !1057)
!1063 = !{i8 0, i8 2}
!1064 = !DILocation(line: 120, column: 25, scope: !1057)
!1065 = !DILocation(line: 120, column: 28, scope: !1057)
!1066 = !DILocation(line: 120, column: 34, scope: !1057)
!1067 = !DILocation(line: 119, column: 7, scope: !1053)
!1068 = !DILocation(line: 122, column: 33, scope: !1056)
!1069 = !DILocation(line: 0, scope: !1056)
!1070 = !DILocation(line: 123, column: 11, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1056, file: !41, line: 123, column: 11)
!1072 = !DILocation(line: 0, scope: !1071)
!1073 = !DILocation(line: 123, column: 11, scope: !1056)
!1074 = !DILocation(line: 124, column: 36, scope: !1071)
!1075 = !DILocation(line: 124, column: 9, scope: !1071)
!1076 = !DILocation(line: 127, column: 9, scope: !1071)
!1077 = !DILocation(line: 129, column: 14, scope: !1056)
!1078 = !DILocation(line: 129, column: 7, scope: !1056)
!1079 = !DILocation(line: 134, column: 42, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1053, file: !41, line: 134, column: 7)
!1081 = !DILocation(line: 134, column: 28, scope: !1080)
!1082 = !DILocation(line: 134, column: 50, scope: !1080)
!1083 = !DILocation(line: 134, column: 7, scope: !1053)
!1084 = !DILocation(line: 135, column: 12, scope: !1080)
!1085 = !DILocation(line: 135, column: 5, scope: !1080)
!1086 = !DILocation(line: 136, column: 1, scope: !1053)
!1087 = distinct !DISubprogram(name: "num_processors", scope: !152, file: !152, line: 372, type: !1088, scopeLine: 373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !1090)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!101, !5}
!1090 = !{!1091, !1092, !1093, !1096}
!1091 = !DILocalVariable(name: "query", arg: 1, scope: !1087, file: !152, line: 372, type: !5)
!1092 = !DILocalVariable(name: "omp_env_limit", scope: !1087, file: !152, line: 374, type: !101)
!1093 = !DILocalVariable(name: "omp_env_threads", scope: !1094, file: !152, line: 378, type: !101)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !152, line: 377, column: 5)
!1095 = distinct !DILexicalBlock(scope: !1087, file: !152, line: 376, column: 7)
!1096 = !DILocalVariable(name: "nprocs", scope: !1097, file: !152, line: 393, type: !101)
!1097 = distinct !DILexicalBlock(scope: !1087, file: !152, line: 392, column: 3)
!1098 = !DILocation(line: 0, scope: !1087)
!1099 = !DILocation(line: 376, column: 7, scope: !1087)
!1100 = !DILocation(line: 381, column: 44, scope: !1094)
!1101 = !DILocalVariable(name: "threads", arg: 1, scope: !1102, file: !152, line: 337, type: !23)
!1102 = distinct !DISubprogram(name: "parse_omp_threads", scope: !152, file: !152, line: 337, type: !1103, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !1105)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!101, !23}
!1105 = !{!1101, !1106, !1107, !1110}
!1106 = !DILocalVariable(name: "ret", scope: !1102, file: !152, line: 339, type: !101)
!1107 = !DILocalVariable(name: "endptr", scope: !1108, file: !152, line: 352, type: !13)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !152, line: 351, column: 5)
!1109 = distinct !DILexicalBlock(scope: !1102, file: !152, line: 350, column: 7)
!1110 = !DILocalVariable(name: "value", scope: !1108, file: !152, line: 353, type: !101)
!1111 = !DILocation(line: 0, scope: !1102, inlinedAt: !1112)
!1112 = distinct !DILocation(line: 381, column: 25, scope: !1094)
!1113 = !DILocation(line: 341, column: 15, scope: !1114, inlinedAt: !1112)
!1114 = distinct !DILexicalBlock(scope: !1102, file: !152, line: 341, column: 7)
!1115 = !DILocation(line: 341, column: 7, scope: !1102, inlinedAt: !1112)
!1116 = !DILocation(line: 346, column: 10, scope: !1102, inlinedAt: !1112)
!1117 = !{!838, !838, i64 0}
!1118 = !DILocation(line: 346, column: 19, scope: !1102, inlinedAt: !1112)
!1119 = !DILocation(line: 346, column: 27, scope: !1102, inlinedAt: !1112)
!1120 = !DILocalVariable(name: "c", arg: 1, scope: !1121, file: !1122, line: 300, type: !26)
!1121 = distinct !DISubprogram(name: "c_isspace", scope: !1122, file: !1122, line: 300, type: !1123, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !1125)
!1122 = !DIFile(filename: "./lib/c-ctype.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!45, !26}
!1125 = !{!1120}
!1126 = !DILocation(line: 0, scope: !1121, inlinedAt: !1127)
!1127 = distinct !DILocation(line: 346, column: 30, scope: !1102, inlinedAt: !1112)
!1128 = !DILocation(line: 302, column: 3, scope: !1121, inlinedAt: !1127)
!1129 = !DILocation(line: 347, column: 12, scope: !1102, inlinedAt: !1112)
!1130 = distinct !{!1130, !1131, !1129, !879}
!1131 = !DILocation(line: 346, column: 3, scope: !1102, inlinedAt: !1112)
!1132 = !DILocalVariable(name: "c", arg: 1, scope: !1133, file: !1122, line: 233, type: !26)
!1133 = distinct !DISubprogram(name: "c_isdigit", scope: !1122, file: !1122, line: 233, type: !1123, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !1134)
!1134 = !{!1132}
!1135 = !DILocation(line: 0, scope: !1133, inlinedAt: !1136)
!1136 = distinct !DILocation(line: 350, column: 7, scope: !1109, inlinedAt: !1112)
!1137 = !DILocation(line: 235, column: 3, scope: !1133, inlinedAt: !1136)
!1138 = !DILocation(line: 350, column: 7, scope: !1102, inlinedAt: !1112)
!1139 = !DILocation(line: 352, column: 7, scope: !1108, inlinedAt: !1112)
!1140 = !DILocation(line: 0, scope: !1108, inlinedAt: !1112)
!1141 = !DILocation(line: 352, column: 13, scope: !1108, inlinedAt: !1112)
!1142 = !DILocation(line: 353, column: 33, scope: !1108, inlinedAt: !1112)
!1143 = !DILocation(line: 355, column: 11, scope: !1144, inlinedAt: !1112)
!1144 = distinct !DILexicalBlock(scope: !1108, file: !152, line: 355, column: 11)
!1145 = !DILocation(line: 355, column: 18, scope: !1144, inlinedAt: !1112)
!1146 = !DILocation(line: 355, column: 11, scope: !1108, inlinedAt: !1112)
!1147 = !DILocation(line: 357, column: 18, scope: !1148, inlinedAt: !1112)
!1148 = distinct !DILexicalBlock(scope: !1144, file: !152, line: 356, column: 9)
!1149 = !DILocation(line: 357, column: 26, scope: !1148, inlinedAt: !1112)
!1150 = !DILocation(line: 357, column: 34, scope: !1148, inlinedAt: !1112)
!1151 = !DILocation(line: 0, scope: !1121, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 357, column: 37, scope: !1148, inlinedAt: !1112)
!1153 = !DILocation(line: 302, column: 3, scope: !1121, inlinedAt: !1152)
!1154 = !DILocation(line: 358, column: 19, scope: !1148, inlinedAt: !1112)
!1155 = distinct !{!1155, !1156, !1154, !879}
!1156 = !DILocation(line: 357, column: 11, scope: !1148, inlinedAt: !1112)
!1157 = !DILocation(line: 359, column: 15, scope: !1148, inlinedAt: !1112)
!1158 = !DILocation(line: 366, column: 5, scope: !1109, inlinedAt: !1112)
!1159 = !DILocation(line: 0, scope: !1094)
!1160 = !DILocation(line: 382, column: 42, scope: !1094)
!1161 = !DILocation(line: 0, scope: !1102, inlinedAt: !1162)
!1162 = distinct !DILocation(line: 382, column: 23, scope: !1094)
!1163 = !DILocation(line: 341, column: 15, scope: !1114, inlinedAt: !1162)
!1164 = !DILocation(line: 341, column: 7, scope: !1102, inlinedAt: !1162)
!1165 = !DILocation(line: 346, column: 10, scope: !1102, inlinedAt: !1162)
!1166 = !DILocation(line: 346, column: 19, scope: !1102, inlinedAt: !1162)
!1167 = !DILocation(line: 346, column: 27, scope: !1102, inlinedAt: !1162)
!1168 = !DILocation(line: 0, scope: !1121, inlinedAt: !1169)
!1169 = distinct !DILocation(line: 346, column: 30, scope: !1102, inlinedAt: !1162)
!1170 = !DILocation(line: 302, column: 3, scope: !1121, inlinedAt: !1169)
!1171 = !DILocation(line: 347, column: 12, scope: !1102, inlinedAt: !1162)
!1172 = distinct !{!1172, !1173, !1171, !879}
!1173 = !DILocation(line: 346, column: 3, scope: !1102, inlinedAt: !1162)
!1174 = !DILocation(line: 0, scope: !1133, inlinedAt: !1175)
!1175 = distinct !DILocation(line: 350, column: 7, scope: !1109, inlinedAt: !1162)
!1176 = !DILocation(line: 235, column: 3, scope: !1133, inlinedAt: !1175)
!1177 = !DILocation(line: 350, column: 7, scope: !1102, inlinedAt: !1162)
!1178 = !DILocation(line: 352, column: 7, scope: !1108, inlinedAt: !1162)
!1179 = !DILocation(line: 0, scope: !1108, inlinedAt: !1162)
!1180 = !DILocation(line: 352, column: 13, scope: !1108, inlinedAt: !1162)
!1181 = !DILocation(line: 353, column: 33, scope: !1108, inlinedAt: !1162)
!1182 = !DILocation(line: 355, column: 11, scope: !1144, inlinedAt: !1162)
!1183 = !DILocation(line: 355, column: 18, scope: !1144, inlinedAt: !1162)
!1184 = !DILocation(line: 355, column: 11, scope: !1108, inlinedAt: !1162)
!1185 = !DILocation(line: 357, column: 18, scope: !1148, inlinedAt: !1162)
!1186 = !DILocation(line: 357, column: 26, scope: !1148, inlinedAt: !1162)
!1187 = !DILocation(line: 357, column: 34, scope: !1148, inlinedAt: !1162)
!1188 = !DILocation(line: 0, scope: !1121, inlinedAt: !1189)
!1189 = distinct !DILocation(line: 357, column: 37, scope: !1148, inlinedAt: !1162)
!1190 = !DILocation(line: 302, column: 3, scope: !1121, inlinedAt: !1189)
!1191 = !DILocation(line: 358, column: 19, scope: !1148, inlinedAt: !1162)
!1192 = distinct !{!1192, !1193, !1191, !879}
!1193 = !DILocation(line: 357, column: 11, scope: !1148, inlinedAt: !1162)
!1194 = !DILocation(line: 359, column: 15, scope: !1148, inlinedAt: !1162)
!1195 = !DILocation(line: 366, column: 5, scope: !1109, inlinedAt: !1162)
!1196 = !DILocation(line: 383, column: 13, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1094, file: !152, line: 383, column: 11)
!1198 = !DILocation(line: 383, column: 11, scope: !1094)
!1199 = !DILocation(line: 386, column: 11, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1094, file: !152, line: 386, column: 11)
!1201 = !DILocation(line: 386, column: 11, scope: !1094)
!1202 = !DILocation(line: 129, column: 5, scope: !1203, inlinedAt: !1221)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !152, line: 128, column: 3)
!1204 = distinct !DISubprogram(name: "num_processors_via_affinity_mask", scope: !152, file: !152, line: 69, type: !1205, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !1207)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!101}
!1207 = !{!1208, !1218}
!1208 = !DILocalVariable(name: "set", scope: !1203, file: !152, line: 129, type: !1209)
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpu_set_t", file: !1210, line: 42, baseType: !1211)
!1210 = !DIFile(filename: "/usr/include/bits/cpu-set.h", directory: "")
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1210, line: 39, size: 1024, elements: !1212)
!1212 = !{!1213}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "__bits", scope: !1211, file: !1210, line: 41, baseType: !1214, size: 1024)
!1214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1215, size: 1024, elements: !1216)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__cpu_mask", file: !1210, line: 32, baseType: !101)
!1216 = !{!1217}
!1217 = !DISubrange(count: 16)
!1218 = !DILocalVariable(name: "count", scope: !1219, file: !152, line: 133, type: !101)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !152, line: 132, column: 7)
!1220 = distinct !DILexicalBlock(scope: !1203, file: !152, line: 131, column: 9)
!1221 = distinct !DILocation(line: 227, column: 32, scope: !1222, inlinedAt: !1237)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !152, line: 226, column: 7)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !152, line: 224, column: 5)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !152, line: 223, column: 7)
!1225 = distinct !DISubprogram(name: "num_processors_ignoring_omp", scope: !152, file: !152, line: 206, type: !1088, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !1226)
!1226 = !{!1227, !1228, !1229, !1231, !1234}
!1227 = !DILocalVariable(name: "query", arg: 1, scope: !1225, file: !152, line: 206, type: !5)
!1228 = !DILocalVariable(name: "nprocs", scope: !1222, file: !152, line: 227, type: !101)
!1229 = !DILocalVariable(name: "nprocs", scope: !1230, file: !152, line: 236, type: !932)
!1230 = distinct !DILexicalBlock(scope: !1223, file: !152, line: 234, column: 7)
!1231 = !DILocalVariable(name: "nprocs", scope: !1232, file: !152, line: 247, type: !932)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !152, line: 245, column: 7)
!1233 = distinct !DILexicalBlock(scope: !1224, file: !152, line: 243, column: 5)
!1234 = !DILocalVariable(name: "nprocs_current", scope: !1235, file: !152, line: 257, type: !101)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !152, line: 256, column: 11)
!1236 = distinct !DILexicalBlock(scope: !1232, file: !152, line: 255, column: 13)
!1237 = distinct !DILocation(line: 393, column: 28, scope: !1097)
!1238 = !DILocation(line: 129, column: 15, scope: !1203, inlinedAt: !1221)
!1239 = !DILocation(line: 131, column: 9, scope: !1220, inlinedAt: !1221)
!1240 = !DILocation(line: 131, column: 51, scope: !1220, inlinedAt: !1221)
!1241 = !DILocation(line: 131, column: 9, scope: !1203, inlinedAt: !1221)
!1242 = !DILocation(line: 137, column: 17, scope: !1219, inlinedAt: !1221)
!1243 = !DILocation(line: 0, scope: !1219, inlinedAt: !1221)
!1244 = !DILocation(line: 146, column: 19, scope: !1245, inlinedAt: !1221)
!1245 = distinct !DILexicalBlock(scope: !1219, file: !152, line: 146, column: 13)
!1246 = !DILocation(line: 149, column: 3, scope: !1204, inlinedAt: !1221)
!1247 = !DILocation(line: 236, column: 27, scope: !1230, inlinedAt: !1237)
!1248 = !DILocation(line: 0, scope: !1230, inlinedAt: !1237)
!1249 = !DILocation(line: 237, column: 20, scope: !1250, inlinedAt: !1237)
!1250 = distinct !DILexicalBlock(scope: !1230, file: !152, line: 237, column: 13)
!1251 = !DILocation(line: 0, scope: !1222, inlinedAt: !1237)
!1252 = !DILocation(line: 247, column: 27, scope: !1232, inlinedAt: !1237)
!1253 = !DILocation(line: 0, scope: !1232, inlinedAt: !1237)
!1254 = !DILocation(line: 255, column: 25, scope: !1236, inlinedAt: !1237)
!1255 = !DILocation(line: 129, column: 5, scope: !1203, inlinedAt: !1256)
!1256 = distinct !DILocation(line: 257, column: 44, scope: !1235, inlinedAt: !1237)
!1257 = !DILocation(line: 129, column: 15, scope: !1203, inlinedAt: !1256)
!1258 = !DILocation(line: 131, column: 9, scope: !1220, inlinedAt: !1256)
!1259 = !DILocation(line: 131, column: 51, scope: !1220, inlinedAt: !1256)
!1260 = !DILocation(line: 131, column: 9, scope: !1203, inlinedAt: !1256)
!1261 = !DILocation(line: 137, column: 17, scope: !1219, inlinedAt: !1256)
!1262 = !DILocation(line: 0, scope: !1219, inlinedAt: !1256)
!1263 = !DILocation(line: 146, column: 19, scope: !1245, inlinedAt: !1256)
!1264 = !DILocation(line: 149, column: 3, scope: !1204, inlinedAt: !1256)
!1265 = !DILocation(line: 0, scope: !1235, inlinedAt: !1237)
!1266 = !DILocation(line: 259, column: 60, scope: !1267, inlinedAt: !1237)
!1267 = distinct !DILexicalBlock(scope: !1235, file: !152, line: 259, column: 45)
!1268 = !DILocation(line: 264, column: 20, scope: !1269, inlinedAt: !1237)
!1269 = distinct !DILexicalBlock(scope: !1232, file: !152, line: 264, column: 13)
!1270 = !DILocation(line: 331, column: 3, scope: !1225, inlinedAt: !1237)
!1271 = !DILocation(line: 0, scope: !1225, inlinedAt: !1237)
!1272 = !DILocation(line: 0, scope: !1097)
!1273 = !DILocation(line: 394, column: 12, scope: !1097)
!1274 = !DILocation(line: 396, column: 1, scope: !1087)
!1275 = !DISubprogram(name: "getenv", scope: !1021, file: !1021, line: 634, type: !1018, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!1276 = !DISubprogram(name: "sched_getaffinity", scope: !1277, file: !1277, line: 125, type: !1278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!1277 = !DIFile(filename: "/usr/include/sched.h", directory: "")
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!26, !26, !101, !1280}
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1281 = !DISubprogram(name: "sysconf", scope: !1282, file: !1282, line: 630, type: !1283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!1282 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!932, !26}
!1285 = distinct !DISubprogram(name: "set_program_name", scope: !55, file: !55, line: 39, type: !849, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !1286)
!1286 = !{!1287, !1288, !1289}
!1287 = !DILocalVariable(name: "argv0", arg: 1, scope: !1285, file: !55, line: 39, type: !23)
!1288 = !DILocalVariable(name: "slash", scope: !1285, file: !55, line: 46, type: !23)
!1289 = !DILocalVariable(name: "base", scope: !1285, file: !55, line: 47, type: !23)
!1290 = !DILocation(line: 0, scope: !1285)
!1291 = !DILocation(line: 51, column: 13, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1285, file: !55, line: 51, column: 7)
!1293 = !DILocation(line: 51, column: 7, scope: !1285)
!1294 = !DILocation(line: 55, column: 14, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1292, file: !55, line: 52, column: 5)
!1296 = !DILocation(line: 54, column: 7, scope: !1295)
!1297 = !DILocation(line: 56, column: 7, scope: !1295)
!1298 = !DILocation(line: 59, column: 11, scope: !1285)
!1299 = !DILocation(line: 60, column: 17, scope: !1285)
!1300 = !DILocation(line: 60, column: 11, scope: !1285)
!1301 = !DILocation(line: 61, column: 12, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1285, file: !55, line: 61, column: 7)
!1303 = !DILocation(line: 61, column: 20, scope: !1302)
!1304 = !DILocation(line: 61, column: 25, scope: !1302)
!1305 = !DILocation(line: 61, column: 42, scope: !1302)
!1306 = !DILocation(line: 61, column: 28, scope: !1302)
!1307 = !DILocation(line: 61, column: 61, scope: !1302)
!1308 = !DILocation(line: 61, column: 7, scope: !1285)
!1309 = !DILocation(line: 64, column: 11, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !55, line: 64, column: 11)
!1311 = distinct !DILexicalBlock(scope: !1302, file: !55, line: 62, column: 5)
!1312 = !DILocation(line: 64, column: 36, scope: !1310)
!1313 = !DILocation(line: 64, column: 11, scope: !1311)
!1314 = !DILocation(line: 66, column: 24, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1310, file: !55, line: 65, column: 9)
!1316 = !DILocation(line: 70, column: 41, scope: !1315)
!1317 = !DILocation(line: 72, column: 9, scope: !1315)
!1318 = !DILocation(line: 84, column: 16, scope: !1285)
!1319 = !DILocation(line: 90, column: 27, scope: !1285)
!1320 = !DILocation(line: 92, column: 1, scope: !1285)
!1321 = distinct !DISubprogram(name: "clone_quoting_options", scope: !61, file: !61, line: 122, type: !1322, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1325)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!1324, !1324}
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!1325 = !{!1326, !1327, !1328}
!1326 = !DILocalVariable(name: "o", arg: 1, scope: !1321, file: !61, line: 122, type: !1324)
!1327 = !DILocalVariable(name: "e", scope: !1321, file: !61, line: 124, type: !26)
!1328 = !DILocalVariable(name: "p", scope: !1321, file: !61, line: 125, type: !1324)
!1329 = !DILocation(line: 0, scope: !1321)
!1330 = !DILocation(line: 124, column: 11, scope: !1321)
!1331 = !DILocation(line: 125, column: 40, scope: !1321)
!1332 = !DILocation(line: 125, column: 31, scope: !1321)
!1333 = !DILocation(line: 127, column: 9, scope: !1321)
!1334 = !DILocation(line: 128, column: 3, scope: !1321)
!1335 = distinct !DISubprogram(name: "get_quoting_style", scope: !61, file: !61, line: 133, type: !1336, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1340)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!63, !1338}
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!1340 = !{!1341}
!1341 = !DILocalVariable(name: "o", arg: 1, scope: !1335, file: !61, line: 133, type: !1338)
!1342 = !DILocation(line: 0, scope: !1335)
!1343 = !DILocation(line: 135, column: 11, scope: !1335)
!1344 = !DILocation(line: 135, column: 46, scope: !1335)
!1345 = !{!1346, !838, i64 0}
!1346 = !{!"quoting_options", !838, i64 0, !998, i64 4, !838, i64 8, !837, i64 40, !837, i64 48}
!1347 = !DILocation(line: 135, column: 3, scope: !1335)
!1348 = distinct !DISubprogram(name: "set_quoting_style", scope: !61, file: !61, line: 141, type: !1349, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1351)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{null, !1324, !63}
!1351 = !{!1352, !1353}
!1352 = !DILocalVariable(name: "o", arg: 1, scope: !1348, file: !61, line: 141, type: !1324)
!1353 = !DILocalVariable(name: "s", arg: 2, scope: !1348, file: !61, line: 141, type: !63)
!1354 = !DILocation(line: 0, scope: !1348)
!1355 = !DILocation(line: 143, column: 4, scope: !1348)
!1356 = !DILocation(line: 143, column: 39, scope: !1348)
!1357 = !DILocation(line: 143, column: 45, scope: !1348)
!1358 = !DILocation(line: 144, column: 1, scope: !1348)
!1359 = distinct !DISubprogram(name: "set_char_quoting", scope: !61, file: !61, line: 152, type: !1360, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1362)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!26, !1324, !14, !26}
!1362 = !{!1363, !1364, !1365, !1366, !1368, !1370, !1371}
!1363 = !DILocalVariable(name: "o", arg: 1, scope: !1359, file: !61, line: 152, type: !1324)
!1364 = !DILocalVariable(name: "c", arg: 2, scope: !1359, file: !61, line: 152, type: !14)
!1365 = !DILocalVariable(name: "i", arg: 3, scope: !1359, file: !61, line: 152, type: !26)
!1366 = !DILocalVariable(name: "uc", scope: !1359, file: !61, line: 154, type: !1367)
!1367 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1368 = !DILocalVariable(name: "p", scope: !1359, file: !61, line: 155, type: !1369)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1370 = !DILocalVariable(name: "shift", scope: !1359, file: !61, line: 157, type: !26)
!1371 = !DILocalVariable(name: "r", scope: !1359, file: !61, line: 158, type: !26)
!1372 = !DILocation(line: 0, scope: !1359)
!1373 = !DILocation(line: 156, column: 6, scope: !1359)
!1374 = !DILocation(line: 156, column: 62, scope: !1359)
!1375 = !DILocation(line: 156, column: 57, scope: !1359)
!1376 = !DILocation(line: 157, column: 15, scope: !1359)
!1377 = !DILocation(line: 158, column: 12, scope: !1359)
!1378 = !DILocation(line: 158, column: 15, scope: !1359)
!1379 = !DILocation(line: 158, column: 25, scope: !1359)
!1380 = !DILocation(line: 159, column: 13, scope: !1359)
!1381 = !DILocation(line: 159, column: 18, scope: !1359)
!1382 = !DILocation(line: 159, column: 23, scope: !1359)
!1383 = !DILocation(line: 159, column: 6, scope: !1359)
!1384 = !DILocation(line: 160, column: 3, scope: !1359)
!1385 = distinct !DISubprogram(name: "set_quoting_flags", scope: !61, file: !61, line: 168, type: !1386, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1388)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!26, !1324, !26}
!1388 = !{!1389, !1390, !1391}
!1389 = !DILocalVariable(name: "o", arg: 1, scope: !1385, file: !61, line: 168, type: !1324)
!1390 = !DILocalVariable(name: "i", arg: 2, scope: !1385, file: !61, line: 168, type: !26)
!1391 = !DILocalVariable(name: "r", scope: !1385, file: !61, line: 170, type: !26)
!1392 = !DILocation(line: 0, scope: !1385)
!1393 = !DILocation(line: 171, column: 8, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1385, file: !61, line: 171, column: 7)
!1395 = !DILocation(line: 171, column: 7, scope: !1385)
!1396 = !DILocation(line: 173, column: 10, scope: !1385)
!1397 = !{!1346, !998, i64 4}
!1398 = !DILocation(line: 174, column: 12, scope: !1385)
!1399 = !DILocation(line: 175, column: 3, scope: !1385)
!1400 = distinct !DISubprogram(name: "set_custom_quoting", scope: !61, file: !61, line: 179, type: !1401, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1403)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{null, !1324, !23, !23}
!1403 = !{!1404, !1405, !1406}
!1404 = !DILocalVariable(name: "o", arg: 1, scope: !1400, file: !61, line: 179, type: !1324)
!1405 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1400, file: !61, line: 180, type: !23)
!1406 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1400, file: !61, line: 180, type: !23)
!1407 = !DILocation(line: 0, scope: !1400)
!1408 = !DILocation(line: 182, column: 8, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1400, file: !61, line: 182, column: 7)
!1410 = !DILocation(line: 182, column: 7, scope: !1400)
!1411 = !DILocation(line: 184, column: 6, scope: !1400)
!1412 = !DILocation(line: 184, column: 12, scope: !1400)
!1413 = !DILocation(line: 185, column: 8, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1400, file: !61, line: 185, column: 7)
!1415 = !DILocation(line: 185, column: 19, scope: !1414)
!1416 = !DILocation(line: 186, column: 5, scope: !1414)
!1417 = !DILocation(line: 187, column: 6, scope: !1400)
!1418 = !DILocation(line: 187, column: 17, scope: !1400)
!1419 = !{!1346, !837, i64 40}
!1420 = !DILocation(line: 188, column: 6, scope: !1400)
!1421 = !DILocation(line: 188, column: 18, scope: !1400)
!1422 = !{!1346, !837, i64 48}
!1423 = !DILocation(line: 189, column: 1, scope: !1400)
!1424 = distinct !DISubprogram(name: "quotearg_buffer", scope: !61, file: !61, line: 784, type: !1425, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1427)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!99, !13, !99, !23, !99, !1338}
!1427 = !{!1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435}
!1428 = !DILocalVariable(name: "buffer", arg: 1, scope: !1424, file: !61, line: 784, type: !13)
!1429 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1424, file: !61, line: 784, type: !99)
!1430 = !DILocalVariable(name: "arg", arg: 3, scope: !1424, file: !61, line: 785, type: !23)
!1431 = !DILocalVariable(name: "argsize", arg: 4, scope: !1424, file: !61, line: 785, type: !99)
!1432 = !DILocalVariable(name: "o", arg: 5, scope: !1424, file: !61, line: 786, type: !1338)
!1433 = !DILocalVariable(name: "p", scope: !1424, file: !61, line: 788, type: !1338)
!1434 = !DILocalVariable(name: "e", scope: !1424, file: !61, line: 789, type: !26)
!1435 = !DILocalVariable(name: "r", scope: !1424, file: !61, line: 790, type: !99)
!1436 = !DILocation(line: 0, scope: !1424)
!1437 = !DILocation(line: 788, column: 37, scope: !1424)
!1438 = !DILocation(line: 789, column: 11, scope: !1424)
!1439 = !DILocation(line: 791, column: 43, scope: !1424)
!1440 = !DILocation(line: 791, column: 53, scope: !1424)
!1441 = !DILocation(line: 791, column: 60, scope: !1424)
!1442 = !DILocation(line: 792, column: 43, scope: !1424)
!1443 = !DILocation(line: 792, column: 58, scope: !1424)
!1444 = !DILocation(line: 790, column: 14, scope: !1424)
!1445 = !DILocation(line: 793, column: 9, scope: !1424)
!1446 = !DILocation(line: 794, column: 3, scope: !1424)
!1447 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !61, file: !61, line: 256, type: !1448, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1452)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!99, !13, !99, !23, !99, !63, !26, !1450, !23, !23}
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1452 = !{!1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1477, !1478, !1479, !1480, !1481, !1484, !1485, !1503, !1506, !1507, !1514, !1517, !1518, !1519, !1520, !1521, !1522}
!1453 = !DILocalVariable(name: "buffer", arg: 1, scope: !1447, file: !61, line: 256, type: !13)
!1454 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1447, file: !61, line: 256, type: !99)
!1455 = !DILocalVariable(name: "arg", arg: 3, scope: !1447, file: !61, line: 257, type: !23)
!1456 = !DILocalVariable(name: "argsize", arg: 4, scope: !1447, file: !61, line: 257, type: !99)
!1457 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1447, file: !61, line: 258, type: !63)
!1458 = !DILocalVariable(name: "flags", arg: 6, scope: !1447, file: !61, line: 258, type: !26)
!1459 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1447, file: !61, line: 259, type: !1450)
!1460 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1447, file: !61, line: 260, type: !23)
!1461 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1447, file: !61, line: 261, type: !23)
!1462 = !DILocalVariable(name: "i", scope: !1447, file: !61, line: 263, type: !99)
!1463 = !DILocalVariable(name: "len", scope: !1447, file: !61, line: 264, type: !99)
!1464 = !DILocalVariable(name: "orig_buffersize", scope: !1447, file: !61, line: 265, type: !99)
!1465 = !DILocalVariable(name: "quote_string", scope: !1447, file: !61, line: 266, type: !23)
!1466 = !DILocalVariable(name: "quote_string_len", scope: !1447, file: !61, line: 267, type: !99)
!1467 = !DILocalVariable(name: "backslash_escapes", scope: !1447, file: !61, line: 268, type: !45)
!1468 = !DILocalVariable(name: "unibyte_locale", scope: !1447, file: !61, line: 269, type: !45)
!1469 = !DILocalVariable(name: "elide_outer_quotes", scope: !1447, file: !61, line: 270, type: !45)
!1470 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1447, file: !61, line: 271, type: !45)
!1471 = !DILocalVariable(name: "encountered_single_quote", scope: !1447, file: !61, line: 272, type: !45)
!1472 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1447, file: !61, line: 273, type: !45)
!1473 = !DILocalVariable(name: "c", scope: !1474, file: !61, line: 402, type: !1367)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !61, line: 401, column: 5)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !61, line: 400, column: 3)
!1476 = distinct !DILexicalBlock(scope: !1447, file: !61, line: 400, column: 3)
!1477 = !DILocalVariable(name: "esc", scope: !1474, file: !61, line: 403, type: !1367)
!1478 = !DILocalVariable(name: "is_right_quote", scope: !1474, file: !61, line: 404, type: !45)
!1479 = !DILocalVariable(name: "escaping", scope: !1474, file: !61, line: 405, type: !45)
!1480 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1474, file: !61, line: 406, type: !45)
!1481 = !DILocalVariable(name: "m", scope: !1482, file: !61, line: 610, type: !99)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !61, line: 608, column: 11)
!1483 = distinct !DILexicalBlock(scope: !1474, file: !61, line: 426, column: 9)
!1484 = !DILocalVariable(name: "printable", scope: !1482, file: !61, line: 612, type: !45)
!1485 = !DILocalVariable(name: "mbstate", scope: !1486, file: !61, line: 621, type: !1488)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !61, line: 620, column: 15)
!1487 = distinct !DILexicalBlock(scope: !1482, file: !61, line: 614, column: 17)
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1489, line: 6, baseType: !1490)
!1489 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1491, line: 21, baseType: !1492)
!1491 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1491, line: 13, size: 64, elements: !1493)
!1493 = !{!1494, !1495}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1492, file: !1491, line: 15, baseType: !26, size: 32)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1492, file: !1491, line: 20, baseType: !1496, size: 32, offset: 32)
!1496 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1492, file: !1491, line: 16, size: 32, elements: !1497)
!1497 = !{!1498, !1499}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1496, file: !1491, line: 18, baseType: !7, size: 32)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1496, file: !1491, line: 19, baseType: !1500, size: 32)
!1500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 32, elements: !1501)
!1501 = !{!1502}
!1502 = !DISubrange(count: 4)
!1503 = !DILocalVariable(name: "w", scope: !1504, file: !61, line: 631, type: !1505)
!1504 = distinct !DILexicalBlock(scope: !1486, file: !61, line: 630, column: 19)
!1505 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !100, line: 74, baseType: !26)
!1506 = !DILocalVariable(name: "bytes", scope: !1504, file: !61, line: 632, type: !99)
!1507 = !DILocalVariable(name: "j", scope: !1508, file: !61, line: 657, type: !99)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !61, line: 656, column: 27)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !61, line: 654, column: 29)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !61, line: 649, column: 23)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !61, line: 641, column: 30)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !61, line: 636, column: 30)
!1513 = distinct !DILexicalBlock(scope: !1504, file: !61, line: 634, column: 25)
!1514 = !DILocalVariable(name: "ilim", scope: !1515, file: !61, line: 684, type: !99)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !61, line: 681, column: 15)
!1516 = distinct !DILexicalBlock(scope: !1482, file: !61, line: 680, column: 17)
!1517 = !DILabel(scope: !1447, name: "process_input", file: !61, line: 314)
!1518 = !DILabel(scope: !1483, name: "c_and_shell_escape", file: !61, line: 512)
!1519 = !DILabel(scope: !1483, name: "c_escape", file: !61, line: 517)
!1520 = !DILabel(scope: !1474, name: "store_escape", file: !61, line: 719)
!1521 = !DILabel(scope: !1474, name: "store_c", file: !61, line: 722)
!1522 = !DILabel(scope: !1447, name: "force_outer_quoting_style", file: !61, line: 763)
!1523 = !DILocation(line: 0, scope: !1447)
!1524 = !DILocation(line: 269, column: 25, scope: !1447)
!1525 = !DILocation(line: 269, column: 36, scope: !1447)
!1526 = !DILocation(line: 270, column: 8, scope: !1447)
!1527 = !DILocation(line: 273, column: 3, scope: !1447)
!1528 = !DILocation(line: 265, column: 10, scope: !1447)
!1529 = !DILocation(line: 266, column: 15, scope: !1447)
!1530 = !DILocation(line: 267, column: 10, scope: !1447)
!1531 = !DILocation(line: 268, column: 8, scope: !1447)
!1532 = !DILocation(line: 271, column: 8, scope: !1447)
!1533 = !DILocation(line: 272, column: 8, scope: !1447)
!1534 = !DILocation(line: 273, column: 8, scope: !1447)
!1535 = !DILocation(line: 314, column: 2, scope: !1447)
!1536 = !DILocation(line: 316, column: 3, scope: !1447)
!1537 = !DILocation(line: 323, column: 11, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1447, file: !61, line: 317, column: 5)
!1539 = !DILocation(line: 323, column: 12, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1538, file: !61, line: 323, column: 11)
!1541 = !DILocation(line: 324, column: 9, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !61, line: 324, column: 9)
!1543 = distinct !DILexicalBlock(scope: !1540, file: !61, line: 324, column: 9)
!1544 = !DILocation(line: 324, column: 9, scope: !1543)
!1545 = !DILocation(line: 362, column: 26, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !61, line: 340, column: 11)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !61, line: 339, column: 13)
!1548 = distinct !DILexicalBlock(scope: !1538, file: !61, line: 338, column: 7)
!1549 = !DILocation(line: 363, column: 27, scope: !1546)
!1550 = !DILocation(line: 364, column: 11, scope: !1546)
!1551 = !DILocation(line: 365, column: 14, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1548, file: !61, line: 365, column: 13)
!1553 = !DILocation(line: 365, column: 13, scope: !1548)
!1554 = !DILocation(line: 366, column: 43, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !61, line: 366, column: 11)
!1556 = distinct !DILexicalBlock(scope: !1552, file: !61, line: 366, column: 11)
!1557 = !DILocation(line: 366, column: 11, scope: !1556)
!1558 = !DILocation(line: 367, column: 13, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !61, line: 367, column: 13)
!1560 = distinct !DILexicalBlock(scope: !1555, file: !61, line: 367, column: 13)
!1561 = !DILocation(line: 367, column: 13, scope: !1560)
!1562 = !DILocation(line: 366, column: 70, scope: !1555)
!1563 = distinct !{!1563, !1557, !1564, !879}
!1564 = !DILocation(line: 367, column: 13, scope: !1556)
!1565 = !DILocation(line: 264, column: 10, scope: !1447)
!1566 = !DILocation(line: 370, column: 28, scope: !1548)
!1567 = !DILocation(line: 372, column: 7, scope: !1538)
!1568 = !DILocation(line: 376, column: 7, scope: !1538)
!1569 = !DILocation(line: 379, column: 7, scope: !1538)
!1570 = !DILocation(line: 381, column: 12, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1538, file: !61, line: 381, column: 11)
!1572 = !DILocation(line: 381, column: 11, scope: !1538)
!1573 = !DILocation(line: 386, column: 12, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1538, file: !61, line: 386, column: 11)
!1575 = !DILocation(line: 386, column: 11, scope: !1538)
!1576 = !DILocation(line: 387, column: 9, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !61, line: 387, column: 9)
!1578 = distinct !DILexicalBlock(scope: !1574, file: !61, line: 387, column: 9)
!1579 = !DILocation(line: 387, column: 9, scope: !1578)
!1580 = !DILocation(line: 394, column: 7, scope: !1538)
!1581 = !DILocation(line: 397, column: 7, scope: !1538)
!1582 = !DILocation(line: 400, column: 8, scope: !1476)
!1583 = !DILocation(line: 0, scope: !1476)
!1584 = !DILocation(line: 400, column: 27, scope: !1475)
!1585 = !DILocation(line: 400, column: 19, scope: !1475)
!1586 = !DILocation(line: 400, column: 41, scope: !1475)
!1587 = !DILocation(line: 400, column: 48, scope: !1475)
!1588 = !DILocation(line: 400, column: 3, scope: !1476)
!1589 = !DILocation(line: 400, column: 60, scope: !1475)
!1590 = !DILocation(line: 0, scope: !1474)
!1591 = !DILocation(line: 409, column: 11, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1474, file: !61, line: 408, column: 11)
!1593 = !DILocation(line: 411, column: 17, scope: !1592)
!1594 = !DILocation(line: 412, column: 39, scope: !1592)
!1595 = !DILocation(line: 416, column: 32, scope: !1592)
!1596 = !DILocation(line: 412, column: 19, scope: !1592)
!1597 = !DILocation(line: 412, column: 15, scope: !1592)
!1598 = !DILocation(line: 417, column: 11, scope: !1592)
!1599 = !DILocation(line: 417, column: 26, scope: !1592)
!1600 = !DILocation(line: 417, column: 14, scope: !1592)
!1601 = !DILocation(line: 417, column: 63, scope: !1592)
!1602 = !DILocation(line: 408, column: 11, scope: !1474)
!1603 = !DILocation(line: 424, column: 11, scope: !1474)
!1604 = !DILocation(line: 425, column: 7, scope: !1474)
!1605 = !DILocation(line: 428, column: 15, scope: !1483)
!1606 = !DILocation(line: 430, column: 15, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !61, line: 430, column: 15)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !61, line: 429, column: 13)
!1609 = distinct !DILexicalBlock(scope: !1483, file: !61, line: 428, column: 15)
!1610 = !DILocation(line: 430, column: 15, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1607, file: !61, line: 430, column: 15)
!1612 = !DILocation(line: 430, column: 15, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !61, line: 430, column: 15)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !61, line: 430, column: 15)
!1615 = distinct !DILexicalBlock(scope: !1611, file: !61, line: 430, column: 15)
!1616 = !DILocation(line: 430, column: 15, scope: !1614)
!1617 = !DILocation(line: 430, column: 15, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !61, line: 430, column: 15)
!1619 = distinct !DILexicalBlock(scope: !1615, file: !61, line: 430, column: 15)
!1620 = !DILocation(line: 430, column: 15, scope: !1619)
!1621 = !DILocation(line: 430, column: 15, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !61, line: 430, column: 15)
!1623 = distinct !DILexicalBlock(scope: !1615, file: !61, line: 430, column: 15)
!1624 = !DILocation(line: 430, column: 15, scope: !1623)
!1625 = !DILocation(line: 430, column: 15, scope: !1615)
!1626 = !DILocation(line: 430, column: 15, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !61, line: 430, column: 15)
!1628 = distinct !DILexicalBlock(scope: !1607, file: !61, line: 430, column: 15)
!1629 = !DILocation(line: 430, column: 15, scope: !1628)
!1630 = !DILocation(line: 438, column: 19, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1608, file: !61, line: 437, column: 19)
!1632 = !DILocation(line: 438, column: 48, scope: !1631)
!1633 = !DILocation(line: 438, column: 59, scope: !1631)
!1634 = !DILocation(line: 440, column: 19, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !61, line: 440, column: 19)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !61, line: 440, column: 19)
!1637 = distinct !DILexicalBlock(scope: !1631, file: !61, line: 439, column: 17)
!1638 = !DILocation(line: 440, column: 19, scope: !1636)
!1639 = !DILocation(line: 441, column: 19, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !61, line: 441, column: 19)
!1641 = distinct !DILexicalBlock(scope: !1637, file: !61, line: 441, column: 19)
!1642 = !DILocation(line: 441, column: 19, scope: !1641)
!1643 = !DILocation(line: 442, column: 17, scope: !1637)
!1644 = !DILocation(line: 449, column: 20, scope: !1609)
!1645 = !DILocation(line: 454, column: 11, scope: !1483)
!1646 = !DILocation(line: 457, column: 19, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1483, file: !61, line: 455, column: 13)
!1648 = !DILocation(line: 463, column: 19, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1647, file: !61, line: 462, column: 19)
!1650 = !DILocation(line: 463, column: 47, scope: !1649)
!1651 = !DILocation(line: 463, column: 41, scope: !1649)
!1652 = !DILocation(line: 463, column: 52, scope: !1649)
!1653 = !DILocation(line: 462, column: 19, scope: !1647)
!1654 = !DILocation(line: 464, column: 25, scope: !1649)
!1655 = !DILocation(line: 464, column: 17, scope: !1649)
!1656 = !DILocation(line: 471, column: 25, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1649, file: !61, line: 465, column: 19)
!1658 = !DILocation(line: 475, column: 21, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !61, line: 475, column: 21)
!1660 = distinct !DILexicalBlock(scope: !1657, file: !61, line: 475, column: 21)
!1661 = !DILocation(line: 475, column: 21, scope: !1660)
!1662 = !DILocation(line: 476, column: 21, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !61, line: 476, column: 21)
!1664 = distinct !DILexicalBlock(scope: !1657, file: !61, line: 476, column: 21)
!1665 = !DILocation(line: 476, column: 21, scope: !1664)
!1666 = !DILocation(line: 477, column: 21, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !61, line: 477, column: 21)
!1668 = distinct !DILexicalBlock(scope: !1657, file: !61, line: 477, column: 21)
!1669 = !DILocation(line: 477, column: 21, scope: !1668)
!1670 = !DILocation(line: 478, column: 21, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !61, line: 478, column: 21)
!1672 = distinct !DILexicalBlock(scope: !1657, file: !61, line: 478, column: 21)
!1673 = !DILocation(line: 478, column: 21, scope: !1672)
!1674 = !DILocation(line: 479, column: 21, scope: !1657)
!1675 = !DILocation(line: 492, column: 31, scope: !1483)
!1676 = !DILocation(line: 493, column: 31, scope: !1483)
!1677 = !DILocation(line: 495, column: 31, scope: !1483)
!1678 = !DILocation(line: 496, column: 31, scope: !1483)
!1679 = !DILocation(line: 497, column: 31, scope: !1483)
!1680 = !DILocation(line: 500, column: 15, scope: !1483)
!1681 = !DILocation(line: 502, column: 19, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !61, line: 501, column: 13)
!1683 = distinct !DILexicalBlock(scope: !1483, file: !61, line: 500, column: 15)
!1684 = !DILocation(line: 509, column: 33, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1483, file: !61, line: 509, column: 15)
!1686 = !DILocation(line: 0, scope: !1483)
!1687 = !DILocation(line: 512, column: 9, scope: !1483)
!1688 = !DILocation(line: 514, column: 15, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1483, file: !61, line: 513, column: 15)
!1690 = !DILocation(line: 517, column: 9, scope: !1483)
!1691 = !DILocation(line: 518, column: 15, scope: !1483)
!1692 = !DILocation(line: 526, column: 15, scope: !1483)
!1693 = !DILocation(line: 526, column: 40, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1483, file: !61, line: 526, column: 15)
!1695 = !DILocation(line: 526, column: 47, scope: !1694)
!1696 = !DILocation(line: 526, column: 18, scope: !1694)
!1697 = !DILocation(line: 530, column: 17, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1483, file: !61, line: 530, column: 15)
!1699 = !DILocation(line: 530, column: 15, scope: !1483)
!1700 = !DILocation(line: 535, column: 11, scope: !1483)
!1701 = !DILocation(line: 549, column: 15, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1483, file: !61, line: 548, column: 15)
!1703 = !DILocation(line: 556, column: 15, scope: !1483)
!1704 = !DILocation(line: 558, column: 19, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !61, line: 557, column: 13)
!1706 = distinct !DILexicalBlock(scope: !1483, file: !61, line: 556, column: 15)
!1707 = !DILocation(line: 561, column: 19, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1705, file: !61, line: 561, column: 19)
!1709 = !DILocation(line: 561, column: 30, scope: !1708)
!1710 = !DILocation(line: 570, column: 15, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !61, line: 570, column: 15)
!1712 = distinct !DILexicalBlock(scope: !1705, file: !61, line: 570, column: 15)
!1713 = !DILocation(line: 570, column: 15, scope: !1712)
!1714 = !DILocation(line: 571, column: 15, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !61, line: 571, column: 15)
!1716 = distinct !DILexicalBlock(scope: !1705, file: !61, line: 571, column: 15)
!1717 = !DILocation(line: 571, column: 15, scope: !1716)
!1718 = !DILocation(line: 572, column: 15, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !61, line: 572, column: 15)
!1720 = distinct !DILexicalBlock(scope: !1705, file: !61, line: 572, column: 15)
!1721 = !DILocation(line: 572, column: 15, scope: !1720)
!1722 = !DILocation(line: 574, column: 13, scope: !1705)
!1723 = !DILocation(line: 614, column: 17, scope: !1482)
!1724 = !DILocation(line: 0, scope: !1482)
!1725 = !DILocation(line: 617, column: 29, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1487, file: !61, line: 615, column: 15)
!1727 = !{!1728, !1728, i64 0}
!1728 = !{!"short", !838, i64 0}
!1729 = !DILocation(line: 617, column: 27, scope: !1726)
!1730 = !DILocation(line: 678, column: 40, scope: !1482)
!1731 = !DILocation(line: 680, column: 23, scope: !1516)
!1732 = !DILocation(line: 621, column: 17, scope: !1486)
!1733 = !DILocation(line: 621, column: 27, scope: !1486)
!1734 = !DILocalVariable(name: "__dest", arg: 1, scope: !1735, file: !1736, line: 57, type: !15)
!1735 = distinct !DISubprogram(name: "memset", scope: !1736, file: !1736, line: 57, type: !1737, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1739)
!1736 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!15, !15, !26, !99}
!1739 = !{!1734, !1740, !1741}
!1740 = !DILocalVariable(name: "__ch", arg: 2, scope: !1735, file: !1736, line: 57, type: !26)
!1741 = !DILocalVariable(name: "__len", arg: 3, scope: !1735, file: !1736, line: 57, type: !99)
!1742 = !DILocation(line: 0, scope: !1735, inlinedAt: !1743)
!1743 = distinct !DILocation(line: 622, column: 17, scope: !1486)
!1744 = !DILocation(line: 59, column: 10, scope: !1735, inlinedAt: !1743)
!1745 = !DILocation(line: 626, column: 29, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1486, file: !61, line: 626, column: 21)
!1747 = !DILocation(line: 626, column: 21, scope: !1486)
!1748 = !DILocation(line: 627, column: 29, scope: !1746)
!1749 = !DILocation(line: 627, column: 19, scope: !1746)
!1750 = !DILocation(line: 629, column: 17, scope: !1486)
!1751 = !DILocation(line: 624, column: 19, scope: !1486)
!1752 = !DILocation(line: 625, column: 27, scope: !1486)
!1753 = !DILocation(line: 631, column: 21, scope: !1504)
!1754 = !DILocation(line: 632, column: 56, scope: !1504)
!1755 = !DILocation(line: 632, column: 50, scope: !1504)
!1756 = !DILocation(line: 633, column: 53, scope: !1504)
!1757 = !DILocation(line: 0, scope: !1504)
!1758 = !DILocation(line: 632, column: 36, scope: !1504)
!1759 = !DILocation(line: 634, column: 25, scope: !1504)
!1760 = !DILocation(line: 644, column: 38, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1511, file: !61, line: 642, column: 23)
!1762 = !DILocation(line: 644, column: 48, scope: !1761)
!1763 = !DILocation(line: 644, column: 25, scope: !1761)
!1764 = !DILocation(line: 644, column: 51, scope: !1761)
!1765 = !DILocation(line: 645, column: 28, scope: !1761)
!1766 = !DILocation(line: 644, column: 34, scope: !1761)
!1767 = distinct !{!1767, !1763, !1765, !879}
!1768 = !DILocation(line: 655, column: 29, scope: !1509)
!1769 = !DILocation(line: 0, scope: !1508)
!1770 = !DILocation(line: 659, column: 49, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !61, line: 658, column: 29)
!1772 = distinct !DILexicalBlock(scope: !1508, file: !61, line: 658, column: 29)
!1773 = !DILocation(line: 659, column: 39, scope: !1771)
!1774 = !DILocation(line: 659, column: 31, scope: !1771)
!1775 = !DILocation(line: 658, column: 53, scope: !1771)
!1776 = !DILocation(line: 658, column: 43, scope: !1771)
!1777 = !DILocation(line: 658, column: 29, scope: !1772)
!1778 = distinct !{!1778, !1777, !1779, !879}
!1779 = !DILocation(line: 667, column: 33, scope: !1772)
!1780 = !DILocation(line: 674, column: 19, scope: !1486)
!1781 = !DILocation(line: 670, column: 41, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1510, file: !61, line: 670, column: 29)
!1783 = !DILocation(line: 670, column: 31, scope: !1782)
!1784 = !DILocation(line: 670, column: 29, scope: !1510)
!1785 = !DILocation(line: 672, column: 27, scope: !1510)
!1786 = !DILocation(line: 675, column: 26, scope: !1486)
!1787 = !DILocation(line: 675, column: 24, scope: !1486)
!1788 = !DILocation(line: 674, column: 19, scope: !1504)
!1789 = distinct !{!1789, !1750, !1790, !879}
!1790 = !DILocation(line: 675, column: 44, scope: !1486)
!1791 = !DILocation(line: 676, column: 15, scope: !1487)
!1792 = !DILocation(line: 680, column: 19, scope: !1516)
!1793 = !DILocation(line: 680, column: 45, scope: !1516)
!1794 = !DILocation(line: 684, column: 33, scope: !1515)
!1795 = !DILocation(line: 0, scope: !1515)
!1796 = !DILocation(line: 686, column: 17, scope: !1515)
!1797 = !DILocation(line: 405, column: 12, scope: !1474)
!1798 = !DILocation(line: 688, column: 43, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !61, line: 688, column: 25)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !61, line: 687, column: 19)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !61, line: 686, column: 17)
!1802 = distinct !DILexicalBlock(scope: !1515, file: !61, line: 686, column: 17)
!1803 = !DILocation(line: 690, column: 25, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !61, line: 690, column: 25)
!1805 = distinct !DILexicalBlock(scope: !1799, file: !61, line: 689, column: 23)
!1806 = !DILocation(line: 690, column: 25, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1804, file: !61, line: 690, column: 25)
!1808 = !DILocation(line: 690, column: 25, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !61, line: 690, column: 25)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !61, line: 690, column: 25)
!1811 = distinct !DILexicalBlock(scope: !1807, file: !61, line: 690, column: 25)
!1812 = !DILocation(line: 690, column: 25, scope: !1810)
!1813 = !DILocation(line: 690, column: 25, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !61, line: 690, column: 25)
!1815 = distinct !DILexicalBlock(scope: !1811, file: !61, line: 690, column: 25)
!1816 = !DILocation(line: 690, column: 25, scope: !1815)
!1817 = !DILocation(line: 690, column: 25, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !61, line: 690, column: 25)
!1819 = distinct !DILexicalBlock(scope: !1811, file: !61, line: 690, column: 25)
!1820 = !DILocation(line: 690, column: 25, scope: !1819)
!1821 = !DILocation(line: 690, column: 25, scope: !1811)
!1822 = !DILocation(line: 690, column: 25, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !61, line: 690, column: 25)
!1824 = distinct !DILexicalBlock(scope: !1804, file: !61, line: 690, column: 25)
!1825 = !DILocation(line: 690, column: 25, scope: !1824)
!1826 = !DILocation(line: 691, column: 25, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !61, line: 691, column: 25)
!1828 = distinct !DILexicalBlock(scope: !1805, file: !61, line: 691, column: 25)
!1829 = !DILocation(line: 691, column: 25, scope: !1828)
!1830 = !DILocation(line: 692, column: 25, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !61, line: 692, column: 25)
!1832 = distinct !DILexicalBlock(scope: !1805, file: !61, line: 692, column: 25)
!1833 = !DILocation(line: 692, column: 25, scope: !1832)
!1834 = !DILocation(line: 693, column: 38, scope: !1805)
!1835 = !DILocation(line: 693, column: 33, scope: !1805)
!1836 = !DILocation(line: 694, column: 23, scope: !1805)
!1837 = !DILocation(line: 695, column: 30, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1799, file: !61, line: 695, column: 30)
!1839 = !DILocation(line: 695, column: 30, scope: !1799)
!1840 = !DILocation(line: 697, column: 25, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !61, line: 697, column: 25)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !61, line: 697, column: 25)
!1843 = distinct !DILexicalBlock(scope: !1838, file: !61, line: 696, column: 23)
!1844 = !DILocation(line: 697, column: 25, scope: !1842)
!1845 = !DILocation(line: 699, column: 23, scope: !1843)
!1846 = !DILocation(line: 700, column: 35, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1800, file: !61, line: 700, column: 25)
!1848 = !DILocation(line: 700, column: 30, scope: !1847)
!1849 = !DILocation(line: 700, column: 25, scope: !1800)
!1850 = !DILocation(line: 702, column: 21, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !61, line: 702, column: 21)
!1852 = distinct !DILexicalBlock(scope: !1800, file: !61, line: 702, column: 21)
!1853 = !DILocation(line: 702, column: 21, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !61, line: 702, column: 21)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !61, line: 702, column: 21)
!1856 = distinct !DILexicalBlock(scope: !1851, file: !61, line: 702, column: 21)
!1857 = !DILocation(line: 702, column: 21, scope: !1855)
!1858 = !DILocation(line: 702, column: 21, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !61, line: 702, column: 21)
!1860 = distinct !DILexicalBlock(scope: !1856, file: !61, line: 702, column: 21)
!1861 = !DILocation(line: 702, column: 21, scope: !1860)
!1862 = !DILocation(line: 702, column: 21, scope: !1856)
!1863 = !DILocation(line: 0, scope: !1800)
!1864 = !DILocation(line: 703, column: 21, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !61, line: 703, column: 21)
!1866 = distinct !DILexicalBlock(scope: !1800, file: !61, line: 703, column: 21)
!1867 = !DILocation(line: 703, column: 21, scope: !1866)
!1868 = !DILocation(line: 704, column: 25, scope: !1800)
!1869 = !DILocation(line: 686, column: 17, scope: !1801)
!1870 = distinct !{!1870, !1871, !1872}
!1871 = !DILocation(line: 686, column: 17, scope: !1802)
!1872 = !DILocation(line: 705, column: 19, scope: !1802)
!1873 = !DILocation(line: 416, column: 30, scope: !1592)
!1874 = !DILocation(line: 712, column: 34, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1474, file: !61, line: 712, column: 11)
!1876 = !DILocation(line: 715, column: 35, scope: !1875)
!1877 = !DILocation(line: 715, column: 17, scope: !1875)
!1878 = !DILocation(line: 715, column: 47, scope: !1875)
!1879 = !DILocation(line: 715, column: 65, scope: !1875)
!1880 = !DILocation(line: 716, column: 11, scope: !1875)
!1881 = !DILocation(line: 712, column: 11, scope: !1474)
!1882 = !DILocation(line: 400, column: 10, scope: !1476)
!1883 = !DILocation(line: 719, column: 5, scope: !1474)
!1884 = !DILocation(line: 720, column: 7, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1474, file: !61, line: 720, column: 7)
!1886 = !DILocation(line: 720, column: 7, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1885, file: !61, line: 720, column: 7)
!1888 = !DILocation(line: 720, column: 7, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !61, line: 720, column: 7)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !61, line: 720, column: 7)
!1891 = distinct !DILexicalBlock(scope: !1887, file: !61, line: 720, column: 7)
!1892 = !DILocation(line: 720, column: 7, scope: !1890)
!1893 = !DILocation(line: 720, column: 7, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !61, line: 720, column: 7)
!1895 = distinct !DILexicalBlock(scope: !1891, file: !61, line: 720, column: 7)
!1896 = !DILocation(line: 720, column: 7, scope: !1895)
!1897 = !DILocation(line: 720, column: 7, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !61, line: 720, column: 7)
!1899 = distinct !DILexicalBlock(scope: !1891, file: !61, line: 720, column: 7)
!1900 = !DILocation(line: 720, column: 7, scope: !1899)
!1901 = !DILocation(line: 720, column: 7, scope: !1891)
!1902 = !DILocation(line: 720, column: 7, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !61, line: 720, column: 7)
!1904 = distinct !DILexicalBlock(scope: !1885, file: !61, line: 720, column: 7)
!1905 = !DILocation(line: 720, column: 7, scope: !1904)
!1906 = !DILocation(line: 722, column: 5, scope: !1474)
!1907 = !DILocation(line: 723, column: 7, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !61, line: 723, column: 7)
!1909 = distinct !DILexicalBlock(scope: !1474, file: !61, line: 723, column: 7)
!1910 = !DILocation(line: 424, column: 9, scope: !1474)
!1911 = !DILocation(line: 723, column: 7, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !61, line: 723, column: 7)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !61, line: 723, column: 7)
!1914 = distinct !DILexicalBlock(scope: !1908, file: !61, line: 723, column: 7)
!1915 = !DILocation(line: 723, column: 7, scope: !1913)
!1916 = !DILocation(line: 723, column: 7, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !61, line: 723, column: 7)
!1918 = distinct !DILexicalBlock(scope: !1914, file: !61, line: 723, column: 7)
!1919 = !DILocation(line: 723, column: 7, scope: !1918)
!1920 = !DILocation(line: 723, column: 7, scope: !1914)
!1921 = !DILocation(line: 724, column: 7, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !61, line: 724, column: 7)
!1923 = distinct !DILexicalBlock(scope: !1474, file: !61, line: 724, column: 7)
!1924 = !DILocation(line: 724, column: 7, scope: !1923)
!1925 = !DILocation(line: 726, column: 13, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1474, file: !61, line: 726, column: 11)
!1927 = !DILocation(line: 726, column: 11, scope: !1474)
!1928 = !DILocation(line: 728, column: 5, scope: !1475)
!1929 = !DILocation(line: 400, column: 75, scope: !1475)
!1930 = !DILocation(line: 400, column: 3, scope: !1475)
!1931 = distinct !{!1931, !1588, !1932, !879}
!1932 = !DILocation(line: 728, column: 5, scope: !1476)
!1933 = !DILocation(line: 730, column: 11, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1447, file: !61, line: 730, column: 7)
!1935 = !DILocation(line: 730, column: 16, scope: !1934)
!1936 = !DILocation(line: 738, column: 51, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1447, file: !61, line: 738, column: 7)
!1938 = !DILocation(line: 741, column: 11, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !61, line: 741, column: 11)
!1940 = distinct !DILexicalBlock(scope: !1937, file: !61, line: 740, column: 5)
!1941 = !DILocation(line: 741, column: 11, scope: !1940)
!1942 = !DILocation(line: 742, column: 16, scope: !1939)
!1943 = !DILocation(line: 742, column: 9, scope: !1939)
!1944 = !DILocation(line: 746, column: 18, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1939, file: !61, line: 746, column: 16)
!1946 = !DILocation(line: 746, column: 29, scope: !1945)
!1947 = !DILocation(line: 755, column: 7, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1447, file: !61, line: 755, column: 7)
!1949 = !DILocation(line: 755, column: 20, scope: !1948)
!1950 = !DILocation(line: 756, column: 12, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !61, line: 756, column: 5)
!1952 = distinct !DILexicalBlock(scope: !1948, file: !61, line: 756, column: 5)
!1953 = !DILocation(line: 756, column: 5, scope: !1952)
!1954 = !DILocation(line: 757, column: 7, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !61, line: 757, column: 7)
!1956 = distinct !DILexicalBlock(scope: !1951, file: !61, line: 757, column: 7)
!1957 = !DILocation(line: 757, column: 7, scope: !1956)
!1958 = !DILocation(line: 756, column: 39, scope: !1951)
!1959 = distinct !{!1959, !1953, !1960, !879}
!1960 = !DILocation(line: 757, column: 7, scope: !1952)
!1961 = !DILocation(line: 759, column: 11, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1447, file: !61, line: 759, column: 7)
!1963 = !DILocation(line: 759, column: 7, scope: !1447)
!1964 = !DILocation(line: 760, column: 5, scope: !1962)
!1965 = !DILocation(line: 760, column: 17, scope: !1962)
!1966 = !DILocation(line: 763, column: 2, scope: !1447)
!1967 = !DILocation(line: 766, column: 51, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1447, file: !61, line: 766, column: 7)
!1969 = !DILocation(line: 766, column: 21, scope: !1968)
!1970 = !DILocation(line: 770, column: 42, scope: !1447)
!1971 = !DILocation(line: 768, column: 10, scope: !1447)
!1972 = !DILocation(line: 768, column: 3, scope: !1447)
!1973 = !DILocation(line: 772, column: 1, scope: !1447)
!1974 = distinct !DISubprogram(name: "gettext_quote", scope: !61, file: !61, line: 207, type: !1975, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1977)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!23, !23, !63}
!1977 = !{!1978, !1979, !1980, !1981}
!1978 = !DILocalVariable(name: "msgid", arg: 1, scope: !1974, file: !61, line: 207, type: !23)
!1979 = !DILocalVariable(name: "s", arg: 2, scope: !1974, file: !61, line: 207, type: !63)
!1980 = !DILocalVariable(name: "translation", scope: !1974, file: !61, line: 209, type: !23)
!1981 = !DILocalVariable(name: "locale_code", scope: !1974, file: !61, line: 210, type: !23)
!1982 = !DILocation(line: 0, scope: !1974)
!1983 = !DILocation(line: 209, column: 29, scope: !1974)
!1984 = !DILocation(line: 212, column: 19, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1974, file: !61, line: 212, column: 7)
!1986 = !DILocation(line: 212, column: 7, scope: !1974)
!1987 = !DILocation(line: 233, column: 17, scope: !1974)
!1988 = !DILocalVariable(name: "s1", arg: 1, scope: !1989, file: !1990, line: 160, type: !23)
!1989 = distinct !DISubprogram(name: "strcaseeq0", scope: !1990, file: !1990, line: 160, type: !1991, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1993)
!1990 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!26, !23, !23, !14, !14, !14, !14, !14, !14, !14, !14, !14}
!1993 = !{!1988, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003}
!1994 = !DILocalVariable(name: "s2", arg: 2, scope: !1989, file: !1990, line: 160, type: !23)
!1995 = !DILocalVariable(name: "s20", arg: 3, scope: !1989, file: !1990, line: 160, type: !14)
!1996 = !DILocalVariable(name: "s21", arg: 4, scope: !1989, file: !1990, line: 160, type: !14)
!1997 = !DILocalVariable(name: "s22", arg: 5, scope: !1989, file: !1990, line: 160, type: !14)
!1998 = !DILocalVariable(name: "s23", arg: 6, scope: !1989, file: !1990, line: 160, type: !14)
!1999 = !DILocalVariable(name: "s24", arg: 7, scope: !1989, file: !1990, line: 160, type: !14)
!2000 = !DILocalVariable(name: "s25", arg: 8, scope: !1989, file: !1990, line: 160, type: !14)
!2001 = !DILocalVariable(name: "s26", arg: 9, scope: !1989, file: !1990, line: 160, type: !14)
!2002 = !DILocalVariable(name: "s27", arg: 10, scope: !1989, file: !1990, line: 160, type: !14)
!2003 = !DILocalVariable(name: "s28", arg: 11, scope: !1989, file: !1990, line: 160, type: !14)
!2004 = !DILocation(line: 0, scope: !1989, inlinedAt: !2005)
!2005 = distinct !DILocation(line: 234, column: 7, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1974, file: !61, line: 234, column: 7)
!2007 = !DILocation(line: 162, column: 7, scope: !2008, inlinedAt: !2005)
!2008 = distinct !DILexicalBlock(scope: !1989, file: !1990, line: 162, column: 7)
!2009 = !DILocalVariable(name: "s1", arg: 1, scope: !2010, file: !1990, line: 146, type: !23)
!2010 = distinct !DISubprogram(name: "strcaseeq1", scope: !1990, file: !1990, line: 146, type: !2011, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !2013)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!26, !23, !23, !14, !14, !14, !14, !14, !14, !14, !14}
!2013 = !{!2009, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022}
!2014 = !DILocalVariable(name: "s2", arg: 2, scope: !2010, file: !1990, line: 146, type: !23)
!2015 = !DILocalVariable(name: "s21", arg: 3, scope: !2010, file: !1990, line: 146, type: !14)
!2016 = !DILocalVariable(name: "s22", arg: 4, scope: !2010, file: !1990, line: 146, type: !14)
!2017 = !DILocalVariable(name: "s23", arg: 5, scope: !2010, file: !1990, line: 146, type: !14)
!2018 = !DILocalVariable(name: "s24", arg: 6, scope: !2010, file: !1990, line: 146, type: !14)
!2019 = !DILocalVariable(name: "s25", arg: 7, scope: !2010, file: !1990, line: 146, type: !14)
!2020 = !DILocalVariable(name: "s26", arg: 8, scope: !2010, file: !1990, line: 146, type: !14)
!2021 = !DILocalVariable(name: "s27", arg: 9, scope: !2010, file: !1990, line: 146, type: !14)
!2022 = !DILocalVariable(name: "s28", arg: 10, scope: !2010, file: !1990, line: 146, type: !14)
!2023 = !DILocation(line: 0, scope: !2010, inlinedAt: !2024)
!2024 = distinct !DILocation(line: 167, column: 16, scope: !2025, inlinedAt: !2005)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !1990, line: 164, column: 11)
!2026 = distinct !DILexicalBlock(scope: !2008, file: !1990, line: 163, column: 5)
!2027 = !DILocation(line: 148, column: 7, scope: !2028, inlinedAt: !2024)
!2028 = distinct !DILexicalBlock(scope: !2010, file: !1990, line: 148, column: 7)
!2029 = !DILocalVariable(name: "s1", arg: 1, scope: !2030, file: !1990, line: 132, type: !23)
!2030 = distinct !DISubprogram(name: "strcaseeq2", scope: !1990, file: !1990, line: 132, type: !2031, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !2033)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!26, !23, !23, !14, !14, !14, !14, !14, !14, !14}
!2033 = !{!2029, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041}
!2034 = !DILocalVariable(name: "s2", arg: 2, scope: !2030, file: !1990, line: 132, type: !23)
!2035 = !DILocalVariable(name: "s22", arg: 3, scope: !2030, file: !1990, line: 132, type: !14)
!2036 = !DILocalVariable(name: "s23", arg: 4, scope: !2030, file: !1990, line: 132, type: !14)
!2037 = !DILocalVariable(name: "s24", arg: 5, scope: !2030, file: !1990, line: 132, type: !14)
!2038 = !DILocalVariable(name: "s25", arg: 6, scope: !2030, file: !1990, line: 132, type: !14)
!2039 = !DILocalVariable(name: "s26", arg: 7, scope: !2030, file: !1990, line: 132, type: !14)
!2040 = !DILocalVariable(name: "s27", arg: 8, scope: !2030, file: !1990, line: 132, type: !14)
!2041 = !DILocalVariable(name: "s28", arg: 9, scope: !2030, file: !1990, line: 132, type: !14)
!2042 = !DILocation(line: 0, scope: !2030, inlinedAt: !2043)
!2043 = distinct !DILocation(line: 153, column: 16, scope: !2044, inlinedAt: !2024)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !1990, line: 150, column: 11)
!2045 = distinct !DILexicalBlock(scope: !2028, file: !1990, line: 149, column: 5)
!2046 = !DILocation(line: 134, column: 7, scope: !2047, inlinedAt: !2043)
!2047 = distinct !DILexicalBlock(scope: !2030, file: !1990, line: 134, column: 7)
!2048 = !DILocalVariable(name: "s1", arg: 1, scope: !2049, file: !1990, line: 118, type: !23)
!2049 = distinct !DISubprogram(name: "strcaseeq3", scope: !1990, file: !1990, line: 118, type: !2050, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !2052)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!26, !23, !23, !14, !14, !14, !14, !14, !14}
!2052 = !{!2048, !2053, !2054, !2055, !2056, !2057, !2058, !2059}
!2053 = !DILocalVariable(name: "s2", arg: 2, scope: !2049, file: !1990, line: 118, type: !23)
!2054 = !DILocalVariable(name: "s23", arg: 3, scope: !2049, file: !1990, line: 118, type: !14)
!2055 = !DILocalVariable(name: "s24", arg: 4, scope: !2049, file: !1990, line: 118, type: !14)
!2056 = !DILocalVariable(name: "s25", arg: 5, scope: !2049, file: !1990, line: 118, type: !14)
!2057 = !DILocalVariable(name: "s26", arg: 6, scope: !2049, file: !1990, line: 118, type: !14)
!2058 = !DILocalVariable(name: "s27", arg: 7, scope: !2049, file: !1990, line: 118, type: !14)
!2059 = !DILocalVariable(name: "s28", arg: 8, scope: !2049, file: !1990, line: 118, type: !14)
!2060 = !DILocation(line: 0, scope: !2049, inlinedAt: !2061)
!2061 = distinct !DILocation(line: 139, column: 16, scope: !2062, inlinedAt: !2043)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !1990, line: 136, column: 11)
!2063 = distinct !DILexicalBlock(scope: !2047, file: !1990, line: 135, column: 5)
!2064 = !DILocation(line: 120, column: 7, scope: !2065, inlinedAt: !2061)
!2065 = distinct !DILexicalBlock(scope: !2049, file: !1990, line: 120, column: 7)
!2066 = !DILocation(line: 120, column: 7, scope: !2049, inlinedAt: !2061)
!2067 = !DILocalVariable(name: "s1", arg: 1, scope: !2068, file: !1990, line: 104, type: !23)
!2068 = distinct !DISubprogram(name: "strcaseeq4", scope: !1990, file: !1990, line: 104, type: !2069, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !2071)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!26, !23, !23, !14, !14, !14, !14, !14}
!2071 = !{!2067, !2072, !2073, !2074, !2075, !2076, !2077}
!2072 = !DILocalVariable(name: "s2", arg: 2, scope: !2068, file: !1990, line: 104, type: !23)
!2073 = !DILocalVariable(name: "s24", arg: 3, scope: !2068, file: !1990, line: 104, type: !14)
!2074 = !DILocalVariable(name: "s25", arg: 4, scope: !2068, file: !1990, line: 104, type: !14)
!2075 = !DILocalVariable(name: "s26", arg: 5, scope: !2068, file: !1990, line: 104, type: !14)
!2076 = !DILocalVariable(name: "s27", arg: 6, scope: !2068, file: !1990, line: 104, type: !14)
!2077 = !DILocalVariable(name: "s28", arg: 7, scope: !2068, file: !1990, line: 104, type: !14)
!2078 = !DILocation(line: 0, scope: !2068, inlinedAt: !2079)
!2079 = distinct !DILocation(line: 125, column: 16, scope: !2080, inlinedAt: !2061)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !1990, line: 122, column: 11)
!2081 = distinct !DILexicalBlock(scope: !2065, file: !1990, line: 121, column: 5)
!2082 = !DILocation(line: 106, column: 7, scope: !2083, inlinedAt: !2079)
!2083 = distinct !DILexicalBlock(scope: !2068, file: !1990, line: 106, column: 7)
!2084 = !DILocation(line: 106, column: 7, scope: !2068, inlinedAt: !2079)
!2085 = !DILocalVariable(name: "s1", arg: 1, scope: !2086, file: !1990, line: 90, type: !23)
!2086 = distinct !DISubprogram(name: "strcaseeq5", scope: !1990, file: !1990, line: 90, type: !2087, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !2089)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!26, !23, !23, !14, !14, !14, !14}
!2089 = !{!2085, !2090, !2091, !2092, !2093, !2094}
!2090 = !DILocalVariable(name: "s2", arg: 2, scope: !2086, file: !1990, line: 90, type: !23)
!2091 = !DILocalVariable(name: "s25", arg: 3, scope: !2086, file: !1990, line: 90, type: !14)
!2092 = !DILocalVariable(name: "s26", arg: 4, scope: !2086, file: !1990, line: 90, type: !14)
!2093 = !DILocalVariable(name: "s27", arg: 5, scope: !2086, file: !1990, line: 90, type: !14)
!2094 = !DILocalVariable(name: "s28", arg: 6, scope: !2086, file: !1990, line: 90, type: !14)
!2095 = !DILocation(line: 0, scope: !2086, inlinedAt: !2096)
!2096 = distinct !DILocation(line: 111, column: 16, scope: !2097, inlinedAt: !2079)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !1990, line: 108, column: 11)
!2098 = distinct !DILexicalBlock(scope: !2083, file: !1990, line: 107, column: 5)
!2099 = !DILocation(line: 92, column: 7, scope: !2100, inlinedAt: !2096)
!2100 = distinct !DILexicalBlock(scope: !2086, file: !1990, line: 92, column: 7)
!2101 = !DILocation(line: 92, column: 7, scope: !2086, inlinedAt: !2096)
!2102 = !DILocation(line: 235, column: 12, scope: !2006)
!2103 = !DILocation(line: 235, column: 21, scope: !2006)
!2104 = !DILocation(line: 235, column: 5, scope: !2006)
!2105 = !DILocation(line: 0, scope: !2010, inlinedAt: !2106)
!2106 = distinct !DILocation(line: 167, column: 16, scope: !2025, inlinedAt: !2107)
!2107 = distinct !DILocation(line: 236, column: 7, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !1974, file: !61, line: 236, column: 7)
!2109 = !DILocation(line: 148, column: 7, scope: !2028, inlinedAt: !2106)
!2110 = !DILocation(line: 0, scope: !2030, inlinedAt: !2111)
!2111 = distinct !DILocation(line: 153, column: 16, scope: !2044, inlinedAt: !2106)
!2112 = !DILocation(line: 134, column: 7, scope: !2047, inlinedAt: !2111)
!2113 = !DILocation(line: 134, column: 7, scope: !2030, inlinedAt: !2111)
!2114 = !DILocation(line: 0, scope: !2049, inlinedAt: !2115)
!2115 = distinct !DILocation(line: 139, column: 16, scope: !2062, inlinedAt: !2111)
!2116 = !DILocation(line: 120, column: 7, scope: !2065, inlinedAt: !2115)
!2117 = !DILocation(line: 120, column: 7, scope: !2049, inlinedAt: !2115)
!2118 = !DILocation(line: 0, scope: !2068, inlinedAt: !2119)
!2119 = distinct !DILocation(line: 125, column: 16, scope: !2080, inlinedAt: !2115)
!2120 = !DILocation(line: 106, column: 7, scope: !2083, inlinedAt: !2119)
!2121 = !DILocation(line: 106, column: 7, scope: !2068, inlinedAt: !2119)
!2122 = !DILocation(line: 0, scope: !2086, inlinedAt: !2123)
!2123 = distinct !DILocation(line: 111, column: 16, scope: !2097, inlinedAt: !2119)
!2124 = !DILocation(line: 92, column: 7, scope: !2100, inlinedAt: !2123)
!2125 = !DILocation(line: 92, column: 7, scope: !2086, inlinedAt: !2123)
!2126 = !DILocalVariable(name: "s1", arg: 1, scope: !2127, file: !1990, line: 76, type: !23)
!2127 = distinct !DISubprogram(name: "strcaseeq6", scope: !1990, file: !1990, line: 76, type: !2128, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !2130)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!26, !23, !23, !14, !14, !14}
!2130 = !{!2126, !2131, !2132, !2133, !2134}
!2131 = !DILocalVariable(name: "s2", arg: 2, scope: !2127, file: !1990, line: 76, type: !23)
!2132 = !DILocalVariable(name: "s26", arg: 3, scope: !2127, file: !1990, line: 76, type: !14)
!2133 = !DILocalVariable(name: "s27", arg: 4, scope: !2127, file: !1990, line: 76, type: !14)
!2134 = !DILocalVariable(name: "s28", arg: 5, scope: !2127, file: !1990, line: 76, type: !14)
!2135 = !DILocation(line: 0, scope: !2127, inlinedAt: !2136)
!2136 = distinct !DILocation(line: 97, column: 16, scope: !2137, inlinedAt: !2123)
!2137 = distinct !DILexicalBlock(scope: !2138, file: !1990, line: 94, column: 11)
!2138 = distinct !DILexicalBlock(scope: !2100, file: !1990, line: 93, column: 5)
!2139 = !DILocation(line: 78, column: 7, scope: !2140, inlinedAt: !2136)
!2140 = distinct !DILexicalBlock(scope: !2127, file: !1990, line: 78, column: 7)
!2141 = !DILocation(line: 78, column: 7, scope: !2127, inlinedAt: !2136)
!2142 = !DILocalVariable(name: "s1", arg: 1, scope: !2143, file: !1990, line: 62, type: !23)
!2143 = distinct !DISubprogram(name: "strcaseeq7", scope: !1990, file: !1990, line: 62, type: !2144, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !2146)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!26, !23, !23, !14, !14}
!2146 = !{!2142, !2147, !2148, !2149}
!2147 = !DILocalVariable(name: "s2", arg: 2, scope: !2143, file: !1990, line: 62, type: !23)
!2148 = !DILocalVariable(name: "s27", arg: 3, scope: !2143, file: !1990, line: 62, type: !14)
!2149 = !DILocalVariable(name: "s28", arg: 4, scope: !2143, file: !1990, line: 62, type: !14)
!2150 = !DILocation(line: 0, scope: !2143, inlinedAt: !2151)
!2151 = distinct !DILocation(line: 83, column: 16, scope: !2152, inlinedAt: !2136)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !1990, line: 80, column: 11)
!2153 = distinct !DILexicalBlock(scope: !2140, file: !1990, line: 79, column: 5)
!2154 = !DILocation(line: 64, column: 7, scope: !2155, inlinedAt: !2151)
!2155 = distinct !DILexicalBlock(scope: !2143, file: !1990, line: 64, column: 7)
!2156 = !DILocation(line: 236, column: 7, scope: !1974)
!2157 = !DILocation(line: 237, column: 12, scope: !2108)
!2158 = !DILocation(line: 237, column: 21, scope: !2108)
!2159 = !DILocation(line: 237, column: 5, scope: !2108)
!2160 = !DILocation(line: 239, column: 13, scope: !1974)
!2161 = !DILocation(line: 239, column: 11, scope: !1974)
!2162 = !DILocation(line: 239, column: 3, scope: !1974)
!2163 = !DILocation(line: 240, column: 1, scope: !1974)
!2164 = !DISubprogram(name: "iswprint", scope: !2165, file: !2165, line: 120, type: !2166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!2165 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!26, !7}
!2168 = !DISubprogram(name: "mbsinit", scope: !2169, file: !2169, line: 292, type: !2170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!2169 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!26, !2172}
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1492)
!2174 = distinct !DISubprogram(name: "quotearg_alloc", scope: !61, file: !61, line: 799, type: !2175, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !2177)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!13, !23, !99, !1338}
!2177 = !{!2178, !2179, !2180}
!2178 = !DILocalVariable(name: "arg", arg: 1, scope: !2174, file: !61, line: 799, type: !23)
!2179 = !DILocalVariable(name: "argsize", arg: 2, scope: !2174, file: !61, line: 799, type: !99)
!2180 = !DILocalVariable(name: "o", arg: 3, scope: !2174, file: !61, line: 800, type: !1338)
!2181 = !DILocation(line: 0, scope: !2174)
!2182 = !DILocalVariable(name: "arg", arg: 1, scope: !2183, file: !61, line: 812, type: !23)
!2183 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !61, file: !61, line: 812, type: !2184, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !2186)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!13, !23, !99, !387, !1338}
!2186 = !{!2182, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194}
!2187 = !DILocalVariable(name: "argsize", arg: 2, scope: !2183, file: !61, line: 812, type: !99)
!2188 = !DILocalVariable(name: "size", arg: 3, scope: !2183, file: !61, line: 812, type: !387)
!2189 = !DILocalVariable(name: "o", arg: 4, scope: !2183, file: !61, line: 813, type: !1338)
!2190 = !DILocalVariable(name: "p", scope: !2183, file: !61, line: 815, type: !1338)
!2191 = !DILocalVariable(name: "e", scope: !2183, file: !61, line: 816, type: !26)
!2192 = !DILocalVariable(name: "flags", scope: !2183, file: !61, line: 818, type: !26)
!2193 = !DILocalVariable(name: "bufsize", scope: !2183, file: !61, line: 819, type: !99)
!2194 = !DILocalVariable(name: "buf", scope: !2183, file: !61, line: 823, type: !13)
!2195 = !DILocation(line: 0, scope: !2183, inlinedAt: !2196)
!2196 = distinct !DILocation(line: 802, column: 10, scope: !2174)
!2197 = !DILocation(line: 815, column: 37, scope: !2183, inlinedAt: !2196)
!2198 = !DILocation(line: 816, column: 11, scope: !2183, inlinedAt: !2196)
!2199 = !DILocation(line: 818, column: 18, scope: !2183, inlinedAt: !2196)
!2200 = !DILocation(line: 818, column: 24, scope: !2183, inlinedAt: !2196)
!2201 = !DILocation(line: 819, column: 69, scope: !2183, inlinedAt: !2196)
!2202 = !DILocation(line: 820, column: 53, scope: !2183, inlinedAt: !2196)
!2203 = !DILocation(line: 821, column: 49, scope: !2183, inlinedAt: !2196)
!2204 = !DILocation(line: 822, column: 49, scope: !2183, inlinedAt: !2196)
!2205 = !DILocation(line: 819, column: 20, scope: !2183, inlinedAt: !2196)
!2206 = !DILocation(line: 822, column: 62, scope: !2183, inlinedAt: !2196)
!2207 = !DILocalVariable(name: "n", arg: 1, scope: !2208, file: !383, line: 216, type: !99)
!2208 = distinct !DISubprogram(name: "xcharalloc", scope: !383, file: !383, line: 216, type: !2209, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !2211)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!13, !99}
!2211 = !{!2207}
!2212 = !DILocation(line: 0, scope: !2208, inlinedAt: !2213)
!2213 = distinct !DILocation(line: 823, column: 15, scope: !2183, inlinedAt: !2196)
!2214 = !DILocation(line: 218, column: 10, scope: !2208, inlinedAt: !2213)
!2215 = !DILocation(line: 824, column: 60, scope: !2183, inlinedAt: !2196)
!2216 = !DILocation(line: 826, column: 32, scope: !2183, inlinedAt: !2196)
!2217 = !DILocation(line: 826, column: 47, scope: !2183, inlinedAt: !2196)
!2218 = !DILocation(line: 824, column: 3, scope: !2183, inlinedAt: !2196)
!2219 = !DILocation(line: 827, column: 9, scope: !2183, inlinedAt: !2196)
!2220 = !DILocation(line: 802, column: 3, scope: !2174)
!2221 = !DILocation(line: 0, scope: !2183)
!2222 = !DILocation(line: 815, column: 37, scope: !2183)
!2223 = !DILocation(line: 816, column: 11, scope: !2183)
!2224 = !DILocation(line: 818, column: 18, scope: !2183)
!2225 = !DILocation(line: 818, column: 27, scope: !2183)
!2226 = !DILocation(line: 818, column: 24, scope: !2183)
!2227 = !DILocation(line: 819, column: 69, scope: !2183)
!2228 = !DILocation(line: 820, column: 53, scope: !2183)
!2229 = !DILocation(line: 821, column: 49, scope: !2183)
!2230 = !DILocation(line: 822, column: 49, scope: !2183)
!2231 = !DILocation(line: 819, column: 20, scope: !2183)
!2232 = !DILocation(line: 822, column: 62, scope: !2183)
!2233 = !DILocation(line: 0, scope: !2208, inlinedAt: !2234)
!2234 = distinct !DILocation(line: 823, column: 15, scope: !2183)
!2235 = !DILocation(line: 218, column: 10, scope: !2208, inlinedAt: !2234)
!2236 = !DILocation(line: 824, column: 60, scope: !2183)
!2237 = !DILocation(line: 826, column: 32, scope: !2183)
!2238 = !DILocation(line: 826, column: 47, scope: !2183)
!2239 = !DILocation(line: 824, column: 3, scope: !2183)
!2240 = !DILocation(line: 827, column: 9, scope: !2183)
!2241 = !DILocation(line: 828, column: 7, scope: !2183)
!2242 = !DILocation(line: 829, column: 11, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2183, file: !61, line: 828, column: 7)
!2244 = !{!2245, !2245, i64 0}
!2245 = !{!"long", !838, i64 0}
!2246 = !DILocation(line: 829, column: 5, scope: !2243)
!2247 = !DILocation(line: 830, column: 3, scope: !2183)
!2248 = distinct !DISubprogram(name: "quotearg_free", scope: !61, file: !61, line: 848, type: !1025, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !2249)
!2249 = !{!2250, !2251}
!2250 = !DILocalVariable(name: "sv", scope: !2248, file: !61, line: 850, type: !130)
!2251 = !DILocalVariable(name: "i", scope: !2248, file: !61, line: 851, type: !26)
!2252 = !DILocation(line: 850, column: 24, scope: !2248)
!2253 = !DILocation(line: 0, scope: !2248)
!2254 = !DILocation(line: 852, column: 19, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !61, line: 852, column: 3)
!2256 = distinct !DILexicalBlock(scope: !2248, file: !61, line: 852, column: 3)
!2257 = !DILocation(line: 852, column: 17, scope: !2255)
!2258 = !DILocation(line: 852, column: 3, scope: !2256)
!2259 = !DILocation(line: 853, column: 17, scope: !2255)
!2260 = !{!2261, !837, i64 8}
!2261 = !{!"slotvec", !2245, i64 0, !837, i64 8}
!2262 = !DILocation(line: 853, column: 5, scope: !2255)
!2263 = !DILocation(line: 852, column: 28, scope: !2255)
!2264 = distinct !{!2264, !2258, !2265, !879}
!2265 = !DILocation(line: 853, column: 20, scope: !2256)
!2266 = !DILocation(line: 854, column: 13, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2248, file: !61, line: 854, column: 7)
!2268 = !DILocation(line: 854, column: 17, scope: !2267)
!2269 = !DILocation(line: 854, column: 7, scope: !2248)
!2270 = !DILocation(line: 856, column: 7, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2267, file: !61, line: 855, column: 5)
!2272 = !DILocation(line: 857, column: 21, scope: !2271)
!2273 = !{!2261, !2245, i64 0}
!2274 = !DILocation(line: 858, column: 20, scope: !2271)
!2275 = !DILocation(line: 859, column: 5, scope: !2271)
!2276 = !DILocation(line: 860, column: 10, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2248, file: !61, line: 860, column: 7)
!2278 = !DILocation(line: 860, column: 7, scope: !2248)
!2279 = !DILocation(line: 862, column: 13, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2277, file: !61, line: 861, column: 5)
!2281 = !DILocation(line: 862, column: 7, scope: !2280)
!2282 = !DILocation(line: 863, column: 15, scope: !2280)
!2283 = !DILocation(line: 864, column: 5, scope: !2280)
!2284 = !DILocation(line: 865, column: 10, scope: !2248)
!2285 = !DILocation(line: 866, column: 1, scope: !2248)
!2286 = distinct !DISubprogram(name: "quotearg_n", scope: !61, file: !61, line: 931, type: !961, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !2287)
!2287 = !{!2288, !2289}
!2288 = !DILocalVariable(name: "n", arg: 1, scope: !2286, file: !61, line: 931, type: !26)
!2289 = !DILocalVariable(name: "arg", arg: 2, scope: !2286, file: !61, line: 931, type: !23)
!2290 = !DILocation(line: 0, scope: !2286)
!2291 = !DILocation(line: 933, column: 10, scope: !2286)
!2292 = !DILocation(line: 933, column: 3, scope: !2286)
!2293 = distinct !DISubprogram(name: "quotearg_n_options", scope: !61, file: !61, line: 877, type: !2294, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !2296)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!13, !26, !23, !99, !1338}
!2296 = !{!2297, !2298, !2299, !2300, !2301, !2302, !2303, !2306, !2307, !2309, !2310, !2311}
!2297 = !DILocalVariable(name: "n", arg: 1, scope: !2293, file: !61, line: 877, type: !26)
!2298 = !DILocalVariable(name: "arg", arg: 2, scope: !2293, file: !61, line: 877, type: !23)
!2299 = !DILocalVariable(name: "argsize", arg: 3, scope: !2293, file: !61, line: 877, type: !99)
!2300 = !DILocalVariable(name: "options", arg: 4, scope: !2293, file: !61, line: 878, type: !1338)
!2301 = !DILocalVariable(name: "e", scope: !2293, file: !61, line: 880, type: !26)
!2302 = !DILocalVariable(name: "sv", scope: !2293, file: !61, line: 882, type: !130)
!2303 = !DILocalVariable(name: "preallocated", scope: !2304, file: !61, line: 889, type: !45)
!2304 = distinct !DILexicalBlock(scope: !2305, file: !61, line: 888, column: 5)
!2305 = distinct !DILexicalBlock(scope: !2293, file: !61, line: 887, column: 7)
!2306 = !DILocalVariable(name: "nmax", scope: !2304, file: !61, line: 890, type: !26)
!2307 = !DILocalVariable(name: "size", scope: !2308, file: !61, line: 903, type: !99)
!2308 = distinct !DILexicalBlock(scope: !2293, file: !61, line: 902, column: 3)
!2309 = !DILocalVariable(name: "val", scope: !2308, file: !61, line: 904, type: !13)
!2310 = !DILocalVariable(name: "flags", scope: !2308, file: !61, line: 906, type: !26)
!2311 = !DILocalVariable(name: "qsize", scope: !2308, file: !61, line: 907, type: !99)
!2312 = !DILocation(line: 0, scope: !2293)
!2313 = !DILocation(line: 880, column: 11, scope: !2293)
!2314 = !DILocation(line: 882, column: 24, scope: !2293)
!2315 = !DILocation(line: 884, column: 9, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2293, file: !61, line: 884, column: 7)
!2317 = !DILocation(line: 884, column: 7, scope: !2293)
!2318 = !DILocation(line: 885, column: 5, scope: !2316)
!2319 = !DILocation(line: 887, column: 7, scope: !2305)
!2320 = !DILocation(line: 887, column: 14, scope: !2305)
!2321 = !DILocation(line: 887, column: 7, scope: !2293)
!2322 = !DILocation(line: 889, column: 31, scope: !2304)
!2323 = !DILocation(line: 0, scope: !2304)
!2324 = !DILocation(line: 892, column: 16, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2304, file: !61, line: 892, column: 11)
!2326 = !DILocation(line: 892, column: 11, scope: !2304)
!2327 = !DILocation(line: 893, column: 9, scope: !2325)
!2328 = !DILocation(line: 895, column: 32, scope: !2304)
!2329 = !DILocation(line: 895, column: 61, scope: !2304)
!2330 = !DILocation(line: 895, column: 66, scope: !2304)
!2331 = !DILocation(line: 895, column: 22, scope: !2304)
!2332 = !DILocation(line: 895, column: 15, scope: !2304)
!2333 = !DILocation(line: 896, column: 11, scope: !2304)
!2334 = !DILocation(line: 897, column: 15, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2304, file: !61, line: 896, column: 11)
!2336 = !{i64 0, i64 8, !2244, i64 8, i64 8, !836}
!2337 = !DILocation(line: 897, column: 9, scope: !2335)
!2338 = !DILocation(line: 898, column: 20, scope: !2304)
!2339 = !DILocation(line: 898, column: 18, scope: !2304)
!2340 = !DILocation(line: 898, column: 15, scope: !2304)
!2341 = !DILocation(line: 898, column: 38, scope: !2304)
!2342 = !DILocation(line: 898, column: 31, scope: !2304)
!2343 = !DILocation(line: 898, column: 48, scope: !2304)
!2344 = !DILocation(line: 0, scope: !1735, inlinedAt: !2345)
!2345 = distinct !DILocation(line: 898, column: 7, scope: !2304)
!2346 = !DILocation(line: 59, column: 10, scope: !1735, inlinedAt: !2345)
!2347 = !DILocation(line: 899, column: 14, scope: !2304)
!2348 = !DILocation(line: 900, column: 5, scope: !2304)
!2349 = !DILocation(line: 903, column: 19, scope: !2308)
!2350 = !DILocation(line: 903, column: 25, scope: !2308)
!2351 = !DILocation(line: 0, scope: !2308)
!2352 = !DILocation(line: 904, column: 23, scope: !2308)
!2353 = !DILocation(line: 906, column: 26, scope: !2308)
!2354 = !DILocation(line: 906, column: 32, scope: !2308)
!2355 = !DILocation(line: 908, column: 55, scope: !2308)
!2356 = !DILocation(line: 909, column: 46, scope: !2308)
!2357 = !DILocation(line: 910, column: 55, scope: !2308)
!2358 = !DILocation(line: 911, column: 55, scope: !2308)
!2359 = !DILocation(line: 907, column: 20, scope: !2308)
!2360 = !DILocation(line: 913, column: 14, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2308, file: !61, line: 913, column: 9)
!2362 = !DILocation(line: 913, column: 9, scope: !2308)
!2363 = !DILocation(line: 915, column: 35, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2361, file: !61, line: 914, column: 7)
!2365 = !DILocation(line: 915, column: 20, scope: !2364)
!2366 = !DILocation(line: 916, column: 17, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2364, file: !61, line: 916, column: 13)
!2368 = !DILocation(line: 916, column: 13, scope: !2364)
!2369 = !DILocation(line: 917, column: 11, scope: !2367)
!2370 = !DILocation(line: 0, scope: !2208, inlinedAt: !2371)
!2371 = distinct !DILocation(line: 918, column: 27, scope: !2364)
!2372 = !DILocation(line: 218, column: 10, scope: !2208, inlinedAt: !2371)
!2373 = !DILocation(line: 918, column: 19, scope: !2364)
!2374 = !DILocation(line: 919, column: 69, scope: !2364)
!2375 = !DILocation(line: 921, column: 44, scope: !2364)
!2376 = !DILocation(line: 922, column: 44, scope: !2364)
!2377 = !DILocation(line: 919, column: 9, scope: !2364)
!2378 = !DILocation(line: 923, column: 7, scope: !2364)
!2379 = !DILocation(line: 925, column: 11, scope: !2308)
!2380 = !DILocation(line: 926, column: 5, scope: !2308)
!2381 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !61, file: !61, line: 937, type: !2382, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !2384)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!13, !26, !23, !99}
!2384 = !{!2385, !2386, !2387}
!2385 = !DILocalVariable(name: "n", arg: 1, scope: !2381, file: !61, line: 937, type: !26)
!2386 = !DILocalVariable(name: "arg", arg: 2, scope: !2381, file: !61, line: 937, type: !23)
!2387 = !DILocalVariable(name: "argsize", arg: 3, scope: !2381, file: !61, line: 937, type: !99)
!2388 = !DILocation(line: 0, scope: !2381)
!2389 = !DILocation(line: 939, column: 10, scope: !2381)
!2390 = !DILocation(line: 939, column: 3, scope: !2381)
!2391 = distinct !DISubprogram(name: "quotearg", scope: !61, file: !61, line: 943, type: !1018, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !2392)
!2392 = !{!2393}
!2393 = !DILocalVariable(name: "arg", arg: 1, scope: !2391, file: !61, line: 943, type: !23)
!2394 = !DILocation(line: 0, scope: !2391)
!2395 = !DILocation(line: 0, scope: !2286, inlinedAt: !2396)
!2396 = distinct !DILocation(line: 945, column: 10, scope: !2391)
!2397 = !DILocation(line: 933, column: 10, scope: !2286, inlinedAt: !2396)
!2398 = !DILocation(line: 945, column: 3, scope: !2391)
!2399 = distinct !DISubprogram(name: "quotearg_mem", scope: !61, file: !61, line: 949, type: !2400, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !2402)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!13, !23, !99}
!2402 = !{!2403, !2404}
!2403 = !DILocalVariable(name: "arg", arg: 1, scope: !2399, file: !61, line: 949, type: !23)
!2404 = !DILocalVariable(name: "argsize", arg: 2, scope: !2399, file: !61, line: 949, type: !99)
!2405 = !DILocation(line: 0, scope: !2399)
!2406 = !DILocation(line: 0, scope: !2381, inlinedAt: !2407)
!2407 = distinct !DILocation(line: 951, column: 10, scope: !2399)
!2408 = !DILocation(line: 939, column: 10, scope: !2381, inlinedAt: !2407)
!2409 = !DILocation(line: 951, column: 3, scope: !2399)
!2410 = distinct !DISubprogram(name: "quotearg_n_style", scope: !61, file: !61, line: 955, type: !2411, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !2413)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!13, !26, !63, !23}
!2413 = !{!2414, !2415, !2416, !2417}
!2414 = !DILocalVariable(name: "n", arg: 1, scope: !2410, file: !61, line: 955, type: !26)
!2415 = !DILocalVariable(name: "s", arg: 2, scope: !2410, file: !61, line: 955, type: !63)
!2416 = !DILocalVariable(name: "arg", arg: 3, scope: !2410, file: !61, line: 955, type: !23)
!2417 = !DILocalVariable(name: "o", scope: !2410, file: !61, line: 957, type: !1339)
!2418 = !DILocation(line: 0, scope: !2410)
!2419 = !DILocation(line: 957, column: 3, scope: !2410)
!2420 = !DILocation(line: 957, column: 32, scope: !2410)
!2421 = !{!2422}
!2422 = distinct !{!2422, !2423, !"quoting_options_from_style: argument 0"}
!2423 = distinct !{!2423, !"quoting_options_from_style"}
!2424 = !DILocation(line: 957, column: 36, scope: !2410)
!2425 = !DILocalVariable(name: "style", arg: 1, scope: !2426, file: !61, line: 193, type: !63)
!2426 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !61, file: !61, line: 193, type: !2427, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !2429)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!111, !63}
!2429 = !{!2425, !2430}
!2430 = !DILocalVariable(name: "o", scope: !2426, file: !61, line: 195, type: !111)
!2431 = !DILocation(line: 0, scope: !2426, inlinedAt: !2432)
!2432 = distinct !DILocation(line: 957, column: 36, scope: !2410)
!2433 = !DILocation(line: 195, column: 26, scope: !2426, inlinedAt: !2432)
!2434 = !DILocation(line: 196, column: 13, scope: !2435, inlinedAt: !2432)
!2435 = distinct !DILexicalBlock(scope: !2426, file: !61, line: 196, column: 7)
!2436 = !DILocation(line: 196, column: 7, scope: !2426, inlinedAt: !2432)
!2437 = !DILocation(line: 197, column: 5, scope: !2435, inlinedAt: !2432)
!2438 = !DILocation(line: 198, column: 5, scope: !2426, inlinedAt: !2432)
!2439 = !DILocation(line: 198, column: 11, scope: !2426, inlinedAt: !2432)
!2440 = !DILocation(line: 958, column: 10, scope: !2410)
!2441 = !DILocation(line: 959, column: 1, scope: !2410)
!2442 = !DILocation(line: 958, column: 3, scope: !2410)
!2443 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !61, file: !61, line: 962, type: !2444, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !2446)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!13, !26, !63, !23, !99}
!2446 = !{!2447, !2448, !2449, !2450, !2451}
!2447 = !DILocalVariable(name: "n", arg: 1, scope: !2443, file: !61, line: 962, type: !26)
!2448 = !DILocalVariable(name: "s", arg: 2, scope: !2443, file: !61, line: 962, type: !63)
!2449 = !DILocalVariable(name: "arg", arg: 3, scope: !2443, file: !61, line: 963, type: !23)
!2450 = !DILocalVariable(name: "argsize", arg: 4, scope: !2443, file: !61, line: 963, type: !99)
!2451 = !DILocalVariable(name: "o", scope: !2443, file: !61, line: 965, type: !1339)
!2452 = !DILocation(line: 0, scope: !2443)
!2453 = !DILocation(line: 965, column: 3, scope: !2443)
!2454 = !DILocation(line: 965, column: 32, scope: !2443)
!2455 = !{!2456}
!2456 = distinct !{!2456, !2457, !"quoting_options_from_style: argument 0"}
!2457 = distinct !{!2457, !"quoting_options_from_style"}
!2458 = !DILocation(line: 965, column: 36, scope: !2443)
!2459 = !DILocation(line: 0, scope: !2426, inlinedAt: !2460)
!2460 = distinct !DILocation(line: 965, column: 36, scope: !2443)
!2461 = !DILocation(line: 195, column: 26, scope: !2426, inlinedAt: !2460)
!2462 = !DILocation(line: 196, column: 13, scope: !2435, inlinedAt: !2460)
!2463 = !DILocation(line: 196, column: 7, scope: !2426, inlinedAt: !2460)
!2464 = !DILocation(line: 197, column: 5, scope: !2435, inlinedAt: !2460)
!2465 = !DILocation(line: 198, column: 5, scope: !2426, inlinedAt: !2460)
!2466 = !DILocation(line: 198, column: 11, scope: !2426, inlinedAt: !2460)
!2467 = !DILocation(line: 966, column: 10, scope: !2443)
!2468 = !DILocation(line: 967, column: 1, scope: !2443)
!2469 = !DILocation(line: 966, column: 3, scope: !2443)
!2470 = distinct !DISubprogram(name: "quotearg_style", scope: !61, file: !61, line: 970, type: !2471, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !2473)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!13, !63, !23}
!2473 = !{!2474, !2475}
!2474 = !DILocalVariable(name: "s", arg: 1, scope: !2470, file: !61, line: 970, type: !63)
!2475 = !DILocalVariable(name: "arg", arg: 2, scope: !2470, file: !61, line: 970, type: !23)
!2476 = !DILocation(line: 0, scope: !2470)
!2477 = !DILocation(line: 0, scope: !2410, inlinedAt: !2478)
!2478 = distinct !DILocation(line: 972, column: 10, scope: !2470)
!2479 = !DILocation(line: 957, column: 3, scope: !2410, inlinedAt: !2478)
!2480 = !DILocation(line: 957, column: 32, scope: !2410, inlinedAt: !2478)
!2481 = !{!2482}
!2482 = distinct !{!2482, !2483, !"quoting_options_from_style: argument 0"}
!2483 = distinct !{!2483, !"quoting_options_from_style"}
!2484 = !DILocation(line: 957, column: 36, scope: !2410, inlinedAt: !2478)
!2485 = !DILocation(line: 0, scope: !2426, inlinedAt: !2486)
!2486 = distinct !DILocation(line: 957, column: 36, scope: !2410, inlinedAt: !2478)
!2487 = !DILocation(line: 195, column: 26, scope: !2426, inlinedAt: !2486)
!2488 = !DILocation(line: 196, column: 13, scope: !2435, inlinedAt: !2486)
!2489 = !DILocation(line: 196, column: 7, scope: !2426, inlinedAt: !2486)
!2490 = !DILocation(line: 197, column: 5, scope: !2435, inlinedAt: !2486)
!2491 = !DILocation(line: 198, column: 5, scope: !2426, inlinedAt: !2486)
!2492 = !DILocation(line: 198, column: 11, scope: !2426, inlinedAt: !2486)
!2493 = !DILocation(line: 958, column: 10, scope: !2410, inlinedAt: !2478)
!2494 = !DILocation(line: 959, column: 1, scope: !2410, inlinedAt: !2478)
!2495 = !DILocation(line: 972, column: 3, scope: !2470)
!2496 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !61, file: !61, line: 976, type: !2497, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !2499)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!13, !63, !23, !99}
!2499 = !{!2500, !2501, !2502}
!2500 = !DILocalVariable(name: "s", arg: 1, scope: !2496, file: !61, line: 976, type: !63)
!2501 = !DILocalVariable(name: "arg", arg: 2, scope: !2496, file: !61, line: 976, type: !23)
!2502 = !DILocalVariable(name: "argsize", arg: 3, scope: !2496, file: !61, line: 976, type: !99)
!2503 = !DILocation(line: 0, scope: !2496)
!2504 = !DILocation(line: 0, scope: !2443, inlinedAt: !2505)
!2505 = distinct !DILocation(line: 978, column: 10, scope: !2496)
!2506 = !DILocation(line: 965, column: 3, scope: !2443, inlinedAt: !2505)
!2507 = !DILocation(line: 965, column: 32, scope: !2443, inlinedAt: !2505)
!2508 = !{!2509}
!2509 = distinct !{!2509, !2510, !"quoting_options_from_style: argument 0"}
!2510 = distinct !{!2510, !"quoting_options_from_style"}
!2511 = !DILocation(line: 965, column: 36, scope: !2443, inlinedAt: !2505)
!2512 = !DILocation(line: 0, scope: !2426, inlinedAt: !2513)
!2513 = distinct !DILocation(line: 965, column: 36, scope: !2443, inlinedAt: !2505)
!2514 = !DILocation(line: 195, column: 26, scope: !2426, inlinedAt: !2513)
!2515 = !DILocation(line: 196, column: 13, scope: !2435, inlinedAt: !2513)
!2516 = !DILocation(line: 196, column: 7, scope: !2426, inlinedAt: !2513)
!2517 = !DILocation(line: 197, column: 5, scope: !2435, inlinedAt: !2513)
!2518 = !DILocation(line: 198, column: 5, scope: !2426, inlinedAt: !2513)
!2519 = !DILocation(line: 198, column: 11, scope: !2426, inlinedAt: !2513)
!2520 = !DILocation(line: 966, column: 10, scope: !2443, inlinedAt: !2505)
!2521 = !DILocation(line: 967, column: 1, scope: !2443, inlinedAt: !2505)
!2522 = !DILocation(line: 978, column: 3, scope: !2496)
!2523 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !61, file: !61, line: 982, type: !2524, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !2526)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!13, !23, !99, !14}
!2526 = !{!2527, !2528, !2529, !2530}
!2527 = !DILocalVariable(name: "arg", arg: 1, scope: !2523, file: !61, line: 982, type: !23)
!2528 = !DILocalVariable(name: "argsize", arg: 2, scope: !2523, file: !61, line: 982, type: !99)
!2529 = !DILocalVariable(name: "ch", arg: 3, scope: !2523, file: !61, line: 982, type: !14)
!2530 = !DILocalVariable(name: "options", scope: !2523, file: !61, line: 984, type: !111)
!2531 = !DILocation(line: 0, scope: !2523)
!2532 = !DILocation(line: 984, column: 3, scope: !2523)
!2533 = !DILocation(line: 984, column: 26, scope: !2523)
!2534 = !DILocation(line: 985, column: 13, scope: !2523)
!2535 = !{i64 0, i64 4, !1117, i64 4, i64 4, !997, i64 8, i64 32, !1117, i64 40, i64 8, !836, i64 48, i64 8, !836}
!2536 = !DILocation(line: 0, scope: !1359, inlinedAt: !2537)
!2537 = distinct !DILocation(line: 986, column: 3, scope: !2523)
!2538 = !DILocation(line: 156, column: 62, scope: !1359, inlinedAt: !2537)
!2539 = !DILocation(line: 156, column: 57, scope: !1359, inlinedAt: !2537)
!2540 = !DILocation(line: 157, column: 15, scope: !1359, inlinedAt: !2537)
!2541 = !DILocation(line: 158, column: 12, scope: !1359, inlinedAt: !2537)
!2542 = !DILocation(line: 158, column: 15, scope: !1359, inlinedAt: !2537)
!2543 = !DILocation(line: 158, column: 25, scope: !1359, inlinedAt: !2537)
!2544 = !DILocation(line: 159, column: 18, scope: !1359, inlinedAt: !2537)
!2545 = !DILocation(line: 159, column: 23, scope: !1359, inlinedAt: !2537)
!2546 = !DILocation(line: 159, column: 6, scope: !1359, inlinedAt: !2537)
!2547 = !DILocation(line: 987, column: 10, scope: !2523)
!2548 = !DILocation(line: 988, column: 1, scope: !2523)
!2549 = !DILocation(line: 987, column: 3, scope: !2523)
!2550 = distinct !DISubprogram(name: "quotearg_char", scope: !61, file: !61, line: 991, type: !2551, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !2553)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!13, !23, !14}
!2553 = !{!2554, !2555}
!2554 = !DILocalVariable(name: "arg", arg: 1, scope: !2550, file: !61, line: 991, type: !23)
!2555 = !DILocalVariable(name: "ch", arg: 2, scope: !2550, file: !61, line: 991, type: !14)
!2556 = !DILocation(line: 0, scope: !2550)
!2557 = !DILocation(line: 0, scope: !2523, inlinedAt: !2558)
!2558 = distinct !DILocation(line: 993, column: 10, scope: !2550)
!2559 = !DILocation(line: 984, column: 3, scope: !2523, inlinedAt: !2558)
!2560 = !DILocation(line: 984, column: 26, scope: !2523, inlinedAt: !2558)
!2561 = !DILocation(line: 985, column: 13, scope: !2523, inlinedAt: !2558)
!2562 = !DILocation(line: 0, scope: !1359, inlinedAt: !2563)
!2563 = distinct !DILocation(line: 986, column: 3, scope: !2523, inlinedAt: !2558)
!2564 = !DILocation(line: 156, column: 62, scope: !1359, inlinedAt: !2563)
!2565 = !DILocation(line: 156, column: 57, scope: !1359, inlinedAt: !2563)
!2566 = !DILocation(line: 157, column: 15, scope: !1359, inlinedAt: !2563)
!2567 = !DILocation(line: 158, column: 12, scope: !1359, inlinedAt: !2563)
!2568 = !DILocation(line: 158, column: 15, scope: !1359, inlinedAt: !2563)
!2569 = !DILocation(line: 158, column: 25, scope: !1359, inlinedAt: !2563)
!2570 = !DILocation(line: 159, column: 18, scope: !1359, inlinedAt: !2563)
!2571 = !DILocation(line: 159, column: 23, scope: !1359, inlinedAt: !2563)
!2572 = !DILocation(line: 159, column: 6, scope: !1359, inlinedAt: !2563)
!2573 = !DILocation(line: 987, column: 10, scope: !2523, inlinedAt: !2558)
!2574 = !DILocation(line: 988, column: 1, scope: !2523, inlinedAt: !2558)
!2575 = !DILocation(line: 993, column: 3, scope: !2550)
!2576 = distinct !DISubprogram(name: "quotearg_colon", scope: !61, file: !61, line: 997, type: !1018, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !2577)
!2577 = !{!2578}
!2578 = !DILocalVariable(name: "arg", arg: 1, scope: !2576, file: !61, line: 997, type: !23)
!2579 = !DILocation(line: 0, scope: !2576)
!2580 = !DILocation(line: 0, scope: !2550, inlinedAt: !2581)
!2581 = distinct !DILocation(line: 999, column: 10, scope: !2576)
!2582 = !DILocation(line: 0, scope: !2523, inlinedAt: !2583)
!2583 = distinct !DILocation(line: 993, column: 10, scope: !2550, inlinedAt: !2581)
!2584 = !DILocation(line: 984, column: 3, scope: !2523, inlinedAt: !2583)
!2585 = !DILocation(line: 984, column: 26, scope: !2523, inlinedAt: !2583)
!2586 = !DILocation(line: 985, column: 13, scope: !2523, inlinedAt: !2583)
!2587 = !DILocation(line: 0, scope: !1359, inlinedAt: !2588)
!2588 = distinct !DILocation(line: 986, column: 3, scope: !2523, inlinedAt: !2583)
!2589 = !DILocation(line: 156, column: 57, scope: !1359, inlinedAt: !2588)
!2590 = !DILocation(line: 158, column: 12, scope: !1359, inlinedAt: !2588)
!2591 = !DILocation(line: 159, column: 6, scope: !1359, inlinedAt: !2588)
!2592 = !DILocation(line: 987, column: 10, scope: !2523, inlinedAt: !2583)
!2593 = !DILocation(line: 988, column: 1, scope: !2523, inlinedAt: !2583)
!2594 = !DILocation(line: 999, column: 3, scope: !2576)
!2595 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !61, file: !61, line: 1003, type: !2400, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !2596)
!2596 = !{!2597, !2598}
!2597 = !DILocalVariable(name: "arg", arg: 1, scope: !2595, file: !61, line: 1003, type: !23)
!2598 = !DILocalVariable(name: "argsize", arg: 2, scope: !2595, file: !61, line: 1003, type: !99)
!2599 = !DILocation(line: 0, scope: !2595)
!2600 = !DILocation(line: 0, scope: !2523, inlinedAt: !2601)
!2601 = distinct !DILocation(line: 1005, column: 10, scope: !2595)
!2602 = !DILocation(line: 984, column: 3, scope: !2523, inlinedAt: !2601)
!2603 = !DILocation(line: 984, column: 26, scope: !2523, inlinedAt: !2601)
!2604 = !DILocation(line: 985, column: 13, scope: !2523, inlinedAt: !2601)
!2605 = !DILocation(line: 0, scope: !1359, inlinedAt: !2606)
!2606 = distinct !DILocation(line: 986, column: 3, scope: !2523, inlinedAt: !2601)
!2607 = !DILocation(line: 156, column: 57, scope: !1359, inlinedAt: !2606)
!2608 = !DILocation(line: 158, column: 12, scope: !1359, inlinedAt: !2606)
!2609 = !DILocation(line: 159, column: 6, scope: !1359, inlinedAt: !2606)
!2610 = !DILocation(line: 987, column: 10, scope: !2523, inlinedAt: !2601)
!2611 = !DILocation(line: 988, column: 1, scope: !2523, inlinedAt: !2601)
!2612 = !DILocation(line: 1005, column: 3, scope: !2595)
!2613 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !61, file: !61, line: 1009, type: !2411, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !2614)
!2614 = !{!2615, !2616, !2617, !2618}
!2615 = !DILocalVariable(name: "n", arg: 1, scope: !2613, file: !61, line: 1009, type: !26)
!2616 = !DILocalVariable(name: "s", arg: 2, scope: !2613, file: !61, line: 1009, type: !63)
!2617 = !DILocalVariable(name: "arg", arg: 3, scope: !2613, file: !61, line: 1009, type: !23)
!2618 = !DILocalVariable(name: "options", scope: !2613, file: !61, line: 1011, type: !111)
!2619 = !DILocation(line: 195, column: 26, scope: !2426, inlinedAt: !2620)
!2620 = distinct !DILocation(line: 1012, column: 13, scope: !2613)
!2621 = !DILocation(line: 0, scope: !2613)
!2622 = !DILocation(line: 1011, column: 3, scope: !2613)
!2623 = !DILocation(line: 1011, column: 26, scope: !2613)
!2624 = !DILocation(line: 1012, column: 13, scope: !2613)
!2625 = !{!2626}
!2626 = distinct !{!2626, !2627, !"quoting_options_from_style: argument 0"}
!2627 = distinct !{!2627, !"quoting_options_from_style"}
!2628 = !DILocation(line: 0, scope: !2426, inlinedAt: !2620)
!2629 = !DILocation(line: 196, column: 13, scope: !2435, inlinedAt: !2620)
!2630 = !DILocation(line: 196, column: 7, scope: !2426, inlinedAt: !2620)
!2631 = !DILocation(line: 197, column: 5, scope: !2435, inlinedAt: !2620)
!2632 = !{i64 0, i64 4, !997, i64 4, i64 32, !1117, i64 36, i64 8, !836, i64 44, i64 8, !836}
!2633 = !DILocation(line: 0, scope: !1359, inlinedAt: !2634)
!2634 = distinct !DILocation(line: 1013, column: 3, scope: !2613)
!2635 = !DILocation(line: 156, column: 57, scope: !1359, inlinedAt: !2634)
!2636 = !DILocation(line: 158, column: 12, scope: !1359, inlinedAt: !2634)
!2637 = !DILocation(line: 159, column: 6, scope: !1359, inlinedAt: !2634)
!2638 = !DILocation(line: 1014, column: 10, scope: !2613)
!2639 = !DILocation(line: 1015, column: 1, scope: !2613)
!2640 = !DILocation(line: 1014, column: 3, scope: !2613)
!2641 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !61, file: !61, line: 1018, type: !2642, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !2644)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!13, !26, !23, !23, !23}
!2644 = !{!2645, !2646, !2647, !2648}
!2645 = !DILocalVariable(name: "n", arg: 1, scope: !2641, file: !61, line: 1018, type: !26)
!2646 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2641, file: !61, line: 1018, type: !23)
!2647 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2641, file: !61, line: 1019, type: !23)
!2648 = !DILocalVariable(name: "arg", arg: 4, scope: !2641, file: !61, line: 1019, type: !23)
!2649 = !DILocation(line: 0, scope: !2641)
!2650 = !DILocalVariable(name: "n", arg: 1, scope: !2651, file: !61, line: 1026, type: !26)
!2651 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !61, file: !61, line: 1026, type: !2652, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !2654)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{!13, !26, !23, !23, !23, !99}
!2654 = !{!2650, !2655, !2656, !2657, !2658, !2659}
!2655 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2651, file: !61, line: 1026, type: !23)
!2656 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2651, file: !61, line: 1027, type: !23)
!2657 = !DILocalVariable(name: "arg", arg: 4, scope: !2651, file: !61, line: 1028, type: !23)
!2658 = !DILocalVariable(name: "argsize", arg: 5, scope: !2651, file: !61, line: 1028, type: !99)
!2659 = !DILocalVariable(name: "o", scope: !2651, file: !61, line: 1030, type: !111)
!2660 = !DILocation(line: 0, scope: !2651, inlinedAt: !2661)
!2661 = distinct !DILocation(line: 1021, column: 10, scope: !2641)
!2662 = !DILocation(line: 1030, column: 3, scope: !2651, inlinedAt: !2661)
!2663 = !DILocation(line: 1030, column: 26, scope: !2651, inlinedAt: !2661)
!2664 = !DILocation(line: 1030, column: 30, scope: !2651, inlinedAt: !2661)
!2665 = !DILocation(line: 0, scope: !1400, inlinedAt: !2666)
!2666 = distinct !DILocation(line: 1031, column: 3, scope: !2651, inlinedAt: !2661)
!2667 = !DILocation(line: 184, column: 6, scope: !1400, inlinedAt: !2666)
!2668 = !DILocation(line: 184, column: 12, scope: !1400, inlinedAt: !2666)
!2669 = !DILocation(line: 185, column: 8, scope: !1414, inlinedAt: !2666)
!2670 = !DILocation(line: 185, column: 19, scope: !1414, inlinedAt: !2666)
!2671 = !DILocation(line: 186, column: 5, scope: !1414, inlinedAt: !2666)
!2672 = !DILocation(line: 187, column: 6, scope: !1400, inlinedAt: !2666)
!2673 = !DILocation(line: 187, column: 17, scope: !1400, inlinedAt: !2666)
!2674 = !DILocation(line: 188, column: 6, scope: !1400, inlinedAt: !2666)
!2675 = !DILocation(line: 188, column: 18, scope: !1400, inlinedAt: !2666)
!2676 = !DILocation(line: 1032, column: 10, scope: !2651, inlinedAt: !2661)
!2677 = !DILocation(line: 1033, column: 1, scope: !2651, inlinedAt: !2661)
!2678 = !DILocation(line: 1021, column: 3, scope: !2641)
!2679 = !DILocation(line: 0, scope: !2651)
!2680 = !DILocation(line: 1030, column: 3, scope: !2651)
!2681 = !DILocation(line: 1030, column: 26, scope: !2651)
!2682 = !DILocation(line: 1030, column: 30, scope: !2651)
!2683 = !DILocation(line: 0, scope: !1400, inlinedAt: !2684)
!2684 = distinct !DILocation(line: 1031, column: 3, scope: !2651)
!2685 = !DILocation(line: 184, column: 6, scope: !1400, inlinedAt: !2684)
!2686 = !DILocation(line: 184, column: 12, scope: !1400, inlinedAt: !2684)
!2687 = !DILocation(line: 185, column: 8, scope: !1414, inlinedAt: !2684)
!2688 = !DILocation(line: 185, column: 19, scope: !1414, inlinedAt: !2684)
!2689 = !DILocation(line: 186, column: 5, scope: !1414, inlinedAt: !2684)
!2690 = !DILocation(line: 187, column: 6, scope: !1400, inlinedAt: !2684)
!2691 = !DILocation(line: 187, column: 17, scope: !1400, inlinedAt: !2684)
!2692 = !DILocation(line: 188, column: 6, scope: !1400, inlinedAt: !2684)
!2693 = !DILocation(line: 188, column: 18, scope: !1400, inlinedAt: !2684)
!2694 = !DILocation(line: 1032, column: 10, scope: !2651)
!2695 = !DILocation(line: 1033, column: 1, scope: !2651)
!2696 = !DILocation(line: 1032, column: 3, scope: !2651)
!2697 = distinct !DISubprogram(name: "quotearg_custom", scope: !61, file: !61, line: 1036, type: !2698, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !2700)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!13, !23, !23, !23}
!2700 = !{!2701, !2702, !2703}
!2701 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2697, file: !61, line: 1036, type: !23)
!2702 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2697, file: !61, line: 1036, type: !23)
!2703 = !DILocalVariable(name: "arg", arg: 3, scope: !2697, file: !61, line: 1037, type: !23)
!2704 = !DILocation(line: 0, scope: !2697)
!2705 = !DILocation(line: 0, scope: !2641, inlinedAt: !2706)
!2706 = distinct !DILocation(line: 1039, column: 10, scope: !2697)
!2707 = !DILocation(line: 0, scope: !2651, inlinedAt: !2708)
!2708 = distinct !DILocation(line: 1021, column: 10, scope: !2641, inlinedAt: !2706)
!2709 = !DILocation(line: 1030, column: 3, scope: !2651, inlinedAt: !2708)
!2710 = !DILocation(line: 1030, column: 26, scope: !2651, inlinedAt: !2708)
!2711 = !DILocation(line: 1030, column: 30, scope: !2651, inlinedAt: !2708)
!2712 = !DILocation(line: 0, scope: !1400, inlinedAt: !2713)
!2713 = distinct !DILocation(line: 1031, column: 3, scope: !2651, inlinedAt: !2708)
!2714 = !DILocation(line: 184, column: 6, scope: !1400, inlinedAt: !2713)
!2715 = !DILocation(line: 184, column: 12, scope: !1400, inlinedAt: !2713)
!2716 = !DILocation(line: 185, column: 8, scope: !1414, inlinedAt: !2713)
!2717 = !DILocation(line: 185, column: 19, scope: !1414, inlinedAt: !2713)
!2718 = !DILocation(line: 186, column: 5, scope: !1414, inlinedAt: !2713)
!2719 = !DILocation(line: 187, column: 6, scope: !1400, inlinedAt: !2713)
!2720 = !DILocation(line: 187, column: 17, scope: !1400, inlinedAt: !2713)
!2721 = !DILocation(line: 188, column: 6, scope: !1400, inlinedAt: !2713)
!2722 = !DILocation(line: 188, column: 18, scope: !1400, inlinedAt: !2713)
!2723 = !DILocation(line: 1032, column: 10, scope: !2651, inlinedAt: !2708)
!2724 = !DILocation(line: 1033, column: 1, scope: !2651, inlinedAt: !2708)
!2725 = !DILocation(line: 1039, column: 3, scope: !2697)
!2726 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !61, file: !61, line: 1043, type: !2727, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !2729)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!13, !23, !23, !23, !99}
!2729 = !{!2730, !2731, !2732, !2733}
!2730 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2726, file: !61, line: 1043, type: !23)
!2731 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2726, file: !61, line: 1043, type: !23)
!2732 = !DILocalVariable(name: "arg", arg: 3, scope: !2726, file: !61, line: 1044, type: !23)
!2733 = !DILocalVariable(name: "argsize", arg: 4, scope: !2726, file: !61, line: 1044, type: !99)
!2734 = !DILocation(line: 0, scope: !2726)
!2735 = !DILocation(line: 0, scope: !2651, inlinedAt: !2736)
!2736 = distinct !DILocation(line: 1046, column: 10, scope: !2726)
!2737 = !DILocation(line: 1030, column: 3, scope: !2651, inlinedAt: !2736)
!2738 = !DILocation(line: 1030, column: 26, scope: !2651, inlinedAt: !2736)
!2739 = !DILocation(line: 1030, column: 30, scope: !2651, inlinedAt: !2736)
!2740 = !DILocation(line: 0, scope: !1400, inlinedAt: !2741)
!2741 = distinct !DILocation(line: 1031, column: 3, scope: !2651, inlinedAt: !2736)
!2742 = !DILocation(line: 184, column: 6, scope: !1400, inlinedAt: !2741)
!2743 = !DILocation(line: 184, column: 12, scope: !1400, inlinedAt: !2741)
!2744 = !DILocation(line: 185, column: 8, scope: !1414, inlinedAt: !2741)
!2745 = !DILocation(line: 185, column: 19, scope: !1414, inlinedAt: !2741)
!2746 = !DILocation(line: 186, column: 5, scope: !1414, inlinedAt: !2741)
!2747 = !DILocation(line: 187, column: 6, scope: !1400, inlinedAt: !2741)
!2748 = !DILocation(line: 187, column: 17, scope: !1400, inlinedAt: !2741)
!2749 = !DILocation(line: 188, column: 6, scope: !1400, inlinedAt: !2741)
!2750 = !DILocation(line: 188, column: 18, scope: !1400, inlinedAt: !2741)
!2751 = !DILocation(line: 1032, column: 10, scope: !2651, inlinedAt: !2736)
!2752 = !DILocation(line: 1033, column: 1, scope: !2651, inlinedAt: !2736)
!2753 = !DILocation(line: 1046, column: 3, scope: !2726)
!2754 = distinct !DISubprogram(name: "quote_n_mem", scope: !61, file: !61, line: 1061, type: !2755, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !2757)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!23, !26, !23, !99}
!2757 = !{!2758, !2759, !2760}
!2758 = !DILocalVariable(name: "n", arg: 1, scope: !2754, file: !61, line: 1061, type: !26)
!2759 = !DILocalVariable(name: "arg", arg: 2, scope: !2754, file: !61, line: 1061, type: !23)
!2760 = !DILocalVariable(name: "argsize", arg: 3, scope: !2754, file: !61, line: 1061, type: !99)
!2761 = !DILocation(line: 0, scope: !2754)
!2762 = !DILocation(line: 1063, column: 10, scope: !2754)
!2763 = !DILocation(line: 1063, column: 3, scope: !2754)
!2764 = distinct !DISubprogram(name: "quote_mem", scope: !61, file: !61, line: 1067, type: !2765, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !2767)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{!23, !23, !99}
!2767 = !{!2768, !2769}
!2768 = !DILocalVariable(name: "arg", arg: 1, scope: !2764, file: !61, line: 1067, type: !23)
!2769 = !DILocalVariable(name: "argsize", arg: 2, scope: !2764, file: !61, line: 1067, type: !99)
!2770 = !DILocation(line: 0, scope: !2764)
!2771 = !DILocation(line: 0, scope: !2754, inlinedAt: !2772)
!2772 = distinct !DILocation(line: 1069, column: 10, scope: !2764)
!2773 = !DILocation(line: 1063, column: 10, scope: !2754, inlinedAt: !2772)
!2774 = !DILocation(line: 1069, column: 3, scope: !2764)
!2775 = distinct !DISubprogram(name: "quote_n", scope: !61, file: !61, line: 1073, type: !2776, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !2778)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!23, !26, !23}
!2778 = !{!2779, !2780}
!2779 = !DILocalVariable(name: "n", arg: 1, scope: !2775, file: !61, line: 1073, type: !26)
!2780 = !DILocalVariable(name: "arg", arg: 2, scope: !2775, file: !61, line: 1073, type: !23)
!2781 = !DILocation(line: 0, scope: !2775)
!2782 = !DILocation(line: 0, scope: !2754, inlinedAt: !2783)
!2783 = distinct !DILocation(line: 1075, column: 10, scope: !2775)
!2784 = !DILocation(line: 1063, column: 10, scope: !2754, inlinedAt: !2783)
!2785 = !DILocation(line: 1075, column: 3, scope: !2775)
!2786 = distinct !DISubprogram(name: "quote", scope: !61, file: !61, line: 1079, type: !2787, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !2789)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!23, !23}
!2789 = !{!2790}
!2790 = !DILocalVariable(name: "arg", arg: 1, scope: !2786, file: !61, line: 1079, type: !23)
!2791 = !DILocation(line: 0, scope: !2786)
!2792 = !DILocation(line: 0, scope: !2775, inlinedAt: !2793)
!2793 = distinct !DILocation(line: 1081, column: 10, scope: !2786)
!2794 = !DILocation(line: 0, scope: !2754, inlinedAt: !2795)
!2795 = distinct !DILocation(line: 1075, column: 10, scope: !2775, inlinedAt: !2793)
!2796 = !DILocation(line: 1063, column: 10, scope: !2754, inlinedAt: !2795)
!2797 = !DILocation(line: 1081, column: 3, scope: !2786)
!2798 = distinct !DISubprogram(name: "version_etc_arn", scope: !374, file: !374, line: 61, type: !2799, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !373, retainedNodes: !2837)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{null, !2801, !23, !23, !23, !2836, !99}
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2803, line: 7, baseType: !2804)
!2803 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !909, line: 49, size: 1728, elements: !2805)
!2805 = !{!2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2804, file: !909, line: 51, baseType: !26, size: 32)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2804, file: !909, line: 54, baseType: !13, size: 64, offset: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2804, file: !909, line: 55, baseType: !13, size: 64, offset: 128)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2804, file: !909, line: 56, baseType: !13, size: 64, offset: 192)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2804, file: !909, line: 57, baseType: !13, size: 64, offset: 256)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2804, file: !909, line: 58, baseType: !13, size: 64, offset: 320)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2804, file: !909, line: 59, baseType: !13, size: 64, offset: 384)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2804, file: !909, line: 60, baseType: !13, size: 64, offset: 448)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2804, file: !909, line: 61, baseType: !13, size: 64, offset: 512)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2804, file: !909, line: 64, baseType: !13, size: 64, offset: 576)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2804, file: !909, line: 65, baseType: !13, size: 64, offset: 640)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2804, file: !909, line: 66, baseType: !13, size: 64, offset: 704)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2804, file: !909, line: 68, baseType: !924, size: 64, offset: 768)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2804, file: !909, line: 70, baseType: !2820, size: 64, offset: 832)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2804, file: !909, line: 72, baseType: !26, size: 32, offset: 896)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2804, file: !909, line: 73, baseType: !26, size: 32, offset: 928)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2804, file: !909, line: 74, baseType: !930, size: 64, offset: 960)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2804, file: !909, line: 77, baseType: !98, size: 16, offset: 1024)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2804, file: !909, line: 78, baseType: !935, size: 8, offset: 1040)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2804, file: !909, line: 79, baseType: !937, size: 8, offset: 1048)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2804, file: !909, line: 81, baseType: !941, size: 64, offset: 1088)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2804, file: !909, line: 89, baseType: !944, size: 64, offset: 1152)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2804, file: !909, line: 91, baseType: !946, size: 64, offset: 1216)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2804, file: !909, line: 92, baseType: !949, size: 64, offset: 1280)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2804, file: !909, line: 93, baseType: !2820, size: 64, offset: 1344)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2804, file: !909, line: 94, baseType: !15, size: 64, offset: 1408)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2804, file: !909, line: 95, baseType: !99, size: 64, offset: 1472)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2804, file: !909, line: 96, baseType: !26, size: 32, offset: 1536)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2804, file: !909, line: 98, baseType: !956, size: 160, offset: 1568)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!2837 = !{!2838, !2839, !2840, !2841, !2842, !2843}
!2838 = !DILocalVariable(name: "stream", arg: 1, scope: !2798, file: !374, line: 61, type: !2801)
!2839 = !DILocalVariable(name: "command_name", arg: 2, scope: !2798, file: !374, line: 62, type: !23)
!2840 = !DILocalVariable(name: "package", arg: 3, scope: !2798, file: !374, line: 62, type: !23)
!2841 = !DILocalVariable(name: "version", arg: 4, scope: !2798, file: !374, line: 63, type: !23)
!2842 = !DILocalVariable(name: "authors", arg: 5, scope: !2798, file: !374, line: 64, type: !2836)
!2843 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2798, file: !374, line: 64, type: !99)
!2844 = !DILocation(line: 0, scope: !2798)
!2845 = !DILocation(line: 66, column: 7, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2798, file: !374, line: 66, column: 7)
!2847 = !DILocation(line: 66, column: 7, scope: !2798)
!2848 = !DILocation(line: 67, column: 5, scope: !2846)
!2849 = !DILocation(line: 69, column: 5, scope: !2846)
!2850 = !DILocation(line: 83, column: 3, scope: !2798)
!2851 = !DILocation(line: 85, column: 3, scope: !2798)
!2852 = !DILocation(line: 88, column: 3, scope: !2798)
!2853 = !DILocation(line: 95, column: 3, scope: !2798)
!2854 = !DILocation(line: 97, column: 3, scope: !2798)
!2855 = !DILocation(line: 105, column: 7, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2798, file: !374, line: 98, column: 5)
!2857 = !DILocation(line: 106, column: 7, scope: !2856)
!2858 = !DILocation(line: 109, column: 7, scope: !2856)
!2859 = !DILocation(line: 110, column: 7, scope: !2856)
!2860 = !DILocation(line: 113, column: 7, scope: !2856)
!2861 = !DILocation(line: 115, column: 7, scope: !2856)
!2862 = !DILocation(line: 120, column: 7, scope: !2856)
!2863 = !DILocation(line: 122, column: 7, scope: !2856)
!2864 = !DILocation(line: 127, column: 7, scope: !2856)
!2865 = !DILocation(line: 129, column: 7, scope: !2856)
!2866 = !DILocation(line: 134, column: 7, scope: !2856)
!2867 = !DILocation(line: 137, column: 7, scope: !2856)
!2868 = !DILocation(line: 142, column: 7, scope: !2856)
!2869 = !DILocation(line: 145, column: 7, scope: !2856)
!2870 = !DILocation(line: 150, column: 7, scope: !2856)
!2871 = !DILocation(line: 154, column: 7, scope: !2856)
!2872 = !DILocation(line: 159, column: 7, scope: !2856)
!2873 = !DILocation(line: 163, column: 7, scope: !2856)
!2874 = !DILocation(line: 170, column: 7, scope: !2856)
!2875 = !DILocation(line: 174, column: 7, scope: !2856)
!2876 = !DILocation(line: 176, column: 1, scope: !2798)
!2877 = distinct !DISubprogram(name: "version_etc_ar", scope: !374, file: !374, line: 183, type: !2878, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !373, retainedNodes: !2880)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{null, !2801, !23, !23, !23, !2836}
!2880 = !{!2881, !2882, !2883, !2884, !2885, !2886}
!2881 = !DILocalVariable(name: "stream", arg: 1, scope: !2877, file: !374, line: 183, type: !2801)
!2882 = !DILocalVariable(name: "command_name", arg: 2, scope: !2877, file: !374, line: 184, type: !23)
!2883 = !DILocalVariable(name: "package", arg: 3, scope: !2877, file: !374, line: 184, type: !23)
!2884 = !DILocalVariable(name: "version", arg: 4, scope: !2877, file: !374, line: 185, type: !23)
!2885 = !DILocalVariable(name: "authors", arg: 5, scope: !2877, file: !374, line: 185, type: !2836)
!2886 = !DILocalVariable(name: "n_authors", scope: !2877, file: !374, line: 187, type: !99)
!2887 = !DILocation(line: 0, scope: !2877)
!2888 = !DILocation(line: 189, column: 8, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2877, file: !374, line: 189, column: 3)
!2890 = !DILocation(line: 0, scope: !2889)
!2891 = !DILocation(line: 189, column: 23, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2889, file: !374, line: 189, column: 3)
!2893 = !DILocation(line: 189, column: 3, scope: !2889)
!2894 = !DILocation(line: 189, column: 52, scope: !2892)
!2895 = distinct !{!2895, !2893, !2896, !879}
!2896 = !DILocation(line: 190, column: 5, scope: !2889)
!2897 = !DILocation(line: 191, column: 3, scope: !2877)
!2898 = !DILocation(line: 192, column: 1, scope: !2877)
!2899 = distinct !DISubprogram(name: "version_etc_va", scope: !374, file: !374, line: 199, type: !2900, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !373, retainedNodes: !2909)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{null, !2801, !23, !23, !23, !2902}
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2904)
!2904 = !{!2905, !2906, !2907, !2908}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2903, file: !374, line: 192, baseType: !7, size: 32)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2903, file: !374, line: 192, baseType: !7, size: 32, offset: 32)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2903, file: !374, line: 192, baseType: !15, size: 64, offset: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2903, file: !374, line: 192, baseType: !15, size: 64, offset: 128)
!2909 = !{!2910, !2911, !2912, !2913, !2914, !2915, !2916}
!2910 = !DILocalVariable(name: "stream", arg: 1, scope: !2899, file: !374, line: 199, type: !2801)
!2911 = !DILocalVariable(name: "command_name", arg: 2, scope: !2899, file: !374, line: 200, type: !23)
!2912 = !DILocalVariable(name: "package", arg: 3, scope: !2899, file: !374, line: 200, type: !23)
!2913 = !DILocalVariable(name: "version", arg: 4, scope: !2899, file: !374, line: 201, type: !23)
!2914 = !DILocalVariable(name: "authors", arg: 5, scope: !2899, file: !374, line: 201, type: !2902)
!2915 = !DILocalVariable(name: "n_authors", scope: !2899, file: !374, line: 203, type: !99)
!2916 = !DILocalVariable(name: "authtab", scope: !2899, file: !374, line: 204, type: !2917)
!2917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 640, elements: !107)
!2918 = !DILocation(line: 0, scope: !2899)
!2919 = !DILocation(line: 204, column: 3, scope: !2899)
!2920 = !DILocation(line: 204, column: 15, scope: !2899)
!2921 = !DILocation(line: 208, column: 35, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2923, file: !374, line: 206, column: 3)
!2923 = distinct !DILexicalBlock(scope: !2899, file: !374, line: 206, column: 3)
!2924 = !DILocation(line: 208, column: 14, scope: !2922)
!2925 = !DILocation(line: 208, column: 33, scope: !2922)
!2926 = !DILocation(line: 208, column: 67, scope: !2922)
!2927 = !DILocation(line: 206, column: 3, scope: !2923)
!2928 = !DILocation(line: 0, scope: !2923)
!2929 = !DILocation(line: 211, column: 3, scope: !2899)
!2930 = !DILocation(line: 213, column: 1, scope: !2899)
!2931 = distinct !DISubprogram(name: "version_etc", scope: !374, file: !374, line: 230, type: !2932, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !373, retainedNodes: !2934)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{null, !2801, !23, !23, !23, null}
!2934 = !{!2935, !2936, !2937, !2938, !2939}
!2935 = !DILocalVariable(name: "stream", arg: 1, scope: !2931, file: !374, line: 230, type: !2801)
!2936 = !DILocalVariable(name: "command_name", arg: 2, scope: !2931, file: !374, line: 231, type: !23)
!2937 = !DILocalVariable(name: "package", arg: 3, scope: !2931, file: !374, line: 231, type: !23)
!2938 = !DILocalVariable(name: "version", arg: 4, scope: !2931, file: !374, line: 232, type: !23)
!2939 = !DILocalVariable(name: "authors", scope: !2931, file: !374, line: 234, type: !2940)
!2940 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !904, line: 52, baseType: !2941)
!2941 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2942, line: 32, baseType: !2943)
!2942 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!2943 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !374, baseType: !2944)
!2944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2903, size: 192, elements: !938)
!2945 = !DILocation(line: 0, scope: !2931)
!2946 = !DILocation(line: 234, column: 3, scope: !2931)
!2947 = !DILocation(line: 234, column: 11, scope: !2931)
!2948 = !DILocation(line: 236, column: 3, scope: !2931)
!2949 = !DILocation(line: 237, column: 3, scope: !2931)
!2950 = !DILocation(line: 238, column: 3, scope: !2931)
!2951 = !DILocation(line: 239, column: 1, scope: !2931)
!2952 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !374, file: !374, line: 242, type: !1025, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !373, retainedNodes: !36)
!2953 = !DILocation(line: 244, column: 3, scope: !2952)
!2954 = !DILocation(line: 249, column: 3, scope: !2952)
!2955 = !DILocation(line: 255, column: 3, scope: !2952)
!2956 = !DILocation(line: 260, column: 3, scope: !2952)
!2957 = !DILocation(line: 262, column: 1, scope: !2952)
!2958 = distinct !DISubprogram(name: "xnmalloc", scope: !383, file: !383, line: 99, type: !2959, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !2961)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!15, !99, !99}
!2961 = !{!2962, !2963}
!2962 = !DILocalVariable(name: "n", arg: 1, scope: !2958, file: !383, line: 99, type: !99)
!2963 = !DILocalVariable(name: "s", arg: 2, scope: !2958, file: !383, line: 99, type: !99)
!2964 = !DILocation(line: 0, scope: !2958)
!2965 = !DILocation(line: 101, column: 7, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2958, file: !383, line: 101, column: 7)
!2967 = !DILocation(line: 101, column: 7, scope: !2958)
!2968 = !DILocation(line: 102, column: 5, scope: !2966)
!2969 = !DILocation(line: 103, column: 21, scope: !2958)
!2970 = !DILocalVariable(name: "n", arg: 1, scope: !2971, file: !380, line: 39, type: !99)
!2971 = distinct !DISubprogram(name: "xmalloc", scope: !380, file: !380, line: 39, type: !2972, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !2974)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!15, !99}
!2974 = !{!2970, !2975}
!2975 = !DILocalVariable(name: "p", scope: !2971, file: !380, line: 41, type: !15)
!2976 = !DILocation(line: 0, scope: !2971, inlinedAt: !2977)
!2977 = distinct !DILocation(line: 103, column: 10, scope: !2958)
!2978 = !DILocation(line: 41, column: 13, scope: !2971, inlinedAt: !2977)
!2979 = !DILocation(line: 42, column: 8, scope: !2980, inlinedAt: !2977)
!2980 = distinct !DILexicalBlock(scope: !2971, file: !380, line: 42, column: 7)
!2981 = !DILocation(line: 42, column: 10, scope: !2980, inlinedAt: !2977)
!2982 = !DILocation(line: 43, column: 5, scope: !2980, inlinedAt: !2977)
!2983 = !DILocation(line: 103, column: 3, scope: !2958)
!2984 = !DILocation(line: 0, scope: !2971)
!2985 = !DILocation(line: 41, column: 13, scope: !2971)
!2986 = !DILocation(line: 42, column: 8, scope: !2980)
!2987 = !DILocation(line: 42, column: 10, scope: !2980)
!2988 = !DILocation(line: 43, column: 5, scope: !2980)
!2989 = !DILocation(line: 44, column: 3, scope: !2971)
!2990 = distinct !DISubprogram(name: "xnrealloc", scope: !383, file: !383, line: 112, type: !2991, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !2993)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!15, !15, !99, !99}
!2993 = !{!2994, !2995, !2996}
!2994 = !DILocalVariable(name: "p", arg: 1, scope: !2990, file: !383, line: 112, type: !15)
!2995 = !DILocalVariable(name: "n", arg: 2, scope: !2990, file: !383, line: 112, type: !99)
!2996 = !DILocalVariable(name: "s", arg: 3, scope: !2990, file: !383, line: 112, type: !99)
!2997 = !DILocation(line: 0, scope: !2990)
!2998 = !DILocation(line: 114, column: 7, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2990, file: !383, line: 114, column: 7)
!3000 = !DILocation(line: 114, column: 7, scope: !2990)
!3001 = !DILocation(line: 115, column: 5, scope: !2999)
!3002 = !DILocation(line: 116, column: 25, scope: !2990)
!3003 = !DILocalVariable(name: "p", arg: 1, scope: !3004, file: !380, line: 51, type: !15)
!3004 = distinct !DISubprogram(name: "xrealloc", scope: !380, file: !380, line: 51, type: !3005, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !3007)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!15, !15, !99}
!3007 = !{!3003, !3008}
!3008 = !DILocalVariable(name: "n", arg: 2, scope: !3004, file: !380, line: 51, type: !99)
!3009 = !DILocation(line: 0, scope: !3004, inlinedAt: !3010)
!3010 = distinct !DILocation(line: 116, column: 10, scope: !2990)
!3011 = !DILocation(line: 53, column: 8, scope: !3012, inlinedAt: !3010)
!3012 = distinct !DILexicalBlock(scope: !3004, file: !380, line: 53, column: 7)
!3013 = !DILocation(line: 53, column: 10, scope: !3012, inlinedAt: !3010)
!3014 = !DILocation(line: 57, column: 7, scope: !3015, inlinedAt: !3010)
!3015 = distinct !DILexicalBlock(scope: !3012, file: !380, line: 54, column: 5)
!3016 = !DILocation(line: 58, column: 7, scope: !3015, inlinedAt: !3010)
!3017 = !DILocation(line: 61, column: 7, scope: !3004, inlinedAt: !3010)
!3018 = !DILocation(line: 62, column: 8, scope: !3019, inlinedAt: !3010)
!3019 = distinct !DILexicalBlock(scope: !3004, file: !380, line: 62, column: 7)
!3020 = !DILocation(line: 62, column: 10, scope: !3019, inlinedAt: !3010)
!3021 = !DILocation(line: 63, column: 5, scope: !3019, inlinedAt: !3010)
!3022 = !DILocation(line: 116, column: 3, scope: !2990)
!3023 = !DILocation(line: 0, scope: !3004)
!3024 = !DILocation(line: 53, column: 8, scope: !3012)
!3025 = !DILocation(line: 53, column: 10, scope: !3012)
!3026 = !DILocation(line: 57, column: 7, scope: !3015)
!3027 = !DILocation(line: 58, column: 7, scope: !3015)
!3028 = !DILocation(line: 61, column: 7, scope: !3004)
!3029 = !DILocation(line: 62, column: 8, scope: !3019)
!3030 = !DILocation(line: 62, column: 10, scope: !3019)
!3031 = !DILocation(line: 63, column: 5, scope: !3019)
!3032 = !DILocation(line: 65, column: 1, scope: !3004)
!3033 = !DILocation(line: 0, scope: !384)
!3034 = !DILocation(line: 176, column: 14, scope: !384)
!3035 = !DILocation(line: 178, column: 9, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !384, file: !383, line: 178, column: 7)
!3037 = !DILocation(line: 178, column: 7, scope: !384)
!3038 = !DILocation(line: 180, column: 13, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3040, file: !383, line: 180, column: 11)
!3040 = distinct !DILexicalBlock(scope: !3036, file: !383, line: 179, column: 5)
!3041 = !DILocation(line: 180, column: 11, scope: !3040)
!3042 = !DILocation(line: 188, column: 30, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3039, file: !383, line: 181, column: 9)
!3044 = !DILocation(line: 189, column: 16, scope: !3043)
!3045 = !DILocation(line: 189, column: 13, scope: !3043)
!3046 = !DILocation(line: 190, column: 9, scope: !3043)
!3047 = !DILocation(line: 191, column: 11, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3040, file: !383, line: 191, column: 11)
!3049 = !DILocation(line: 191, column: 11, scope: !3040)
!3050 = !DILocation(line: 206, column: 7, scope: !384)
!3051 = !DILocation(line: 207, column: 25, scope: !384)
!3052 = !DILocation(line: 0, scope: !3004, inlinedAt: !3053)
!3053 = distinct !DILocation(line: 207, column: 10, scope: !384)
!3054 = !DILocation(line: 53, column: 10, scope: !3012, inlinedAt: !3053)
!3055 = !DILocation(line: 192, column: 9, scope: !3048)
!3056 = !DILocation(line: 200, column: 69, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3058, file: !383, line: 200, column: 11)
!3058 = distinct !DILexicalBlock(scope: !3036, file: !383, line: 195, column: 5)
!3059 = !DILocation(line: 201, column: 11, scope: !3057)
!3060 = !DILocation(line: 200, column: 11, scope: !3058)
!3061 = !DILocation(line: 202, column: 9, scope: !3057)
!3062 = !DILocation(line: 203, column: 14, scope: !3058)
!3063 = !DILocation(line: 203, column: 18, scope: !3058)
!3064 = !DILocation(line: 203, column: 9, scope: !3058)
!3065 = !DILocation(line: 53, column: 8, scope: !3012, inlinedAt: !3053)
!3066 = !DILocation(line: 57, column: 7, scope: !3015, inlinedAt: !3053)
!3067 = !DILocation(line: 58, column: 7, scope: !3015, inlinedAt: !3053)
!3068 = !DILocation(line: 61, column: 7, scope: !3004, inlinedAt: !3053)
!3069 = !DILocation(line: 62, column: 8, scope: !3019, inlinedAt: !3053)
!3070 = !DILocation(line: 62, column: 10, scope: !3019, inlinedAt: !3053)
!3071 = !DILocation(line: 63, column: 5, scope: !3019, inlinedAt: !3053)
!3072 = !DILocation(line: 207, column: 3, scope: !384)
!3073 = distinct !DISubprogram(name: "xcharalloc", scope: !383, file: !383, line: 216, type: !2209, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !3074)
!3074 = !{!3075}
!3075 = !DILocalVariable(name: "n", arg: 1, scope: !3073, file: !383, line: 216, type: !99)
!3076 = !DILocation(line: 0, scope: !3073)
!3077 = !DILocation(line: 0, scope: !2971, inlinedAt: !3078)
!3078 = distinct !DILocation(line: 218, column: 10, scope: !3073)
!3079 = !DILocation(line: 41, column: 13, scope: !2971, inlinedAt: !3078)
!3080 = !DILocation(line: 42, column: 8, scope: !2980, inlinedAt: !3078)
!3081 = !DILocation(line: 42, column: 10, scope: !2980, inlinedAt: !3078)
!3082 = !DILocation(line: 43, column: 5, scope: !2980, inlinedAt: !3078)
!3083 = !DILocation(line: 218, column: 3, scope: !3073)
!3084 = distinct !DISubprogram(name: "x2realloc", scope: !380, file: !380, line: 74, type: !3085, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !3087)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!15, !15, !387}
!3087 = !{!3088, !3089}
!3088 = !DILocalVariable(name: "p", arg: 1, scope: !3084, file: !380, line: 74, type: !15)
!3089 = !DILocalVariable(name: "pn", arg: 2, scope: !3084, file: !380, line: 74, type: !387)
!3090 = !DILocation(line: 0, scope: !3084)
!3091 = !DILocation(line: 0, scope: !384, inlinedAt: !3092)
!3092 = distinct !DILocation(line: 76, column: 10, scope: !3084)
!3093 = !DILocation(line: 176, column: 14, scope: !384, inlinedAt: !3092)
!3094 = !DILocation(line: 178, column: 9, scope: !3036, inlinedAt: !3092)
!3095 = !DILocation(line: 178, column: 7, scope: !384, inlinedAt: !3092)
!3096 = !DILocation(line: 180, column: 13, scope: !3039, inlinedAt: !3092)
!3097 = !DILocation(line: 180, column: 11, scope: !3040, inlinedAt: !3092)
!3098 = !DILocation(line: 191, column: 11, scope: !3048, inlinedAt: !3092)
!3099 = !DILocation(line: 191, column: 11, scope: !3040, inlinedAt: !3092)
!3100 = !DILocation(line: 192, column: 9, scope: !3048, inlinedAt: !3092)
!3101 = !DILocation(line: 201, column: 11, scope: !3057, inlinedAt: !3092)
!3102 = !DILocation(line: 200, column: 11, scope: !3058, inlinedAt: !3092)
!3103 = !DILocation(line: 202, column: 9, scope: !3057, inlinedAt: !3092)
!3104 = !DILocation(line: 203, column: 14, scope: !3058, inlinedAt: !3092)
!3105 = !DILocation(line: 203, column: 18, scope: !3058, inlinedAt: !3092)
!3106 = !DILocation(line: 203, column: 9, scope: !3058, inlinedAt: !3092)
!3107 = !DILocation(line: 0, scope: !3004, inlinedAt: !3108)
!3108 = distinct !DILocation(line: 207, column: 10, scope: !384, inlinedAt: !3092)
!3109 = !DILocation(line: 53, column: 10, scope: !3012, inlinedAt: !3108)
!3110 = !DILocation(line: 206, column: 7, scope: !384, inlinedAt: !3092)
!3111 = !DILocation(line: 61, column: 7, scope: !3004, inlinedAt: !3108)
!3112 = !DILocation(line: 62, column: 8, scope: !3019, inlinedAt: !3108)
!3113 = !DILocation(line: 62, column: 10, scope: !3019, inlinedAt: !3108)
!3114 = !DILocation(line: 63, column: 5, scope: !3019, inlinedAt: !3108)
!3115 = !DILocation(line: 76, column: 3, scope: !3084)
!3116 = distinct !DISubprogram(name: "xzalloc", scope: !380, file: !380, line: 84, type: !2972, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !3117)
!3117 = !{!3118}
!3118 = !DILocalVariable(name: "n", arg: 1, scope: !3116, file: !380, line: 84, type: !99)
!3119 = !DILocation(line: 0, scope: !3116)
!3120 = !DILocalVariable(name: "n", arg: 1, scope: !3121, file: !380, line: 93, type: !99)
!3121 = distinct !DISubprogram(name: "xcalloc", scope: !380, file: !380, line: 93, type: !2959, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !3122)
!3122 = !{!3120, !3123, !3124}
!3123 = !DILocalVariable(name: "s", arg: 2, scope: !3121, file: !380, line: 93, type: !99)
!3124 = !DILocalVariable(name: "p", scope: !3121, file: !380, line: 95, type: !15)
!3125 = !DILocation(line: 0, scope: !3121, inlinedAt: !3126)
!3126 = distinct !DILocation(line: 86, column: 10, scope: !3116)
!3127 = !DILocation(line: 100, column: 7, scope: !3128, inlinedAt: !3126)
!3128 = distinct !DILexicalBlock(scope: !3121, file: !380, line: 100, column: 7)
!3129 = !DILocation(line: 101, column: 7, scope: !3128, inlinedAt: !3126)
!3130 = !DILocation(line: 101, column: 18, scope: !3128, inlinedAt: !3126)
!3131 = !DILocation(line: 101, column: 16, scope: !3128, inlinedAt: !3126)
!3132 = !DILocation(line: 100, column: 7, scope: !3121, inlinedAt: !3126)
!3133 = !DILocation(line: 102, column: 5, scope: !3128, inlinedAt: !3126)
!3134 = !DILocation(line: 86, column: 3, scope: !3116)
!3135 = !DILocation(line: 0, scope: !3121)
!3136 = !DILocation(line: 100, column: 7, scope: !3128)
!3137 = !DILocation(line: 101, column: 7, scope: !3128)
!3138 = !DILocation(line: 101, column: 18, scope: !3128)
!3139 = !DILocation(line: 101, column: 16, scope: !3128)
!3140 = !DILocation(line: 100, column: 7, scope: !3121)
!3141 = !DILocation(line: 102, column: 5, scope: !3128)
!3142 = !DILocation(line: 103, column: 3, scope: !3121)
!3143 = distinct !DISubprogram(name: "xmemdup", scope: !380, file: !380, line: 111, type: !3144, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !3148)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!15, !3146, !99}
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3148 = !{!3149, !3150}
!3149 = !DILocalVariable(name: "p", arg: 1, scope: !3143, file: !380, line: 111, type: !3146)
!3150 = !DILocalVariable(name: "s", arg: 2, scope: !3143, file: !380, line: 111, type: !99)
!3151 = !DILocation(line: 0, scope: !3143)
!3152 = !DILocation(line: 0, scope: !2971, inlinedAt: !3153)
!3153 = distinct !DILocation(line: 113, column: 18, scope: !3143)
!3154 = !DILocation(line: 41, column: 13, scope: !2971, inlinedAt: !3153)
!3155 = !DILocation(line: 42, column: 8, scope: !2980, inlinedAt: !3153)
!3156 = !DILocation(line: 42, column: 10, scope: !2980, inlinedAt: !3153)
!3157 = !DILocation(line: 43, column: 5, scope: !2980, inlinedAt: !3153)
!3158 = !DILocalVariable(name: "__dest", arg: 1, scope: !3159, file: !1736, line: 26, type: !3162)
!3159 = distinct !DISubprogram(name: "memcpy", scope: !1736, file: !1736, line: 26, type: !3160, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !3164)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!15, !3162, !3163, !99}
!3162 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !15)
!3163 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3146)
!3164 = !{!3158, !3165, !3166}
!3165 = !DILocalVariable(name: "__src", arg: 2, scope: !3159, file: !1736, line: 26, type: !3163)
!3166 = !DILocalVariable(name: "__len", arg: 3, scope: !3159, file: !1736, line: 26, type: !99)
!3167 = !DILocation(line: 0, scope: !3159, inlinedAt: !3168)
!3168 = distinct !DILocation(line: 113, column: 10, scope: !3143)
!3169 = !DILocation(line: 29, column: 10, scope: !3159, inlinedAt: !3168)
!3170 = !DILocation(line: 113, column: 3, scope: !3143)
!3171 = distinct !DISubprogram(name: "xstrdup", scope: !380, file: !380, line: 119, type: !1018, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !3172)
!3172 = !{!3173}
!3173 = !DILocalVariable(name: "string", arg: 1, scope: !3171, file: !380, line: 119, type: !23)
!3174 = !DILocation(line: 0, scope: !3171)
!3175 = !DILocation(line: 121, column: 27, scope: !3171)
!3176 = !DILocation(line: 121, column: 43, scope: !3171)
!3177 = !DILocation(line: 0, scope: !3143, inlinedAt: !3178)
!3178 = distinct !DILocation(line: 121, column: 10, scope: !3171)
!3179 = !DILocation(line: 0, scope: !2971, inlinedAt: !3180)
!3180 = distinct !DILocation(line: 113, column: 18, scope: !3143, inlinedAt: !3178)
!3181 = !DILocation(line: 41, column: 13, scope: !2971, inlinedAt: !3180)
!3182 = !DILocation(line: 42, column: 8, scope: !2980, inlinedAt: !3180)
!3183 = !DILocation(line: 42, column: 10, scope: !2980, inlinedAt: !3180)
!3184 = !DILocation(line: 43, column: 5, scope: !2980, inlinedAt: !3180)
!3185 = !DILocation(line: 0, scope: !3159, inlinedAt: !3186)
!3186 = distinct !DILocation(line: 113, column: 10, scope: !3143, inlinedAt: !3178)
!3187 = !DILocation(line: 29, column: 10, scope: !3159, inlinedAt: !3186)
!3188 = !DILocation(line: 121, column: 3, scope: !3171)
!3189 = distinct !DISubprogram(name: "xalloc_die", scope: !397, file: !397, line: 32, type: !1025, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !36)
!3190 = !DILocation(line: 34, column: 10, scope: !3189)
!3191 = !DILocation(line: 34, column: 33, scope: !3189)
!3192 = !DILocation(line: 34, column: 3, scope: !3189)
!3193 = !DILocation(line: 40, column: 3, scope: !3189)
!3194 = distinct !DISubprogram(name: "xnumtoumax", scope: !3195, file: !3195, line: 36, type: !3196, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !398, retainedNodes: !3201)
!3195 = !DIFile(filename: "./lib/xdectoint.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!3198, !23, !26, !3198, !3198, !23, !23, !26}
!3198 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !3199, line: 102, baseType: !3200)
!3199 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!3200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !931, line: 73, baseType: !101)
!3201 = !{!3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3211}
!3202 = !DILocalVariable(name: "n_str", arg: 1, scope: !3194, file: !3195, line: 36, type: !23)
!3203 = !DILocalVariable(name: "base", arg: 2, scope: !3194, file: !3195, line: 36, type: !26)
!3204 = !DILocalVariable(name: "min", arg: 3, scope: !3194, file: !3195, line: 36, type: !3198)
!3205 = !DILocalVariable(name: "max", arg: 4, scope: !3194, file: !3195, line: 36, type: !3198)
!3206 = !DILocalVariable(name: "suffixes", arg: 5, scope: !3194, file: !3195, line: 37, type: !23)
!3207 = !DILocalVariable(name: "err", arg: 6, scope: !3194, file: !3195, line: 37, type: !23)
!3208 = !DILocalVariable(name: "err_exit", arg: 7, scope: !3194, file: !3195, line: 37, type: !26)
!3209 = !DILocalVariable(name: "s_err", scope: !3194, file: !3195, line: 39, type: !3210)
!3210 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !402, line: 38, baseType: !401)
!3211 = !DILocalVariable(name: "tnum", scope: !3194, file: !3195, line: 41, type: !3198)
!3212 = !DILocation(line: 0, scope: !3194)
!3213 = !DILocation(line: 41, column: 3, scope: !3194)
!3214 = !DILocation(line: 42, column: 11, scope: !3194)
!3215 = !DILocation(line: 44, column: 7, scope: !3194)
!3216 = !DILocation(line: 69, column: 50, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3218, file: !3195, line: 67, column: 5)
!3218 = distinct !DILexicalBlock(scope: !3194, file: !3195, line: 66, column: 7)
!3219 = !DILocation(line: 46, column: 11, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3221, file: !3195, line: 46, column: 11)
!3221 = distinct !DILexicalBlock(scope: !3222, file: !3195, line: 45, column: 5)
!3222 = distinct !DILexicalBlock(scope: !3194, file: !3195, line: 44, column: 7)
!3223 = !DILocation(line: 46, column: 16, scope: !3220)
!3224 = !DILocation(line: 46, column: 22, scope: !3220)
!3225 = !DILocation(line: 51, column: 20, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3227, file: !3195, line: 51, column: 15)
!3227 = distinct !DILexicalBlock(scope: !3220, file: !3195, line: 47, column: 9)
!3228 = !DILocation(line: 0, scope: !3226)
!3229 = !DILocation(line: 51, column: 15, scope: !3227)
!3230 = !DILocation(line: 52, column: 19, scope: !3226)
!3231 = !DILocation(line: 66, column: 7, scope: !3194)
!3232 = !DILocation(line: 58, column: 19, scope: !3226)
!3233 = !DILocation(line: 62, column: 5, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3222, file: !3195, line: 61, column: 12)
!3235 = !DILocation(line: 62, column: 11, scope: !3234)
!3236 = !DILocation(line: 64, column: 5, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3234, file: !3195, line: 63, column: 12)
!3238 = !DILocation(line: 64, column: 11, scope: !3237)
!3239 = !DILocation(line: 69, column: 14, scope: !3217)
!3240 = !DILocation(line: 69, column: 56, scope: !3217)
!3241 = !DILocation(line: 70, column: 29, scope: !3217)
!3242 = !DILocation(line: 69, column: 7, scope: !3217)
!3243 = !DILocation(line: 73, column: 10, scope: !3194)
!3244 = !DILocation(line: 71, column: 5, scope: !3217)
!3245 = !DILocation(line: 74, column: 1, scope: !3194)
!3246 = !DILocation(line: 73, column: 3, scope: !3194)
!3247 = distinct !DISubprogram(name: "xdectoumax", scope: !3195, file: !3195, line: 82, type: !3248, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !398, retainedNodes: !3250)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!3198, !23, !3198, !3198, !23, !23, !26}
!3250 = !{!3251, !3252, !3253, !3254, !3255, !3256}
!3251 = !DILocalVariable(name: "n_str", arg: 1, scope: !3247, file: !3195, line: 82, type: !23)
!3252 = !DILocalVariable(name: "min", arg: 2, scope: !3247, file: !3195, line: 82, type: !3198)
!3253 = !DILocalVariable(name: "max", arg: 3, scope: !3247, file: !3195, line: 82, type: !3198)
!3254 = !DILocalVariable(name: "suffixes", arg: 4, scope: !3247, file: !3195, line: 83, type: !23)
!3255 = !DILocalVariable(name: "err", arg: 5, scope: !3247, file: !3195, line: 83, type: !23)
!3256 = !DILocalVariable(name: "err_exit", arg: 6, scope: !3247, file: !3195, line: 83, type: !26)
!3257 = !DILocation(line: 0, scope: !3247)
!3258 = !DILocation(line: 85, column: 10, scope: !3247)
!3259 = !DILocation(line: 85, column: 3, scope: !3247)
!3260 = distinct !DISubprogram(name: "xstrtoumax", scope: !3261, file: !3261, line: 76, type: !3262, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !3265)
!3261 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!3210, !23, !966, !26, !3264, !23}
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3265 = !{!3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3278, !3279, !3282, !3283}
!3266 = !DILocalVariable(name: "s", arg: 1, scope: !3260, file: !3261, line: 76, type: !23)
!3267 = !DILocalVariable(name: "ptr", arg: 2, scope: !3260, file: !3261, line: 76, type: !966)
!3268 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3260, file: !3261, line: 76, type: !26)
!3269 = !DILocalVariable(name: "val", arg: 4, scope: !3260, file: !3261, line: 77, type: !3264)
!3270 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3260, file: !3261, line: 77, type: !23)
!3271 = !DILocalVariable(name: "t_ptr", scope: !3260, file: !3261, line: 79, type: !13)
!3272 = !DILocalVariable(name: "p", scope: !3260, file: !3261, line: 80, type: !966)
!3273 = !DILocalVariable(name: "tmp", scope: !3260, file: !3261, line: 81, type: !3198)
!3274 = !DILocalVariable(name: "err", scope: !3260, file: !3261, line: 82, type: !3210)
!3275 = !DILocalVariable(name: "q", scope: !3276, file: !3261, line: 92, type: !23)
!3276 = distinct !DILexicalBlock(scope: !3277, file: !3261, line: 91, column: 5)
!3277 = distinct !DILexicalBlock(scope: !3260, file: !3261, line: 90, column: 7)
!3278 = !DILocalVariable(name: "ch", scope: !3276, file: !3261, line: 93, type: !1367)
!3279 = !DILocalVariable(name: "base", scope: !3280, file: !3261, line: 129, type: !26)
!3280 = distinct !DILexicalBlock(scope: !3281, file: !3261, line: 128, column: 5)
!3281 = distinct !DILexicalBlock(scope: !3260, file: !3261, line: 127, column: 7)
!3282 = !DILocalVariable(name: "suffixes", scope: !3280, file: !3261, line: 130, type: !26)
!3283 = !DILocalVariable(name: "overflow", scope: !3280, file: !3261, line: 131, type: !3210)
!3284 = !DILocation(line: 0, scope: !3260)
!3285 = !DILocation(line: 79, column: 3, scope: !3260)
!3286 = !DILocation(line: 84, column: 3, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3288, file: !3261, line: 84, column: 3)
!3288 = distinct !DILexicalBlock(scope: !3260, file: !3261, line: 84, column: 3)
!3289 = !DILocation(line: 86, column: 8, scope: !3260)
!3290 = !DILocation(line: 88, column: 3, scope: !3260)
!3291 = !DILocation(line: 88, column: 9, scope: !3260)
!3292 = !DILocation(line: 0, scope: !3276)
!3293 = !DILocation(line: 94, column: 7, scope: !3276)
!3294 = !DILocation(line: 94, column: 14, scope: !3276)
!3295 = !DILocation(line: 95, column: 15, scope: !3276)
!3296 = distinct !{!3296, !3293, !3297, !879}
!3297 = !DILocation(line: 95, column: 17, scope: !3276)
!3298 = !DILocation(line: 96, column: 14, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3276, file: !3261, line: 96, column: 11)
!3300 = !DILocation(line: 100, column: 9, scope: !3260)
!3301 = !DILocation(line: 102, column: 7, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3260, file: !3261, line: 102, column: 7)
!3303 = !DILocation(line: 102, column: 10, scope: !3302)
!3304 = !DILocation(line: 102, column: 7, scope: !3260)
!3305 = !DILocation(line: 106, column: 11, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3307, file: !3261, line: 106, column: 11)
!3307 = distinct !DILexicalBlock(scope: !3302, file: !3261, line: 103, column: 5)
!3308 = !DILocation(line: 106, column: 26, scope: !3306)
!3309 = !DILocation(line: 106, column: 29, scope: !3306)
!3310 = !DILocation(line: 106, column: 33, scope: !3306)
!3311 = !DILocation(line: 106, column: 36, scope: !3306)
!3312 = !DILocation(line: 106, column: 11, scope: !3307)
!3313 = !DILocation(line: 111, column: 12, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3302, file: !3261, line: 111, column: 12)
!3315 = !DILocation(line: 111, column: 12, scope: !3302)
!3316 = !DILocation(line: 116, column: 5, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3314, file: !3261, line: 112, column: 5)
!3318 = !DILocation(line: 121, column: 8, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3260, file: !3261, line: 121, column: 7)
!3320 = !DILocation(line: 121, column: 7, scope: !3260)
!3321 = !DILocation(line: 123, column: 12, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3319, file: !3261, line: 122, column: 5)
!3323 = !DILocation(line: 124, column: 7, scope: !3322)
!3324 = !DILocation(line: 127, column: 7, scope: !3281)
!3325 = !DILocation(line: 127, column: 11, scope: !3281)
!3326 = !DILocation(line: 127, column: 7, scope: !3260)
!3327 = !DILocation(line: 0, scope: !3280)
!3328 = !DILocation(line: 133, column: 12, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3280, file: !3261, line: 133, column: 11)
!3330 = !DILocation(line: 133, column: 11, scope: !3280)
!3331 = !DILocation(line: 135, column: 16, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3329, file: !3261, line: 134, column: 9)
!3333 = !DILocation(line: 136, column: 22, scope: !3332)
!3334 = !DILocation(line: 136, column: 11, scope: !3332)
!3335 = !DILocation(line: 139, column: 7, scope: !3280)
!3336 = !DILocation(line: 151, column: 15, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3338, file: !3261, line: 151, column: 15)
!3338 = distinct !DILexicalBlock(scope: !3280, file: !3261, line: 140, column: 9)
!3339 = !DILocation(line: 151, column: 15, scope: !3338)
!3340 = !DILocation(line: 152, column: 21, scope: !3337)
!3341 = !DILocation(line: 152, column: 13, scope: !3337)
!3342 = !DILocation(line: 155, column: 21, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3344, file: !3261, line: 155, column: 21)
!3344 = distinct !DILexicalBlock(scope: !3337, file: !3261, line: 153, column: 15)
!3345 = !DILocation(line: 155, column: 29, scope: !3343)
!3346 = !DILocation(line: 155, column: 21, scope: !3344)
!3347 = !DILocation(line: 163, column: 17, scope: !3344)
!3348 = !DILocation(line: 167, column: 7, scope: !3280)
!3349 = !DILocalVariable(name: "err", scope: !3350, file: !3261, line: 67, type: !3210)
!3350 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3261, file: !3261, line: 65, type: !3351, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !3353)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!3210, !3264, !26, !26}
!3353 = !{!3354, !3355, !3356, !3349}
!3354 = !DILocalVariable(name: "x", arg: 1, scope: !3350, file: !3261, line: 65, type: !3264)
!3355 = !DILocalVariable(name: "base", arg: 2, scope: !3350, file: !3261, line: 65, type: !26)
!3356 = !DILocalVariable(name: "power", arg: 3, scope: !3350, file: !3261, line: 65, type: !26)
!3357 = !DILocation(line: 0, scope: !3350, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 221, column: 22, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3280, file: !3261, line: 168, column: 9)
!3360 = !DILocalVariable(name: "x", arg: 1, scope: !3361, file: !3261, line: 48, type: !3264)
!3361 = distinct !DISubprogram(name: "bkm_scale", scope: !3261, file: !3261, line: 48, type: !3362, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !3364)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!3210, !3264, !26}
!3364 = !{!3360, !3365}
!3365 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3361, file: !3261, line: 48, type: !26)
!3366 = !DILocation(line: 0, scope: !3361, inlinedAt: !3367)
!3367 = distinct !DILocation(line: 69, column: 12, scope: !3350, inlinedAt: !3358)
!3368 = !DILocation(line: 55, column: 39, scope: !3369, inlinedAt: !3367)
!3369 = distinct !DILexicalBlock(scope: !3361, file: !3261, line: 55, column: 7)
!3370 = !DILocation(line: 55, column: 7, scope: !3361, inlinedAt: !3367)
!3371 = !DILocation(line: 69, column: 9, scope: !3350, inlinedAt: !3358)
!3372 = !DILocation(line: 229, column: 11, scope: !3280)
!3373 = !DILocation(line: 0, scope: !3350, inlinedAt: !3374)
!3374 = distinct !DILocation(line: 217, column: 22, scope: !3359)
!3375 = !DILocation(line: 0, scope: !3361, inlinedAt: !3376)
!3376 = distinct !DILocation(line: 69, column: 12, scope: !3350, inlinedAt: !3374)
!3377 = !DILocation(line: 55, column: 39, scope: !3369, inlinedAt: !3376)
!3378 = !DILocation(line: 55, column: 7, scope: !3361, inlinedAt: !3376)
!3379 = !DILocation(line: 69, column: 9, scope: !3350, inlinedAt: !3374)
!3380 = !DILocation(line: 0, scope: !3350, inlinedAt: !3381)
!3381 = distinct !DILocation(line: 204, column: 22, scope: !3359)
!3382 = !DILocation(line: 0, scope: !3361, inlinedAt: !3383)
!3383 = distinct !DILocation(line: 69, column: 12, scope: !3350, inlinedAt: !3381)
!3384 = !DILocation(line: 55, column: 39, scope: !3369, inlinedAt: !3383)
!3385 = !DILocation(line: 55, column: 7, scope: !3361, inlinedAt: !3383)
!3386 = !DILocation(line: 69, column: 9, scope: !3350, inlinedAt: !3381)
!3387 = !DILocation(line: 0, scope: !3350, inlinedAt: !3388)
!3388 = distinct !DILocation(line: 185, column: 22, scope: !3359)
!3389 = !DILocation(line: 0, scope: !3361, inlinedAt: !3390)
!3390 = distinct !DILocation(line: 69, column: 12, scope: !3350, inlinedAt: !3388)
!3391 = !DILocation(line: 55, column: 39, scope: !3369, inlinedAt: !3390)
!3392 = !DILocation(line: 55, column: 7, scope: !3361, inlinedAt: !3390)
!3393 = !DILocation(line: 69, column: 9, scope: !3350, inlinedAt: !3388)
!3394 = !DILocation(line: 0, scope: !3361, inlinedAt: !3395)
!3395 = distinct !DILocation(line: 170, column: 22, scope: !3359)
!3396 = !DILocation(line: 55, column: 39, scope: !3369, inlinedAt: !3395)
!3397 = !DILocation(line: 55, column: 7, scope: !3361, inlinedAt: !3395)
!3398 = !DILocation(line: 171, column: 11, scope: !3359)
!3399 = !DILocation(line: 0, scope: !3361, inlinedAt: !3400)
!3400 = distinct !DILocation(line: 177, column: 22, scope: !3359)
!3401 = !DILocation(line: 55, column: 39, scope: !3369, inlinedAt: !3400)
!3402 = !DILocation(line: 55, column: 7, scope: !3361, inlinedAt: !3400)
!3403 = !DILocation(line: 178, column: 11, scope: !3359)
!3404 = !DILocation(line: 0, scope: !3350, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 190, column: 22, scope: !3359)
!3406 = !DILocation(line: 0, scope: !3361, inlinedAt: !3407)
!3407 = distinct !DILocation(line: 69, column: 12, scope: !3350, inlinedAt: !3405)
!3408 = !DILocation(line: 55, column: 39, scope: !3369, inlinedAt: !3407)
!3409 = !DILocation(line: 55, column: 7, scope: !3361, inlinedAt: !3407)
!3410 = !DILocation(line: 69, column: 9, scope: !3350, inlinedAt: !3405)
!3411 = !DILocation(line: 0, scope: !3350, inlinedAt: !3412)
!3412 = distinct !DILocation(line: 200, column: 22, scope: !3359)
!3413 = !DILocation(line: 0, scope: !3361, inlinedAt: !3414)
!3414 = distinct !DILocation(line: 69, column: 12, scope: !3350, inlinedAt: !3412)
!3415 = !DILocation(line: 55, column: 39, scope: !3369, inlinedAt: !3414)
!3416 = !DILocation(line: 55, column: 7, scope: !3361, inlinedAt: !3414)
!3417 = !DILocation(line: 69, column: 9, scope: !3350, inlinedAt: !3412)
!3418 = !DILocation(line: 0, scope: !3350, inlinedAt: !3419)
!3419 = distinct !DILocation(line: 209, column: 22, scope: !3359)
!3420 = !DILocation(line: 0, scope: !3361, inlinedAt: !3421)
!3421 = distinct !DILocation(line: 69, column: 12, scope: !3350, inlinedAt: !3419)
!3422 = !DILocation(line: 55, column: 39, scope: !3369, inlinedAt: !3421)
!3423 = !DILocation(line: 55, column: 7, scope: !3361, inlinedAt: !3421)
!3424 = !DILocation(line: 69, column: 9, scope: !3350, inlinedAt: !3419)
!3425 = !DILocation(line: 0, scope: !3361, inlinedAt: !3426)
!3426 = distinct !DILocation(line: 213, column: 22, scope: !3359)
!3427 = !DILocation(line: 55, column: 39, scope: !3369, inlinedAt: !3426)
!3428 = !DILocation(line: 55, column: 7, scope: !3361, inlinedAt: !3426)
!3429 = !DILocation(line: 214, column: 11, scope: !3359)
!3430 = !DILocation(line: 225, column: 16, scope: !3359)
!3431 = !DILocation(line: 226, column: 22, scope: !3359)
!3432 = !DILocation(line: 226, column: 11, scope: !3359)
!3433 = !DILocation(line: 0, scope: !3350, inlinedAt: !3434)
!3434 = distinct !DILocation(line: 195, column: 22, scope: !3359)
!3435 = !DILocation(line: 0, scope: !3361, inlinedAt: !3436)
!3436 = distinct !DILocation(line: 69, column: 12, scope: !3350, inlinedAt: !3434)
!3437 = !DILocation(line: 55, column: 39, scope: !3369, inlinedAt: !3436)
!3438 = !DILocation(line: 55, column: 7, scope: !3361, inlinedAt: !3436)
!3439 = !DILocation(line: 0, scope: !3359)
!3440 = !DILocation(line: 230, column: 10, scope: !3280)
!3441 = !DILocation(line: 231, column: 11, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3280, file: !3261, line: 231, column: 11)
!3443 = !DILocation(line: 231, column: 11, scope: !3280)
!3444 = !DILocation(line: 107, column: 13, scope: !3306)
!3445 = !DILocation(line: 82, column: 16, scope: !3260)
!3446 = !DILocation(line: 235, column: 8, scope: !3260)
!3447 = !DILocation(line: 236, column: 3, scope: !3260)
!3448 = !DILocation(line: 237, column: 1, scope: !3260)
!3449 = !DISubprogram(name: "strtoumax", scope: !3450, file: !3450, line: 301, type: !3451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!3450 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!101, !23, !966, !26}
!3453 = distinct !DISubprogram(name: "rpl_calloc", scope: !414, file: !414, line: 42, type: !2959, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3454)
!3454 = !{!3455, !3456, !3457, !3458}
!3455 = !DILocalVariable(name: "n", arg: 1, scope: !3453, file: !414, line: 42, type: !99)
!3456 = !DILocalVariable(name: "s", arg: 2, scope: !3453, file: !414, line: 42, type: !99)
!3457 = !DILocalVariable(name: "result", scope: !3453, file: !414, line: 44, type: !15)
!3458 = !DILocalVariable(name: "bytes", scope: !3459, file: !414, line: 56, type: !99)
!3459 = distinct !DILexicalBlock(scope: !3460, file: !414, line: 53, column: 5)
!3460 = distinct !DILexicalBlock(scope: !3453, file: !414, line: 47, column: 7)
!3461 = !DILocation(line: 0, scope: !3453)
!3462 = !DILocation(line: 47, column: 9, scope: !3460)
!3463 = !DILocation(line: 47, column: 14, scope: !3460)
!3464 = !DILocation(line: 0, scope: !3459)
!3465 = !DILocation(line: 57, column: 21, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3459, file: !414, line: 57, column: 11)
!3467 = !DILocation(line: 57, column: 11, scope: !3459)
!3468 = !DILocation(line: 59, column: 11, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3466, file: !414, line: 58, column: 9)
!3470 = !DILocation(line: 59, column: 17, scope: !3469)
!3471 = !DILocation(line: 65, column: 12, scope: !3453)
!3472 = !DILocation(line: 72, column: 3, scope: !3453)
!3473 = !DILocation(line: 73, column: 1, scope: !3453)
!3474 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !416, file: !416, line: 86, type: !3475, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !415, retainedNodes: !3489)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!99, !3477, !23, !99, !3478}
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1489, line: 6, baseType: !3480)
!3480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1491, line: 21, baseType: !3481)
!3481 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1491, line: 13, size: 64, elements: !3482)
!3482 = !{!3483, !3484}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3481, file: !1491, line: 15, baseType: !26, size: 32)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3481, file: !1491, line: 20, baseType: !3485, size: 32, offset: 32)
!3485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3481, file: !1491, line: 16, size: 32, elements: !3486)
!3486 = !{!3487, !3488}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3485, file: !1491, line: 18, baseType: !7, size: 32)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3485, file: !1491, line: 19, baseType: !1500, size: 32)
!3489 = !{!3490, !3491, !3492, !3493, !3494, !3495, !3496}
!3490 = !DILocalVariable(name: "pwc", arg: 1, scope: !3474, file: !416, line: 86, type: !3477)
!3491 = !DILocalVariable(name: "s", arg: 2, scope: !3474, file: !416, line: 86, type: !23)
!3492 = !DILocalVariable(name: "n", arg: 3, scope: !3474, file: !416, line: 86, type: !99)
!3493 = !DILocalVariable(name: "ps", arg: 4, scope: !3474, file: !416, line: 86, type: !3478)
!3494 = !DILocalVariable(name: "ret", scope: !3474, file: !416, line: 88, type: !99)
!3495 = !DILocalVariable(name: "wc", scope: !3474, file: !416, line: 89, type: !1505)
!3496 = !DILocalVariable(name: "uc", scope: !3497, file: !416, line: 156, type: !1367)
!3497 = distinct !DILexicalBlock(scope: !3498, file: !416, line: 155, column: 5)
!3498 = distinct !DILexicalBlock(scope: !3474, file: !416, line: 154, column: 7)
!3499 = !DILocation(line: 0, scope: !3474)
!3500 = !DILocation(line: 89, column: 3, scope: !3474)
!3501 = !DILocation(line: 105, column: 9, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3474, file: !416, line: 105, column: 7)
!3503 = !DILocation(line: 105, column: 7, scope: !3474)
!3504 = !DILocation(line: 145, column: 9, scope: !3474)
!3505 = !DILocation(line: 154, column: 19, scope: !3498)
!3506 = !DILocation(line: 154, column: 26, scope: !3498)
!3507 = !DILocation(line: 154, column: 41, scope: !3498)
!3508 = !DILocation(line: 154, column: 7, scope: !3474)
!3509 = !DILocation(line: 156, column: 26, scope: !3497)
!3510 = !DILocation(line: 0, scope: !3497)
!3511 = !DILocation(line: 157, column: 14, scope: !3497)
!3512 = !DILocation(line: 157, column: 12, scope: !3497)
!3513 = !DILocation(line: 163, column: 1, scope: !3474)
!3514 = !DISubprogram(name: "mbrtowc", scope: !2169, file: !2169, line: 296, type: !3515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{!101, !28, !23, !101, !3517}
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3518 = distinct !DISubprogram(name: "close_stream", scope: !419, file: !419, line: 56, type: !3519, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3555)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!26, !3521}
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2803, line: 7, baseType: !3523)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !909, line: 49, size: 1728, elements: !3524)
!3524 = !{!3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3523, file: !909, line: 51, baseType: !26, size: 32)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3523, file: !909, line: 54, baseType: !13, size: 64, offset: 64)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3523, file: !909, line: 55, baseType: !13, size: 64, offset: 128)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3523, file: !909, line: 56, baseType: !13, size: 64, offset: 192)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3523, file: !909, line: 57, baseType: !13, size: 64, offset: 256)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3523, file: !909, line: 58, baseType: !13, size: 64, offset: 320)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3523, file: !909, line: 59, baseType: !13, size: 64, offset: 384)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3523, file: !909, line: 60, baseType: !13, size: 64, offset: 448)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3523, file: !909, line: 61, baseType: !13, size: 64, offset: 512)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3523, file: !909, line: 64, baseType: !13, size: 64, offset: 576)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3523, file: !909, line: 65, baseType: !13, size: 64, offset: 640)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3523, file: !909, line: 66, baseType: !13, size: 64, offset: 704)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3523, file: !909, line: 68, baseType: !924, size: 64, offset: 768)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3523, file: !909, line: 70, baseType: !3539, size: 64, offset: 832)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3523, file: !909, line: 72, baseType: !26, size: 32, offset: 896)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3523, file: !909, line: 73, baseType: !26, size: 32, offset: 928)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3523, file: !909, line: 74, baseType: !930, size: 64, offset: 960)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3523, file: !909, line: 77, baseType: !98, size: 16, offset: 1024)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3523, file: !909, line: 78, baseType: !935, size: 8, offset: 1040)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3523, file: !909, line: 79, baseType: !937, size: 8, offset: 1048)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3523, file: !909, line: 81, baseType: !941, size: 64, offset: 1088)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3523, file: !909, line: 89, baseType: !944, size: 64, offset: 1152)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3523, file: !909, line: 91, baseType: !946, size: 64, offset: 1216)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3523, file: !909, line: 92, baseType: !949, size: 64, offset: 1280)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3523, file: !909, line: 93, baseType: !3539, size: 64, offset: 1344)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3523, file: !909, line: 94, baseType: !15, size: 64, offset: 1408)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3523, file: !909, line: 95, baseType: !99, size: 64, offset: 1472)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3523, file: !909, line: 96, baseType: !26, size: 32, offset: 1536)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3523, file: !909, line: 98, baseType: !956, size: 160, offset: 1568)
!3555 = !{!3556, !3557, !3559, !3560}
!3556 = !DILocalVariable(name: "stream", arg: 1, scope: !3518, file: !419, line: 56, type: !3521)
!3557 = !DILocalVariable(name: "some_pending", scope: !3518, file: !419, line: 58, type: !3558)
!3558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!3559 = !DILocalVariable(name: "prev_fail", scope: !3518, file: !419, line: 59, type: !3558)
!3560 = !DILocalVariable(name: "fclose_fail", scope: !3518, file: !419, line: 60, type: !3558)
!3561 = !DILocation(line: 0, scope: !3518)
!3562 = !DILocation(line: 58, column: 30, scope: !3518)
!3563 = !DILocalVariable(name: "__stream", arg: 1, scope: !3564, file: !3565, line: 135, type: !3521)
!3564 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3565, file: !3565, line: 135, type: !3519, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3566)
!3565 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!3566 = !{!3563}
!3567 = !DILocation(line: 0, scope: !3564, inlinedAt: !3568)
!3568 = distinct !DILocation(line: 59, column: 27, scope: !3518)
!3569 = !DILocation(line: 137, column: 10, scope: !3564, inlinedAt: !3568)
!3570 = !{!3571, !998, i64 0}
!3571 = !{!"_IO_FILE", !998, i64 0, !837, i64 8, !837, i64 16, !837, i64 24, !837, i64 32, !837, i64 40, !837, i64 48, !837, i64 56, !837, i64 64, !837, i64 72, !837, i64 80, !837, i64 88, !837, i64 96, !837, i64 104, !998, i64 112, !998, i64 116, !2245, i64 120, !1728, i64 128, !838, i64 130, !838, i64 131, !837, i64 136, !2245, i64 144, !837, i64 152, !837, i64 160, !837, i64 168, !837, i64 176, !2245, i64 184, !998, i64 192, !838, i64 196}
!3572 = !DILocation(line: 59, column: 43, scope: !3518)
!3573 = !DILocation(line: 60, column: 29, scope: !3518)
!3574 = !DILocation(line: 60, column: 45, scope: !3518)
!3575 = !DILocation(line: 70, column: 17, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3518, file: !419, line: 70, column: 7)
!3577 = !DILocation(line: 58, column: 50, scope: !3518)
!3578 = !DILocation(line: 70, column: 33, scope: !3576)
!3579 = !DILocation(line: 70, column: 53, scope: !3576)
!3580 = !DILocation(line: 70, column: 59, scope: !3576)
!3581 = !DILocation(line: 70, column: 7, scope: !3518)
!3582 = !DILocation(line: 72, column: 11, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3576, file: !419, line: 71, column: 5)
!3584 = !DILocation(line: 73, column: 9, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3583, file: !419, line: 72, column: 11)
!3586 = !DILocation(line: 73, column: 15, scope: !3585)
!3587 = !DILocation(line: 78, column: 1, scope: !3518)
!3588 = distinct !DISubprogram(name: "hard_locale", scope: !421, file: !421, line: 27, type: !1123, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !3589)
!3589 = !{!3590, !3591}
!3590 = !DILocalVariable(name: "category", arg: 1, scope: !3588, file: !421, line: 27, type: !26)
!3591 = !DILocalVariable(name: "locale", scope: !3588, file: !421, line: 29, type: !3592)
!3592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2056, elements: !3593)
!3593 = !{!3594}
!3594 = !DISubrange(count: 257)
!3595 = !DILocation(line: 0, scope: !3588)
!3596 = !DILocation(line: 29, column: 3, scope: !3588)
!3597 = !DILocation(line: 29, column: 8, scope: !3588)
!3598 = !DILocation(line: 31, column: 7, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3588, file: !421, line: 31, column: 7)
!3600 = !DILocation(line: 31, column: 7, scope: !3588)
!3601 = !DILocation(line: 34, column: 12, scope: !3588)
!3602 = !DILocation(line: 34, column: 38, scope: !3588)
!3603 = !DILocation(line: 34, column: 41, scope: !3588)
!3604 = !DILocation(line: 34, column: 66, scope: !3588)
!3605 = !DILocation(line: 35, column: 1, scope: !3588)
!3606 = distinct !DISubprogram(name: "locale_charset", scope: !423, file: !423, line: 831, type: !3607, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !3609)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{!23}
!3609 = !{!3610}
!3610 = !DILocalVariable(name: "codeset", scope: !3606, file: !423, line: 833, type: !23)
!3611 = !DILocation(line: 847, column: 13, scope: !3606)
!3612 = !DILocation(line: 0, scope: !3606)
!3613 = !DILocation(line: 911, column: 15, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3606, file: !423, line: 911, column: 7)
!3615 = !DILocation(line: 911, column: 7, scope: !3606)
!3616 = !DILocation(line: 1070, column: 13, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3618, file: !423, line: 1070, column: 13)
!3618 = distinct !DILexicalBlock(scope: !3619, file: !423, line: 1060, column: 7)
!3619 = distinct !DILexicalBlock(scope: !3606, file: !423, line: 1019, column: 3)
!3620 = !DILocation(line: 1070, column: 24, scope: !3617)
!3621 = !DILocation(line: 1070, column: 13, scope: !3618)
!3622 = !DILocation(line: 1158, column: 3, scope: !3606)
!3623 = !DISubprogram(name: "nl_langinfo", scope: !426, file: !426, line: 661, type: !3624, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{!13, !26}
!3626 = distinct !DISubprogram(name: "setlocale_null_r", scope: !812, file: !812, line: 269, type: !3627, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !811, retainedNodes: !3629)
!3627 = !DISubroutineType(types: !3628)
!3628 = !{!26, !26, !13, !99}
!3629 = !{!3630, !3631, !3632}
!3630 = !DILocalVariable(name: "category", arg: 1, scope: !3626, file: !812, line: 269, type: !26)
!3631 = !DILocalVariable(name: "buf", arg: 2, scope: !3626, file: !812, line: 269, type: !13)
!3632 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3626, file: !812, line: 269, type: !99)
!3633 = !DILocation(line: 0, scope: !3626)
!3634 = !DILocalVariable(name: "category", arg: 1, scope: !3635, file: !812, line: 91, type: !26)
!3635 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !812, file: !812, line: 91, type: !3627, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !811, retainedNodes: !3636)
!3636 = !{!3634, !3637, !3638, !3639, !3640}
!3637 = !DILocalVariable(name: "buf", arg: 2, scope: !3635, file: !812, line: 91, type: !13)
!3638 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3635, file: !812, line: 91, type: !99)
!3639 = !DILocalVariable(name: "result", scope: !3635, file: !812, line: 140, type: !23)
!3640 = !DILocalVariable(name: "length", scope: !3641, file: !812, line: 154, type: !99)
!3641 = distinct !DILexicalBlock(scope: !3642, file: !812, line: 153, column: 5)
!3642 = distinct !DILexicalBlock(scope: !3635, file: !812, line: 142, column: 7)
!3643 = !DILocation(line: 0, scope: !3635, inlinedAt: !3644)
!3644 = distinct !DILocation(line: 274, column: 10, scope: !3626)
!3645 = !DILocalVariable(name: "category", arg: 1, scope: !3646, file: !812, line: 60, type: !26)
!3646 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !812, file: !812, line: 60, type: !3647, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !811, retainedNodes: !3649)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!23, !26}
!3649 = !{!3645, !3650}
!3650 = !DILocalVariable(name: "result", scope: !3646, file: !812, line: 62, type: !23)
!3651 = !DILocation(line: 0, scope: !3646, inlinedAt: !3652)
!3652 = distinct !DILocation(line: 140, column: 24, scope: !3635, inlinedAt: !3644)
!3653 = !DILocation(line: 62, column: 24, scope: !3646, inlinedAt: !3652)
!3654 = !DILocation(line: 142, column: 14, scope: !3642, inlinedAt: !3644)
!3655 = !DILocation(line: 142, column: 7, scope: !3635, inlinedAt: !3644)
!3656 = !DILocation(line: 145, column: 19, scope: !3657, inlinedAt: !3644)
!3657 = distinct !DILexicalBlock(scope: !3658, file: !812, line: 145, column: 11)
!3658 = distinct !DILexicalBlock(scope: !3642, file: !812, line: 143, column: 5)
!3659 = !DILocation(line: 145, column: 11, scope: !3658, inlinedAt: !3644)
!3660 = !DILocation(line: 149, column: 16, scope: !3657, inlinedAt: !3644)
!3661 = !DILocation(line: 149, column: 9, scope: !3657, inlinedAt: !3644)
!3662 = !DILocation(line: 154, column: 23, scope: !3641, inlinedAt: !3644)
!3663 = !DILocation(line: 0, scope: !3641, inlinedAt: !3644)
!3664 = !DILocation(line: 155, column: 18, scope: !3665, inlinedAt: !3644)
!3665 = distinct !DILexicalBlock(scope: !3641, file: !812, line: 155, column: 11)
!3666 = !DILocation(line: 155, column: 11, scope: !3641, inlinedAt: !3644)
!3667 = !DILocation(line: 157, column: 39, scope: !3668, inlinedAt: !3644)
!3668 = distinct !DILexicalBlock(scope: !3665, file: !812, line: 156, column: 9)
!3669 = !DILocalVariable(name: "__dest", arg: 1, scope: !3670, file: !1736, line: 26, type: !3162)
!3670 = distinct !DISubprogram(name: "memcpy", scope: !1736, file: !1736, line: 26, type: !3160, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !811, retainedNodes: !3671)
!3671 = !{!3669, !3672, !3673}
!3672 = !DILocalVariable(name: "__src", arg: 2, scope: !3670, file: !1736, line: 26, type: !3163)
!3673 = !DILocalVariable(name: "__len", arg: 3, scope: !3670, file: !1736, line: 26, type: !99)
!3674 = !DILocation(line: 0, scope: !3670, inlinedAt: !3675)
!3675 = distinct !DILocation(line: 157, column: 11, scope: !3668, inlinedAt: !3644)
!3676 = !DILocation(line: 29, column: 10, scope: !3670, inlinedAt: !3675)
!3677 = !DILocation(line: 158, column: 11, scope: !3668, inlinedAt: !3644)
!3678 = !DILocation(line: 162, column: 23, scope: !3679, inlinedAt: !3644)
!3679 = distinct !DILexicalBlock(scope: !3680, file: !812, line: 162, column: 15)
!3680 = distinct !DILexicalBlock(scope: !3665, file: !812, line: 161, column: 9)
!3681 = !DILocation(line: 162, column: 15, scope: !3680, inlinedAt: !3644)
!3682 = !DILocation(line: 167, column: 44, scope: !3683, inlinedAt: !3644)
!3683 = distinct !DILexicalBlock(scope: !3679, file: !812, line: 163, column: 13)
!3684 = !DILocation(line: 0, scope: !3670, inlinedAt: !3685)
!3685 = distinct !DILocation(line: 167, column: 15, scope: !3683, inlinedAt: !3644)
!3686 = !DILocation(line: 29, column: 10, scope: !3670, inlinedAt: !3685)
!3687 = !DILocation(line: 168, column: 15, scope: !3683, inlinedAt: !3644)
!3688 = !DILocation(line: 168, column: 32, scope: !3683, inlinedAt: !3644)
!3689 = !DILocation(line: 169, column: 13, scope: !3683, inlinedAt: !3644)
!3690 = !DILocation(line: 0, scope: !3642, inlinedAt: !3644)
!3691 = !DILocation(line: 274, column: 3, scope: !3626)
!3692 = distinct !DISubprogram(name: "setlocale_null", scope: !812, file: !812, line: 301, type: !3647, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !811, retainedNodes: !3693)
!3693 = !{!3694}
!3694 = !DILocalVariable(name: "category", arg: 1, scope: !3692, file: !812, line: 301, type: !26)
!3695 = !DILocation(line: 0, scope: !3692)
!3696 = !DILocation(line: 0, scope: !3646, inlinedAt: !3697)
!3697 = distinct !DILocation(line: 304, column: 10, scope: !3692)
!3698 = !DILocation(line: 62, column: 24, scope: !3646, inlinedAt: !3697)
!3699 = !DILocation(line: 304, column: 3, scope: !3692)
!3700 = distinct !DISubprogram(name: "rpl_fclose", scope: !814, file: !814, line: 58, type: !3701, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !3737)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!26, !3703}
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2803, line: 7, baseType: !3705)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !909, line: 49, size: 1728, elements: !3706)
!3706 = !{!3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3705, file: !909, line: 51, baseType: !26, size: 32)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3705, file: !909, line: 54, baseType: !13, size: 64, offset: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3705, file: !909, line: 55, baseType: !13, size: 64, offset: 128)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3705, file: !909, line: 56, baseType: !13, size: 64, offset: 192)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3705, file: !909, line: 57, baseType: !13, size: 64, offset: 256)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3705, file: !909, line: 58, baseType: !13, size: 64, offset: 320)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3705, file: !909, line: 59, baseType: !13, size: 64, offset: 384)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3705, file: !909, line: 60, baseType: !13, size: 64, offset: 448)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3705, file: !909, line: 61, baseType: !13, size: 64, offset: 512)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3705, file: !909, line: 64, baseType: !13, size: 64, offset: 576)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3705, file: !909, line: 65, baseType: !13, size: 64, offset: 640)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3705, file: !909, line: 66, baseType: !13, size: 64, offset: 704)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3705, file: !909, line: 68, baseType: !924, size: 64, offset: 768)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3705, file: !909, line: 70, baseType: !3721, size: 64, offset: 832)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3705, file: !909, line: 72, baseType: !26, size: 32, offset: 896)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3705, file: !909, line: 73, baseType: !26, size: 32, offset: 928)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3705, file: !909, line: 74, baseType: !930, size: 64, offset: 960)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3705, file: !909, line: 77, baseType: !98, size: 16, offset: 1024)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3705, file: !909, line: 78, baseType: !935, size: 8, offset: 1040)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3705, file: !909, line: 79, baseType: !937, size: 8, offset: 1048)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3705, file: !909, line: 81, baseType: !941, size: 64, offset: 1088)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3705, file: !909, line: 89, baseType: !944, size: 64, offset: 1152)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3705, file: !909, line: 91, baseType: !946, size: 64, offset: 1216)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3705, file: !909, line: 92, baseType: !949, size: 64, offset: 1280)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3705, file: !909, line: 93, baseType: !3721, size: 64, offset: 1344)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3705, file: !909, line: 94, baseType: !15, size: 64, offset: 1408)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3705, file: !909, line: 95, baseType: !99, size: 64, offset: 1472)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3705, file: !909, line: 96, baseType: !26, size: 32, offset: 1536)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3705, file: !909, line: 98, baseType: !956, size: 160, offset: 1568)
!3737 = !{!3738, !3739, !3740, !3741}
!3738 = !DILocalVariable(name: "fp", arg: 1, scope: !3700, file: !814, line: 58, type: !3703)
!3739 = !DILocalVariable(name: "saved_errno", scope: !3700, file: !814, line: 60, type: !26)
!3740 = !DILocalVariable(name: "fd", scope: !3700, file: !814, line: 61, type: !26)
!3741 = !DILocalVariable(name: "result", scope: !3700, file: !814, line: 62, type: !26)
!3742 = !DILocation(line: 0, scope: !3700)
!3743 = !DILocation(line: 65, column: 8, scope: !3700)
!3744 = !DILocation(line: 66, column: 10, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3700, file: !814, line: 66, column: 7)
!3746 = !DILocation(line: 66, column: 7, scope: !3700)
!3747 = !DILocation(line: 67, column: 12, scope: !3745)
!3748 = !DILocation(line: 67, column: 5, scope: !3745)
!3749 = !DILocation(line: 72, column: 9, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3700, file: !814, line: 72, column: 7)
!3751 = !DILocation(line: 72, column: 23, scope: !3750)
!3752 = !DILocation(line: 72, column: 33, scope: !3750)
!3753 = !DILocation(line: 72, column: 26, scope: !3750)
!3754 = !DILocation(line: 72, column: 59, scope: !3750)
!3755 = !DILocation(line: 73, column: 7, scope: !3750)
!3756 = !DILocation(line: 73, column: 10, scope: !3750)
!3757 = !DILocation(line: 72, column: 7, scope: !3700)
!3758 = !DILocation(line: 100, column: 12, scope: !3700)
!3759 = !DILocation(line: 105, column: 7, scope: !3700)
!3760 = !DILocation(line: 74, column: 19, scope: !3750)
!3761 = !DILocation(line: 105, column: 19, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3700, file: !814, line: 105, column: 7)
!3763 = !DILocation(line: 107, column: 13, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3762, file: !814, line: 106, column: 5)
!3765 = !DILocation(line: 109, column: 5, scope: !3764)
!3766 = !DILocation(line: 112, column: 1, scope: !3700)
!3767 = !DISubprogram(name: "fileno", scope: !904, file: !904, line: 785, type: !3768, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!26, !3721}
!3770 = !DISubprogram(name: "fclose", scope: !904, file: !904, line: 213, type: !3768, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!3771 = !DISubprogram(name: "lseek", scope: !1282, file: !1282, line: 334, type: !3772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{!932, !26, !932, !26}
!3774 = distinct !DISubprogram(name: "rpl_fflush", scope: !816, file: !816, line: 129, type: !3775, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3811)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{!26, !3777}
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2803, line: 7, baseType: !3779)
!3779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !909, line: 49, size: 1728, elements: !3780)
!3780 = !{!3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3779, file: !909, line: 51, baseType: !26, size: 32)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3779, file: !909, line: 54, baseType: !13, size: 64, offset: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3779, file: !909, line: 55, baseType: !13, size: 64, offset: 128)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3779, file: !909, line: 56, baseType: !13, size: 64, offset: 192)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3779, file: !909, line: 57, baseType: !13, size: 64, offset: 256)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3779, file: !909, line: 58, baseType: !13, size: 64, offset: 320)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3779, file: !909, line: 59, baseType: !13, size: 64, offset: 384)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3779, file: !909, line: 60, baseType: !13, size: 64, offset: 448)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3779, file: !909, line: 61, baseType: !13, size: 64, offset: 512)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3779, file: !909, line: 64, baseType: !13, size: 64, offset: 576)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3779, file: !909, line: 65, baseType: !13, size: 64, offset: 640)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3779, file: !909, line: 66, baseType: !13, size: 64, offset: 704)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3779, file: !909, line: 68, baseType: !924, size: 64, offset: 768)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3779, file: !909, line: 70, baseType: !3795, size: 64, offset: 832)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3779, file: !909, line: 72, baseType: !26, size: 32, offset: 896)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3779, file: !909, line: 73, baseType: !26, size: 32, offset: 928)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3779, file: !909, line: 74, baseType: !930, size: 64, offset: 960)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3779, file: !909, line: 77, baseType: !98, size: 16, offset: 1024)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3779, file: !909, line: 78, baseType: !935, size: 8, offset: 1040)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3779, file: !909, line: 79, baseType: !937, size: 8, offset: 1048)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3779, file: !909, line: 81, baseType: !941, size: 64, offset: 1088)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3779, file: !909, line: 89, baseType: !944, size: 64, offset: 1152)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3779, file: !909, line: 91, baseType: !946, size: 64, offset: 1216)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3779, file: !909, line: 92, baseType: !949, size: 64, offset: 1280)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3779, file: !909, line: 93, baseType: !3795, size: 64, offset: 1344)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3779, file: !909, line: 94, baseType: !15, size: 64, offset: 1408)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3779, file: !909, line: 95, baseType: !99, size: 64, offset: 1472)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3779, file: !909, line: 96, baseType: !26, size: 32, offset: 1536)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3779, file: !909, line: 98, baseType: !956, size: 160, offset: 1568)
!3811 = !{!3812}
!3812 = !DILocalVariable(name: "stream", arg: 1, scope: !3774, file: !816, line: 129, type: !3777)
!3813 = !DILocation(line: 0, scope: !3774)
!3814 = !DILocation(line: 150, column: 14, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3774, file: !816, line: 150, column: 7)
!3816 = !DILocation(line: 150, column: 22, scope: !3815)
!3817 = !DILocation(line: 150, column: 27, scope: !3815)
!3818 = !DILocation(line: 150, column: 7, scope: !3774)
!3819 = !DILocation(line: 151, column: 12, scope: !3815)
!3820 = !DILocation(line: 151, column: 5, scope: !3815)
!3821 = !DILocalVariable(name: "fp", arg: 1, scope: !3822, file: !816, line: 41, type: !3777)
!3822 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !816, file: !816, line: 41, type: !3823, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3825)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{null, !3777}
!3825 = !{!3821}
!3826 = !DILocation(line: 0, scope: !3822, inlinedAt: !3827)
!3827 = distinct !DILocation(line: 156, column: 3, scope: !3774)
!3828 = !DILocation(line: 43, column: 11, scope: !3829, inlinedAt: !3827)
!3829 = distinct !DILexicalBlock(scope: !3822, file: !816, line: 43, column: 7)
!3830 = !DILocation(line: 43, column: 18, scope: !3829, inlinedAt: !3827)
!3831 = !DILocation(line: 43, column: 7, scope: !3822, inlinedAt: !3827)
!3832 = !DILocation(line: 45, column: 5, scope: !3829, inlinedAt: !3827)
!3833 = !DILocation(line: 158, column: 10, scope: !3774)
!3834 = !DILocation(line: 158, column: 3, scope: !3774)
!3835 = !DILocation(line: 235, column: 1, scope: !3774)
!3836 = !DISubprogram(name: "fflush", scope: !904, file: !904, line: 218, type: !3837, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!26, !3795}
!3839 = distinct !DISubprogram(name: "rpl_fseeko", scope: !818, file: !818, line: 28, type: !3840, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !817, retainedNodes: !3877)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!26, !3842, !3876, !26}
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2803, line: 7, baseType: !3844)
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !909, line: 49, size: 1728, elements: !3845)
!3845 = !{!3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3844, file: !909, line: 51, baseType: !26, size: 32)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3844, file: !909, line: 54, baseType: !13, size: 64, offset: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3844, file: !909, line: 55, baseType: !13, size: 64, offset: 128)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3844, file: !909, line: 56, baseType: !13, size: 64, offset: 192)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3844, file: !909, line: 57, baseType: !13, size: 64, offset: 256)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3844, file: !909, line: 58, baseType: !13, size: 64, offset: 320)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3844, file: !909, line: 59, baseType: !13, size: 64, offset: 384)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3844, file: !909, line: 60, baseType: !13, size: 64, offset: 448)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3844, file: !909, line: 61, baseType: !13, size: 64, offset: 512)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3844, file: !909, line: 64, baseType: !13, size: 64, offset: 576)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3844, file: !909, line: 65, baseType: !13, size: 64, offset: 640)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3844, file: !909, line: 66, baseType: !13, size: 64, offset: 704)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3844, file: !909, line: 68, baseType: !924, size: 64, offset: 768)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3844, file: !909, line: 70, baseType: !3860, size: 64, offset: 832)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3844, file: !909, line: 72, baseType: !26, size: 32, offset: 896)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3844, file: !909, line: 73, baseType: !26, size: 32, offset: 928)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3844, file: !909, line: 74, baseType: !930, size: 64, offset: 960)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3844, file: !909, line: 77, baseType: !98, size: 16, offset: 1024)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3844, file: !909, line: 78, baseType: !935, size: 8, offset: 1040)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3844, file: !909, line: 79, baseType: !937, size: 8, offset: 1048)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3844, file: !909, line: 81, baseType: !941, size: 64, offset: 1088)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3844, file: !909, line: 89, baseType: !944, size: 64, offset: 1152)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3844, file: !909, line: 91, baseType: !946, size: 64, offset: 1216)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3844, file: !909, line: 92, baseType: !949, size: 64, offset: 1280)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3844, file: !909, line: 93, baseType: !3860, size: 64, offset: 1344)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3844, file: !909, line: 94, baseType: !15, size: 64, offset: 1408)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3844, file: !909, line: 95, baseType: !99, size: 64, offset: 1472)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3844, file: !909, line: 96, baseType: !26, size: 32, offset: 1536)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3844, file: !909, line: 98, baseType: !956, size: 160, offset: 1568)
!3876 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !904, line: 63, baseType: !930)
!3877 = !{!3878, !3879, !3880, !3881}
!3878 = !DILocalVariable(name: "fp", arg: 1, scope: !3839, file: !818, line: 28, type: !3842)
!3879 = !DILocalVariable(name: "offset", arg: 2, scope: !3839, file: !818, line: 28, type: !3876)
!3880 = !DILocalVariable(name: "whence", arg: 3, scope: !3839, file: !818, line: 28, type: !26)
!3881 = !DILocalVariable(name: "pos", scope: !3882, file: !818, line: 117, type: !3876)
!3882 = distinct !DILexicalBlock(scope: !3883, file: !818, line: 113, column: 5)
!3883 = distinct !DILexicalBlock(scope: !3839, file: !818, line: 52, column: 7)
!3884 = !DILocation(line: 0, scope: !3839)
!3885 = !DILocation(line: 52, column: 11, scope: !3883)
!3886 = !{!3571, !837, i64 16}
!3887 = !DILocation(line: 52, column: 31, scope: !3883)
!3888 = !{!3571, !837, i64 8}
!3889 = !DILocation(line: 52, column: 24, scope: !3883)
!3890 = !DILocation(line: 53, column: 7, scope: !3883)
!3891 = !DILocation(line: 53, column: 14, scope: !3883)
!3892 = !{!3571, !837, i64 40}
!3893 = !DILocation(line: 53, column: 35, scope: !3883)
!3894 = !{!3571, !837, i64 32}
!3895 = !DILocation(line: 53, column: 28, scope: !3883)
!3896 = !DILocation(line: 54, column: 7, scope: !3883)
!3897 = !DILocation(line: 54, column: 14, scope: !3883)
!3898 = !{!3571, !837, i64 72}
!3899 = !DILocation(line: 54, column: 28, scope: !3883)
!3900 = !DILocation(line: 52, column: 7, scope: !3839)
!3901 = !DILocation(line: 117, column: 26, scope: !3882)
!3902 = !DILocation(line: 117, column: 19, scope: !3882)
!3903 = !DILocation(line: 0, scope: !3882)
!3904 = !DILocation(line: 118, column: 15, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3882, file: !818, line: 118, column: 11)
!3906 = !DILocation(line: 118, column: 11, scope: !3882)
!3907 = !DILocation(line: 129, column: 11, scope: !3882)
!3908 = !DILocation(line: 129, column: 18, scope: !3882)
!3909 = !DILocation(line: 130, column: 11, scope: !3882)
!3910 = !DILocation(line: 130, column: 19, scope: !3882)
!3911 = !{!3571, !2245, i64 144}
!3912 = !DILocation(line: 161, column: 7, scope: !3882)
!3913 = !DILocation(line: 163, column: 10, scope: !3839)
!3914 = !DILocation(line: 163, column: 3, scope: !3839)
!3915 = !DILocation(line: 164, column: 1, scope: !3839)
!3916 = !DISubprogram(name: "fseeko", scope: !904, file: !904, line: 712, type: !3917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!26, !3860, !932, !26}
