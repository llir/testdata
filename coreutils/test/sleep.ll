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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !14
@.str.34 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.35 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.36 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !17
@opterr = external local_unnamed_addr global i32, align 4
@.str.39 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.40, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.41, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !24
@.str.2.40 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.41 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1.44 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !41
@.str.49 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.50 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.51 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.53, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.54, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.55, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.56, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.57, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.59, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.61, i32 0, i32 0), i8* null], align 16, !dbg !49
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !95
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !101
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !113
@.str.11.62 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.63 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.64 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.65 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.66 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.67 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.68 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !120
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !127
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !115
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !129
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !135
@.str.1.108 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@c_locale_cache = internal global %struct.__locale_struct* null, align 8, !dbg !143
@.str.122 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.129 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.132 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.133 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) #0 !dbg !638 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !642, metadata !DIExpression()), !dbg !643
  %3 = icmp eq i32 %0, 0, !dbg !644
  br i1 %3, label %9, label %4, !dbg !646

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !647, !tbaa !649
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #26, !dbg !647
  %7 = load i8*, i8** @program_name, align 8, !dbg !647, !tbaa !649
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #26, !dbg !647
  br label %55, !dbg !647

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([296 x i8], [296 x i8]* @.str.1, i64 0, i64 0), i32 5) #26, !dbg !653
  %11 = load i8*, i8** @program_name, align 8, !dbg !653, !tbaa !649
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11) #26, !dbg !653
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 5) #26, !dbg !655
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !655, !tbaa !649
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !655
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 5) #26, !dbg !656
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !656, !tbaa !649
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !656
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), metadata !657, metadata !DIExpression()) #26, !dbg !676
  %19 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !678
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %19) #26, !dbg !678
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !663, metadata !DIExpression()) #26, !dbg !679
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %19, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #26, !dbg !679
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), metadata !672, metadata !DIExpression()) #26, !dbg !676
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !673, metadata !DIExpression()) #26, !dbg !676
  %20 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !680
  call void @llvm.dbg.value(metadata %struct.infomap* %20, metadata !673, metadata !DIExpression()) #26, !dbg !676
  br label %21, !dbg !681

21:                                               ; preds = %26, %9
  %22 = phi i8* [ %29, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), %9 ]
  %23 = phi %struct.infomap* [ %27, %26 ], [ %20, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %23, metadata !673, metadata !DIExpression()) #26, !dbg !676
  %24 = tail call i32 @strcmp(i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* nonnull %22) #27, !dbg !682
  %25 = icmp eq i32 %24, 0, !dbg !682
  br i1 %25, label %31, label %26, !dbg !681

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %23, i64 1, !dbg !683
  call void @llvm.dbg.value(metadata %struct.infomap* %27, metadata !673, metadata !DIExpression()) #26, !dbg !676
  %28 = getelementptr inbounds %struct.infomap, %struct.infomap* %27, i64 0, i32 0, !dbg !684
  %29 = load i8*, i8** %28, align 8, !dbg !684, !tbaa !685
  %30 = icmp eq i8* %29, null, !dbg !687
  br i1 %30, label %31, label %21, !dbg !688, !llvm.loop !689

31:                                               ; preds = %26, %21
  %32 = phi %struct.infomap* [ %23, %21 ], [ %27, %26 ]
  %33 = getelementptr inbounds %struct.infomap, %struct.infomap* %32, i64 0, i32 1, !dbg !691
  %34 = load i8*, i8** %33, align 8, !dbg !691, !tbaa !693
  %35 = icmp eq i8* %34, null, !dbg !694
  %36 = select i1 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %34, !dbg !695
  call void @llvm.dbg.value(metadata i8* %36, metadata !672, metadata !DIExpression()) #26, !dbg !676
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 5) #26, !dbg !696
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0)) #26, !dbg !696
  %39 = tail call i8* @setlocale(i32 5, i8* null) #26, !dbg !697
  call void @llvm.dbg.value(metadata i8* %39, metadata !675, metadata !DIExpression()) #26, !dbg !676
  %40 = icmp eq i8* %39, null, !dbg !698
  br i1 %40, label %48, label %41, !dbg !700

41:                                               ; preds = %31
  %42 = tail call i32 @strncmp(i8* nonnull %39, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #27, !dbg !701
  %43 = icmp eq i32 %42, 0, !dbg !701
  br i1 %43, label %48, label %44, !dbg !702

44:                                               ; preds = %41
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.25, i64 0, i64 0), i32 5) #26, !dbg !703
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !703, !tbaa !649
  %47 = tail call i32 @fputs_unlocked(i8* %45, %struct._IO_FILE* %46) #26, !dbg !703
  br label %48, !dbg !705

48:                                               ; preds = %31, %41, %44
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0), i32 5) #26, !dbg !706
  %50 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %49, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #26, !dbg !706
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i32 5) #26, !dbg !707
  %52 = icmp eq i8* %36, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), !dbg !707
  %53 = select i1 %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), !dbg !707
  %54 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %51, i8* %36, i8* %53) #26, !dbg !707
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %19) #26, !dbg !708
  br label %55

55:                                               ; preds = %48, %4
  tail call void @exit(i32 %0) #28, !dbg !709
  unreachable, !dbg !709
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !710 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !714 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !768 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !772 {
  %3 = alloca double, align 8
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !777, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.value(metadata i8** %1, metadata !778, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !779, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.value(metadata i8 1, metadata !781, metadata !DIExpression()), !dbg !788
  %5 = load i8*, i8** %1, align 8, !dbg !789, !tbaa !649
  tail call void @set_program_name(i8* %5) #26, !dbg !790
  %6 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)) #26, !dbg !791
  %7 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0)) #26, !dbg !792
  %8 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #26, !dbg !793
  %9 = tail call i32 @atexit(void ()* nonnull @close_stdout) #26, !dbg !794
  %10 = load i8*, i8** @Version, align 8, !dbg !795, !tbaa !649
  tail call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %10, i1 zeroext true, void (i32)* nonnull @usage, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* null) #26, !dbg !796
  %11 = icmp eq i32 %0, 1, !dbg !797
  br i1 %11, label %12, label %14, !dbg !799

12:                                               ; preds = %2
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 5) #26, !dbg !800
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %13) #26, !dbg !802
  tail call void @usage(i32 1) #29, !dbg !803
  unreachable, !dbg !803

14:                                               ; preds = %2
  %15 = load i32, i32* @optind, align 4, !dbg !804, !tbaa !805
  call void @llvm.dbg.value(metadata i32 %15, metadata !782, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.value(metadata i8 1, metadata !781, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !779, metadata !DIExpression()), !dbg !788
  %16 = icmp slt i32 %15, %0, !dbg !808
  br i1 %16, label %17, label %67, !dbg !809

17:                                               ; preds = %14
  %18 = bitcast double* %3 to i8*
  %19 = bitcast i8** %4 to i8*
  %20 = sext i32 %15 to i64, !dbg !809
  br label %24, !dbg !809

21:                                               ; preds = %59
  %22 = and i8 %61, 1, !dbg !810
  %23 = icmp eq i8 %22, 0, !dbg !810
  br i1 %23, label %66, label %67, !dbg !812

24:                                               ; preds = %17, %59
  %25 = phi i64 [ %20, %17 ], [ %63, %59 ]
  %26 = phi i8 [ 1, %17 ], [ %61, %59 ]
  %27 = phi double [ 0.000000e+00, %17 ], [ %62, %59 ]
  call void @llvm.dbg.value(metadata i64 %25, metadata !782, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.value(metadata i8 %26, metadata !781, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.value(metadata double %27, metadata !779, metadata !DIExpression()), !dbg !788
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #26, !dbg !813
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #26, !dbg !814
  %28 = getelementptr inbounds i8*, i8** %1, i64 %25, !dbg !815
  %29 = load i8*, i8** %28, align 8, !dbg !815, !tbaa !649
  call void @llvm.dbg.value(metadata double* %3, metadata !784, metadata !DIExpression(DW_OP_deref)), !dbg !817
  call void @llvm.dbg.value(metadata i8** %4, metadata !787, metadata !DIExpression(DW_OP_deref)), !dbg !817
  %30 = call zeroext i1 @xstrtod(i8* %29, i8** nonnull %4, double* nonnull %3, double (i8*, i8**)* nonnull @cl_strtod) #26, !dbg !818
  br i1 %30, label %35, label %31, !dbg !819

31:                                               ; preds = %24
  %32 = tail call i32* @__errno_location() #30, !dbg !820
  %33 = load i32, i32* %32, align 4, !dbg !820, !tbaa !805
  %34 = icmp eq i32 %33, 34, !dbg !821
  br i1 %34, label %35, label %54, !dbg !822

35:                                               ; preds = %31, %24
  %36 = load double, double* %3, align 8, !dbg !823, !tbaa !824
  call void @llvm.dbg.value(metadata double %36, metadata !784, metadata !DIExpression()), !dbg !817
  %37 = fcmp ult double %36, 0.000000e+00, !dbg !826
  br i1 %37, label %54, label %38, !dbg !827

38:                                               ; preds = %35
  %39 = load i8*, i8** %4, align 8, !dbg !828, !tbaa !649
  call void @llvm.dbg.value(metadata i8* %39, metadata !787, metadata !DIExpression()), !dbg !817
  %40 = load i8, i8* %39, align 1, !dbg !829, !tbaa !830
  %41 = icmp eq i8 %40, 0, !dbg !829
  br i1 %41, label %51, label %42, !dbg !831

42:                                               ; preds = %38
  %43 = getelementptr inbounds i8, i8* %39, i64 1, !dbg !832
  %44 = load i8, i8* %43, align 1, !dbg !833, !tbaa !830
  %45 = icmp eq i8 %44, 0, !dbg !833
  br i1 %45, label %46, label %54, !dbg !834

46:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i8* %39, metadata !787, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double* %3, metadata !784, metadata !DIExpression(DW_OP_deref)), !dbg !817
  call void @llvm.dbg.value(metadata double* %3, metadata !835, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i8 %40, metadata !841, metadata !DIExpression()), !dbg !843
  %47 = sext i8 %40 to i32, !dbg !845
  switch i32 %47, label %54 [
    i32 0, label %51
    i32 115, label %51
    i32 109, label %48
    i32 104, label %49
    i32 100, label %50
  ], !dbg !846

48:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i32 60, metadata !842, metadata !DIExpression()), !dbg !843
  br label %51, !dbg !847

49:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i32 3600, metadata !842, metadata !DIExpression()), !dbg !843
  br label %51, !dbg !849

50:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i32 86400, metadata !842, metadata !DIExpression()), !dbg !843
  br label %51, !dbg !850

51:                                               ; preds = %46, %46, %48, %49, %50, %38
  %52 = phi double [ 8.640000e+04, %50 ], [ 3.600000e+03, %49 ], [ 6.000000e+01, %48 ], [ 1.000000e+00, %46 ], [ 1.000000e+00, %46 ], [ 1.000000e+00, %38 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !842, metadata !DIExpression()), !dbg !843
  %53 = fmul double %36, %52, !dbg !851
  br label %59, !dbg !852

54:                                               ; preds = %46, %42, %35, %31
  %55 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 5) #26, !dbg !853
  %56 = load i8*, i8** %28, align 8, !dbg !855, !tbaa !649
  %57 = call i8* @quote(i8* %56) #26, !dbg !856
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %55, i8* %57) #26, !dbg !857
  call void @llvm.dbg.value(metadata i8 0, metadata !781, metadata !DIExpression()), !dbg !788
  %58 = load double, double* %3, align 8, !dbg !858, !tbaa !824
  br label %59, !dbg !859

59:                                               ; preds = %51, %54
  %60 = phi double [ %58, %54 ], [ %53, %51 ], !dbg !858
  %61 = phi i8 [ 0, %54 ], [ %26, %51 ], !dbg !788
  call void @llvm.dbg.value(metadata i8 %61, metadata !781, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.value(metadata double %60, metadata !784, metadata !DIExpression()), !dbg !817
  %62 = fadd double %27, %60, !dbg !860
  call void @llvm.dbg.value(metadata double %62, metadata !779, metadata !DIExpression()), !dbg !788
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #26, !dbg !861
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #26, !dbg !861
  %63 = add nsw i64 %25, 1, !dbg !862
  call void @llvm.dbg.value(metadata i64 %63, metadata !782, metadata !DIExpression()), !dbg !807
  %64 = trunc i64 %63 to i32, !dbg !808
  %65 = icmp eq i32 %64, %0, !dbg !808
  br i1 %65, label %21, label %24, !dbg !809, !llvm.loop !863

66:                                               ; preds = %21
  call void @usage(i32 1) #29, !dbg !865
  unreachable, !dbg !865

67:                                               ; preds = %14, %21
  %68 = phi double [ %62, %21 ], [ 0.000000e+00, %14 ]
  %69 = call i32 @xnanosleep(double %68) #26, !dbg !866
  %70 = icmp eq i32 %69, 0, !dbg !866
  br i1 %70, label %75, label %71, !dbg !868

71:                                               ; preds = %67
  %72 = tail call i32* @__errno_location() #30, !dbg !869
  %73 = load i32, i32* %72, align 4, !dbg !869, !tbaa !805
  %74 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 5) #26, !dbg !869
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %73, i8* %74) #26, !dbg !869
  unreachable, !dbg !869

75:                                               ; preds = %67
  ret i32 0, !dbg !870
}

; Function Attrs: nounwind
declare !dbg !871 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !874 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !877 i32 @atexit(void ()*) local_unnamed_addr #2

declare !dbg !884 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local double @cl_strtod(i8* %0, i8** noalias %1) #8 !dbg !888 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !893, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata i8** %1, metadata !894, metadata !DIExpression()), !dbg !902
  %5 = bitcast i8** %3 to i8*, !dbg !903
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #26, !dbg !903
  call void @llvm.dbg.value(metadata i8** %3, metadata !895, metadata !DIExpression(DW_OP_deref)), !dbg !902
  %6 = call double @strtod(i8* %0, i8** nonnull %3) #26, !dbg !904
  call void @llvm.dbg.value(metadata double %6, metadata !896, metadata !DIExpression()), !dbg !902
  %7 = load i8*, i8** %3, align 8, !dbg !905, !tbaa !649
  call void @llvm.dbg.value(metadata i8* %7, metadata !895, metadata !DIExpression()), !dbg !902
  %8 = load i8, i8* %7, align 1, !dbg !906, !tbaa !830
  %9 = icmp eq i8 %8, 0, !dbg !906
  br i1 %9, label %21, label %10, !dbg !907

10:                                               ; preds = %2
  %11 = tail call i32* @__errno_location() #30, !dbg !908
  %12 = load i32, i32* %11, align 4, !dbg !908, !tbaa !805
  call void @llvm.dbg.value(metadata i32 %12, metadata !897, metadata !DIExpression()), !dbg !909
  %13 = bitcast i8** %4 to i8*, !dbg !910
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #26, !dbg !910
  call void @llvm.dbg.value(metadata i8** %4, metadata !900, metadata !DIExpression(DW_OP_deref)), !dbg !909
  %14 = call double @c_strtod(i8* %0, i8** nonnull %4) #26, !dbg !911
  call void @llvm.dbg.value(metadata double %14, metadata !901, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata i8* %7, metadata !895, metadata !DIExpression()), !dbg !902
  %15 = load i8*, i8** %4, align 8, !dbg !912, !tbaa !649
  call void @llvm.dbg.value(metadata i8* %15, metadata !900, metadata !DIExpression()), !dbg !909
  %16 = icmp ult i8* %7, %15, !dbg !914
  br i1 %16, label %18, label %17, !dbg !915

17:                                               ; preds = %10
  store i32 %12, i32* %11, align 4, !dbg !916, !tbaa !805
  br label %18

18:                                               ; preds = %10, %17
  %19 = phi i8* [ %7, %17 ], [ %15, %10 ]
  %20 = phi double [ %6, %17 ], [ %14, %10 ], !dbg !902
  call void @llvm.dbg.value(metadata double %20, metadata !896, metadata !DIExpression()), !dbg !902
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #26, !dbg !917
  br label %21, !dbg !918

21:                                               ; preds = %18, %2
  %22 = phi i8* [ %19, %18 ], [ %7, %2 ]
  %23 = phi double [ %20, %18 ], [ %6, %2 ], !dbg !902
  call void @llvm.dbg.value(metadata double %23, metadata !896, metadata !DIExpression()), !dbg !902
  %24 = icmp eq i8** %1, null, !dbg !919
  br i1 %24, label %26, label %25, !dbg !921

25:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i8* %22, metadata !895, metadata !DIExpression()), !dbg !902
  store i8* %22, i8** %1, align 8, !dbg !922, !tbaa !649
  br label %26, !dbg !923

26:                                               ; preds = %25, %21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #26, !dbg !924
  ret double %23, !dbg !925
}

; Function Attrs: nofree nounwind willreturn
declare double @strtod(i8* readonly, i8** nocapture) local_unnamed_addr #10

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #11 !dbg !926 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !928, metadata !DIExpression()), !dbg !929
  store i8* %0, i8** @file_name, align 8, !dbg !930, !tbaa !649
  ret void, !dbg !931
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #11 !dbg !932 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !936, metadata !DIExpression()), !dbg !937
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !938, !tbaa !939
  ret void, !dbg !941
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !942 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !947, !tbaa !649
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #26, !dbg !948
  %3 = icmp eq i32 %2, 0, !dbg !949
  br i1 %3, label %22, label %4, !dbg !950

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !951, !tbaa !939, !range !952
  %6 = icmp eq i8 %5, 0, !dbg !951
  br i1 %6, label %11, label %7, !dbg !953

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #30, !dbg !954
  %9 = load i32, i32* %8, align 4, !dbg !954, !tbaa !805
  %10 = icmp eq i32 %9, 32, !dbg !955
  br i1 %10, label %22, label %11, !dbg !956

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i32 5) #26, !dbg !957
  call void @llvm.dbg.value(metadata i8* %12, metadata !944, metadata !DIExpression()), !dbg !958
  %13 = load i8*, i8** @file_name, align 8, !dbg !959, !tbaa !649
  %14 = icmp eq i8* %13, null, !dbg !959
  %15 = tail call i32* @__errno_location() #30, !dbg !961
  %16 = load i32, i32* %15, align 4, !dbg !961, !tbaa !805
  br i1 %14, label %19, label %17, !dbg !962

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #26, !dbg !963
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.35, i64 0, i64 0), i8* %18, i8* %12) #26, !dbg !964
  br label %20, !dbg !964

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.36, i64 0, i64 0), i8* %12) #26, !dbg !965
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !966, !tbaa !805
  tail call void @_exit(i32 %21) #28, !dbg !967
  unreachable, !dbg !967

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !968, !tbaa !649
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #26, !dbg !970
  %25 = icmp eq i32 %24, 0, !dbg !971
  br i1 %25, label %28, label %26, !dbg !972

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !973, !tbaa !805
  tail call void @_exit(i32 %27) #28, !dbg !974
  unreachable, !dbg !974

28:                                               ; preds = %22
  ret void, !dbg !975
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_long_options(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, void (i32)* nocapture %5, ...) local_unnamed_addr #8 !dbg !976 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !981, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata i8** %1, metadata !982, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata i8* %2, metadata !983, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata i8* %3, metadata !984, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata i8* %4, metadata !985, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !986, metadata !DIExpression()), !dbg !1005
  %8 = load i32, i32* @opterr, align 4, !dbg !1006, !tbaa !805
  call void @llvm.dbg.value(metadata i32 %8, metadata !988, metadata !DIExpression()), !dbg !1005
  store i32 0, i32* @opterr, align 4, !dbg !1007, !tbaa !805
  %9 = icmp eq i32 %0, 2, !dbg !1008
  br i1 %9, label %10, label %17, !dbg !1009

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #26, !dbg !1010
  call void @llvm.dbg.value(metadata i32 %11, metadata !987, metadata !DIExpression()), !dbg !1005
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1011

12:                                               ; preds = %10
  tail call void %5(i32 0) #26, !dbg !1012
  br label %17, !dbg !1013

13:                                               ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !1014
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #26, !dbg !1014
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !989, metadata !DIExpression()), !dbg !1015
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !1016
  call void @llvm.va_start(i8* nonnull %14), !dbg !1016
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1017, !tbaa !649
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #26, !dbg !1018
  call void @exit(i32 0) #28, !dbg !1019
  unreachable, !dbg !1019

17:                                               ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !1020, !tbaa !805
  store i32 0, i32* @optind, align 4, !dbg !1021, !tbaa !805
  ret void, !dbg !1022
}

; Function Attrs: nounwind
declare !dbg !1023 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #13

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_gnu_standard_options_only(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, i1 zeroext %5, void (i32)* nocapture %6, ...) local_unnamed_addr #8 !dbg !1029 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1033, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i8** %1, metadata !1034, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i8* %2, metadata !1035, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i8* %3, metadata !1036, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i8* %4, metadata !1037, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i1 %5, metadata !1038, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1048
  call void @llvm.dbg.value(metadata void (i32)* %6, metadata !1039, metadata !DIExpression()), !dbg !1048
  %9 = load i32, i32* @opterr, align 4, !dbg !1049, !tbaa !805
  call void @llvm.dbg.value(metadata i32 %9, metadata !1041, metadata !DIExpression()), !dbg !1048
  store i32 1, i32* @opterr, align 4, !dbg !1050, !tbaa !805
  %10 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.44, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), !dbg !1051
  call void @llvm.dbg.value(metadata i8* %10, metadata !1042, metadata !DIExpression()), !dbg !1048
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* %10, %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #26, !dbg !1052
  call void @llvm.dbg.value(metadata i32 %11, metadata !1040, metadata !DIExpression()), !dbg !1048
  switch i32 %11, label %16 [
    i32 -1, label %20
    i32 104, label %18
    i32 118, label %12
  ], !dbg !1053

12:                                               ; preds = %7
  %13 = bitcast [1 x %struct.__va_list_tag]* %8 to i8*, !dbg !1054
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #26, !dbg !1054
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %8, metadata !1043, metadata !DIExpression()), !dbg !1055
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !1056
  call void @llvm.va_start(i8* nonnull %13), !dbg !1056
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1057, !tbaa !649
  call void @version_etc_va(%struct._IO_FILE* %15, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %14) #26, !dbg !1058
  call void @exit(i32 0) #28, !dbg !1059
  unreachable, !dbg !1059

16:                                               ; preds = %7
  %17 = load volatile i32, i32* @exit_failure, align 4, !dbg !1060, !tbaa !805
  br label %18, !dbg !1061

18:                                               ; preds = %7, %16
  %19 = phi i32 [ %17, %16 ], [ 0, %7 ]
  tail call void %6(i32 %19) #26, !dbg !1062
  br label %20, !dbg !1063

20:                                               ; preds = %18, %7
  store i32 %9, i32* @opterr, align 4, !dbg !1063, !tbaa !805
  ret void, !dbg !1064
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1065 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1067, metadata !DIExpression()), !dbg !1070
  %2 = icmp eq i8* %0, null, !dbg !1071
  br i1 %2, label %3, label %6, !dbg !1073

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1074, !tbaa !649
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.49, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #31, !dbg !1076
  tail call void @abort() #28, !dbg !1077
  unreachable, !dbg !1077

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #27, !dbg !1078
  call void @llvm.dbg.value(metadata i8* %7, metadata !1068, metadata !DIExpression()), !dbg !1070
  %8 = icmp eq i8* %7, null, !dbg !1079
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1080
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1080
  call void @llvm.dbg.value(metadata i8* %10, metadata !1069, metadata !DIExpression()), !dbg !1070
  %11 = ptrtoint i8* %10 to i64, !dbg !1081
  %12 = ptrtoint i8* %0 to i64, !dbg !1081
  %13 = sub i64 %11, %12, !dbg !1081
  %14 = icmp sgt i64 %13, 6, !dbg !1083
  br i1 %14, label %15, label %24, !dbg !1084

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1085
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.50, i64 0, i64 0), i64 7) #27, !dbg !1086
  %18 = icmp eq i32 %17, 0, !dbg !1087
  br i1 %18, label %19, label %24, !dbg !1088

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1067, metadata !DIExpression()), !dbg !1070
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.51, i64 0, i64 0), i64 3) #27, !dbg !1089
  %21 = icmp eq i32 %20, 0, !dbg !1092
  br i1 %21, label %22, label %24, !dbg !1093

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1094
  call void @llvm.dbg.value(metadata i8* %23, metadata !1067, metadata !DIExpression()), !dbg !1070
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1096, !tbaa !649
  br label %24, !dbg !1097

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1067, metadata !DIExpression()), !dbg !1070
  store i8* %25, i8** @program_name, align 8, !dbg !1098, !tbaa !649
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1099, !tbaa !649
  ret void, !dbg !1100
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #14

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1101 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1106, metadata !DIExpression()), !dbg !1109
  %2 = tail call i32* @__errno_location() #30, !dbg !1110
  %3 = load i32, i32* %2, align 4, !dbg !1110, !tbaa !805
  call void @llvm.dbg.value(metadata i32 %3, metadata !1107, metadata !DIExpression()), !dbg !1109
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1111
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1111
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1111
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #26, !dbg !1112
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1112
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1108, metadata !DIExpression()), !dbg !1109
  store i32 %3, i32* %2, align 4, !dbg !1113, !tbaa !805
  ret %struct.quoting_options* %8, !dbg !1114
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #15 !dbg !1115 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1121, metadata !DIExpression()), !dbg !1122
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1123
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1123
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1124
  %5 = load i32, i32* %4, align 8, !dbg !1124, !tbaa !1125
  ret i32 %5, !dbg !1127
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #11 !dbg !1128 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1132, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i32 %1, metadata !1133, metadata !DIExpression()), !dbg !1134
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1135
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1135
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1136
  store i32 %1, i32* %5, align 8, !dbg !1137, !tbaa !1125
  ret void, !dbg !1138
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #16 !dbg !1139 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1143, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata i8 %1, metadata !1144, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata i32 %2, metadata !1145, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata i8 %1, metadata !1146, metadata !DIExpression()), !dbg !1152
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1153
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1153
  %6 = lshr i8 %1, 5, !dbg !1154
  %7 = zext i8 %6 to i64, !dbg !1154
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1155
  call void @llvm.dbg.value(metadata i32* %8, metadata !1148, metadata !DIExpression()), !dbg !1152
  %9 = and i8 %1, 31, !dbg !1156
  %10 = zext i8 %9 to i32, !dbg !1156
  call void @llvm.dbg.value(metadata i32 %10, metadata !1150, metadata !DIExpression()), !dbg !1152
  %11 = load i32, i32* %8, align 4, !dbg !1157, !tbaa !805
  %12 = lshr i32 %11, %10, !dbg !1158
  %13 = and i32 %12, 1, !dbg !1159
  call void @llvm.dbg.value(metadata i32 %13, metadata !1151, metadata !DIExpression()), !dbg !1152
  %14 = and i32 %2, 1, !dbg !1160
  %15 = xor i32 %13, %14, !dbg !1161
  %16 = shl i32 %15, %10, !dbg !1162
  %17 = xor i32 %16, %11, !dbg !1163
  store i32 %17, i32* %8, align 4, !dbg !1163, !tbaa !805
  ret i32 %13, !dbg !1164
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #16 !dbg !1165 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1169, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i32 %1, metadata !1170, metadata !DIExpression()), !dbg !1172
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1173
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1175
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1169, metadata !DIExpression()), !dbg !1172
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1176
  %6 = load i32, i32* %5, align 4, !dbg !1176, !tbaa !1177
  call void @llvm.dbg.value(metadata i32 %6, metadata !1171, metadata !DIExpression()), !dbg !1172
  store i32 %1, i32* %5, align 4, !dbg !1178, !tbaa !1177
  ret i32 %6, !dbg !1179
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1180 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1184, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata i8* %1, metadata !1185, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata i8* %2, metadata !1186, metadata !DIExpression()), !dbg !1187
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1188
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1190
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1184, metadata !DIExpression()), !dbg !1187
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1191
  store i32 10, i32* %6, align 8, !dbg !1192, !tbaa !1125
  %7 = icmp ne i8* %1, null, !dbg !1193
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1195
  br i1 %9, label %11, label %10, !dbg !1195

10:                                               ; preds = %3
  tail call void @abort() #28, !dbg !1196
  unreachable, !dbg !1196

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1197
  store i8* %1, i8** %12, align 8, !dbg !1198, !tbaa !1199
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1200
  store i8* %2, i8** %13, align 8, !dbg !1201, !tbaa !1202
  ret void, !dbg !1203
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1204 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1208, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i64 %1, metadata !1209, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i8* %2, metadata !1210, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i64 %3, metadata !1211, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1212, metadata !DIExpression()), !dbg !1216
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1217
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1217
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1213, metadata !DIExpression()), !dbg !1216
  %8 = tail call i32* @__errno_location() #30, !dbg !1218
  %9 = load i32, i32* %8, align 4, !dbg !1218, !tbaa !805
  call void @llvm.dbg.value(metadata i32 %9, metadata !1214, metadata !DIExpression()), !dbg !1216
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1219
  %11 = load i32, i32* %10, align 8, !dbg !1219, !tbaa !1125
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1220
  %13 = load i32, i32* %12, align 4, !dbg !1220, !tbaa !1177
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1221
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1222
  %16 = load i8*, i8** %15, align 8, !dbg !1222, !tbaa !1199
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1223
  %18 = load i8*, i8** %17, align 8, !dbg !1223, !tbaa !1202
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %19, metadata !1215, metadata !DIExpression()), !dbg !1216
  store i32 %9, i32* %8, align 4, !dbg !1225, !tbaa !805
  ret i64 %19, !dbg !1226
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1227 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1233, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %1, metadata !1234, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8* %2, metadata !1235, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %3, metadata !1236, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i32 %4, metadata !1237, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i32 %5, metadata !1238, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i32* %6, metadata !1239, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8* %7, metadata !1240, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8* %8, metadata !1241, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 0, metadata !1243, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 0, metadata !1244, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8* null, metadata !1245, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 0, metadata !1246, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8 0, metadata !1247, metadata !DIExpression()), !dbg !1303
  %13 = tail call i64 @__ctype_get_mb_cur_max() #26, !dbg !1304
  %14 = icmp eq i64 %13, 1, !dbg !1305
  call void @llvm.dbg.value(metadata i1 %14, metadata !1248, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1303
  %15 = lshr i32 %5, 1, !dbg !1306
  %16 = trunc i32 %15 to i8, !dbg !1306
  %17 = and i8 %16, 1, !dbg !1306
  call void @llvm.dbg.value(metadata i8 %17, metadata !1249, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8 0, metadata !1250, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8 0, metadata !1251, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8 1, metadata !1252, metadata !DIExpression()), !dbg !1303
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1307

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1308
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1309
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1310
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1311
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1303
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1312
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1313
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1314
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1234, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8 %38, metadata !1252, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8 %37, metadata !1251, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8 %36, metadata !1250, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8 %35, metadata !1249, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %34, metadata !1236, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8 %33, metadata !1247, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %32, metadata !1246, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8* %31, metadata !1245, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %30, metadata !1244, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 0, metadata !1243, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8* %29, metadata !1241, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8* %28, metadata !1240, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i32 %27, metadata !1237, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.label(metadata !1297), !dbg !1315
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
  ], !dbg !1316

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1249, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i32 5, metadata !1237, metadata !DIExpression()), !dbg !1303
  br label %92, !dbg !1317

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1249, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i32 5, metadata !1237, metadata !DIExpression()), !dbg !1303
  %42 = and i8 %35, 1, !dbg !1319
  %43 = icmp eq i8 %42, 0, !dbg !1319
  br i1 %43, label %44, label %92, !dbg !1317

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1321
  br i1 %45, label %92, label %46, !dbg !1324

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1321, !tbaa !830
  br label %92, !dbg !1321

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.62, i64 0, i64 0), i32 %27), !dbg !1325
  call void @llvm.dbg.value(metadata i8* %48, metadata !1240, metadata !DIExpression()), !dbg !1303
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), i32 %27), !dbg !1329
  call void @llvm.dbg.value(metadata i8* %49, metadata !1241, metadata !DIExpression()), !dbg !1303
  br label %50, !dbg !1330

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1241, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8* %51, metadata !1240, metadata !DIExpression()), !dbg !1303
  %53 = and i8 %35, 1, !dbg !1331
  %54 = icmp eq i8 %53, 0, !dbg !1331
  br i1 %54, label %55, label %70, !dbg !1333

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1245, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 0, metadata !1243, metadata !DIExpression()), !dbg !1303
  %56 = load i8, i8* %51, align 1, !dbg !1334, !tbaa !830
  %57 = icmp eq i8 %56, 0, !dbg !1337
  br i1 %57, label %70, label %58, !dbg !1337

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1245, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %61, metadata !1243, metadata !DIExpression()), !dbg !1303
  %62 = icmp ult i64 %61, %39, !dbg !1338
  br i1 %62, label %63, label %65, !dbg !1341

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1338
  store i8 %59, i8* %64, align 1, !dbg !1338, !tbaa !830
  br label %65, !dbg !1338

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1341
  call void @llvm.dbg.value(metadata i64 %66, metadata !1243, metadata !DIExpression()), !dbg !1303
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1342
  call void @llvm.dbg.value(metadata i8* %67, metadata !1245, metadata !DIExpression()), !dbg !1303
  %68 = load i8, i8* %67, align 1, !dbg !1334, !tbaa !830
  %69 = icmp eq i8 %68, 0, !dbg !1337
  br i1 %69, label %70, label %58, !dbg !1337, !llvm.loop !1343

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1345
  call void @llvm.dbg.value(metadata i64 %71, metadata !1243, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8 1, metadata !1247, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8* %52, metadata !1245, metadata !DIExpression()), !dbg !1303
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #27, !dbg !1346
  call void @llvm.dbg.value(metadata i64 %72, metadata !1246, metadata !DIExpression()), !dbg !1303
  br label %92, !dbg !1347

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1247, metadata !DIExpression()), !dbg !1303
  br label %74, !dbg !1348

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1303
  call void @llvm.dbg.value(metadata i8 %75, metadata !1247, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8 1, metadata !1249, metadata !DIExpression()), !dbg !1303
  br label %76, !dbg !1349

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1311
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1303
  call void @llvm.dbg.value(metadata i8 %78, metadata !1249, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8 %77, metadata !1247, metadata !DIExpression()), !dbg !1303
  %79 = and i8 %78, 1, !dbg !1350
  %80 = icmp eq i8 %79, 0, !dbg !1350
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1352
  br label %82, !dbg !1352

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1303
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1306
  call void @llvm.dbg.value(metadata i8 %84, metadata !1249, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8 %83, metadata !1247, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i32 2, metadata !1237, metadata !DIExpression()), !dbg !1303
  %85 = and i8 %84, 1, !dbg !1353
  %86 = icmp eq i8 %85, 0, !dbg !1353
  br i1 %86, label %87, label %92, !dbg !1355

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1356
  br i1 %88, label %92, label %89, !dbg !1359

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1356, !tbaa !830
  br label %92, !dbg !1356

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1249, metadata !DIExpression()), !dbg !1303
  br label %92, !dbg !1360

91:                                               ; preds = %26
  call void @abort() #28, !dbg !1361
  unreachable, !dbg !1361

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1345
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %40 ], !dbg !1303
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1303
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1303
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1303
  call void @llvm.dbg.value(metadata i8 %100, metadata !1249, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8 %99, metadata !1247, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %98, metadata !1246, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8* %97, metadata !1245, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %96, metadata !1243, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8* %95, metadata !1241, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8* %94, metadata !1240, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i32 %93, metadata !1237, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 0, metadata !1242, metadata !DIExpression()), !dbg !1303
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
  br label %121, !dbg !1362

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1363
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1345
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1308
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1312
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1313
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1314
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1234, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8 %128, metadata !1252, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8 %127, metadata !1251, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8 %126, metadata !1250, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %125, metadata !1236, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %124, metadata !1244, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %123, metadata !1243, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %122, metadata !1242, metadata !DIExpression()), !dbg !1303
  %130 = icmp eq i64 %125, -1, !dbg !1364
  br i1 %130, label %131, label %135, !dbg !1365

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1366
  %133 = load i8, i8* %132, align 1, !dbg !1366, !tbaa !830
  %134 = icmp eq i8 %133, 0, !dbg !1367
  br i1 %134, label %587, label %137, !dbg !1368

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1369
  br i1 %136, label %587, label %137, !dbg !1368

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1258, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i8 0, metadata !1259, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i8 0, metadata !1260, metadata !DIExpression()), !dbg !1370
  br i1 %106, label %138, label %153, !dbg !1371

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1373
  %140 = and i1 %107, %130, !dbg !1374
  br i1 %140, label %141, label %143, !dbg !1374

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #27, !dbg !1375
  call void @llvm.dbg.value(metadata i64 %142, metadata !1236, metadata !DIExpression()), !dbg !1303
  br label %143, !dbg !1376

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1376
  call void @llvm.dbg.value(metadata i64 %144, metadata !1236, metadata !DIExpression()), !dbg !1303
  %145 = icmp ugt i64 %139, %144, !dbg !1377
  br i1 %145, label %153, label %146, !dbg !1378

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1379
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1380
  %149 = icmp ne i32 %148, 0, !dbg !1381
  %150 = or i1 %149, %109, !dbg !1382
  %151 = xor i1 %149, true, !dbg !1382
  %152 = zext i1 %151 to i8, !dbg !1382
  br i1 %150, label %153, label %646, !dbg !1382

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1370
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1370
  call void @llvm.dbg.value(metadata i8 %156, metadata !1258, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i64 %154, metadata !1236, metadata !DIExpression()), !dbg !1303
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1383
  %158 = load i8, i8* %157, align 1, !dbg !1383, !tbaa !830
  call void @llvm.dbg.value(metadata i8 %158, metadata !1253, metadata !DIExpression()), !dbg !1370
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
  ], !dbg !1384

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1385

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1386

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1259, metadata !DIExpression()), !dbg !1370
  %162 = and i8 %126, 1, !dbg !1390
  %163 = icmp eq i8 %162, 0, !dbg !1390
  %164 = and i1 %110, %163, !dbg !1390
  br i1 %164, label %165, label %181, !dbg !1390

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1392
  br i1 %166, label %167, label %169, !dbg !1396

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1392
  store i8 39, i8* %168, align 1, !dbg !1392, !tbaa !830
  br label %169, !dbg !1392

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1396
  call void @llvm.dbg.value(metadata i64 %170, metadata !1243, metadata !DIExpression()), !dbg !1303
  %171 = icmp ult i64 %170, %129, !dbg !1397
  br i1 %171, label %172, label %174, !dbg !1400

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1397
  store i8 36, i8* %173, align 1, !dbg !1397, !tbaa !830
  br label %174, !dbg !1397

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1400
  call void @llvm.dbg.value(metadata i64 %175, metadata !1243, metadata !DIExpression()), !dbg !1303
  %176 = icmp ult i64 %175, %129, !dbg !1401
  br i1 %176, label %177, label %179, !dbg !1404

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1401
  store i8 39, i8* %178, align 1, !dbg !1401, !tbaa !830
  br label %179, !dbg !1401

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1404
  call void @llvm.dbg.value(metadata i64 %180, metadata !1243, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8 1, metadata !1250, metadata !DIExpression()), !dbg !1303
  br label %181, !dbg !1405

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1303
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1303
  call void @llvm.dbg.value(metadata i8 %183, metadata !1250, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %182, metadata !1243, metadata !DIExpression()), !dbg !1303
  %184 = icmp ult i64 %182, %129, !dbg !1406
  br i1 %184, label %185, label %187, !dbg !1409

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1406
  store i8 92, i8* %186, align 1, !dbg !1406, !tbaa !830
  br label %187, !dbg !1406

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1409
  call void @llvm.dbg.value(metadata i64 %188, metadata !1243, metadata !DIExpression()), !dbg !1303
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1410
  br i1 %191, label %192, label %473, !dbg !1410

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1412
  %194 = load i8, i8* %193, align 1, !dbg !1412, !tbaa !830
  %195 = add i8 %194, -48, !dbg !1413
  %196 = icmp ult i8 %195, 10, !dbg !1413
  br i1 %196, label %197, label %473, !dbg !1413

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1414
  br i1 %198, label %199, label %201, !dbg !1418

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1414
  store i8 48, i8* %200, align 1, !dbg !1414, !tbaa !830
  br label %201, !dbg !1414

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1418
  call void @llvm.dbg.value(metadata i64 %202, metadata !1243, metadata !DIExpression()), !dbg !1303
  %203 = icmp ult i64 %202, %129, !dbg !1419
  br i1 %203, label %204, label %206, !dbg !1422

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1419
  store i8 48, i8* %205, align 1, !dbg !1419, !tbaa !830
  br label %206, !dbg !1419

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1422
  call void @llvm.dbg.value(metadata i64 %207, metadata !1243, metadata !DIExpression()), !dbg !1303
  br label %473, !dbg !1423

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1424

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1425

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1426

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1428
  br i1 %214, label %215, label %473, !dbg !1428

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1430
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1431
  %218 = load i8, i8* %217, align 1, !dbg !1431, !tbaa !830
  %219 = icmp eq i8 %218, 63, !dbg !1432
  br i1 %219, label %220, label %473, !dbg !1433

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1434
  %222 = load i8, i8* %221, align 1, !dbg !1434, !tbaa !830
  %223 = sext i8 %222 to i32, !dbg !1434
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
  ], !dbg !1435

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1436

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1253, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i64 undef, metadata !1242, metadata !DIExpression()), !dbg !1303
  %226 = icmp ult i64 %123, %129, !dbg !1438
  br i1 %226, label %227, label %229, !dbg !1441

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1438
  store i8 63, i8* %228, align 1, !dbg !1438, !tbaa !830
  br label %229, !dbg !1438

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !1441
  call void @llvm.dbg.value(metadata i64 %230, metadata !1243, metadata !DIExpression()), !dbg !1303
  %231 = icmp ult i64 %230, %129, !dbg !1442
  br i1 %231, label %232, label %234, !dbg !1445

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1442
  store i8 34, i8* %233, align 1, !dbg !1442, !tbaa !830
  br label %234, !dbg !1442

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !1445
  call void @llvm.dbg.value(metadata i64 %235, metadata !1243, metadata !DIExpression()), !dbg !1303
  %236 = icmp ult i64 %235, %129, !dbg !1446
  br i1 %236, label %237, label %239, !dbg !1449

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1446
  store i8 34, i8* %238, align 1, !dbg !1446, !tbaa !830
  br label %239, !dbg !1446

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !1449
  call void @llvm.dbg.value(metadata i64 %240, metadata !1243, metadata !DIExpression()), !dbg !1303
  %241 = icmp ult i64 %240, %129, !dbg !1450
  br i1 %241, label %242, label %244, !dbg !1453

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1450
  store i8 63, i8* %243, align 1, !dbg !1450, !tbaa !830
  br label %244, !dbg !1450

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !1453
  call void @llvm.dbg.value(metadata i64 %245, metadata !1243, metadata !DIExpression()), !dbg !1303
  br label %473, !dbg !1454

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1257, metadata !DIExpression()), !dbg !1370
  br label %256, !dbg !1455

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1257, metadata !DIExpression()), !dbg !1370
  br label %256, !dbg !1456

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1257, metadata !DIExpression()), !dbg !1370
  br label %254, !dbg !1457

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1257, metadata !DIExpression()), !dbg !1370
  br label %254, !dbg !1458

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1257, metadata !DIExpression()), !dbg !1370
  br label %256, !dbg !1459

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1257, metadata !DIExpression()), !dbg !1370
  br i1 %110, label %252, label %253, !dbg !1460

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !1461

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !1464

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !1466
  call void @llvm.dbg.value(metadata i8 %255, metadata !1257, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.label(metadata !1298), !dbg !1467
  br i1 %111, label %256, label %631, !dbg !1468

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !1466
  call void @llvm.dbg.value(metadata i8 %257, metadata !1257, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.label(metadata !1299), !dbg !1470
  br i1 %102, label %495, label %473, !dbg !1471

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1472

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1473, !tbaa !830
  %261 = icmp eq i8 %260, 0, !dbg !1475
  br i1 %261, label %262, label %473, !dbg !1476

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !1477
  br i1 %263, label %264, label %473, !dbg !1479

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1260, metadata !DIExpression()), !dbg !1370
  br label %265, !dbg !1480

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1370
  call void @llvm.dbg.value(metadata i8 %266, metadata !1260, metadata !DIExpression()), !dbg !1370
  br i1 %111, label %473, label %631, !dbg !1481

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1251, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8 1, metadata !1260, metadata !DIExpression()), !dbg !1370
  br i1 %110, label %268, label %473, !dbg !1483

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !1484

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !1487
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !1489
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !1489
  %274 = select i1 %272, i64 %129, i64 0, !dbg !1489
  call void @llvm.dbg.value(metadata i64 %274, metadata !1234, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %273, metadata !1244, metadata !DIExpression()), !dbg !1303
  %275 = icmp ult i64 %123, %274, !dbg !1490
  br i1 %275, label %276, label %278, !dbg !1493

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1490
  store i8 39, i8* %277, align 1, !dbg !1490, !tbaa !830
  br label %278, !dbg !1490

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !1493
  call void @llvm.dbg.value(metadata i64 %279, metadata !1243, metadata !DIExpression()), !dbg !1303
  %280 = icmp ult i64 %279, %274, !dbg !1494
  br i1 %280, label %281, label %283, !dbg !1497

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1494
  store i8 92, i8* %282, align 1, !dbg !1494, !tbaa !830
  br label %283, !dbg !1494

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !1497
  call void @llvm.dbg.value(metadata i64 %284, metadata !1243, metadata !DIExpression()), !dbg !1303
  %285 = icmp ult i64 %284, %274, !dbg !1498
  br i1 %285, label %286, label %288, !dbg !1501

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1498
  store i8 39, i8* %287, align 1, !dbg !1498, !tbaa !830
  br label %288, !dbg !1498

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !1501
  call void @llvm.dbg.value(metadata i64 %289, metadata !1243, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8 0, metadata !1250, metadata !DIExpression()), !dbg !1303
  br label %473, !dbg !1502

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !1503

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1261, metadata !DIExpression()), !dbg !1504
  %292 = tail call i16** @__ctype_b_loc() #30, !dbg !1505
  %293 = load i16*, i16** %292, align 8, !dbg !1505, !tbaa !649
  %294 = zext i8 %158 to i64, !dbg !1505
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1505
  %296 = load i16, i16* %295, align 2, !dbg !1505, !tbaa !1507
  %297 = lshr i16 %296, 14, !dbg !1509
  %298 = trunc i16 %297 to i8, !dbg !1509
  %299 = and i8 %298, 1, !dbg !1509
  call void @llvm.dbg.value(metadata i8 %354, metadata !1264, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i64 %355, metadata !1261, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i64 %306, metadata !1236, metadata !DIExpression()), !dbg !1303
  %300 = icmp eq i8 %299, 0, !dbg !1510
  call void @llvm.dbg.value(metadata i1 %357, metadata !1260, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1370
  br label %359, !dbg !1511

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #26, !dbg !1512
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1265, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8* %23, metadata !1514, metadata !DIExpression()) #26, !dbg !1522
  call void @llvm.dbg.value(metadata i32 0, metadata !1520, metadata !DIExpression()) #26, !dbg !1522
  call void @llvm.dbg.value(metadata i64 8, metadata !1521, metadata !DIExpression()) #26, !dbg !1522
  store i64 0, i64* %10, align 8, !dbg !1524
  call void @llvm.dbg.value(metadata i64 0, metadata !1261, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i8 1, metadata !1264, metadata !DIExpression()), !dbg !1504
  %302 = icmp eq i64 %154, -1, !dbg !1525
  br i1 %302, label %303, label %305, !dbg !1527

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #27, !dbg !1528
  call void @llvm.dbg.value(metadata i64 %304, metadata !1236, metadata !DIExpression()), !dbg !1303
  br label %305, !dbg !1529

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1370
  call void @llvm.dbg.value(metadata i64 %306, metadata !1236, metadata !DIExpression()), !dbg !1303
  br label %307, !dbg !1530

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !1531
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !1532
  call void @llvm.dbg.value(metadata i8 %309, metadata !1264, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i64 %308, metadata !1261, metadata !DIExpression()), !dbg !1504
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #26, !dbg !1533
  %310 = add i64 %308, %122, !dbg !1534
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !1535
  %312 = sub i64 %306, %310, !dbg !1536
  call void @llvm.dbg.value(metadata i32* %12, metadata !1283, metadata !DIExpression(DW_OP_deref)), !dbg !1537
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #26, !dbg !1538
  call void @llvm.dbg.value(metadata i64 %313, metadata !1286, metadata !DIExpression()), !dbg !1537
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !1539

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1261, metadata !DIExpression()), !dbg !1504
  %315 = icmp ugt i64 %306, %310, !dbg !1540
  br i1 %315, label %316, label %341, !dbg !1542

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !1543
  br label %318, !dbg !1543

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1261, metadata !DIExpression()), !dbg !1504
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !1544
  %322 = load i8, i8* %321, align 1, !dbg !1544, !tbaa !830
  %323 = icmp eq i8 %322, 0, !dbg !1542
  br i1 %323, label %341, label %324, !dbg !1543

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !1545
  call void @llvm.dbg.value(metadata i64 %325, metadata !1261, metadata !DIExpression()), !dbg !1504
  %326 = add i64 %325, %122, !dbg !1546
  %327 = icmp ult i64 %326, %306, !dbg !1540
  br i1 %327, label %318, label %341, !dbg !1542, !llvm.loop !1547

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !1548
  call void @llvm.dbg.value(metadata i64 1, metadata !1287, metadata !DIExpression()), !dbg !1549
  br i1 %330, label %331, label %344, !dbg !1548

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1287, metadata !DIExpression()), !dbg !1549
  %333 = add i64 %332, %310, !dbg !1550
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !1553
  %335 = load i8, i8* %334, align 1, !dbg !1553, !tbaa !830
  %336 = sext i8 %335 to i32, !dbg !1553
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !1554

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !1555
  call void @llvm.dbg.value(metadata i64 %338, metadata !1287, metadata !DIExpression()), !dbg !1549
  %339 = icmp eq i64 %338, %313, !dbg !1556
  br i1 %339, label %344, label %331, !dbg !1557, !llvm.loop !1558

340:                                              ; preds = %307
  br label %341, !dbg !1560

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1264, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i64 undef, metadata !1261, metadata !DIExpression()), !dbg !1504
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #26, !dbg !1560
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !1561, !tbaa !805
  call void @llvm.dbg.value(metadata i32 %345, metadata !1283, metadata !DIExpression()), !dbg !1537
  %346 = call i32 @iswprint(i32 %345) #26, !dbg !1563
  %347 = icmp eq i32 %346, 0, !dbg !1563
  %348 = select i1 %347, i8 0, i8 %309, !dbg !1564
  call void @llvm.dbg.value(metadata i8 %348, metadata !1264, metadata !DIExpression()), !dbg !1504
  %349 = add i64 %313, %308, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %349, metadata !1261, metadata !DIExpression()), !dbg !1504
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #26, !dbg !1560
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #27, !dbg !1566
  %351 = icmp eq i32 %350, 0, !dbg !1567
  br i1 %351, label %307, label %353, !dbg !1568, !llvm.loop !1569

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1264, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i64 undef, metadata !1261, metadata !DIExpression()), !dbg !1504
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #26, !dbg !1560
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #26, !dbg !1571
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #26, !dbg !1571
  call void @llvm.dbg.value(metadata i8 %354, metadata !1264, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i64 %355, metadata !1261, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i64 %306, metadata !1236, metadata !DIExpression()), !dbg !1303
  %356 = and i8 %354, 1, !dbg !1510
  %357 = icmp eq i8 %356, 0, !dbg !1510
  call void @llvm.dbg.value(metadata i1 %357, metadata !1260, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1370
  %358 = icmp ugt i64 %355, 1, !dbg !1572
  br i1 %358, label %367, label %359, !dbg !1511

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !1573
  br i1 %364, label %367, label %365, !dbg !1573

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1370
  call void @llvm.dbg.value(metadata i8 %472, metadata !1260, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %441, metadata !1259, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %440, metadata !1258, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %439, metadata !1253, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %438, metadata !1250, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %371, metadata !1236, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %437, metadata !1243, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %375, metadata !1242, metadata !DIExpression()), !dbg !1303
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !1574
  call void @llvm.dbg.value(metadata i64 %372, metadata !1294, metadata !DIExpression()), !dbg !1575
  %373 = and i1 %102, %368
  br label %374, !dbg !1576

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1363
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1303
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1312
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1370
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1370
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !1577
  call void @llvm.dbg.value(metadata i8 %380, metadata !1259, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %379, metadata !1258, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %378, metadata !1253, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %377, metadata !1250, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %376, metadata !1243, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %375, metadata !1242, metadata !DIExpression()), !dbg !1303
  br i1 %373, label %381, label %427, !dbg !1578

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !1583

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1259, metadata !DIExpression()), !dbg !1370
  %383 = and i8 %377, 1, !dbg !1586
  %384 = icmp eq i8 %383, 0, !dbg !1586
  %385 = and i1 %110, %384, !dbg !1586
  br i1 %385, label %386, label %402, !dbg !1586

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !1588
  br i1 %387, label %388, label %390, !dbg !1592

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1588
  store i8 39, i8* %389, align 1, !dbg !1588, !tbaa !830
  br label %390, !dbg !1588

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !1592
  call void @llvm.dbg.value(metadata i64 %391, metadata !1243, metadata !DIExpression()), !dbg !1303
  %392 = icmp ult i64 %391, %129, !dbg !1593
  br i1 %392, label %393, label %395, !dbg !1596

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !1593
  store i8 36, i8* %394, align 1, !dbg !1593, !tbaa !830
  br label %395, !dbg !1593

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !1596
  call void @llvm.dbg.value(metadata i64 %396, metadata !1243, metadata !DIExpression()), !dbg !1303
  %397 = icmp ult i64 %396, %129, !dbg !1597
  br i1 %397, label %398, label %400, !dbg !1600

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1597
  store i8 39, i8* %399, align 1, !dbg !1597, !tbaa !830
  br label %400, !dbg !1597

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !1600
  call void @llvm.dbg.value(metadata i64 %401, metadata !1243, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8 1, metadata !1250, metadata !DIExpression()), !dbg !1303
  br label %402, !dbg !1601

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1303
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1303
  call void @llvm.dbg.value(metadata i8 %404, metadata !1250, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %403, metadata !1243, metadata !DIExpression()), !dbg !1303
  %405 = icmp ult i64 %403, %129, !dbg !1602
  br i1 %405, label %406, label %408, !dbg !1605

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1602
  store i8 92, i8* %407, align 1, !dbg !1602, !tbaa !830
  br label %408, !dbg !1602

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !1605
  call void @llvm.dbg.value(metadata i64 %409, metadata !1243, metadata !DIExpression()), !dbg !1303
  %410 = icmp ult i64 %409, %129, !dbg !1606
  br i1 %410, label %411, label %415, !dbg !1609

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !1606
  %413 = or i8 %412, 48, !dbg !1606
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !1606
  store i8 %413, i8* %414, align 1, !dbg !1606, !tbaa !830
  br label %415, !dbg !1606

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !1609
  call void @llvm.dbg.value(metadata i64 %416, metadata !1243, metadata !DIExpression()), !dbg !1303
  %417 = icmp ult i64 %416, %129, !dbg !1610
  br i1 %417, label %418, label %423, !dbg !1613

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !1610
  %420 = and i8 %419, 7, !dbg !1610
  %421 = or i8 %420, 48, !dbg !1610
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !1610
  store i8 %421, i8* %422, align 1, !dbg !1610, !tbaa !830
  br label %423, !dbg !1610

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !1613
  call void @llvm.dbg.value(metadata i64 %424, metadata !1243, metadata !DIExpression()), !dbg !1303
  %425 = and i8 %378, 7, !dbg !1614
  %426 = or i8 %425, 48, !dbg !1615
  call void @llvm.dbg.value(metadata i8 %426, metadata !1253, metadata !DIExpression()), !dbg !1370
  br label %436, !dbg !1616

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !1617
  %429 = icmp eq i8 %428, 0, !dbg !1617
  br i1 %429, label %436, label %430, !dbg !1619

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !1620
  br i1 %431, label %432, label %434, !dbg !1624

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1620
  store i8 92, i8* %433, align 1, !dbg !1620, !tbaa !830
  br label %434, !dbg !1620

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !1624
  call void @llvm.dbg.value(metadata i64 %435, metadata !1243, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8 0, metadata !1258, metadata !DIExpression()), !dbg !1370
  br label %436, !dbg !1625

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1303
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1312
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1370
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1370
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1370
  call void @llvm.dbg.value(metadata i8 %441, metadata !1259, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %440, metadata !1258, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %439, metadata !1253, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %438, metadata !1250, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %437, metadata !1243, metadata !DIExpression()), !dbg !1303
  %442 = add i64 %375, 1, !dbg !1626
  %443 = icmp ugt i64 %372, %442, !dbg !1628
  br i1 %443, label %444, label %471, !dbg !1629

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !1630
  %446 = icmp ne i8 %445, 0, !dbg !1630
  %447 = and i8 %441, 1, !dbg !1630
  %448 = icmp eq i8 %447, 0, !dbg !1630
  %449 = and i1 %446, %448, !dbg !1630
  br i1 %449, label %450, label %461, !dbg !1630

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !1633
  br i1 %451, label %452, label %454, !dbg !1637

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !1633
  store i8 39, i8* %453, align 1, !dbg !1633, !tbaa !830
  br label %454, !dbg !1633

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !1637
  call void @llvm.dbg.value(metadata i64 %455, metadata !1243, metadata !DIExpression()), !dbg !1303
  %456 = icmp ult i64 %455, %129, !dbg !1638
  br i1 %456, label %457, label %459, !dbg !1641

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !1638
  store i8 39, i8* %458, align 1, !dbg !1638, !tbaa !830
  br label %459, !dbg !1638

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !1641
  call void @llvm.dbg.value(metadata i64 %460, metadata !1243, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8 0, metadata !1250, metadata !DIExpression()), !dbg !1303
  br label %461, !dbg !1642

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !1643
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1303
  call void @llvm.dbg.value(metadata i8 %463, metadata !1250, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %462, metadata !1243, metadata !DIExpression()), !dbg !1303
  %464 = icmp ult i64 %462, %129, !dbg !1644
  br i1 %464, label %465, label %467, !dbg !1647

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !1644
  store i8 %439, i8* %466, align 1, !dbg !1644, !tbaa !830
  br label %467, !dbg !1644

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !1647
  call void @llvm.dbg.value(metadata i64 %468, metadata !1243, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %442, metadata !1242, metadata !DIExpression()), !dbg !1303
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !1648
  %470 = load i8, i8* %469, align 1, !dbg !1648, !tbaa !830
  call void @llvm.dbg.value(metadata i8 %470, metadata !1253, metadata !DIExpression()), !dbg !1370
  br label %374, !dbg !1649, !llvm.loop !1650

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1370
  call void @llvm.dbg.value(metadata i8 %472, metadata !1260, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %441, metadata !1259, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %440, metadata !1258, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %439, metadata !1253, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %438, metadata !1250, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %371, metadata !1236, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %437, metadata !1243, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %375, metadata !1242, metadata !DIExpression()), !dbg !1303
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1363
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1303
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1308
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !1653
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1303
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1303
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1370
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1370
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1370
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1234, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8 %482, metadata !1260, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %481, metadata !1259, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %156, metadata !1258, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %480, metadata !1253, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %479, metadata !1251, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8 %478, metadata !1250, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %477, metadata !1236, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %476, metadata !1244, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %475, metadata !1243, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %474, metadata !1242, metadata !DIExpression()), !dbg !1303
  br i1 %116, label %494, label %484, !dbg !1654

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !1656
  %486 = zext i8 %485 to i64, !dbg !1656
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !1657
  %488 = load i32, i32* %487, align 4, !dbg !1657, !tbaa !805
  %489 = and i8 %480, 31, !dbg !1658
  %490 = zext i8 %489 to i32, !dbg !1658
  %491 = shl nuw i32 1, %490, !dbg !1659
  %492 = and i32 %488, %491, !dbg !1659
  %493 = icmp eq i32 %492, 0, !dbg !1659
  br i1 %493, label %494, label %495, !dbg !1660

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !1661

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !1662
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1303
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1308
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !1653
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1312
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1313
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1370
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1370
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1234, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8 %503, metadata !1260, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %502, metadata !1253, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %501, metadata !1251, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8 %500, metadata !1250, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %499, metadata !1236, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %498, metadata !1244, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %497, metadata !1243, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %496, metadata !1242, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.label(metadata !1300), !dbg !1663
  br i1 %109, label %505, label %635, !dbg !1664

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1259, metadata !DIExpression()), !dbg !1370
  %506 = and i8 %500, 1, !dbg !1666
  %507 = icmp eq i8 %506, 0, !dbg !1666
  %508 = and i1 %110, %507, !dbg !1666
  br i1 %508, label %509, label %525, !dbg !1666

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !1668
  br i1 %510, label %511, label %513, !dbg !1672

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !1668
  store i8 39, i8* %512, align 1, !dbg !1668, !tbaa !830
  br label %513, !dbg !1668

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !1672
  call void @llvm.dbg.value(metadata i64 %514, metadata !1243, metadata !DIExpression()), !dbg !1303
  %515 = icmp ult i64 %514, %504, !dbg !1673
  br i1 %515, label %516, label %518, !dbg !1676

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !1673
  store i8 36, i8* %517, align 1, !dbg !1673, !tbaa !830
  br label %518, !dbg !1673

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !1676
  call void @llvm.dbg.value(metadata i64 %519, metadata !1243, metadata !DIExpression()), !dbg !1303
  %520 = icmp ult i64 %519, %504, !dbg !1677
  br i1 %520, label %521, label %523, !dbg !1680

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1677
  store i8 39, i8* %522, align 1, !dbg !1677, !tbaa !830
  br label %523, !dbg !1677

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !1680
  call void @llvm.dbg.value(metadata i64 %524, metadata !1243, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8 1, metadata !1250, metadata !DIExpression()), !dbg !1303
  br label %525, !dbg !1681

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1370
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1303
  call void @llvm.dbg.value(metadata i8 %527, metadata !1250, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %526, metadata !1243, metadata !DIExpression()), !dbg !1303
  %528 = icmp ult i64 %526, %504, !dbg !1682
  br i1 %528, label %529, label %531, !dbg !1685

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1682
  store i8 92, i8* %530, align 1, !dbg !1682, !tbaa !830
  br label %531, !dbg !1682

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !1685
  call void @llvm.dbg.value(metadata i64 %543, metadata !1234, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8 %542, metadata !1260, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %541, metadata !1259, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %540, metadata !1253, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %539, metadata !1251, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8 %538, metadata !1250, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %537, metadata !1236, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %536, metadata !1244, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %535, metadata !1243, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %534, metadata !1242, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.label(metadata !1301), !dbg !1686
  br label %560, !dbg !1687

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !1662
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1303
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1308
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !1653
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1312
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1313
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !1690
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1370
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1370
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1234, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8 %542, metadata !1260, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %541, metadata !1259, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %540, metadata !1253, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %539, metadata !1251, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8 %538, metadata !1250, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %537, metadata !1236, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %536, metadata !1244, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %535, metadata !1243, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %534, metadata !1242, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.label(metadata !1301), !dbg !1686
  %544 = and i8 %538, 1, !dbg !1687
  %545 = icmp ne i8 %544, 0, !dbg !1687
  %546 = and i8 %541, 1, !dbg !1687
  %547 = icmp eq i8 %546, 0, !dbg !1687
  %548 = and i1 %545, %547, !dbg !1687
  br i1 %548, label %549, label %560, !dbg !1687

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !1691
  br i1 %550, label %551, label %553, !dbg !1695

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !1691
  store i8 39, i8* %552, align 1, !dbg !1691, !tbaa !830
  br label %553, !dbg !1691

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !1695
  call void @llvm.dbg.value(metadata i64 %554, metadata !1243, metadata !DIExpression()), !dbg !1303
  %555 = icmp ult i64 %554, %543, !dbg !1696
  br i1 %555, label %556, label %558, !dbg !1699

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !1696
  store i8 39, i8* %557, align 1, !dbg !1696, !tbaa !830
  br label %558, !dbg !1696

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !1699
  call void @llvm.dbg.value(metadata i64 %559, metadata !1243, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8 0, metadata !1250, metadata !DIExpression()), !dbg !1303
  br label %560, !dbg !1700

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1370
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1303
  call void @llvm.dbg.value(metadata i8 %569, metadata !1250, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %568, metadata !1243, metadata !DIExpression()), !dbg !1303
  %570 = icmp ult i64 %568, %561, !dbg !1701
  br i1 %570, label %571, label %573, !dbg !1704

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !1701
  store i8 %563, i8* %572, align 1, !dbg !1701, !tbaa !830
  br label %573, !dbg !1701

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !1704
  call void @llvm.dbg.value(metadata i64 %574, metadata !1243, metadata !DIExpression()), !dbg !1303
  %575 = icmp eq i8 %562, 0, !dbg !1705
  %576 = select i1 %575, i8 0, i8 %128, !dbg !1707
  call void @llvm.dbg.value(metadata i8 %576, metadata !1252, metadata !DIExpression()), !dbg !1303
  br label %577, !dbg !1708

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !1662
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1303
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1308
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !1653
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1312
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1303
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1314
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1234, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8 %584, metadata !1252, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8 %583, metadata !1251, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8 %582, metadata !1250, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %581, metadata !1236, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %580, metadata !1244, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %579, metadata !1243, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %578, metadata !1242, metadata !DIExpression()), !dbg !1303
  %586 = add i64 %578, 1, !dbg !1709
  call void @llvm.dbg.value(metadata i64 %586, metadata !1242, metadata !DIExpression()), !dbg !1303
  br label %121, !dbg !1710, !llvm.loop !1711

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !1713
  %590 = and i1 %110, %589, !dbg !1715
  %591 = xor i1 %590, true, !dbg !1715
  %592 = or i1 %109, %591, !dbg !1715
  br i1 %592, label %593, label %635, !dbg !1715

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !1716
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !1716
  br i1 %597, label %598, label %607, !dbg !1716

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !1718
  %600 = icmp eq i8 %599, 0, !dbg !1718
  br i1 %600, label %603, label %601, !dbg !1721

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !1722
  br label %652, !dbg !1723

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !1724
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !1726
  br i1 %606, label %26, label %607, !dbg !1726

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !1727
  %610 = and i1 %609, %608, !dbg !1729
  br i1 %610, label %611, label %626, !dbg !1729

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1245, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %123, metadata !1243, metadata !DIExpression()), !dbg !1303
  %612 = load i8, i8* %97, align 1, !dbg !1730, !tbaa !830
  %613 = icmp eq i8 %612, 0, !dbg !1733
  br i1 %613, label %626, label %614, !dbg !1733

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1245, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %617, metadata !1243, metadata !DIExpression()), !dbg !1303
  %618 = icmp ult i64 %617, %129, !dbg !1734
  br i1 %618, label %619, label %621, !dbg !1737

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !1734
  store i8 %615, i8* %620, align 1, !dbg !1734, !tbaa !830
  br label %621, !dbg !1734

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !1737
  call void @llvm.dbg.value(metadata i64 %622, metadata !1243, metadata !DIExpression()), !dbg !1303
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !1738
  call void @llvm.dbg.value(metadata i8* %623, metadata !1245, metadata !DIExpression()), !dbg !1303
  %624 = load i8, i8* %623, align 1, !dbg !1730, !tbaa !830
  %625 = icmp eq i8 %624, 0, !dbg !1733
  br i1 %625, label %626, label %614, !dbg !1733, !llvm.loop !1739

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1345
  call void @llvm.dbg.value(metadata i64 %627, metadata !1243, metadata !DIExpression()), !dbg !1303
  %628 = icmp ult i64 %627, %129, !dbg !1741
  br i1 %628, label %629, label %652, !dbg !1743

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !1744
  store i8 0, i8* %630, align 1, !dbg !1745, !tbaa !830
  br label %652, !dbg !1744

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1234, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %637, metadata !1236, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.label(metadata !1302), !dbg !1746
  %633 = icmp eq i8 %101, 0, !dbg !1747
  %634 = select i1 %633, i32 2, i32 4, !dbg !1747
  br label %642, !dbg !1747

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1234, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %637, metadata !1236, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.label(metadata !1302), !dbg !1746
  %639 = icmp eq i32 %93, 2, !dbg !1749
  %640 = icmp eq i8 %636, 0, !dbg !1747
  %641 = select i1 %640, i32 2, i32 4, !dbg !1747
  br i1 %639, label %642, label %646, !dbg !1747

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !1747

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1237, metadata !DIExpression()), !dbg !1303
  %650 = and i32 %5, -3, !dbg !1750
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !1751
  br label %652, !dbg !1752

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !1753
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !1754 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1758, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i32 %1, metadata !1759, metadata !DIExpression()), !dbg !1762
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #26, !dbg !1763
  call void @llvm.dbg.value(metadata i8* %3, metadata !1760, metadata !DIExpression()), !dbg !1762
  %4 = icmp eq i8* %3, %0, !dbg !1764
  br i1 %4, label %5, label %72, !dbg !1766

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #26, !dbg !1767
  call void @llvm.dbg.value(metadata i8* %6, metadata !1761, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8* %6, metadata !1768, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i8* undef, metadata !1774, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i8 85, metadata !1775, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i8 84, metadata !1776, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i8 70, metadata !1777, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i8 45, metadata !1778, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i8 56, metadata !1779, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i8 0, metadata !1780, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i8 0, metadata !1781, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i8 0, metadata !1782, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i8 0, metadata !1783, metadata !DIExpression()), !dbg !1784
  %7 = load i8, i8* %6, align 1, !dbg !1787, !tbaa !830
  %8 = and i8 %7, -33, !dbg !1787
  %9 = sext i8 %8 to i32, !dbg !1787
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !1787

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1789, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8* undef, metadata !1794, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 84, metadata !1795, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 70, metadata !1796, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 45, metadata !1797, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 56, metadata !1798, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 0, metadata !1799, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 0, metadata !1800, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 0, metadata !1801, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 0, metadata !1802, metadata !DIExpression()), !dbg !1803
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1807
  %12 = load i8, i8* %11, align 1, !dbg !1807, !tbaa !830
  %13 = and i8 %12, -33, !dbg !1807
  %14 = icmp eq i8 %13, 84, !dbg !1807
  br i1 %14, label %15, label %69, !dbg !1807

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !1809, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i8* undef, metadata !1814, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i8 70, metadata !1815, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i8 45, metadata !1816, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i8 56, metadata !1817, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i8 0, metadata !1818, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i8 0, metadata !1819, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i8 0, metadata !1820, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i8 0, metadata !1821, metadata !DIExpression()), !dbg !1822
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1826
  %17 = load i8, i8* %16, align 1, !dbg !1826, !tbaa !830
  %18 = and i8 %17, -33, !dbg !1826
  %19 = icmp eq i8 %18, 70, !dbg !1826
  br i1 %19, label %20, label %69, !dbg !1826

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !1828, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8* undef, metadata !1833, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8 45, metadata !1834, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8 56, metadata !1835, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8 0, metadata !1836, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8 0, metadata !1837, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8 0, metadata !1838, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8 0, metadata !1839, metadata !DIExpression()), !dbg !1840
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1844
  %22 = load i8, i8* %21, align 1, !dbg !1844, !tbaa !830
  %23 = icmp eq i8 %22, 45, !dbg !1844
  br i1 %23, label %24, label %69, !dbg !1846

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !1847, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i8* undef, metadata !1852, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i8 56, metadata !1853, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i8 0, metadata !1854, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i8 0, metadata !1855, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i8 0, metadata !1856, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i8 0, metadata !1857, metadata !DIExpression()), !dbg !1858
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1862
  %26 = load i8, i8* %25, align 1, !dbg !1862, !tbaa !830
  %27 = icmp eq i8 %26, 56, !dbg !1862
  br i1 %27, label %28, label %69, !dbg !1864

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !1865, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i8* undef, metadata !1870, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i8 0, metadata !1871, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i8 0, metadata !1872, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i8 0, metadata !1873, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i8 0, metadata !1874, metadata !DIExpression()), !dbg !1875
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1879
  %30 = load i8, i8* %29, align 1, !dbg !1879, !tbaa !830
  %31 = icmp eq i8 %30, 0, !dbg !1879
  br i1 %31, label %32, label %69, !dbg !1881

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !1882, !tbaa !830
  %34 = icmp eq i8 %33, 96, !dbg !1883
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.65, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.66, i64 0, i64 0), !dbg !1882
  br label %72, !dbg !1884

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1789, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i8* undef, metadata !1794, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i8 66, metadata !1795, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i8 49, metadata !1796, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i8 56, metadata !1797, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i8 48, metadata !1798, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i8 51, metadata !1799, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i8 48, metadata !1800, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i8 0, metadata !1801, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i8 0, metadata !1802, metadata !DIExpression()), !dbg !1885
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1889
  %38 = load i8, i8* %37, align 1, !dbg !1889, !tbaa !830
  %39 = and i8 %38, -33, !dbg !1889
  %40 = icmp eq i8 %39, 66, !dbg !1889
  br i1 %40, label %41, label %69, !dbg !1889

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !1809, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8* undef, metadata !1814, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 49, metadata !1815, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 56, metadata !1816, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 48, metadata !1817, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 51, metadata !1818, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 48, metadata !1819, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 0, metadata !1820, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 0, metadata !1821, metadata !DIExpression()), !dbg !1890
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1892
  %43 = load i8, i8* %42, align 1, !dbg !1892, !tbaa !830
  %44 = icmp eq i8 %43, 49, !dbg !1892
  br i1 %44, label %45, label %69, !dbg !1893

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !1828, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8* undef, metadata !1833, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 56, metadata !1834, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 48, metadata !1835, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 51, metadata !1836, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 48, metadata !1837, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 0, metadata !1838, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 0, metadata !1839, metadata !DIExpression()), !dbg !1894
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1896
  %47 = load i8, i8* %46, align 1, !dbg !1896, !tbaa !830
  %48 = icmp eq i8 %47, 56, !dbg !1896
  br i1 %48, label %49, label %69, !dbg !1897

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !1847, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8* undef, metadata !1852, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8 48, metadata !1853, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8 51, metadata !1854, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8 48, metadata !1855, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8 0, metadata !1856, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8 0, metadata !1857, metadata !DIExpression()), !dbg !1898
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1900
  %51 = load i8, i8* %50, align 1, !dbg !1900, !tbaa !830
  %52 = icmp eq i8 %51, 48, !dbg !1900
  br i1 %52, label %53, label %69, !dbg !1901

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !1865, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8* undef, metadata !1870, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 51, metadata !1871, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 48, metadata !1872, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 0, metadata !1873, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 0, metadata !1874, metadata !DIExpression()), !dbg !1902
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1904
  %55 = load i8, i8* %54, align 1, !dbg !1904, !tbaa !830
  %56 = icmp eq i8 %55, 51, !dbg !1904
  br i1 %56, label %57, label %69, !dbg !1905

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !1906, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8* undef, metadata !1911, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 48, metadata !1912, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 0, metadata !1913, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 0, metadata !1914, metadata !DIExpression()), !dbg !1915
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1919
  %59 = load i8, i8* %58, align 1, !dbg !1919, !tbaa !830
  %60 = icmp eq i8 %59, 48, !dbg !1919
  br i1 %60, label %61, label %69, !dbg !1921

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !1922, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i8* undef, metadata !1927, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i8 0, metadata !1928, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i8 0, metadata !1929, metadata !DIExpression()), !dbg !1930
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1934
  %63 = load i8, i8* %62, align 1, !dbg !1934, !tbaa !830
  %64 = icmp eq i8 %63, 0, !dbg !1934
  br i1 %64, label %65, label %69, !dbg !1936

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !1937, !tbaa !830
  %67 = icmp eq i8 %66, 96, !dbg !1938
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.67, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.68, i64 0, i64 0), !dbg !1937
  br label %72, !dbg !1939

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !1940
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), !dbg !1941
  br label %72, !dbg !1942

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !1762
  ret i8* %73, !dbg !1943
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #17

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1944 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !1948 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !1954 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1958, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %1, metadata !1959, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1960, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i8* %0, metadata !1962, metadata !DIExpression()) #26, !dbg !1975
  call void @llvm.dbg.value(metadata i64 %1, metadata !1967, metadata !DIExpression()) #26, !dbg !1975
  call void @llvm.dbg.value(metadata i64* null, metadata !1968, metadata !DIExpression()) #26, !dbg !1975
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1969, metadata !DIExpression()) #26, !dbg !1975
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1977
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1977
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1970, metadata !DIExpression()) #26, !dbg !1975
  %6 = tail call i32* @__errno_location() #30, !dbg !1978
  %7 = load i32, i32* %6, align 4, !dbg !1978, !tbaa !805
  call void @llvm.dbg.value(metadata i32 %7, metadata !1971, metadata !DIExpression()) #26, !dbg !1975
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1979
  %9 = load i32, i32* %8, align 4, !dbg !1979, !tbaa !1177
  %10 = or i32 %9, 1, !dbg !1980
  call void @llvm.dbg.value(metadata i32 %10, metadata !1972, metadata !DIExpression()) #26, !dbg !1975
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1981
  %12 = load i32, i32* %11, align 8, !dbg !1981, !tbaa !1125
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1982
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1983
  %15 = load i8*, i8** %14, align 8, !dbg !1983, !tbaa !1199
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1984
  %17 = load i8*, i8** %16, align 8, !dbg !1984, !tbaa !1202
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #26, !dbg !1985
  %19 = add i64 %18, 1, !dbg !1986
  call void @llvm.dbg.value(metadata i64 %19, metadata !1973, metadata !DIExpression()) #26, !dbg !1975
  call void @llvm.dbg.value(metadata i64 %19, metadata !1987, metadata !DIExpression()) #26, !dbg !1992
  %20 = tail call noalias i8* @xmalloc(i64 %19) #26, !dbg !1994
  call void @llvm.dbg.value(metadata i8* %20, metadata !1974, metadata !DIExpression()) #26, !dbg !1975
  %21 = load i32, i32* %11, align 8, !dbg !1995, !tbaa !1125
  %22 = load i8*, i8** %14, align 8, !dbg !1996, !tbaa !1199
  %23 = load i8*, i8** %16, align 8, !dbg !1997, !tbaa !1202
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #26, !dbg !1998
  store i32 %7, i32* %6, align 4, !dbg !1999, !tbaa !805
  ret i8* %20, !dbg !2000
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !1963 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1962, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i64 %1, metadata !1967, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i64* %2, metadata !1968, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1969, metadata !DIExpression()), !dbg !2001
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2002
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2002
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1970, metadata !DIExpression()), !dbg !2001
  %7 = tail call i32* @__errno_location() #30, !dbg !2003
  %8 = load i32, i32* %7, align 4, !dbg !2003, !tbaa !805
  call void @llvm.dbg.value(metadata i32 %8, metadata !1971, metadata !DIExpression()), !dbg !2001
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2004
  %10 = load i32, i32* %9, align 4, !dbg !2004, !tbaa !1177
  %11 = icmp eq i64* %2, null, !dbg !2005
  %12 = zext i1 %11 to i32, !dbg !2005
  %13 = or i32 %10, %12, !dbg !2006
  call void @llvm.dbg.value(metadata i32 %13, metadata !1972, metadata !DIExpression()), !dbg !2001
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2007
  %15 = load i32, i32* %14, align 8, !dbg !2007, !tbaa !1125
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2008
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2009
  %18 = load i8*, i8** %17, align 8, !dbg !2009, !tbaa !1199
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2010
  %20 = load i8*, i8** %19, align 8, !dbg !2010, !tbaa !1202
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !2011
  %22 = add i64 %21, 1, !dbg !2012
  call void @llvm.dbg.value(metadata i64 %22, metadata !1973, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i64 %22, metadata !1987, metadata !DIExpression()) #26, !dbg !2013
  %23 = tail call noalias i8* @xmalloc(i64 %22) #26, !dbg !2015
  call void @llvm.dbg.value(metadata i8* %23, metadata !1974, metadata !DIExpression()), !dbg !2001
  %24 = load i32, i32* %14, align 8, !dbg !2016, !tbaa !1125
  %25 = load i8*, i8** %17, align 8, !dbg !2017, !tbaa !1199
  %26 = load i8*, i8** %19, align 8, !dbg !2018, !tbaa !1202
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !2019
  store i32 %8, i32* %7, align 4, !dbg !2020, !tbaa !805
  br i1 %11, label %29, label %28, !dbg !2021

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2022, !tbaa !2024
  br label %29, !dbg !2026

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2027
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2028 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2032, !tbaa !649
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2030, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i32 1, metadata !2031, metadata !DIExpression()), !dbg !2033
  %2 = load i32, i32* @nslots, align 4, !dbg !2034, !tbaa !805
  %3 = icmp sgt i32 %2, 1, !dbg !2037
  br i1 %3, label %4, label %12, !dbg !2038

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2037
  br label %6, !dbg !2038

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !2031, metadata !DIExpression()), !dbg !2033
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !2039
  %9 = load i8*, i8** %8, align 8, !dbg !2039, !tbaa !2040
  tail call void @free(i8* %9) #26, !dbg !2042
  %10 = add nuw nsw i64 %7, 1, !dbg !2043
  call void @llvm.dbg.value(metadata i64 %10, metadata !2031, metadata !DIExpression()), !dbg !2033
  %11 = icmp eq i64 %10, %5, !dbg !2037
  br i1 %11, label %12, label %6, !dbg !2038, !llvm.loop !2044

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2046
  %14 = load i8*, i8** %13, align 8, !dbg !2046, !tbaa !2040
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2048
  br i1 %15, label %17, label %16, !dbg !2049

16:                                               ; preds = %12
  tail call void @free(i8* %14) #26, !dbg !2050
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2052, !tbaa !2053
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2054, !tbaa !2040
  br label %17, !dbg !2055

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2056
  br i1 %18, label %21, label %19, !dbg !2058

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2059
  tail call void @free(i8* %20) #26, !dbg !2061
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2062, !tbaa !649
  br label %21, !dbg !2063

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2064, !tbaa !805
  ret void, !dbg !2065
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2066 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2068, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i8* %1, metadata !2069, metadata !DIExpression()), !dbg !2070
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2071
  ret i8* %3, !dbg !2072
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2073 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2077, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8* %1, metadata !2078, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %2, metadata !2079, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2080, metadata !DIExpression()), !dbg !2092
  %5 = tail call i32* @__errno_location() #30, !dbg !2093
  %6 = load i32, i32* %5, align 4, !dbg !2093, !tbaa !805
  call void @llvm.dbg.value(metadata i32 %6, metadata !2081, metadata !DIExpression()), !dbg !2092
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2094, !tbaa !649
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2082, metadata !DIExpression()), !dbg !2092
  %8 = icmp slt i32 %0, 0, !dbg !2095
  br i1 %8, label %9, label %10, !dbg !2097

9:                                                ; preds = %4
  tail call void @abort() #28, !dbg !2098
  unreachable, !dbg !2098

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2099, !tbaa !805
  %12 = icmp sgt i32 %11, %0, !dbg !2100
  br i1 %12, label %34, label %13, !dbg !2101

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2102
  call void @llvm.dbg.value(metadata i1 %14, metadata !2083, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2103
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2086, metadata !DIExpression()), !dbg !2103
  %15 = icmp eq i32 %0, 2147483647, !dbg !2104
  br i1 %15, label %16, label %17, !dbg !2106

16:                                               ; preds = %13
  tail call void @xalloc_die() #28, !dbg !2107
  unreachable, !dbg !2107

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2108
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2108
  %20 = add nuw nsw i32 %0, 1, !dbg !2109
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2110
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #26, !dbg !2111
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2111
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2082, metadata !DIExpression()), !dbg !2092
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2112, !tbaa !649
  br i1 %14, label %25, label %26, !dbg !2113

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2114, !tbaa.struct !2116
  br label %26, !dbg !2117

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2118, !tbaa !805
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2119
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2120
  %31 = sub nsw i32 %20, %27, !dbg !2121
  %32 = sext i32 %31 to i64, !dbg !2122
  %33 = shl nsw i64 %32, 4, !dbg !2123
  call void @llvm.dbg.value(metadata i8* %30, metadata !1514, metadata !DIExpression()) #26, !dbg !2124
  call void @llvm.dbg.value(metadata i32 0, metadata !1520, metadata !DIExpression()) #26, !dbg !2124
  call void @llvm.dbg.value(metadata i64 %33, metadata !1521, metadata !DIExpression()) #26, !dbg !2124
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #26, !dbg !2126
  store i32 %20, i32* @nslots, align 4, !dbg !2127, !tbaa !805
  br label %34, !dbg !2128

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2092
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2082, metadata !DIExpression()), !dbg !2092
  %36 = zext i32 %0 to i64, !dbg !2129
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2130
  %38 = load i64, i64* %37, align 8, !dbg !2130, !tbaa !2053
  call void @llvm.dbg.value(metadata i64 %38, metadata !2087, metadata !DIExpression()), !dbg !2131
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2132
  %40 = load i8*, i8** %39, align 8, !dbg !2132, !tbaa !2040
  call void @llvm.dbg.value(metadata i8* %40, metadata !2089, metadata !DIExpression()), !dbg !2131
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2133
  %42 = load i32, i32* %41, align 4, !dbg !2133, !tbaa !1177
  %43 = or i32 %42, 1, !dbg !2134
  call void @llvm.dbg.value(metadata i32 %43, metadata !2090, metadata !DIExpression()), !dbg !2131
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2135
  %45 = load i32, i32* %44, align 8, !dbg !2135, !tbaa !1125
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2136
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2137
  %48 = load i8*, i8** %47, align 8, !dbg !2137, !tbaa !1199
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2138
  %50 = load i8*, i8** %49, align 8, !dbg !2138, !tbaa !1202
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2139
  call void @llvm.dbg.value(metadata i64 %51, metadata !2091, metadata !DIExpression()), !dbg !2131
  %52 = icmp ugt i64 %38, %51, !dbg !2140
  br i1 %52, label %63, label %53, !dbg !2142

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2143
  call void @llvm.dbg.value(metadata i64 %54, metadata !2087, metadata !DIExpression()), !dbg !2131
  store i64 %54, i64* %37, align 8, !dbg !2145, !tbaa !2053
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2146
  br i1 %55, label %57, label %56, !dbg !2148

56:                                               ; preds = %53
  tail call void @free(i8* %40) #26, !dbg !2149
  br label %57, !dbg !2149

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !1987, metadata !DIExpression()) #26, !dbg !2150
  %58 = tail call noalias i8* @xmalloc(i64 %54) #26, !dbg !2152
  call void @llvm.dbg.value(metadata i8* %58, metadata !2089, metadata !DIExpression()), !dbg !2131
  store i8* %58, i8** %39, align 8, !dbg !2153, !tbaa !2040
  %59 = load i32, i32* %44, align 8, !dbg !2154, !tbaa !1125
  %60 = load i8*, i8** %47, align 8, !dbg !2155, !tbaa !1199
  %61 = load i8*, i8** %49, align 8, !dbg !2156, !tbaa !1202
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2157
  br label %63, !dbg !2158

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2131
  call void @llvm.dbg.value(metadata i8* %64, metadata !2089, metadata !DIExpression()), !dbg !2131
  store i32 %6, i32* %5, align 4, !dbg !2159, !tbaa !805
  ret i8* %64, !dbg !2160
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2161 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2165, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i8* %1, metadata !2166, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i64 %2, metadata !2167, metadata !DIExpression()), !dbg !2168
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2169
  ret i8* %4, !dbg !2170
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2171 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2173, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i32 0, metadata !2068, metadata !DIExpression()) #26, !dbg !2175
  call void @llvm.dbg.value(metadata i8* %0, metadata !2069, metadata !DIExpression()) #26, !dbg !2175
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #26, !dbg !2177
  ret i8* %2, !dbg !2178
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2179 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2183, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i64 %1, metadata !2184, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i32 0, metadata !2165, metadata !DIExpression()) #26, !dbg !2186
  call void @llvm.dbg.value(metadata i8* %0, metadata !2166, metadata !DIExpression()) #26, !dbg !2186
  call void @llvm.dbg.value(metadata i64 %1, metadata !2167, metadata !DIExpression()) #26, !dbg !2186
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #26, !dbg !2188
  ret i8* %3, !dbg !2189
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2190 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2194, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i32 %1, metadata !2195, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i8* %2, metadata !2196, metadata !DIExpression()), !dbg !2198
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2199
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2199
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2197, metadata !DIExpression()), !dbg !2200
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2201), !dbg !2204
  call void @llvm.dbg.value(metadata i32 %1, metadata !2205, metadata !DIExpression()) #26, !dbg !2211
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2210, metadata !DIExpression()) #26, !dbg !2213
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #26, !dbg !2213, !alias.scope !2201
  %6 = icmp eq i32 %1, 10, !dbg !2214
  br i1 %6, label %7, label %8, !dbg !2216

7:                                                ; preds = %3
  tail call void @abort() #28, !dbg !2217, !noalias !2201
  unreachable, !dbg !2217

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2218
  store i32 %1, i32* %9, align 8, !dbg !2219, !tbaa !1125, !alias.scope !2201
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2220
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2221
  ret i8* %10, !dbg !2222
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2223 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2227, metadata !DIExpression()), !dbg !2232
  call void @llvm.dbg.value(metadata i32 %1, metadata !2228, metadata !DIExpression()), !dbg !2232
  call void @llvm.dbg.value(metadata i8* %2, metadata !2229, metadata !DIExpression()), !dbg !2232
  call void @llvm.dbg.value(metadata i64 %3, metadata !2230, metadata !DIExpression()), !dbg !2232
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2233
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2233
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2231, metadata !DIExpression()), !dbg !2234
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2235), !dbg !2238
  call void @llvm.dbg.value(metadata i32 %1, metadata !2205, metadata !DIExpression()) #26, !dbg !2239
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2210, metadata !DIExpression()) #26, !dbg !2241
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #26, !dbg !2241, !alias.scope !2235
  %7 = icmp eq i32 %1, 10, !dbg !2242
  br i1 %7, label %8, label %9, !dbg !2243

8:                                                ; preds = %4
  tail call void @abort() #28, !dbg !2244, !noalias !2235
  unreachable, !dbg !2244

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2245
  store i32 %1, i32* %10, align 8, !dbg !2246, !tbaa !1125, !alias.scope !2235
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2247
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2248
  ret i8* %11, !dbg !2249
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2250 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2254, metadata !DIExpression()), !dbg !2256
  call void @llvm.dbg.value(metadata i8* %1, metadata !2255, metadata !DIExpression()), !dbg !2256
  call void @llvm.dbg.value(metadata i32 0, metadata !2194, metadata !DIExpression()) #26, !dbg !2257
  call void @llvm.dbg.value(metadata i32 %0, metadata !2195, metadata !DIExpression()) #26, !dbg !2257
  call void @llvm.dbg.value(metadata i8* %1, metadata !2196, metadata !DIExpression()) #26, !dbg !2257
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2259
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2259
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2197, metadata !DIExpression()) #26, !dbg !2260
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2261) #26, !dbg !2264
  call void @llvm.dbg.value(metadata i32 %0, metadata !2205, metadata !DIExpression()) #26, !dbg !2265
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2210, metadata !DIExpression()) #26, !dbg !2267
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #26, !dbg !2267, !alias.scope !2261
  %5 = icmp eq i32 %0, 10, !dbg !2268
  br i1 %5, label %6, label %7, !dbg !2269

6:                                                ; preds = %2
  tail call void @abort() #28, !dbg !2270, !noalias !2261
  unreachable, !dbg !2270

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2271
  store i32 %0, i32* %8, align 8, !dbg !2272, !tbaa !1125, !alias.scope !2261
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #26, !dbg !2273
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2274
  ret i8* %9, !dbg !2275
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2276 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2280, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i8* %1, metadata !2281, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %2, metadata !2282, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i32 0, metadata !2227, metadata !DIExpression()) #26, !dbg !2284
  call void @llvm.dbg.value(metadata i32 %0, metadata !2228, metadata !DIExpression()) #26, !dbg !2284
  call void @llvm.dbg.value(metadata i8* %1, metadata !2229, metadata !DIExpression()) #26, !dbg !2284
  call void @llvm.dbg.value(metadata i64 %2, metadata !2230, metadata !DIExpression()) #26, !dbg !2284
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2286
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2286
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2231, metadata !DIExpression()) #26, !dbg !2287
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2288) #26, !dbg !2291
  call void @llvm.dbg.value(metadata i32 %0, metadata !2205, metadata !DIExpression()) #26, !dbg !2292
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2210, metadata !DIExpression()) #26, !dbg !2294
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #26, !dbg !2294, !alias.scope !2288
  %6 = icmp eq i32 %0, 10, !dbg !2295
  br i1 %6, label %7, label %8, !dbg !2296

7:                                                ; preds = %3
  tail call void @abort() #28, !dbg !2297, !noalias !2288
  unreachable, !dbg !2297

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2298
  store i32 %0, i32* %9, align 8, !dbg !2299, !tbaa !1125, !alias.scope !2288
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #26, !dbg !2300
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2301
  ret i8* %10, !dbg !2302
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2303 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2307, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %1, metadata !2308, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %2, metadata !2309, metadata !DIExpression()), !dbg !2311
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2312
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2312
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2310, metadata !DIExpression()), !dbg !2313
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2314, !tbaa.struct !2315
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1143, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %2, metadata !1144, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i32 1, metadata !1145, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %2, metadata !1146, metadata !DIExpression()), !dbg !2316
  %6 = lshr i8 %2, 5, !dbg !2318
  %7 = zext i8 %6 to i64, !dbg !2318
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2319
  call void @llvm.dbg.value(metadata i32* %8, metadata !1148, metadata !DIExpression()), !dbg !2316
  %9 = and i8 %2, 31, !dbg !2320
  %10 = zext i8 %9 to i32, !dbg !2320
  call void @llvm.dbg.value(metadata i32 %10, metadata !1150, metadata !DIExpression()), !dbg !2316
  %11 = load i32, i32* %8, align 4, !dbg !2321, !tbaa !805
  %12 = lshr i32 %11, %10, !dbg !2322
  %13 = and i32 %12, 1, !dbg !2323
  call void @llvm.dbg.value(metadata i32 %13, metadata !1151, metadata !DIExpression()), !dbg !2316
  %14 = xor i32 %13, 1, !dbg !2324
  %15 = shl i32 %14, %10, !dbg !2325
  %16 = xor i32 %15, %11, !dbg !2326
  store i32 %16, i32* %8, align 4, !dbg !2326, !tbaa !805
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2327
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2328
  ret i8* %17, !dbg !2329
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2330 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2334, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata i8 %1, metadata !2335, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata i8* %0, metadata !2307, metadata !DIExpression()) #26, !dbg !2337
  call void @llvm.dbg.value(metadata i64 -1, metadata !2308, metadata !DIExpression()) #26, !dbg !2337
  call void @llvm.dbg.value(metadata i8 %1, metadata !2309, metadata !DIExpression()) #26, !dbg !2337
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2339
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2339
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2310, metadata !DIExpression()) #26, !dbg !2340
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #26, !dbg !2341, !tbaa.struct !2315
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1143, metadata !DIExpression()) #26, !dbg !2342
  call void @llvm.dbg.value(metadata i8 %1, metadata !1144, metadata !DIExpression()) #26, !dbg !2342
  call void @llvm.dbg.value(metadata i32 1, metadata !1145, metadata !DIExpression()) #26, !dbg !2342
  call void @llvm.dbg.value(metadata i8 %1, metadata !1146, metadata !DIExpression()) #26, !dbg !2342
  %5 = lshr i8 %1, 5, !dbg !2344
  %6 = zext i8 %5 to i64, !dbg !2344
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2345
  call void @llvm.dbg.value(metadata i32* %7, metadata !1148, metadata !DIExpression()) #26, !dbg !2342
  %8 = and i8 %1, 31, !dbg !2346
  %9 = zext i8 %8 to i32, !dbg !2346
  call void @llvm.dbg.value(metadata i32 %9, metadata !1150, metadata !DIExpression()) #26, !dbg !2342
  %10 = load i32, i32* %7, align 4, !dbg !2347, !tbaa !805
  %11 = lshr i32 %10, %9, !dbg !2348
  %12 = and i32 %11, 1, !dbg !2349
  call void @llvm.dbg.value(metadata i32 %12, metadata !1151, metadata !DIExpression()) #26, !dbg !2342
  %13 = xor i32 %12, 1, !dbg !2350
  %14 = shl i32 %13, %9, !dbg !2351
  %15 = xor i32 %14, %10, !dbg !2352
  store i32 %15, i32* %7, align 4, !dbg !2352, !tbaa !805
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #26, !dbg !2353
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2354
  ret i8* %16, !dbg !2355
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2356 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2358, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8* %0, metadata !2334, metadata !DIExpression()) #26, !dbg !2360
  call void @llvm.dbg.value(metadata i8 58, metadata !2335, metadata !DIExpression()) #26, !dbg !2360
  call void @llvm.dbg.value(metadata i8* %0, metadata !2307, metadata !DIExpression()) #26, !dbg !2362
  call void @llvm.dbg.value(metadata i64 -1, metadata !2308, metadata !DIExpression()) #26, !dbg !2362
  call void @llvm.dbg.value(metadata i8 58, metadata !2309, metadata !DIExpression()) #26, !dbg !2362
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2364
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #26, !dbg !2364
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2310, metadata !DIExpression()) #26, !dbg !2365
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #26, !dbg !2366, !tbaa.struct !2315
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1143, metadata !DIExpression()) #26, !dbg !2367
  call void @llvm.dbg.value(metadata i8 58, metadata !1144, metadata !DIExpression()) #26, !dbg !2367
  call void @llvm.dbg.value(metadata i32 1, metadata !1145, metadata !DIExpression()) #26, !dbg !2367
  call void @llvm.dbg.value(metadata i8 58, metadata !1146, metadata !DIExpression()) #26, !dbg !2367
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2369
  call void @llvm.dbg.value(metadata i32* %4, metadata !1148, metadata !DIExpression()) #26, !dbg !2367
  call void @llvm.dbg.value(metadata i32 26, metadata !1150, metadata !DIExpression()) #26, !dbg !2367
  %5 = load i32, i32* %4, align 4, !dbg !2370, !tbaa !805
  call void @llvm.dbg.value(metadata i32 %5, metadata !1151, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #26, !dbg !2367
  %6 = or i32 %5, 67108864, !dbg !2371
  store i32 %6, i32* %4, align 4, !dbg !2371, !tbaa !805
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #26, !dbg !2372
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #26, !dbg !2373
  ret i8* %7, !dbg !2374
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2375 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2377, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata i64 %1, metadata !2378, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata i8* %0, metadata !2307, metadata !DIExpression()) #26, !dbg !2380
  call void @llvm.dbg.value(metadata i64 %1, metadata !2308, metadata !DIExpression()) #26, !dbg !2380
  call void @llvm.dbg.value(metadata i8 58, metadata !2309, metadata !DIExpression()) #26, !dbg !2380
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2382
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2382
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2310, metadata !DIExpression()) #26, !dbg !2383
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #26, !dbg !2384, !tbaa.struct !2315
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1143, metadata !DIExpression()) #26, !dbg !2385
  call void @llvm.dbg.value(metadata i8 58, metadata !1144, metadata !DIExpression()) #26, !dbg !2385
  call void @llvm.dbg.value(metadata i32 1, metadata !1145, metadata !DIExpression()) #26, !dbg !2385
  call void @llvm.dbg.value(metadata i8 58, metadata !1146, metadata !DIExpression()) #26, !dbg !2385
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2387
  call void @llvm.dbg.value(metadata i32* %5, metadata !1148, metadata !DIExpression()) #26, !dbg !2385
  call void @llvm.dbg.value(metadata i32 26, metadata !1150, metadata !DIExpression()) #26, !dbg !2385
  %6 = load i32, i32* %5, align 4, !dbg !2388, !tbaa !805
  call void @llvm.dbg.value(metadata i32 %6, metadata !1151, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #26, !dbg !2385
  %7 = or i32 %6, 67108864, !dbg !2389
  store i32 %7, i32* %5, align 4, !dbg !2389, !tbaa !805
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #26, !dbg !2390
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2391
  ret i8* %8, !dbg !2392
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2393 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2210, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2399
  call void @llvm.dbg.value(metadata i32 %0, metadata !2395, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i32 %1, metadata !2396, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i8* %2, metadata !2397, metadata !DIExpression()), !dbg !2401
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2402
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2402
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2398, metadata !DIExpression()), !dbg !2403
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2404
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2404
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2405), !dbg !2404
  call void @llvm.dbg.value(metadata i32 %1, metadata !2205, metadata !DIExpression()) #26, !dbg !2408
  call void @llvm.dbg.value(metadata i32 0, metadata !2210, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2408
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2399, !alias.scope !2405
  %8 = icmp eq i32 %1, 10, !dbg !2409
  br i1 %8, label %9, label %10, !dbg !2410

9:                                                ; preds = %3
  tail call void @abort() #28, !dbg !2411, !noalias !2405
  unreachable, !dbg !2411

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2210, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2408
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2404
  store i32 %1, i32* %11, align 8, !dbg !2404, !tbaa.struct !2315
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2404
  %13 = bitcast i32* %12 to i8*, !dbg !2404
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2404, !tbaa.struct !2412
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2404
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1143, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 58, metadata !1144, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 1, metadata !1145, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 58, metadata !1146, metadata !DIExpression()), !dbg !2413
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2415
  call void @llvm.dbg.value(metadata i32* %14, metadata !1148, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 26, metadata !1150, metadata !DIExpression()), !dbg !2413
  %15 = load i32, i32* %14, align 4, !dbg !2416, !tbaa !805
  call void @llvm.dbg.value(metadata i32 %15, metadata !1151, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2413
  %16 = or i32 %15, 67108864, !dbg !2417
  store i32 %16, i32* %14, align 4, !dbg !2417, !tbaa !805
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2418
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2419
  ret i8* %17, !dbg !2420
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2421 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2425, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8* %1, metadata !2426, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8* %2, metadata !2427, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8* %3, metadata !2428, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i32 %0, metadata !2430, metadata !DIExpression()) #26, !dbg !2440
  call void @llvm.dbg.value(metadata i8* %1, metadata !2435, metadata !DIExpression()) #26, !dbg !2440
  call void @llvm.dbg.value(metadata i8* %2, metadata !2436, metadata !DIExpression()) #26, !dbg !2440
  call void @llvm.dbg.value(metadata i8* %3, metadata !2437, metadata !DIExpression()) #26, !dbg !2440
  call void @llvm.dbg.value(metadata i64 -1, metadata !2438, metadata !DIExpression()) #26, !dbg !2440
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2442
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2442
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2439, metadata !DIExpression()) #26, !dbg !2443
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #26, !dbg !2444, !tbaa.struct !2315
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1184, metadata !DIExpression()) #26, !dbg !2445
  call void @llvm.dbg.value(metadata i8* %1, metadata !1185, metadata !DIExpression()) #26, !dbg !2445
  call void @llvm.dbg.value(metadata i8* %2, metadata !1186, metadata !DIExpression()) #26, !dbg !2445
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1184, metadata !DIExpression()) #26, !dbg !2445
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2447
  store i32 10, i32* %7, align 8, !dbg !2448, !tbaa !1125
  %8 = icmp ne i8* %1, null, !dbg !2449
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2450
  br i1 %10, label %12, label %11, !dbg !2450

11:                                               ; preds = %4
  tail call void @abort() #28, !dbg !2451
  unreachable, !dbg !2451

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2452
  store i8* %1, i8** %13, align 8, !dbg !2453, !tbaa !1199
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2454
  store i8* %2, i8** %14, align 8, !dbg !2455, !tbaa !1202
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #26, !dbg !2456
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2457
  ret i8* %15, !dbg !2458
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2431 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2430, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8* %1, metadata !2435, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8* %2, metadata !2436, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8* %3, metadata !2437, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i64 %4, metadata !2438, metadata !DIExpression()), !dbg !2459
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2460
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #26, !dbg !2460
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2439, metadata !DIExpression()), !dbg !2461
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2462, !tbaa.struct !2315
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1184, metadata !DIExpression()) #26, !dbg !2463
  call void @llvm.dbg.value(metadata i8* %1, metadata !1185, metadata !DIExpression()) #26, !dbg !2463
  call void @llvm.dbg.value(metadata i8* %2, metadata !1186, metadata !DIExpression()) #26, !dbg !2463
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1184, metadata !DIExpression()) #26, !dbg !2463
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2465
  store i32 10, i32* %8, align 8, !dbg !2466, !tbaa !1125
  %9 = icmp ne i8* %1, null, !dbg !2467
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2468
  br i1 %11, label %13, label %12, !dbg !2468

12:                                               ; preds = %5
  tail call void @abort() #28, !dbg !2469
  unreachable, !dbg !2469

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2470
  store i8* %1, i8** %14, align 8, !dbg !2471, !tbaa !1199
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2472
  store i8* %2, i8** %15, align 8, !dbg !2473, !tbaa !1202
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2474
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #26, !dbg !2475
  ret i8* %16, !dbg !2476
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2477 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2481, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8* %1, metadata !2482, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8* %2, metadata !2483, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i32 0, metadata !2425, metadata !DIExpression()) #26, !dbg !2485
  call void @llvm.dbg.value(metadata i8* %0, metadata !2426, metadata !DIExpression()) #26, !dbg !2485
  call void @llvm.dbg.value(metadata i8* %1, metadata !2427, metadata !DIExpression()) #26, !dbg !2485
  call void @llvm.dbg.value(metadata i8* %2, metadata !2428, metadata !DIExpression()) #26, !dbg !2485
  call void @llvm.dbg.value(metadata i32 0, metadata !2430, metadata !DIExpression()) #26, !dbg !2487
  call void @llvm.dbg.value(metadata i8* %0, metadata !2435, metadata !DIExpression()) #26, !dbg !2487
  call void @llvm.dbg.value(metadata i8* %1, metadata !2436, metadata !DIExpression()) #26, !dbg !2487
  call void @llvm.dbg.value(metadata i8* %2, metadata !2437, metadata !DIExpression()) #26, !dbg !2487
  call void @llvm.dbg.value(metadata i64 -1, metadata !2438, metadata !DIExpression()) #26, !dbg !2487
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2489
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2489
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2439, metadata !DIExpression()) #26, !dbg !2490
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #26, !dbg !2491, !tbaa.struct !2315
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1184, metadata !DIExpression()) #26, !dbg !2492
  call void @llvm.dbg.value(metadata i8* %0, metadata !1185, metadata !DIExpression()) #26, !dbg !2492
  call void @llvm.dbg.value(metadata i8* %1, metadata !1186, metadata !DIExpression()) #26, !dbg !2492
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1184, metadata !DIExpression()) #26, !dbg !2492
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2494
  store i32 10, i32* %6, align 8, !dbg !2495, !tbaa !1125
  %7 = icmp ne i8* %0, null, !dbg !2496
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2497
  br i1 %9, label %11, label %10, !dbg !2497

10:                                               ; preds = %3
  tail call void @abort() #28, !dbg !2498
  unreachable, !dbg !2498

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2499
  store i8* %0, i8** %12, align 8, !dbg !2500, !tbaa !1199
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2501
  store i8* %1, i8** %13, align 8, !dbg !2502, !tbaa !1202
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #26, !dbg !2503
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2504
  ret i8* %14, !dbg !2505
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2506 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2510, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8* %1, metadata !2511, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8* %2, metadata !2512, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i64 %3, metadata !2513, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i32 0, metadata !2430, metadata !DIExpression()) #26, !dbg !2515
  call void @llvm.dbg.value(metadata i8* %0, metadata !2435, metadata !DIExpression()) #26, !dbg !2515
  call void @llvm.dbg.value(metadata i8* %1, metadata !2436, metadata !DIExpression()) #26, !dbg !2515
  call void @llvm.dbg.value(metadata i8* %2, metadata !2437, metadata !DIExpression()) #26, !dbg !2515
  call void @llvm.dbg.value(metadata i64 %3, metadata !2438, metadata !DIExpression()) #26, !dbg !2515
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2517
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2517
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2439, metadata !DIExpression()) #26, !dbg !2518
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #26, !dbg !2519, !tbaa.struct !2315
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1184, metadata !DIExpression()) #26, !dbg !2520
  call void @llvm.dbg.value(metadata i8* %0, metadata !1185, metadata !DIExpression()) #26, !dbg !2520
  call void @llvm.dbg.value(metadata i8* %1, metadata !1186, metadata !DIExpression()) #26, !dbg !2520
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1184, metadata !DIExpression()) #26, !dbg !2520
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2522
  store i32 10, i32* %7, align 8, !dbg !2523, !tbaa !1125
  %8 = icmp ne i8* %0, null, !dbg !2524
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2525
  br i1 %10, label %12, label %11, !dbg !2525

11:                                               ; preds = %4
  tail call void @abort() #28, !dbg !2526
  unreachable, !dbg !2526

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2527
  store i8* %0, i8** %13, align 8, !dbg !2528, !tbaa !1199
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2529
  store i8* %1, i8** %14, align 8, !dbg !2530, !tbaa !1202
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #26, !dbg !2531
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2532
  ret i8* %15, !dbg !2533
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2534 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2538, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i8* %1, metadata !2539, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i64 %2, metadata !2540, metadata !DIExpression()), !dbg !2541
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2542
  ret i8* %4, !dbg !2543
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2544 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2548, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i64 %1, metadata !2549, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i32 0, metadata !2538, metadata !DIExpression()) #26, !dbg !2551
  call void @llvm.dbg.value(metadata i8* %0, metadata !2539, metadata !DIExpression()) #26, !dbg !2551
  call void @llvm.dbg.value(metadata i64 %1, metadata !2540, metadata !DIExpression()) #26, !dbg !2551
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #26, !dbg !2553
  ret i8* %3, !dbg !2554
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2555 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2559, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8* %1, metadata !2560, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i32 %0, metadata !2538, metadata !DIExpression()) #26, !dbg !2562
  call void @llvm.dbg.value(metadata i8* %1, metadata !2539, metadata !DIExpression()) #26, !dbg !2562
  call void @llvm.dbg.value(metadata i64 -1, metadata !2540, metadata !DIExpression()) #26, !dbg !2562
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #26, !dbg !2564
  ret i8* %3, !dbg !2565
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2566 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2570, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 0, metadata !2559, metadata !DIExpression()) #26, !dbg !2572
  call void @llvm.dbg.value(metadata i8* %0, metadata !2560, metadata !DIExpression()) #26, !dbg !2572
  call void @llvm.dbg.value(metadata i32 0, metadata !2538, metadata !DIExpression()) #26, !dbg !2574
  call void @llvm.dbg.value(metadata i8* %0, metadata !2539, metadata !DIExpression()) #26, !dbg !2574
  call void @llvm.dbg.value(metadata i64 -1, metadata !2540, metadata !DIExpression()) #26, !dbg !2574
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #26, !dbg !2576
  ret i8* %2, !dbg !2577
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2578 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2618, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i8* %1, metadata !2619, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i8* %2, metadata !2620, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i8* %3, metadata !2621, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i8** %4, metadata !2622, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i64 %5, metadata !2623, metadata !DIExpression()), !dbg !2624
  %7 = icmp eq i8* %1, null, !dbg !2625
  br i1 %7, label %10, label %8, !dbg !2627

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #26, !dbg !2628
  br label %12, !dbg !2628

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.74, i64 0, i64 0), i8* %2, i8* %3) #26, !dbg !2629
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.75, i64 0, i64 0), i32 5) #26, !dbg !2630
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #26, !dbg !2630
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.76, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2631
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.77, i64 0, i64 0), i32 5) #26, !dbg !2632
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.78, i64 0, i64 0)) #26, !dbg !2632
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.76, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2633
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
  ], !dbg !2634

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.79, i64 0, i64 0), i32 5) #26, !dbg !2635
  %21 = load i8*, i8** %4, align 8, !dbg !2635, !tbaa !649
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #26, !dbg !2635
  br label %147, !dbg !2637

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.80, i64 0, i64 0), i32 5) #26, !dbg !2638
  %25 = load i8*, i8** %4, align 8, !dbg !2638, !tbaa !649
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2638
  %27 = load i8*, i8** %26, align 8, !dbg !2638, !tbaa !649
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #26, !dbg !2638
  br label %147, !dbg !2639

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.81, i64 0, i64 0), i32 5) #26, !dbg !2640
  %31 = load i8*, i8** %4, align 8, !dbg !2640, !tbaa !649
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2640
  %33 = load i8*, i8** %32, align 8, !dbg !2640, !tbaa !649
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2640
  %35 = load i8*, i8** %34, align 8, !dbg !2640, !tbaa !649
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #26, !dbg !2640
  br label %147, !dbg !2641

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.82, i64 0, i64 0), i32 5) #26, !dbg !2642
  %39 = load i8*, i8** %4, align 8, !dbg !2642, !tbaa !649
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2642
  %41 = load i8*, i8** %40, align 8, !dbg !2642, !tbaa !649
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2642
  %43 = load i8*, i8** %42, align 8, !dbg !2642, !tbaa !649
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2642
  %45 = load i8*, i8** %44, align 8, !dbg !2642, !tbaa !649
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #26, !dbg !2642
  br label %147, !dbg !2643

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.83, i64 0, i64 0), i32 5) #26, !dbg !2644
  %49 = load i8*, i8** %4, align 8, !dbg !2644, !tbaa !649
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2644
  %51 = load i8*, i8** %50, align 8, !dbg !2644, !tbaa !649
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2644
  %53 = load i8*, i8** %52, align 8, !dbg !2644, !tbaa !649
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2644
  %55 = load i8*, i8** %54, align 8, !dbg !2644, !tbaa !649
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2644
  %57 = load i8*, i8** %56, align 8, !dbg !2644, !tbaa !649
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #26, !dbg !2644
  br label %147, !dbg !2645

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.84, i64 0, i64 0), i32 5) #26, !dbg !2646
  %61 = load i8*, i8** %4, align 8, !dbg !2646, !tbaa !649
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2646
  %63 = load i8*, i8** %62, align 8, !dbg !2646, !tbaa !649
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2646
  %65 = load i8*, i8** %64, align 8, !dbg !2646, !tbaa !649
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2646
  %67 = load i8*, i8** %66, align 8, !dbg !2646, !tbaa !649
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2646
  %69 = load i8*, i8** %68, align 8, !dbg !2646, !tbaa !649
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2646
  %71 = load i8*, i8** %70, align 8, !dbg !2646, !tbaa !649
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #26, !dbg !2646
  br label %147, !dbg !2647

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.85, i64 0, i64 0), i32 5) #26, !dbg !2648
  %75 = load i8*, i8** %4, align 8, !dbg !2648, !tbaa !649
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2648
  %77 = load i8*, i8** %76, align 8, !dbg !2648, !tbaa !649
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2648
  %79 = load i8*, i8** %78, align 8, !dbg !2648, !tbaa !649
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2648
  %81 = load i8*, i8** %80, align 8, !dbg !2648, !tbaa !649
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2648
  %83 = load i8*, i8** %82, align 8, !dbg !2648, !tbaa !649
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2648
  %85 = load i8*, i8** %84, align 8, !dbg !2648, !tbaa !649
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2648
  %87 = load i8*, i8** %86, align 8, !dbg !2648, !tbaa !649
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #26, !dbg !2648
  br label %147, !dbg !2649

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.86, i64 0, i64 0), i32 5) #26, !dbg !2650
  %91 = load i8*, i8** %4, align 8, !dbg !2650, !tbaa !649
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2650
  %93 = load i8*, i8** %92, align 8, !dbg !2650, !tbaa !649
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2650
  %95 = load i8*, i8** %94, align 8, !dbg !2650, !tbaa !649
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2650
  %97 = load i8*, i8** %96, align 8, !dbg !2650, !tbaa !649
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2650
  %99 = load i8*, i8** %98, align 8, !dbg !2650, !tbaa !649
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2650
  %101 = load i8*, i8** %100, align 8, !dbg !2650, !tbaa !649
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2650
  %103 = load i8*, i8** %102, align 8, !dbg !2650, !tbaa !649
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2650
  %105 = load i8*, i8** %104, align 8, !dbg !2650, !tbaa !649
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #26, !dbg !2650
  br label %147, !dbg !2651

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.87, i64 0, i64 0), i32 5) #26, !dbg !2652
  %109 = load i8*, i8** %4, align 8, !dbg !2652, !tbaa !649
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2652
  %111 = load i8*, i8** %110, align 8, !dbg !2652, !tbaa !649
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2652
  %113 = load i8*, i8** %112, align 8, !dbg !2652, !tbaa !649
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2652
  %115 = load i8*, i8** %114, align 8, !dbg !2652, !tbaa !649
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2652
  %117 = load i8*, i8** %116, align 8, !dbg !2652, !tbaa !649
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2652
  %119 = load i8*, i8** %118, align 8, !dbg !2652, !tbaa !649
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2652
  %121 = load i8*, i8** %120, align 8, !dbg !2652, !tbaa !649
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2652
  %123 = load i8*, i8** %122, align 8, !dbg !2652, !tbaa !649
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2652
  %125 = load i8*, i8** %124, align 8, !dbg !2652, !tbaa !649
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #26, !dbg !2652
  br label %147, !dbg !2653

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.88, i64 0, i64 0), i32 5) #26, !dbg !2654
  %129 = load i8*, i8** %4, align 8, !dbg !2654, !tbaa !649
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2654
  %131 = load i8*, i8** %130, align 8, !dbg !2654, !tbaa !649
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2654
  %133 = load i8*, i8** %132, align 8, !dbg !2654, !tbaa !649
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2654
  %135 = load i8*, i8** %134, align 8, !dbg !2654, !tbaa !649
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2654
  %137 = load i8*, i8** %136, align 8, !dbg !2654, !tbaa !649
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2654
  %139 = load i8*, i8** %138, align 8, !dbg !2654, !tbaa !649
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2654
  %141 = load i8*, i8** %140, align 8, !dbg !2654, !tbaa !649
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2654
  %143 = load i8*, i8** %142, align 8, !dbg !2654, !tbaa !649
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2654
  %145 = load i8*, i8** %144, align 8, !dbg !2654, !tbaa !649
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #26, !dbg !2654
  br label %147, !dbg !2655

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2656
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !2657 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2661, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i8* %1, metadata !2662, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i8* %2, metadata !2663, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i8* %3, metadata !2664, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i8** %4, metadata !2665, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i64 0, metadata !2666, metadata !DIExpression()), !dbg !2667
  br label %6, !dbg !2668

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2670
  call void @llvm.dbg.value(metadata i64 %7, metadata !2666, metadata !DIExpression()), !dbg !2667
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2671
  %9 = load i8*, i8** %8, align 8, !dbg !2671, !tbaa !649
  %10 = icmp eq i8* %9, null, !dbg !2673
  %11 = add i64 %7, 1, !dbg !2674
  call void @llvm.dbg.value(metadata i64 %11, metadata !2666, metadata !DIExpression()), !dbg !2667
  br i1 %10, label %12, label %6, !dbg !2673, !llvm.loop !2675

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2677
  ret void, !dbg !2678
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !2679 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2690, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i8* %1, metadata !2691, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i8* %2, metadata !2692, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i8* %3, metadata !2693, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2694, metadata !DIExpression()), !dbg !2698
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2699
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #26, !dbg !2699
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2696, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i64 0, metadata !2695, metadata !DIExpression()), !dbg !2698
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !2695, metadata !DIExpression()), !dbg !2698
  %11 = load i32, i32* %8, align 8, !dbg !2701
  %12 = icmp ult i32 %11, 41, !dbg !2701
  br i1 %12, label %13, label %18, !dbg !2701

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2701
  %15 = zext i32 %11 to i64, !dbg !2701
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2701
  %17 = add nuw nsw i32 %11, 8, !dbg !2701
  store i32 %17, i32* %8, align 8, !dbg !2701
  br label %21, !dbg !2701

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2701
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2701
  store i8* %20, i8** %9, align 8, !dbg !2701
  br label %21, !dbg !2701

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2701
  %25 = load i8*, i8** %24, align 8, !dbg !2701
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2704
  store i8* %25, i8** %26, align 16, !dbg !2705, !tbaa !649
  %27 = icmp eq i8* %25, null, !dbg !2706
  br i1 %27, label %30, label %28, !dbg !2707

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2695, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i64 1, metadata !2695, metadata !DIExpression()), !dbg !2698
  %29 = icmp ult i32 %22, 41, !dbg !2701
  br i1 %29, label %35, label %32, !dbg !2701

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2708
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2709
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #26, !dbg !2710
  ret void, !dbg !2710

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2701
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2701
  store i8* %34, i8** %9, align 8, !dbg !2701
  br label %40, !dbg !2701

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2701
  %37 = zext i32 %22 to i64, !dbg !2701
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2701
  %39 = add nuw nsw i32 %22, 8, !dbg !2701
  store i32 %39, i32* %8, align 8, !dbg !2701
  br label %40, !dbg !2701

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2701
  %44 = load i8*, i8** %43, align 8, !dbg !2701
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2704
  store i8* %44, i8** %45, align 8, !dbg !2705, !tbaa !649
  %46 = icmp eq i8* %44, null, !dbg !2706
  br i1 %46, label %30, label %47, !dbg !2707

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2695, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i64 2, metadata !2695, metadata !DIExpression()), !dbg !2698
  %48 = icmp ult i32 %41, 41, !dbg !2701
  br i1 %48, label %52, label %49, !dbg !2701

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2701
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2701
  store i8* %51, i8** %9, align 8, !dbg !2701
  br label %57, !dbg !2701

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2701
  %54 = zext i32 %41 to i64, !dbg !2701
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2701
  %56 = add nuw nsw i32 %41, 8, !dbg !2701
  store i32 %56, i32* %8, align 8, !dbg !2701
  br label %57, !dbg !2701

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2701
  %61 = load i8*, i8** %60, align 8, !dbg !2701
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2704
  store i8* %61, i8** %62, align 16, !dbg !2705, !tbaa !649
  %63 = icmp eq i8* %61, null, !dbg !2706
  br i1 %63, label %30, label %64, !dbg !2707

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2695, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i64 3, metadata !2695, metadata !DIExpression()), !dbg !2698
  %65 = icmp ult i32 %58, 41, !dbg !2701
  br i1 %65, label %69, label %66, !dbg !2701

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2701
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2701
  store i8* %68, i8** %9, align 8, !dbg !2701
  br label %74, !dbg !2701

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2701
  %71 = zext i32 %58 to i64, !dbg !2701
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2701
  %73 = add nuw nsw i32 %58, 8, !dbg !2701
  store i32 %73, i32* %8, align 8, !dbg !2701
  br label %74, !dbg !2701

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2701
  %78 = load i8*, i8** %77, align 8, !dbg !2701
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2704
  store i8* %78, i8** %79, align 8, !dbg !2705, !tbaa !649
  %80 = icmp eq i8* %78, null, !dbg !2706
  br i1 %80, label %30, label %81, !dbg !2707

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2695, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i64 4, metadata !2695, metadata !DIExpression()), !dbg !2698
  %82 = icmp ult i32 %75, 41, !dbg !2701
  br i1 %82, label %86, label %83, !dbg !2701

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2701
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2701
  store i8* %85, i8** %9, align 8, !dbg !2701
  br label %91, !dbg !2701

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2701
  %88 = zext i32 %75 to i64, !dbg !2701
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2701
  %90 = add nuw nsw i32 %75, 8, !dbg !2701
  store i32 %90, i32* %8, align 8, !dbg !2701
  br label %91, !dbg !2701

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2701
  %95 = load i8*, i8** %94, align 8, !dbg !2701
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2704
  store i8* %95, i8** %96, align 16, !dbg !2705, !tbaa !649
  %97 = icmp eq i8* %95, null, !dbg !2706
  br i1 %97, label %30, label %98, !dbg !2707

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2695, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i64 5, metadata !2695, metadata !DIExpression()), !dbg !2698
  %99 = icmp ult i32 %92, 41, !dbg !2701
  br i1 %99, label %103, label %100, !dbg !2701

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2701
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2701
  store i8* %102, i8** %9, align 8, !dbg !2701
  br label %108, !dbg !2701

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2701
  %105 = zext i32 %92 to i64, !dbg !2701
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2701
  %107 = add nuw nsw i32 %92, 8, !dbg !2701
  store i32 %107, i32* %8, align 8, !dbg !2701
  br label %108, !dbg !2701

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2701
  %111 = load i8*, i8** %110, align 8, !dbg !2701
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2704
  store i8* %111, i8** %112, align 8, !dbg !2705, !tbaa !649
  %113 = icmp eq i8* %111, null, !dbg !2706
  br i1 %113, label %30, label %114, !dbg !2707

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2695, metadata !DIExpression()), !dbg !2698
  %115 = load i8*, i8** %9, align 8, !dbg !2701
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2701
  store i8* %116, i8** %9, align 8, !dbg !2701
  %117 = bitcast i8* %115 to i8**, !dbg !2701
  %118 = load i8*, i8** %117, align 8, !dbg !2701
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2704
  store i8* %118, i8** %119, align 16, !dbg !2705, !tbaa !649
  %120 = icmp eq i8* %118, null, !dbg !2706
  br i1 %120, label %30, label %121, !dbg !2707

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2695, metadata !DIExpression()), !dbg !2698
  %122 = load i8*, i8** %9, align 8, !dbg !2701
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2701
  store i8* %123, i8** %9, align 8, !dbg !2701
  %124 = bitcast i8* %122 to i8**, !dbg !2701
  %125 = load i8*, i8** %124, align 8, !dbg !2701
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2704
  store i8* %125, i8** %126, align 8, !dbg !2705, !tbaa !649
  %127 = icmp eq i8* %125, null, !dbg !2706
  br i1 %127, label %30, label %128, !dbg !2707

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2695, metadata !DIExpression()), !dbg !2698
  %129 = load i8*, i8** %9, align 8, !dbg !2701
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2701
  store i8* %130, i8** %9, align 8, !dbg !2701
  %131 = bitcast i8* %129 to i8**, !dbg !2701
  %132 = load i8*, i8** %131, align 8, !dbg !2701
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2704
  store i8* %132, i8** %133, align 16, !dbg !2705, !tbaa !649
  %134 = icmp eq i8* %132, null, !dbg !2706
  br i1 %134, label %30, label %135, !dbg !2707

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2695, metadata !DIExpression()), !dbg !2698
  %136 = load i8*, i8** %9, align 8, !dbg !2701
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2701
  store i8* %137, i8** %9, align 8, !dbg !2701
  %138 = bitcast i8* %136 to i8**, !dbg !2701
  %139 = load i8*, i8** %138, align 8, !dbg !2701
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2704
  store i8* %139, i8** %140, align 8, !dbg !2705, !tbaa !649
  %141 = icmp eq i8* %139, null, !dbg !2706
  %142 = select i1 %141, i64 9, i64 10, !dbg !2707
  br label %30, !dbg !2707
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !2711 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2715, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i8* %1, metadata !2716, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i8* %2, metadata !2717, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i8* %3, metadata !2718, metadata !DIExpression()), !dbg !2724
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2725
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #26, !dbg !2725
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2719, metadata !DIExpression()), !dbg !2726
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2727
  call void @llvm.va_start(i8* nonnull %6), !dbg !2727
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2728
  call void @llvm.va_end(i8* nonnull %6), !dbg !2729
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #26, !dbg !2730
  ret void, !dbg !2730
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #13

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !2731 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2732, !tbaa !649
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.76, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2732
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.91, i64 0, i64 0), i32 5) #26, !dbg !2733
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.92, i64 0, i64 0)) #26, !dbg !2733
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.93, i64 0, i64 0), i32 5) #26, !dbg !2734
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.94, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.95, i64 0, i64 0)) #26, !dbg !2734
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.96, i64 0, i64 0), i32 5) #26, !dbg !2735
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.97, i64 0, i64 0)) #26, !dbg !2735
  ret void, !dbg !2736
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #22 !dbg !2737 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2741, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i64 %1, metadata !2742, metadata !DIExpression()), !dbg !2743
  %3 = udiv i64 9223372036854775807, %1, !dbg !2744
  %4 = icmp ult i64 %3, %0, !dbg !2744
  br i1 %4, label %5, label %6, !dbg !2746

5:                                                ; preds = %2
  tail call void @xalloc_die() #28, !dbg !2747
  unreachable, !dbg !2747

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2748
  call void @llvm.dbg.value(metadata i64 %7, metadata !2749, metadata !DIExpression()) #26, !dbg !2755
  %8 = tail call noalias i8* @malloc(i64 %7) #26, !dbg !2757
  call void @llvm.dbg.value(metadata i8* %8, metadata !2754, metadata !DIExpression()) #26, !dbg !2755
  %9 = icmp eq i8* %8, null, !dbg !2758
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !2760
  br i1 %11, label %12, label %13, !dbg !2760

12:                                               ; preds = %6
  tail call void @xalloc_die() #28, !dbg !2761
  unreachable, !dbg !2761

13:                                               ; preds = %6
  ret i8* %8, !dbg !2762
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !2750 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2749, metadata !DIExpression()), !dbg !2763
  %2 = tail call noalias i8* @malloc(i64 %0) #26, !dbg !2764
  call void @llvm.dbg.value(metadata i8* %2, metadata !2754, metadata !DIExpression()), !dbg !2763
  %3 = icmp eq i8* %2, null, !dbg !2765
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2766
  br i1 %5, label %6, label %7, !dbg !2766

6:                                                ; preds = %1
  tail call void @xalloc_die() #28, !dbg !2767
  unreachable, !dbg !2767

7:                                                ; preds = %1
  ret i8* %2, !dbg !2768
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #22 !dbg !2769 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2773, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i64 %1, metadata !2774, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i64 %2, metadata !2775, metadata !DIExpression()), !dbg !2776
  %4 = udiv i64 9223372036854775807, %2, !dbg !2777
  %5 = icmp ult i64 %4, %1, !dbg !2777
  br i1 %5, label %6, label %7, !dbg !2779

6:                                                ; preds = %3
  tail call void @xalloc_die() #28, !dbg !2780
  unreachable, !dbg !2780

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2781
  call void @llvm.dbg.value(metadata i8* %0, metadata !2782, metadata !DIExpression()) #26, !dbg !2788
  call void @llvm.dbg.value(metadata i64 %8, metadata !2787, metadata !DIExpression()) #26, !dbg !2788
  %9 = icmp eq i64 %8, 0, !dbg !2790
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !2792
  br i1 %11, label %12, label %13, !dbg !2792

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #26, !dbg !2793
  br label %19, !dbg !2795

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #26, !dbg !2796
  call void @llvm.dbg.value(metadata i8* %14, metadata !2782, metadata !DIExpression()) #26, !dbg !2788
  %15 = icmp eq i8* %14, null, !dbg !2797
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !2799
  br i1 %17, label %18, label %19, !dbg !2799

18:                                               ; preds = %13
  tail call void @xalloc_die() #28, !dbg !2800
  unreachable, !dbg !2800

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2788
  ret i8* %20, !dbg !2801
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2783 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2782, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata i64 %1, metadata !2787, metadata !DIExpression()), !dbg !2802
  %3 = icmp eq i64 %1, 0, !dbg !2803
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !2804
  br i1 %5, label %6, label %7, !dbg !2804

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #26, !dbg !2805
  br label %13, !dbg !2806

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #26, !dbg !2807
  call void @llvm.dbg.value(metadata i8* %8, metadata !2782, metadata !DIExpression()), !dbg !2802
  %9 = icmp eq i8* %8, null, !dbg !2808
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !2809
  br i1 %11, label %12, label %13, !dbg !2809

12:                                               ; preds = %7
  tail call void @xalloc_die() #28, !dbg !2810
  unreachable, !dbg !2810

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2802
  ret i8* %14, !dbg !2811
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #22 !dbg !189 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !194, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i64* %1, metadata !195, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i64 %2, metadata !196, metadata !DIExpression()), !dbg !2812
  %4 = load i64, i64* %1, align 8, !dbg !2813, !tbaa !2024
  call void @llvm.dbg.value(metadata i64 %4, metadata !197, metadata !DIExpression()), !dbg !2812
  %5 = icmp eq i8* %0, null, !dbg !2814
  br i1 %5, label %6, label %20, !dbg !2816

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2817
  br i1 %7, label %8, label %13, !dbg !2820

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2821
  call void @llvm.dbg.value(metadata i64 %9, metadata !197, metadata !DIExpression()), !dbg !2812
  %10 = icmp ugt i64 %2, 128, !dbg !2823
  %11 = zext i1 %10 to i64, !dbg !2823
  %12 = add nuw nsw i64 %9, %11, !dbg !2824
  call void @llvm.dbg.value(metadata i64 %12, metadata !197, metadata !DIExpression()), !dbg !2812
  br label %13, !dbg !2825

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2812
  call void @llvm.dbg.value(metadata i64 %14, metadata !197, metadata !DIExpression()), !dbg !2812
  %15 = udiv i64 9223372036854775807, %2, !dbg !2826
  %16 = icmp ult i64 %15, %14, !dbg !2826
  br i1 %16, label %19, label %17, !dbg !2828

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !197, metadata !DIExpression()), !dbg !2812
  store i64 %14, i64* %1, align 8, !dbg !2829, !tbaa !2024
  %18 = mul i64 %14, %2, !dbg !2830
  call void @llvm.dbg.value(metadata i8* %0, metadata !2782, metadata !DIExpression()) #26, !dbg !2831
  call void @llvm.dbg.value(metadata i64 %28, metadata !2787, metadata !DIExpression()) #26, !dbg !2831
  br label %31, !dbg !2833

19:                                               ; preds = %13
  tail call void @xalloc_die() #28, !dbg !2834
  unreachable, !dbg !2834

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !2835
  %22 = icmp ugt i64 %21, %4, !dbg !2838
  br i1 %22, label %24, label %23, !dbg !2839

23:                                               ; preds = %20
  tail call void @xalloc_die() #28, !dbg !2840
  unreachable, !dbg !2840

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !2841
  %26 = add nuw i64 %4, 1, !dbg !2842
  %27 = add i64 %26, %25, !dbg !2843
  call void @llvm.dbg.value(metadata i64 %27, metadata !197, metadata !DIExpression()), !dbg !2812
  store i64 %27, i64* %1, align 8, !dbg !2829, !tbaa !2024
  %28 = mul i64 %27, %2, !dbg !2830
  call void @llvm.dbg.value(metadata i8* %0, metadata !2782, metadata !DIExpression()) #26, !dbg !2831
  call void @llvm.dbg.value(metadata i64 %28, metadata !2787, metadata !DIExpression()) #26, !dbg !2831
  %29 = icmp eq i64 %28, 0, !dbg !2844
  br i1 %29, label %30, label %31, !dbg !2833

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #26, !dbg !2845
  br label %38, !dbg !2846

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #26, !dbg !2847
  call void @llvm.dbg.value(metadata i8* %33, metadata !2782, metadata !DIExpression()) #26, !dbg !2831
  %34 = icmp eq i8* %33, null, !dbg !2848
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !2849
  br i1 %36, label %37, label %38, !dbg !2849

37:                                               ; preds = %31
  tail call void @xalloc_die() #28, !dbg !2850
  unreachable, !dbg !2850

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !2831
  ret i8* %39, !dbg !2851
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #22 !dbg !2852 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2854, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %0, metadata !2749, metadata !DIExpression()) #26, !dbg !2856
  %2 = tail call noalias i8* @malloc(i64 %0) #26, !dbg !2858
  call void @llvm.dbg.value(metadata i8* %2, metadata !2754, metadata !DIExpression()) #26, !dbg !2856
  %3 = icmp eq i8* %2, null, !dbg !2859
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2860
  br i1 %5, label %6, label %7, !dbg !2860

6:                                                ; preds = %1
  tail call void @xalloc_die() #28, !dbg !2861
  unreachable, !dbg !2861

7:                                                ; preds = %1
  ret i8* %2, !dbg !2862
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !2863 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2867, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64* %1, metadata !2868, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8* %0, metadata !194, metadata !DIExpression()) #26, !dbg !2870
  call void @llvm.dbg.value(metadata i64* %1, metadata !195, metadata !DIExpression()) #26, !dbg !2870
  call void @llvm.dbg.value(metadata i64 1, metadata !196, metadata !DIExpression()) #26, !dbg !2870
  %3 = load i64, i64* %1, align 8, !dbg !2872, !tbaa !2024
  call void @llvm.dbg.value(metadata i64 %3, metadata !197, metadata !DIExpression()) #26, !dbg !2870
  %4 = icmp eq i8* %0, null, !dbg !2873
  br i1 %4, label %5, label %10, !dbg !2874

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2875
  br i1 %6, label %17, label %7, !dbg !2876

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !197, metadata !DIExpression()) #26, !dbg !2870
  %8 = icmp slt i64 %3, 0, !dbg !2877
  br i1 %8, label %9, label %17, !dbg !2878

9:                                                ; preds = %7
  tail call void @xalloc_die() #28, !dbg !2879
  unreachable, !dbg !2879

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !2880
  br i1 %11, label %13, label %12, !dbg !2881

12:                                               ; preds = %10
  tail call void @xalloc_die() #28, !dbg !2882
  unreachable, !dbg !2882

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !2883
  %15 = add nuw nsw i64 %3, 1, !dbg !2884
  %16 = add nuw nsw i64 %15, %14, !dbg !2885
  call void @llvm.dbg.value(metadata i64 %16, metadata !197, metadata !DIExpression()) #26, !dbg !2870
  call void @llvm.dbg.value(metadata i8* %0, metadata !2782, metadata !DIExpression()) #26, !dbg !2886
  call void @llvm.dbg.value(metadata i64 %16, metadata !2787, metadata !DIExpression()) #26, !dbg !2886
  br label %17, !dbg !2888

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !2889
  store i64 %18, i64* %1, align 8, !dbg !2889, !tbaa !2024
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #26, !dbg !2890
  call void @llvm.dbg.value(metadata i8* %19, metadata !2782, metadata !DIExpression()) #26, !dbg !2886
  %20 = icmp eq i8* %19, null, !dbg !2891
  br i1 %20, label %21, label %22, !dbg !2892

21:                                               ; preds = %17
  tail call void @xalloc_die() #28, !dbg !2893
  unreachable, !dbg !2893

22:                                               ; preds = %17
  ret i8* %19, !dbg !2894
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !2895 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2897, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i64 %0, metadata !2899, metadata !DIExpression()) #26, !dbg !2904
  call void @llvm.dbg.value(metadata i64 1, metadata !2902, metadata !DIExpression()) #26, !dbg !2904
  %2 = icmp slt i64 %0, 0, !dbg !2906
  br i1 %2, label %6, label %3, !dbg !2908

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #26, !dbg !2909
  call void @llvm.dbg.value(metadata i8* %4, metadata !2903, metadata !DIExpression()) #26, !dbg !2904
  %5 = icmp eq i8* %4, null, !dbg !2910
  br i1 %5, label %6, label %7, !dbg !2911

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #28, !dbg !2912
  unreachable, !dbg !2912

7:                                                ; preds = %3
  ret i8* %4, !dbg !2913
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !2900 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2899, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i64 %1, metadata !2902, metadata !DIExpression()), !dbg !2914
  %3 = udiv i64 9223372036854775807, %1, !dbg !2915
  %4 = icmp ult i64 %3, %0, !dbg !2915
  br i1 %4, label %8, label %5, !dbg !2916

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #26, !dbg !2917
  call void @llvm.dbg.value(metadata i8* %6, metadata !2903, metadata !DIExpression()), !dbg !2914
  %7 = icmp eq i8* %6, null, !dbg !2918
  br i1 %7, label %8, label %9, !dbg !2919

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #28, !dbg !2920
  unreachable, !dbg !2920

9:                                                ; preds = %5
  ret i8* %6, !dbg !2921
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2922 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2928, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %1, metadata !2929, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %1, metadata !2749, metadata !DIExpression()) #26, !dbg !2931
  %3 = tail call noalias i8* @malloc(i64 %1) #26, !dbg !2933
  call void @llvm.dbg.value(metadata i8* %3, metadata !2754, metadata !DIExpression()) #26, !dbg !2931
  %4 = icmp eq i8* %3, null, !dbg !2934
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !2935
  br i1 %6, label %7, label %8, !dbg !2935

7:                                                ; preds = %2
  tail call void @xalloc_die() #28, !dbg !2936
  unreachable, !dbg !2936

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2937, metadata !DIExpression()) #26, !dbg !2946
  call void @llvm.dbg.value(metadata i8* %0, metadata !2944, metadata !DIExpression()) #26, !dbg !2946
  call void @llvm.dbg.value(metadata i64 %1, metadata !2945, metadata !DIExpression()) #26, !dbg !2946
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #26, !dbg !2948
  ret i8* %3, !dbg !2949
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !2950 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2952, metadata !DIExpression()), !dbg !2953
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #27, !dbg !2954
  %3 = add i64 %2, 1, !dbg !2955
  call void @llvm.dbg.value(metadata i8* %0, metadata !2928, metadata !DIExpression()) #26, !dbg !2956
  call void @llvm.dbg.value(metadata i64 %3, metadata !2929, metadata !DIExpression()) #26, !dbg !2956
  call void @llvm.dbg.value(metadata i64 %3, metadata !2749, metadata !DIExpression()) #26, !dbg !2958
  %4 = tail call noalias i8* @malloc(i64 %3) #26, !dbg !2960
  call void @llvm.dbg.value(metadata i8* %4, metadata !2754, metadata !DIExpression()) #26, !dbg !2958
  %5 = icmp eq i8* %4, null, !dbg !2961
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !2962
  br i1 %7, label %8, label %9, !dbg !2962

8:                                                ; preds = %1
  tail call void @xalloc_die() #28, !dbg !2963
  unreachable, !dbg !2963

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !2937, metadata !DIExpression()) #26, !dbg !2964
  call void @llvm.dbg.value(metadata i8* %0, metadata !2944, metadata !DIExpression()) #26, !dbg !2964
  call void @llvm.dbg.value(metadata i64 %3, metadata !2945, metadata !DIExpression()) #26, !dbg !2964
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #26, !dbg !2966
  ret i8* %4, !dbg !2967
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !2968 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !2969, !tbaa !805
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.108, i64 0, i64 0), i32 5) #26, !dbg !2970
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i64 0, i64 0), i8* %2) #26, !dbg !2971
  tail call void @abort() #28, !dbg !2972
  unreachable, !dbg !2972
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xnanosleep(double %0) local_unnamed_addr #8 !dbg !2973 {
  %2 = alloca %struct.timespec, align 8
  call void @llvm.dbg.value(metadata double %0, metadata !2977, metadata !DIExpression()), !dbg !2985
  %3 = fcmp ult double %0, 0x43E0000000000000, !dbg !2986
  br i1 %3, label %4, label %6, !dbg !2988

4:                                                ; preds = %1
  %5 = tail call i32* @__errno_location() #30, !dbg !2989
  br label %11, !dbg !2988

6:                                                ; preds = %1, %6
  %7 = tail call i32 @pause() #26, !dbg !2993
  %8 = tail call i32* @__errno_location() #30, !dbg !2995
  %9 = load i32, i32* %8, align 4, !dbg !2995, !tbaa !805
  %10 = icmp eq i32 %9, 4, !dbg !2996
  br i1 %10, label %6, label %11, !dbg !2993, !llvm.loop !2997

11:                                               ; preds = %6, %4
  %12 = phi i32* [ %5, %4 ], [ %8, %6 ], !dbg !2989
  %13 = bitcast %struct.timespec* %2 to i8*, !dbg !3000
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #26, !dbg !3000
  call void @llvm.dbg.declare(metadata %struct.timespec* %2, metadata !2978, metadata !DIExpression()), !dbg !3001
  %14 = tail call { i64, i64 } @dtotimespec(double %0) #30, !dbg !3002
  %15 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i64 0, i32 0, !dbg !3002
  %16 = extractvalue { i64, i64 } %14, 0, !dbg !3002
  store i64 %16, i64* %15, align 8, !dbg !3002
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i64 0, i32 1, !dbg !3002
  %18 = extractvalue { i64, i64 } %14, 1, !dbg !3002
  store i64 %18, i64* %17, align 8, !dbg !3002
  store i32 0, i32* %12, align 4, !dbg !3003, !tbaa !805
  %19 = call i32 @rpl_nanosleep(%struct.timespec* nonnull %2, %struct.timespec* nonnull %2) #26, !dbg !3004
  %20 = icmp eq i32 %19, 0, !dbg !3006
  br i1 %20, label %26, label %21, !dbg !3007

21:                                               ; preds = %11, %23
  %22 = load i32, i32* %12, align 4, !dbg !3008, !tbaa !805
  switch i32 %22, label %26 [
    i32 4, label %23
    i32 0, label %23
  ], !dbg !3010

23:                                               ; preds = %21, %21
  store i32 0, i32* %12, align 4, !dbg !3003, !tbaa !805
  %24 = call i32 @rpl_nanosleep(%struct.timespec* nonnull %2, %struct.timespec* nonnull %2) #26, !dbg !3004
  %25 = icmp eq i32 %24, 0, !dbg !3006
  br i1 %25, label %26, label %21, !dbg !3007, !llvm.loop !3011

26:                                               ; preds = %21, %23, %11
  %27 = phi i32 [ 0, %11 ], [ 0, %23 ], [ -1, %21 ], !dbg !2985
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #26, !dbg !3014
  ret i32 %27, !dbg !3014
}

declare !dbg !3015 i32 @pause() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @xstrtod(i8* %0, i8** %1, double* nocapture %2, double (i8*, i8**)* nocapture %3) local_unnamed_addr #8 !dbg !3019 {
  %5 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3027, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i8** %1, metadata !3028, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata double* %2, metadata !3029, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata double (i8*, i8**)* %3, metadata !3030, metadata !DIExpression()), !dbg !3034
  %6 = bitcast i8** %5 to i8*, !dbg !3035
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #26, !dbg !3035
  call void @llvm.dbg.value(metadata i8 1, metadata !3033, metadata !DIExpression()), !dbg !3034
  %7 = tail call i32* @__errno_location() #30, !dbg !3036
  store i32 0, i32* %7, align 4, !dbg !3037, !tbaa !805
  call void @llvm.dbg.value(metadata i8** %5, metadata !3032, metadata !DIExpression(DW_OP_deref)), !dbg !3034
  %8 = call double %3(i8* %0, i8** nonnull %5) #26, !dbg !3038
  call void @llvm.dbg.value(metadata double %8, metadata !3031, metadata !DIExpression()), !dbg !3034
  %9 = load i8*, i8** %5, align 8, !dbg !3039, !tbaa !649
  call void @llvm.dbg.value(metadata i8* %9, metadata !3032, metadata !DIExpression()), !dbg !3034
  %10 = icmp eq i8* %9, %0, !dbg !3041
  br i1 %10, label %21, label %11, !dbg !3042

11:                                               ; preds = %4
  %12 = icmp eq i8** %1, null, !dbg !3043
  br i1 %12, label %13, label %16, !dbg !3044

13:                                               ; preds = %11
  %14 = load i8, i8* %9, align 1, !dbg !3045, !tbaa !830
  %15 = icmp eq i8 %14, 0, !dbg !3046
  br i1 %15, label %16, label %25, !dbg !3047

16:                                               ; preds = %13, %11
  %17 = fcmp une double %8, 0.000000e+00, !dbg !3048
  br i1 %17, label %18, label %21, !dbg !3051

18:                                               ; preds = %16
  %19 = load i32, i32* %7, align 4, !dbg !3052, !tbaa !805
  %20 = icmp ne i32 %19, 34, !dbg !3053
  br label %21, !dbg !3054

21:                                               ; preds = %18, %4, %16
  %22 = phi i1 [ true, %16 ], [ false, %4 ], [ %20, %18 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !3033, metadata !DIExpression()), !dbg !3034
  %23 = icmp eq i8** %1, null, !dbg !3055
  br i1 %23, label %25, label %24, !dbg !3057

24:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i8* %9, metadata !3032, metadata !DIExpression()), !dbg !3034
  store i8* %9, i8** %1, align 8, !dbg !3058, !tbaa !649
  br label %25, !dbg !3059

25:                                               ; preds = %13, %24, %21
  %26 = phi i1 [ %22, %24 ], [ %22, %21 ], [ false, %13 ]
  store double %8, double* %2, align 8, !dbg !3060, !tbaa !824
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #26, !dbg !3061
  ret i1 %26, !dbg !3062
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #24 !dbg !3063 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3065, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i64 %1, metadata !3066, metadata !DIExpression()), !dbg !3071
  %3 = icmp eq i64 %0, 0, !dbg !3072
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !3073
  br i1 %5, label %11, label %6, !dbg !3073

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3068, metadata !DIExpression()), !dbg !3074
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3075
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3075
  br i1 %8, label %9, label %11, !dbg !3077

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #30, !dbg !3078
  store i32 12, i32* %10, align 4, !dbg !3080, !tbaa !805
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3065, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i64 %12, metadata !3066, metadata !DIExpression()), !dbg !3071
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #26, !dbg !3081
  call void @llvm.dbg.value(metadata i8* %14, metadata !3067, metadata !DIExpression()), !dbg !3071
  br label %15, !dbg !3082

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3071
  ret i8* %16, !dbg !3083
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3084 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3100, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i8* %1, metadata !3101, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i64 %2, metadata !3102, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3103, metadata !DIExpression()), !dbg !3109
  %6 = bitcast i32* %5 to i8*, !dbg !3110
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #26, !dbg !3110
  %7 = icmp eq i32* %0, null, !dbg !3111
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3113
  call void @llvm.dbg.value(metadata i32* %8, metadata !3100, metadata !DIExpression()), !dbg !3109
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #26, !dbg !3114
  call void @llvm.dbg.value(metadata i64 %9, metadata !3104, metadata !DIExpression()), !dbg !3109
  %10 = icmp ugt i64 %9, -3, !dbg !3115
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !3116
  br i1 %12, label %13, label %18, !dbg !3116

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #26, !dbg !3117
  br i1 %14, label %18, label %15, !dbg !3118

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3119, !tbaa !830
  call void @llvm.dbg.value(metadata i8 %16, metadata !3106, metadata !DIExpression()), !dbg !3120
  %17 = zext i8 %16 to i32, !dbg !3121
  store i32 %17, i32* %8, align 4, !dbg !3122, !tbaa !805
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3109
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #26, !dbg !3123
  ret i64 %19, !dbg !3123
}

; Function Attrs: nounwind
declare !dbg !3124 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_nanosleep(%struct.timespec* nocapture nonnull readonly %0, %struct.timespec* %1) local_unnamed_addr #8 !dbg !3128 {
  %3 = alloca %struct.timespec, align 8
  call void @llvm.dbg.value(metadata %struct.timespec* %0, metadata !3139, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata %struct.timespec* %1, metadata !3140, metadata !DIExpression()), !dbg !3148
  %4 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 1, !dbg !3149
  %5 = load i64, i64* %4, align 8, !dbg !3149, !tbaa !3151
  %6 = icmp ugt i64 %5, 999999999, !dbg !3153
  br i1 %6, label %7, label %9, !dbg !3153

7:                                                ; preds = %2
  %8 = tail call i32* @__errno_location() #30, !dbg !3154
  store i32 22, i32* %8, align 4, !dbg !3156, !tbaa !805
  br label %33, !dbg !3157

9:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 2073600, metadata !3141, metadata !DIExpression()), !dbg !3158
  %10 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 0, !dbg !3159
  %11 = load i64, i64* %10, align 8, !dbg !3159, !tbaa !3160
  call void @llvm.dbg.value(metadata i64 %11, metadata !3144, metadata !DIExpression()), !dbg !3158
  %12 = bitcast %struct.timespec* %3 to i8*, !dbg !3161
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %12) #26, !dbg !3161
  call void @llvm.dbg.declare(metadata %struct.timespec* %3, metadata !3145, metadata !DIExpression()), !dbg !3162
  %13 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i64 0, i32 1, !dbg !3163
  %14 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i64 0, i32 0
  br label %15, !dbg !3164

15:                                               ; preds = %19, %9
  %16 = phi i64 [ %5, %9 ], [ 0, %19 ], !dbg !3158
  %17 = phi i64 [ %11, %9 ], [ %21, %19 ], !dbg !3158
  store i64 %16, i64* %13, align 8, !dbg !3158, !tbaa !3151
  call void @llvm.dbg.value(metadata i64 %17, metadata !3144, metadata !DIExpression()), !dbg !3158
  %18 = icmp sgt i64 %17, 2073600, !dbg !3165
  br i1 %18, label %19, label %29, !dbg !3164

19:                                               ; preds = %15
  store i64 2073600, i64* %14, align 8, !dbg !3166, !tbaa !3160
  %20 = call i32 @nanosleep(%struct.timespec* nonnull %3, %struct.timespec* %1) #26, !dbg !3167
  call void @llvm.dbg.value(metadata i32 %20, metadata !3146, metadata !DIExpression()), !dbg !3168
  %21 = add nsw i64 %17, -2073600, !dbg !3169
  call void @llvm.dbg.value(metadata i64 %21, metadata !3144, metadata !DIExpression()), !dbg !3158
  %22 = icmp eq i32 %20, 0, !dbg !3170
  br i1 %22, label %15, label %23, !dbg !3172

23:                                               ; preds = %19
  %24 = icmp eq %struct.timespec* %1, null, !dbg !3173
  br i1 %24, label %31, label %25, !dbg !3176

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.timespec, %struct.timespec* %1, i64 0, i32 0, !dbg !3177
  %27 = load i64, i64* %26, align 8, !dbg !3178, !tbaa !3160
  %28 = add nsw i64 %27, %21, !dbg !3178
  store i64 %28, i64* %26, align 8, !dbg !3178, !tbaa !3160
  br label %31, !dbg !3179

29:                                               ; preds = %15
  store i64 %17, i64* %14, align 8, !dbg !3180, !tbaa !3160
  %30 = call i32 @nanosleep(%struct.timespec* nonnull %3, %struct.timespec* %1) #26, !dbg !3181
  br label %31, !dbg !3182

31:                                               ; preds = %25, %23, %29
  %32 = phi i32 [ %30, %29 ], [ %20, %23 ], [ %20, %25 ], !dbg !3158
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %12) #26, !dbg !3183
  br label %33

33:                                               ; preds = %31, %7
  %34 = phi i32 [ -1, %7 ], [ %32, %31 ], !dbg !3148
  ret i32 %34, !dbg !3184
}

declare !dbg !3185 i32 @nanosleep(%struct.timespec*, %struct.timespec*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local double @c_strtod(i8* %0, i8** %1) local_unnamed_addr #8 !dbg !3187 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3189, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i8** %1, metadata !3190, metadata !DIExpression()), !dbg !3193
  %3 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !3194, !tbaa !649
  %4 = icmp eq %struct.__locale_struct* %3, null, !dbg !3194
  br i1 %4, label %5, label %7, !dbg !3200

5:                                                ; preds = %2
  %6 = tail call %struct.__locale_struct* @newlocale(i32 8127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.122, i64 0, i64 0), %struct.__locale_struct* null) #26, !dbg !3201
  store volatile %struct.__locale_struct* %6, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !3202, !tbaa !649
  br label %7, !dbg !3203

7:                                                ; preds = %2, %5
  %8 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !3204, !tbaa !649
  call void @llvm.dbg.value(metadata %struct.__locale_struct* %8, metadata !3192, metadata !DIExpression()), !dbg !3193
  %9 = icmp eq %struct.__locale_struct* %8, null, !dbg !3205
  br i1 %9, label %10, label %13, !dbg !3207

10:                                               ; preds = %7
  %11 = icmp eq i8** %1, null, !dbg !3208
  br i1 %11, label %15, label %12, !dbg !3211

12:                                               ; preds = %10
  store i8* %0, i8** %1, align 8, !dbg !3212, !tbaa !649
  br label %15, !dbg !3213

13:                                               ; preds = %7
  %14 = tail call double @strtod_l(i8* %0, i8** %1, %struct.__locale_struct* nonnull %8) #26, !dbg !3214
  call void @llvm.dbg.value(metadata double %14, metadata !3191, metadata !DIExpression()), !dbg !3193
  br label %15, !dbg !3215

15:                                               ; preds = %10, %12, %13
  %16 = phi double [ %14, %13 ], [ 0.000000e+00, %12 ], [ 0.000000e+00, %10 ], !dbg !3193
  ret double %16, !dbg !3216
}

; Function Attrs: nounwind
declare !dbg !3217 %struct.__locale_struct* @newlocale(i32, i8*, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3220 double @strtod_l(i8*, i8**, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3223 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3261, metadata !DIExpression()), !dbg !3266
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #26, !dbg !3267
  call void @llvm.dbg.value(metadata i1 undef, metadata !3262, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3266
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3268, metadata !DIExpression()), !dbg !3272
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3274
  %4 = load i32, i32* %3, align 8, !dbg !3274, !tbaa !3275
  %5 = and i32 %4, 32, !dbg !3277
  %6 = icmp eq i32 %5, 0, !dbg !3277
  call void @llvm.dbg.value(metadata i1 %6, metadata !3264, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3266
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #26, !dbg !3278
  %8 = icmp eq i32 %7, 0, !dbg !3279
  call void @llvm.dbg.value(metadata i1 %8, metadata !3265, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3266
  br i1 %6, label %9, label %19, !dbg !3280

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3282
  call void @llvm.dbg.value(metadata i1 %10, metadata !3262, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3266
  %11 = or i1 %10, %8, !dbg !3283
  %12 = xor i1 %8, true, !dbg !3283
  %13 = sext i1 %12 to i32, !dbg !3283
  br i1 %11, label %22, label %14, !dbg !3283

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #30, !dbg !3284
  %16 = load i32, i32* %15, align 4, !dbg !3284, !tbaa !805
  %17 = icmp ne i32 %16, 9, !dbg !3285
  %18 = sext i1 %17 to i32, !dbg !3286
  br label %22, !dbg !3286

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3287

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #30, !dbg !3289
  store i32 0, i32* %21, align 4, !dbg !3291, !tbaa !805
  br label %22, !dbg !3289

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3266
  ret i32 %23, !dbg !3292
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: norecurse nounwind readnone sspstrong uwtable willreturn
define dso_local { i64, i64 } @dtotimespec(double %0) local_unnamed_addr #25 !dbg !3293 {
  call void @llvm.dbg.value(metadata double %0, metadata !3301, metadata !DIExpression()), !dbg !3308
  %2 = fcmp ogt double %0, 0xC3E0000000000000, !dbg !3309
  br i1 %2, label %3, label %25, !dbg !3310

3:                                                ; preds = %1
  %4 = fcmp olt double %0, 0x43E0000000000000, !dbg !3311
  br i1 %4, label %5, label %25, !dbg !3312

5:                                                ; preds = %3
  %6 = fptosi double %0 to i64, !dbg !3313
  call void @llvm.dbg.value(metadata i64 %6, metadata !3302, metadata !DIExpression()), !dbg !3314
  %7 = sitofp i64 %6 to double, !dbg !3315
  %8 = fsub double %0, %7, !dbg !3316
  %9 = fmul double %8, 1.000000e+09, !dbg !3317
  call void @llvm.dbg.value(metadata double %9, metadata !3306, metadata !DIExpression()), !dbg !3314
  %10 = fptosi double %9 to i64, !dbg !3318
  call void @llvm.dbg.value(metadata i64 %10, metadata !3307, metadata !DIExpression()), !dbg !3314
  %11 = sitofp i64 %10 to double, !dbg !3319
  %12 = fcmp ogt double %9, %11, !dbg !3320
  %13 = zext i1 %12 to i64, !dbg !3319
  %14 = add nsw i64 %13, %10, !dbg !3321
  call void @llvm.dbg.value(metadata i64 %14, metadata !3307, metadata !DIExpression()), !dbg !3314
  %15 = sdiv i64 %14, 1000000000, !dbg !3322
  %16 = add nsw i64 %15, %6, !dbg !3323
  call void @llvm.dbg.value(metadata i64 %16, metadata !3302, metadata !DIExpression()), !dbg !3314
  %17 = srem i64 %14, 1000000000, !dbg !3324
  call void @llvm.dbg.value(metadata i64 %17, metadata !3307, metadata !DIExpression()), !dbg !3314
  %18 = icmp slt i64 %17, 0, !dbg !3325
  %19 = add nsw i64 %17, 1000000000, !dbg !3327
  %20 = ashr i64 %17, 63, !dbg !3327
  %21 = add nsw i64 %16, %20, !dbg !3327
  %22 = select i1 %18, i64 %19, i64 %17, !dbg !3327
  call void @llvm.dbg.value(metadata i64 %22, metadata !3307, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i64 %21, metadata !3302, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i64 %21, metadata !3328, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i64 %22, metadata !3333, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i64 %21, metadata !3334, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3335
  call void @llvm.dbg.value(metadata i64 %22, metadata !3334, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3335
  %23 = insertvalue { i64, i64 } undef, i64 %21, 0, !dbg !3337
  %24 = insertvalue { i64, i64 } %23, i64 %22, 1, !dbg !3337
  br label %25

25:                                               ; preds = %3, %1, %5
  %26 = phi { i64, i64 } [ %24, %5 ], [ { i64 -9223372036854775808, i64 0 }, %1 ], [ { i64 9223372036854775807, i64 999999999 }, %3 ]
  ret { i64, i64 } %26, !dbg !3338
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3339 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3343, metadata !DIExpression()), !dbg !3348
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3349
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #26, !dbg !3349
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3344, metadata !DIExpression()), !dbg !3350
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #26, !dbg !3351
  %5 = icmp eq i32 %4, 0, !dbg !3351
  br i1 %5, label %6, label %13, !dbg !3353

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3354
  %8 = load i16, i16* %7, align 16, !dbg !3354
  %9 = icmp eq i16 %8, 67, !dbg !3354
  br i1 %9, label %13, label %10, !dbg !3355

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.129, i64 0, i64 0), i64 6), !dbg !3356
  %12 = icmp ne i32 %11, 0, !dbg !3357
  br label %13, !dbg !3355

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3348
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #26, !dbg !3358
  ret i1 %14, !dbg !3358
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3359 {
  %1 = tail call i8* @nl_langinfo(i32 14) #26, !dbg !3364
  call void @llvm.dbg.value(metadata i8* %1, metadata !3363, metadata !DIExpression()), !dbg !3365
  %2 = icmp eq i8* %1, null, !dbg !3366
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.132, i64 0, i64 0), i8* %1, !dbg !3368
  call void @llvm.dbg.value(metadata i8* %3, metadata !3363, metadata !DIExpression()), !dbg !3365
  %4 = load i8, i8* %3, align 1, !dbg !3369, !tbaa !830
  %5 = icmp eq i8 %4, 0, !dbg !3373
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.133, i64 0, i64 0), i8* %3, !dbg !3374
  call void @llvm.dbg.value(metadata i8* %6, metadata !3363, metadata !DIExpression()), !dbg !3365
  ret i8* %6, !dbg !3375
}

; Function Attrs: nounwind
declare !dbg !3376 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3379 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3383, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i8* %1, metadata !3384, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i64 %2, metadata !3385, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i32 %0, metadata !3387, metadata !DIExpression()) #26, !dbg !3396
  call void @llvm.dbg.value(metadata i8* %1, metadata !3390, metadata !DIExpression()) #26, !dbg !3396
  call void @llvm.dbg.value(metadata i64 %2, metadata !3391, metadata !DIExpression()) #26, !dbg !3396
  call void @llvm.dbg.value(metadata i32 %0, metadata !3398, metadata !DIExpression()) #26, !dbg !3404
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #26, !dbg !3406
  call void @llvm.dbg.value(metadata i8* %4, metadata !3403, metadata !DIExpression()) #26, !dbg !3404
  call void @llvm.dbg.value(metadata i8* %4, metadata !3392, metadata !DIExpression()) #26, !dbg !3396
  %5 = icmp eq i8* %4, null, !dbg !3407
  br i1 %5, label %6, label %9, !dbg !3408

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3409
  br i1 %7, label %19, label %8, !dbg !3412

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3413, !tbaa !830
  br label %19, !dbg !3414

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #27, !dbg !3415
  call void @llvm.dbg.value(metadata i64 %10, metadata !3393, metadata !DIExpression()) #26, !dbg !3416
  %11 = icmp ult i64 %10, %2, !dbg !3417
  br i1 %11, label %12, label %14, !dbg !3419

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3420
  call void @llvm.dbg.value(metadata i8* %1, metadata !3422, metadata !DIExpression()) #26, !dbg !3427
  call void @llvm.dbg.value(metadata i8* %4, metadata !3425, metadata !DIExpression()) #26, !dbg !3427
  call void @llvm.dbg.value(metadata i64 %13, metadata !3426, metadata !DIExpression()) #26, !dbg !3427
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #26, !dbg !3429
  br label %19, !dbg !3430

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3431
  br i1 %15, label %19, label %16, !dbg !3434

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3435
  call void @llvm.dbg.value(metadata i8* %1, metadata !3422, metadata !DIExpression()) #26, !dbg !3437
  call void @llvm.dbg.value(metadata i8* %4, metadata !3425, metadata !DIExpression()) #26, !dbg !3437
  call void @llvm.dbg.value(metadata i64 %17, metadata !3426, metadata !DIExpression()) #26, !dbg !3437
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #26, !dbg !3439
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3440
  store i8 0, i8* %18, align 1, !dbg !3441, !tbaa !830
  br label %19, !dbg !3442

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3443
  ret i32 %20, !dbg !3444
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3445 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3447, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata i32 %0, metadata !3398, metadata !DIExpression()) #26, !dbg !3449
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #26, !dbg !3451
  call void @llvm.dbg.value(metadata i8* %2, metadata !3403, metadata !DIExpression()) #26, !dbg !3449
  ret i8* %2, !dbg !3452
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3453 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3491, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i32 0, metadata !3492, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i32 0, metadata !3494, metadata !DIExpression()), !dbg !3495
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #26, !dbg !3496
  call void @llvm.dbg.value(metadata i32 %2, metadata !3493, metadata !DIExpression()), !dbg !3495
  %3 = icmp slt i32 %2, 0, !dbg !3497
  br i1 %3, label %4, label %6, !dbg !3499

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3500
  br label %24, !dbg !3501

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #26, !dbg !3502
  %8 = icmp eq i32 %7, 0, !dbg !3502
  br i1 %8, label %13, label %9, !dbg !3504

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #26, !dbg !3505
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #26, !dbg !3506
  %12 = icmp eq i64 %11, -1, !dbg !3507
  br i1 %12, label %16, label %13, !dbg !3508

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #26, !dbg !3509
  %15 = icmp eq i32 %14, 0, !dbg !3509
  br i1 %15, label %16, label %18, !dbg !3510

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3492, metadata !DIExpression()), !dbg !3495
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3511
  call void @llvm.dbg.value(metadata i32 %21, metadata !3494, metadata !DIExpression()), !dbg !3495
  br label %24, !dbg !3512

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #30, !dbg !3513
  %20 = load i32, i32* %19, align 4, !dbg !3513, !tbaa !805
  call void @llvm.dbg.value(metadata i32 %20, metadata !3492, metadata !DIExpression()), !dbg !3495
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3511
  call void @llvm.dbg.value(metadata i32 %21, metadata !3494, metadata !DIExpression()), !dbg !3495
  %22 = icmp eq i32 %20, 0, !dbg !3514
  br i1 %22, label %24, label %23, !dbg !3512

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3516, !tbaa !805
  call void @llvm.dbg.value(metadata i32 -1, metadata !3494, metadata !DIExpression()), !dbg !3495
  br label %24, !dbg !3518

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3495
  ret i32 %25, !dbg !3519
}

; Function Attrs: nofree nounwind
declare !dbg !3520 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3523 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3524 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3527 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3565, metadata !DIExpression()), !dbg !3566
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3567
  br i1 %2, label %6, label %3, !dbg !3569

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #26, !dbg !3570
  %5 = icmp eq i32 %4, 0, !dbg !3570
  br i1 %5, label %6, label %8, !dbg !3571

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3572
  br label %17, !dbg !3573

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3574, metadata !DIExpression()) #26, !dbg !3579
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3581
  %10 = load i32, i32* %9, align 8, !dbg !3581, !tbaa !3275
  %11 = and i32 %10, 256, !dbg !3583
  %12 = icmp eq i32 %11, 0, !dbg !3583
  br i1 %12, label %15, label %13, !dbg !3584

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #26, !dbg !3585
  br label %15, !dbg !3585

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3586
  br label %17, !dbg !3587

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3566
  ret i32 %18, !dbg !3588
}

; Function Attrs: nofree nounwind
declare !dbg !3589 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3592 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3631, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i64 %1, metadata !3632, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i32 %2, metadata !3633, metadata !DIExpression()), !dbg !3637
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3638
  %5 = load i8*, i8** %4, align 8, !dbg !3638, !tbaa !3639
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3640
  %7 = load i8*, i8** %6, align 8, !dbg !3640, !tbaa !3641
  %8 = icmp eq i8* %5, %7, !dbg !3642
  br i1 %8, label %9, label %28, !dbg !3643

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3644
  %11 = load i8*, i8** %10, align 8, !dbg !3644, !tbaa !3645
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3646
  %13 = load i8*, i8** %12, align 8, !dbg !3646, !tbaa !3647
  %14 = icmp eq i8* %11, %13, !dbg !3648
  br i1 %14, label %15, label %28, !dbg !3649

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3650
  %17 = load i8*, i8** %16, align 8, !dbg !3650, !tbaa !3651
  %18 = icmp eq i8* %17, null, !dbg !3652
  br i1 %18, label %19, label %28, !dbg !3653

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #26, !dbg !3654
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #26, !dbg !3655
  call void @llvm.dbg.value(metadata i64 %21, metadata !3634, metadata !DIExpression()), !dbg !3656
  %22 = icmp eq i64 %21, -1, !dbg !3657
  br i1 %22, label %30, label %23, !dbg !3659

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3660
  %25 = load i32, i32* %24, align 8, !dbg !3661, !tbaa !3275
  %26 = and i32 %25, -17, !dbg !3661
  store i32 %26, i32* %24, align 8, !dbg !3661, !tbaa !3275
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3662
  store i64 %21, i64* %27, align 8, !dbg !3663, !tbaa !3664
  br label %30, !dbg !3665

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3666
  br label %30, !dbg !3667

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3637
  ret i32 %31, !dbg !3668
}

; Function Attrs: nofree nounwind
declare !dbg !3669 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

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
attributes #10 = { nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree nosync nounwind willreturn }
attributes #14 = { nofree nounwind }
attributes #15 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { argmemonly nofree nounwind readonly willreturn }
attributes #18 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #21 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #22 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #24 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #25 = { norecurse nounwind readnone sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #26 = { nounwind }
attributes #27 = { nounwind readonly willreturn }
attributes #28 = { noreturn nounwind }
attributes #29 = { noreturn }
attributes #30 = { nounwind readnone willreturn }
attributes #31 = { cold }

!llvm.dbg.cu = !{!172, !2, !175, !11, !19, !26, !43, !51, !177, !137, !184, !201, !203, !211, !213, !215, !218, !145, !224, !226, !233, !235, !624, !626, !628, !630}
!llvm.ident = !{!632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632}
!llvm.module.flags = !{!633, !634, !635, !636, !637}

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
!144 = distinct !DIGlobalVariable(name: "c_locale_cache", scope: !145, file: !146, line: 50, type: !171, isLocal: true, isDefinition: true)
!145 = distinct !DICompileUnit(language: DW_LANG_C99, file: !146, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !147, globals: !170, splitDebugInlining: false, nameTableKind: None)
!146 = !DIFile(filename: "lib/c-strtod.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!147 = !{!47, !148}
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !149, line: 24, baseType: !150)
!149 = !DIFile(filename: "/usr/include/bits/types/locale_t.h", directory: "")
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__locale_t", file: !151, line: 42, baseType: !152)
!151 = !DIFile(filename: "/usr/include/bits/types/__locale_t.h", directory: "")
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_struct", file: !151, line: 28, size: 1856, elements: !154)
!154 = !{!155, !161, !164, !167, !168}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__locales", scope: !153, file: !151, line: 31, baseType: !156, size: 832)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 832, elements: !159)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_data", file: !151, line: 31, flags: DIFlagFwdDecl)
!159 = !{!160}
!160 = !DISubrange(count: 13)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_b", scope: !153, file: !151, line: 34, baseType: !162, size: 64, offset: 832)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_tolower", scope: !153, file: !151, line: 35, baseType: !165, size: 64, offset: 896)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_toupper", scope: !153, file: !151, line: 36, baseType: !165, size: 64, offset: 960)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__names", scope: !153, file: !151, line: 39, baseType: !169, size: 832, offset: 1024)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 832, elements: !159)
!170 = !{!143}
!171 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !148)
!172 = distinct !DICompileUnit(language: DW_LANG_C99, file: !173, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !174, splitDebugInlining: false, nameTableKind: None)
!173 = !DIFile(filename: "src/sleep.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!174 = !{!6, !46}
!175 = distinct !DICompileUnit(language: DW_LANG_C99, file: !176, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!176 = !DIFile(filename: "lib/cl-strtod.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!177 = distinct !DICompileUnit(language: DW_LANG_C99, file: !178, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !179, retainedTypes: !183, splitDebugInlining: false, nameTableKind: None)
!178 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!179 = !{!180}
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !178, line: 40, baseType: !56, size: 32, elements: !181)
!181 = !{!182}
!182 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!183 = !{!46}
!184 = distinct !DICompileUnit(language: DW_LANG_C99, file: !185, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !186, retainedTypes: !200, splitDebugInlining: false, nameTableKind: None)
!185 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!186 = !{!187}
!187 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !189, file: !188, line: 186, baseType: !56, size: 32, elements: !198)
!188 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!189 = distinct !DISubprogram(name: "x2nrealloc", scope: !188, file: !188, line: 174, type: !190, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !184, retainedNodes: !193)
!190 = !DISubroutineType(types: !191)
!191 = !{!46, !46, !192, !91}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!193 = !{!194, !195, !196, !197}
!194 = !DILocalVariable(name: "p", arg: 1, scope: !189, file: !188, line: 174, type: !46)
!195 = !DILocalVariable(name: "pn", arg: 2, scope: !189, file: !188, line: 174, type: !192)
!196 = !DILocalVariable(name: "s", arg: 3, scope: !189, file: !188, line: 174, type: !91)
!197 = !DILocalVariable(name: "n", scope: !189, file: !188, line: 176, type: !91)
!198 = !{!199}
!199 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!200 = !{!91, !47, !46}
!201 = distinct !DICompileUnit(language: DW_LANG_C99, file: !202, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!202 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!203 = distinct !DICompileUnit(language: DW_LANG_C99, file: !204, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !205, splitDebugInlining: false, nameTableKind: None)
!204 = !DIFile(filename: "lib/xnanosleep.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!205 = !{!206}
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !207, line: 7, baseType: !208)
!207 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "")
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !209, line: 160, baseType: !210)
!209 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!210 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!211 = distinct !DICompileUnit(language: DW_LANG_C99, file: !212, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !183, splitDebugInlining: false, nameTableKind: None)
!212 = !DIFile(filename: "lib/xstrtod.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!213 = distinct !DICompileUnit(language: DW_LANG_C99, file: !214, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !183, splitDebugInlining: false, nameTableKind: None)
!214 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!215 = distinct !DICompileUnit(language: DW_LANG_C99, file: !216, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !217, splitDebugInlining: false, nameTableKind: None)
!216 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!217 = !{!91}
!218 = distinct !DICompileUnit(language: DW_LANG_C99, file: !219, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !220, splitDebugInlining: false, nameTableKind: None)
!219 = !DIFile(filename: "lib/nanosleep.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!220 = !{!221}
!221 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !219, line: 41, baseType: !56, size: 32, elements: !222)
!222 = !{!223}
!223 = !DIEnumerator(name: "BILLION", value: 1000000000, isUnsigned: true)
!224 = distinct !DICompileUnit(language: DW_LANG_C99, file: !225, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!225 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!226 = distinct !DICompileUnit(language: DW_LANG_C99, file: !227, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !228, retainedTypes: !205, splitDebugInlining: false, nameTableKind: None)
!227 = !DIFile(filename: "lib/dtotimespec.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!228 = !{!229}
!229 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !230, line: 42, baseType: !56, size: 32, elements: !231)
!230 = !DIFile(filename: "./lib/timespec.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!231 = !{!232}
!232 = !DIEnumerator(name: "TIMESPEC_HZ", value: 1000000000, isUnsigned: true)
!233 = distinct !DICompileUnit(language: DW_LANG_C99, file: !234, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!234 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!235 = distinct !DICompileUnit(language: DW_LANG_C99, file: !236, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !237, retainedTypes: !183, splitDebugInlining: false, nameTableKind: None)
!236 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!237 = !{!238}
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !239, line: 41, baseType: !56, size: 32, elements: !240)
!239 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!240 = !{!241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623}
!241 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!242 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!243 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!244 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!245 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!246 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!247 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!248 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!249 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!250 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!251 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!252 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!253 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!254 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!255 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!256 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!257 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!258 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!259 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!260 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!261 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!262 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!263 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!264 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!265 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!266 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!267 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!268 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!269 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!270 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!271 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!272 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!273 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!274 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!275 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!276 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!277 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!278 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!279 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!280 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!281 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!282 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!283 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!284 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!285 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!286 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!287 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!288 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!289 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!290 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!349 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!352 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!353 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!354 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!355 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!356 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!357 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!358 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!359 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!360 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!361 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!362 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!363 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!436 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!509 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!510 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!511 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!512 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!513 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!514 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!515 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!516 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!517 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!518 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!519 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!520 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!521 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!522 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!523 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!525 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!526 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!527 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!528 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!529 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!530 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!556 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!557 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!558 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!559 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!560 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!565 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!566 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!567 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!568 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!624 = distinct !DICompileUnit(language: DW_LANG_C99, file: !625, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !183, splitDebugInlining: false, nameTableKind: None)
!625 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!626 = distinct !DICompileUnit(language: DW_LANG_C99, file: !627, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!627 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!628 = distinct !DICompileUnit(language: DW_LANG_C99, file: !629, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !183, splitDebugInlining: false, nameTableKind: None)
!629 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!630 = distinct !DICompileUnit(language: DW_LANG_C99, file: !631, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !183, splitDebugInlining: false, nameTableKind: None)
!631 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!632 = !{!"clang version 12.0.1"}
!633 = !{i32 7, !"Dwarf Version", i32 4}
!634 = !{i32 2, !"Debug Info Version", i32 3}
!635 = !{i32 1, !"wchar_size", i32 4}
!636 = !{i32 7, !"PIC Level", i32 2}
!637 = !{i32 7, !"PIE Level", i32 2}
!638 = distinct !DISubprogram(name: "usage", scope: !173, file: !173, line: 38, type: !639, scopeLine: 39, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !641)
!639 = !DISubroutineType(types: !640)
!640 = !{null, !23}
!641 = !{!642}
!642 = !DILocalVariable(name: "status", arg: 1, scope: !638, file: !173, line: 38, type: !23)
!643 = !DILocation(line: 0, scope: !638)
!644 = !DILocation(line: 40, column: 14, scope: !645)
!645 = distinct !DILexicalBlock(scope: !638, file: !173, line: 40, column: 7)
!646 = !DILocation(line: 40, column: 7, scope: !638)
!647 = !DILocation(line: 41, column: 5, scope: !648)
!648 = distinct !DILexicalBlock(scope: !645, file: !173, line: 41, column: 5)
!649 = !{!650, !650, i64 0}
!650 = !{!"any pointer", !651, i64 0}
!651 = !{!"omnipotent char", !652, i64 0}
!652 = !{!"Simple C/C++ TBAA"}
!653 = !DILocation(line: 44, column: 7, scope: !654)
!654 = distinct !DILexicalBlock(scope: !645, file: !173, line: 43, column: 5)
!655 = !DILocation(line: 54, column: 7, scope: !654)
!656 = !DILocation(line: 55, column: 7, scope: !654)
!657 = !DILocalVariable(name: "program", arg: 1, scope: !658, file: !659, line: 634, type: !6)
!658 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !659, file: !659, line: 634, type: !660, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !662)
!659 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!660 = !DISubroutineType(types: !661)
!661 = !{null, !6}
!662 = !{!657, !663, !672, !673, !675}
!663 = !DILocalVariable(name: "infomap", scope: !658, file: !659, line: 636, type: !664)
!664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !665, size: 896, elements: !670)
!665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !666)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !658, file: !659, line: 636, size: 128, elements: !667)
!667 = !{!668, !669}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !666, file: !659, line: 636, baseType: !6, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !666, file: !659, line: 636, baseType: !6, size: 64, offset: 64)
!670 = !{!671}
!671 = !DISubrange(count: 7)
!672 = !DILocalVariable(name: "node", scope: !658, file: !659, line: 646, type: !6)
!673 = !DILocalVariable(name: "map_prog", scope: !658, file: !659, line: 647, type: !674)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!675 = !DILocalVariable(name: "lc_messages", scope: !658, file: !659, line: 659, type: !6)
!676 = !DILocation(line: 0, scope: !658, inlinedAt: !677)
!677 = distinct !DILocation(line: 56, column: 7, scope: !654)
!678 = !DILocation(line: 636, column: 3, scope: !658, inlinedAt: !677)
!679 = !DILocation(line: 636, column: 67, scope: !658, inlinedAt: !677)
!680 = !DILocation(line: 647, column: 36, scope: !658, inlinedAt: !677)
!681 = !DILocation(line: 649, column: 3, scope: !658, inlinedAt: !677)
!682 = !DILocation(line: 649, column: 33, scope: !658, inlinedAt: !677)
!683 = !DILocation(line: 650, column: 13, scope: !658, inlinedAt: !677)
!684 = !DILocation(line: 649, column: 20, scope: !658, inlinedAt: !677)
!685 = !{!686, !650, i64 0}
!686 = !{!"infomap", !650, i64 0, !650, i64 8}
!687 = !DILocation(line: 649, column: 10, scope: !658, inlinedAt: !677)
!688 = !DILocation(line: 649, column: 28, scope: !658, inlinedAt: !677)
!689 = distinct !{!689, !681, !683, !690}
!690 = !{!"llvm.loop.mustprogress"}
!691 = !DILocation(line: 652, column: 17, scope: !692, inlinedAt: !677)
!692 = distinct !DILexicalBlock(scope: !658, file: !659, line: 652, column: 7)
!693 = !{!686, !650, i64 8}
!694 = !DILocation(line: 652, column: 7, scope: !692, inlinedAt: !677)
!695 = !DILocation(line: 652, column: 7, scope: !658, inlinedAt: !677)
!696 = !DILocation(line: 655, column: 3, scope: !658, inlinedAt: !677)
!697 = !DILocation(line: 659, column: 29, scope: !658, inlinedAt: !677)
!698 = !DILocation(line: 660, column: 7, scope: !699, inlinedAt: !677)
!699 = distinct !DILexicalBlock(scope: !658, file: !659, line: 660, column: 7)
!700 = !DILocation(line: 660, column: 19, scope: !699, inlinedAt: !677)
!701 = !DILocation(line: 660, column: 22, scope: !699, inlinedAt: !677)
!702 = !DILocation(line: 660, column: 7, scope: !658, inlinedAt: !677)
!703 = !DILocation(line: 666, column: 7, scope: !704, inlinedAt: !677)
!704 = distinct !DILexicalBlock(scope: !699, file: !659, line: 661, column: 5)
!705 = !DILocation(line: 668, column: 5, scope: !704, inlinedAt: !677)
!706 = !DILocation(line: 669, column: 3, scope: !658, inlinedAt: !677)
!707 = !DILocation(line: 671, column: 3, scope: !658, inlinedAt: !677)
!708 = !DILocation(line: 673, column: 1, scope: !658, inlinedAt: !677)
!709 = !DILocation(line: 58, column: 3, scope: !638)
!710 = !DISubprogram(name: "dcgettext", scope: !711, file: !711, line: 51, type: !712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!711 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!712 = !DISubroutineType(types: !713)
!713 = !{!47, !6, !6, !23}
!714 = !DISubprogram(name: "fputs_unlocked", scope: !715, file: !715, line: 667, type: !716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!715 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!716 = !DISubroutineType(types: !717)
!717 = !{!23, !6, !718}
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !720, line: 49, size: 1728, elements: !721)
!720 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!721 = !{!722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !737, !738, !739, !740, !742, !743, !745, !749, !752, !754, !757, !760, !761, !762, !763, !764}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !719, file: !720, line: 51, baseType: !23, size: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !719, file: !720, line: 54, baseType: !47, size: 64, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !719, file: !720, line: 55, baseType: !47, size: 64, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !719, file: !720, line: 56, baseType: !47, size: 64, offset: 192)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !719, file: !720, line: 57, baseType: !47, size: 64, offset: 256)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !719, file: !720, line: 58, baseType: !47, size: 64, offset: 320)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !719, file: !720, line: 59, baseType: !47, size: 64, offset: 384)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !719, file: !720, line: 60, baseType: !47, size: 64, offset: 448)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !719, file: !720, line: 61, baseType: !47, size: 64, offset: 512)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !719, file: !720, line: 64, baseType: !47, size: 64, offset: 576)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !719, file: !720, line: 65, baseType: !47, size: 64, offset: 640)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !719, file: !720, line: 66, baseType: !47, size: 64, offset: 704)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !719, file: !720, line: 68, baseType: !735, size: 64, offset: 768)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !720, line: 36, flags: DIFlagFwdDecl)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !719, file: !720, line: 70, baseType: !718, size: 64, offset: 832)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !719, file: !720, line: 72, baseType: !23, size: 32, offset: 896)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !719, file: !720, line: 73, baseType: !23, size: 32, offset: 928)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !719, file: !720, line: 74, baseType: !741, size: 64, offset: 960)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !209, line: 152, baseType: !210)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !719, file: !720, line: 77, baseType: !90, size: 16, offset: 1024)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !719, file: !720, line: 78, baseType: !744, size: 8, offset: 1040)
!744 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !719, file: !720, line: 79, baseType: !746, size: 8, offset: 1048)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !747)
!747 = !{!748}
!748 = !DISubrange(count: 1)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !719, file: !720, line: 81, baseType: !750, size: 64, offset: 1088)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !720, line: 43, baseType: null)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !719, file: !720, line: 89, baseType: !753, size: 64, offset: 1152)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !209, line: 153, baseType: !210)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !719, file: !720, line: 91, baseType: !755, size: 64, offset: 1216)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !720, line: 37, flags: DIFlagFwdDecl)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !719, file: !720, line: 92, baseType: !758, size: 64, offset: 1280)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !720, line: 38, flags: DIFlagFwdDecl)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !719, file: !720, line: 93, baseType: !718, size: 64, offset: 1344)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !719, file: !720, line: 94, baseType: !46, size: 64, offset: 1408)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !719, file: !720, line: 95, baseType: !91, size: 64, offset: 1472)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !719, file: !720, line: 96, baseType: !23, size: 32, offset: 1536)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !719, file: !720, line: 98, baseType: !765, size: 160, offset: 1568)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !766)
!766 = !{!767}
!767 = !DISubrange(count: 20)
!768 = !DISubprogram(name: "setlocale", scope: !769, file: !769, line: 122, type: !770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!769 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!770 = !DISubroutineType(types: !771)
!771 = !{!47, !23, !6}
!772 = distinct !DISubprogram(name: "main", scope: !173, file: !173, line: 97, type: !773, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !776)
!773 = !DISubroutineType(types: !774)
!774 = !{!23, !23, !775}
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!776 = !{!777, !778, !779, !781, !782, !784, !787}
!777 = !DILocalVariable(name: "argc", arg: 1, scope: !772, file: !173, line: 97, type: !23)
!778 = !DILocalVariable(name: "argv", arg: 2, scope: !772, file: !173, line: 97, type: !775)
!779 = !DILocalVariable(name: "seconds", scope: !772, file: !173, line: 99, type: !780)
!780 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!781 = !DILocalVariable(name: "ok", scope: !772, file: !173, line: 100, type: !16)
!782 = !DILocalVariable(name: "i", scope: !783, file: !173, line: 120, type: !23)
!783 = distinct !DILexicalBlock(scope: !772, file: !173, line: 120, column: 3)
!784 = !DILocalVariable(name: "s", scope: !785, file: !173, line: 122, type: !780)
!785 = distinct !DILexicalBlock(scope: !786, file: !173, line: 121, column: 5)
!786 = distinct !DILexicalBlock(scope: !783, file: !173, line: 120, column: 3)
!787 = !DILocalVariable(name: "p", scope: !785, file: !173, line: 123, type: !6)
!788 = !DILocation(line: 0, scope: !772)
!789 = !DILocation(line: 103, column: 21, scope: !772)
!790 = !DILocation(line: 103, column: 3, scope: !772)
!791 = !DILocation(line: 104, column: 3, scope: !772)
!792 = !DILocation(line: 105, column: 3, scope: !772)
!793 = !DILocation(line: 106, column: 3, scope: !772)
!794 = !DILocation(line: 108, column: 3, scope: !772)
!795 = !DILocation(line: 111, column: 36, scope: !772)
!796 = !DILocation(line: 110, column: 3, scope: !772)
!797 = !DILocation(line: 114, column: 12, scope: !798)
!798 = distinct !DILexicalBlock(scope: !772, file: !173, line: 114, column: 7)
!799 = !DILocation(line: 114, column: 7, scope: !772)
!800 = !DILocation(line: 116, column: 20, scope: !801)
!801 = distinct !DILexicalBlock(scope: !798, file: !173, line: 115, column: 5)
!802 = !DILocation(line: 116, column: 7, scope: !801)
!803 = !DILocation(line: 117, column: 7, scope: !801)
!804 = !DILocation(line: 120, column: 16, scope: !783)
!805 = !{!806, !806, i64 0}
!806 = !{!"int", !651, i64 0}
!807 = !DILocation(line: 0, scope: !783)
!808 = !DILocation(line: 120, column: 26, scope: !786)
!809 = !DILocation(line: 120, column: 3, scope: !783)
!810 = !DILocation(line: 139, column: 8, scope: !811)
!811 = distinct !DILexicalBlock(scope: !772, file: !173, line: 139, column: 7)
!812 = !DILocation(line: 139, column: 7, scope: !772)
!813 = !DILocation(line: 122, column: 7, scope: !785)
!814 = !DILocation(line: 123, column: 7, scope: !785)
!815 = !DILocation(line: 124, column: 23, scope: !816)
!816 = distinct !DILexicalBlock(scope: !785, file: !173, line: 124, column: 11)
!817 = !DILocation(line: 0, scope: !785)
!818 = !DILocation(line: 124, column: 14, scope: !816)
!819 = !DILocation(line: 124, column: 51, scope: !816)
!820 = !DILocation(line: 124, column: 54, scope: !816)
!821 = !DILocation(line: 124, column: 60, scope: !816)
!822 = !DILocation(line: 126, column: 11, scope: !816)
!823 = !DILocation(line: 126, column: 22, scope: !816)
!824 = !{!825, !825, i64 0}
!825 = !{!"double", !651, i64 0}
!826 = !DILocation(line: 126, column: 19, scope: !816)
!827 = !DILocation(line: 128, column: 11, scope: !816)
!828 = !DILocation(line: 128, column: 16, scope: !816)
!829 = !DILocation(line: 128, column: 15, scope: !816)
!830 = !{!651, !651, i64 0}
!831 = !DILocation(line: 128, column: 18, scope: !816)
!832 = !DILocation(line: 128, column: 24, scope: !816)
!833 = !DILocation(line: 128, column: 21, scope: !816)
!834 = !DILocation(line: 130, column: 11, scope: !816)
!835 = !DILocalVariable(name: "x", arg: 1, scope: !836, file: !173, line: 68, type: !839)
!836 = distinct !DISubprogram(name: "apply_suffix", scope: !173, file: !173, line: 68, type: !837, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !840)
!837 = !DISubroutineType(types: !838)
!838 = !{!16, !839, !8}
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!840 = !{!835, !841, !842}
!841 = !DILocalVariable(name: "suffix_char", arg: 2, scope: !836, file: !173, line: 68, type: !8)
!842 = !DILocalVariable(name: "multiplier", scope: !836, file: !173, line: 70, type: !23)
!843 = !DILocation(line: 0, scope: !836, inlinedAt: !844)
!844 = distinct !DILocation(line: 130, column: 16, scope: !816)
!845 = !DILocation(line: 72, column: 11, scope: !836, inlinedAt: !844)
!846 = !DILocation(line: 72, column: 3, scope: !836, inlinedAt: !844)
!847 = !DILocation(line: 80, column: 7, scope: !848, inlinedAt: !844)
!848 = distinct !DILexicalBlock(scope: !836, file: !173, line: 73, column: 5)
!849 = !DILocation(line: 83, column: 7, scope: !848, inlinedAt: !844)
!850 = !DILocation(line: 86, column: 7, scope: !848, inlinedAt: !844)
!851 = !DILocation(line: 91, column: 6, scope: !836, inlinedAt: !844)
!852 = !DILocation(line: 124, column: 11, scope: !785)
!853 = !DILocation(line: 132, column: 24, scope: !854)
!854 = distinct !DILexicalBlock(scope: !816, file: !173, line: 131, column: 9)
!855 = !DILocation(line: 132, column: 62, scope: !854)
!856 = !DILocation(line: 132, column: 55, scope: !854)
!857 = !DILocation(line: 132, column: 11, scope: !854)
!858 = !DILocation(line: 136, column: 18, scope: !785)
!859 = !DILocation(line: 134, column: 9, scope: !854)
!860 = !DILocation(line: 136, column: 15, scope: !785)
!861 = !DILocation(line: 137, column: 5, scope: !786)
!862 = !DILocation(line: 120, column: 35, scope: !786)
!863 = distinct !{!863, !809, !864, !690}
!864 = !DILocation(line: 137, column: 5, scope: !783)
!865 = !DILocation(line: 140, column: 5, scope: !811)
!866 = !DILocation(line: 142, column: 7, scope: !867)
!867 = distinct !DILexicalBlock(scope: !772, file: !173, line: 142, column: 7)
!868 = !DILocation(line: 142, column: 7, scope: !772)
!869 = !DILocation(line: 143, column: 5, scope: !867)
!870 = !DILocation(line: 145, column: 3, scope: !772)
!871 = !DISubprogram(name: "bindtextdomain", scope: !711, file: !711, line: 86, type: !872, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!872 = !DISubroutineType(types: !873)
!873 = !{!47, !6, !6}
!874 = !DISubprogram(name: "textdomain", scope: !711, file: !711, line: 82, type: !875, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!875 = !DISubroutineType(types: !876)
!876 = !{!47, !6}
!877 = !DISubprogram(name: "atexit", scope: !878, file: !878, line: 595, type: !879, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!878 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!879 = !DISubroutineType(types: !880)
!880 = !{!23, !881}
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DISubroutineType(types: !883)
!883 = !{null}
!884 = !DISubprogram(name: "error", scope: !885, file: !885, line: 52, type: !886, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!885 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!886 = !DISubroutineType(types: !887)
!887 = !{null, !23, !23, !6, null}
!888 = distinct !DISubprogram(name: "cl_strtod", scope: !176, file: !176, line: 59, type: !889, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !175, retainedNodes: !892)
!889 = !DISubroutineType(types: !890)
!890 = !{!780, !6, !891}
!891 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !775)
!892 = !{!893, !894, !895, !896, !897, !900, !901}
!893 = !DILocalVariable(name: "nptr", arg: 1, scope: !888, file: !176, line: 59, type: !6)
!894 = !DILocalVariable(name: "endptr", arg: 2, scope: !888, file: !176, line: 59, type: !891)
!895 = !DILocalVariable(name: "end", scope: !888, file: !176, line: 61, type: !47)
!896 = !DILocalVariable(name: "d", scope: !888, file: !176, line: 62, type: !780)
!897 = !DILocalVariable(name: "strtod_errno", scope: !898, file: !176, line: 65, type: !23)
!898 = distinct !DILexicalBlock(scope: !899, file: !176, line: 64, column: 5)
!899 = distinct !DILexicalBlock(scope: !888, file: !176, line: 63, column: 7)
!900 = !DILocalVariable(name: "c_end", scope: !898, file: !176, line: 66, type: !47)
!901 = !DILocalVariable(name: "c", scope: !898, file: !176, line: 67, type: !780)
!902 = !DILocation(line: 0, scope: !888)
!903 = !DILocation(line: 61, column: 3, scope: !888)
!904 = !DILocation(line: 62, column: 14, scope: !888)
!905 = !DILocation(line: 63, column: 8, scope: !899)
!906 = !DILocation(line: 63, column: 7, scope: !899)
!907 = !DILocation(line: 63, column: 7, scope: !888)
!908 = !DILocation(line: 65, column: 26, scope: !898)
!909 = !DILocation(line: 0, scope: !898)
!910 = !DILocation(line: 66, column: 7, scope: !898)
!911 = !DILocation(line: 67, column: 18, scope: !898)
!912 = !DILocation(line: 68, column: 17, scope: !913)
!913 = distinct !DILexicalBlock(scope: !898, file: !176, line: 68, column: 11)
!914 = !DILocation(line: 68, column: 15, scope: !913)
!915 = !DILocation(line: 68, column: 11, scope: !898)
!916 = !DILocation(line: 71, column: 15, scope: !913)
!917 = !DILocation(line: 72, column: 5, scope: !899)
!918 = !DILocation(line: 72, column: 5, scope: !898)
!919 = !DILocation(line: 73, column: 7, scope: !920)
!920 = distinct !DILexicalBlock(scope: !888, file: !176, line: 73, column: 7)
!921 = !DILocation(line: 73, column: 7, scope: !888)
!922 = !DILocation(line: 74, column: 13, scope: !920)
!923 = !DILocation(line: 74, column: 5, scope: !920)
!924 = !DILocation(line: 76, column: 1, scope: !888)
!925 = !DILocation(line: 75, column: 3, scope: !888)
!926 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !12, file: !12, line: 51, type: !660, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !927)
!927 = !{!928}
!928 = !DILocalVariable(name: "file", arg: 1, scope: !926, file: !12, line: 51, type: !6)
!929 = !DILocation(line: 0, scope: !926)
!930 = !DILocation(line: 53, column: 13, scope: !926)
!931 = !DILocation(line: 54, column: 1, scope: !926)
!932 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !12, file: !12, line: 88, type: !933, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !935)
!933 = !DISubroutineType(types: !934)
!934 = !{null, !16}
!935 = !{!936}
!936 = !DILocalVariable(name: "ignore", arg: 1, scope: !932, file: !12, line: 88, type: !16)
!937 = !DILocation(line: 0, scope: !932)
!938 = !DILocation(line: 90, column: 16, scope: !932)
!939 = !{!940, !940, i64 0}
!940 = !{!"_Bool", !651, i64 0}
!941 = !DILocation(line: 91, column: 1, scope: !932)
!942 = distinct !DISubprogram(name: "close_stdout", scope: !12, file: !12, line: 117, type: !882, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !943)
!943 = !{!944}
!944 = !DILocalVariable(name: "write_error", scope: !945, file: !12, line: 122, type: !6)
!945 = distinct !DILexicalBlock(scope: !946, file: !12, line: 121, column: 5)
!946 = distinct !DILexicalBlock(scope: !942, file: !12, line: 119, column: 7)
!947 = !DILocation(line: 119, column: 21, scope: !946)
!948 = !DILocation(line: 119, column: 7, scope: !946)
!949 = !DILocation(line: 119, column: 29, scope: !946)
!950 = !DILocation(line: 120, column: 7, scope: !946)
!951 = !DILocation(line: 120, column: 12, scope: !946)
!952 = !{i8 0, i8 2}
!953 = !DILocation(line: 120, column: 25, scope: !946)
!954 = !DILocation(line: 120, column: 28, scope: !946)
!955 = !DILocation(line: 120, column: 34, scope: !946)
!956 = !DILocation(line: 119, column: 7, scope: !942)
!957 = !DILocation(line: 122, column: 33, scope: !945)
!958 = !DILocation(line: 0, scope: !945)
!959 = !DILocation(line: 123, column: 11, scope: !960)
!960 = distinct !DILexicalBlock(scope: !945, file: !12, line: 123, column: 11)
!961 = !DILocation(line: 0, scope: !960)
!962 = !DILocation(line: 123, column: 11, scope: !945)
!963 = !DILocation(line: 124, column: 36, scope: !960)
!964 = !DILocation(line: 124, column: 9, scope: !960)
!965 = !DILocation(line: 127, column: 9, scope: !960)
!966 = !DILocation(line: 129, column: 14, scope: !945)
!967 = !DILocation(line: 129, column: 7, scope: !945)
!968 = !DILocation(line: 134, column: 42, scope: !969)
!969 = distinct !DILexicalBlock(scope: !942, file: !12, line: 134, column: 7)
!970 = !DILocation(line: 134, column: 28, scope: !969)
!971 = !DILocation(line: 134, column: 50, scope: !969)
!972 = !DILocation(line: 134, column: 7, scope: !942)
!973 = !DILocation(line: 135, column: 12, scope: !969)
!974 = !DILocation(line: 135, column: 5, scope: !969)
!975 = !DILocation(line: 136, column: 1, scope: !942)
!976 = distinct !DISubprogram(name: "parse_long_options", scope: !27, file: !27, line: 45, type: !977, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !980)
!977 = !DISubroutineType(types: !978)
!978 = !{null, !23, !775, !6, !6, !6, !979, null}
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!980 = !{!981, !982, !983, !984, !985, !986, !987, !988, !989}
!981 = !DILocalVariable(name: "argc", arg: 1, scope: !976, file: !27, line: 45, type: !23)
!982 = !DILocalVariable(name: "argv", arg: 2, scope: !976, file: !27, line: 46, type: !775)
!983 = !DILocalVariable(name: "command_name", arg: 3, scope: !976, file: !27, line: 47, type: !6)
!984 = !DILocalVariable(name: "package", arg: 4, scope: !976, file: !27, line: 48, type: !6)
!985 = !DILocalVariable(name: "version", arg: 5, scope: !976, file: !27, line: 49, type: !6)
!986 = !DILocalVariable(name: "usage_func", arg: 6, scope: !976, file: !27, line: 50, type: !979)
!987 = !DILocalVariable(name: "c", scope: !976, file: !27, line: 53, type: !23)
!988 = !DILocalVariable(name: "saved_opterr", scope: !976, file: !27, line: 54, type: !23)
!989 = !DILocalVariable(name: "authors", scope: !990, file: !27, line: 72, type: !994)
!990 = distinct !DILexicalBlock(scope: !991, file: !27, line: 71, column: 11)
!991 = distinct !DILexicalBlock(scope: !992, file: !27, line: 65, column: 9)
!992 = distinct !DILexicalBlock(scope: !993, file: !27, line: 63, column: 5)
!993 = distinct !DILexicalBlock(scope: !976, file: !27, line: 61, column: 7)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !715, line: 52, baseType: !995)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !996, line: 32, baseType: !997)
!996 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !27, baseType: !998)
!998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !999, size: 192, elements: !747)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1000)
!1000 = !{!1001, !1002, !1003, !1004}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !999, file: !27, line: 72, baseType: !56, size: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !999, file: !27, line: 72, baseType: !56, size: 32, offset: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !999, file: !27, line: 72, baseType: !46, size: 64, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !999, file: !27, line: 72, baseType: !46, size: 64, offset: 128)
!1005 = !DILocation(line: 0, scope: !976)
!1006 = !DILocation(line: 56, column: 18, scope: !976)
!1007 = !DILocation(line: 59, column: 10, scope: !976)
!1008 = !DILocation(line: 61, column: 12, scope: !993)
!1009 = !DILocation(line: 62, column: 7, scope: !993)
!1010 = !DILocation(line: 62, column: 15, scope: !993)
!1011 = !DILocation(line: 61, column: 7, scope: !976)
!1012 = !DILocation(line: 67, column: 11, scope: !991)
!1013 = !DILocation(line: 68, column: 11, scope: !991)
!1014 = !DILocation(line: 72, column: 13, scope: !990)
!1015 = !DILocation(line: 72, column: 21, scope: !990)
!1016 = !DILocation(line: 73, column: 13, scope: !990)
!1017 = !DILocation(line: 74, column: 29, scope: !990)
!1018 = !DILocation(line: 74, column: 13, scope: !990)
!1019 = !DILocation(line: 75, column: 13, scope: !990)
!1020 = !DILocation(line: 85, column: 10, scope: !976)
!1021 = !DILocation(line: 89, column: 10, scope: !976)
!1022 = !DILocation(line: 90, column: 1, scope: !976)
!1023 = !DISubprogram(name: "getopt_long", scope: !32, file: !32, line: 66, type: !1024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!23, !23, !1026, !6, !1028, !37}
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!1029 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !27, file: !27, line: 98, type: !1030, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1032)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{null, !23, !775, !6, !6, !6, !16, !979, null}
!1032 = !{!1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043}
!1033 = !DILocalVariable(name: "argc", arg: 1, scope: !1029, file: !27, line: 98, type: !23)
!1034 = !DILocalVariable(name: "argv", arg: 2, scope: !1029, file: !27, line: 99, type: !775)
!1035 = !DILocalVariable(name: "command_name", arg: 3, scope: !1029, file: !27, line: 100, type: !6)
!1036 = !DILocalVariable(name: "package", arg: 4, scope: !1029, file: !27, line: 101, type: !6)
!1037 = !DILocalVariable(name: "version", arg: 5, scope: !1029, file: !27, line: 102, type: !6)
!1038 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1029, file: !27, line: 103, type: !16)
!1039 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1029, file: !27, line: 104, type: !979)
!1040 = !DILocalVariable(name: "c", scope: !1029, file: !27, line: 107, type: !23)
!1041 = !DILocalVariable(name: "saved_opterr", scope: !1029, file: !27, line: 108, type: !23)
!1042 = !DILocalVariable(name: "optstring", scope: !1029, file: !27, line: 113, type: !6)
!1043 = !DILocalVariable(name: "authors", scope: !1044, file: !27, line: 125, type: !994)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !27, line: 124, column: 11)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !27, line: 118, column: 9)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !27, line: 116, column: 5)
!1047 = distinct !DILexicalBlock(scope: !1029, file: !27, line: 115, column: 7)
!1048 = !DILocation(line: 0, scope: !1029)
!1049 = !DILocation(line: 108, column: 22, scope: !1029)
!1050 = !DILocation(line: 111, column: 10, scope: !1029)
!1051 = !DILocation(line: 113, column: 27, scope: !1029)
!1052 = !DILocation(line: 115, column: 12, scope: !1047)
!1053 = !DILocation(line: 115, column: 7, scope: !1029)
!1054 = !DILocation(line: 125, column: 13, scope: !1044)
!1055 = !DILocation(line: 125, column: 21, scope: !1044)
!1056 = !DILocation(line: 126, column: 13, scope: !1044)
!1057 = !DILocation(line: 127, column: 29, scope: !1044)
!1058 = !DILocation(line: 127, column: 13, scope: !1044)
!1059 = !DILocation(line: 128, column: 13, scope: !1044)
!1060 = !DILocation(line: 132, column: 26, scope: !1045)
!1061 = !DILocation(line: 133, column: 11, scope: !1045)
!1062 = !DILocation(line: 0, scope: !1045)
!1063 = !DILocation(line: 138, column: 10, scope: !1029)
!1064 = !DILocation(line: 139, column: 1, scope: !1029)
!1065 = distinct !DISubprogram(name: "set_program_name", scope: !44, file: !44, line: 39, type: !660, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !43, retainedNodes: !1066)
!1066 = !{!1067, !1068, !1069}
!1067 = !DILocalVariable(name: "argv0", arg: 1, scope: !1065, file: !44, line: 39, type: !6)
!1068 = !DILocalVariable(name: "slash", scope: !1065, file: !44, line: 46, type: !6)
!1069 = !DILocalVariable(name: "base", scope: !1065, file: !44, line: 47, type: !6)
!1070 = !DILocation(line: 0, scope: !1065)
!1071 = !DILocation(line: 51, column: 13, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1065, file: !44, line: 51, column: 7)
!1073 = !DILocation(line: 51, column: 7, scope: !1065)
!1074 = !DILocation(line: 55, column: 14, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1072, file: !44, line: 52, column: 5)
!1076 = !DILocation(line: 54, column: 7, scope: !1075)
!1077 = !DILocation(line: 56, column: 7, scope: !1075)
!1078 = !DILocation(line: 59, column: 11, scope: !1065)
!1079 = !DILocation(line: 60, column: 17, scope: !1065)
!1080 = !DILocation(line: 60, column: 11, scope: !1065)
!1081 = !DILocation(line: 61, column: 12, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1065, file: !44, line: 61, column: 7)
!1083 = !DILocation(line: 61, column: 20, scope: !1082)
!1084 = !DILocation(line: 61, column: 25, scope: !1082)
!1085 = !DILocation(line: 61, column: 42, scope: !1082)
!1086 = !DILocation(line: 61, column: 28, scope: !1082)
!1087 = !DILocation(line: 61, column: 61, scope: !1082)
!1088 = !DILocation(line: 61, column: 7, scope: !1065)
!1089 = !DILocation(line: 64, column: 11, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !44, line: 64, column: 11)
!1091 = distinct !DILexicalBlock(scope: !1082, file: !44, line: 62, column: 5)
!1092 = !DILocation(line: 64, column: 36, scope: !1090)
!1093 = !DILocation(line: 64, column: 11, scope: !1091)
!1094 = !DILocation(line: 66, column: 24, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1090, file: !44, line: 65, column: 9)
!1096 = !DILocation(line: 70, column: 41, scope: !1095)
!1097 = !DILocation(line: 72, column: 9, scope: !1095)
!1098 = !DILocation(line: 84, column: 16, scope: !1065)
!1099 = !DILocation(line: 90, column: 27, scope: !1065)
!1100 = !DILocation(line: 92, column: 1, scope: !1065)
!1101 = distinct !DISubprogram(name: "clone_quoting_options", scope: !52, file: !52, line: 122, type: !1102, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1105)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!1104, !1104}
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!1105 = !{!1106, !1107, !1108}
!1106 = !DILocalVariable(name: "o", arg: 1, scope: !1101, file: !52, line: 122, type: !1104)
!1107 = !DILocalVariable(name: "e", scope: !1101, file: !52, line: 124, type: !23)
!1108 = !DILocalVariable(name: "p", scope: !1101, file: !52, line: 125, type: !1104)
!1109 = !DILocation(line: 0, scope: !1101)
!1110 = !DILocation(line: 124, column: 11, scope: !1101)
!1111 = !DILocation(line: 125, column: 40, scope: !1101)
!1112 = !DILocation(line: 125, column: 31, scope: !1101)
!1113 = !DILocation(line: 127, column: 9, scope: !1101)
!1114 = !DILocation(line: 128, column: 3, scope: !1101)
!1115 = distinct !DISubprogram(name: "get_quoting_style", scope: !52, file: !52, line: 133, type: !1116, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1120)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!54, !1118}
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!1120 = !{!1121}
!1121 = !DILocalVariable(name: "o", arg: 1, scope: !1115, file: !52, line: 133, type: !1118)
!1122 = !DILocation(line: 0, scope: !1115)
!1123 = !DILocation(line: 135, column: 11, scope: !1115)
!1124 = !DILocation(line: 135, column: 46, scope: !1115)
!1125 = !{!1126, !651, i64 0}
!1126 = !{!"quoting_options", !651, i64 0, !806, i64 4, !651, i64 8, !650, i64 40, !650, i64 48}
!1127 = !DILocation(line: 135, column: 3, scope: !1115)
!1128 = distinct !DISubprogram(name: "set_quoting_style", scope: !52, file: !52, line: 141, type: !1129, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1131)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{null, !1104, !54}
!1131 = !{!1132, !1133}
!1132 = !DILocalVariable(name: "o", arg: 1, scope: !1128, file: !52, line: 141, type: !1104)
!1133 = !DILocalVariable(name: "s", arg: 2, scope: !1128, file: !52, line: 141, type: !54)
!1134 = !DILocation(line: 0, scope: !1128)
!1135 = !DILocation(line: 143, column: 4, scope: !1128)
!1136 = !DILocation(line: 143, column: 39, scope: !1128)
!1137 = !DILocation(line: 143, column: 45, scope: !1128)
!1138 = !DILocation(line: 144, column: 1, scope: !1128)
!1139 = distinct !DISubprogram(name: "set_char_quoting", scope: !52, file: !52, line: 152, type: !1140, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1142)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!23, !1104, !8, !23}
!1142 = !{!1143, !1144, !1145, !1146, !1148, !1150, !1151}
!1143 = !DILocalVariable(name: "o", arg: 1, scope: !1139, file: !52, line: 152, type: !1104)
!1144 = !DILocalVariable(name: "c", arg: 2, scope: !1139, file: !52, line: 152, type: !8)
!1145 = !DILocalVariable(name: "i", arg: 3, scope: !1139, file: !52, line: 152, type: !23)
!1146 = !DILocalVariable(name: "uc", scope: !1139, file: !52, line: 154, type: !1147)
!1147 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1148 = !DILocalVariable(name: "p", scope: !1139, file: !52, line: 155, type: !1149)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!1150 = !DILocalVariable(name: "shift", scope: !1139, file: !52, line: 157, type: !23)
!1151 = !DILocalVariable(name: "r", scope: !1139, file: !52, line: 158, type: !23)
!1152 = !DILocation(line: 0, scope: !1139)
!1153 = !DILocation(line: 156, column: 6, scope: !1139)
!1154 = !DILocation(line: 156, column: 62, scope: !1139)
!1155 = !DILocation(line: 156, column: 57, scope: !1139)
!1156 = !DILocation(line: 157, column: 15, scope: !1139)
!1157 = !DILocation(line: 158, column: 12, scope: !1139)
!1158 = !DILocation(line: 158, column: 15, scope: !1139)
!1159 = !DILocation(line: 158, column: 25, scope: !1139)
!1160 = !DILocation(line: 159, column: 13, scope: !1139)
!1161 = !DILocation(line: 159, column: 18, scope: !1139)
!1162 = !DILocation(line: 159, column: 23, scope: !1139)
!1163 = !DILocation(line: 159, column: 6, scope: !1139)
!1164 = !DILocation(line: 160, column: 3, scope: !1139)
!1165 = distinct !DISubprogram(name: "set_quoting_flags", scope: !52, file: !52, line: 168, type: !1166, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1168)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!23, !1104, !23}
!1168 = !{!1169, !1170, !1171}
!1169 = !DILocalVariable(name: "o", arg: 1, scope: !1165, file: !52, line: 168, type: !1104)
!1170 = !DILocalVariable(name: "i", arg: 2, scope: !1165, file: !52, line: 168, type: !23)
!1171 = !DILocalVariable(name: "r", scope: !1165, file: !52, line: 170, type: !23)
!1172 = !DILocation(line: 0, scope: !1165)
!1173 = !DILocation(line: 171, column: 8, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1165, file: !52, line: 171, column: 7)
!1175 = !DILocation(line: 171, column: 7, scope: !1165)
!1176 = !DILocation(line: 173, column: 10, scope: !1165)
!1177 = !{!1126, !806, i64 4}
!1178 = !DILocation(line: 174, column: 12, scope: !1165)
!1179 = !DILocation(line: 175, column: 3, scope: !1165)
!1180 = distinct !DISubprogram(name: "set_custom_quoting", scope: !52, file: !52, line: 179, type: !1181, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1183)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{null, !1104, !6, !6}
!1183 = !{!1184, !1185, !1186}
!1184 = !DILocalVariable(name: "o", arg: 1, scope: !1180, file: !52, line: 179, type: !1104)
!1185 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1180, file: !52, line: 180, type: !6)
!1186 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1180, file: !52, line: 180, type: !6)
!1187 = !DILocation(line: 0, scope: !1180)
!1188 = !DILocation(line: 182, column: 8, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1180, file: !52, line: 182, column: 7)
!1190 = !DILocation(line: 182, column: 7, scope: !1180)
!1191 = !DILocation(line: 184, column: 6, scope: !1180)
!1192 = !DILocation(line: 184, column: 12, scope: !1180)
!1193 = !DILocation(line: 185, column: 8, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1180, file: !52, line: 185, column: 7)
!1195 = !DILocation(line: 185, column: 19, scope: !1194)
!1196 = !DILocation(line: 186, column: 5, scope: !1194)
!1197 = !DILocation(line: 187, column: 6, scope: !1180)
!1198 = !DILocation(line: 187, column: 17, scope: !1180)
!1199 = !{!1126, !650, i64 40}
!1200 = !DILocation(line: 188, column: 6, scope: !1180)
!1201 = !DILocation(line: 188, column: 18, scope: !1180)
!1202 = !{!1126, !650, i64 48}
!1203 = !DILocation(line: 189, column: 1, scope: !1180)
!1204 = distinct !DISubprogram(name: "quotearg_buffer", scope: !52, file: !52, line: 784, type: !1205, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1207)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!91, !47, !91, !6, !91, !1118}
!1207 = !{!1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215}
!1208 = !DILocalVariable(name: "buffer", arg: 1, scope: !1204, file: !52, line: 784, type: !47)
!1209 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1204, file: !52, line: 784, type: !91)
!1210 = !DILocalVariable(name: "arg", arg: 3, scope: !1204, file: !52, line: 785, type: !6)
!1211 = !DILocalVariable(name: "argsize", arg: 4, scope: !1204, file: !52, line: 785, type: !91)
!1212 = !DILocalVariable(name: "o", arg: 5, scope: !1204, file: !52, line: 786, type: !1118)
!1213 = !DILocalVariable(name: "p", scope: !1204, file: !52, line: 788, type: !1118)
!1214 = !DILocalVariable(name: "e", scope: !1204, file: !52, line: 789, type: !23)
!1215 = !DILocalVariable(name: "r", scope: !1204, file: !52, line: 790, type: !91)
!1216 = !DILocation(line: 0, scope: !1204)
!1217 = !DILocation(line: 788, column: 37, scope: !1204)
!1218 = !DILocation(line: 789, column: 11, scope: !1204)
!1219 = !DILocation(line: 791, column: 43, scope: !1204)
!1220 = !DILocation(line: 791, column: 53, scope: !1204)
!1221 = !DILocation(line: 791, column: 60, scope: !1204)
!1222 = !DILocation(line: 792, column: 43, scope: !1204)
!1223 = !DILocation(line: 792, column: 58, scope: !1204)
!1224 = !DILocation(line: 790, column: 14, scope: !1204)
!1225 = !DILocation(line: 793, column: 9, scope: !1204)
!1226 = !DILocation(line: 794, column: 3, scope: !1204)
!1227 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !52, file: !52, line: 256, type: !1228, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1232)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!91, !47, !91, !6, !91, !54, !23, !1230, !6, !6}
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!1232 = !{!1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1257, !1258, !1259, !1260, !1261, !1264, !1265, !1283, !1286, !1287, !1294, !1297, !1298, !1299, !1300, !1301, !1302}
!1233 = !DILocalVariable(name: "buffer", arg: 1, scope: !1227, file: !52, line: 256, type: !47)
!1234 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1227, file: !52, line: 256, type: !91)
!1235 = !DILocalVariable(name: "arg", arg: 3, scope: !1227, file: !52, line: 257, type: !6)
!1236 = !DILocalVariable(name: "argsize", arg: 4, scope: !1227, file: !52, line: 257, type: !91)
!1237 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1227, file: !52, line: 258, type: !54)
!1238 = !DILocalVariable(name: "flags", arg: 6, scope: !1227, file: !52, line: 258, type: !23)
!1239 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1227, file: !52, line: 259, type: !1230)
!1240 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1227, file: !52, line: 260, type: !6)
!1241 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1227, file: !52, line: 261, type: !6)
!1242 = !DILocalVariable(name: "i", scope: !1227, file: !52, line: 263, type: !91)
!1243 = !DILocalVariable(name: "len", scope: !1227, file: !52, line: 264, type: !91)
!1244 = !DILocalVariable(name: "orig_buffersize", scope: !1227, file: !52, line: 265, type: !91)
!1245 = !DILocalVariable(name: "quote_string", scope: !1227, file: !52, line: 266, type: !6)
!1246 = !DILocalVariable(name: "quote_string_len", scope: !1227, file: !52, line: 267, type: !91)
!1247 = !DILocalVariable(name: "backslash_escapes", scope: !1227, file: !52, line: 268, type: !16)
!1248 = !DILocalVariable(name: "unibyte_locale", scope: !1227, file: !52, line: 269, type: !16)
!1249 = !DILocalVariable(name: "elide_outer_quotes", scope: !1227, file: !52, line: 270, type: !16)
!1250 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1227, file: !52, line: 271, type: !16)
!1251 = !DILocalVariable(name: "encountered_single_quote", scope: !1227, file: !52, line: 272, type: !16)
!1252 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1227, file: !52, line: 273, type: !16)
!1253 = !DILocalVariable(name: "c", scope: !1254, file: !52, line: 402, type: !1147)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !52, line: 401, column: 5)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !52, line: 400, column: 3)
!1256 = distinct !DILexicalBlock(scope: !1227, file: !52, line: 400, column: 3)
!1257 = !DILocalVariable(name: "esc", scope: !1254, file: !52, line: 403, type: !1147)
!1258 = !DILocalVariable(name: "is_right_quote", scope: !1254, file: !52, line: 404, type: !16)
!1259 = !DILocalVariable(name: "escaping", scope: !1254, file: !52, line: 405, type: !16)
!1260 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1254, file: !52, line: 406, type: !16)
!1261 = !DILocalVariable(name: "m", scope: !1262, file: !52, line: 610, type: !91)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !52, line: 608, column: 11)
!1263 = distinct !DILexicalBlock(scope: !1254, file: !52, line: 426, column: 9)
!1264 = !DILocalVariable(name: "printable", scope: !1262, file: !52, line: 612, type: !16)
!1265 = !DILocalVariable(name: "mbstate", scope: !1266, file: !52, line: 621, type: !1268)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !52, line: 620, column: 15)
!1267 = distinct !DILexicalBlock(scope: !1262, file: !52, line: 614, column: 17)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1269, line: 6, baseType: !1270)
!1269 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1271, line: 21, baseType: !1272)
!1271 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1271, line: 13, size: 64, elements: !1273)
!1273 = !{!1274, !1275}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1272, file: !1271, line: 15, baseType: !23, size: 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1272, file: !1271, line: 20, baseType: !1276, size: 32, offset: 32)
!1276 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1272, file: !1271, line: 16, size: 32, elements: !1277)
!1277 = !{!1278, !1279}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1276, file: !1271, line: 18, baseType: !56, size: 32)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1276, file: !1271, line: 19, baseType: !1280, size: 32)
!1280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !1281)
!1281 = !{!1282}
!1282 = !DISubrange(count: 4)
!1283 = !DILocalVariable(name: "w", scope: !1284, file: !52, line: 631, type: !1285)
!1284 = distinct !DILexicalBlock(scope: !1266, file: !52, line: 630, column: 19)
!1285 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !92, line: 74, baseType: !23)
!1286 = !DILocalVariable(name: "bytes", scope: !1284, file: !52, line: 632, type: !91)
!1287 = !DILocalVariable(name: "j", scope: !1288, file: !52, line: 657, type: !91)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !52, line: 656, column: 27)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !52, line: 654, column: 29)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !52, line: 649, column: 23)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !52, line: 641, column: 30)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !52, line: 636, column: 30)
!1293 = distinct !DILexicalBlock(scope: !1284, file: !52, line: 634, column: 25)
!1294 = !DILocalVariable(name: "ilim", scope: !1295, file: !52, line: 684, type: !91)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !52, line: 681, column: 15)
!1296 = distinct !DILexicalBlock(scope: !1262, file: !52, line: 680, column: 17)
!1297 = !DILabel(scope: !1227, name: "process_input", file: !52, line: 314)
!1298 = !DILabel(scope: !1263, name: "c_and_shell_escape", file: !52, line: 512)
!1299 = !DILabel(scope: !1263, name: "c_escape", file: !52, line: 517)
!1300 = !DILabel(scope: !1254, name: "store_escape", file: !52, line: 719)
!1301 = !DILabel(scope: !1254, name: "store_c", file: !52, line: 722)
!1302 = !DILabel(scope: !1227, name: "force_outer_quoting_style", file: !52, line: 763)
!1303 = !DILocation(line: 0, scope: !1227)
!1304 = !DILocation(line: 269, column: 25, scope: !1227)
!1305 = !DILocation(line: 269, column: 36, scope: !1227)
!1306 = !DILocation(line: 270, column: 8, scope: !1227)
!1307 = !DILocation(line: 273, column: 3, scope: !1227)
!1308 = !DILocation(line: 265, column: 10, scope: !1227)
!1309 = !DILocation(line: 266, column: 15, scope: !1227)
!1310 = !DILocation(line: 267, column: 10, scope: !1227)
!1311 = !DILocation(line: 268, column: 8, scope: !1227)
!1312 = !DILocation(line: 271, column: 8, scope: !1227)
!1313 = !DILocation(line: 272, column: 8, scope: !1227)
!1314 = !DILocation(line: 273, column: 8, scope: !1227)
!1315 = !DILocation(line: 314, column: 2, scope: !1227)
!1316 = !DILocation(line: 316, column: 3, scope: !1227)
!1317 = !DILocation(line: 323, column: 11, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1227, file: !52, line: 317, column: 5)
!1319 = !DILocation(line: 323, column: 12, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1318, file: !52, line: 323, column: 11)
!1321 = !DILocation(line: 324, column: 9, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !52, line: 324, column: 9)
!1323 = distinct !DILexicalBlock(scope: !1320, file: !52, line: 324, column: 9)
!1324 = !DILocation(line: 324, column: 9, scope: !1323)
!1325 = !DILocation(line: 362, column: 26, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !52, line: 340, column: 11)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !52, line: 339, column: 13)
!1328 = distinct !DILexicalBlock(scope: !1318, file: !52, line: 338, column: 7)
!1329 = !DILocation(line: 363, column: 27, scope: !1326)
!1330 = !DILocation(line: 364, column: 11, scope: !1326)
!1331 = !DILocation(line: 365, column: 14, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1328, file: !52, line: 365, column: 13)
!1333 = !DILocation(line: 365, column: 13, scope: !1328)
!1334 = !DILocation(line: 366, column: 43, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !52, line: 366, column: 11)
!1336 = distinct !DILexicalBlock(scope: !1332, file: !52, line: 366, column: 11)
!1337 = !DILocation(line: 366, column: 11, scope: !1336)
!1338 = !DILocation(line: 367, column: 13, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !52, line: 367, column: 13)
!1340 = distinct !DILexicalBlock(scope: !1335, file: !52, line: 367, column: 13)
!1341 = !DILocation(line: 367, column: 13, scope: !1340)
!1342 = !DILocation(line: 366, column: 70, scope: !1335)
!1343 = distinct !{!1343, !1337, !1344, !690}
!1344 = !DILocation(line: 367, column: 13, scope: !1336)
!1345 = !DILocation(line: 264, column: 10, scope: !1227)
!1346 = !DILocation(line: 370, column: 28, scope: !1328)
!1347 = !DILocation(line: 372, column: 7, scope: !1318)
!1348 = !DILocation(line: 376, column: 7, scope: !1318)
!1349 = !DILocation(line: 379, column: 7, scope: !1318)
!1350 = !DILocation(line: 381, column: 12, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1318, file: !52, line: 381, column: 11)
!1352 = !DILocation(line: 381, column: 11, scope: !1318)
!1353 = !DILocation(line: 386, column: 12, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1318, file: !52, line: 386, column: 11)
!1355 = !DILocation(line: 386, column: 11, scope: !1318)
!1356 = !DILocation(line: 387, column: 9, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !52, line: 387, column: 9)
!1358 = distinct !DILexicalBlock(scope: !1354, file: !52, line: 387, column: 9)
!1359 = !DILocation(line: 387, column: 9, scope: !1358)
!1360 = !DILocation(line: 394, column: 7, scope: !1318)
!1361 = !DILocation(line: 397, column: 7, scope: !1318)
!1362 = !DILocation(line: 400, column: 8, scope: !1256)
!1363 = !DILocation(line: 0, scope: !1256)
!1364 = !DILocation(line: 400, column: 27, scope: !1255)
!1365 = !DILocation(line: 400, column: 19, scope: !1255)
!1366 = !DILocation(line: 400, column: 41, scope: !1255)
!1367 = !DILocation(line: 400, column: 48, scope: !1255)
!1368 = !DILocation(line: 400, column: 3, scope: !1256)
!1369 = !DILocation(line: 400, column: 60, scope: !1255)
!1370 = !DILocation(line: 0, scope: !1254)
!1371 = !DILocation(line: 409, column: 11, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1254, file: !52, line: 408, column: 11)
!1373 = !DILocation(line: 411, column: 17, scope: !1372)
!1374 = !DILocation(line: 412, column: 39, scope: !1372)
!1375 = !DILocation(line: 416, column: 32, scope: !1372)
!1376 = !DILocation(line: 412, column: 19, scope: !1372)
!1377 = !DILocation(line: 412, column: 15, scope: !1372)
!1378 = !DILocation(line: 417, column: 11, scope: !1372)
!1379 = !DILocation(line: 417, column: 26, scope: !1372)
!1380 = !DILocation(line: 417, column: 14, scope: !1372)
!1381 = !DILocation(line: 417, column: 63, scope: !1372)
!1382 = !DILocation(line: 408, column: 11, scope: !1254)
!1383 = !DILocation(line: 424, column: 11, scope: !1254)
!1384 = !DILocation(line: 425, column: 7, scope: !1254)
!1385 = !DILocation(line: 428, column: 15, scope: !1263)
!1386 = !DILocation(line: 430, column: 15, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !52, line: 430, column: 15)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !52, line: 429, column: 13)
!1389 = distinct !DILexicalBlock(scope: !1263, file: !52, line: 428, column: 15)
!1390 = !DILocation(line: 430, column: 15, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1387, file: !52, line: 430, column: 15)
!1392 = !DILocation(line: 430, column: 15, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !52, line: 430, column: 15)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !52, line: 430, column: 15)
!1395 = distinct !DILexicalBlock(scope: !1391, file: !52, line: 430, column: 15)
!1396 = !DILocation(line: 430, column: 15, scope: !1394)
!1397 = !DILocation(line: 430, column: 15, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !52, line: 430, column: 15)
!1399 = distinct !DILexicalBlock(scope: !1395, file: !52, line: 430, column: 15)
!1400 = !DILocation(line: 430, column: 15, scope: !1399)
!1401 = !DILocation(line: 430, column: 15, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !52, line: 430, column: 15)
!1403 = distinct !DILexicalBlock(scope: !1395, file: !52, line: 430, column: 15)
!1404 = !DILocation(line: 430, column: 15, scope: !1403)
!1405 = !DILocation(line: 430, column: 15, scope: !1395)
!1406 = !DILocation(line: 430, column: 15, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !52, line: 430, column: 15)
!1408 = distinct !DILexicalBlock(scope: !1387, file: !52, line: 430, column: 15)
!1409 = !DILocation(line: 430, column: 15, scope: !1408)
!1410 = !DILocation(line: 438, column: 19, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1388, file: !52, line: 437, column: 19)
!1412 = !DILocation(line: 438, column: 48, scope: !1411)
!1413 = !DILocation(line: 438, column: 59, scope: !1411)
!1414 = !DILocation(line: 440, column: 19, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !52, line: 440, column: 19)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !52, line: 440, column: 19)
!1417 = distinct !DILexicalBlock(scope: !1411, file: !52, line: 439, column: 17)
!1418 = !DILocation(line: 440, column: 19, scope: !1416)
!1419 = !DILocation(line: 441, column: 19, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !52, line: 441, column: 19)
!1421 = distinct !DILexicalBlock(scope: !1417, file: !52, line: 441, column: 19)
!1422 = !DILocation(line: 441, column: 19, scope: !1421)
!1423 = !DILocation(line: 442, column: 17, scope: !1417)
!1424 = !DILocation(line: 449, column: 20, scope: !1389)
!1425 = !DILocation(line: 454, column: 11, scope: !1263)
!1426 = !DILocation(line: 457, column: 19, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1263, file: !52, line: 455, column: 13)
!1428 = !DILocation(line: 463, column: 19, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1427, file: !52, line: 462, column: 19)
!1430 = !DILocation(line: 463, column: 47, scope: !1429)
!1431 = !DILocation(line: 463, column: 41, scope: !1429)
!1432 = !DILocation(line: 463, column: 52, scope: !1429)
!1433 = !DILocation(line: 462, column: 19, scope: !1427)
!1434 = !DILocation(line: 464, column: 25, scope: !1429)
!1435 = !DILocation(line: 464, column: 17, scope: !1429)
!1436 = !DILocation(line: 471, column: 25, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1429, file: !52, line: 465, column: 19)
!1438 = !DILocation(line: 475, column: 21, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !52, line: 475, column: 21)
!1440 = distinct !DILexicalBlock(scope: !1437, file: !52, line: 475, column: 21)
!1441 = !DILocation(line: 475, column: 21, scope: !1440)
!1442 = !DILocation(line: 476, column: 21, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !52, line: 476, column: 21)
!1444 = distinct !DILexicalBlock(scope: !1437, file: !52, line: 476, column: 21)
!1445 = !DILocation(line: 476, column: 21, scope: !1444)
!1446 = !DILocation(line: 477, column: 21, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !52, line: 477, column: 21)
!1448 = distinct !DILexicalBlock(scope: !1437, file: !52, line: 477, column: 21)
!1449 = !DILocation(line: 477, column: 21, scope: !1448)
!1450 = !DILocation(line: 478, column: 21, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !52, line: 478, column: 21)
!1452 = distinct !DILexicalBlock(scope: !1437, file: !52, line: 478, column: 21)
!1453 = !DILocation(line: 478, column: 21, scope: !1452)
!1454 = !DILocation(line: 479, column: 21, scope: !1437)
!1455 = !DILocation(line: 492, column: 31, scope: !1263)
!1456 = !DILocation(line: 493, column: 31, scope: !1263)
!1457 = !DILocation(line: 495, column: 31, scope: !1263)
!1458 = !DILocation(line: 496, column: 31, scope: !1263)
!1459 = !DILocation(line: 497, column: 31, scope: !1263)
!1460 = !DILocation(line: 500, column: 15, scope: !1263)
!1461 = !DILocation(line: 502, column: 19, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !52, line: 501, column: 13)
!1463 = distinct !DILexicalBlock(scope: !1263, file: !52, line: 500, column: 15)
!1464 = !DILocation(line: 509, column: 33, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1263, file: !52, line: 509, column: 15)
!1466 = !DILocation(line: 0, scope: !1263)
!1467 = !DILocation(line: 512, column: 9, scope: !1263)
!1468 = !DILocation(line: 514, column: 15, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1263, file: !52, line: 513, column: 15)
!1470 = !DILocation(line: 517, column: 9, scope: !1263)
!1471 = !DILocation(line: 518, column: 15, scope: !1263)
!1472 = !DILocation(line: 526, column: 15, scope: !1263)
!1473 = !DILocation(line: 526, column: 40, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1263, file: !52, line: 526, column: 15)
!1475 = !DILocation(line: 526, column: 47, scope: !1474)
!1476 = !DILocation(line: 526, column: 18, scope: !1474)
!1477 = !DILocation(line: 530, column: 17, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1263, file: !52, line: 530, column: 15)
!1479 = !DILocation(line: 530, column: 15, scope: !1263)
!1480 = !DILocation(line: 535, column: 11, scope: !1263)
!1481 = !DILocation(line: 549, column: 15, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1263, file: !52, line: 548, column: 15)
!1483 = !DILocation(line: 556, column: 15, scope: !1263)
!1484 = !DILocation(line: 558, column: 19, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !52, line: 557, column: 13)
!1486 = distinct !DILexicalBlock(scope: !1263, file: !52, line: 556, column: 15)
!1487 = !DILocation(line: 561, column: 19, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1485, file: !52, line: 561, column: 19)
!1489 = !DILocation(line: 561, column: 30, scope: !1488)
!1490 = !DILocation(line: 570, column: 15, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !52, line: 570, column: 15)
!1492 = distinct !DILexicalBlock(scope: !1485, file: !52, line: 570, column: 15)
!1493 = !DILocation(line: 570, column: 15, scope: !1492)
!1494 = !DILocation(line: 571, column: 15, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !52, line: 571, column: 15)
!1496 = distinct !DILexicalBlock(scope: !1485, file: !52, line: 571, column: 15)
!1497 = !DILocation(line: 571, column: 15, scope: !1496)
!1498 = !DILocation(line: 572, column: 15, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !52, line: 572, column: 15)
!1500 = distinct !DILexicalBlock(scope: !1485, file: !52, line: 572, column: 15)
!1501 = !DILocation(line: 572, column: 15, scope: !1500)
!1502 = !DILocation(line: 574, column: 13, scope: !1485)
!1503 = !DILocation(line: 614, column: 17, scope: !1262)
!1504 = !DILocation(line: 0, scope: !1262)
!1505 = !DILocation(line: 617, column: 29, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1267, file: !52, line: 615, column: 15)
!1507 = !{!1508, !1508, i64 0}
!1508 = !{!"short", !651, i64 0}
!1509 = !DILocation(line: 617, column: 27, scope: !1506)
!1510 = !DILocation(line: 678, column: 40, scope: !1262)
!1511 = !DILocation(line: 680, column: 23, scope: !1296)
!1512 = !DILocation(line: 621, column: 17, scope: !1266)
!1513 = !DILocation(line: 621, column: 27, scope: !1266)
!1514 = !DILocalVariable(name: "__dest", arg: 1, scope: !1515, file: !1516, line: 57, type: !46)
!1515 = distinct !DISubprogram(name: "memset", scope: !1516, file: !1516, line: 57, type: !1517, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1519)
!1516 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!46, !46, !23, !91}
!1519 = !{!1514, !1520, !1521}
!1520 = !DILocalVariable(name: "__ch", arg: 2, scope: !1515, file: !1516, line: 57, type: !23)
!1521 = !DILocalVariable(name: "__len", arg: 3, scope: !1515, file: !1516, line: 57, type: !91)
!1522 = !DILocation(line: 0, scope: !1515, inlinedAt: !1523)
!1523 = distinct !DILocation(line: 622, column: 17, scope: !1266)
!1524 = !DILocation(line: 59, column: 10, scope: !1515, inlinedAt: !1523)
!1525 = !DILocation(line: 626, column: 29, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1266, file: !52, line: 626, column: 21)
!1527 = !DILocation(line: 626, column: 21, scope: !1266)
!1528 = !DILocation(line: 627, column: 29, scope: !1526)
!1529 = !DILocation(line: 627, column: 19, scope: !1526)
!1530 = !DILocation(line: 629, column: 17, scope: !1266)
!1531 = !DILocation(line: 624, column: 19, scope: !1266)
!1532 = !DILocation(line: 625, column: 27, scope: !1266)
!1533 = !DILocation(line: 631, column: 21, scope: !1284)
!1534 = !DILocation(line: 632, column: 56, scope: !1284)
!1535 = !DILocation(line: 632, column: 50, scope: !1284)
!1536 = !DILocation(line: 633, column: 53, scope: !1284)
!1537 = !DILocation(line: 0, scope: !1284)
!1538 = !DILocation(line: 632, column: 36, scope: !1284)
!1539 = !DILocation(line: 634, column: 25, scope: !1284)
!1540 = !DILocation(line: 644, column: 38, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1291, file: !52, line: 642, column: 23)
!1542 = !DILocation(line: 644, column: 48, scope: !1541)
!1543 = !DILocation(line: 644, column: 25, scope: !1541)
!1544 = !DILocation(line: 644, column: 51, scope: !1541)
!1545 = !DILocation(line: 645, column: 28, scope: !1541)
!1546 = !DILocation(line: 644, column: 34, scope: !1541)
!1547 = distinct !{!1547, !1543, !1545, !690}
!1548 = !DILocation(line: 655, column: 29, scope: !1289)
!1549 = !DILocation(line: 0, scope: !1288)
!1550 = !DILocation(line: 659, column: 49, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !52, line: 658, column: 29)
!1552 = distinct !DILexicalBlock(scope: !1288, file: !52, line: 658, column: 29)
!1553 = !DILocation(line: 659, column: 39, scope: !1551)
!1554 = !DILocation(line: 659, column: 31, scope: !1551)
!1555 = !DILocation(line: 658, column: 53, scope: !1551)
!1556 = !DILocation(line: 658, column: 43, scope: !1551)
!1557 = !DILocation(line: 658, column: 29, scope: !1552)
!1558 = distinct !{!1558, !1557, !1559, !690}
!1559 = !DILocation(line: 667, column: 33, scope: !1552)
!1560 = !DILocation(line: 674, column: 19, scope: !1266)
!1561 = !DILocation(line: 670, column: 41, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1290, file: !52, line: 670, column: 29)
!1563 = !DILocation(line: 670, column: 31, scope: !1562)
!1564 = !DILocation(line: 670, column: 29, scope: !1290)
!1565 = !DILocation(line: 672, column: 27, scope: !1290)
!1566 = !DILocation(line: 675, column: 26, scope: !1266)
!1567 = !DILocation(line: 675, column: 24, scope: !1266)
!1568 = !DILocation(line: 674, column: 19, scope: !1284)
!1569 = distinct !{!1569, !1530, !1570, !690}
!1570 = !DILocation(line: 675, column: 44, scope: !1266)
!1571 = !DILocation(line: 676, column: 15, scope: !1267)
!1572 = !DILocation(line: 680, column: 19, scope: !1296)
!1573 = !DILocation(line: 680, column: 45, scope: !1296)
!1574 = !DILocation(line: 684, column: 33, scope: !1295)
!1575 = !DILocation(line: 0, scope: !1295)
!1576 = !DILocation(line: 686, column: 17, scope: !1295)
!1577 = !DILocation(line: 405, column: 12, scope: !1254)
!1578 = !DILocation(line: 688, column: 43, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !52, line: 688, column: 25)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !52, line: 687, column: 19)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !52, line: 686, column: 17)
!1582 = distinct !DILexicalBlock(scope: !1295, file: !52, line: 686, column: 17)
!1583 = !DILocation(line: 690, column: 25, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !52, line: 690, column: 25)
!1585 = distinct !DILexicalBlock(scope: !1579, file: !52, line: 689, column: 23)
!1586 = !DILocation(line: 690, column: 25, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1584, file: !52, line: 690, column: 25)
!1588 = !DILocation(line: 690, column: 25, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !52, line: 690, column: 25)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !52, line: 690, column: 25)
!1591 = distinct !DILexicalBlock(scope: !1587, file: !52, line: 690, column: 25)
!1592 = !DILocation(line: 690, column: 25, scope: !1590)
!1593 = !DILocation(line: 690, column: 25, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !52, line: 690, column: 25)
!1595 = distinct !DILexicalBlock(scope: !1591, file: !52, line: 690, column: 25)
!1596 = !DILocation(line: 690, column: 25, scope: !1595)
!1597 = !DILocation(line: 690, column: 25, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !52, line: 690, column: 25)
!1599 = distinct !DILexicalBlock(scope: !1591, file: !52, line: 690, column: 25)
!1600 = !DILocation(line: 690, column: 25, scope: !1599)
!1601 = !DILocation(line: 690, column: 25, scope: !1591)
!1602 = !DILocation(line: 690, column: 25, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !52, line: 690, column: 25)
!1604 = distinct !DILexicalBlock(scope: !1584, file: !52, line: 690, column: 25)
!1605 = !DILocation(line: 690, column: 25, scope: !1604)
!1606 = !DILocation(line: 691, column: 25, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !52, line: 691, column: 25)
!1608 = distinct !DILexicalBlock(scope: !1585, file: !52, line: 691, column: 25)
!1609 = !DILocation(line: 691, column: 25, scope: !1608)
!1610 = !DILocation(line: 692, column: 25, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !52, line: 692, column: 25)
!1612 = distinct !DILexicalBlock(scope: !1585, file: !52, line: 692, column: 25)
!1613 = !DILocation(line: 692, column: 25, scope: !1612)
!1614 = !DILocation(line: 693, column: 38, scope: !1585)
!1615 = !DILocation(line: 693, column: 33, scope: !1585)
!1616 = !DILocation(line: 694, column: 23, scope: !1585)
!1617 = !DILocation(line: 695, column: 30, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1579, file: !52, line: 695, column: 30)
!1619 = !DILocation(line: 695, column: 30, scope: !1579)
!1620 = !DILocation(line: 697, column: 25, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !52, line: 697, column: 25)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !52, line: 697, column: 25)
!1623 = distinct !DILexicalBlock(scope: !1618, file: !52, line: 696, column: 23)
!1624 = !DILocation(line: 697, column: 25, scope: !1622)
!1625 = !DILocation(line: 699, column: 23, scope: !1623)
!1626 = !DILocation(line: 700, column: 35, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1580, file: !52, line: 700, column: 25)
!1628 = !DILocation(line: 700, column: 30, scope: !1627)
!1629 = !DILocation(line: 700, column: 25, scope: !1580)
!1630 = !DILocation(line: 702, column: 21, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !52, line: 702, column: 21)
!1632 = distinct !DILexicalBlock(scope: !1580, file: !52, line: 702, column: 21)
!1633 = !DILocation(line: 702, column: 21, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !52, line: 702, column: 21)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !52, line: 702, column: 21)
!1636 = distinct !DILexicalBlock(scope: !1631, file: !52, line: 702, column: 21)
!1637 = !DILocation(line: 702, column: 21, scope: !1635)
!1638 = !DILocation(line: 702, column: 21, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !52, line: 702, column: 21)
!1640 = distinct !DILexicalBlock(scope: !1636, file: !52, line: 702, column: 21)
!1641 = !DILocation(line: 702, column: 21, scope: !1640)
!1642 = !DILocation(line: 702, column: 21, scope: !1636)
!1643 = !DILocation(line: 0, scope: !1580)
!1644 = !DILocation(line: 703, column: 21, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !52, line: 703, column: 21)
!1646 = distinct !DILexicalBlock(scope: !1580, file: !52, line: 703, column: 21)
!1647 = !DILocation(line: 703, column: 21, scope: !1646)
!1648 = !DILocation(line: 704, column: 25, scope: !1580)
!1649 = !DILocation(line: 686, column: 17, scope: !1581)
!1650 = distinct !{!1650, !1651, !1652}
!1651 = !DILocation(line: 686, column: 17, scope: !1582)
!1652 = !DILocation(line: 705, column: 19, scope: !1582)
!1653 = !DILocation(line: 416, column: 30, scope: !1372)
!1654 = !DILocation(line: 712, column: 34, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1254, file: !52, line: 712, column: 11)
!1656 = !DILocation(line: 715, column: 35, scope: !1655)
!1657 = !DILocation(line: 715, column: 17, scope: !1655)
!1658 = !DILocation(line: 715, column: 47, scope: !1655)
!1659 = !DILocation(line: 715, column: 65, scope: !1655)
!1660 = !DILocation(line: 716, column: 11, scope: !1655)
!1661 = !DILocation(line: 712, column: 11, scope: !1254)
!1662 = !DILocation(line: 400, column: 10, scope: !1256)
!1663 = !DILocation(line: 719, column: 5, scope: !1254)
!1664 = !DILocation(line: 720, column: 7, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1254, file: !52, line: 720, column: 7)
!1666 = !DILocation(line: 720, column: 7, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1665, file: !52, line: 720, column: 7)
!1668 = !DILocation(line: 720, column: 7, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !52, line: 720, column: 7)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !52, line: 720, column: 7)
!1671 = distinct !DILexicalBlock(scope: !1667, file: !52, line: 720, column: 7)
!1672 = !DILocation(line: 720, column: 7, scope: !1670)
!1673 = !DILocation(line: 720, column: 7, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !52, line: 720, column: 7)
!1675 = distinct !DILexicalBlock(scope: !1671, file: !52, line: 720, column: 7)
!1676 = !DILocation(line: 720, column: 7, scope: !1675)
!1677 = !DILocation(line: 720, column: 7, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !52, line: 720, column: 7)
!1679 = distinct !DILexicalBlock(scope: !1671, file: !52, line: 720, column: 7)
!1680 = !DILocation(line: 720, column: 7, scope: !1679)
!1681 = !DILocation(line: 720, column: 7, scope: !1671)
!1682 = !DILocation(line: 720, column: 7, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !52, line: 720, column: 7)
!1684 = distinct !DILexicalBlock(scope: !1665, file: !52, line: 720, column: 7)
!1685 = !DILocation(line: 720, column: 7, scope: !1684)
!1686 = !DILocation(line: 722, column: 5, scope: !1254)
!1687 = !DILocation(line: 723, column: 7, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !52, line: 723, column: 7)
!1689 = distinct !DILexicalBlock(scope: !1254, file: !52, line: 723, column: 7)
!1690 = !DILocation(line: 424, column: 9, scope: !1254)
!1691 = !DILocation(line: 723, column: 7, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !52, line: 723, column: 7)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !52, line: 723, column: 7)
!1694 = distinct !DILexicalBlock(scope: !1688, file: !52, line: 723, column: 7)
!1695 = !DILocation(line: 723, column: 7, scope: !1693)
!1696 = !DILocation(line: 723, column: 7, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !52, line: 723, column: 7)
!1698 = distinct !DILexicalBlock(scope: !1694, file: !52, line: 723, column: 7)
!1699 = !DILocation(line: 723, column: 7, scope: !1698)
!1700 = !DILocation(line: 723, column: 7, scope: !1694)
!1701 = !DILocation(line: 724, column: 7, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !52, line: 724, column: 7)
!1703 = distinct !DILexicalBlock(scope: !1254, file: !52, line: 724, column: 7)
!1704 = !DILocation(line: 724, column: 7, scope: !1703)
!1705 = !DILocation(line: 726, column: 13, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1254, file: !52, line: 726, column: 11)
!1707 = !DILocation(line: 726, column: 11, scope: !1254)
!1708 = !DILocation(line: 728, column: 5, scope: !1255)
!1709 = !DILocation(line: 400, column: 75, scope: !1255)
!1710 = !DILocation(line: 400, column: 3, scope: !1255)
!1711 = distinct !{!1711, !1368, !1712, !690}
!1712 = !DILocation(line: 728, column: 5, scope: !1256)
!1713 = !DILocation(line: 730, column: 11, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1227, file: !52, line: 730, column: 7)
!1715 = !DILocation(line: 730, column: 16, scope: !1714)
!1716 = !DILocation(line: 738, column: 51, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1227, file: !52, line: 738, column: 7)
!1718 = !DILocation(line: 741, column: 11, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !52, line: 741, column: 11)
!1720 = distinct !DILexicalBlock(scope: !1717, file: !52, line: 740, column: 5)
!1721 = !DILocation(line: 741, column: 11, scope: !1720)
!1722 = !DILocation(line: 742, column: 16, scope: !1719)
!1723 = !DILocation(line: 742, column: 9, scope: !1719)
!1724 = !DILocation(line: 746, column: 18, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1719, file: !52, line: 746, column: 16)
!1726 = !DILocation(line: 746, column: 29, scope: !1725)
!1727 = !DILocation(line: 755, column: 7, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1227, file: !52, line: 755, column: 7)
!1729 = !DILocation(line: 755, column: 20, scope: !1728)
!1730 = !DILocation(line: 756, column: 12, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !52, line: 756, column: 5)
!1732 = distinct !DILexicalBlock(scope: !1728, file: !52, line: 756, column: 5)
!1733 = !DILocation(line: 756, column: 5, scope: !1732)
!1734 = !DILocation(line: 757, column: 7, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !52, line: 757, column: 7)
!1736 = distinct !DILexicalBlock(scope: !1731, file: !52, line: 757, column: 7)
!1737 = !DILocation(line: 757, column: 7, scope: !1736)
!1738 = !DILocation(line: 756, column: 39, scope: !1731)
!1739 = distinct !{!1739, !1733, !1740, !690}
!1740 = !DILocation(line: 757, column: 7, scope: !1732)
!1741 = !DILocation(line: 759, column: 11, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1227, file: !52, line: 759, column: 7)
!1743 = !DILocation(line: 759, column: 7, scope: !1227)
!1744 = !DILocation(line: 760, column: 5, scope: !1742)
!1745 = !DILocation(line: 760, column: 17, scope: !1742)
!1746 = !DILocation(line: 763, column: 2, scope: !1227)
!1747 = !DILocation(line: 766, column: 51, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1227, file: !52, line: 766, column: 7)
!1749 = !DILocation(line: 766, column: 21, scope: !1748)
!1750 = !DILocation(line: 770, column: 42, scope: !1227)
!1751 = !DILocation(line: 768, column: 10, scope: !1227)
!1752 = !DILocation(line: 768, column: 3, scope: !1227)
!1753 = !DILocation(line: 772, column: 1, scope: !1227)
!1754 = distinct !DISubprogram(name: "gettext_quote", scope: !52, file: !52, line: 207, type: !1755, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1757)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!6, !6, !54}
!1757 = !{!1758, !1759, !1760, !1761}
!1758 = !DILocalVariable(name: "msgid", arg: 1, scope: !1754, file: !52, line: 207, type: !6)
!1759 = !DILocalVariable(name: "s", arg: 2, scope: !1754, file: !52, line: 207, type: !54)
!1760 = !DILocalVariable(name: "translation", scope: !1754, file: !52, line: 209, type: !6)
!1761 = !DILocalVariable(name: "locale_code", scope: !1754, file: !52, line: 210, type: !6)
!1762 = !DILocation(line: 0, scope: !1754)
!1763 = !DILocation(line: 209, column: 29, scope: !1754)
!1764 = !DILocation(line: 212, column: 19, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1754, file: !52, line: 212, column: 7)
!1766 = !DILocation(line: 212, column: 7, scope: !1754)
!1767 = !DILocation(line: 233, column: 17, scope: !1754)
!1768 = !DILocalVariable(name: "s1", arg: 1, scope: !1769, file: !1770, line: 160, type: !6)
!1769 = distinct !DISubprogram(name: "strcaseeq0", scope: !1770, file: !1770, line: 160, type: !1771, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1773)
!1770 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1773 = !{!1768, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783}
!1774 = !DILocalVariable(name: "s2", arg: 2, scope: !1769, file: !1770, line: 160, type: !6)
!1775 = !DILocalVariable(name: "s20", arg: 3, scope: !1769, file: !1770, line: 160, type: !8)
!1776 = !DILocalVariable(name: "s21", arg: 4, scope: !1769, file: !1770, line: 160, type: !8)
!1777 = !DILocalVariable(name: "s22", arg: 5, scope: !1769, file: !1770, line: 160, type: !8)
!1778 = !DILocalVariable(name: "s23", arg: 6, scope: !1769, file: !1770, line: 160, type: !8)
!1779 = !DILocalVariable(name: "s24", arg: 7, scope: !1769, file: !1770, line: 160, type: !8)
!1780 = !DILocalVariable(name: "s25", arg: 8, scope: !1769, file: !1770, line: 160, type: !8)
!1781 = !DILocalVariable(name: "s26", arg: 9, scope: !1769, file: !1770, line: 160, type: !8)
!1782 = !DILocalVariable(name: "s27", arg: 10, scope: !1769, file: !1770, line: 160, type: !8)
!1783 = !DILocalVariable(name: "s28", arg: 11, scope: !1769, file: !1770, line: 160, type: !8)
!1784 = !DILocation(line: 0, scope: !1769, inlinedAt: !1785)
!1785 = distinct !DILocation(line: 234, column: 7, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1754, file: !52, line: 234, column: 7)
!1787 = !DILocation(line: 162, column: 7, scope: !1788, inlinedAt: !1785)
!1788 = distinct !DILexicalBlock(scope: !1769, file: !1770, line: 162, column: 7)
!1789 = !DILocalVariable(name: "s1", arg: 1, scope: !1790, file: !1770, line: 146, type: !6)
!1790 = distinct !DISubprogram(name: "strcaseeq1", scope: !1770, file: !1770, line: 146, type: !1791, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1793)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1793 = !{!1789, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802}
!1794 = !DILocalVariable(name: "s2", arg: 2, scope: !1790, file: !1770, line: 146, type: !6)
!1795 = !DILocalVariable(name: "s21", arg: 3, scope: !1790, file: !1770, line: 146, type: !8)
!1796 = !DILocalVariable(name: "s22", arg: 4, scope: !1790, file: !1770, line: 146, type: !8)
!1797 = !DILocalVariable(name: "s23", arg: 5, scope: !1790, file: !1770, line: 146, type: !8)
!1798 = !DILocalVariable(name: "s24", arg: 6, scope: !1790, file: !1770, line: 146, type: !8)
!1799 = !DILocalVariable(name: "s25", arg: 7, scope: !1790, file: !1770, line: 146, type: !8)
!1800 = !DILocalVariable(name: "s26", arg: 8, scope: !1790, file: !1770, line: 146, type: !8)
!1801 = !DILocalVariable(name: "s27", arg: 9, scope: !1790, file: !1770, line: 146, type: !8)
!1802 = !DILocalVariable(name: "s28", arg: 10, scope: !1790, file: !1770, line: 146, type: !8)
!1803 = !DILocation(line: 0, scope: !1790, inlinedAt: !1804)
!1804 = distinct !DILocation(line: 167, column: 16, scope: !1805, inlinedAt: !1785)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !1770, line: 164, column: 11)
!1806 = distinct !DILexicalBlock(scope: !1788, file: !1770, line: 163, column: 5)
!1807 = !DILocation(line: 148, column: 7, scope: !1808, inlinedAt: !1804)
!1808 = distinct !DILexicalBlock(scope: !1790, file: !1770, line: 148, column: 7)
!1809 = !DILocalVariable(name: "s1", arg: 1, scope: !1810, file: !1770, line: 132, type: !6)
!1810 = distinct !DISubprogram(name: "strcaseeq2", scope: !1770, file: !1770, line: 132, type: !1811, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1813)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1813 = !{!1809, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821}
!1814 = !DILocalVariable(name: "s2", arg: 2, scope: !1810, file: !1770, line: 132, type: !6)
!1815 = !DILocalVariable(name: "s22", arg: 3, scope: !1810, file: !1770, line: 132, type: !8)
!1816 = !DILocalVariable(name: "s23", arg: 4, scope: !1810, file: !1770, line: 132, type: !8)
!1817 = !DILocalVariable(name: "s24", arg: 5, scope: !1810, file: !1770, line: 132, type: !8)
!1818 = !DILocalVariable(name: "s25", arg: 6, scope: !1810, file: !1770, line: 132, type: !8)
!1819 = !DILocalVariable(name: "s26", arg: 7, scope: !1810, file: !1770, line: 132, type: !8)
!1820 = !DILocalVariable(name: "s27", arg: 8, scope: !1810, file: !1770, line: 132, type: !8)
!1821 = !DILocalVariable(name: "s28", arg: 9, scope: !1810, file: !1770, line: 132, type: !8)
!1822 = !DILocation(line: 0, scope: !1810, inlinedAt: !1823)
!1823 = distinct !DILocation(line: 153, column: 16, scope: !1824, inlinedAt: !1804)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !1770, line: 150, column: 11)
!1825 = distinct !DILexicalBlock(scope: !1808, file: !1770, line: 149, column: 5)
!1826 = !DILocation(line: 134, column: 7, scope: !1827, inlinedAt: !1823)
!1827 = distinct !DILexicalBlock(scope: !1810, file: !1770, line: 134, column: 7)
!1828 = !DILocalVariable(name: "s1", arg: 1, scope: !1829, file: !1770, line: 118, type: !6)
!1829 = distinct !DISubprogram(name: "strcaseeq3", scope: !1770, file: !1770, line: 118, type: !1830, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1832)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8}
!1832 = !{!1828, !1833, !1834, !1835, !1836, !1837, !1838, !1839}
!1833 = !DILocalVariable(name: "s2", arg: 2, scope: !1829, file: !1770, line: 118, type: !6)
!1834 = !DILocalVariable(name: "s23", arg: 3, scope: !1829, file: !1770, line: 118, type: !8)
!1835 = !DILocalVariable(name: "s24", arg: 4, scope: !1829, file: !1770, line: 118, type: !8)
!1836 = !DILocalVariable(name: "s25", arg: 5, scope: !1829, file: !1770, line: 118, type: !8)
!1837 = !DILocalVariable(name: "s26", arg: 6, scope: !1829, file: !1770, line: 118, type: !8)
!1838 = !DILocalVariable(name: "s27", arg: 7, scope: !1829, file: !1770, line: 118, type: !8)
!1839 = !DILocalVariable(name: "s28", arg: 8, scope: !1829, file: !1770, line: 118, type: !8)
!1840 = !DILocation(line: 0, scope: !1829, inlinedAt: !1841)
!1841 = distinct !DILocation(line: 139, column: 16, scope: !1842, inlinedAt: !1823)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !1770, line: 136, column: 11)
!1843 = distinct !DILexicalBlock(scope: !1827, file: !1770, line: 135, column: 5)
!1844 = !DILocation(line: 120, column: 7, scope: !1845, inlinedAt: !1841)
!1845 = distinct !DILexicalBlock(scope: !1829, file: !1770, line: 120, column: 7)
!1846 = !DILocation(line: 120, column: 7, scope: !1829, inlinedAt: !1841)
!1847 = !DILocalVariable(name: "s1", arg: 1, scope: !1848, file: !1770, line: 104, type: !6)
!1848 = distinct !DISubprogram(name: "strcaseeq4", scope: !1770, file: !1770, line: 104, type: !1849, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1851)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!23, !6, !6, !8, !8, !8, !8, !8}
!1851 = !{!1847, !1852, !1853, !1854, !1855, !1856, !1857}
!1852 = !DILocalVariable(name: "s2", arg: 2, scope: !1848, file: !1770, line: 104, type: !6)
!1853 = !DILocalVariable(name: "s24", arg: 3, scope: !1848, file: !1770, line: 104, type: !8)
!1854 = !DILocalVariable(name: "s25", arg: 4, scope: !1848, file: !1770, line: 104, type: !8)
!1855 = !DILocalVariable(name: "s26", arg: 5, scope: !1848, file: !1770, line: 104, type: !8)
!1856 = !DILocalVariable(name: "s27", arg: 6, scope: !1848, file: !1770, line: 104, type: !8)
!1857 = !DILocalVariable(name: "s28", arg: 7, scope: !1848, file: !1770, line: 104, type: !8)
!1858 = !DILocation(line: 0, scope: !1848, inlinedAt: !1859)
!1859 = distinct !DILocation(line: 125, column: 16, scope: !1860, inlinedAt: !1841)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !1770, line: 122, column: 11)
!1861 = distinct !DILexicalBlock(scope: !1845, file: !1770, line: 121, column: 5)
!1862 = !DILocation(line: 106, column: 7, scope: !1863, inlinedAt: !1859)
!1863 = distinct !DILexicalBlock(scope: !1848, file: !1770, line: 106, column: 7)
!1864 = !DILocation(line: 106, column: 7, scope: !1848, inlinedAt: !1859)
!1865 = !DILocalVariable(name: "s1", arg: 1, scope: !1866, file: !1770, line: 90, type: !6)
!1866 = distinct !DISubprogram(name: "strcaseeq5", scope: !1770, file: !1770, line: 90, type: !1867, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1869)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!23, !6, !6, !8, !8, !8, !8}
!1869 = !{!1865, !1870, !1871, !1872, !1873, !1874}
!1870 = !DILocalVariable(name: "s2", arg: 2, scope: !1866, file: !1770, line: 90, type: !6)
!1871 = !DILocalVariable(name: "s25", arg: 3, scope: !1866, file: !1770, line: 90, type: !8)
!1872 = !DILocalVariable(name: "s26", arg: 4, scope: !1866, file: !1770, line: 90, type: !8)
!1873 = !DILocalVariable(name: "s27", arg: 5, scope: !1866, file: !1770, line: 90, type: !8)
!1874 = !DILocalVariable(name: "s28", arg: 6, scope: !1866, file: !1770, line: 90, type: !8)
!1875 = !DILocation(line: 0, scope: !1866, inlinedAt: !1876)
!1876 = distinct !DILocation(line: 111, column: 16, scope: !1877, inlinedAt: !1859)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !1770, line: 108, column: 11)
!1878 = distinct !DILexicalBlock(scope: !1863, file: !1770, line: 107, column: 5)
!1879 = !DILocation(line: 92, column: 7, scope: !1880, inlinedAt: !1876)
!1880 = distinct !DILexicalBlock(scope: !1866, file: !1770, line: 92, column: 7)
!1881 = !DILocation(line: 92, column: 7, scope: !1866, inlinedAt: !1876)
!1882 = !DILocation(line: 235, column: 12, scope: !1786)
!1883 = !DILocation(line: 235, column: 21, scope: !1786)
!1884 = !DILocation(line: 235, column: 5, scope: !1786)
!1885 = !DILocation(line: 0, scope: !1790, inlinedAt: !1886)
!1886 = distinct !DILocation(line: 167, column: 16, scope: !1805, inlinedAt: !1887)
!1887 = distinct !DILocation(line: 236, column: 7, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1754, file: !52, line: 236, column: 7)
!1889 = !DILocation(line: 148, column: 7, scope: !1808, inlinedAt: !1886)
!1890 = !DILocation(line: 0, scope: !1810, inlinedAt: !1891)
!1891 = distinct !DILocation(line: 153, column: 16, scope: !1824, inlinedAt: !1886)
!1892 = !DILocation(line: 134, column: 7, scope: !1827, inlinedAt: !1891)
!1893 = !DILocation(line: 134, column: 7, scope: !1810, inlinedAt: !1891)
!1894 = !DILocation(line: 0, scope: !1829, inlinedAt: !1895)
!1895 = distinct !DILocation(line: 139, column: 16, scope: !1842, inlinedAt: !1891)
!1896 = !DILocation(line: 120, column: 7, scope: !1845, inlinedAt: !1895)
!1897 = !DILocation(line: 120, column: 7, scope: !1829, inlinedAt: !1895)
!1898 = !DILocation(line: 0, scope: !1848, inlinedAt: !1899)
!1899 = distinct !DILocation(line: 125, column: 16, scope: !1860, inlinedAt: !1895)
!1900 = !DILocation(line: 106, column: 7, scope: !1863, inlinedAt: !1899)
!1901 = !DILocation(line: 106, column: 7, scope: !1848, inlinedAt: !1899)
!1902 = !DILocation(line: 0, scope: !1866, inlinedAt: !1903)
!1903 = distinct !DILocation(line: 111, column: 16, scope: !1877, inlinedAt: !1899)
!1904 = !DILocation(line: 92, column: 7, scope: !1880, inlinedAt: !1903)
!1905 = !DILocation(line: 92, column: 7, scope: !1866, inlinedAt: !1903)
!1906 = !DILocalVariable(name: "s1", arg: 1, scope: !1907, file: !1770, line: 76, type: !6)
!1907 = distinct !DISubprogram(name: "strcaseeq6", scope: !1770, file: !1770, line: 76, type: !1908, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1910)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!23, !6, !6, !8, !8, !8}
!1910 = !{!1906, !1911, !1912, !1913, !1914}
!1911 = !DILocalVariable(name: "s2", arg: 2, scope: !1907, file: !1770, line: 76, type: !6)
!1912 = !DILocalVariable(name: "s26", arg: 3, scope: !1907, file: !1770, line: 76, type: !8)
!1913 = !DILocalVariable(name: "s27", arg: 4, scope: !1907, file: !1770, line: 76, type: !8)
!1914 = !DILocalVariable(name: "s28", arg: 5, scope: !1907, file: !1770, line: 76, type: !8)
!1915 = !DILocation(line: 0, scope: !1907, inlinedAt: !1916)
!1916 = distinct !DILocation(line: 97, column: 16, scope: !1917, inlinedAt: !1903)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !1770, line: 94, column: 11)
!1918 = distinct !DILexicalBlock(scope: !1880, file: !1770, line: 93, column: 5)
!1919 = !DILocation(line: 78, column: 7, scope: !1920, inlinedAt: !1916)
!1920 = distinct !DILexicalBlock(scope: !1907, file: !1770, line: 78, column: 7)
!1921 = !DILocation(line: 78, column: 7, scope: !1907, inlinedAt: !1916)
!1922 = !DILocalVariable(name: "s1", arg: 1, scope: !1923, file: !1770, line: 62, type: !6)
!1923 = distinct !DISubprogram(name: "strcaseeq7", scope: !1770, file: !1770, line: 62, type: !1924, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1926)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!23, !6, !6, !8, !8}
!1926 = !{!1922, !1927, !1928, !1929}
!1927 = !DILocalVariable(name: "s2", arg: 2, scope: !1923, file: !1770, line: 62, type: !6)
!1928 = !DILocalVariable(name: "s27", arg: 3, scope: !1923, file: !1770, line: 62, type: !8)
!1929 = !DILocalVariable(name: "s28", arg: 4, scope: !1923, file: !1770, line: 62, type: !8)
!1930 = !DILocation(line: 0, scope: !1923, inlinedAt: !1931)
!1931 = distinct !DILocation(line: 83, column: 16, scope: !1932, inlinedAt: !1916)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !1770, line: 80, column: 11)
!1933 = distinct !DILexicalBlock(scope: !1920, file: !1770, line: 79, column: 5)
!1934 = !DILocation(line: 64, column: 7, scope: !1935, inlinedAt: !1931)
!1935 = distinct !DILexicalBlock(scope: !1923, file: !1770, line: 64, column: 7)
!1936 = !DILocation(line: 236, column: 7, scope: !1754)
!1937 = !DILocation(line: 237, column: 12, scope: !1888)
!1938 = !DILocation(line: 237, column: 21, scope: !1888)
!1939 = !DILocation(line: 237, column: 5, scope: !1888)
!1940 = !DILocation(line: 239, column: 13, scope: !1754)
!1941 = !DILocation(line: 239, column: 11, scope: !1754)
!1942 = !DILocation(line: 239, column: 3, scope: !1754)
!1943 = !DILocation(line: 240, column: 1, scope: !1754)
!1944 = !DISubprogram(name: "iswprint", scope: !1945, file: !1945, line: 120, type: !1946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1945 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!23, !56}
!1948 = !DISubprogram(name: "mbsinit", scope: !1949, file: !1949, line: 292, type: !1950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1949 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!23, !1952}
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1272)
!1954 = distinct !DISubprogram(name: "quotearg_alloc", scope: !52, file: !52, line: 799, type: !1955, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1957)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!47, !6, !91, !1118}
!1957 = !{!1958, !1959, !1960}
!1958 = !DILocalVariable(name: "arg", arg: 1, scope: !1954, file: !52, line: 799, type: !6)
!1959 = !DILocalVariable(name: "argsize", arg: 2, scope: !1954, file: !52, line: 799, type: !91)
!1960 = !DILocalVariable(name: "o", arg: 3, scope: !1954, file: !52, line: 800, type: !1118)
!1961 = !DILocation(line: 0, scope: !1954)
!1962 = !DILocalVariable(name: "arg", arg: 1, scope: !1963, file: !52, line: 812, type: !6)
!1963 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !52, file: !52, line: 812, type: !1964, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1966)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!47, !6, !91, !192, !1118}
!1966 = !{!1962, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974}
!1967 = !DILocalVariable(name: "argsize", arg: 2, scope: !1963, file: !52, line: 812, type: !91)
!1968 = !DILocalVariable(name: "size", arg: 3, scope: !1963, file: !52, line: 812, type: !192)
!1969 = !DILocalVariable(name: "o", arg: 4, scope: !1963, file: !52, line: 813, type: !1118)
!1970 = !DILocalVariable(name: "p", scope: !1963, file: !52, line: 815, type: !1118)
!1971 = !DILocalVariable(name: "e", scope: !1963, file: !52, line: 816, type: !23)
!1972 = !DILocalVariable(name: "flags", scope: !1963, file: !52, line: 818, type: !23)
!1973 = !DILocalVariable(name: "bufsize", scope: !1963, file: !52, line: 819, type: !91)
!1974 = !DILocalVariable(name: "buf", scope: !1963, file: !52, line: 823, type: !47)
!1975 = !DILocation(line: 0, scope: !1963, inlinedAt: !1976)
!1976 = distinct !DILocation(line: 802, column: 10, scope: !1954)
!1977 = !DILocation(line: 815, column: 37, scope: !1963, inlinedAt: !1976)
!1978 = !DILocation(line: 816, column: 11, scope: !1963, inlinedAt: !1976)
!1979 = !DILocation(line: 818, column: 18, scope: !1963, inlinedAt: !1976)
!1980 = !DILocation(line: 818, column: 24, scope: !1963, inlinedAt: !1976)
!1981 = !DILocation(line: 819, column: 69, scope: !1963, inlinedAt: !1976)
!1982 = !DILocation(line: 820, column: 53, scope: !1963, inlinedAt: !1976)
!1983 = !DILocation(line: 821, column: 49, scope: !1963, inlinedAt: !1976)
!1984 = !DILocation(line: 822, column: 49, scope: !1963, inlinedAt: !1976)
!1985 = !DILocation(line: 819, column: 20, scope: !1963, inlinedAt: !1976)
!1986 = !DILocation(line: 822, column: 62, scope: !1963, inlinedAt: !1976)
!1987 = !DILocalVariable(name: "n", arg: 1, scope: !1988, file: !188, line: 216, type: !91)
!1988 = distinct !DISubprogram(name: "xcharalloc", scope: !188, file: !188, line: 216, type: !1989, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1991)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!47, !91}
!1991 = !{!1987}
!1992 = !DILocation(line: 0, scope: !1988, inlinedAt: !1993)
!1993 = distinct !DILocation(line: 823, column: 15, scope: !1963, inlinedAt: !1976)
!1994 = !DILocation(line: 218, column: 10, scope: !1988, inlinedAt: !1993)
!1995 = !DILocation(line: 824, column: 60, scope: !1963, inlinedAt: !1976)
!1996 = !DILocation(line: 826, column: 32, scope: !1963, inlinedAt: !1976)
!1997 = !DILocation(line: 826, column: 47, scope: !1963, inlinedAt: !1976)
!1998 = !DILocation(line: 824, column: 3, scope: !1963, inlinedAt: !1976)
!1999 = !DILocation(line: 827, column: 9, scope: !1963, inlinedAt: !1976)
!2000 = !DILocation(line: 802, column: 3, scope: !1954)
!2001 = !DILocation(line: 0, scope: !1963)
!2002 = !DILocation(line: 815, column: 37, scope: !1963)
!2003 = !DILocation(line: 816, column: 11, scope: !1963)
!2004 = !DILocation(line: 818, column: 18, scope: !1963)
!2005 = !DILocation(line: 818, column: 27, scope: !1963)
!2006 = !DILocation(line: 818, column: 24, scope: !1963)
!2007 = !DILocation(line: 819, column: 69, scope: !1963)
!2008 = !DILocation(line: 820, column: 53, scope: !1963)
!2009 = !DILocation(line: 821, column: 49, scope: !1963)
!2010 = !DILocation(line: 822, column: 49, scope: !1963)
!2011 = !DILocation(line: 819, column: 20, scope: !1963)
!2012 = !DILocation(line: 822, column: 62, scope: !1963)
!2013 = !DILocation(line: 0, scope: !1988, inlinedAt: !2014)
!2014 = distinct !DILocation(line: 823, column: 15, scope: !1963)
!2015 = !DILocation(line: 218, column: 10, scope: !1988, inlinedAt: !2014)
!2016 = !DILocation(line: 824, column: 60, scope: !1963)
!2017 = !DILocation(line: 826, column: 32, scope: !1963)
!2018 = !DILocation(line: 826, column: 47, scope: !1963)
!2019 = !DILocation(line: 824, column: 3, scope: !1963)
!2020 = !DILocation(line: 827, column: 9, scope: !1963)
!2021 = !DILocation(line: 828, column: 7, scope: !1963)
!2022 = !DILocation(line: 829, column: 11, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !1963, file: !52, line: 828, column: 7)
!2024 = !{!2025, !2025, i64 0}
!2025 = !{!"long", !651, i64 0}
!2026 = !DILocation(line: 829, column: 5, scope: !2023)
!2027 = !DILocation(line: 830, column: 3, scope: !1963)
!2028 = distinct !DISubprogram(name: "quotearg_free", scope: !52, file: !52, line: 848, type: !882, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2029)
!2029 = !{!2030, !2031}
!2030 = !DILocalVariable(name: "sv", scope: !2028, file: !52, line: 850, type: !122)
!2031 = !DILocalVariable(name: "i", scope: !2028, file: !52, line: 851, type: !23)
!2032 = !DILocation(line: 850, column: 24, scope: !2028)
!2033 = !DILocation(line: 0, scope: !2028)
!2034 = !DILocation(line: 852, column: 19, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !52, line: 852, column: 3)
!2036 = distinct !DILexicalBlock(scope: !2028, file: !52, line: 852, column: 3)
!2037 = !DILocation(line: 852, column: 17, scope: !2035)
!2038 = !DILocation(line: 852, column: 3, scope: !2036)
!2039 = !DILocation(line: 853, column: 17, scope: !2035)
!2040 = !{!2041, !650, i64 8}
!2041 = !{!"slotvec", !2025, i64 0, !650, i64 8}
!2042 = !DILocation(line: 853, column: 5, scope: !2035)
!2043 = !DILocation(line: 852, column: 28, scope: !2035)
!2044 = distinct !{!2044, !2038, !2045, !690}
!2045 = !DILocation(line: 853, column: 20, scope: !2036)
!2046 = !DILocation(line: 854, column: 13, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2028, file: !52, line: 854, column: 7)
!2048 = !DILocation(line: 854, column: 17, scope: !2047)
!2049 = !DILocation(line: 854, column: 7, scope: !2028)
!2050 = !DILocation(line: 856, column: 7, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2047, file: !52, line: 855, column: 5)
!2052 = !DILocation(line: 857, column: 21, scope: !2051)
!2053 = !{!2041, !2025, i64 0}
!2054 = !DILocation(line: 858, column: 20, scope: !2051)
!2055 = !DILocation(line: 859, column: 5, scope: !2051)
!2056 = !DILocation(line: 860, column: 10, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2028, file: !52, line: 860, column: 7)
!2058 = !DILocation(line: 860, column: 7, scope: !2028)
!2059 = !DILocation(line: 862, column: 13, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2057, file: !52, line: 861, column: 5)
!2061 = !DILocation(line: 862, column: 7, scope: !2060)
!2062 = !DILocation(line: 863, column: 15, scope: !2060)
!2063 = !DILocation(line: 864, column: 5, scope: !2060)
!2064 = !DILocation(line: 865, column: 10, scope: !2028)
!2065 = !DILocation(line: 866, column: 1, scope: !2028)
!2066 = distinct !DISubprogram(name: "quotearg_n", scope: !52, file: !52, line: 931, type: !770, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2067)
!2067 = !{!2068, !2069}
!2068 = !DILocalVariable(name: "n", arg: 1, scope: !2066, file: !52, line: 931, type: !23)
!2069 = !DILocalVariable(name: "arg", arg: 2, scope: !2066, file: !52, line: 931, type: !6)
!2070 = !DILocation(line: 0, scope: !2066)
!2071 = !DILocation(line: 933, column: 10, scope: !2066)
!2072 = !DILocation(line: 933, column: 3, scope: !2066)
!2073 = distinct !DISubprogram(name: "quotearg_n_options", scope: !52, file: !52, line: 877, type: !2074, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2076)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!47, !23, !6, !91, !1118}
!2076 = !{!2077, !2078, !2079, !2080, !2081, !2082, !2083, !2086, !2087, !2089, !2090, !2091}
!2077 = !DILocalVariable(name: "n", arg: 1, scope: !2073, file: !52, line: 877, type: !23)
!2078 = !DILocalVariable(name: "arg", arg: 2, scope: !2073, file: !52, line: 877, type: !6)
!2079 = !DILocalVariable(name: "argsize", arg: 3, scope: !2073, file: !52, line: 877, type: !91)
!2080 = !DILocalVariable(name: "options", arg: 4, scope: !2073, file: !52, line: 878, type: !1118)
!2081 = !DILocalVariable(name: "e", scope: !2073, file: !52, line: 880, type: !23)
!2082 = !DILocalVariable(name: "sv", scope: !2073, file: !52, line: 882, type: !122)
!2083 = !DILocalVariable(name: "preallocated", scope: !2084, file: !52, line: 889, type: !16)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !52, line: 888, column: 5)
!2085 = distinct !DILexicalBlock(scope: !2073, file: !52, line: 887, column: 7)
!2086 = !DILocalVariable(name: "nmax", scope: !2084, file: !52, line: 890, type: !23)
!2087 = !DILocalVariable(name: "size", scope: !2088, file: !52, line: 903, type: !91)
!2088 = distinct !DILexicalBlock(scope: !2073, file: !52, line: 902, column: 3)
!2089 = !DILocalVariable(name: "val", scope: !2088, file: !52, line: 904, type: !47)
!2090 = !DILocalVariable(name: "flags", scope: !2088, file: !52, line: 906, type: !23)
!2091 = !DILocalVariable(name: "qsize", scope: !2088, file: !52, line: 907, type: !91)
!2092 = !DILocation(line: 0, scope: !2073)
!2093 = !DILocation(line: 880, column: 11, scope: !2073)
!2094 = !DILocation(line: 882, column: 24, scope: !2073)
!2095 = !DILocation(line: 884, column: 9, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2073, file: !52, line: 884, column: 7)
!2097 = !DILocation(line: 884, column: 7, scope: !2073)
!2098 = !DILocation(line: 885, column: 5, scope: !2096)
!2099 = !DILocation(line: 887, column: 7, scope: !2085)
!2100 = !DILocation(line: 887, column: 14, scope: !2085)
!2101 = !DILocation(line: 887, column: 7, scope: !2073)
!2102 = !DILocation(line: 889, column: 31, scope: !2084)
!2103 = !DILocation(line: 0, scope: !2084)
!2104 = !DILocation(line: 892, column: 16, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2084, file: !52, line: 892, column: 11)
!2106 = !DILocation(line: 892, column: 11, scope: !2084)
!2107 = !DILocation(line: 893, column: 9, scope: !2105)
!2108 = !DILocation(line: 895, column: 32, scope: !2084)
!2109 = !DILocation(line: 895, column: 61, scope: !2084)
!2110 = !DILocation(line: 895, column: 66, scope: !2084)
!2111 = !DILocation(line: 895, column: 22, scope: !2084)
!2112 = !DILocation(line: 895, column: 15, scope: !2084)
!2113 = !DILocation(line: 896, column: 11, scope: !2084)
!2114 = !DILocation(line: 897, column: 15, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2084, file: !52, line: 896, column: 11)
!2116 = !{i64 0, i64 8, !2024, i64 8, i64 8, !649}
!2117 = !DILocation(line: 897, column: 9, scope: !2115)
!2118 = !DILocation(line: 898, column: 20, scope: !2084)
!2119 = !DILocation(line: 898, column: 18, scope: !2084)
!2120 = !DILocation(line: 898, column: 15, scope: !2084)
!2121 = !DILocation(line: 898, column: 38, scope: !2084)
!2122 = !DILocation(line: 898, column: 31, scope: !2084)
!2123 = !DILocation(line: 898, column: 48, scope: !2084)
!2124 = !DILocation(line: 0, scope: !1515, inlinedAt: !2125)
!2125 = distinct !DILocation(line: 898, column: 7, scope: !2084)
!2126 = !DILocation(line: 59, column: 10, scope: !1515, inlinedAt: !2125)
!2127 = !DILocation(line: 899, column: 14, scope: !2084)
!2128 = !DILocation(line: 900, column: 5, scope: !2084)
!2129 = !DILocation(line: 903, column: 19, scope: !2088)
!2130 = !DILocation(line: 903, column: 25, scope: !2088)
!2131 = !DILocation(line: 0, scope: !2088)
!2132 = !DILocation(line: 904, column: 23, scope: !2088)
!2133 = !DILocation(line: 906, column: 26, scope: !2088)
!2134 = !DILocation(line: 906, column: 32, scope: !2088)
!2135 = !DILocation(line: 908, column: 55, scope: !2088)
!2136 = !DILocation(line: 909, column: 46, scope: !2088)
!2137 = !DILocation(line: 910, column: 55, scope: !2088)
!2138 = !DILocation(line: 911, column: 55, scope: !2088)
!2139 = !DILocation(line: 907, column: 20, scope: !2088)
!2140 = !DILocation(line: 913, column: 14, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2088, file: !52, line: 913, column: 9)
!2142 = !DILocation(line: 913, column: 9, scope: !2088)
!2143 = !DILocation(line: 915, column: 35, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2141, file: !52, line: 914, column: 7)
!2145 = !DILocation(line: 915, column: 20, scope: !2144)
!2146 = !DILocation(line: 916, column: 17, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2144, file: !52, line: 916, column: 13)
!2148 = !DILocation(line: 916, column: 13, scope: !2144)
!2149 = !DILocation(line: 917, column: 11, scope: !2147)
!2150 = !DILocation(line: 0, scope: !1988, inlinedAt: !2151)
!2151 = distinct !DILocation(line: 918, column: 27, scope: !2144)
!2152 = !DILocation(line: 218, column: 10, scope: !1988, inlinedAt: !2151)
!2153 = !DILocation(line: 918, column: 19, scope: !2144)
!2154 = !DILocation(line: 919, column: 69, scope: !2144)
!2155 = !DILocation(line: 921, column: 44, scope: !2144)
!2156 = !DILocation(line: 922, column: 44, scope: !2144)
!2157 = !DILocation(line: 919, column: 9, scope: !2144)
!2158 = !DILocation(line: 923, column: 7, scope: !2144)
!2159 = !DILocation(line: 925, column: 11, scope: !2088)
!2160 = !DILocation(line: 926, column: 5, scope: !2088)
!2161 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !52, file: !52, line: 937, type: !2162, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2164)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!47, !23, !6, !91}
!2164 = !{!2165, !2166, !2167}
!2165 = !DILocalVariable(name: "n", arg: 1, scope: !2161, file: !52, line: 937, type: !23)
!2166 = !DILocalVariable(name: "arg", arg: 2, scope: !2161, file: !52, line: 937, type: !6)
!2167 = !DILocalVariable(name: "argsize", arg: 3, scope: !2161, file: !52, line: 937, type: !91)
!2168 = !DILocation(line: 0, scope: !2161)
!2169 = !DILocation(line: 939, column: 10, scope: !2161)
!2170 = !DILocation(line: 939, column: 3, scope: !2161)
!2171 = distinct !DISubprogram(name: "quotearg", scope: !52, file: !52, line: 943, type: !875, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2172)
!2172 = !{!2173}
!2173 = !DILocalVariable(name: "arg", arg: 1, scope: !2171, file: !52, line: 943, type: !6)
!2174 = !DILocation(line: 0, scope: !2171)
!2175 = !DILocation(line: 0, scope: !2066, inlinedAt: !2176)
!2176 = distinct !DILocation(line: 945, column: 10, scope: !2171)
!2177 = !DILocation(line: 933, column: 10, scope: !2066, inlinedAt: !2176)
!2178 = !DILocation(line: 945, column: 3, scope: !2171)
!2179 = distinct !DISubprogram(name: "quotearg_mem", scope: !52, file: !52, line: 949, type: !2180, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2182)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!47, !6, !91}
!2182 = !{!2183, !2184}
!2183 = !DILocalVariable(name: "arg", arg: 1, scope: !2179, file: !52, line: 949, type: !6)
!2184 = !DILocalVariable(name: "argsize", arg: 2, scope: !2179, file: !52, line: 949, type: !91)
!2185 = !DILocation(line: 0, scope: !2179)
!2186 = !DILocation(line: 0, scope: !2161, inlinedAt: !2187)
!2187 = distinct !DILocation(line: 951, column: 10, scope: !2179)
!2188 = !DILocation(line: 939, column: 10, scope: !2161, inlinedAt: !2187)
!2189 = !DILocation(line: 951, column: 3, scope: !2179)
!2190 = distinct !DISubprogram(name: "quotearg_n_style", scope: !52, file: !52, line: 955, type: !2191, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2193)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!47, !23, !54, !6}
!2193 = !{!2194, !2195, !2196, !2197}
!2194 = !DILocalVariable(name: "n", arg: 1, scope: !2190, file: !52, line: 955, type: !23)
!2195 = !DILocalVariable(name: "s", arg: 2, scope: !2190, file: !52, line: 955, type: !54)
!2196 = !DILocalVariable(name: "arg", arg: 3, scope: !2190, file: !52, line: 955, type: !6)
!2197 = !DILocalVariable(name: "o", scope: !2190, file: !52, line: 957, type: !1119)
!2198 = !DILocation(line: 0, scope: !2190)
!2199 = !DILocation(line: 957, column: 3, scope: !2190)
!2200 = !DILocation(line: 957, column: 32, scope: !2190)
!2201 = !{!2202}
!2202 = distinct !{!2202, !2203, !"quoting_options_from_style: argument 0"}
!2203 = distinct !{!2203, !"quoting_options_from_style"}
!2204 = !DILocation(line: 957, column: 36, scope: !2190)
!2205 = !DILocalVariable(name: "style", arg: 1, scope: !2206, file: !52, line: 193, type: !54)
!2206 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !52, file: !52, line: 193, type: !2207, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2209)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!103, !54}
!2209 = !{!2205, !2210}
!2210 = !DILocalVariable(name: "o", scope: !2206, file: !52, line: 195, type: !103)
!2211 = !DILocation(line: 0, scope: !2206, inlinedAt: !2212)
!2212 = distinct !DILocation(line: 957, column: 36, scope: !2190)
!2213 = !DILocation(line: 195, column: 26, scope: !2206, inlinedAt: !2212)
!2214 = !DILocation(line: 196, column: 13, scope: !2215, inlinedAt: !2212)
!2215 = distinct !DILexicalBlock(scope: !2206, file: !52, line: 196, column: 7)
!2216 = !DILocation(line: 196, column: 7, scope: !2206, inlinedAt: !2212)
!2217 = !DILocation(line: 197, column: 5, scope: !2215, inlinedAt: !2212)
!2218 = !DILocation(line: 198, column: 5, scope: !2206, inlinedAt: !2212)
!2219 = !DILocation(line: 198, column: 11, scope: !2206, inlinedAt: !2212)
!2220 = !DILocation(line: 958, column: 10, scope: !2190)
!2221 = !DILocation(line: 959, column: 1, scope: !2190)
!2222 = !DILocation(line: 958, column: 3, scope: !2190)
!2223 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !52, file: !52, line: 962, type: !2224, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2226)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{!47, !23, !54, !6, !91}
!2226 = !{!2227, !2228, !2229, !2230, !2231}
!2227 = !DILocalVariable(name: "n", arg: 1, scope: !2223, file: !52, line: 962, type: !23)
!2228 = !DILocalVariable(name: "s", arg: 2, scope: !2223, file: !52, line: 962, type: !54)
!2229 = !DILocalVariable(name: "arg", arg: 3, scope: !2223, file: !52, line: 963, type: !6)
!2230 = !DILocalVariable(name: "argsize", arg: 4, scope: !2223, file: !52, line: 963, type: !91)
!2231 = !DILocalVariable(name: "o", scope: !2223, file: !52, line: 965, type: !1119)
!2232 = !DILocation(line: 0, scope: !2223)
!2233 = !DILocation(line: 965, column: 3, scope: !2223)
!2234 = !DILocation(line: 965, column: 32, scope: !2223)
!2235 = !{!2236}
!2236 = distinct !{!2236, !2237, !"quoting_options_from_style: argument 0"}
!2237 = distinct !{!2237, !"quoting_options_from_style"}
!2238 = !DILocation(line: 965, column: 36, scope: !2223)
!2239 = !DILocation(line: 0, scope: !2206, inlinedAt: !2240)
!2240 = distinct !DILocation(line: 965, column: 36, scope: !2223)
!2241 = !DILocation(line: 195, column: 26, scope: !2206, inlinedAt: !2240)
!2242 = !DILocation(line: 196, column: 13, scope: !2215, inlinedAt: !2240)
!2243 = !DILocation(line: 196, column: 7, scope: !2206, inlinedAt: !2240)
!2244 = !DILocation(line: 197, column: 5, scope: !2215, inlinedAt: !2240)
!2245 = !DILocation(line: 198, column: 5, scope: !2206, inlinedAt: !2240)
!2246 = !DILocation(line: 198, column: 11, scope: !2206, inlinedAt: !2240)
!2247 = !DILocation(line: 966, column: 10, scope: !2223)
!2248 = !DILocation(line: 967, column: 1, scope: !2223)
!2249 = !DILocation(line: 966, column: 3, scope: !2223)
!2250 = distinct !DISubprogram(name: "quotearg_style", scope: !52, file: !52, line: 970, type: !2251, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2253)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!47, !54, !6}
!2253 = !{!2254, !2255}
!2254 = !DILocalVariable(name: "s", arg: 1, scope: !2250, file: !52, line: 970, type: !54)
!2255 = !DILocalVariable(name: "arg", arg: 2, scope: !2250, file: !52, line: 970, type: !6)
!2256 = !DILocation(line: 0, scope: !2250)
!2257 = !DILocation(line: 0, scope: !2190, inlinedAt: !2258)
!2258 = distinct !DILocation(line: 972, column: 10, scope: !2250)
!2259 = !DILocation(line: 957, column: 3, scope: !2190, inlinedAt: !2258)
!2260 = !DILocation(line: 957, column: 32, scope: !2190, inlinedAt: !2258)
!2261 = !{!2262}
!2262 = distinct !{!2262, !2263, !"quoting_options_from_style: argument 0"}
!2263 = distinct !{!2263, !"quoting_options_from_style"}
!2264 = !DILocation(line: 957, column: 36, scope: !2190, inlinedAt: !2258)
!2265 = !DILocation(line: 0, scope: !2206, inlinedAt: !2266)
!2266 = distinct !DILocation(line: 957, column: 36, scope: !2190, inlinedAt: !2258)
!2267 = !DILocation(line: 195, column: 26, scope: !2206, inlinedAt: !2266)
!2268 = !DILocation(line: 196, column: 13, scope: !2215, inlinedAt: !2266)
!2269 = !DILocation(line: 196, column: 7, scope: !2206, inlinedAt: !2266)
!2270 = !DILocation(line: 197, column: 5, scope: !2215, inlinedAt: !2266)
!2271 = !DILocation(line: 198, column: 5, scope: !2206, inlinedAt: !2266)
!2272 = !DILocation(line: 198, column: 11, scope: !2206, inlinedAt: !2266)
!2273 = !DILocation(line: 958, column: 10, scope: !2190, inlinedAt: !2258)
!2274 = !DILocation(line: 959, column: 1, scope: !2190, inlinedAt: !2258)
!2275 = !DILocation(line: 972, column: 3, scope: !2250)
!2276 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !52, file: !52, line: 976, type: !2277, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2279)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!47, !54, !6, !91}
!2279 = !{!2280, !2281, !2282}
!2280 = !DILocalVariable(name: "s", arg: 1, scope: !2276, file: !52, line: 976, type: !54)
!2281 = !DILocalVariable(name: "arg", arg: 2, scope: !2276, file: !52, line: 976, type: !6)
!2282 = !DILocalVariable(name: "argsize", arg: 3, scope: !2276, file: !52, line: 976, type: !91)
!2283 = !DILocation(line: 0, scope: !2276)
!2284 = !DILocation(line: 0, scope: !2223, inlinedAt: !2285)
!2285 = distinct !DILocation(line: 978, column: 10, scope: !2276)
!2286 = !DILocation(line: 965, column: 3, scope: !2223, inlinedAt: !2285)
!2287 = !DILocation(line: 965, column: 32, scope: !2223, inlinedAt: !2285)
!2288 = !{!2289}
!2289 = distinct !{!2289, !2290, !"quoting_options_from_style: argument 0"}
!2290 = distinct !{!2290, !"quoting_options_from_style"}
!2291 = !DILocation(line: 965, column: 36, scope: !2223, inlinedAt: !2285)
!2292 = !DILocation(line: 0, scope: !2206, inlinedAt: !2293)
!2293 = distinct !DILocation(line: 965, column: 36, scope: !2223, inlinedAt: !2285)
!2294 = !DILocation(line: 195, column: 26, scope: !2206, inlinedAt: !2293)
!2295 = !DILocation(line: 196, column: 13, scope: !2215, inlinedAt: !2293)
!2296 = !DILocation(line: 196, column: 7, scope: !2206, inlinedAt: !2293)
!2297 = !DILocation(line: 197, column: 5, scope: !2215, inlinedAt: !2293)
!2298 = !DILocation(line: 198, column: 5, scope: !2206, inlinedAt: !2293)
!2299 = !DILocation(line: 198, column: 11, scope: !2206, inlinedAt: !2293)
!2300 = !DILocation(line: 966, column: 10, scope: !2223, inlinedAt: !2285)
!2301 = !DILocation(line: 967, column: 1, scope: !2223, inlinedAt: !2285)
!2302 = !DILocation(line: 978, column: 3, scope: !2276)
!2303 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !52, file: !52, line: 982, type: !2304, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2306)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!47, !6, !91, !8}
!2306 = !{!2307, !2308, !2309, !2310}
!2307 = !DILocalVariable(name: "arg", arg: 1, scope: !2303, file: !52, line: 982, type: !6)
!2308 = !DILocalVariable(name: "argsize", arg: 2, scope: !2303, file: !52, line: 982, type: !91)
!2309 = !DILocalVariable(name: "ch", arg: 3, scope: !2303, file: !52, line: 982, type: !8)
!2310 = !DILocalVariable(name: "options", scope: !2303, file: !52, line: 984, type: !103)
!2311 = !DILocation(line: 0, scope: !2303)
!2312 = !DILocation(line: 984, column: 3, scope: !2303)
!2313 = !DILocation(line: 984, column: 26, scope: !2303)
!2314 = !DILocation(line: 985, column: 13, scope: !2303)
!2315 = !{i64 0, i64 4, !830, i64 4, i64 4, !805, i64 8, i64 32, !830, i64 40, i64 8, !649, i64 48, i64 8, !649}
!2316 = !DILocation(line: 0, scope: !1139, inlinedAt: !2317)
!2317 = distinct !DILocation(line: 986, column: 3, scope: !2303)
!2318 = !DILocation(line: 156, column: 62, scope: !1139, inlinedAt: !2317)
!2319 = !DILocation(line: 156, column: 57, scope: !1139, inlinedAt: !2317)
!2320 = !DILocation(line: 157, column: 15, scope: !1139, inlinedAt: !2317)
!2321 = !DILocation(line: 158, column: 12, scope: !1139, inlinedAt: !2317)
!2322 = !DILocation(line: 158, column: 15, scope: !1139, inlinedAt: !2317)
!2323 = !DILocation(line: 158, column: 25, scope: !1139, inlinedAt: !2317)
!2324 = !DILocation(line: 159, column: 18, scope: !1139, inlinedAt: !2317)
!2325 = !DILocation(line: 159, column: 23, scope: !1139, inlinedAt: !2317)
!2326 = !DILocation(line: 159, column: 6, scope: !1139, inlinedAt: !2317)
!2327 = !DILocation(line: 987, column: 10, scope: !2303)
!2328 = !DILocation(line: 988, column: 1, scope: !2303)
!2329 = !DILocation(line: 987, column: 3, scope: !2303)
!2330 = distinct !DISubprogram(name: "quotearg_char", scope: !52, file: !52, line: 991, type: !2331, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2333)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!47, !6, !8}
!2333 = !{!2334, !2335}
!2334 = !DILocalVariable(name: "arg", arg: 1, scope: !2330, file: !52, line: 991, type: !6)
!2335 = !DILocalVariable(name: "ch", arg: 2, scope: !2330, file: !52, line: 991, type: !8)
!2336 = !DILocation(line: 0, scope: !2330)
!2337 = !DILocation(line: 0, scope: !2303, inlinedAt: !2338)
!2338 = distinct !DILocation(line: 993, column: 10, scope: !2330)
!2339 = !DILocation(line: 984, column: 3, scope: !2303, inlinedAt: !2338)
!2340 = !DILocation(line: 984, column: 26, scope: !2303, inlinedAt: !2338)
!2341 = !DILocation(line: 985, column: 13, scope: !2303, inlinedAt: !2338)
!2342 = !DILocation(line: 0, scope: !1139, inlinedAt: !2343)
!2343 = distinct !DILocation(line: 986, column: 3, scope: !2303, inlinedAt: !2338)
!2344 = !DILocation(line: 156, column: 62, scope: !1139, inlinedAt: !2343)
!2345 = !DILocation(line: 156, column: 57, scope: !1139, inlinedAt: !2343)
!2346 = !DILocation(line: 157, column: 15, scope: !1139, inlinedAt: !2343)
!2347 = !DILocation(line: 158, column: 12, scope: !1139, inlinedAt: !2343)
!2348 = !DILocation(line: 158, column: 15, scope: !1139, inlinedAt: !2343)
!2349 = !DILocation(line: 158, column: 25, scope: !1139, inlinedAt: !2343)
!2350 = !DILocation(line: 159, column: 18, scope: !1139, inlinedAt: !2343)
!2351 = !DILocation(line: 159, column: 23, scope: !1139, inlinedAt: !2343)
!2352 = !DILocation(line: 159, column: 6, scope: !1139, inlinedAt: !2343)
!2353 = !DILocation(line: 987, column: 10, scope: !2303, inlinedAt: !2338)
!2354 = !DILocation(line: 988, column: 1, scope: !2303, inlinedAt: !2338)
!2355 = !DILocation(line: 993, column: 3, scope: !2330)
!2356 = distinct !DISubprogram(name: "quotearg_colon", scope: !52, file: !52, line: 997, type: !875, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2357)
!2357 = !{!2358}
!2358 = !DILocalVariable(name: "arg", arg: 1, scope: !2356, file: !52, line: 997, type: !6)
!2359 = !DILocation(line: 0, scope: !2356)
!2360 = !DILocation(line: 0, scope: !2330, inlinedAt: !2361)
!2361 = distinct !DILocation(line: 999, column: 10, scope: !2356)
!2362 = !DILocation(line: 0, scope: !2303, inlinedAt: !2363)
!2363 = distinct !DILocation(line: 993, column: 10, scope: !2330, inlinedAt: !2361)
!2364 = !DILocation(line: 984, column: 3, scope: !2303, inlinedAt: !2363)
!2365 = !DILocation(line: 984, column: 26, scope: !2303, inlinedAt: !2363)
!2366 = !DILocation(line: 985, column: 13, scope: !2303, inlinedAt: !2363)
!2367 = !DILocation(line: 0, scope: !1139, inlinedAt: !2368)
!2368 = distinct !DILocation(line: 986, column: 3, scope: !2303, inlinedAt: !2363)
!2369 = !DILocation(line: 156, column: 57, scope: !1139, inlinedAt: !2368)
!2370 = !DILocation(line: 158, column: 12, scope: !1139, inlinedAt: !2368)
!2371 = !DILocation(line: 159, column: 6, scope: !1139, inlinedAt: !2368)
!2372 = !DILocation(line: 987, column: 10, scope: !2303, inlinedAt: !2363)
!2373 = !DILocation(line: 988, column: 1, scope: !2303, inlinedAt: !2363)
!2374 = !DILocation(line: 999, column: 3, scope: !2356)
!2375 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !52, file: !52, line: 1003, type: !2180, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2376)
!2376 = !{!2377, !2378}
!2377 = !DILocalVariable(name: "arg", arg: 1, scope: !2375, file: !52, line: 1003, type: !6)
!2378 = !DILocalVariable(name: "argsize", arg: 2, scope: !2375, file: !52, line: 1003, type: !91)
!2379 = !DILocation(line: 0, scope: !2375)
!2380 = !DILocation(line: 0, scope: !2303, inlinedAt: !2381)
!2381 = distinct !DILocation(line: 1005, column: 10, scope: !2375)
!2382 = !DILocation(line: 984, column: 3, scope: !2303, inlinedAt: !2381)
!2383 = !DILocation(line: 984, column: 26, scope: !2303, inlinedAt: !2381)
!2384 = !DILocation(line: 985, column: 13, scope: !2303, inlinedAt: !2381)
!2385 = !DILocation(line: 0, scope: !1139, inlinedAt: !2386)
!2386 = distinct !DILocation(line: 986, column: 3, scope: !2303, inlinedAt: !2381)
!2387 = !DILocation(line: 156, column: 57, scope: !1139, inlinedAt: !2386)
!2388 = !DILocation(line: 158, column: 12, scope: !1139, inlinedAt: !2386)
!2389 = !DILocation(line: 159, column: 6, scope: !1139, inlinedAt: !2386)
!2390 = !DILocation(line: 987, column: 10, scope: !2303, inlinedAt: !2381)
!2391 = !DILocation(line: 988, column: 1, scope: !2303, inlinedAt: !2381)
!2392 = !DILocation(line: 1005, column: 3, scope: !2375)
!2393 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !52, file: !52, line: 1009, type: !2191, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2394)
!2394 = !{!2395, !2396, !2397, !2398}
!2395 = !DILocalVariable(name: "n", arg: 1, scope: !2393, file: !52, line: 1009, type: !23)
!2396 = !DILocalVariable(name: "s", arg: 2, scope: !2393, file: !52, line: 1009, type: !54)
!2397 = !DILocalVariable(name: "arg", arg: 3, scope: !2393, file: !52, line: 1009, type: !6)
!2398 = !DILocalVariable(name: "options", scope: !2393, file: !52, line: 1011, type: !103)
!2399 = !DILocation(line: 195, column: 26, scope: !2206, inlinedAt: !2400)
!2400 = distinct !DILocation(line: 1012, column: 13, scope: !2393)
!2401 = !DILocation(line: 0, scope: !2393)
!2402 = !DILocation(line: 1011, column: 3, scope: !2393)
!2403 = !DILocation(line: 1011, column: 26, scope: !2393)
!2404 = !DILocation(line: 1012, column: 13, scope: !2393)
!2405 = !{!2406}
!2406 = distinct !{!2406, !2407, !"quoting_options_from_style: argument 0"}
!2407 = distinct !{!2407, !"quoting_options_from_style"}
!2408 = !DILocation(line: 0, scope: !2206, inlinedAt: !2400)
!2409 = !DILocation(line: 196, column: 13, scope: !2215, inlinedAt: !2400)
!2410 = !DILocation(line: 196, column: 7, scope: !2206, inlinedAt: !2400)
!2411 = !DILocation(line: 197, column: 5, scope: !2215, inlinedAt: !2400)
!2412 = !{i64 0, i64 4, !805, i64 4, i64 32, !830, i64 36, i64 8, !649, i64 44, i64 8, !649}
!2413 = !DILocation(line: 0, scope: !1139, inlinedAt: !2414)
!2414 = distinct !DILocation(line: 1013, column: 3, scope: !2393)
!2415 = !DILocation(line: 156, column: 57, scope: !1139, inlinedAt: !2414)
!2416 = !DILocation(line: 158, column: 12, scope: !1139, inlinedAt: !2414)
!2417 = !DILocation(line: 159, column: 6, scope: !1139, inlinedAt: !2414)
!2418 = !DILocation(line: 1014, column: 10, scope: !2393)
!2419 = !DILocation(line: 1015, column: 1, scope: !2393)
!2420 = !DILocation(line: 1014, column: 3, scope: !2393)
!2421 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !52, file: !52, line: 1018, type: !2422, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2424)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!47, !23, !6, !6, !6}
!2424 = !{!2425, !2426, !2427, !2428}
!2425 = !DILocalVariable(name: "n", arg: 1, scope: !2421, file: !52, line: 1018, type: !23)
!2426 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2421, file: !52, line: 1018, type: !6)
!2427 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2421, file: !52, line: 1019, type: !6)
!2428 = !DILocalVariable(name: "arg", arg: 4, scope: !2421, file: !52, line: 1019, type: !6)
!2429 = !DILocation(line: 0, scope: !2421)
!2430 = !DILocalVariable(name: "n", arg: 1, scope: !2431, file: !52, line: 1026, type: !23)
!2431 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !52, file: !52, line: 1026, type: !2432, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2434)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!47, !23, !6, !6, !6, !91}
!2434 = !{!2430, !2435, !2436, !2437, !2438, !2439}
!2435 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2431, file: !52, line: 1026, type: !6)
!2436 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2431, file: !52, line: 1027, type: !6)
!2437 = !DILocalVariable(name: "arg", arg: 4, scope: !2431, file: !52, line: 1028, type: !6)
!2438 = !DILocalVariable(name: "argsize", arg: 5, scope: !2431, file: !52, line: 1028, type: !91)
!2439 = !DILocalVariable(name: "o", scope: !2431, file: !52, line: 1030, type: !103)
!2440 = !DILocation(line: 0, scope: !2431, inlinedAt: !2441)
!2441 = distinct !DILocation(line: 1021, column: 10, scope: !2421)
!2442 = !DILocation(line: 1030, column: 3, scope: !2431, inlinedAt: !2441)
!2443 = !DILocation(line: 1030, column: 26, scope: !2431, inlinedAt: !2441)
!2444 = !DILocation(line: 1030, column: 30, scope: !2431, inlinedAt: !2441)
!2445 = !DILocation(line: 0, scope: !1180, inlinedAt: !2446)
!2446 = distinct !DILocation(line: 1031, column: 3, scope: !2431, inlinedAt: !2441)
!2447 = !DILocation(line: 184, column: 6, scope: !1180, inlinedAt: !2446)
!2448 = !DILocation(line: 184, column: 12, scope: !1180, inlinedAt: !2446)
!2449 = !DILocation(line: 185, column: 8, scope: !1194, inlinedAt: !2446)
!2450 = !DILocation(line: 185, column: 19, scope: !1194, inlinedAt: !2446)
!2451 = !DILocation(line: 186, column: 5, scope: !1194, inlinedAt: !2446)
!2452 = !DILocation(line: 187, column: 6, scope: !1180, inlinedAt: !2446)
!2453 = !DILocation(line: 187, column: 17, scope: !1180, inlinedAt: !2446)
!2454 = !DILocation(line: 188, column: 6, scope: !1180, inlinedAt: !2446)
!2455 = !DILocation(line: 188, column: 18, scope: !1180, inlinedAt: !2446)
!2456 = !DILocation(line: 1032, column: 10, scope: !2431, inlinedAt: !2441)
!2457 = !DILocation(line: 1033, column: 1, scope: !2431, inlinedAt: !2441)
!2458 = !DILocation(line: 1021, column: 3, scope: !2421)
!2459 = !DILocation(line: 0, scope: !2431)
!2460 = !DILocation(line: 1030, column: 3, scope: !2431)
!2461 = !DILocation(line: 1030, column: 26, scope: !2431)
!2462 = !DILocation(line: 1030, column: 30, scope: !2431)
!2463 = !DILocation(line: 0, scope: !1180, inlinedAt: !2464)
!2464 = distinct !DILocation(line: 1031, column: 3, scope: !2431)
!2465 = !DILocation(line: 184, column: 6, scope: !1180, inlinedAt: !2464)
!2466 = !DILocation(line: 184, column: 12, scope: !1180, inlinedAt: !2464)
!2467 = !DILocation(line: 185, column: 8, scope: !1194, inlinedAt: !2464)
!2468 = !DILocation(line: 185, column: 19, scope: !1194, inlinedAt: !2464)
!2469 = !DILocation(line: 186, column: 5, scope: !1194, inlinedAt: !2464)
!2470 = !DILocation(line: 187, column: 6, scope: !1180, inlinedAt: !2464)
!2471 = !DILocation(line: 187, column: 17, scope: !1180, inlinedAt: !2464)
!2472 = !DILocation(line: 188, column: 6, scope: !1180, inlinedAt: !2464)
!2473 = !DILocation(line: 188, column: 18, scope: !1180, inlinedAt: !2464)
!2474 = !DILocation(line: 1032, column: 10, scope: !2431)
!2475 = !DILocation(line: 1033, column: 1, scope: !2431)
!2476 = !DILocation(line: 1032, column: 3, scope: !2431)
!2477 = distinct !DISubprogram(name: "quotearg_custom", scope: !52, file: !52, line: 1036, type: !2478, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2480)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!47, !6, !6, !6}
!2480 = !{!2481, !2482, !2483}
!2481 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2477, file: !52, line: 1036, type: !6)
!2482 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2477, file: !52, line: 1036, type: !6)
!2483 = !DILocalVariable(name: "arg", arg: 3, scope: !2477, file: !52, line: 1037, type: !6)
!2484 = !DILocation(line: 0, scope: !2477)
!2485 = !DILocation(line: 0, scope: !2421, inlinedAt: !2486)
!2486 = distinct !DILocation(line: 1039, column: 10, scope: !2477)
!2487 = !DILocation(line: 0, scope: !2431, inlinedAt: !2488)
!2488 = distinct !DILocation(line: 1021, column: 10, scope: !2421, inlinedAt: !2486)
!2489 = !DILocation(line: 1030, column: 3, scope: !2431, inlinedAt: !2488)
!2490 = !DILocation(line: 1030, column: 26, scope: !2431, inlinedAt: !2488)
!2491 = !DILocation(line: 1030, column: 30, scope: !2431, inlinedAt: !2488)
!2492 = !DILocation(line: 0, scope: !1180, inlinedAt: !2493)
!2493 = distinct !DILocation(line: 1031, column: 3, scope: !2431, inlinedAt: !2488)
!2494 = !DILocation(line: 184, column: 6, scope: !1180, inlinedAt: !2493)
!2495 = !DILocation(line: 184, column: 12, scope: !1180, inlinedAt: !2493)
!2496 = !DILocation(line: 185, column: 8, scope: !1194, inlinedAt: !2493)
!2497 = !DILocation(line: 185, column: 19, scope: !1194, inlinedAt: !2493)
!2498 = !DILocation(line: 186, column: 5, scope: !1194, inlinedAt: !2493)
!2499 = !DILocation(line: 187, column: 6, scope: !1180, inlinedAt: !2493)
!2500 = !DILocation(line: 187, column: 17, scope: !1180, inlinedAt: !2493)
!2501 = !DILocation(line: 188, column: 6, scope: !1180, inlinedAt: !2493)
!2502 = !DILocation(line: 188, column: 18, scope: !1180, inlinedAt: !2493)
!2503 = !DILocation(line: 1032, column: 10, scope: !2431, inlinedAt: !2488)
!2504 = !DILocation(line: 1033, column: 1, scope: !2431, inlinedAt: !2488)
!2505 = !DILocation(line: 1039, column: 3, scope: !2477)
!2506 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !52, file: !52, line: 1043, type: !2507, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2509)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!47, !6, !6, !6, !91}
!2509 = !{!2510, !2511, !2512, !2513}
!2510 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2506, file: !52, line: 1043, type: !6)
!2511 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2506, file: !52, line: 1043, type: !6)
!2512 = !DILocalVariable(name: "arg", arg: 3, scope: !2506, file: !52, line: 1044, type: !6)
!2513 = !DILocalVariable(name: "argsize", arg: 4, scope: !2506, file: !52, line: 1044, type: !91)
!2514 = !DILocation(line: 0, scope: !2506)
!2515 = !DILocation(line: 0, scope: !2431, inlinedAt: !2516)
!2516 = distinct !DILocation(line: 1046, column: 10, scope: !2506)
!2517 = !DILocation(line: 1030, column: 3, scope: !2431, inlinedAt: !2516)
!2518 = !DILocation(line: 1030, column: 26, scope: !2431, inlinedAt: !2516)
!2519 = !DILocation(line: 1030, column: 30, scope: !2431, inlinedAt: !2516)
!2520 = !DILocation(line: 0, scope: !1180, inlinedAt: !2521)
!2521 = distinct !DILocation(line: 1031, column: 3, scope: !2431, inlinedAt: !2516)
!2522 = !DILocation(line: 184, column: 6, scope: !1180, inlinedAt: !2521)
!2523 = !DILocation(line: 184, column: 12, scope: !1180, inlinedAt: !2521)
!2524 = !DILocation(line: 185, column: 8, scope: !1194, inlinedAt: !2521)
!2525 = !DILocation(line: 185, column: 19, scope: !1194, inlinedAt: !2521)
!2526 = !DILocation(line: 186, column: 5, scope: !1194, inlinedAt: !2521)
!2527 = !DILocation(line: 187, column: 6, scope: !1180, inlinedAt: !2521)
!2528 = !DILocation(line: 187, column: 17, scope: !1180, inlinedAt: !2521)
!2529 = !DILocation(line: 188, column: 6, scope: !1180, inlinedAt: !2521)
!2530 = !DILocation(line: 188, column: 18, scope: !1180, inlinedAt: !2521)
!2531 = !DILocation(line: 1032, column: 10, scope: !2431, inlinedAt: !2516)
!2532 = !DILocation(line: 1033, column: 1, scope: !2431, inlinedAt: !2516)
!2533 = !DILocation(line: 1046, column: 3, scope: !2506)
!2534 = distinct !DISubprogram(name: "quote_n_mem", scope: !52, file: !52, line: 1061, type: !2535, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2537)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!6, !23, !6, !91}
!2537 = !{!2538, !2539, !2540}
!2538 = !DILocalVariable(name: "n", arg: 1, scope: !2534, file: !52, line: 1061, type: !23)
!2539 = !DILocalVariable(name: "arg", arg: 2, scope: !2534, file: !52, line: 1061, type: !6)
!2540 = !DILocalVariable(name: "argsize", arg: 3, scope: !2534, file: !52, line: 1061, type: !91)
!2541 = !DILocation(line: 0, scope: !2534)
!2542 = !DILocation(line: 1063, column: 10, scope: !2534)
!2543 = !DILocation(line: 1063, column: 3, scope: !2534)
!2544 = distinct !DISubprogram(name: "quote_mem", scope: !52, file: !52, line: 1067, type: !2545, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2547)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!6, !6, !91}
!2547 = !{!2548, !2549}
!2548 = !DILocalVariable(name: "arg", arg: 1, scope: !2544, file: !52, line: 1067, type: !6)
!2549 = !DILocalVariable(name: "argsize", arg: 2, scope: !2544, file: !52, line: 1067, type: !91)
!2550 = !DILocation(line: 0, scope: !2544)
!2551 = !DILocation(line: 0, scope: !2534, inlinedAt: !2552)
!2552 = distinct !DILocation(line: 1069, column: 10, scope: !2544)
!2553 = !DILocation(line: 1063, column: 10, scope: !2534, inlinedAt: !2552)
!2554 = !DILocation(line: 1069, column: 3, scope: !2544)
!2555 = distinct !DISubprogram(name: "quote_n", scope: !52, file: !52, line: 1073, type: !2556, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2558)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!6, !23, !6}
!2558 = !{!2559, !2560}
!2559 = !DILocalVariable(name: "n", arg: 1, scope: !2555, file: !52, line: 1073, type: !23)
!2560 = !DILocalVariable(name: "arg", arg: 2, scope: !2555, file: !52, line: 1073, type: !6)
!2561 = !DILocation(line: 0, scope: !2555)
!2562 = !DILocation(line: 0, scope: !2534, inlinedAt: !2563)
!2563 = distinct !DILocation(line: 1075, column: 10, scope: !2555)
!2564 = !DILocation(line: 1063, column: 10, scope: !2534, inlinedAt: !2563)
!2565 = !DILocation(line: 1075, column: 3, scope: !2555)
!2566 = distinct !DISubprogram(name: "quote", scope: !52, file: !52, line: 1079, type: !2567, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2569)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!6, !6}
!2569 = !{!2570}
!2570 = !DILocalVariable(name: "arg", arg: 1, scope: !2566, file: !52, line: 1079, type: !6)
!2571 = !DILocation(line: 0, scope: !2566)
!2572 = !DILocation(line: 0, scope: !2555, inlinedAt: !2573)
!2573 = distinct !DILocation(line: 1081, column: 10, scope: !2566)
!2574 = !DILocation(line: 0, scope: !2534, inlinedAt: !2575)
!2575 = distinct !DILocation(line: 1075, column: 10, scope: !2555, inlinedAt: !2573)
!2576 = !DILocation(line: 1063, column: 10, scope: !2534, inlinedAt: !2575)
!2577 = !DILocation(line: 1081, column: 3, scope: !2566)
!2578 = distinct !DISubprogram(name: "version_etc_arn", scope: !178, file: !178, line: 61, type: !2579, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !177, retainedNodes: !2617)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{null, !2581, !6, !6, !6, !2616, !91}
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2583, line: 7, baseType: !2584)
!2583 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !720, line: 49, size: 1728, elements: !2585)
!2585 = !{!2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2584, file: !720, line: 51, baseType: !23, size: 32)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2584, file: !720, line: 54, baseType: !47, size: 64, offset: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2584, file: !720, line: 55, baseType: !47, size: 64, offset: 128)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2584, file: !720, line: 56, baseType: !47, size: 64, offset: 192)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2584, file: !720, line: 57, baseType: !47, size: 64, offset: 256)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2584, file: !720, line: 58, baseType: !47, size: 64, offset: 320)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2584, file: !720, line: 59, baseType: !47, size: 64, offset: 384)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2584, file: !720, line: 60, baseType: !47, size: 64, offset: 448)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2584, file: !720, line: 61, baseType: !47, size: 64, offset: 512)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2584, file: !720, line: 64, baseType: !47, size: 64, offset: 576)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2584, file: !720, line: 65, baseType: !47, size: 64, offset: 640)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2584, file: !720, line: 66, baseType: !47, size: 64, offset: 704)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2584, file: !720, line: 68, baseType: !735, size: 64, offset: 768)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2584, file: !720, line: 70, baseType: !2600, size: 64, offset: 832)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2584, file: !720, line: 72, baseType: !23, size: 32, offset: 896)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2584, file: !720, line: 73, baseType: !23, size: 32, offset: 928)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2584, file: !720, line: 74, baseType: !741, size: 64, offset: 960)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2584, file: !720, line: 77, baseType: !90, size: 16, offset: 1024)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2584, file: !720, line: 78, baseType: !744, size: 8, offset: 1040)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2584, file: !720, line: 79, baseType: !746, size: 8, offset: 1048)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2584, file: !720, line: 81, baseType: !750, size: 64, offset: 1088)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2584, file: !720, line: 89, baseType: !753, size: 64, offset: 1152)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2584, file: !720, line: 91, baseType: !755, size: 64, offset: 1216)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2584, file: !720, line: 92, baseType: !758, size: 64, offset: 1280)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2584, file: !720, line: 93, baseType: !2600, size: 64, offset: 1344)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2584, file: !720, line: 94, baseType: !46, size: 64, offset: 1408)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2584, file: !720, line: 95, baseType: !91, size: 64, offset: 1472)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2584, file: !720, line: 96, baseType: !23, size: 32, offset: 1536)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2584, file: !720, line: 98, baseType: !765, size: 160, offset: 1568)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!2617 = !{!2618, !2619, !2620, !2621, !2622, !2623}
!2618 = !DILocalVariable(name: "stream", arg: 1, scope: !2578, file: !178, line: 61, type: !2581)
!2619 = !DILocalVariable(name: "command_name", arg: 2, scope: !2578, file: !178, line: 62, type: !6)
!2620 = !DILocalVariable(name: "package", arg: 3, scope: !2578, file: !178, line: 62, type: !6)
!2621 = !DILocalVariable(name: "version", arg: 4, scope: !2578, file: !178, line: 63, type: !6)
!2622 = !DILocalVariable(name: "authors", arg: 5, scope: !2578, file: !178, line: 64, type: !2616)
!2623 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2578, file: !178, line: 64, type: !91)
!2624 = !DILocation(line: 0, scope: !2578)
!2625 = !DILocation(line: 66, column: 7, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2578, file: !178, line: 66, column: 7)
!2627 = !DILocation(line: 66, column: 7, scope: !2578)
!2628 = !DILocation(line: 67, column: 5, scope: !2626)
!2629 = !DILocation(line: 69, column: 5, scope: !2626)
!2630 = !DILocation(line: 83, column: 3, scope: !2578)
!2631 = !DILocation(line: 85, column: 3, scope: !2578)
!2632 = !DILocation(line: 88, column: 3, scope: !2578)
!2633 = !DILocation(line: 95, column: 3, scope: !2578)
!2634 = !DILocation(line: 97, column: 3, scope: !2578)
!2635 = !DILocation(line: 105, column: 7, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2578, file: !178, line: 98, column: 5)
!2637 = !DILocation(line: 106, column: 7, scope: !2636)
!2638 = !DILocation(line: 109, column: 7, scope: !2636)
!2639 = !DILocation(line: 110, column: 7, scope: !2636)
!2640 = !DILocation(line: 113, column: 7, scope: !2636)
!2641 = !DILocation(line: 115, column: 7, scope: !2636)
!2642 = !DILocation(line: 120, column: 7, scope: !2636)
!2643 = !DILocation(line: 122, column: 7, scope: !2636)
!2644 = !DILocation(line: 127, column: 7, scope: !2636)
!2645 = !DILocation(line: 129, column: 7, scope: !2636)
!2646 = !DILocation(line: 134, column: 7, scope: !2636)
!2647 = !DILocation(line: 137, column: 7, scope: !2636)
!2648 = !DILocation(line: 142, column: 7, scope: !2636)
!2649 = !DILocation(line: 145, column: 7, scope: !2636)
!2650 = !DILocation(line: 150, column: 7, scope: !2636)
!2651 = !DILocation(line: 154, column: 7, scope: !2636)
!2652 = !DILocation(line: 159, column: 7, scope: !2636)
!2653 = !DILocation(line: 163, column: 7, scope: !2636)
!2654 = !DILocation(line: 170, column: 7, scope: !2636)
!2655 = !DILocation(line: 174, column: 7, scope: !2636)
!2656 = !DILocation(line: 176, column: 1, scope: !2578)
!2657 = distinct !DISubprogram(name: "version_etc_ar", scope: !178, file: !178, line: 183, type: !2658, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !177, retainedNodes: !2660)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{null, !2581, !6, !6, !6, !2616}
!2660 = !{!2661, !2662, !2663, !2664, !2665, !2666}
!2661 = !DILocalVariable(name: "stream", arg: 1, scope: !2657, file: !178, line: 183, type: !2581)
!2662 = !DILocalVariable(name: "command_name", arg: 2, scope: !2657, file: !178, line: 184, type: !6)
!2663 = !DILocalVariable(name: "package", arg: 3, scope: !2657, file: !178, line: 184, type: !6)
!2664 = !DILocalVariable(name: "version", arg: 4, scope: !2657, file: !178, line: 185, type: !6)
!2665 = !DILocalVariable(name: "authors", arg: 5, scope: !2657, file: !178, line: 185, type: !2616)
!2666 = !DILocalVariable(name: "n_authors", scope: !2657, file: !178, line: 187, type: !91)
!2667 = !DILocation(line: 0, scope: !2657)
!2668 = !DILocation(line: 189, column: 8, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2657, file: !178, line: 189, column: 3)
!2670 = !DILocation(line: 0, scope: !2669)
!2671 = !DILocation(line: 189, column: 23, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2669, file: !178, line: 189, column: 3)
!2673 = !DILocation(line: 189, column: 3, scope: !2669)
!2674 = !DILocation(line: 189, column: 52, scope: !2672)
!2675 = distinct !{!2675, !2673, !2676, !690}
!2676 = !DILocation(line: 190, column: 5, scope: !2669)
!2677 = !DILocation(line: 191, column: 3, scope: !2657)
!2678 = !DILocation(line: 192, column: 1, scope: !2657)
!2679 = distinct !DISubprogram(name: "version_etc_va", scope: !178, file: !178, line: 199, type: !2680, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !177, retainedNodes: !2689)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{null, !2581, !6, !6, !6, !2682}
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2684)
!2684 = !{!2685, !2686, !2687, !2688}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2683, file: !178, line: 192, baseType: !56, size: 32)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2683, file: !178, line: 192, baseType: !56, size: 32, offset: 32)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2683, file: !178, line: 192, baseType: !46, size: 64, offset: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2683, file: !178, line: 192, baseType: !46, size: 64, offset: 128)
!2689 = !{!2690, !2691, !2692, !2693, !2694, !2695, !2696}
!2690 = !DILocalVariable(name: "stream", arg: 1, scope: !2679, file: !178, line: 199, type: !2581)
!2691 = !DILocalVariable(name: "command_name", arg: 2, scope: !2679, file: !178, line: 200, type: !6)
!2692 = !DILocalVariable(name: "package", arg: 3, scope: !2679, file: !178, line: 200, type: !6)
!2693 = !DILocalVariable(name: "version", arg: 4, scope: !2679, file: !178, line: 201, type: !6)
!2694 = !DILocalVariable(name: "authors", arg: 5, scope: !2679, file: !178, line: 201, type: !2682)
!2695 = !DILocalVariable(name: "n_authors", scope: !2679, file: !178, line: 203, type: !91)
!2696 = !DILocalVariable(name: "authtab", scope: !2679, file: !178, line: 204, type: !2697)
!2697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !99)
!2698 = !DILocation(line: 0, scope: !2679)
!2699 = !DILocation(line: 204, column: 3, scope: !2679)
!2700 = !DILocation(line: 204, column: 15, scope: !2679)
!2701 = !DILocation(line: 208, column: 35, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2703, file: !178, line: 206, column: 3)
!2703 = distinct !DILexicalBlock(scope: !2679, file: !178, line: 206, column: 3)
!2704 = !DILocation(line: 208, column: 14, scope: !2702)
!2705 = !DILocation(line: 208, column: 33, scope: !2702)
!2706 = !DILocation(line: 208, column: 67, scope: !2702)
!2707 = !DILocation(line: 206, column: 3, scope: !2703)
!2708 = !DILocation(line: 0, scope: !2703)
!2709 = !DILocation(line: 211, column: 3, scope: !2679)
!2710 = !DILocation(line: 213, column: 1, scope: !2679)
!2711 = distinct !DISubprogram(name: "version_etc", scope: !178, file: !178, line: 230, type: !2712, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !177, retainedNodes: !2714)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{null, !2581, !6, !6, !6, null}
!2714 = !{!2715, !2716, !2717, !2718, !2719}
!2715 = !DILocalVariable(name: "stream", arg: 1, scope: !2711, file: !178, line: 230, type: !2581)
!2716 = !DILocalVariable(name: "command_name", arg: 2, scope: !2711, file: !178, line: 231, type: !6)
!2717 = !DILocalVariable(name: "package", arg: 3, scope: !2711, file: !178, line: 231, type: !6)
!2718 = !DILocalVariable(name: "version", arg: 4, scope: !2711, file: !178, line: 232, type: !6)
!2719 = !DILocalVariable(name: "authors", scope: !2711, file: !178, line: 234, type: !2720)
!2720 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !715, line: 52, baseType: !2721)
!2721 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !996, line: 32, baseType: !2722)
!2722 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !178, baseType: !2723)
!2723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2683, size: 192, elements: !747)
!2724 = !DILocation(line: 0, scope: !2711)
!2725 = !DILocation(line: 234, column: 3, scope: !2711)
!2726 = !DILocation(line: 234, column: 11, scope: !2711)
!2727 = !DILocation(line: 236, column: 3, scope: !2711)
!2728 = !DILocation(line: 237, column: 3, scope: !2711)
!2729 = !DILocation(line: 238, column: 3, scope: !2711)
!2730 = !DILocation(line: 239, column: 1, scope: !2711)
!2731 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !178, file: !178, line: 242, type: !882, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !177, retainedNodes: !4)
!2732 = !DILocation(line: 244, column: 3, scope: !2731)
!2733 = !DILocation(line: 249, column: 3, scope: !2731)
!2734 = !DILocation(line: 255, column: 3, scope: !2731)
!2735 = !DILocation(line: 260, column: 3, scope: !2731)
!2736 = !DILocation(line: 262, column: 1, scope: !2731)
!2737 = distinct !DISubprogram(name: "xnmalloc", scope: !188, file: !188, line: 99, type: !2738, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !184, retainedNodes: !2740)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!46, !91, !91}
!2740 = !{!2741, !2742}
!2741 = !DILocalVariable(name: "n", arg: 1, scope: !2737, file: !188, line: 99, type: !91)
!2742 = !DILocalVariable(name: "s", arg: 2, scope: !2737, file: !188, line: 99, type: !91)
!2743 = !DILocation(line: 0, scope: !2737)
!2744 = !DILocation(line: 101, column: 7, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2737, file: !188, line: 101, column: 7)
!2746 = !DILocation(line: 101, column: 7, scope: !2737)
!2747 = !DILocation(line: 102, column: 5, scope: !2745)
!2748 = !DILocation(line: 103, column: 21, scope: !2737)
!2749 = !DILocalVariable(name: "n", arg: 1, scope: !2750, file: !185, line: 39, type: !91)
!2750 = distinct !DISubprogram(name: "xmalloc", scope: !185, file: !185, line: 39, type: !2751, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !184, retainedNodes: !2753)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!46, !91}
!2753 = !{!2749, !2754}
!2754 = !DILocalVariable(name: "p", scope: !2750, file: !185, line: 41, type: !46)
!2755 = !DILocation(line: 0, scope: !2750, inlinedAt: !2756)
!2756 = distinct !DILocation(line: 103, column: 10, scope: !2737)
!2757 = !DILocation(line: 41, column: 13, scope: !2750, inlinedAt: !2756)
!2758 = !DILocation(line: 42, column: 8, scope: !2759, inlinedAt: !2756)
!2759 = distinct !DILexicalBlock(scope: !2750, file: !185, line: 42, column: 7)
!2760 = !DILocation(line: 42, column: 10, scope: !2759, inlinedAt: !2756)
!2761 = !DILocation(line: 43, column: 5, scope: !2759, inlinedAt: !2756)
!2762 = !DILocation(line: 103, column: 3, scope: !2737)
!2763 = !DILocation(line: 0, scope: !2750)
!2764 = !DILocation(line: 41, column: 13, scope: !2750)
!2765 = !DILocation(line: 42, column: 8, scope: !2759)
!2766 = !DILocation(line: 42, column: 10, scope: !2759)
!2767 = !DILocation(line: 43, column: 5, scope: !2759)
!2768 = !DILocation(line: 44, column: 3, scope: !2750)
!2769 = distinct !DISubprogram(name: "xnrealloc", scope: !188, file: !188, line: 112, type: !2770, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !184, retainedNodes: !2772)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!46, !46, !91, !91}
!2772 = !{!2773, !2774, !2775}
!2773 = !DILocalVariable(name: "p", arg: 1, scope: !2769, file: !188, line: 112, type: !46)
!2774 = !DILocalVariable(name: "n", arg: 2, scope: !2769, file: !188, line: 112, type: !91)
!2775 = !DILocalVariable(name: "s", arg: 3, scope: !2769, file: !188, line: 112, type: !91)
!2776 = !DILocation(line: 0, scope: !2769)
!2777 = !DILocation(line: 114, column: 7, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2769, file: !188, line: 114, column: 7)
!2779 = !DILocation(line: 114, column: 7, scope: !2769)
!2780 = !DILocation(line: 115, column: 5, scope: !2778)
!2781 = !DILocation(line: 116, column: 25, scope: !2769)
!2782 = !DILocalVariable(name: "p", arg: 1, scope: !2783, file: !185, line: 51, type: !46)
!2783 = distinct !DISubprogram(name: "xrealloc", scope: !185, file: !185, line: 51, type: !2784, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !184, retainedNodes: !2786)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!46, !46, !91}
!2786 = !{!2782, !2787}
!2787 = !DILocalVariable(name: "n", arg: 2, scope: !2783, file: !185, line: 51, type: !91)
!2788 = !DILocation(line: 0, scope: !2783, inlinedAt: !2789)
!2789 = distinct !DILocation(line: 116, column: 10, scope: !2769)
!2790 = !DILocation(line: 53, column: 8, scope: !2791, inlinedAt: !2789)
!2791 = distinct !DILexicalBlock(scope: !2783, file: !185, line: 53, column: 7)
!2792 = !DILocation(line: 53, column: 10, scope: !2791, inlinedAt: !2789)
!2793 = !DILocation(line: 57, column: 7, scope: !2794, inlinedAt: !2789)
!2794 = distinct !DILexicalBlock(scope: !2791, file: !185, line: 54, column: 5)
!2795 = !DILocation(line: 58, column: 7, scope: !2794, inlinedAt: !2789)
!2796 = !DILocation(line: 61, column: 7, scope: !2783, inlinedAt: !2789)
!2797 = !DILocation(line: 62, column: 8, scope: !2798, inlinedAt: !2789)
!2798 = distinct !DILexicalBlock(scope: !2783, file: !185, line: 62, column: 7)
!2799 = !DILocation(line: 62, column: 10, scope: !2798, inlinedAt: !2789)
!2800 = !DILocation(line: 63, column: 5, scope: !2798, inlinedAt: !2789)
!2801 = !DILocation(line: 116, column: 3, scope: !2769)
!2802 = !DILocation(line: 0, scope: !2783)
!2803 = !DILocation(line: 53, column: 8, scope: !2791)
!2804 = !DILocation(line: 53, column: 10, scope: !2791)
!2805 = !DILocation(line: 57, column: 7, scope: !2794)
!2806 = !DILocation(line: 58, column: 7, scope: !2794)
!2807 = !DILocation(line: 61, column: 7, scope: !2783)
!2808 = !DILocation(line: 62, column: 8, scope: !2798)
!2809 = !DILocation(line: 62, column: 10, scope: !2798)
!2810 = !DILocation(line: 63, column: 5, scope: !2798)
!2811 = !DILocation(line: 65, column: 1, scope: !2783)
!2812 = !DILocation(line: 0, scope: !189)
!2813 = !DILocation(line: 176, column: 14, scope: !189)
!2814 = !DILocation(line: 178, column: 9, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !189, file: !188, line: 178, column: 7)
!2816 = !DILocation(line: 178, column: 7, scope: !189)
!2817 = !DILocation(line: 180, column: 13, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2819, file: !188, line: 180, column: 11)
!2819 = distinct !DILexicalBlock(scope: !2815, file: !188, line: 179, column: 5)
!2820 = !DILocation(line: 180, column: 11, scope: !2819)
!2821 = !DILocation(line: 188, column: 30, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2818, file: !188, line: 181, column: 9)
!2823 = !DILocation(line: 189, column: 16, scope: !2822)
!2824 = !DILocation(line: 189, column: 13, scope: !2822)
!2825 = !DILocation(line: 190, column: 9, scope: !2822)
!2826 = !DILocation(line: 191, column: 11, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2819, file: !188, line: 191, column: 11)
!2828 = !DILocation(line: 191, column: 11, scope: !2819)
!2829 = !DILocation(line: 206, column: 7, scope: !189)
!2830 = !DILocation(line: 207, column: 25, scope: !189)
!2831 = !DILocation(line: 0, scope: !2783, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 207, column: 10, scope: !189)
!2833 = !DILocation(line: 53, column: 10, scope: !2791, inlinedAt: !2832)
!2834 = !DILocation(line: 192, column: 9, scope: !2827)
!2835 = !DILocation(line: 200, column: 69, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2837, file: !188, line: 200, column: 11)
!2837 = distinct !DILexicalBlock(scope: !2815, file: !188, line: 195, column: 5)
!2838 = !DILocation(line: 201, column: 11, scope: !2836)
!2839 = !DILocation(line: 200, column: 11, scope: !2837)
!2840 = !DILocation(line: 202, column: 9, scope: !2836)
!2841 = !DILocation(line: 203, column: 14, scope: !2837)
!2842 = !DILocation(line: 203, column: 18, scope: !2837)
!2843 = !DILocation(line: 203, column: 9, scope: !2837)
!2844 = !DILocation(line: 53, column: 8, scope: !2791, inlinedAt: !2832)
!2845 = !DILocation(line: 57, column: 7, scope: !2794, inlinedAt: !2832)
!2846 = !DILocation(line: 58, column: 7, scope: !2794, inlinedAt: !2832)
!2847 = !DILocation(line: 61, column: 7, scope: !2783, inlinedAt: !2832)
!2848 = !DILocation(line: 62, column: 8, scope: !2798, inlinedAt: !2832)
!2849 = !DILocation(line: 62, column: 10, scope: !2798, inlinedAt: !2832)
!2850 = !DILocation(line: 63, column: 5, scope: !2798, inlinedAt: !2832)
!2851 = !DILocation(line: 207, column: 3, scope: !189)
!2852 = distinct !DISubprogram(name: "xcharalloc", scope: !188, file: !188, line: 216, type: !1989, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !184, retainedNodes: !2853)
!2853 = !{!2854}
!2854 = !DILocalVariable(name: "n", arg: 1, scope: !2852, file: !188, line: 216, type: !91)
!2855 = !DILocation(line: 0, scope: !2852)
!2856 = !DILocation(line: 0, scope: !2750, inlinedAt: !2857)
!2857 = distinct !DILocation(line: 218, column: 10, scope: !2852)
!2858 = !DILocation(line: 41, column: 13, scope: !2750, inlinedAt: !2857)
!2859 = !DILocation(line: 42, column: 8, scope: !2759, inlinedAt: !2857)
!2860 = !DILocation(line: 42, column: 10, scope: !2759, inlinedAt: !2857)
!2861 = !DILocation(line: 43, column: 5, scope: !2759, inlinedAt: !2857)
!2862 = !DILocation(line: 218, column: 3, scope: !2852)
!2863 = distinct !DISubprogram(name: "x2realloc", scope: !185, file: !185, line: 74, type: !2864, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !184, retainedNodes: !2866)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!46, !46, !192}
!2866 = !{!2867, !2868}
!2867 = !DILocalVariable(name: "p", arg: 1, scope: !2863, file: !185, line: 74, type: !46)
!2868 = !DILocalVariable(name: "pn", arg: 2, scope: !2863, file: !185, line: 74, type: !192)
!2869 = !DILocation(line: 0, scope: !2863)
!2870 = !DILocation(line: 0, scope: !189, inlinedAt: !2871)
!2871 = distinct !DILocation(line: 76, column: 10, scope: !2863)
!2872 = !DILocation(line: 176, column: 14, scope: !189, inlinedAt: !2871)
!2873 = !DILocation(line: 178, column: 9, scope: !2815, inlinedAt: !2871)
!2874 = !DILocation(line: 178, column: 7, scope: !189, inlinedAt: !2871)
!2875 = !DILocation(line: 180, column: 13, scope: !2818, inlinedAt: !2871)
!2876 = !DILocation(line: 180, column: 11, scope: !2819, inlinedAt: !2871)
!2877 = !DILocation(line: 191, column: 11, scope: !2827, inlinedAt: !2871)
!2878 = !DILocation(line: 191, column: 11, scope: !2819, inlinedAt: !2871)
!2879 = !DILocation(line: 192, column: 9, scope: !2827, inlinedAt: !2871)
!2880 = !DILocation(line: 201, column: 11, scope: !2836, inlinedAt: !2871)
!2881 = !DILocation(line: 200, column: 11, scope: !2837, inlinedAt: !2871)
!2882 = !DILocation(line: 202, column: 9, scope: !2836, inlinedAt: !2871)
!2883 = !DILocation(line: 203, column: 14, scope: !2837, inlinedAt: !2871)
!2884 = !DILocation(line: 203, column: 18, scope: !2837, inlinedAt: !2871)
!2885 = !DILocation(line: 203, column: 9, scope: !2837, inlinedAt: !2871)
!2886 = !DILocation(line: 0, scope: !2783, inlinedAt: !2887)
!2887 = distinct !DILocation(line: 207, column: 10, scope: !189, inlinedAt: !2871)
!2888 = !DILocation(line: 53, column: 10, scope: !2791, inlinedAt: !2887)
!2889 = !DILocation(line: 206, column: 7, scope: !189, inlinedAt: !2871)
!2890 = !DILocation(line: 61, column: 7, scope: !2783, inlinedAt: !2887)
!2891 = !DILocation(line: 62, column: 8, scope: !2798, inlinedAt: !2887)
!2892 = !DILocation(line: 62, column: 10, scope: !2798, inlinedAt: !2887)
!2893 = !DILocation(line: 63, column: 5, scope: !2798, inlinedAt: !2887)
!2894 = !DILocation(line: 76, column: 3, scope: !2863)
!2895 = distinct !DISubprogram(name: "xzalloc", scope: !185, file: !185, line: 84, type: !2751, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !184, retainedNodes: !2896)
!2896 = !{!2897}
!2897 = !DILocalVariable(name: "n", arg: 1, scope: !2895, file: !185, line: 84, type: !91)
!2898 = !DILocation(line: 0, scope: !2895)
!2899 = !DILocalVariable(name: "n", arg: 1, scope: !2900, file: !185, line: 93, type: !91)
!2900 = distinct !DISubprogram(name: "xcalloc", scope: !185, file: !185, line: 93, type: !2738, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !184, retainedNodes: !2901)
!2901 = !{!2899, !2902, !2903}
!2902 = !DILocalVariable(name: "s", arg: 2, scope: !2900, file: !185, line: 93, type: !91)
!2903 = !DILocalVariable(name: "p", scope: !2900, file: !185, line: 95, type: !46)
!2904 = !DILocation(line: 0, scope: !2900, inlinedAt: !2905)
!2905 = distinct !DILocation(line: 86, column: 10, scope: !2895)
!2906 = !DILocation(line: 100, column: 7, scope: !2907, inlinedAt: !2905)
!2907 = distinct !DILexicalBlock(scope: !2900, file: !185, line: 100, column: 7)
!2908 = !DILocation(line: 101, column: 7, scope: !2907, inlinedAt: !2905)
!2909 = !DILocation(line: 101, column: 18, scope: !2907, inlinedAt: !2905)
!2910 = !DILocation(line: 101, column: 16, scope: !2907, inlinedAt: !2905)
!2911 = !DILocation(line: 100, column: 7, scope: !2900, inlinedAt: !2905)
!2912 = !DILocation(line: 102, column: 5, scope: !2907, inlinedAt: !2905)
!2913 = !DILocation(line: 86, column: 3, scope: !2895)
!2914 = !DILocation(line: 0, scope: !2900)
!2915 = !DILocation(line: 100, column: 7, scope: !2907)
!2916 = !DILocation(line: 101, column: 7, scope: !2907)
!2917 = !DILocation(line: 101, column: 18, scope: !2907)
!2918 = !DILocation(line: 101, column: 16, scope: !2907)
!2919 = !DILocation(line: 100, column: 7, scope: !2900)
!2920 = !DILocation(line: 102, column: 5, scope: !2907)
!2921 = !DILocation(line: 103, column: 3, scope: !2900)
!2922 = distinct !DISubprogram(name: "xmemdup", scope: !185, file: !185, line: 111, type: !2923, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !184, retainedNodes: !2927)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!46, !2925, !91}
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2927 = !{!2928, !2929}
!2928 = !DILocalVariable(name: "p", arg: 1, scope: !2922, file: !185, line: 111, type: !2925)
!2929 = !DILocalVariable(name: "s", arg: 2, scope: !2922, file: !185, line: 111, type: !91)
!2930 = !DILocation(line: 0, scope: !2922)
!2931 = !DILocation(line: 0, scope: !2750, inlinedAt: !2932)
!2932 = distinct !DILocation(line: 113, column: 18, scope: !2922)
!2933 = !DILocation(line: 41, column: 13, scope: !2750, inlinedAt: !2932)
!2934 = !DILocation(line: 42, column: 8, scope: !2759, inlinedAt: !2932)
!2935 = !DILocation(line: 42, column: 10, scope: !2759, inlinedAt: !2932)
!2936 = !DILocation(line: 43, column: 5, scope: !2759, inlinedAt: !2932)
!2937 = !DILocalVariable(name: "__dest", arg: 1, scope: !2938, file: !1516, line: 26, type: !2941)
!2938 = distinct !DISubprogram(name: "memcpy", scope: !1516, file: !1516, line: 26, type: !2939, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !184, retainedNodes: !2943)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{!46, !2941, !2942, !91}
!2941 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !46)
!2942 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2925)
!2943 = !{!2937, !2944, !2945}
!2944 = !DILocalVariable(name: "__src", arg: 2, scope: !2938, file: !1516, line: 26, type: !2942)
!2945 = !DILocalVariable(name: "__len", arg: 3, scope: !2938, file: !1516, line: 26, type: !91)
!2946 = !DILocation(line: 0, scope: !2938, inlinedAt: !2947)
!2947 = distinct !DILocation(line: 113, column: 10, scope: !2922)
!2948 = !DILocation(line: 29, column: 10, scope: !2938, inlinedAt: !2947)
!2949 = !DILocation(line: 113, column: 3, scope: !2922)
!2950 = distinct !DISubprogram(name: "xstrdup", scope: !185, file: !185, line: 119, type: !875, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !184, retainedNodes: !2951)
!2951 = !{!2952}
!2952 = !DILocalVariable(name: "string", arg: 1, scope: !2950, file: !185, line: 119, type: !6)
!2953 = !DILocation(line: 0, scope: !2950)
!2954 = !DILocation(line: 121, column: 27, scope: !2950)
!2955 = !DILocation(line: 121, column: 43, scope: !2950)
!2956 = !DILocation(line: 0, scope: !2922, inlinedAt: !2957)
!2957 = distinct !DILocation(line: 121, column: 10, scope: !2950)
!2958 = !DILocation(line: 0, scope: !2750, inlinedAt: !2959)
!2959 = distinct !DILocation(line: 113, column: 18, scope: !2922, inlinedAt: !2957)
!2960 = !DILocation(line: 41, column: 13, scope: !2750, inlinedAt: !2959)
!2961 = !DILocation(line: 42, column: 8, scope: !2759, inlinedAt: !2959)
!2962 = !DILocation(line: 42, column: 10, scope: !2759, inlinedAt: !2959)
!2963 = !DILocation(line: 43, column: 5, scope: !2759, inlinedAt: !2959)
!2964 = !DILocation(line: 0, scope: !2938, inlinedAt: !2965)
!2965 = distinct !DILocation(line: 113, column: 10, scope: !2922, inlinedAt: !2957)
!2966 = !DILocation(line: 29, column: 10, scope: !2938, inlinedAt: !2965)
!2967 = !DILocation(line: 121, column: 3, scope: !2950)
!2968 = distinct !DISubprogram(name: "xalloc_die", scope: !202, file: !202, line: 32, type: !882, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !4)
!2969 = !DILocation(line: 34, column: 10, scope: !2968)
!2970 = !DILocation(line: 34, column: 33, scope: !2968)
!2971 = !DILocation(line: 34, column: 3, scope: !2968)
!2972 = !DILocation(line: 40, column: 3, scope: !2968)
!2973 = distinct !DISubprogram(name: "xnanosleep", scope: !204, file: !204, line: 40, type: !2974, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !2976)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!23, !780}
!2976 = !{!2977, !2978}
!2977 = !DILocalVariable(name: "seconds", arg: 1, scope: !2973, file: !204, line: 40, type: !780)
!2978 = !DILocalVariable(name: "ts_sleep", scope: !2973, file: !204, line: 53, type: !2979)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2980, line: 10, size: 128, elements: !2981)
!2980 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "")
!2981 = !{!2982, !2983}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2979, file: !2980, line: 12, baseType: !208, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2979, file: !2980, line: 16, baseType: !2984, size: 64, offset: 64)
!2984 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !209, line: 197, baseType: !210)
!2985 = !DILocation(line: 0, scope: !2973)
!2986 = !DILocation(line: 43, column: 35, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2973, file: !204, line: 43, column: 7)
!2988 = !DILocation(line: 43, column: 7, scope: !2973)
!2989 = !DILocation(line: 68, column: 7, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2991, file: !204, line: 56, column: 5)
!2991 = distinct !DILexicalBlock(scope: !2992, file: !204, line: 55, column: 3)
!2992 = distinct !DILexicalBlock(scope: !2973, file: !204, line: 55, column: 3)
!2993 = !DILocation(line: 46, column: 9, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2987, file: !204, line: 44, column: 5)
!2995 = !DILocation(line: 47, column: 14, scope: !2994)
!2996 = !DILocation(line: 47, column: 20, scope: !2994)
!2997 = distinct !{!2997, !2998, !2999, !690}
!2998 = !DILocation(line: 45, column: 7, scope: !2994)
!2999 = !DILocation(line: 47, column: 28, scope: !2994)
!3000 = !DILocation(line: 53, column: 3, scope: !2973)
!3001 = !DILocation(line: 53, column: 19, scope: !2973)
!3002 = !DILocation(line: 53, column: 30, scope: !2973)
!3003 = !DILocation(line: 68, column: 13, scope: !2990)
!3004 = !DILocation(line: 69, column: 11, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !2990, file: !204, line: 69, column: 11)
!3006 = !DILocation(line: 69, column: 44, scope: !3005)
!3007 = !DILocation(line: 69, column: 11, scope: !2990)
!3008 = !DILocation(line: 71, column: 11, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !2990, file: !204, line: 71, column: 11)
!3010 = !DILocation(line: 71, column: 26, scope: !3009)
!3011 = distinct !{!3011, !3012, !3013}
!3012 = !DILocation(line: 55, column: 3, scope: !2992)
!3013 = !DILocation(line: 73, column: 5, scope: !2992)
!3014 = !DILocation(line: 76, column: 1, scope: !2973)
!3015 = !DISubprogram(name: "pause", scope: !3016, file: !3016, line: 478, type: !3017, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3016 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!23}
!3019 = distinct !DISubprogram(name: "xstrtod", scope: !212, file: !212, line: 44, type: !3020, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !3026)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!16, !6, !3022, !839, !3023}
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!780, !6, !775}
!3026 = !{!3027, !3028, !3029, !3030, !3031, !3032, !3033}
!3027 = !DILocalVariable(name: "str", arg: 1, scope: !3019, file: !212, line: 44, type: !6)
!3028 = !DILocalVariable(name: "ptr", arg: 2, scope: !3019, file: !212, line: 44, type: !3022)
!3029 = !DILocalVariable(name: "result", arg: 3, scope: !3019, file: !212, line: 44, type: !839)
!3030 = !DILocalVariable(name: "convert", arg: 4, scope: !3019, file: !212, line: 45, type: !3023)
!3031 = !DILocalVariable(name: "val", scope: !3019, file: !212, line: 47, type: !780)
!3032 = !DILocalVariable(name: "terminator", scope: !3019, file: !212, line: 48, type: !47)
!3033 = !DILocalVariable(name: "ok", scope: !3019, file: !212, line: 49, type: !16)
!3034 = !DILocation(line: 0, scope: !3019)
!3035 = !DILocation(line: 48, column: 3, scope: !3019)
!3036 = !DILocation(line: 51, column: 3, scope: !3019)
!3037 = !DILocation(line: 51, column: 9, scope: !3019)
!3038 = !DILocation(line: 52, column: 9, scope: !3019)
!3039 = !DILocation(line: 55, column: 7, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3019, file: !212, line: 55, column: 7)
!3041 = !DILocation(line: 55, column: 18, scope: !3040)
!3042 = !DILocation(line: 55, column: 25, scope: !3040)
!3043 = !DILocation(line: 55, column: 33, scope: !3040)
!3044 = !DILocation(line: 55, column: 41, scope: !3040)
!3045 = !DILocation(line: 55, column: 44, scope: !3040)
!3046 = !DILocation(line: 55, column: 56, scope: !3040)
!3047 = !DILocation(line: 55, column: 7, scope: !3019)
!3048 = !DILocation(line: 62, column: 15, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3050, file: !212, line: 62, column: 11)
!3050 = distinct !DILexicalBlock(scope: !3040, file: !212, line: 58, column: 5)
!3051 = !DILocation(line: 62, column: 20, scope: !3049)
!3052 = !DILocation(line: 62, column: 23, scope: !3049)
!3053 = !DILocation(line: 62, column: 29, scope: !3049)
!3054 = !DILocation(line: 62, column: 11, scope: !3050)
!3055 = !DILocation(line: 66, column: 11, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3019, file: !212, line: 66, column: 7)
!3057 = !DILocation(line: 66, column: 7, scope: !3019)
!3058 = !DILocation(line: 67, column: 10, scope: !3056)
!3059 = !DILocation(line: 67, column: 5, scope: !3056)
!3060 = !DILocation(line: 69, column: 11, scope: !3019)
!3061 = !DILocation(line: 71, column: 1, scope: !3019)
!3062 = !DILocation(line: 70, column: 3, scope: !3019)
!3063 = distinct !DISubprogram(name: "rpl_calloc", scope: !214, file: !214, line: 42, type: !2738, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3064)
!3064 = !{!3065, !3066, !3067, !3068}
!3065 = !DILocalVariable(name: "n", arg: 1, scope: !3063, file: !214, line: 42, type: !91)
!3066 = !DILocalVariable(name: "s", arg: 2, scope: !3063, file: !214, line: 42, type: !91)
!3067 = !DILocalVariable(name: "result", scope: !3063, file: !214, line: 44, type: !46)
!3068 = !DILocalVariable(name: "bytes", scope: !3069, file: !214, line: 56, type: !91)
!3069 = distinct !DILexicalBlock(scope: !3070, file: !214, line: 53, column: 5)
!3070 = distinct !DILexicalBlock(scope: !3063, file: !214, line: 47, column: 7)
!3071 = !DILocation(line: 0, scope: !3063)
!3072 = !DILocation(line: 47, column: 9, scope: !3070)
!3073 = !DILocation(line: 47, column: 14, scope: !3070)
!3074 = !DILocation(line: 0, scope: !3069)
!3075 = !DILocation(line: 57, column: 21, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3069, file: !214, line: 57, column: 11)
!3077 = !DILocation(line: 57, column: 11, scope: !3069)
!3078 = !DILocation(line: 59, column: 11, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3076, file: !214, line: 58, column: 9)
!3080 = !DILocation(line: 59, column: 17, scope: !3079)
!3081 = !DILocation(line: 65, column: 12, scope: !3063)
!3082 = !DILocation(line: 72, column: 3, scope: !3063)
!3083 = !DILocation(line: 73, column: 1, scope: !3063)
!3084 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !216, file: !216, line: 86, type: !3085, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3099)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!91, !3087, !6, !91, !3088}
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1269, line: 6, baseType: !3090)
!3090 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1271, line: 21, baseType: !3091)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1271, line: 13, size: 64, elements: !3092)
!3092 = !{!3093, !3094}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3091, file: !1271, line: 15, baseType: !23, size: 32)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3091, file: !1271, line: 20, baseType: !3095, size: 32, offset: 32)
!3095 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3091, file: !1271, line: 16, size: 32, elements: !3096)
!3096 = !{!3097, !3098}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3095, file: !1271, line: 18, baseType: !56, size: 32)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3095, file: !1271, line: 19, baseType: !1280, size: 32)
!3099 = !{!3100, !3101, !3102, !3103, !3104, !3105, !3106}
!3100 = !DILocalVariable(name: "pwc", arg: 1, scope: !3084, file: !216, line: 86, type: !3087)
!3101 = !DILocalVariable(name: "s", arg: 2, scope: !3084, file: !216, line: 86, type: !6)
!3102 = !DILocalVariable(name: "n", arg: 3, scope: !3084, file: !216, line: 86, type: !91)
!3103 = !DILocalVariable(name: "ps", arg: 4, scope: !3084, file: !216, line: 86, type: !3088)
!3104 = !DILocalVariable(name: "ret", scope: !3084, file: !216, line: 88, type: !91)
!3105 = !DILocalVariable(name: "wc", scope: !3084, file: !216, line: 89, type: !1285)
!3106 = !DILocalVariable(name: "uc", scope: !3107, file: !216, line: 156, type: !1147)
!3107 = distinct !DILexicalBlock(scope: !3108, file: !216, line: 155, column: 5)
!3108 = distinct !DILexicalBlock(scope: !3084, file: !216, line: 154, column: 7)
!3109 = !DILocation(line: 0, scope: !3084)
!3110 = !DILocation(line: 89, column: 3, scope: !3084)
!3111 = !DILocation(line: 105, column: 9, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3084, file: !216, line: 105, column: 7)
!3113 = !DILocation(line: 105, column: 7, scope: !3084)
!3114 = !DILocation(line: 145, column: 9, scope: !3084)
!3115 = !DILocation(line: 154, column: 19, scope: !3108)
!3116 = !DILocation(line: 154, column: 26, scope: !3108)
!3117 = !DILocation(line: 154, column: 41, scope: !3108)
!3118 = !DILocation(line: 154, column: 7, scope: !3084)
!3119 = !DILocation(line: 156, column: 26, scope: !3107)
!3120 = !DILocation(line: 0, scope: !3107)
!3121 = !DILocation(line: 157, column: 14, scope: !3107)
!3122 = !DILocation(line: 157, column: 12, scope: !3107)
!3123 = !DILocation(line: 163, column: 1, scope: !3084)
!3124 = !DISubprogram(name: "mbrtowc", scope: !1949, file: !1949, line: 296, type: !3125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!93, !37, !6, !93, !3127}
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3128 = distinct !DISubprogram(name: "rpl_nanosleep", scope: !219, file: !219, line: 46, type: !3129, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !3138)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!23, !3131, !3137}
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3133)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2980, line: 10, size: 128, elements: !3134)
!3134 = !{!3135, !3136}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3133, file: !2980, line: 12, baseType: !208, size: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3133, file: !2980, line: 16, baseType: !2984, size: 64, offset: 64)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3138 = !{!3139, !3140, !3141, !3144, !3145, !3146}
!3139 = !DILocalVariable(name: "requested_delay", arg: 1, scope: !3128, file: !219, line: 46, type: !3131)
!3140 = !DILocalVariable(name: "remaining_delay", arg: 2, scope: !3128, file: !219, line: 47, type: !3137)
!3141 = !DILocalVariable(name: "limit", scope: !3142, file: !219, line: 65, type: !3143)
!3142 = distinct !DILexicalBlock(scope: !3128, file: !219, line: 62, column: 3)
!3143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!3144 = !DILocalVariable(name: "seconds", scope: !3142, file: !219, line: 66, type: !206)
!3145 = !DILocalVariable(name: "intermediate", scope: !3142, file: !219, line: 67, type: !3133)
!3146 = !DILocalVariable(name: "result", scope: !3147, file: !219, line: 72, type: !23)
!3147 = distinct !DILexicalBlock(scope: !3142, file: !219, line: 71, column: 7)
!3148 = !DILocation(line: 0, scope: !3128)
!3149 = !DILocation(line: 56, column: 24, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3128, file: !219, line: 56, column: 7)
!3151 = !{!3152, !2025, i64 8}
!3152 = !{!"timespec", !2025, i64 0, !2025, i64 8}
!3153 = !DILocation(line: 56, column: 36, scope: !3150)
!3154 = !DILocation(line: 58, column: 7, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3150, file: !219, line: 57, column: 5)
!3156 = !DILocation(line: 58, column: 13, scope: !3155)
!3157 = !DILocation(line: 59, column: 7, scope: !3155)
!3158 = !DILocation(line: 0, scope: !3142)
!3159 = !DILocation(line: 66, column: 39, scope: !3142)
!3160 = !{!3152, !2025, i64 0}
!3161 = !DILocation(line: 67, column: 5, scope: !3142)
!3162 = !DILocation(line: 67, column: 21, scope: !3142)
!3163 = !DILocation(line: 68, column: 18, scope: !3142)
!3164 = !DILocation(line: 70, column: 5, scope: !3142)
!3165 = !DILocation(line: 70, column: 18, scope: !3142)
!3166 = !DILocation(line: 73, column: 29, scope: !3147)
!3167 = !DILocation(line: 74, column: 18, scope: !3147)
!3168 = !DILocation(line: 0, scope: !3147)
!3169 = !DILocation(line: 75, column: 17, scope: !3147)
!3170 = !DILocation(line: 76, column: 13, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3147, file: !219, line: 76, column: 13)
!3172 = !DILocation(line: 76, column: 13, scope: !3147)
!3173 = !DILocation(line: 78, column: 17, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3175, file: !219, line: 78, column: 17)
!3175 = distinct !DILexicalBlock(scope: !3171, file: !219, line: 77, column: 11)
!3176 = !DILocation(line: 78, column: 17, scope: !3175)
!3177 = !DILocation(line: 79, column: 32, scope: !3174)
!3178 = !DILocation(line: 79, column: 39, scope: !3174)
!3179 = !DILocation(line: 79, column: 15, scope: !3174)
!3180 = !DILocation(line: 84, column: 25, scope: !3142)
!3181 = !DILocation(line: 85, column: 12, scope: !3142)
!3182 = !DILocation(line: 85, column: 5, scope: !3142)
!3183 = !DILocation(line: 86, column: 3, scope: !3128)
!3184 = !DILocation(line: 87, column: 1, scope: !3128)
!3185 = !DISubprogram(name: "nanosleep", scope: !3186, file: !3186, line: 205, type: !3129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3186 = !DIFile(filename: "/usr/include/time.h", directory: "")
!3187 = distinct !DISubprogram(name: "c_strtod", scope: !146, file: !146, line: 65, type: !3024, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !145, retainedNodes: !3188)
!3188 = !{!3189, !3190, !3191, !3192}
!3189 = !DILocalVariable(name: "nptr", arg: 1, scope: !3187, file: !146, line: 65, type: !6)
!3190 = !DILocalVariable(name: "endptr", arg: 2, scope: !3187, file: !146, line: 65, type: !775)
!3191 = !DILocalVariable(name: "r", scope: !3187, file: !146, line: 67, type: !780)
!3192 = !DILocalVariable(name: "locale", scope: !3187, file: !146, line: 73, type: !148)
!3193 = !DILocation(line: 0, scope: !3187)
!3194 = !DILocation(line: 57, column: 8, scope: !3195, inlinedAt: !3199)
!3195 = distinct !DILexicalBlock(scope: !3196, file: !146, line: 57, column: 7)
!3196 = distinct !DISubprogram(name: "c_locale", scope: !146, file: !146, line: 55, type: !3197, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !145, retainedNodes: !4)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!148}
!3199 = distinct !DILocation(line: 73, column: 21, scope: !3187)
!3200 = !DILocation(line: 57, column: 7, scope: !3196, inlinedAt: !3199)
!3201 = !DILocation(line: 58, column: 22, scope: !3195, inlinedAt: !3199)
!3202 = !DILocation(line: 58, column: 20, scope: !3195, inlinedAt: !3199)
!3203 = !DILocation(line: 58, column: 5, scope: !3195, inlinedAt: !3199)
!3204 = !DILocation(line: 59, column: 10, scope: !3196, inlinedAt: !3199)
!3205 = !DILocation(line: 74, column: 8, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3187, file: !146, line: 74, column: 7)
!3207 = !DILocation(line: 74, column: 7, scope: !3187)
!3208 = !DILocation(line: 76, column: 11, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3210, file: !146, line: 76, column: 11)
!3210 = distinct !DILexicalBlock(scope: !3206, file: !146, line: 75, column: 5)
!3211 = !DILocation(line: 76, column: 11, scope: !3210)
!3212 = !DILocation(line: 77, column: 17, scope: !3209)
!3213 = !DILocation(line: 77, column: 9, scope: !3209)
!3214 = !DILocation(line: 83, column: 7, scope: !3187)
!3215 = !DILocation(line: 134, column: 3, scope: !3187)
!3216 = !DILocation(line: 135, column: 1, scope: !3187)
!3217 = !DISubprogram(name: "newlocale", scope: !769, file: !769, line: 141, type: !3218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!152, !23, !6, !152}
!3220 = !DISubprogram(name: "strtod_l", scope: !878, file: !878, line: 295, type: !3221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{!780, !6, !775, !152}
!3223 = distinct !DISubprogram(name: "close_stream", scope: !225, file: !225, line: 56, type: !3224, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3260)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{!23, !3226}
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2583, line: 7, baseType: !3228)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !720, line: 49, size: 1728, elements: !3229)
!3229 = !{!3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3228, file: !720, line: 51, baseType: !23, size: 32)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3228, file: !720, line: 54, baseType: !47, size: 64, offset: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3228, file: !720, line: 55, baseType: !47, size: 64, offset: 128)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3228, file: !720, line: 56, baseType: !47, size: 64, offset: 192)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3228, file: !720, line: 57, baseType: !47, size: 64, offset: 256)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3228, file: !720, line: 58, baseType: !47, size: 64, offset: 320)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3228, file: !720, line: 59, baseType: !47, size: 64, offset: 384)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3228, file: !720, line: 60, baseType: !47, size: 64, offset: 448)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3228, file: !720, line: 61, baseType: !47, size: 64, offset: 512)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3228, file: !720, line: 64, baseType: !47, size: 64, offset: 576)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3228, file: !720, line: 65, baseType: !47, size: 64, offset: 640)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3228, file: !720, line: 66, baseType: !47, size: 64, offset: 704)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3228, file: !720, line: 68, baseType: !735, size: 64, offset: 768)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3228, file: !720, line: 70, baseType: !3244, size: 64, offset: 832)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3228, file: !720, line: 72, baseType: !23, size: 32, offset: 896)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3228, file: !720, line: 73, baseType: !23, size: 32, offset: 928)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3228, file: !720, line: 74, baseType: !741, size: 64, offset: 960)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3228, file: !720, line: 77, baseType: !90, size: 16, offset: 1024)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3228, file: !720, line: 78, baseType: !744, size: 8, offset: 1040)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3228, file: !720, line: 79, baseType: !746, size: 8, offset: 1048)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3228, file: !720, line: 81, baseType: !750, size: 64, offset: 1088)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3228, file: !720, line: 89, baseType: !753, size: 64, offset: 1152)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3228, file: !720, line: 91, baseType: !755, size: 64, offset: 1216)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3228, file: !720, line: 92, baseType: !758, size: 64, offset: 1280)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3228, file: !720, line: 93, baseType: !3244, size: 64, offset: 1344)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3228, file: !720, line: 94, baseType: !46, size: 64, offset: 1408)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3228, file: !720, line: 95, baseType: !91, size: 64, offset: 1472)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3228, file: !720, line: 96, baseType: !23, size: 32, offset: 1536)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3228, file: !720, line: 98, baseType: !765, size: 160, offset: 1568)
!3260 = !{!3261, !3262, !3264, !3265}
!3261 = !DILocalVariable(name: "stream", arg: 1, scope: !3223, file: !225, line: 56, type: !3226)
!3262 = !DILocalVariable(name: "some_pending", scope: !3223, file: !225, line: 58, type: !3263)
!3263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!3264 = !DILocalVariable(name: "prev_fail", scope: !3223, file: !225, line: 59, type: !3263)
!3265 = !DILocalVariable(name: "fclose_fail", scope: !3223, file: !225, line: 60, type: !3263)
!3266 = !DILocation(line: 0, scope: !3223)
!3267 = !DILocation(line: 58, column: 30, scope: !3223)
!3268 = !DILocalVariable(name: "__stream", arg: 1, scope: !3269, file: !3270, line: 135, type: !3226)
!3269 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3270, file: !3270, line: 135, type: !3224, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3271)
!3270 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!3271 = !{!3268}
!3272 = !DILocation(line: 0, scope: !3269, inlinedAt: !3273)
!3273 = distinct !DILocation(line: 59, column: 27, scope: !3223)
!3274 = !DILocation(line: 137, column: 10, scope: !3269, inlinedAt: !3273)
!3275 = !{!3276, !806, i64 0}
!3276 = !{!"_IO_FILE", !806, i64 0, !650, i64 8, !650, i64 16, !650, i64 24, !650, i64 32, !650, i64 40, !650, i64 48, !650, i64 56, !650, i64 64, !650, i64 72, !650, i64 80, !650, i64 88, !650, i64 96, !650, i64 104, !806, i64 112, !806, i64 116, !2025, i64 120, !1508, i64 128, !651, i64 130, !651, i64 131, !650, i64 136, !2025, i64 144, !650, i64 152, !650, i64 160, !650, i64 168, !650, i64 176, !2025, i64 184, !806, i64 192, !651, i64 196}
!3277 = !DILocation(line: 59, column: 43, scope: !3223)
!3278 = !DILocation(line: 60, column: 29, scope: !3223)
!3279 = !DILocation(line: 60, column: 45, scope: !3223)
!3280 = !DILocation(line: 70, column: 17, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3223, file: !225, line: 70, column: 7)
!3282 = !DILocation(line: 58, column: 50, scope: !3223)
!3283 = !DILocation(line: 70, column: 33, scope: !3281)
!3284 = !DILocation(line: 70, column: 53, scope: !3281)
!3285 = !DILocation(line: 70, column: 59, scope: !3281)
!3286 = !DILocation(line: 70, column: 7, scope: !3223)
!3287 = !DILocation(line: 72, column: 11, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3281, file: !225, line: 71, column: 5)
!3289 = !DILocation(line: 73, column: 9, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3288, file: !225, line: 72, column: 11)
!3291 = !DILocation(line: 73, column: 15, scope: !3290)
!3292 = !DILocation(line: 78, column: 1, scope: !3223)
!3293 = distinct !DISubprogram(name: "dtotimespec", scope: !227, file: !227, line: 30, type: !3294, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !3300)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!3296, !780}
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2980, line: 10, size: 128, elements: !3297)
!3297 = !{!3298, !3299}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3296, file: !2980, line: 12, baseType: !208, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3296, file: !2980, line: 16, baseType: !2984, size: 64, offset: 64)
!3300 = !{!3301, !3302, !3306, !3307}
!3301 = !DILocalVariable(name: "sec", arg: 1, scope: !3293, file: !227, line: 30, type: !780)
!3302 = !DILocalVariable(name: "s", scope: !3303, file: !227, line: 38, type: !206)
!3303 = distinct !DILexicalBlock(scope: !3304, file: !227, line: 37, column: 5)
!3304 = distinct !DILexicalBlock(scope: !3305, file: !227, line: 34, column: 12)
!3305 = distinct !DILexicalBlock(scope: !3293, file: !227, line: 32, column: 7)
!3306 = !DILocalVariable(name: "frac", scope: !3303, file: !227, line: 39, type: !780)
!3307 = !DILocalVariable(name: "ns", scope: !3303, file: !227, line: 40, type: !210)
!3308 = !DILocation(line: 0, scope: !3293)
!3309 = !DILocation(line: 32, column: 32, scope: !3305)
!3310 = !DILocation(line: 32, column: 7, scope: !3293)
!3311 = !DILocation(line: 34, column: 19, scope: !3304)
!3312 = !DILocation(line: 34, column: 12, scope: !3305)
!3313 = !DILocation(line: 38, column: 18, scope: !3303)
!3314 = !DILocation(line: 0, scope: !3303)
!3315 = !DILocation(line: 39, column: 42, scope: !3303)
!3316 = !DILocation(line: 39, column: 40, scope: !3303)
!3317 = !DILocation(line: 39, column: 33, scope: !3303)
!3318 = !DILocation(line: 40, column: 17, scope: !3303)
!3319 = !DILocation(line: 41, column: 13, scope: !3303)
!3320 = !DILocation(line: 41, column: 16, scope: !3303)
!3321 = !DILocation(line: 41, column: 10, scope: !3303)
!3322 = !DILocation(line: 42, column: 15, scope: !3303)
!3323 = !DILocation(line: 42, column: 9, scope: !3303)
!3324 = !DILocation(line: 43, column: 10, scope: !3303)
!3325 = !DILocation(line: 45, column: 14, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3303, file: !227, line: 45, column: 11)
!3327 = !DILocation(line: 45, column: 11, scope: !3303)
!3328 = !DILocalVariable(name: "s", arg: 1, scope: !3329, file: !230, line: 54, type: !206)
!3329 = distinct !DISubprogram(name: "make_timespec", scope: !230, file: !230, line: 54, type: !3330, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !3332)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{!3296, !206, !210}
!3332 = !{!3328, !3333, !3334}
!3333 = !DILocalVariable(name: "ns", arg: 2, scope: !3329, file: !230, line: 54, type: !210)
!3334 = !DILocalVariable(name: "r", scope: !3329, file: !230, line: 56, type: !3296)
!3335 = !DILocation(line: 0, scope: !3329, inlinedAt: !3336)
!3336 = distinct !DILocation(line: 51, column: 14, scope: !3303)
!3337 = !DILocation(line: 59, column: 3, scope: !3329, inlinedAt: !3336)
!3338 = !DILocation(line: 53, column: 1, scope: !3293)
!3339 = distinct !DISubprogram(name: "hard_locale", scope: !234, file: !234, line: 27, type: !3340, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !3342)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!16, !23}
!3342 = !{!3343, !3344}
!3343 = !DILocalVariable(name: "category", arg: 1, scope: !3339, file: !234, line: 27, type: !23)
!3344 = !DILocalVariable(name: "locale", scope: !3339, file: !234, line: 29, type: !3345)
!3345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !3346)
!3346 = !{!3347}
!3347 = !DISubrange(count: 257)
!3348 = !DILocation(line: 0, scope: !3339)
!3349 = !DILocation(line: 29, column: 3, scope: !3339)
!3350 = !DILocation(line: 29, column: 8, scope: !3339)
!3351 = !DILocation(line: 31, column: 7, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3339, file: !234, line: 31, column: 7)
!3353 = !DILocation(line: 31, column: 7, scope: !3339)
!3354 = !DILocation(line: 34, column: 12, scope: !3339)
!3355 = !DILocation(line: 34, column: 38, scope: !3339)
!3356 = !DILocation(line: 34, column: 41, scope: !3339)
!3357 = !DILocation(line: 34, column: 66, scope: !3339)
!3358 = !DILocation(line: 35, column: 1, scope: !3339)
!3359 = distinct !DISubprogram(name: "locale_charset", scope: !236, file: !236, line: 831, type: !3360, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !3362)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!6}
!3362 = !{!3363}
!3363 = !DILocalVariable(name: "codeset", scope: !3359, file: !236, line: 833, type: !6)
!3364 = !DILocation(line: 847, column: 13, scope: !3359)
!3365 = !DILocation(line: 0, scope: !3359)
!3366 = !DILocation(line: 911, column: 15, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3359, file: !236, line: 911, column: 7)
!3368 = !DILocation(line: 911, column: 7, scope: !3359)
!3369 = !DILocation(line: 1070, column: 13, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3371, file: !236, line: 1070, column: 13)
!3371 = distinct !DILexicalBlock(scope: !3372, file: !236, line: 1060, column: 7)
!3372 = distinct !DILexicalBlock(scope: !3359, file: !236, line: 1019, column: 3)
!3373 = !DILocation(line: 1070, column: 24, scope: !3370)
!3374 = !DILocation(line: 1070, column: 13, scope: !3371)
!3375 = !DILocation(line: 1158, column: 3, scope: !3359)
!3376 = !DISubprogram(name: "nl_langinfo", scope: !239, file: !239, line: 661, type: !3377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!47, !23}
!3379 = distinct !DISubprogram(name: "setlocale_null_r", scope: !625, file: !625, line: 269, type: !3380, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !624, retainedNodes: !3382)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!23, !23, !47, !91}
!3382 = !{!3383, !3384, !3385}
!3383 = !DILocalVariable(name: "category", arg: 1, scope: !3379, file: !625, line: 269, type: !23)
!3384 = !DILocalVariable(name: "buf", arg: 2, scope: !3379, file: !625, line: 269, type: !47)
!3385 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3379, file: !625, line: 269, type: !91)
!3386 = !DILocation(line: 0, scope: !3379)
!3387 = !DILocalVariable(name: "category", arg: 1, scope: !3388, file: !625, line: 91, type: !23)
!3388 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !625, file: !625, line: 91, type: !3380, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !624, retainedNodes: !3389)
!3389 = !{!3387, !3390, !3391, !3392, !3393}
!3390 = !DILocalVariable(name: "buf", arg: 2, scope: !3388, file: !625, line: 91, type: !47)
!3391 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3388, file: !625, line: 91, type: !91)
!3392 = !DILocalVariable(name: "result", scope: !3388, file: !625, line: 140, type: !6)
!3393 = !DILocalVariable(name: "length", scope: !3394, file: !625, line: 154, type: !91)
!3394 = distinct !DILexicalBlock(scope: !3395, file: !625, line: 153, column: 5)
!3395 = distinct !DILexicalBlock(scope: !3388, file: !625, line: 142, column: 7)
!3396 = !DILocation(line: 0, scope: !3388, inlinedAt: !3397)
!3397 = distinct !DILocation(line: 274, column: 10, scope: !3379)
!3398 = !DILocalVariable(name: "category", arg: 1, scope: !3399, file: !625, line: 60, type: !23)
!3399 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !625, file: !625, line: 60, type: !3400, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !624, retainedNodes: !3402)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{!6, !23}
!3402 = !{!3398, !3403}
!3403 = !DILocalVariable(name: "result", scope: !3399, file: !625, line: 62, type: !6)
!3404 = !DILocation(line: 0, scope: !3399, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 140, column: 24, scope: !3388, inlinedAt: !3397)
!3406 = !DILocation(line: 62, column: 24, scope: !3399, inlinedAt: !3405)
!3407 = !DILocation(line: 142, column: 14, scope: !3395, inlinedAt: !3397)
!3408 = !DILocation(line: 142, column: 7, scope: !3388, inlinedAt: !3397)
!3409 = !DILocation(line: 145, column: 19, scope: !3410, inlinedAt: !3397)
!3410 = distinct !DILexicalBlock(scope: !3411, file: !625, line: 145, column: 11)
!3411 = distinct !DILexicalBlock(scope: !3395, file: !625, line: 143, column: 5)
!3412 = !DILocation(line: 145, column: 11, scope: !3411, inlinedAt: !3397)
!3413 = !DILocation(line: 149, column: 16, scope: !3410, inlinedAt: !3397)
!3414 = !DILocation(line: 149, column: 9, scope: !3410, inlinedAt: !3397)
!3415 = !DILocation(line: 154, column: 23, scope: !3394, inlinedAt: !3397)
!3416 = !DILocation(line: 0, scope: !3394, inlinedAt: !3397)
!3417 = !DILocation(line: 155, column: 18, scope: !3418, inlinedAt: !3397)
!3418 = distinct !DILexicalBlock(scope: !3394, file: !625, line: 155, column: 11)
!3419 = !DILocation(line: 155, column: 11, scope: !3394, inlinedAt: !3397)
!3420 = !DILocation(line: 157, column: 39, scope: !3421, inlinedAt: !3397)
!3421 = distinct !DILexicalBlock(scope: !3418, file: !625, line: 156, column: 9)
!3422 = !DILocalVariable(name: "__dest", arg: 1, scope: !3423, file: !1516, line: 26, type: !2941)
!3423 = distinct !DISubprogram(name: "memcpy", scope: !1516, file: !1516, line: 26, type: !2939, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !624, retainedNodes: !3424)
!3424 = !{!3422, !3425, !3426}
!3425 = !DILocalVariable(name: "__src", arg: 2, scope: !3423, file: !1516, line: 26, type: !2942)
!3426 = !DILocalVariable(name: "__len", arg: 3, scope: !3423, file: !1516, line: 26, type: !91)
!3427 = !DILocation(line: 0, scope: !3423, inlinedAt: !3428)
!3428 = distinct !DILocation(line: 157, column: 11, scope: !3421, inlinedAt: !3397)
!3429 = !DILocation(line: 29, column: 10, scope: !3423, inlinedAt: !3428)
!3430 = !DILocation(line: 158, column: 11, scope: !3421, inlinedAt: !3397)
!3431 = !DILocation(line: 162, column: 23, scope: !3432, inlinedAt: !3397)
!3432 = distinct !DILexicalBlock(scope: !3433, file: !625, line: 162, column: 15)
!3433 = distinct !DILexicalBlock(scope: !3418, file: !625, line: 161, column: 9)
!3434 = !DILocation(line: 162, column: 15, scope: !3433, inlinedAt: !3397)
!3435 = !DILocation(line: 167, column: 44, scope: !3436, inlinedAt: !3397)
!3436 = distinct !DILexicalBlock(scope: !3432, file: !625, line: 163, column: 13)
!3437 = !DILocation(line: 0, scope: !3423, inlinedAt: !3438)
!3438 = distinct !DILocation(line: 167, column: 15, scope: !3436, inlinedAt: !3397)
!3439 = !DILocation(line: 29, column: 10, scope: !3423, inlinedAt: !3438)
!3440 = !DILocation(line: 168, column: 15, scope: !3436, inlinedAt: !3397)
!3441 = !DILocation(line: 168, column: 32, scope: !3436, inlinedAt: !3397)
!3442 = !DILocation(line: 169, column: 13, scope: !3436, inlinedAt: !3397)
!3443 = !DILocation(line: 0, scope: !3395, inlinedAt: !3397)
!3444 = !DILocation(line: 274, column: 3, scope: !3379)
!3445 = distinct !DISubprogram(name: "setlocale_null", scope: !625, file: !625, line: 301, type: !3400, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !624, retainedNodes: !3446)
!3446 = !{!3447}
!3447 = !DILocalVariable(name: "category", arg: 1, scope: !3445, file: !625, line: 301, type: !23)
!3448 = !DILocation(line: 0, scope: !3445)
!3449 = !DILocation(line: 0, scope: !3399, inlinedAt: !3450)
!3450 = distinct !DILocation(line: 304, column: 10, scope: !3445)
!3451 = !DILocation(line: 62, column: 24, scope: !3399, inlinedAt: !3450)
!3452 = !DILocation(line: 304, column: 3, scope: !3445)
!3453 = distinct !DISubprogram(name: "rpl_fclose", scope: !627, file: !627, line: 58, type: !3454, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !626, retainedNodes: !3490)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!23, !3456}
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2583, line: 7, baseType: !3458)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !720, line: 49, size: 1728, elements: !3459)
!3459 = !{!3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3458, file: !720, line: 51, baseType: !23, size: 32)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3458, file: !720, line: 54, baseType: !47, size: 64, offset: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3458, file: !720, line: 55, baseType: !47, size: 64, offset: 128)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3458, file: !720, line: 56, baseType: !47, size: 64, offset: 192)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3458, file: !720, line: 57, baseType: !47, size: 64, offset: 256)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3458, file: !720, line: 58, baseType: !47, size: 64, offset: 320)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3458, file: !720, line: 59, baseType: !47, size: 64, offset: 384)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3458, file: !720, line: 60, baseType: !47, size: 64, offset: 448)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3458, file: !720, line: 61, baseType: !47, size: 64, offset: 512)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3458, file: !720, line: 64, baseType: !47, size: 64, offset: 576)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3458, file: !720, line: 65, baseType: !47, size: 64, offset: 640)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3458, file: !720, line: 66, baseType: !47, size: 64, offset: 704)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3458, file: !720, line: 68, baseType: !735, size: 64, offset: 768)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3458, file: !720, line: 70, baseType: !3474, size: 64, offset: 832)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3458, file: !720, line: 72, baseType: !23, size: 32, offset: 896)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3458, file: !720, line: 73, baseType: !23, size: 32, offset: 928)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3458, file: !720, line: 74, baseType: !741, size: 64, offset: 960)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3458, file: !720, line: 77, baseType: !90, size: 16, offset: 1024)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3458, file: !720, line: 78, baseType: !744, size: 8, offset: 1040)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3458, file: !720, line: 79, baseType: !746, size: 8, offset: 1048)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3458, file: !720, line: 81, baseType: !750, size: 64, offset: 1088)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3458, file: !720, line: 89, baseType: !753, size: 64, offset: 1152)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3458, file: !720, line: 91, baseType: !755, size: 64, offset: 1216)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3458, file: !720, line: 92, baseType: !758, size: 64, offset: 1280)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3458, file: !720, line: 93, baseType: !3474, size: 64, offset: 1344)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3458, file: !720, line: 94, baseType: !46, size: 64, offset: 1408)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3458, file: !720, line: 95, baseType: !91, size: 64, offset: 1472)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3458, file: !720, line: 96, baseType: !23, size: 32, offset: 1536)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3458, file: !720, line: 98, baseType: !765, size: 160, offset: 1568)
!3490 = !{!3491, !3492, !3493, !3494}
!3491 = !DILocalVariable(name: "fp", arg: 1, scope: !3453, file: !627, line: 58, type: !3456)
!3492 = !DILocalVariable(name: "saved_errno", scope: !3453, file: !627, line: 60, type: !23)
!3493 = !DILocalVariable(name: "fd", scope: !3453, file: !627, line: 61, type: !23)
!3494 = !DILocalVariable(name: "result", scope: !3453, file: !627, line: 62, type: !23)
!3495 = !DILocation(line: 0, scope: !3453)
!3496 = !DILocation(line: 65, column: 8, scope: !3453)
!3497 = !DILocation(line: 66, column: 10, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3453, file: !627, line: 66, column: 7)
!3499 = !DILocation(line: 66, column: 7, scope: !3453)
!3500 = !DILocation(line: 67, column: 12, scope: !3498)
!3501 = !DILocation(line: 67, column: 5, scope: !3498)
!3502 = !DILocation(line: 72, column: 9, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3453, file: !627, line: 72, column: 7)
!3504 = !DILocation(line: 72, column: 23, scope: !3503)
!3505 = !DILocation(line: 72, column: 33, scope: !3503)
!3506 = !DILocation(line: 72, column: 26, scope: !3503)
!3507 = !DILocation(line: 72, column: 59, scope: !3503)
!3508 = !DILocation(line: 73, column: 7, scope: !3503)
!3509 = !DILocation(line: 73, column: 10, scope: !3503)
!3510 = !DILocation(line: 72, column: 7, scope: !3453)
!3511 = !DILocation(line: 100, column: 12, scope: !3453)
!3512 = !DILocation(line: 105, column: 7, scope: !3453)
!3513 = !DILocation(line: 74, column: 19, scope: !3503)
!3514 = !DILocation(line: 105, column: 19, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3453, file: !627, line: 105, column: 7)
!3516 = !DILocation(line: 107, column: 13, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3515, file: !627, line: 106, column: 5)
!3518 = !DILocation(line: 109, column: 5, scope: !3517)
!3519 = !DILocation(line: 112, column: 1, scope: !3453)
!3520 = !DISubprogram(name: "fileno", scope: !715, file: !715, line: 785, type: !3521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3521 = !DISubroutineType(types: !3522)
!3522 = !{!23, !3474}
!3523 = !DISubprogram(name: "fclose", scope: !715, file: !715, line: 213, type: !3521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3524 = !DISubprogram(name: "lseek", scope: !3016, file: !3016, line: 334, type: !3525, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{!210, !23, !210, !23}
!3527 = distinct !DISubprogram(name: "rpl_fflush", scope: !629, file: !629, line: 129, type: !3528, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !3564)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!23, !3530}
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2583, line: 7, baseType: !3532)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !720, line: 49, size: 1728, elements: !3533)
!3533 = !{!3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3532, file: !720, line: 51, baseType: !23, size: 32)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3532, file: !720, line: 54, baseType: !47, size: 64, offset: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3532, file: !720, line: 55, baseType: !47, size: 64, offset: 128)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3532, file: !720, line: 56, baseType: !47, size: 64, offset: 192)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3532, file: !720, line: 57, baseType: !47, size: 64, offset: 256)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3532, file: !720, line: 58, baseType: !47, size: 64, offset: 320)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3532, file: !720, line: 59, baseType: !47, size: 64, offset: 384)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3532, file: !720, line: 60, baseType: !47, size: 64, offset: 448)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3532, file: !720, line: 61, baseType: !47, size: 64, offset: 512)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3532, file: !720, line: 64, baseType: !47, size: 64, offset: 576)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3532, file: !720, line: 65, baseType: !47, size: 64, offset: 640)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3532, file: !720, line: 66, baseType: !47, size: 64, offset: 704)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3532, file: !720, line: 68, baseType: !735, size: 64, offset: 768)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3532, file: !720, line: 70, baseType: !3548, size: 64, offset: 832)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3532, file: !720, line: 72, baseType: !23, size: 32, offset: 896)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3532, file: !720, line: 73, baseType: !23, size: 32, offset: 928)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3532, file: !720, line: 74, baseType: !741, size: 64, offset: 960)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3532, file: !720, line: 77, baseType: !90, size: 16, offset: 1024)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3532, file: !720, line: 78, baseType: !744, size: 8, offset: 1040)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3532, file: !720, line: 79, baseType: !746, size: 8, offset: 1048)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3532, file: !720, line: 81, baseType: !750, size: 64, offset: 1088)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3532, file: !720, line: 89, baseType: !753, size: 64, offset: 1152)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3532, file: !720, line: 91, baseType: !755, size: 64, offset: 1216)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3532, file: !720, line: 92, baseType: !758, size: 64, offset: 1280)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3532, file: !720, line: 93, baseType: !3548, size: 64, offset: 1344)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3532, file: !720, line: 94, baseType: !46, size: 64, offset: 1408)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3532, file: !720, line: 95, baseType: !91, size: 64, offset: 1472)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3532, file: !720, line: 96, baseType: !23, size: 32, offset: 1536)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3532, file: !720, line: 98, baseType: !765, size: 160, offset: 1568)
!3564 = !{!3565}
!3565 = !DILocalVariable(name: "stream", arg: 1, scope: !3527, file: !629, line: 129, type: !3530)
!3566 = !DILocation(line: 0, scope: !3527)
!3567 = !DILocation(line: 150, column: 14, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3527, file: !629, line: 150, column: 7)
!3569 = !DILocation(line: 150, column: 22, scope: !3568)
!3570 = !DILocation(line: 150, column: 27, scope: !3568)
!3571 = !DILocation(line: 150, column: 7, scope: !3527)
!3572 = !DILocation(line: 151, column: 12, scope: !3568)
!3573 = !DILocation(line: 151, column: 5, scope: !3568)
!3574 = !DILocalVariable(name: "fp", arg: 1, scope: !3575, file: !629, line: 41, type: !3530)
!3575 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !629, file: !629, line: 41, type: !3576, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !3578)
!3576 = !DISubroutineType(types: !3577)
!3577 = !{null, !3530}
!3578 = !{!3574}
!3579 = !DILocation(line: 0, scope: !3575, inlinedAt: !3580)
!3580 = distinct !DILocation(line: 156, column: 3, scope: !3527)
!3581 = !DILocation(line: 43, column: 11, scope: !3582, inlinedAt: !3580)
!3582 = distinct !DILexicalBlock(scope: !3575, file: !629, line: 43, column: 7)
!3583 = !DILocation(line: 43, column: 18, scope: !3582, inlinedAt: !3580)
!3584 = !DILocation(line: 43, column: 7, scope: !3575, inlinedAt: !3580)
!3585 = !DILocation(line: 45, column: 5, scope: !3582, inlinedAt: !3580)
!3586 = !DILocation(line: 158, column: 10, scope: !3527)
!3587 = !DILocation(line: 158, column: 3, scope: !3527)
!3588 = !DILocation(line: 235, column: 1, scope: !3527)
!3589 = !DISubprogram(name: "fflush", scope: !715, file: !715, line: 218, type: !3590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!23, !3548}
!3592 = distinct !DISubprogram(name: "rpl_fseeko", scope: !631, file: !631, line: 28, type: !3593, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !630, retainedNodes: !3630)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{!23, !3595, !3629, !23}
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2583, line: 7, baseType: !3597)
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !720, line: 49, size: 1728, elements: !3598)
!3598 = !{!3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3597, file: !720, line: 51, baseType: !23, size: 32)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3597, file: !720, line: 54, baseType: !47, size: 64, offset: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3597, file: !720, line: 55, baseType: !47, size: 64, offset: 128)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3597, file: !720, line: 56, baseType: !47, size: 64, offset: 192)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3597, file: !720, line: 57, baseType: !47, size: 64, offset: 256)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3597, file: !720, line: 58, baseType: !47, size: 64, offset: 320)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3597, file: !720, line: 59, baseType: !47, size: 64, offset: 384)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3597, file: !720, line: 60, baseType: !47, size: 64, offset: 448)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3597, file: !720, line: 61, baseType: !47, size: 64, offset: 512)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3597, file: !720, line: 64, baseType: !47, size: 64, offset: 576)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3597, file: !720, line: 65, baseType: !47, size: 64, offset: 640)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3597, file: !720, line: 66, baseType: !47, size: 64, offset: 704)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3597, file: !720, line: 68, baseType: !735, size: 64, offset: 768)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3597, file: !720, line: 70, baseType: !3613, size: 64, offset: 832)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3597, file: !720, line: 72, baseType: !23, size: 32, offset: 896)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3597, file: !720, line: 73, baseType: !23, size: 32, offset: 928)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3597, file: !720, line: 74, baseType: !741, size: 64, offset: 960)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3597, file: !720, line: 77, baseType: !90, size: 16, offset: 1024)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3597, file: !720, line: 78, baseType: !744, size: 8, offset: 1040)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3597, file: !720, line: 79, baseType: !746, size: 8, offset: 1048)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3597, file: !720, line: 81, baseType: !750, size: 64, offset: 1088)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3597, file: !720, line: 89, baseType: !753, size: 64, offset: 1152)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3597, file: !720, line: 91, baseType: !755, size: 64, offset: 1216)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3597, file: !720, line: 92, baseType: !758, size: 64, offset: 1280)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3597, file: !720, line: 93, baseType: !3613, size: 64, offset: 1344)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3597, file: !720, line: 94, baseType: !46, size: 64, offset: 1408)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3597, file: !720, line: 95, baseType: !91, size: 64, offset: 1472)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3597, file: !720, line: 96, baseType: !23, size: 32, offset: 1536)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3597, file: !720, line: 98, baseType: !765, size: 160, offset: 1568)
!3629 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !715, line: 63, baseType: !741)
!3630 = !{!3631, !3632, !3633, !3634}
!3631 = !DILocalVariable(name: "fp", arg: 1, scope: !3592, file: !631, line: 28, type: !3595)
!3632 = !DILocalVariable(name: "offset", arg: 2, scope: !3592, file: !631, line: 28, type: !3629)
!3633 = !DILocalVariable(name: "whence", arg: 3, scope: !3592, file: !631, line: 28, type: !23)
!3634 = !DILocalVariable(name: "pos", scope: !3635, file: !631, line: 117, type: !3629)
!3635 = distinct !DILexicalBlock(scope: !3636, file: !631, line: 113, column: 5)
!3636 = distinct !DILexicalBlock(scope: !3592, file: !631, line: 52, column: 7)
!3637 = !DILocation(line: 0, scope: !3592)
!3638 = !DILocation(line: 52, column: 11, scope: !3636)
!3639 = !{!3276, !650, i64 16}
!3640 = !DILocation(line: 52, column: 31, scope: !3636)
!3641 = !{!3276, !650, i64 8}
!3642 = !DILocation(line: 52, column: 24, scope: !3636)
!3643 = !DILocation(line: 53, column: 7, scope: !3636)
!3644 = !DILocation(line: 53, column: 14, scope: !3636)
!3645 = !{!3276, !650, i64 40}
!3646 = !DILocation(line: 53, column: 35, scope: !3636)
!3647 = !{!3276, !650, i64 32}
!3648 = !DILocation(line: 53, column: 28, scope: !3636)
!3649 = !DILocation(line: 54, column: 7, scope: !3636)
!3650 = !DILocation(line: 54, column: 14, scope: !3636)
!3651 = !{!3276, !650, i64 72}
!3652 = !DILocation(line: 54, column: 28, scope: !3636)
!3653 = !DILocation(line: 52, column: 7, scope: !3592)
!3654 = !DILocation(line: 117, column: 26, scope: !3635)
!3655 = !DILocation(line: 117, column: 19, scope: !3635)
!3656 = !DILocation(line: 0, scope: !3635)
!3657 = !DILocation(line: 118, column: 15, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3635, file: !631, line: 118, column: 11)
!3659 = !DILocation(line: 118, column: 11, scope: !3635)
!3660 = !DILocation(line: 129, column: 11, scope: !3635)
!3661 = !DILocation(line: 129, column: 18, scope: !3635)
!3662 = !DILocation(line: 130, column: 11, scope: !3635)
!3663 = !DILocation(line: 130, column: 19, scope: !3635)
!3664 = !{!3276, !2025, i64 144}
!3665 = !DILocation(line: 161, column: 7, scope: !3635)
!3666 = !DILocation(line: 163, column: 10, scope: !3592)
!3667 = !DILocation(line: 163, column: 3, scope: !3592)
!3668 = !DILocation(line: 164, column: 1, scope: !3592)
!3669 = !DISubprogram(name: "fseeko", scope: !715, file: !715, line: 712, type: !3670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!23, !3613, !210, !23}
