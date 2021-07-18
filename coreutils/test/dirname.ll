; ModuleID = 'coreutils-8.32/src/dirname.bc'
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
@.str.1 = private unnamed_addr constant [28 x i8] c"Usage: %s [OPTION] NAME...\0A\00", align 1
@.str.2 = private unnamed_addr constant [152 x i8] c"Output each NAME with its last non-slash component and trailing slashes\0Aremoved; if NAME contains no /'s, output '.' (meaning the current directory).\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [61 x i8] c"  -z, --zero     end each output line with NUL, not newline\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [130 x i8] c"\0AExamples:\0A  %s /usr/bin/          -> \22/usr\22\0A  %s dir1/str dir2/str  -> \22dir1\22 followed by \22dir2\22\0A  %s stdio.h            -> \22.\22\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"dirname\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.16 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.27 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.29 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@longopts = internal constant [4 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.13 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@main.dot = internal constant i8 46, align 1, !dbg !16
@.str.31 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), align 8, !dbg !107
@.str.34 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !112
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !117
@.str.37 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.38 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.39 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !119
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !125
@.str.50 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.51 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.52 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.54, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.55, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.56, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.57, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.58, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.59, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.60, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.62, i32 0, i32 0), i8* null], align 16, !dbg !131
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !173
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !179
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !191
@.str.11.63 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.64 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.65 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.66 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.67 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.68 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.69 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !198
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !205
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !193
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !207
@.str.72 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.73 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.74 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.75 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.76 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.77 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.78 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.79 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.80 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.81 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.82 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.83 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.84 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.85 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.86 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.87 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.90 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.91 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.92 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.93 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.94 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.95 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.96 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !213
@.str.1.107 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.117 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.120 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.121 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !664 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !668, metadata !DIExpression()), !dbg !669
  %3 = icmp eq i32 %0, 0, !dbg !670
  br i1 %3, label %9, label %4, !dbg !672

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !673, !tbaa !675
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #26, !dbg !673
  %7 = load i8*, i8** @program_name, align 8, !dbg !673, !tbaa !675
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #26, !dbg !673
  br label %64, !dbg !673

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 5) #26, !dbg !679
  %11 = load i8*, i8** @program_name, align 8, !dbg !679, !tbaa !675
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #26, !dbg !679
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.2, i64 0, i64 0), i32 5) #26, !dbg !681
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !681, !tbaa !675
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !681
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i32 5) #26, !dbg !682
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !682, !tbaa !675
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !682
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #26, !dbg !683
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !683, !tbaa !675
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !683
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #26, !dbg !684
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !684, !tbaa !675
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !684
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.6, i64 0, i64 0), i32 5) #26, !dbg !685
  %26 = load i8*, i8** @program_name, align 8, !dbg !685, !tbaa !675
  %27 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %25, i8* %26, i8* %26, i8* %26) #26, !dbg !685
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), metadata !686, metadata !DIExpression()) #26, !dbg !705
  %28 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !707
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %28) #26, !dbg !707
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !692, metadata !DIExpression()) #26, !dbg !708
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %28, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #26, !dbg !708
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), metadata !701, metadata !DIExpression()) #26, !dbg !705
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !702, metadata !DIExpression()) #26, !dbg !705
  %29 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !709
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !702, metadata !DIExpression()) #26, !dbg !705
  br label %30, !dbg !710

30:                                               ; preds = %35, %9
  %31 = phi i8* [ %38, %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), %9 ]
  %32 = phi %struct.infomap* [ %36, %35 ], [ %29, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !702, metadata !DIExpression()) #26, !dbg !705
  %33 = tail call i32 @strcmp(i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %31) #27, !dbg !711
  %34 = icmp eq i32 %33, 0, !dbg !711
  br i1 %34, label %40, label %35, !dbg !710

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %32, i64 1, !dbg !712
  call void @llvm.dbg.value(metadata %struct.infomap* %36, metadata !702, metadata !DIExpression()) #26, !dbg !705
  %37 = getelementptr inbounds %struct.infomap, %struct.infomap* %36, i64 0, i32 0, !dbg !713
  %38 = load i8*, i8** %37, align 8, !dbg !713, !tbaa !714
  %39 = icmp eq i8* %38, null, !dbg !716
  br i1 %39, label %40, label %30, !dbg !717, !llvm.loop !718

40:                                               ; preds = %35, %30
  %41 = phi %struct.infomap* [ %32, %30 ], [ %36, %35 ]
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %41, i64 0, i32 1, !dbg !720
  %43 = load i8*, i8** %42, align 8, !dbg !720, !tbaa !722
  %44 = icmp eq i8* %43, null, !dbg !723
  %45 = select i1 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %43, !dbg !724
  call void @llvm.dbg.value(metadata i8* %45, metadata !701, metadata !DIExpression()) #26, !dbg !705
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i32 5) #26, !dbg !725
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0)) #26, !dbg !725
  %48 = tail call i8* @setlocale(i32 5, i8* null) #26, !dbg !726
  call void @llvm.dbg.value(metadata i8* %48, metadata !704, metadata !DIExpression()) #26, !dbg !705
  %49 = icmp eq i8* %48, null, !dbg !727
  br i1 %49, label %57, label %50, !dbg !729

50:                                               ; preds = %40
  %51 = tail call i32 @strncmp(i8* nonnull %48, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i64 3) #27, !dbg !730
  %52 = icmp eq i32 %51, 0, !dbg !730
  br i1 %52, label %57, label %53, !dbg !731

53:                                               ; preds = %50
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.27, i64 0, i64 0), i32 5) #26, !dbg !732
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !732, !tbaa !675
  %56 = tail call i32 @fputs_unlocked(i8* %54, %struct._IO_FILE* %55) #26, !dbg !732
  br label %57, !dbg !734

57:                                               ; preds = %40, %50, %53
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i32 5) #26, !dbg !735
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %58, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)) #26, !dbg !735
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.29, i64 0, i64 0), i32 5) #26, !dbg !736
  %61 = icmp eq i8* %45, getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), !dbg !736
  %62 = select i1 %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !736
  %63 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %60, i8* %45, i8* %62) #26, !dbg !736
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %28) #26, !dbg !737
  br label %64

64:                                               ; preds = %57, %4
  tail call void @exit(i32 %0) #28, !dbg !738
  unreachable, !dbg !738
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !739 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !743 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !747 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !18 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !24, metadata !DIExpression()), !dbg !751
  call void @llvm.dbg.value(metadata i8** %1, metadata !25, metadata !DIExpression()), !dbg !751
  call void @llvm.dbg.value(metadata i8 0, metadata !26, metadata !DIExpression()), !dbg !751
  %3 = load i8*, i8** %1, align 8, !dbg !752, !tbaa !675
  tail call void @set_program_name(i8* %3) #26, !dbg !753
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #26, !dbg !754
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #26, !dbg !755
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #26, !dbg !756
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #26, !dbg !757
  br label %8, !dbg !758

8:                                                ; preds = %8, %2
  %9 = phi i32 [ 0, %8 ], [ 10, %2 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !26, metadata !DIExpression()), !dbg !751
  %10 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #26, !dbg !759
  call void @llvm.dbg.value(metadata i32 %10, metadata !30, metadata !DIExpression()), !dbg !760
  switch i32 %10, label %15 [
    i32 -1, label %16
    i32 122, label %8
    i32 -130, label %11
    i32 -131, label %12
  ], !dbg !761

11:                                               ; preds = %8
  tail call void @usage(i32 0) #29, !dbg !762
  unreachable, !dbg !762

12:                                               ; preds = %8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !764, !tbaa !675
  %14 = load i8*, i8** @Version, align 8, !dbg !764, !tbaa !675
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* null) #26, !dbg !764
  tail call void @exit(i32 0) #28, !dbg !764
  unreachable, !dbg !764

15:                                               ; preds = %8
  tail call void @usage(i32 1) #29, !dbg !765
  unreachable, !dbg !765

16:                                               ; preds = %8
  call void @llvm.dbg.value(metadata i8 1, metadata !26, metadata !DIExpression()), !dbg !751
  %17 = load i32, i32* @optind, align 4, !dbg !766, !tbaa !768
  %18 = icmp slt i32 %17, %0, !dbg !770
  br i1 %18, label %19, label %21, !dbg !771

19:                                               ; preds = %16
  %20 = trunc i32 %9 to i8
  br label %23, !dbg !772

21:                                               ; preds = %16
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 5) #26, !dbg !773
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %22) #26, !dbg !775
  tail call void @usage(i32 1) #29, !dbg !776
  unreachable, !dbg !776

23:                                               ; preds = %19, %44
  %24 = phi i32 [ %17, %19 ], [ %46, %44 ]
  %25 = sext i32 %24 to i64, !dbg !777
  %26 = getelementptr inbounds i8*, i8** %1, i64 %25, !dbg !777
  %27 = load i8*, i8** %26, align 8, !dbg !777, !tbaa !675
  call void @llvm.dbg.value(metadata i8* %27, metadata !28, metadata !DIExpression()), !dbg !751
  %28 = tail call i64 @dir_len(i8* %27) #27, !dbg !778
  call void @llvm.dbg.value(metadata i64 %28, metadata !29, metadata !DIExpression()), !dbg !751
  %29 = icmp eq i64 %28, 0, !dbg !779
  call void @llvm.dbg.value(metadata i8* undef, metadata !28, metadata !DIExpression()), !dbg !751
  call void @llvm.dbg.value(metadata i64 undef, metadata !29, metadata !DIExpression()), !dbg !751
  %30 = select i1 %29, i8* @main.dot, i8* %27, !dbg !781
  call void @llvm.dbg.value(metadata i8* %30, metadata !28, metadata !DIExpression()), !dbg !751
  %31 = select i1 %29, i64 1, i64 %28, !dbg !781
  call void @llvm.dbg.value(metadata i64 %31, metadata !29, metadata !DIExpression()), !dbg !751
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !782, !tbaa !675
  %33 = tail call i64 @fwrite_unlocked(i8* %30, i64 1, i64 %31, %struct._IO_FILE* %32), !dbg !782
  call void @llvm.dbg.value(metadata i32 %9, metadata !783, metadata !DIExpression()) #26, !dbg !789
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !791, !tbaa !675
  %35 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %34, i64 0, i32 5, !dbg !791
  %36 = load i8*, i8** %35, align 8, !dbg !791, !tbaa !792
  %37 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %34, i64 0, i32 6, !dbg !791
  %38 = load i8*, i8** %37, align 8, !dbg !791, !tbaa !796
  %39 = icmp ult i8* %36, %38, !dbg !791
  br i1 %39, label %42, label %40, !dbg !791, !prof !797

40:                                               ; preds = %23
  %41 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %34, i32 %9) #26, !dbg !791
  br label %44, !dbg !791

42:                                               ; preds = %23
  %43 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !791
  store i8* %43, i8** %35, align 8, !dbg !791, !tbaa !792
  store i8 %20, i8* %36, align 1, !dbg !791, !tbaa !798
  br label %44, !dbg !791

44:                                               ; preds = %40, %42
  %45 = load i32, i32* @optind, align 4, !dbg !799, !tbaa !768
  %46 = add nsw i32 %45, 1, !dbg !799
  store i32 %46, i32* @optind, align 4, !dbg !799, !tbaa !768
  %47 = icmp slt i32 %46, %0, !dbg !800
  br i1 %47, label %23, label %48, !dbg !772, !llvm.loop !801

48:                                               ; preds = %44
  ret i32 0, !dbg !803
}

; Function Attrs: nounwind
declare !dbg !804 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !807 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !810 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !817 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !823 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !827 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #9 !dbg !832 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !834, metadata !DIExpression()), !dbg !835
  store i8* %0, i8** @file_name, align 8, !dbg !836, !tbaa !675
  ret void, !dbg !837
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #9 !dbg !838 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !842, metadata !DIExpression()), !dbg !843
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !844, !tbaa !845
  ret void, !dbg !847
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !848 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !853, !tbaa !675
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #26, !dbg !854
  %3 = icmp eq i32 %2, 0, !dbg !855
  br i1 %3, label %22, label %4, !dbg !856

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !857, !tbaa !845, !range !858
  %6 = icmp eq i8 %5, 0, !dbg !857
  br i1 %6, label %11, label %7, !dbg !859

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #30, !dbg !860
  %9 = load i32, i32* %8, align 4, !dbg !860, !tbaa !768
  %10 = icmp eq i32 %9, 32, !dbg !861
  br i1 %10, label %22, label %11, !dbg !862

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i32 5) #26, !dbg !863
  call void @llvm.dbg.value(metadata i8* %12, metadata !850, metadata !DIExpression()), !dbg !864
  %13 = load i8*, i8** @file_name, align 8, !dbg !865, !tbaa !675
  %14 = icmp eq i8* %13, null, !dbg !865
  %15 = tail call i32* @__errno_location() #30, !dbg !867
  %16 = load i32, i32* %15, align 4, !dbg !867, !tbaa !768
  br i1 %14, label %19, label %17, !dbg !868

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #26, !dbg !869
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.38, i64 0, i64 0), i8* %18, i8* %12) #26, !dbg !870
  br label %20, !dbg !870

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.39, i64 0, i64 0), i8* %12) #26, !dbg !871
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !872, !tbaa !768
  tail call void @_exit(i32 %21) #28, !dbg !873
  unreachable, !dbg !873

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !874, !tbaa !675
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #26, !dbg !876
  %25 = icmp eq i32 %24, 0, !dbg !877
  br i1 %25, label %28, label %26, !dbg !878

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !879, !tbaa !768
  tail call void @_exit(i32 %27) #28, !dbg !880
  unreachable, !dbg !880

28:                                               ; preds = %22
  ret void, !dbg !881
}

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind readonly sspstrong uwtable willreturn
define dso_local i64 @dir_len(i8* %0) local_unnamed_addr #12 !dbg !882 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !886, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.value(metadata i64 0, metadata !887, metadata !DIExpression()), !dbg !889
  %2 = load i8, i8* %0, align 1, !dbg !890, !tbaa !798
  %3 = icmp eq i8 %2, 47, !dbg !890
  %4 = zext i1 %3 to i64
  call void @llvm.dbg.value(metadata i64 %4, metadata !887, metadata !DIExpression()), !dbg !889
  %5 = tail call i8* @last_component(i8* nonnull %0) #27, !dbg !891
  %6 = ptrtoint i8* %5 to i64, !dbg !893
  %7 = ptrtoint i8* %0 to i64, !dbg !893
  %8 = sub i64 %6, %7, !dbg !893
  call void @llvm.dbg.value(metadata i64 %8, metadata !888, metadata !DIExpression()), !dbg !889
  %9 = icmp ult i64 %8, %4, !dbg !894
  %10 = select i1 %9, i64 %8, i64 %4, !dbg !894
  br label %11, !dbg !894

11:                                               ; preds = %14, %1
  %12 = phi i64 [ %8, %1 ], [ %15, %14 ], !dbg !895
  call void @llvm.dbg.value(metadata i64 %12, metadata !888, metadata !DIExpression()), !dbg !889
  %13 = icmp ugt i64 %12, %4, !dbg !896
  br i1 %13, label %14, label %19, !dbg !898

14:                                               ; preds = %11
  %15 = add i64 %12, -1, !dbg !899
  %16 = getelementptr inbounds i8, i8* %0, i64 %15, !dbg !899
  %17 = load i8, i8* %16, align 1, !dbg !899, !tbaa !798
  %18 = icmp eq i8 %17, 47, !dbg !899
  br i1 %18, label %11, label %19, !dbg !901, !llvm.loop !902

19:                                               ; preds = %14, %11
  %20 = phi i64 [ %12, %14 ], [ %10, %11 ], !dbg !895
  ret i64 %20, !dbg !904
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i8* @mdir_name(i8* %0) local_unnamed_addr #13 !dbg !905 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !907, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i8* %0, metadata !886, metadata !DIExpression()) #26, !dbg !912
  call void @llvm.dbg.value(metadata i64 0, metadata !887, metadata !DIExpression()) #26, !dbg !912
  %2 = load i8, i8* %0, align 1, !dbg !914, !tbaa !798
  %3 = icmp eq i8 %2, 47, !dbg !914
  %4 = zext i1 %3 to i64
  call void @llvm.dbg.value(metadata i64 %4, metadata !887, metadata !DIExpression()) #26, !dbg !912
  %5 = tail call i8* @last_component(i8* nonnull %0) #27, !dbg !915
  %6 = ptrtoint i8* %5 to i64, !dbg !916
  %7 = ptrtoint i8* %0 to i64, !dbg !916
  %8 = sub i64 %6, %7, !dbg !916
  call void @llvm.dbg.value(metadata i64 %8, metadata !888, metadata !DIExpression()) #26, !dbg !912
  %9 = icmp ult i64 %8, %4, !dbg !917
  %10 = select i1 %9, i64 %8, i64 %4, !dbg !917
  br label %11, !dbg !917

11:                                               ; preds = %14, %1
  %12 = phi i64 [ %8, %1 ], [ %15, %14 ], !dbg !918
  call void @llvm.dbg.value(metadata i64 %12, metadata !888, metadata !DIExpression()) #26, !dbg !912
  %13 = icmp ugt i64 %12, %4, !dbg !919
  br i1 %13, label %14, label %19, !dbg !920

14:                                               ; preds = %11
  %15 = add i64 %12, -1, !dbg !921
  %16 = getelementptr inbounds i8, i8* %0, i64 %15, !dbg !921
  %17 = load i8, i8* %16, align 1, !dbg !921, !tbaa !798
  %18 = icmp eq i8 %17, 47, !dbg !921
  br i1 %18, label %11, label %19, !dbg !922, !llvm.loop !923

19:                                               ; preds = %11, %14
  %20 = phi i64 [ %12, %14 ], [ %10, %11 ], !dbg !918
  call void @llvm.dbg.value(metadata i64 %20, metadata !908, metadata !DIExpression()), !dbg !911
  %21 = icmp eq i64 %20, 0, !dbg !925
  call void @llvm.dbg.value(metadata i1 %21, metadata !909, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !911
  %22 = zext i1 %21 to i64, !dbg !926
  %23 = add i64 %20, 1, !dbg !927
  %24 = add i64 %23, %22, !dbg !928
  %25 = tail call noalias i8* @malloc(i64 %24) #26, !dbg !929
  call void @llvm.dbg.value(metadata i8* %25, metadata !910, metadata !DIExpression()), !dbg !911
  %26 = icmp eq i8* %25, null, !dbg !930
  br i1 %26, label %32, label %27, !dbg !932

27:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %25, metadata !933, metadata !DIExpression()) #26, !dbg !943
  call void @llvm.dbg.value(metadata i8* %0, metadata !941, metadata !DIExpression()) #26, !dbg !943
  call void @llvm.dbg.value(metadata i64 %20, metadata !942, metadata !DIExpression()) #26, !dbg !943
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %25, i8* nonnull align 1 %0, i64 %20, i1 false) #26, !dbg !945
  br i1 %21, label %28, label %29, !dbg !946

28:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i64 1, metadata !908, metadata !DIExpression()), !dbg !911
  store i8 46, i8* %25, align 1, !dbg !947, !tbaa !798
  br label %29, !dbg !949

29:                                               ; preds = %28, %27
  %30 = phi i64 [ 1, %28 ], [ %20, %27 ], !dbg !911
  call void @llvm.dbg.value(metadata i64 %30, metadata !908, metadata !DIExpression()), !dbg !911
  %31 = getelementptr inbounds i8, i8* %25, i64 %30, !dbg !950
  store i8 0, i8* %31, align 1, !dbg !951, !tbaa !798
  br label %32, !dbg !952

32:                                               ; preds = %19, %29
  ret i8* %25, !dbg !953
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #14

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i8* @last_component(i8* readonly %0) local_unnamed_addr #15 !dbg !954 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !956, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata i8* %0, metadata !957, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata i8 0, metadata !959, metadata !DIExpression()), !dbg !960
  br label %2, !dbg !961

2:                                                ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ], !dbg !960
  call void @llvm.dbg.value(metadata i8* %3, metadata !957, metadata !DIExpression()), !dbg !960
  %4 = load i8, i8* %3, align 1, !dbg !962, !tbaa !798
  %5 = icmp eq i8 %4, 47, !dbg !962
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !963
  call void @llvm.dbg.value(metadata i8* %6, metadata !957, metadata !DIExpression()), !dbg !960
  br i1 %5, label %2, label %7, !dbg !961, !llvm.loop !964

7:                                                ; preds = %2, %17
  %8 = phi i8 [ %21, %17 ], [ %4, %2 ], !dbg !965
  %9 = phi i8* [ %18, %17 ], [ %3, %2 ], !dbg !968
  %10 = phi i8* [ %20, %17 ], [ %3, %2 ], !dbg !969
  %11 = phi i8 [ %19, %17 ], [ 0, %2 ], !dbg !960
  call void @llvm.dbg.value(metadata i8 %11, metadata !959, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata i8* %10, metadata !958, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata i8* %9, metadata !957, metadata !DIExpression()), !dbg !960
  switch i8 %8, label %12 [
    i8 0, label %22
    i8 47, label %17
  ], !dbg !970

12:                                               ; preds = %7
  %13 = and i8 %11, 1, !dbg !971
  %14 = icmp eq i8 %13, 0, !dbg !971
  %15 = select i1 %14, i8* %9, i8* %10, !dbg !975
  %16 = select i1 %14, i8 %11, i8 0, !dbg !975
  br label %17, !dbg !975

17:                                               ; preds = %12, %7
  %18 = phi i8* [ %9, %7 ], [ %15, %12 ], !dbg !960
  %19 = phi i8 [ 1, %7 ], [ %16, %12 ], !dbg !960
  call void @llvm.dbg.value(metadata i8 %19, metadata !959, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata i8* %18, metadata !957, metadata !DIExpression()), !dbg !960
  %20 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !976
  call void @llvm.dbg.value(metadata i8* %20, metadata !958, metadata !DIExpression()), !dbg !960
  %21 = load i8, i8* %20, align 1, !dbg !965, !tbaa !798
  br label %7, !dbg !977, !llvm.loop !978

22:                                               ; preds = %7
  ret i8* %9, !dbg !980
}

; Function Attrs: nounwind readonly sspstrong uwtable willreturn
define dso_local i64 @base_len(i8* nocapture readonly %0) local_unnamed_addr #12 !dbg !981 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !983, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata i64 0, metadata !985, metadata !DIExpression()), !dbg !986
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #27, !dbg !987
  call void @llvm.dbg.value(metadata i64 %2, metadata !984, metadata !DIExpression()), !dbg !986
  %3 = icmp ne i64 %2, 0, !dbg !989
  %4 = zext i1 %3 to i64, !dbg !989
  br label %5, !dbg !989

5:                                                ; preds = %8, %1
  %6 = phi i64 [ %2, %1 ], [ %9, %8 ], !dbg !990
  call void @llvm.dbg.value(metadata i64 %6, metadata !984, metadata !DIExpression()), !dbg !986
  %7 = icmp ugt i64 %6, 1, !dbg !991
  br i1 %7, label %8, label %13, !dbg !993

8:                                                ; preds = %5
  %9 = add i64 %6, -1, !dbg !994
  %10 = getelementptr inbounds i8, i8* %0, i64 %9, !dbg !994
  %11 = load i8, i8* %10, align 1, !dbg !994, !tbaa !798
  %12 = icmp eq i8 %11, 47, !dbg !994
  br i1 %12, label %5, label %13, !dbg !995, !llvm.loop !996

13:                                               ; preds = %5, %8
  %14 = phi i64 [ %4, %5 ], [ %6, %8 ], !dbg !990
  ret i64 %14, !dbg !998
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !999 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1001, metadata !DIExpression()), !dbg !1004
  %2 = icmp eq i8* %0, null, !dbg !1005
  br i1 %2, label %3, label %6, !dbg !1007

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1008, !tbaa !675
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.50, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #31, !dbg !1010
  tail call void @abort() #28, !dbg !1011
  unreachable, !dbg !1011

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #27, !dbg !1012
  call void @llvm.dbg.value(metadata i8* %7, metadata !1002, metadata !DIExpression()), !dbg !1004
  %8 = icmp eq i8* %7, null, !dbg !1013
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1014
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1014
  call void @llvm.dbg.value(metadata i8* %10, metadata !1003, metadata !DIExpression()), !dbg !1004
  %11 = ptrtoint i8* %10 to i64, !dbg !1015
  %12 = ptrtoint i8* %0 to i64, !dbg !1015
  %13 = sub i64 %11, %12, !dbg !1015
  %14 = icmp sgt i64 %13, 6, !dbg !1017
  br i1 %14, label %15, label %24, !dbg !1018

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1019
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.51, i64 0, i64 0), i64 7) #27, !dbg !1020
  %18 = icmp eq i32 %17, 0, !dbg !1021
  br i1 %18, label %19, label %24, !dbg !1022

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1001, metadata !DIExpression()), !dbg !1004
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.52, i64 0, i64 0), i64 3) #27, !dbg !1023
  %21 = icmp eq i32 %20, 0, !dbg !1026
  br i1 %21, label %22, label %24, !dbg !1027

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1028
  call void @llvm.dbg.value(metadata i8* %23, metadata !1001, metadata !DIExpression()), !dbg !1004
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1030, !tbaa !675
  br label %24, !dbg !1031

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1001, metadata !DIExpression()), !dbg !1004
  store i8* %25, i8** @program_name, align 8, !dbg !1032, !tbaa !675
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1033, !tbaa !675
  ret void, !dbg !1034
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #16

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1035 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1040, metadata !DIExpression()), !dbg !1043
  %2 = tail call i32* @__errno_location() #30, !dbg !1044
  %3 = load i32, i32* %2, align 4, !dbg !1044, !tbaa !768
  call void @llvm.dbg.value(metadata i32 %3, metadata !1041, metadata !DIExpression()), !dbg !1043
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1045
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1045
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1045
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #26, !dbg !1046
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1046
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1042, metadata !DIExpression()), !dbg !1043
  store i32 %3, i32* %2, align 4, !dbg !1047, !tbaa !768
  ret %struct.quoting_options* %8, !dbg !1048
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #15 !dbg !1049 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1055, metadata !DIExpression()), !dbg !1056
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1057
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1057
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1058
  %5 = load i32, i32* %4, align 8, !dbg !1058, !tbaa !1059
  ret i32 %5, !dbg !1061
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #9 !dbg !1062 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1066, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.value(metadata i32 %1, metadata !1067, metadata !DIExpression()), !dbg !1068
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1069
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1069
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1070
  store i32 %1, i32* %5, align 8, !dbg !1071, !tbaa !1059
  ret void, !dbg !1072
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #17 !dbg !1073 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1077, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i8 %1, metadata !1078, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i32 %2, metadata !1079, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i8 %1, metadata !1080, metadata !DIExpression()), !dbg !1085
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1086
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1086
  %6 = lshr i8 %1, 5, !dbg !1087
  %7 = zext i8 %6 to i64, !dbg !1087
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1088
  call void @llvm.dbg.value(metadata i32* %8, metadata !1081, metadata !DIExpression()), !dbg !1085
  %9 = and i8 %1, 31, !dbg !1089
  %10 = zext i8 %9 to i32, !dbg !1089
  call void @llvm.dbg.value(metadata i32 %10, metadata !1083, metadata !DIExpression()), !dbg !1085
  %11 = load i32, i32* %8, align 4, !dbg !1090, !tbaa !768
  %12 = lshr i32 %11, %10, !dbg !1091
  %13 = and i32 %12, 1, !dbg !1092
  call void @llvm.dbg.value(metadata i32 %13, metadata !1084, metadata !DIExpression()), !dbg !1085
  %14 = and i32 %2, 1, !dbg !1093
  %15 = xor i32 %13, %14, !dbg !1094
  %16 = shl i32 %15, %10, !dbg !1095
  %17 = xor i32 %16, %11, !dbg !1096
  store i32 %17, i32* %8, align 4, !dbg !1096, !tbaa !768
  ret i32 %13, !dbg !1097
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #17 !dbg !1098 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1102, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i32 %1, metadata !1103, metadata !DIExpression()), !dbg !1105
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1106
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1108
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1102, metadata !DIExpression()), !dbg !1105
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1109
  %6 = load i32, i32* %5, align 4, !dbg !1109, !tbaa !1110
  call void @llvm.dbg.value(metadata i32 %6, metadata !1104, metadata !DIExpression()), !dbg !1105
  store i32 %1, i32* %5, align 4, !dbg !1111, !tbaa !1110
  ret i32 %6, !dbg !1112
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1113 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1117, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i8* %1, metadata !1118, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i8* %2, metadata !1119, metadata !DIExpression()), !dbg !1120
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1121
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1123
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1117, metadata !DIExpression()), !dbg !1120
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1124
  store i32 10, i32* %6, align 8, !dbg !1125, !tbaa !1059
  %7 = icmp ne i8* %1, null, !dbg !1126
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1128
  br i1 %9, label %11, label %10, !dbg !1128

10:                                               ; preds = %3
  tail call void @abort() #28, !dbg !1129
  unreachable, !dbg !1129

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1130
  store i8* %1, i8** %12, align 8, !dbg !1131, !tbaa !1132
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1133
  store i8* %2, i8** %13, align 8, !dbg !1134, !tbaa !1135
  ret void, !dbg !1136
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1137 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1141, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata i64 %1, metadata !1142, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata i8* %2, metadata !1143, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata i64 %3, metadata !1144, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1145, metadata !DIExpression()), !dbg !1149
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1150
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1150
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1146, metadata !DIExpression()), !dbg !1149
  %8 = tail call i32* @__errno_location() #30, !dbg !1151
  %9 = load i32, i32* %8, align 4, !dbg !1151, !tbaa !768
  call void @llvm.dbg.value(metadata i32 %9, metadata !1147, metadata !DIExpression()), !dbg !1149
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1152
  %11 = load i32, i32* %10, align 8, !dbg !1152, !tbaa !1059
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1153
  %13 = load i32, i32* %12, align 4, !dbg !1153, !tbaa !1110
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1154
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1155
  %16 = load i8*, i8** %15, align 8, !dbg !1155, !tbaa !1132
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1156
  %18 = load i8*, i8** %17, align 8, !dbg !1156, !tbaa !1135
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1157
  call void @llvm.dbg.value(metadata i64 %19, metadata !1148, metadata !DIExpression()), !dbg !1149
  store i32 %9, i32* %8, align 4, !dbg !1158, !tbaa !768
  ret i64 %19, !dbg !1159
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1160 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1166, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %1, metadata !1167, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8* %2, metadata !1168, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %3, metadata !1169, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i32 %4, metadata !1170, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i32 %5, metadata !1171, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i32* %6, metadata !1172, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8* %7, metadata !1173, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8* %8, metadata !1174, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 0, metadata !1176, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 0, metadata !1177, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8* null, metadata !1178, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 0, metadata !1179, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8 0, metadata !1180, metadata !DIExpression()), !dbg !1234
  %13 = tail call i64 @__ctype_get_mb_cur_max() #26, !dbg !1235
  %14 = icmp eq i64 %13, 1, !dbg !1236
  call void @llvm.dbg.value(metadata i1 %14, metadata !1181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1234
  %15 = lshr i32 %5, 1, !dbg !1237
  %16 = trunc i32 %15 to i8, !dbg !1237
  %17 = and i8 %16, 1, !dbg !1237
  call void @llvm.dbg.value(metadata i8 %17, metadata !1182, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8 0, metadata !1183, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8 0, metadata !1184, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8 1, metadata !1185, metadata !DIExpression()), !dbg !1234
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1238

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1239
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1240
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1241
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1242
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1234
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1243
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1244
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1245
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1167, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8 %38, metadata !1185, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8 %37, metadata !1184, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8 %36, metadata !1183, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8 %35, metadata !1182, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %34, metadata !1169, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8 %33, metadata !1180, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %32, metadata !1179, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8* %31, metadata !1178, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %30, metadata !1177, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 0, metadata !1176, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8* %29, metadata !1174, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8* %28, metadata !1173, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i32 %27, metadata !1170, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.label(metadata !1228), !dbg !1246
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
  ], !dbg !1247

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1182, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i32 5, metadata !1170, metadata !DIExpression()), !dbg !1234
  br label %92, !dbg !1248

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1182, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i32 5, metadata !1170, metadata !DIExpression()), !dbg !1234
  %42 = and i8 %35, 1, !dbg !1250
  %43 = icmp eq i8 %42, 0, !dbg !1250
  br i1 %43, label %44, label %92, !dbg !1248

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1252
  br i1 %45, label %92, label %46, !dbg !1255

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1252, !tbaa !798
  br label %92, !dbg !1252

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.63, i64 0, i64 0), i32 %27), !dbg !1256
  call void @llvm.dbg.value(metadata i8* %48, metadata !1173, metadata !DIExpression()), !dbg !1234
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), i32 %27), !dbg !1260
  call void @llvm.dbg.value(metadata i8* %49, metadata !1174, metadata !DIExpression()), !dbg !1234
  br label %50, !dbg !1261

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1174, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8* %51, metadata !1173, metadata !DIExpression()), !dbg !1234
  %53 = and i8 %35, 1, !dbg !1262
  %54 = icmp eq i8 %53, 0, !dbg !1262
  br i1 %54, label %55, label %70, !dbg !1264

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1178, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 0, metadata !1176, metadata !DIExpression()), !dbg !1234
  %56 = load i8, i8* %51, align 1, !dbg !1265, !tbaa !798
  %57 = icmp eq i8 %56, 0, !dbg !1268
  br i1 %57, label %70, label %58, !dbg !1268

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1178, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %61, metadata !1176, metadata !DIExpression()), !dbg !1234
  %62 = icmp ult i64 %61, %39, !dbg !1269
  br i1 %62, label %63, label %65, !dbg !1272

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1269
  store i8 %59, i8* %64, align 1, !dbg !1269, !tbaa !798
  br label %65, !dbg !1269

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1272
  call void @llvm.dbg.value(metadata i64 %66, metadata !1176, metadata !DIExpression()), !dbg !1234
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1273
  call void @llvm.dbg.value(metadata i8* %67, metadata !1178, metadata !DIExpression()), !dbg !1234
  %68 = load i8, i8* %67, align 1, !dbg !1265, !tbaa !798
  %69 = icmp eq i8 %68, 0, !dbg !1268
  br i1 %69, label %70, label %58, !dbg !1268, !llvm.loop !1274

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1276
  call void @llvm.dbg.value(metadata i64 %71, metadata !1176, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8 1, metadata !1180, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8* %52, metadata !1178, metadata !DIExpression()), !dbg !1234
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #27, !dbg !1277
  call void @llvm.dbg.value(metadata i64 %72, metadata !1179, metadata !DIExpression()), !dbg !1234
  br label %92, !dbg !1278

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1180, metadata !DIExpression()), !dbg !1234
  br label %74, !dbg !1279

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1234
  call void @llvm.dbg.value(metadata i8 %75, metadata !1180, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8 1, metadata !1182, metadata !DIExpression()), !dbg !1234
  br label %76, !dbg !1280

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1242
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1234
  call void @llvm.dbg.value(metadata i8 %78, metadata !1182, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8 %77, metadata !1180, metadata !DIExpression()), !dbg !1234
  %79 = and i8 %78, 1, !dbg !1281
  %80 = icmp eq i8 %79, 0, !dbg !1281
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1283
  br label %82, !dbg !1283

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1234
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1237
  call void @llvm.dbg.value(metadata i8 %84, metadata !1182, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8 %83, metadata !1180, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i32 2, metadata !1170, metadata !DIExpression()), !dbg !1234
  %85 = and i8 %84, 1, !dbg !1284
  %86 = icmp eq i8 %85, 0, !dbg !1284
  br i1 %86, label %87, label %92, !dbg !1286

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1287
  br i1 %88, label %92, label %89, !dbg !1290

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1287, !tbaa !798
  br label %92, !dbg !1287

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1182, metadata !DIExpression()), !dbg !1234
  br label %92, !dbg !1291

91:                                               ; preds = %26
  call void @abort() #28, !dbg !1292
  unreachable, !dbg !1292

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1276
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %40 ], !dbg !1234
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1234
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1234
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1234
  call void @llvm.dbg.value(metadata i8 %100, metadata !1182, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8 %99, metadata !1180, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %98, metadata !1179, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8* %97, metadata !1178, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %96, metadata !1176, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8* %95, metadata !1174, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8* %94, metadata !1173, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i32 %93, metadata !1170, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 0, metadata !1175, metadata !DIExpression()), !dbg !1234
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
  br label %121, !dbg !1293

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1294
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1276
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1239
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1243
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1244
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1245
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8 %128, metadata !1185, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8 %127, metadata !1184, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8 %126, metadata !1183, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %125, metadata !1169, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %124, metadata !1177, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %123, metadata !1176, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %122, metadata !1175, metadata !DIExpression()), !dbg !1234
  %130 = icmp eq i64 %125, -1, !dbg !1295
  br i1 %130, label %131, label %135, !dbg !1296

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1297
  %133 = load i8, i8* %132, align 1, !dbg !1297, !tbaa !798
  %134 = icmp eq i8 %133, 0, !dbg !1298
  br i1 %134, label %587, label %137, !dbg !1299

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1300
  br i1 %136, label %587, label %137, !dbg !1299

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1191, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i8 0, metadata !1192, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i8 0, metadata !1193, metadata !DIExpression()), !dbg !1301
  br i1 %106, label %138, label %153, !dbg !1302

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1304
  %140 = and i1 %107, %130, !dbg !1305
  br i1 %140, label %141, label %143, !dbg !1305

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #27, !dbg !1306
  call void @llvm.dbg.value(metadata i64 %142, metadata !1169, metadata !DIExpression()), !dbg !1234
  br label %143, !dbg !1307

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1307
  call void @llvm.dbg.value(metadata i64 %144, metadata !1169, metadata !DIExpression()), !dbg !1234
  %145 = icmp ugt i64 %139, %144, !dbg !1308
  br i1 %145, label %153, label %146, !dbg !1309

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1310
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1311
  %149 = icmp ne i32 %148, 0, !dbg !1312
  %150 = or i1 %149, %109, !dbg !1313
  %151 = xor i1 %149, true, !dbg !1313
  %152 = zext i1 %151 to i8, !dbg !1313
  br i1 %150, label %153, label %646, !dbg !1313

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1301
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1301
  call void @llvm.dbg.value(metadata i8 %156, metadata !1191, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i64 %154, metadata !1169, metadata !DIExpression()), !dbg !1234
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1314
  %158 = load i8, i8* %157, align 1, !dbg !1314, !tbaa !798
  call void @llvm.dbg.value(metadata i8 %158, metadata !1186, metadata !DIExpression()), !dbg !1301
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
  ], !dbg !1315

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1316

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1317

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1192, metadata !DIExpression()), !dbg !1301
  %162 = and i8 %126, 1, !dbg !1321
  %163 = icmp eq i8 %162, 0, !dbg !1321
  %164 = and i1 %110, %163, !dbg !1321
  br i1 %164, label %165, label %181, !dbg !1321

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1323
  br i1 %166, label %167, label %169, !dbg !1327

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1323
  store i8 39, i8* %168, align 1, !dbg !1323, !tbaa !798
  br label %169, !dbg !1323

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1327
  call void @llvm.dbg.value(metadata i64 %170, metadata !1176, metadata !DIExpression()), !dbg !1234
  %171 = icmp ult i64 %170, %129, !dbg !1328
  br i1 %171, label %172, label %174, !dbg !1331

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1328
  store i8 36, i8* %173, align 1, !dbg !1328, !tbaa !798
  br label %174, !dbg !1328

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1331
  call void @llvm.dbg.value(metadata i64 %175, metadata !1176, metadata !DIExpression()), !dbg !1234
  %176 = icmp ult i64 %175, %129, !dbg !1332
  br i1 %176, label %177, label %179, !dbg !1335

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1332
  store i8 39, i8* %178, align 1, !dbg !1332, !tbaa !798
  br label %179, !dbg !1332

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1335
  call void @llvm.dbg.value(metadata i64 %180, metadata !1176, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8 1, metadata !1183, metadata !DIExpression()), !dbg !1234
  br label %181, !dbg !1336

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1234
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1234
  call void @llvm.dbg.value(metadata i8 %183, metadata !1183, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %182, metadata !1176, metadata !DIExpression()), !dbg !1234
  %184 = icmp ult i64 %182, %129, !dbg !1337
  br i1 %184, label %185, label %187, !dbg !1340

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1337
  store i8 92, i8* %186, align 1, !dbg !1337, !tbaa !798
  br label %187, !dbg !1337

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1340
  call void @llvm.dbg.value(metadata i64 %188, metadata !1176, metadata !DIExpression()), !dbg !1234
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1341
  br i1 %191, label %192, label %473, !dbg !1341

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1343
  %194 = load i8, i8* %193, align 1, !dbg !1343, !tbaa !798
  %195 = add i8 %194, -48, !dbg !1344
  %196 = icmp ult i8 %195, 10, !dbg !1344
  br i1 %196, label %197, label %473, !dbg !1344

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1345
  br i1 %198, label %199, label %201, !dbg !1349

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1345
  store i8 48, i8* %200, align 1, !dbg !1345, !tbaa !798
  br label %201, !dbg !1345

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1349
  call void @llvm.dbg.value(metadata i64 %202, metadata !1176, metadata !DIExpression()), !dbg !1234
  %203 = icmp ult i64 %202, %129, !dbg !1350
  br i1 %203, label %204, label %206, !dbg !1353

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1350
  store i8 48, i8* %205, align 1, !dbg !1350, !tbaa !798
  br label %206, !dbg !1350

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1353
  call void @llvm.dbg.value(metadata i64 %207, metadata !1176, metadata !DIExpression()), !dbg !1234
  br label %473, !dbg !1354

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1355

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1356

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1357

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1359
  br i1 %214, label %215, label %473, !dbg !1359

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1361
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1362
  %218 = load i8, i8* %217, align 1, !dbg !1362, !tbaa !798
  %219 = icmp eq i8 %218, 63, !dbg !1363
  br i1 %219, label %220, label %473, !dbg !1364

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1365
  %222 = load i8, i8* %221, align 1, !dbg !1365, !tbaa !798
  %223 = sext i8 %222 to i32, !dbg !1365
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
  ], !dbg !1366

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1367

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1186, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i64 undef, metadata !1175, metadata !DIExpression()), !dbg !1234
  %226 = icmp ult i64 %123, %129, !dbg !1369
  br i1 %226, label %227, label %229, !dbg !1372

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1369
  store i8 63, i8* %228, align 1, !dbg !1369, !tbaa !798
  br label %229, !dbg !1369

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !1372
  call void @llvm.dbg.value(metadata i64 %230, metadata !1176, metadata !DIExpression()), !dbg !1234
  %231 = icmp ult i64 %230, %129, !dbg !1373
  br i1 %231, label %232, label %234, !dbg !1376

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1373
  store i8 34, i8* %233, align 1, !dbg !1373, !tbaa !798
  br label %234, !dbg !1373

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !1376
  call void @llvm.dbg.value(metadata i64 %235, metadata !1176, metadata !DIExpression()), !dbg !1234
  %236 = icmp ult i64 %235, %129, !dbg !1377
  br i1 %236, label %237, label %239, !dbg !1380

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1377
  store i8 34, i8* %238, align 1, !dbg !1377, !tbaa !798
  br label %239, !dbg !1377

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !1380
  call void @llvm.dbg.value(metadata i64 %240, metadata !1176, metadata !DIExpression()), !dbg !1234
  %241 = icmp ult i64 %240, %129, !dbg !1381
  br i1 %241, label %242, label %244, !dbg !1384

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1381
  store i8 63, i8* %243, align 1, !dbg !1381, !tbaa !798
  br label %244, !dbg !1381

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !1384
  call void @llvm.dbg.value(metadata i64 %245, metadata !1176, metadata !DIExpression()), !dbg !1234
  br label %473, !dbg !1385

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1190, metadata !DIExpression()), !dbg !1301
  br label %256, !dbg !1386

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1190, metadata !DIExpression()), !dbg !1301
  br label %256, !dbg !1387

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1190, metadata !DIExpression()), !dbg !1301
  br label %254, !dbg !1388

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1190, metadata !DIExpression()), !dbg !1301
  br label %254, !dbg !1389

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1190, metadata !DIExpression()), !dbg !1301
  br label %256, !dbg !1390

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1190, metadata !DIExpression()), !dbg !1301
  br i1 %110, label %252, label %253, !dbg !1391

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !1392

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !1395

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !1397
  call void @llvm.dbg.value(metadata i8 %255, metadata !1190, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.label(metadata !1229), !dbg !1398
  br i1 %111, label %256, label %631, !dbg !1399

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !1397
  call void @llvm.dbg.value(metadata i8 %257, metadata !1190, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.label(metadata !1230), !dbg !1401
  br i1 %102, label %495, label %473, !dbg !1402

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1403

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1404, !tbaa !798
  %261 = icmp eq i8 %260, 0, !dbg !1406
  br i1 %261, label %262, label %473, !dbg !1407

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !1408
  br i1 %263, label %264, label %473, !dbg !1410

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1193, metadata !DIExpression()), !dbg !1301
  br label %265, !dbg !1411

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1301
  call void @llvm.dbg.value(metadata i8 %266, metadata !1193, metadata !DIExpression()), !dbg !1301
  br i1 %111, label %473, label %631, !dbg !1412

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1184, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8 1, metadata !1193, metadata !DIExpression()), !dbg !1301
  br i1 %110, label %268, label %473, !dbg !1414

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !1415

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !1418
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !1420
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !1420
  %274 = select i1 %272, i64 %129, i64 0, !dbg !1420
  call void @llvm.dbg.value(metadata i64 %274, metadata !1167, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %273, metadata !1177, metadata !DIExpression()), !dbg !1234
  %275 = icmp ult i64 %123, %274, !dbg !1421
  br i1 %275, label %276, label %278, !dbg !1424

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1421
  store i8 39, i8* %277, align 1, !dbg !1421, !tbaa !798
  br label %278, !dbg !1421

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !1424
  call void @llvm.dbg.value(metadata i64 %279, metadata !1176, metadata !DIExpression()), !dbg !1234
  %280 = icmp ult i64 %279, %274, !dbg !1425
  br i1 %280, label %281, label %283, !dbg !1428

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1425
  store i8 92, i8* %282, align 1, !dbg !1425, !tbaa !798
  br label %283, !dbg !1425

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !1428
  call void @llvm.dbg.value(metadata i64 %284, metadata !1176, metadata !DIExpression()), !dbg !1234
  %285 = icmp ult i64 %284, %274, !dbg !1429
  br i1 %285, label %286, label %288, !dbg !1432

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1429
  store i8 39, i8* %287, align 1, !dbg !1429, !tbaa !798
  br label %288, !dbg !1429

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !1432
  call void @llvm.dbg.value(metadata i64 %289, metadata !1176, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8 0, metadata !1183, metadata !DIExpression()), !dbg !1234
  br label %473, !dbg !1433

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !1434

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1194, metadata !DIExpression()), !dbg !1435
  %292 = tail call i16** @__ctype_b_loc() #30, !dbg !1436
  %293 = load i16*, i16** %292, align 8, !dbg !1436, !tbaa !675
  %294 = zext i8 %158 to i64, !dbg !1436
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1436
  %296 = load i16, i16* %295, align 2, !dbg !1436, !tbaa !1438
  %297 = lshr i16 %296, 14, !dbg !1439
  %298 = trunc i16 %297 to i8, !dbg !1439
  %299 = and i8 %298, 1, !dbg !1439
  call void @llvm.dbg.value(metadata i8 %354, metadata !1197, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %355, metadata !1194, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %306, metadata !1169, metadata !DIExpression()), !dbg !1234
  %300 = icmp eq i8 %299, 0, !dbg !1440
  call void @llvm.dbg.value(metadata i1 %357, metadata !1193, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1301
  br label %359, !dbg !1441

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #26, !dbg !1442
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1198, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %23, metadata !1444, metadata !DIExpression()) #26, !dbg !1451
  call void @llvm.dbg.value(metadata i32 0, metadata !1449, metadata !DIExpression()) #26, !dbg !1451
  call void @llvm.dbg.value(metadata i64 8, metadata !1450, metadata !DIExpression()) #26, !dbg !1451
  store i64 0, i64* %10, align 8, !dbg !1453
  call void @llvm.dbg.value(metadata i64 0, metadata !1194, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8 1, metadata !1197, metadata !DIExpression()), !dbg !1435
  %302 = icmp eq i64 %154, -1, !dbg !1454
  br i1 %302, label %303, label %305, !dbg !1456

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #27, !dbg !1457
  call void @llvm.dbg.value(metadata i64 %304, metadata !1169, metadata !DIExpression()), !dbg !1234
  br label %305, !dbg !1458

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1301
  call void @llvm.dbg.value(metadata i64 %306, metadata !1169, metadata !DIExpression()), !dbg !1234
  br label %307, !dbg !1459

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !1460
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !1461
  call void @llvm.dbg.value(metadata i8 %309, metadata !1197, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %308, metadata !1194, metadata !DIExpression()), !dbg !1435
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #26, !dbg !1462
  %310 = add i64 %308, %122, !dbg !1463
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !1464
  %312 = sub i64 %306, %310, !dbg !1465
  call void @llvm.dbg.value(metadata i32* %12, metadata !1214, metadata !DIExpression(DW_OP_deref)), !dbg !1466
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #26, !dbg !1467
  call void @llvm.dbg.value(metadata i64 %313, metadata !1217, metadata !DIExpression()), !dbg !1466
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !1468

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1194, metadata !DIExpression()), !dbg !1435
  %315 = icmp ugt i64 %306, %310, !dbg !1469
  br i1 %315, label %316, label %341, !dbg !1471

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !1472
  br label %318, !dbg !1472

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1194, metadata !DIExpression()), !dbg !1435
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !1473
  %322 = load i8, i8* %321, align 1, !dbg !1473, !tbaa !798
  %323 = icmp eq i8 %322, 0, !dbg !1471
  br i1 %323, label %341, label %324, !dbg !1472

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %325, metadata !1194, metadata !DIExpression()), !dbg !1435
  %326 = add i64 %325, %122, !dbg !1475
  %327 = icmp ult i64 %326, %306, !dbg !1469
  br i1 %327, label %318, label %341, !dbg !1471, !llvm.loop !1476

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !1477
  call void @llvm.dbg.value(metadata i64 1, metadata !1218, metadata !DIExpression()), !dbg !1478
  br i1 %330, label %331, label %344, !dbg !1477

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1218, metadata !DIExpression()), !dbg !1478
  %333 = add i64 %332, %310, !dbg !1479
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !1482
  %335 = load i8, i8* %334, align 1, !dbg !1482, !tbaa !798
  %336 = sext i8 %335 to i32, !dbg !1482
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !1483

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !1484
  call void @llvm.dbg.value(metadata i64 %338, metadata !1218, metadata !DIExpression()), !dbg !1478
  %339 = icmp eq i64 %338, %313, !dbg !1485
  br i1 %339, label %344, label %331, !dbg !1486, !llvm.loop !1487

340:                                              ; preds = %307
  br label %341, !dbg !1489

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1197, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 undef, metadata !1194, metadata !DIExpression()), !dbg !1435
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #26, !dbg !1489
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !1490, !tbaa !768
  call void @llvm.dbg.value(metadata i32 %345, metadata !1214, metadata !DIExpression()), !dbg !1466
  %346 = call i32 @iswprint(i32 %345) #26, !dbg !1492
  %347 = icmp eq i32 %346, 0, !dbg !1492
  %348 = select i1 %347, i8 0, i8 %309, !dbg !1493
  call void @llvm.dbg.value(metadata i8 %348, metadata !1197, metadata !DIExpression()), !dbg !1435
  %349 = add i64 %313, %308, !dbg !1494
  call void @llvm.dbg.value(metadata i64 %349, metadata !1194, metadata !DIExpression()), !dbg !1435
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #26, !dbg !1489
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #27, !dbg !1495
  %351 = icmp eq i32 %350, 0, !dbg !1496
  br i1 %351, label %307, label %353, !dbg !1497, !llvm.loop !1498

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1197, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 undef, metadata !1194, metadata !DIExpression()), !dbg !1435
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #26, !dbg !1489
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #26, !dbg !1500
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #26, !dbg !1500
  call void @llvm.dbg.value(metadata i8 %354, metadata !1197, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %355, metadata !1194, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %306, metadata !1169, metadata !DIExpression()), !dbg !1234
  %356 = and i8 %354, 1, !dbg !1440
  %357 = icmp eq i8 %356, 0, !dbg !1440
  call void @llvm.dbg.value(metadata i1 %357, metadata !1193, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1301
  %358 = icmp ugt i64 %355, 1, !dbg !1501
  br i1 %358, label %367, label %359, !dbg !1441

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !1502
  br i1 %364, label %367, label %365, !dbg !1502

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1301
  call void @llvm.dbg.value(metadata i8 %472, metadata !1193, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i8 %441, metadata !1192, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i8 %440, metadata !1191, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i8 %439, metadata !1186, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i8 %438, metadata !1183, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %371, metadata !1169, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %437, metadata !1176, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %375, metadata !1175, metadata !DIExpression()), !dbg !1234
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !1503
  call void @llvm.dbg.value(metadata i64 %372, metadata !1225, metadata !DIExpression()), !dbg !1504
  %373 = and i1 %102, %368
  br label %374, !dbg !1505

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1294
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1234
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1243
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1301
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1301
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !1506
  call void @llvm.dbg.value(metadata i8 %380, metadata !1192, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i8 %379, metadata !1191, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i8 %378, metadata !1186, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i8 %377, metadata !1183, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %376, metadata !1176, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %375, metadata !1175, metadata !DIExpression()), !dbg !1234
  br i1 %373, label %381, label %427, !dbg !1507

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !1512

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1192, metadata !DIExpression()), !dbg !1301
  %383 = and i8 %377, 1, !dbg !1515
  %384 = icmp eq i8 %383, 0, !dbg !1515
  %385 = and i1 %110, %384, !dbg !1515
  br i1 %385, label %386, label %402, !dbg !1515

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !1517
  br i1 %387, label %388, label %390, !dbg !1521

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1517
  store i8 39, i8* %389, align 1, !dbg !1517, !tbaa !798
  br label %390, !dbg !1517

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !1521
  call void @llvm.dbg.value(metadata i64 %391, metadata !1176, metadata !DIExpression()), !dbg !1234
  %392 = icmp ult i64 %391, %129, !dbg !1522
  br i1 %392, label %393, label %395, !dbg !1525

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !1522
  store i8 36, i8* %394, align 1, !dbg !1522, !tbaa !798
  br label %395, !dbg !1522

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !1525
  call void @llvm.dbg.value(metadata i64 %396, metadata !1176, metadata !DIExpression()), !dbg !1234
  %397 = icmp ult i64 %396, %129, !dbg !1526
  br i1 %397, label %398, label %400, !dbg !1529

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1526
  store i8 39, i8* %399, align 1, !dbg !1526, !tbaa !798
  br label %400, !dbg !1526

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !1529
  call void @llvm.dbg.value(metadata i64 %401, metadata !1176, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8 1, metadata !1183, metadata !DIExpression()), !dbg !1234
  br label %402, !dbg !1530

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1234
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1234
  call void @llvm.dbg.value(metadata i8 %404, metadata !1183, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %403, metadata !1176, metadata !DIExpression()), !dbg !1234
  %405 = icmp ult i64 %403, %129, !dbg !1531
  br i1 %405, label %406, label %408, !dbg !1534

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1531
  store i8 92, i8* %407, align 1, !dbg !1531, !tbaa !798
  br label %408, !dbg !1531

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !1534
  call void @llvm.dbg.value(metadata i64 %409, metadata !1176, metadata !DIExpression()), !dbg !1234
  %410 = icmp ult i64 %409, %129, !dbg !1535
  br i1 %410, label %411, label %415, !dbg !1538

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !1535
  %413 = or i8 %412, 48, !dbg !1535
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !1535
  store i8 %413, i8* %414, align 1, !dbg !1535, !tbaa !798
  br label %415, !dbg !1535

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !1538
  call void @llvm.dbg.value(metadata i64 %416, metadata !1176, metadata !DIExpression()), !dbg !1234
  %417 = icmp ult i64 %416, %129, !dbg !1539
  br i1 %417, label %418, label %423, !dbg !1542

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !1539
  %420 = and i8 %419, 7, !dbg !1539
  %421 = or i8 %420, 48, !dbg !1539
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !1539
  store i8 %421, i8* %422, align 1, !dbg !1539, !tbaa !798
  br label %423, !dbg !1539

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !1542
  call void @llvm.dbg.value(metadata i64 %424, metadata !1176, metadata !DIExpression()), !dbg !1234
  %425 = and i8 %378, 7, !dbg !1543
  %426 = or i8 %425, 48, !dbg !1544
  call void @llvm.dbg.value(metadata i8 %426, metadata !1186, metadata !DIExpression()), !dbg !1301
  br label %436, !dbg !1545

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !1546
  %429 = icmp eq i8 %428, 0, !dbg !1546
  br i1 %429, label %436, label %430, !dbg !1548

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !1549
  br i1 %431, label %432, label %434, !dbg !1553

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1549
  store i8 92, i8* %433, align 1, !dbg !1549, !tbaa !798
  br label %434, !dbg !1549

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !1553
  call void @llvm.dbg.value(metadata i64 %435, metadata !1176, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8 0, metadata !1191, metadata !DIExpression()), !dbg !1301
  br label %436, !dbg !1554

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1234
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1243
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1301
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1301
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1301
  call void @llvm.dbg.value(metadata i8 %441, metadata !1192, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i8 %440, metadata !1191, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i8 %439, metadata !1186, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i8 %438, metadata !1183, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %437, metadata !1176, metadata !DIExpression()), !dbg !1234
  %442 = add i64 %375, 1, !dbg !1555
  %443 = icmp ugt i64 %372, %442, !dbg !1557
  br i1 %443, label %444, label %471, !dbg !1558

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !1559
  %446 = icmp ne i8 %445, 0, !dbg !1559
  %447 = and i8 %441, 1, !dbg !1559
  %448 = icmp eq i8 %447, 0, !dbg !1559
  %449 = and i1 %446, %448, !dbg !1559
  br i1 %449, label %450, label %461, !dbg !1559

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !1562
  br i1 %451, label %452, label %454, !dbg !1566

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !1562
  store i8 39, i8* %453, align 1, !dbg !1562, !tbaa !798
  br label %454, !dbg !1562

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !1566
  call void @llvm.dbg.value(metadata i64 %455, metadata !1176, metadata !DIExpression()), !dbg !1234
  %456 = icmp ult i64 %455, %129, !dbg !1567
  br i1 %456, label %457, label %459, !dbg !1570

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !1567
  store i8 39, i8* %458, align 1, !dbg !1567, !tbaa !798
  br label %459, !dbg !1567

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !1570
  call void @llvm.dbg.value(metadata i64 %460, metadata !1176, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8 0, metadata !1183, metadata !DIExpression()), !dbg !1234
  br label %461, !dbg !1571

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !1572
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1234
  call void @llvm.dbg.value(metadata i8 %463, metadata !1183, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %462, metadata !1176, metadata !DIExpression()), !dbg !1234
  %464 = icmp ult i64 %462, %129, !dbg !1573
  br i1 %464, label %465, label %467, !dbg !1576

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !1573
  store i8 %439, i8* %466, align 1, !dbg !1573, !tbaa !798
  br label %467, !dbg !1573

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !1576
  call void @llvm.dbg.value(metadata i64 %468, metadata !1176, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %442, metadata !1175, metadata !DIExpression()), !dbg !1234
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !1577
  %470 = load i8, i8* %469, align 1, !dbg !1577, !tbaa !798
  call void @llvm.dbg.value(metadata i8 %470, metadata !1186, metadata !DIExpression()), !dbg !1301
  br label %374, !dbg !1578, !llvm.loop !1579

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1301
  call void @llvm.dbg.value(metadata i8 %472, metadata !1193, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i8 %441, metadata !1192, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i8 %440, metadata !1191, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i8 %439, metadata !1186, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i8 %438, metadata !1183, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %371, metadata !1169, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %437, metadata !1176, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %375, metadata !1175, metadata !DIExpression()), !dbg !1234
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1294
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1234
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1239
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !1582
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1234
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1234
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1301
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1301
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1301
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1167, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8 %482, metadata !1193, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i8 %481, metadata !1192, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i8 %156, metadata !1191, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i8 %480, metadata !1186, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i8 %479, metadata !1184, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8 %478, metadata !1183, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %477, metadata !1169, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %476, metadata !1177, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %475, metadata !1176, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %474, metadata !1175, metadata !DIExpression()), !dbg !1234
  br i1 %116, label %494, label %484, !dbg !1583

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !1585
  %486 = zext i8 %485 to i64, !dbg !1585
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !1586
  %488 = load i32, i32* %487, align 4, !dbg !1586, !tbaa !768
  %489 = and i8 %480, 31, !dbg !1587
  %490 = zext i8 %489 to i32, !dbg !1587
  %491 = shl nuw i32 1, %490, !dbg !1588
  %492 = and i32 %488, %491, !dbg !1588
  %493 = icmp eq i32 %492, 0, !dbg !1588
  br i1 %493, label %494, label %495, !dbg !1589

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !1590

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !1591
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1234
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1239
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !1582
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1243
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1244
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1301
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1301
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1167, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8 %503, metadata !1193, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i8 %502, metadata !1186, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i8 %501, metadata !1184, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8 %500, metadata !1183, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %499, metadata !1169, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %498, metadata !1177, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %497, metadata !1176, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %496, metadata !1175, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.label(metadata !1231), !dbg !1592
  br i1 %109, label %505, label %635, !dbg !1593

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1192, metadata !DIExpression()), !dbg !1301
  %506 = and i8 %500, 1, !dbg !1595
  %507 = icmp eq i8 %506, 0, !dbg !1595
  %508 = and i1 %110, %507, !dbg !1595
  br i1 %508, label %509, label %525, !dbg !1595

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !1597
  br i1 %510, label %511, label %513, !dbg !1601

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !1597
  store i8 39, i8* %512, align 1, !dbg !1597, !tbaa !798
  br label %513, !dbg !1597

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !1601
  call void @llvm.dbg.value(metadata i64 %514, metadata !1176, metadata !DIExpression()), !dbg !1234
  %515 = icmp ult i64 %514, %504, !dbg !1602
  br i1 %515, label %516, label %518, !dbg !1605

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !1602
  store i8 36, i8* %517, align 1, !dbg !1602, !tbaa !798
  br label %518, !dbg !1602

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !1605
  call void @llvm.dbg.value(metadata i64 %519, metadata !1176, metadata !DIExpression()), !dbg !1234
  %520 = icmp ult i64 %519, %504, !dbg !1606
  br i1 %520, label %521, label %523, !dbg !1609

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1606
  store i8 39, i8* %522, align 1, !dbg !1606, !tbaa !798
  br label %523, !dbg !1606

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !1609
  call void @llvm.dbg.value(metadata i64 %524, metadata !1176, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8 1, metadata !1183, metadata !DIExpression()), !dbg !1234
  br label %525, !dbg !1610

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1301
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1234
  call void @llvm.dbg.value(metadata i8 %527, metadata !1183, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %526, metadata !1176, metadata !DIExpression()), !dbg !1234
  %528 = icmp ult i64 %526, %504, !dbg !1611
  br i1 %528, label %529, label %531, !dbg !1614

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1611
  store i8 92, i8* %530, align 1, !dbg !1611, !tbaa !798
  br label %531, !dbg !1611

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !1614
  call void @llvm.dbg.value(metadata i64 %543, metadata !1167, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8 %542, metadata !1193, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i8 %541, metadata !1192, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i8 %540, metadata !1186, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i8 %539, metadata !1184, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8 %538, metadata !1183, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %537, metadata !1169, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %536, metadata !1177, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %535, metadata !1176, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %534, metadata !1175, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.label(metadata !1232), !dbg !1615
  br label %560, !dbg !1616

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !1591
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1234
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1239
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !1582
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1243
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1244
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !1619
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1301
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1301
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1167, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8 %542, metadata !1193, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i8 %541, metadata !1192, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i8 %540, metadata !1186, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i8 %539, metadata !1184, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8 %538, metadata !1183, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %537, metadata !1169, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %536, metadata !1177, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %535, metadata !1176, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %534, metadata !1175, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.label(metadata !1232), !dbg !1615
  %544 = and i8 %538, 1, !dbg !1616
  %545 = icmp ne i8 %544, 0, !dbg !1616
  %546 = and i8 %541, 1, !dbg !1616
  %547 = icmp eq i8 %546, 0, !dbg !1616
  %548 = and i1 %545, %547, !dbg !1616
  br i1 %548, label %549, label %560, !dbg !1616

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !1620
  br i1 %550, label %551, label %553, !dbg !1624

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !1620
  store i8 39, i8* %552, align 1, !dbg !1620, !tbaa !798
  br label %553, !dbg !1620

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !1624
  call void @llvm.dbg.value(metadata i64 %554, metadata !1176, metadata !DIExpression()), !dbg !1234
  %555 = icmp ult i64 %554, %543, !dbg !1625
  br i1 %555, label %556, label %558, !dbg !1628

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !1625
  store i8 39, i8* %557, align 1, !dbg !1625, !tbaa !798
  br label %558, !dbg !1625

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !1628
  call void @llvm.dbg.value(metadata i64 %559, metadata !1176, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8 0, metadata !1183, metadata !DIExpression()), !dbg !1234
  br label %560, !dbg !1629

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1301
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1234
  call void @llvm.dbg.value(metadata i8 %569, metadata !1183, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %568, metadata !1176, metadata !DIExpression()), !dbg !1234
  %570 = icmp ult i64 %568, %561, !dbg !1630
  br i1 %570, label %571, label %573, !dbg !1633

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !1630
  store i8 %563, i8* %572, align 1, !dbg !1630, !tbaa !798
  br label %573, !dbg !1630

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !1633
  call void @llvm.dbg.value(metadata i64 %574, metadata !1176, metadata !DIExpression()), !dbg !1234
  %575 = icmp eq i8 %562, 0, !dbg !1634
  %576 = select i1 %575, i8 0, i8 %128, !dbg !1636
  call void @llvm.dbg.value(metadata i8 %576, metadata !1185, metadata !DIExpression()), !dbg !1234
  br label %577, !dbg !1637

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !1591
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1234
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1239
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !1582
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1243
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1234
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1245
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1167, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8 %584, metadata !1185, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8 %583, metadata !1184, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8 %582, metadata !1183, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %581, metadata !1169, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %580, metadata !1177, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %579, metadata !1176, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %578, metadata !1175, metadata !DIExpression()), !dbg !1234
  %586 = add i64 %578, 1, !dbg !1638
  call void @llvm.dbg.value(metadata i64 %586, metadata !1175, metadata !DIExpression()), !dbg !1234
  br label %121, !dbg !1639, !llvm.loop !1640

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !1642
  %590 = and i1 %110, %589, !dbg !1644
  %591 = xor i1 %590, true, !dbg !1644
  %592 = or i1 %109, %591, !dbg !1644
  br i1 %592, label %593, label %635, !dbg !1644

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !1645
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !1645
  br i1 %597, label %598, label %607, !dbg !1645

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !1647
  %600 = icmp eq i8 %599, 0, !dbg !1647
  br i1 %600, label %603, label %601, !dbg !1650

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !1651
  br label %652, !dbg !1652

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !1653
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !1655
  br i1 %606, label %26, label %607, !dbg !1655

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !1656
  %610 = and i1 %609, %608, !dbg !1658
  br i1 %610, label %611, label %626, !dbg !1658

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1178, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %123, metadata !1176, metadata !DIExpression()), !dbg !1234
  %612 = load i8, i8* %97, align 1, !dbg !1659, !tbaa !798
  %613 = icmp eq i8 %612, 0, !dbg !1662
  br i1 %613, label %626, label %614, !dbg !1662

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1178, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %617, metadata !1176, metadata !DIExpression()), !dbg !1234
  %618 = icmp ult i64 %617, %129, !dbg !1663
  br i1 %618, label %619, label %621, !dbg !1666

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !1663
  store i8 %615, i8* %620, align 1, !dbg !1663, !tbaa !798
  br label %621, !dbg !1663

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !1666
  call void @llvm.dbg.value(metadata i64 %622, metadata !1176, metadata !DIExpression()), !dbg !1234
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !1667
  call void @llvm.dbg.value(metadata i8* %623, metadata !1178, metadata !DIExpression()), !dbg !1234
  %624 = load i8, i8* %623, align 1, !dbg !1659, !tbaa !798
  %625 = icmp eq i8 %624, 0, !dbg !1662
  br i1 %625, label %626, label %614, !dbg !1662, !llvm.loop !1668

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1276
  call void @llvm.dbg.value(metadata i64 %627, metadata !1176, metadata !DIExpression()), !dbg !1234
  %628 = icmp ult i64 %627, %129, !dbg !1670
  br i1 %628, label %629, label %652, !dbg !1672

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !1673
  store i8 0, i8* %630, align 1, !dbg !1674, !tbaa !798
  br label %652, !dbg !1673

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1167, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %637, metadata !1169, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.label(metadata !1233), !dbg !1675
  %633 = icmp eq i8 %101, 0, !dbg !1676
  %634 = select i1 %633, i32 2, i32 4, !dbg !1676
  br label %642, !dbg !1676

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1167, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %637, metadata !1169, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.label(metadata !1233), !dbg !1675
  %639 = icmp eq i32 %93, 2, !dbg !1678
  %640 = icmp eq i8 %636, 0, !dbg !1676
  %641 = select i1 %640, i32 2, i32 4, !dbg !1676
  br i1 %639, label %642, label %646, !dbg !1676

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !1676

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1170, metadata !DIExpression()), !dbg !1234
  %650 = and i32 %5, -3, !dbg !1679
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !1680
  br label %652, !dbg !1681

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !1682
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !1683 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1687, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i32 %1, metadata !1688, metadata !DIExpression()), !dbg !1691
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #26, !dbg !1692
  call void @llvm.dbg.value(metadata i8* %3, metadata !1689, metadata !DIExpression()), !dbg !1691
  %4 = icmp eq i8* %3, %0, !dbg !1693
  br i1 %4, label %5, label %72, !dbg !1695

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #26, !dbg !1696
  call void @llvm.dbg.value(metadata i8* %6, metadata !1690, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i8* %6, metadata !1697, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8* undef, metadata !1703, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 85, metadata !1704, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 84, metadata !1705, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 70, metadata !1706, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 45, metadata !1707, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 56, metadata !1708, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 0, metadata !1709, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 0, metadata !1710, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 0, metadata !1711, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 0, metadata !1712, metadata !DIExpression()), !dbg !1713
  %7 = load i8, i8* %6, align 1, !dbg !1716, !tbaa !798
  %8 = and i8 %7, -33, !dbg !1716
  %9 = sext i8 %8 to i32, !dbg !1716
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !1716

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1718, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i8* undef, metadata !1723, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i8 84, metadata !1724, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i8 70, metadata !1725, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i8 45, metadata !1726, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i8 56, metadata !1727, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i8 0, metadata !1728, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i8 0, metadata !1729, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i8 0, metadata !1730, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i8 0, metadata !1731, metadata !DIExpression()), !dbg !1732
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1736
  %12 = load i8, i8* %11, align 1, !dbg !1736, !tbaa !798
  %13 = and i8 %12, -33, !dbg !1736
  %14 = icmp eq i8 %13, 84, !dbg !1736
  br i1 %14, label %15, label %69, !dbg !1736

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !1738, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8* undef, metadata !1743, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 70, metadata !1744, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 45, metadata !1745, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 56, metadata !1746, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 0, metadata !1747, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 0, metadata !1748, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 0, metadata !1749, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 0, metadata !1750, metadata !DIExpression()), !dbg !1751
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1755
  %17 = load i8, i8* %16, align 1, !dbg !1755, !tbaa !798
  %18 = and i8 %17, -33, !dbg !1755
  %19 = icmp eq i8 %18, 70, !dbg !1755
  br i1 %19, label %20, label %69, !dbg !1755

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !1757, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i8* undef, metadata !1762, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i8 45, metadata !1763, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i8 56, metadata !1764, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i8 0, metadata !1765, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i8 0, metadata !1766, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i8 0, metadata !1767, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i8 0, metadata !1768, metadata !DIExpression()), !dbg !1769
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1773
  %22 = load i8, i8* %21, align 1, !dbg !1773, !tbaa !798
  %23 = icmp eq i8 %22, 45, !dbg !1773
  br i1 %23, label %24, label %69, !dbg !1775

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !1776, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8* undef, metadata !1781, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 56, metadata !1782, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 0, metadata !1783, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 0, metadata !1784, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 0, metadata !1785, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 0, metadata !1786, metadata !DIExpression()), !dbg !1787
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1791
  %26 = load i8, i8* %25, align 1, !dbg !1791, !tbaa !798
  %27 = icmp eq i8 %26, 56, !dbg !1791
  br i1 %27, label %28, label %69, !dbg !1793

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !1794, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8* undef, metadata !1799, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8 0, metadata !1800, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8 0, metadata !1801, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8 0, metadata !1802, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8 0, metadata !1803, metadata !DIExpression()), !dbg !1804
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1808
  %30 = load i8, i8* %29, align 1, !dbg !1808, !tbaa !798
  %31 = icmp eq i8 %30, 0, !dbg !1808
  br i1 %31, label %32, label %69, !dbg !1810

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !1811, !tbaa !798
  %34 = icmp eq i8 %33, 96, !dbg !1812
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.66, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.67, i64 0, i64 0), !dbg !1811
  br label %72, !dbg !1813

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1718, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8* undef, metadata !1723, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8 66, metadata !1724, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8 49, metadata !1725, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8 56, metadata !1726, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8 48, metadata !1727, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8 51, metadata !1728, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8 48, metadata !1729, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8 0, metadata !1730, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8 0, metadata !1731, metadata !DIExpression()), !dbg !1814
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1818
  %38 = load i8, i8* %37, align 1, !dbg !1818, !tbaa !798
  %39 = and i8 %38, -33, !dbg !1818
  %40 = icmp eq i8 %39, 66, !dbg !1818
  br i1 %40, label %41, label %69, !dbg !1818

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !1738, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8* undef, metadata !1743, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8 49, metadata !1744, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8 56, metadata !1745, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8 48, metadata !1746, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8 51, metadata !1747, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8 48, metadata !1748, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8 0, metadata !1749, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8 0, metadata !1750, metadata !DIExpression()), !dbg !1819
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1821
  %43 = load i8, i8* %42, align 1, !dbg !1821, !tbaa !798
  %44 = icmp eq i8 %43, 49, !dbg !1821
  br i1 %44, label %45, label %69, !dbg !1822

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !1757, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i8* undef, metadata !1762, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i8 56, metadata !1763, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i8 48, metadata !1764, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i8 51, metadata !1765, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i8 48, metadata !1766, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i8 0, metadata !1767, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i8 0, metadata !1768, metadata !DIExpression()), !dbg !1823
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1825
  %47 = load i8, i8* %46, align 1, !dbg !1825, !tbaa !798
  %48 = icmp eq i8 %47, 56, !dbg !1825
  br i1 %48, label %49, label %69, !dbg !1826

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !1776, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i8* undef, metadata !1781, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i8 48, metadata !1782, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i8 51, metadata !1783, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i8 48, metadata !1784, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i8 0, metadata !1785, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i8 0, metadata !1786, metadata !DIExpression()), !dbg !1827
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1829
  %51 = load i8, i8* %50, align 1, !dbg !1829, !tbaa !798
  %52 = icmp eq i8 %51, 48, !dbg !1829
  br i1 %52, label %53, label %69, !dbg !1830

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !1794, metadata !DIExpression()), !dbg !1831
  call void @llvm.dbg.value(metadata i8* undef, metadata !1799, metadata !DIExpression()), !dbg !1831
  call void @llvm.dbg.value(metadata i8 51, metadata !1800, metadata !DIExpression()), !dbg !1831
  call void @llvm.dbg.value(metadata i8 48, metadata !1801, metadata !DIExpression()), !dbg !1831
  call void @llvm.dbg.value(metadata i8 0, metadata !1802, metadata !DIExpression()), !dbg !1831
  call void @llvm.dbg.value(metadata i8 0, metadata !1803, metadata !DIExpression()), !dbg !1831
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1833
  %55 = load i8, i8* %54, align 1, !dbg !1833, !tbaa !798
  %56 = icmp eq i8 %55, 51, !dbg !1833
  br i1 %56, label %57, label %69, !dbg !1834

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !1835, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* undef, metadata !1840, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8 48, metadata !1841, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8 0, metadata !1842, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8 0, metadata !1843, metadata !DIExpression()), !dbg !1844
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1848
  %59 = load i8, i8* %58, align 1, !dbg !1848, !tbaa !798
  %60 = icmp eq i8 %59, 48, !dbg !1848
  br i1 %60, label %61, label %69, !dbg !1850

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !1851, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8* undef, metadata !1856, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8 0, metadata !1857, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8 0, metadata !1858, metadata !DIExpression()), !dbg !1859
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1863
  %63 = load i8, i8* %62, align 1, !dbg !1863, !tbaa !798
  %64 = icmp eq i8 %63, 0, !dbg !1863
  br i1 %64, label %65, label %69, !dbg !1865

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !1866, !tbaa !798
  %67 = icmp eq i8 %66, 96, !dbg !1867
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.68, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.69, i64 0, i64 0), !dbg !1866
  br label %72, !dbg !1868

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !1869
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), !dbg !1870
  br label %72, !dbg !1871

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !1691
  ret i8* %73, !dbg !1872
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !1873 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !1877 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !1883 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1887, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %1, metadata !1888, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1889, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8* %0, metadata !1891, metadata !DIExpression()) #26, !dbg !1904
  call void @llvm.dbg.value(metadata i64 %1, metadata !1896, metadata !DIExpression()) #26, !dbg !1904
  call void @llvm.dbg.value(metadata i64* null, metadata !1897, metadata !DIExpression()) #26, !dbg !1904
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1898, metadata !DIExpression()) #26, !dbg !1904
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1906
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1906
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1899, metadata !DIExpression()) #26, !dbg !1904
  %6 = tail call i32* @__errno_location() #30, !dbg !1907
  %7 = load i32, i32* %6, align 4, !dbg !1907, !tbaa !768
  call void @llvm.dbg.value(metadata i32 %7, metadata !1900, metadata !DIExpression()) #26, !dbg !1904
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1908
  %9 = load i32, i32* %8, align 4, !dbg !1908, !tbaa !1110
  %10 = or i32 %9, 1, !dbg !1909
  call void @llvm.dbg.value(metadata i32 %10, metadata !1901, metadata !DIExpression()) #26, !dbg !1904
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1910
  %12 = load i32, i32* %11, align 8, !dbg !1910, !tbaa !1059
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1911
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1912
  %15 = load i8*, i8** %14, align 8, !dbg !1912, !tbaa !1132
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1913
  %17 = load i8*, i8** %16, align 8, !dbg !1913, !tbaa !1135
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #26, !dbg !1914
  %19 = add i64 %18, 1, !dbg !1915
  call void @llvm.dbg.value(metadata i64 %19, metadata !1902, metadata !DIExpression()) #26, !dbg !1904
  call void @llvm.dbg.value(metadata i64 %19, metadata !1916, metadata !DIExpression()) #26, !dbg !1921
  %20 = tail call noalias i8* @xmalloc(i64 %19) #26, !dbg !1923
  call void @llvm.dbg.value(metadata i8* %20, metadata !1903, metadata !DIExpression()) #26, !dbg !1904
  %21 = load i32, i32* %11, align 8, !dbg !1924, !tbaa !1059
  %22 = load i8*, i8** %14, align 8, !dbg !1925, !tbaa !1132
  %23 = load i8*, i8** %16, align 8, !dbg !1926, !tbaa !1135
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #26, !dbg !1927
  store i32 %7, i32* %6, align 4, !dbg !1928, !tbaa !768
  ret i8* %20, !dbg !1929
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !1892 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1891, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i64 %1, metadata !1896, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i64* %2, metadata !1897, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1898, metadata !DIExpression()), !dbg !1930
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1931
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1931
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1899, metadata !DIExpression()), !dbg !1930
  %7 = tail call i32* @__errno_location() #30, !dbg !1932
  %8 = load i32, i32* %7, align 4, !dbg !1932, !tbaa !768
  call void @llvm.dbg.value(metadata i32 %8, metadata !1900, metadata !DIExpression()), !dbg !1930
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1933
  %10 = load i32, i32* %9, align 4, !dbg !1933, !tbaa !1110
  %11 = icmp eq i64* %2, null, !dbg !1934
  %12 = zext i1 %11 to i32, !dbg !1934
  %13 = or i32 %10, %12, !dbg !1935
  call void @llvm.dbg.value(metadata i32 %13, metadata !1901, metadata !DIExpression()), !dbg !1930
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1936
  %15 = load i32, i32* %14, align 8, !dbg !1936, !tbaa !1059
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1937
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1938
  %18 = load i8*, i8** %17, align 8, !dbg !1938, !tbaa !1132
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1939
  %20 = load i8*, i8** %19, align 8, !dbg !1939, !tbaa !1135
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !1940
  %22 = add i64 %21, 1, !dbg !1941
  call void @llvm.dbg.value(metadata i64 %22, metadata !1902, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i64 %22, metadata !1916, metadata !DIExpression()) #26, !dbg !1942
  %23 = tail call noalias i8* @xmalloc(i64 %22) #26, !dbg !1944
  call void @llvm.dbg.value(metadata i8* %23, metadata !1903, metadata !DIExpression()), !dbg !1930
  %24 = load i32, i32* %14, align 8, !dbg !1945, !tbaa !1059
  %25 = load i8*, i8** %17, align 8, !dbg !1946, !tbaa !1132
  %26 = load i8*, i8** %19, align 8, !dbg !1947, !tbaa !1135
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !1948
  store i32 %8, i32* %7, align 4, !dbg !1949, !tbaa !768
  br i1 %11, label %29, label %28, !dbg !1950

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !1951, !tbaa !1953
  br label %29, !dbg !1954

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !1955
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !1956 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1960, !tbaa !675
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !1958, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i32 1, metadata !1959, metadata !DIExpression()), !dbg !1961
  %2 = load i32, i32* @nslots, align 4, !dbg !1962, !tbaa !768
  %3 = icmp sgt i32 %2, 1, !dbg !1965
  br i1 %3, label %4, label %12, !dbg !1966

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !1965
  br label %6, !dbg !1966

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !1959, metadata !DIExpression()), !dbg !1961
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !1967
  %9 = load i8*, i8** %8, align 8, !dbg !1967, !tbaa !1968
  tail call void @free(i8* %9) #26, !dbg !1970
  %10 = add nuw nsw i64 %7, 1, !dbg !1971
  call void @llvm.dbg.value(metadata i64 %10, metadata !1959, metadata !DIExpression()), !dbg !1961
  %11 = icmp eq i64 %10, %5, !dbg !1965
  br i1 %11, label %12, label %6, !dbg !1966, !llvm.loop !1972

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1974
  %14 = load i8*, i8** %13, align 8, !dbg !1974, !tbaa !1968
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1976
  br i1 %15, label %17, label %16, !dbg !1977

16:                                               ; preds = %12
  tail call void @free(i8* %14) #26, !dbg !1978
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1980, !tbaa !1981
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1982, !tbaa !1968
  br label %17, !dbg !1983

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1984
  br i1 %18, label %21, label %19, !dbg !1986

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !1987
  tail call void @free(i8* %20) #26, !dbg !1989
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1990, !tbaa !675
  br label %21, !dbg !1991

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !1992, !tbaa !768
  ret void, !dbg !1993
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !1994 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1996, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata i8* %1, metadata !1997, metadata !DIExpression()), !dbg !1998
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1999
  ret i8* %3, !dbg !2000
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2001 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2005, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8* %1, metadata !2006, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %2, metadata !2007, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2008, metadata !DIExpression()), !dbg !2020
  %5 = tail call i32* @__errno_location() #30, !dbg !2021
  %6 = load i32, i32* %5, align 4, !dbg !2021, !tbaa !768
  call void @llvm.dbg.value(metadata i32 %6, metadata !2009, metadata !DIExpression()), !dbg !2020
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2022, !tbaa !675
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2010, metadata !DIExpression()), !dbg !2020
  %8 = icmp slt i32 %0, 0, !dbg !2023
  br i1 %8, label %9, label %10, !dbg !2025

9:                                                ; preds = %4
  tail call void @abort() #28, !dbg !2026
  unreachable, !dbg !2026

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2027, !tbaa !768
  %12 = icmp sgt i32 %11, %0, !dbg !2028
  br i1 %12, label %34, label %13, !dbg !2029

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2030
  call void @llvm.dbg.value(metadata i1 %14, metadata !2011, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2031
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2014, metadata !DIExpression()), !dbg !2031
  %15 = icmp eq i32 %0, 2147483647, !dbg !2032
  br i1 %15, label %16, label %17, !dbg !2034

16:                                               ; preds = %13
  tail call void @xalloc_die() #28, !dbg !2035
  unreachable, !dbg !2035

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2036
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2036
  %20 = add nuw nsw i32 %0, 1, !dbg !2037
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2038
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #26, !dbg !2039
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2039
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2010, metadata !DIExpression()), !dbg !2020
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2040, !tbaa !675
  br i1 %14, label %25, label %26, !dbg !2041

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2042, !tbaa.struct !2044
  br label %26, !dbg !2045

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2046, !tbaa !768
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2047
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2048
  %31 = sub nsw i32 %20, %27, !dbg !2049
  %32 = sext i32 %31 to i64, !dbg !2050
  %33 = shl nsw i64 %32, 4, !dbg !2051
  call void @llvm.dbg.value(metadata i8* %30, metadata !1444, metadata !DIExpression()) #26, !dbg !2052
  call void @llvm.dbg.value(metadata i32 0, metadata !1449, metadata !DIExpression()) #26, !dbg !2052
  call void @llvm.dbg.value(metadata i64 %33, metadata !1450, metadata !DIExpression()) #26, !dbg !2052
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #26, !dbg !2054
  store i32 %20, i32* @nslots, align 4, !dbg !2055, !tbaa !768
  br label %34, !dbg !2056

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2020
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2010, metadata !DIExpression()), !dbg !2020
  %36 = zext i32 %0 to i64, !dbg !2057
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2058
  %38 = load i64, i64* %37, align 8, !dbg !2058, !tbaa !1981
  call void @llvm.dbg.value(metadata i64 %38, metadata !2015, metadata !DIExpression()), !dbg !2059
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2060
  %40 = load i8*, i8** %39, align 8, !dbg !2060, !tbaa !1968
  call void @llvm.dbg.value(metadata i8* %40, metadata !2017, metadata !DIExpression()), !dbg !2059
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2061
  %42 = load i32, i32* %41, align 4, !dbg !2061, !tbaa !1110
  %43 = or i32 %42, 1, !dbg !2062
  call void @llvm.dbg.value(metadata i32 %43, metadata !2018, metadata !DIExpression()), !dbg !2059
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2063
  %45 = load i32, i32* %44, align 8, !dbg !2063, !tbaa !1059
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2064
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2065
  %48 = load i8*, i8** %47, align 8, !dbg !2065, !tbaa !1132
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2066
  %50 = load i8*, i8** %49, align 8, !dbg !2066, !tbaa !1135
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %51, metadata !2019, metadata !DIExpression()), !dbg !2059
  %52 = icmp ugt i64 %38, %51, !dbg !2068
  br i1 %52, label %63, label %53, !dbg !2070

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2071
  call void @llvm.dbg.value(metadata i64 %54, metadata !2015, metadata !DIExpression()), !dbg !2059
  store i64 %54, i64* %37, align 8, !dbg !2073, !tbaa !1981
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2074
  br i1 %55, label %57, label %56, !dbg !2076

56:                                               ; preds = %53
  tail call void @free(i8* %40) #26, !dbg !2077
  br label %57, !dbg !2077

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !1916, metadata !DIExpression()) #26, !dbg !2078
  %58 = tail call noalias i8* @xmalloc(i64 %54) #26, !dbg !2080
  call void @llvm.dbg.value(metadata i8* %58, metadata !2017, metadata !DIExpression()), !dbg !2059
  store i8* %58, i8** %39, align 8, !dbg !2081, !tbaa !1968
  %59 = load i32, i32* %44, align 8, !dbg !2082, !tbaa !1059
  %60 = load i8*, i8** %47, align 8, !dbg !2083, !tbaa !1132
  %61 = load i8*, i8** %49, align 8, !dbg !2084, !tbaa !1135
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2085
  br label %63, !dbg !2086

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2059
  call void @llvm.dbg.value(metadata i8* %64, metadata !2017, metadata !DIExpression()), !dbg !2059
  store i32 %6, i32* %5, align 4, !dbg !2087, !tbaa !768
  ret i8* %64, !dbg !2088
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2089 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2093, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8* %1, metadata !2094, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i64 %2, metadata !2095, metadata !DIExpression()), !dbg !2096
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2097
  ret i8* %4, !dbg !2098
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2099 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2101, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 0, metadata !1996, metadata !DIExpression()) #26, !dbg !2103
  call void @llvm.dbg.value(metadata i8* %0, metadata !1997, metadata !DIExpression()) #26, !dbg !2103
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #26, !dbg !2105
  ret i8* %2, !dbg !2106
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2107 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2111, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 %1, metadata !2112, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i32 0, metadata !2093, metadata !DIExpression()) #26, !dbg !2114
  call void @llvm.dbg.value(metadata i8* %0, metadata !2094, metadata !DIExpression()) #26, !dbg !2114
  call void @llvm.dbg.value(metadata i64 %1, metadata !2095, metadata !DIExpression()) #26, !dbg !2114
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #26, !dbg !2116
  ret i8* %3, !dbg !2117
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2118 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2122, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i32 %1, metadata !2123, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i8* %2, metadata !2124, metadata !DIExpression()), !dbg !2126
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2127
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2127
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2125, metadata !DIExpression()), !dbg !2128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2129), !dbg !2132
  call void @llvm.dbg.value(metadata i32 %1, metadata !2133, metadata !DIExpression()) #26, !dbg !2139
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2138, metadata !DIExpression()) #26, !dbg !2141
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #26, !dbg !2141, !alias.scope !2129
  %6 = icmp eq i32 %1, 10, !dbg !2142
  br i1 %6, label %7, label %8, !dbg !2144

7:                                                ; preds = %3
  tail call void @abort() #28, !dbg !2145, !noalias !2129
  unreachable, !dbg !2145

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2146
  store i32 %1, i32* %9, align 8, !dbg !2147, !tbaa !1059, !alias.scope !2129
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2148
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2149
  ret i8* %10, !dbg !2150
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2151 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2155, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i32 %1, metadata !2156, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i8* %2, metadata !2157, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i64 %3, metadata !2158, metadata !DIExpression()), !dbg !2160
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2161
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2161
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2159, metadata !DIExpression()), !dbg !2162
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2163), !dbg !2166
  call void @llvm.dbg.value(metadata i32 %1, metadata !2133, metadata !DIExpression()) #26, !dbg !2167
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2138, metadata !DIExpression()) #26, !dbg !2169
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #26, !dbg !2169, !alias.scope !2163
  %7 = icmp eq i32 %1, 10, !dbg !2170
  br i1 %7, label %8, label %9, !dbg !2171

8:                                                ; preds = %4
  tail call void @abort() #28, !dbg !2172, !noalias !2163
  unreachable, !dbg !2172

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2173
  store i32 %1, i32* %10, align 8, !dbg !2174, !tbaa !1059, !alias.scope !2163
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2175
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2176
  ret i8* %11, !dbg !2177
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2178 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2182, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i8* %1, metadata !2183, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i32 0, metadata !2122, metadata !DIExpression()) #26, !dbg !2185
  call void @llvm.dbg.value(metadata i32 %0, metadata !2123, metadata !DIExpression()) #26, !dbg !2185
  call void @llvm.dbg.value(metadata i8* %1, metadata !2124, metadata !DIExpression()) #26, !dbg !2185
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2187
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2187
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2125, metadata !DIExpression()) #26, !dbg !2188
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2189) #26, !dbg !2192
  call void @llvm.dbg.value(metadata i32 %0, metadata !2133, metadata !DIExpression()) #26, !dbg !2193
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2138, metadata !DIExpression()) #26, !dbg !2195
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #26, !dbg !2195, !alias.scope !2189
  %5 = icmp eq i32 %0, 10, !dbg !2196
  br i1 %5, label %6, label %7, !dbg !2197

6:                                                ; preds = %2
  tail call void @abort() #28, !dbg !2198, !noalias !2189
  unreachable, !dbg !2198

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2199
  store i32 %0, i32* %8, align 8, !dbg !2200, !tbaa !1059, !alias.scope !2189
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #26, !dbg !2201
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2202
  ret i8* %9, !dbg !2203
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2204 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2208, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8* %1, metadata !2209, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %2, metadata !2210, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i32 0, metadata !2155, metadata !DIExpression()) #26, !dbg !2212
  call void @llvm.dbg.value(metadata i32 %0, metadata !2156, metadata !DIExpression()) #26, !dbg !2212
  call void @llvm.dbg.value(metadata i8* %1, metadata !2157, metadata !DIExpression()) #26, !dbg !2212
  call void @llvm.dbg.value(metadata i64 %2, metadata !2158, metadata !DIExpression()) #26, !dbg !2212
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2214
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2214
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2159, metadata !DIExpression()) #26, !dbg !2215
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2216) #26, !dbg !2219
  call void @llvm.dbg.value(metadata i32 %0, metadata !2133, metadata !DIExpression()) #26, !dbg !2220
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2138, metadata !DIExpression()) #26, !dbg !2222
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #26, !dbg !2222, !alias.scope !2216
  %6 = icmp eq i32 %0, 10, !dbg !2223
  br i1 %6, label %7, label %8, !dbg !2224

7:                                                ; preds = %3
  tail call void @abort() #28, !dbg !2225, !noalias !2216
  unreachable, !dbg !2225

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2226
  store i32 %0, i32* %9, align 8, !dbg !2227, !tbaa !1059, !alias.scope !2216
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #26, !dbg !2228
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2229
  ret i8* %10, !dbg !2230
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2231 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2235, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i64 %1, metadata !2236, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i8 %2, metadata !2237, metadata !DIExpression()), !dbg !2239
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2240
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2240
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2238, metadata !DIExpression()), !dbg !2241
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2242, !tbaa.struct !2243
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1077, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i8 %2, metadata !1078, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i32 1, metadata !1079, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i8 %2, metadata !1080, metadata !DIExpression()), !dbg !2244
  %6 = lshr i8 %2, 5, !dbg !2246
  %7 = zext i8 %6 to i64, !dbg !2246
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2247
  call void @llvm.dbg.value(metadata i32* %8, metadata !1081, metadata !DIExpression()), !dbg !2244
  %9 = and i8 %2, 31, !dbg !2248
  %10 = zext i8 %9 to i32, !dbg !2248
  call void @llvm.dbg.value(metadata i32 %10, metadata !1083, metadata !DIExpression()), !dbg !2244
  %11 = load i32, i32* %8, align 4, !dbg !2249, !tbaa !768
  %12 = lshr i32 %11, %10, !dbg !2250
  %13 = and i32 %12, 1, !dbg !2251
  call void @llvm.dbg.value(metadata i32 %13, metadata !1084, metadata !DIExpression()), !dbg !2244
  %14 = xor i32 %13, 1, !dbg !2252
  %15 = shl i32 %14, %10, !dbg !2253
  %16 = xor i32 %15, %11, !dbg !2254
  store i32 %16, i32* %8, align 4, !dbg !2254, !tbaa !768
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2255
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2256
  ret i8* %17, !dbg !2257
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2258 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2262, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i8 %1, metadata !2263, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i8* %0, metadata !2235, metadata !DIExpression()) #26, !dbg !2265
  call void @llvm.dbg.value(metadata i64 -1, metadata !2236, metadata !DIExpression()) #26, !dbg !2265
  call void @llvm.dbg.value(metadata i8 %1, metadata !2237, metadata !DIExpression()) #26, !dbg !2265
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2267
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2267
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2238, metadata !DIExpression()) #26, !dbg !2268
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #26, !dbg !2269, !tbaa.struct !2243
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1077, metadata !DIExpression()) #26, !dbg !2270
  call void @llvm.dbg.value(metadata i8 %1, metadata !1078, metadata !DIExpression()) #26, !dbg !2270
  call void @llvm.dbg.value(metadata i32 1, metadata !1079, metadata !DIExpression()) #26, !dbg !2270
  call void @llvm.dbg.value(metadata i8 %1, metadata !1080, metadata !DIExpression()) #26, !dbg !2270
  %5 = lshr i8 %1, 5, !dbg !2272
  %6 = zext i8 %5 to i64, !dbg !2272
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2273
  call void @llvm.dbg.value(metadata i32* %7, metadata !1081, metadata !DIExpression()) #26, !dbg !2270
  %8 = and i8 %1, 31, !dbg !2274
  %9 = zext i8 %8 to i32, !dbg !2274
  call void @llvm.dbg.value(metadata i32 %9, metadata !1083, metadata !DIExpression()) #26, !dbg !2270
  %10 = load i32, i32* %7, align 4, !dbg !2275, !tbaa !768
  %11 = lshr i32 %10, %9, !dbg !2276
  %12 = and i32 %11, 1, !dbg !2277
  call void @llvm.dbg.value(metadata i32 %12, metadata !1084, metadata !DIExpression()) #26, !dbg !2270
  %13 = xor i32 %12, 1, !dbg !2278
  %14 = shl i32 %13, %9, !dbg !2279
  %15 = xor i32 %14, %10, !dbg !2280
  store i32 %15, i32* %7, align 4, !dbg !2280, !tbaa !768
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #26, !dbg !2281
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2282
  ret i8* %16, !dbg !2283
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2284 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2286, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i8* %0, metadata !2262, metadata !DIExpression()) #26, !dbg !2288
  call void @llvm.dbg.value(metadata i8 58, metadata !2263, metadata !DIExpression()) #26, !dbg !2288
  call void @llvm.dbg.value(metadata i8* %0, metadata !2235, metadata !DIExpression()) #26, !dbg !2290
  call void @llvm.dbg.value(metadata i64 -1, metadata !2236, metadata !DIExpression()) #26, !dbg !2290
  call void @llvm.dbg.value(metadata i8 58, metadata !2237, metadata !DIExpression()) #26, !dbg !2290
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2292
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #26, !dbg !2292
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2238, metadata !DIExpression()) #26, !dbg !2293
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #26, !dbg !2294, !tbaa.struct !2243
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1077, metadata !DIExpression()) #26, !dbg !2295
  call void @llvm.dbg.value(metadata i8 58, metadata !1078, metadata !DIExpression()) #26, !dbg !2295
  call void @llvm.dbg.value(metadata i32 1, metadata !1079, metadata !DIExpression()) #26, !dbg !2295
  call void @llvm.dbg.value(metadata i8 58, metadata !1080, metadata !DIExpression()) #26, !dbg !2295
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2297
  call void @llvm.dbg.value(metadata i32* %4, metadata !1081, metadata !DIExpression()) #26, !dbg !2295
  call void @llvm.dbg.value(metadata i32 26, metadata !1083, metadata !DIExpression()) #26, !dbg !2295
  %5 = load i32, i32* %4, align 4, !dbg !2298, !tbaa !768
  call void @llvm.dbg.value(metadata i32 %5, metadata !1084, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #26, !dbg !2295
  %6 = or i32 %5, 67108864, !dbg !2299
  store i32 %6, i32* %4, align 4, !dbg !2299, !tbaa !768
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #26, !dbg !2300
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #26, !dbg !2301
  ret i8* %7, !dbg !2302
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2303 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2305, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i64 %1, metadata !2306, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i8* %0, metadata !2235, metadata !DIExpression()) #26, !dbg !2308
  call void @llvm.dbg.value(metadata i64 %1, metadata !2236, metadata !DIExpression()) #26, !dbg !2308
  call void @llvm.dbg.value(metadata i8 58, metadata !2237, metadata !DIExpression()) #26, !dbg !2308
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2310
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2310
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2238, metadata !DIExpression()) #26, !dbg !2311
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #26, !dbg !2312, !tbaa.struct !2243
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1077, metadata !DIExpression()) #26, !dbg !2313
  call void @llvm.dbg.value(metadata i8 58, metadata !1078, metadata !DIExpression()) #26, !dbg !2313
  call void @llvm.dbg.value(metadata i32 1, metadata !1079, metadata !DIExpression()) #26, !dbg !2313
  call void @llvm.dbg.value(metadata i8 58, metadata !1080, metadata !DIExpression()) #26, !dbg !2313
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2315
  call void @llvm.dbg.value(metadata i32* %5, metadata !1081, metadata !DIExpression()) #26, !dbg !2313
  call void @llvm.dbg.value(metadata i32 26, metadata !1083, metadata !DIExpression()) #26, !dbg !2313
  %6 = load i32, i32* %5, align 4, !dbg !2316, !tbaa !768
  call void @llvm.dbg.value(metadata i32 %6, metadata !1084, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #26, !dbg !2313
  %7 = or i32 %6, 67108864, !dbg !2317
  store i32 %7, i32* %5, align 4, !dbg !2317, !tbaa !768
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #26, !dbg !2318
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2319
  ret i8* %8, !dbg !2320
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2321 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2138, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2327
  call void @llvm.dbg.value(metadata i32 %0, metadata !2323, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.value(metadata i32 %1, metadata !2324, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.value(metadata i8* %2, metadata !2325, metadata !DIExpression()), !dbg !2329
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2330
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2330
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2326, metadata !DIExpression()), !dbg !2331
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2332
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2332
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2333), !dbg !2332
  call void @llvm.dbg.value(metadata i32 %1, metadata !2133, metadata !DIExpression()) #26, !dbg !2336
  call void @llvm.dbg.value(metadata i32 0, metadata !2138, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2336
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2327, !alias.scope !2333
  %8 = icmp eq i32 %1, 10, !dbg !2337
  br i1 %8, label %9, label %10, !dbg !2338

9:                                                ; preds = %3
  tail call void @abort() #28, !dbg !2339, !noalias !2333
  unreachable, !dbg !2339

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2138, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2336
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2332
  store i32 %1, i32* %11, align 8, !dbg !2332, !tbaa.struct !2243
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2332
  %13 = bitcast i32* %12 to i8*, !dbg !2332
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2332, !tbaa.struct !2340
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2332
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1077, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 58, metadata !1078, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i32 1, metadata !1079, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 58, metadata !1080, metadata !DIExpression()), !dbg !2341
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2343
  call void @llvm.dbg.value(metadata i32* %14, metadata !1081, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i32 26, metadata !1083, metadata !DIExpression()), !dbg !2341
  %15 = load i32, i32* %14, align 4, !dbg !2344, !tbaa !768
  call void @llvm.dbg.value(metadata i32 %15, metadata !1084, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2341
  %16 = or i32 %15, 67108864, !dbg !2345
  store i32 %16, i32* %14, align 4, !dbg !2345, !tbaa !768
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2346
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2347
  ret i8* %17, !dbg !2348
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2349 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2353, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i8* %1, metadata !2354, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i8* %2, metadata !2355, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i8* %3, metadata !2356, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i32 %0, metadata !2358, metadata !DIExpression()) #26, !dbg !2368
  call void @llvm.dbg.value(metadata i8* %1, metadata !2363, metadata !DIExpression()) #26, !dbg !2368
  call void @llvm.dbg.value(metadata i8* %2, metadata !2364, metadata !DIExpression()) #26, !dbg !2368
  call void @llvm.dbg.value(metadata i8* %3, metadata !2365, metadata !DIExpression()) #26, !dbg !2368
  call void @llvm.dbg.value(metadata i64 -1, metadata !2366, metadata !DIExpression()) #26, !dbg !2368
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2370
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2370
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2367, metadata !DIExpression()) #26, !dbg !2371
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #26, !dbg !2372, !tbaa.struct !2243
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1117, metadata !DIExpression()) #26, !dbg !2373
  call void @llvm.dbg.value(metadata i8* %1, metadata !1118, metadata !DIExpression()) #26, !dbg !2373
  call void @llvm.dbg.value(metadata i8* %2, metadata !1119, metadata !DIExpression()) #26, !dbg !2373
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1117, metadata !DIExpression()) #26, !dbg !2373
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2375
  store i32 10, i32* %7, align 8, !dbg !2376, !tbaa !1059
  %8 = icmp ne i8* %1, null, !dbg !2377
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2378
  br i1 %10, label %12, label %11, !dbg !2378

11:                                               ; preds = %4
  tail call void @abort() #28, !dbg !2379
  unreachable, !dbg !2379

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2380
  store i8* %1, i8** %13, align 8, !dbg !2381, !tbaa !1132
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2382
  store i8* %2, i8** %14, align 8, !dbg !2383, !tbaa !1135
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #26, !dbg !2384
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2385
  ret i8* %15, !dbg !2386
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2359 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2358, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8* %1, metadata !2363, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8* %2, metadata !2364, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8* %3, metadata !2365, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i64 %4, metadata !2366, metadata !DIExpression()), !dbg !2387
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2388
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #26, !dbg !2388
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2367, metadata !DIExpression()), !dbg !2389
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2390, !tbaa.struct !2243
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1117, metadata !DIExpression()) #26, !dbg !2391
  call void @llvm.dbg.value(metadata i8* %1, metadata !1118, metadata !DIExpression()) #26, !dbg !2391
  call void @llvm.dbg.value(metadata i8* %2, metadata !1119, metadata !DIExpression()) #26, !dbg !2391
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1117, metadata !DIExpression()) #26, !dbg !2391
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2393
  store i32 10, i32* %8, align 8, !dbg !2394, !tbaa !1059
  %9 = icmp ne i8* %1, null, !dbg !2395
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2396
  br i1 %11, label %13, label %12, !dbg !2396

12:                                               ; preds = %5
  tail call void @abort() #28, !dbg !2397
  unreachable, !dbg !2397

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2398
  store i8* %1, i8** %14, align 8, !dbg !2399, !tbaa !1132
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2400
  store i8* %2, i8** %15, align 8, !dbg !2401, !tbaa !1135
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2402
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #26, !dbg !2403
  ret i8* %16, !dbg !2404
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2405 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2409, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8* %1, metadata !2410, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8* %2, metadata !2411, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i32 0, metadata !2353, metadata !DIExpression()) #26, !dbg !2413
  call void @llvm.dbg.value(metadata i8* %0, metadata !2354, metadata !DIExpression()) #26, !dbg !2413
  call void @llvm.dbg.value(metadata i8* %1, metadata !2355, metadata !DIExpression()) #26, !dbg !2413
  call void @llvm.dbg.value(metadata i8* %2, metadata !2356, metadata !DIExpression()) #26, !dbg !2413
  call void @llvm.dbg.value(metadata i32 0, metadata !2358, metadata !DIExpression()) #26, !dbg !2415
  call void @llvm.dbg.value(metadata i8* %0, metadata !2363, metadata !DIExpression()) #26, !dbg !2415
  call void @llvm.dbg.value(metadata i8* %1, metadata !2364, metadata !DIExpression()) #26, !dbg !2415
  call void @llvm.dbg.value(metadata i8* %2, metadata !2365, metadata !DIExpression()) #26, !dbg !2415
  call void @llvm.dbg.value(metadata i64 -1, metadata !2366, metadata !DIExpression()) #26, !dbg !2415
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2417
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2417
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2367, metadata !DIExpression()) #26, !dbg !2418
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #26, !dbg !2419, !tbaa.struct !2243
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1117, metadata !DIExpression()) #26, !dbg !2420
  call void @llvm.dbg.value(metadata i8* %0, metadata !1118, metadata !DIExpression()) #26, !dbg !2420
  call void @llvm.dbg.value(metadata i8* %1, metadata !1119, metadata !DIExpression()) #26, !dbg !2420
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1117, metadata !DIExpression()) #26, !dbg !2420
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2422
  store i32 10, i32* %6, align 8, !dbg !2423, !tbaa !1059
  %7 = icmp ne i8* %0, null, !dbg !2424
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2425
  br i1 %9, label %11, label %10, !dbg !2425

10:                                               ; preds = %3
  tail call void @abort() #28, !dbg !2426
  unreachable, !dbg !2426

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2427
  store i8* %0, i8** %12, align 8, !dbg !2428, !tbaa !1132
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2429
  store i8* %1, i8** %13, align 8, !dbg !2430, !tbaa !1135
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #26, !dbg !2431
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2432
  ret i8* %14, !dbg !2433
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2434 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2438, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i8* %1, metadata !2439, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i8* %2, metadata !2440, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i64 %3, metadata !2441, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i32 0, metadata !2358, metadata !DIExpression()) #26, !dbg !2443
  call void @llvm.dbg.value(metadata i8* %0, metadata !2363, metadata !DIExpression()) #26, !dbg !2443
  call void @llvm.dbg.value(metadata i8* %1, metadata !2364, metadata !DIExpression()) #26, !dbg !2443
  call void @llvm.dbg.value(metadata i8* %2, metadata !2365, metadata !DIExpression()) #26, !dbg !2443
  call void @llvm.dbg.value(metadata i64 %3, metadata !2366, metadata !DIExpression()) #26, !dbg !2443
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2445
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2445
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2367, metadata !DIExpression()) #26, !dbg !2446
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #26, !dbg !2447, !tbaa.struct !2243
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1117, metadata !DIExpression()) #26, !dbg !2448
  call void @llvm.dbg.value(metadata i8* %0, metadata !1118, metadata !DIExpression()) #26, !dbg !2448
  call void @llvm.dbg.value(metadata i8* %1, metadata !1119, metadata !DIExpression()) #26, !dbg !2448
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1117, metadata !DIExpression()) #26, !dbg !2448
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2450
  store i32 10, i32* %7, align 8, !dbg !2451, !tbaa !1059
  %8 = icmp ne i8* %0, null, !dbg !2452
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2453
  br i1 %10, label %12, label %11, !dbg !2453

11:                                               ; preds = %4
  tail call void @abort() #28, !dbg !2454
  unreachable, !dbg !2454

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2455
  store i8* %0, i8** %13, align 8, !dbg !2456, !tbaa !1132
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2457
  store i8* %1, i8** %14, align 8, !dbg !2458, !tbaa !1135
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #26, !dbg !2459
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2460
  ret i8* %15, !dbg !2461
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2462 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2466, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i8* %1, metadata !2467, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i64 %2, metadata !2468, metadata !DIExpression()), !dbg !2469
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2470
  ret i8* %4, !dbg !2471
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2472 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2476, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i64 %1, metadata !2477, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i32 0, metadata !2466, metadata !DIExpression()) #26, !dbg !2479
  call void @llvm.dbg.value(metadata i8* %0, metadata !2467, metadata !DIExpression()) #26, !dbg !2479
  call void @llvm.dbg.value(metadata i64 %1, metadata !2468, metadata !DIExpression()) #26, !dbg !2479
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #26, !dbg !2481
  ret i8* %3, !dbg !2482
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2483 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2487, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i8* %1, metadata !2488, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i32 %0, metadata !2466, metadata !DIExpression()) #26, !dbg !2490
  call void @llvm.dbg.value(metadata i8* %1, metadata !2467, metadata !DIExpression()) #26, !dbg !2490
  call void @llvm.dbg.value(metadata i64 -1, metadata !2468, metadata !DIExpression()) #26, !dbg !2490
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #26, !dbg !2492
  ret i8* %3, !dbg !2493
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2494 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2498, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata i32 0, metadata !2487, metadata !DIExpression()) #26, !dbg !2500
  call void @llvm.dbg.value(metadata i8* %0, metadata !2488, metadata !DIExpression()) #26, !dbg !2500
  call void @llvm.dbg.value(metadata i32 0, metadata !2466, metadata !DIExpression()) #26, !dbg !2502
  call void @llvm.dbg.value(metadata i8* %0, metadata !2467, metadata !DIExpression()) #26, !dbg !2502
  call void @llvm.dbg.value(metadata i64 -1, metadata !2468, metadata !DIExpression()) #26, !dbg !2502
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #26, !dbg !2504
  ret i8* %2, !dbg !2505
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2506 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2545, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %1, metadata !2546, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %2, metadata !2547, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %3, metadata !2548, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8** %4, metadata !2549, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %5, metadata !2550, metadata !DIExpression()), !dbg !2551
  %7 = icmp eq i8* %1, null, !dbg !2552
  br i1 %7, label %10, label %8, !dbg !2554

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.72, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #26, !dbg !2555
  br label %12, !dbg !2555

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.73, i64 0, i64 0), i8* %2, i8* %3) #26, !dbg !2556
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.74, i64 0, i64 0), i32 5) #26, !dbg !2557
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #26, !dbg !2557
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.75, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2558
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.76, i64 0, i64 0), i32 5) #26, !dbg !2559
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.77, i64 0, i64 0)) #26, !dbg !2559
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.75, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2560
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
  ], !dbg !2561

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.78, i64 0, i64 0), i32 5) #26, !dbg !2562
  %21 = load i8*, i8** %4, align 8, !dbg !2562, !tbaa !675
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #26, !dbg !2562
  br label %147, !dbg !2564

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.79, i64 0, i64 0), i32 5) #26, !dbg !2565
  %25 = load i8*, i8** %4, align 8, !dbg !2565, !tbaa !675
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2565
  %27 = load i8*, i8** %26, align 8, !dbg !2565, !tbaa !675
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #26, !dbg !2565
  br label %147, !dbg !2566

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.80, i64 0, i64 0), i32 5) #26, !dbg !2567
  %31 = load i8*, i8** %4, align 8, !dbg !2567, !tbaa !675
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2567
  %33 = load i8*, i8** %32, align 8, !dbg !2567, !tbaa !675
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2567
  %35 = load i8*, i8** %34, align 8, !dbg !2567, !tbaa !675
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #26, !dbg !2567
  br label %147, !dbg !2568

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.81, i64 0, i64 0), i32 5) #26, !dbg !2569
  %39 = load i8*, i8** %4, align 8, !dbg !2569, !tbaa !675
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2569
  %41 = load i8*, i8** %40, align 8, !dbg !2569, !tbaa !675
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2569
  %43 = load i8*, i8** %42, align 8, !dbg !2569, !tbaa !675
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2569
  %45 = load i8*, i8** %44, align 8, !dbg !2569, !tbaa !675
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #26, !dbg !2569
  br label %147, !dbg !2570

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.82, i64 0, i64 0), i32 5) #26, !dbg !2571
  %49 = load i8*, i8** %4, align 8, !dbg !2571, !tbaa !675
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2571
  %51 = load i8*, i8** %50, align 8, !dbg !2571, !tbaa !675
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2571
  %53 = load i8*, i8** %52, align 8, !dbg !2571, !tbaa !675
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2571
  %55 = load i8*, i8** %54, align 8, !dbg !2571, !tbaa !675
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2571
  %57 = load i8*, i8** %56, align 8, !dbg !2571, !tbaa !675
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #26, !dbg !2571
  br label %147, !dbg !2572

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.83, i64 0, i64 0), i32 5) #26, !dbg !2573
  %61 = load i8*, i8** %4, align 8, !dbg !2573, !tbaa !675
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2573
  %63 = load i8*, i8** %62, align 8, !dbg !2573, !tbaa !675
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2573
  %65 = load i8*, i8** %64, align 8, !dbg !2573, !tbaa !675
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2573
  %67 = load i8*, i8** %66, align 8, !dbg !2573, !tbaa !675
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2573
  %69 = load i8*, i8** %68, align 8, !dbg !2573, !tbaa !675
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2573
  %71 = load i8*, i8** %70, align 8, !dbg !2573, !tbaa !675
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #26, !dbg !2573
  br label %147, !dbg !2574

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.84, i64 0, i64 0), i32 5) #26, !dbg !2575
  %75 = load i8*, i8** %4, align 8, !dbg !2575, !tbaa !675
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2575
  %77 = load i8*, i8** %76, align 8, !dbg !2575, !tbaa !675
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2575
  %79 = load i8*, i8** %78, align 8, !dbg !2575, !tbaa !675
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2575
  %81 = load i8*, i8** %80, align 8, !dbg !2575, !tbaa !675
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2575
  %83 = load i8*, i8** %82, align 8, !dbg !2575, !tbaa !675
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2575
  %85 = load i8*, i8** %84, align 8, !dbg !2575, !tbaa !675
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2575
  %87 = load i8*, i8** %86, align 8, !dbg !2575, !tbaa !675
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #26, !dbg !2575
  br label %147, !dbg !2576

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.85, i64 0, i64 0), i32 5) #26, !dbg !2577
  %91 = load i8*, i8** %4, align 8, !dbg !2577, !tbaa !675
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2577
  %93 = load i8*, i8** %92, align 8, !dbg !2577, !tbaa !675
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2577
  %95 = load i8*, i8** %94, align 8, !dbg !2577, !tbaa !675
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2577
  %97 = load i8*, i8** %96, align 8, !dbg !2577, !tbaa !675
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2577
  %99 = load i8*, i8** %98, align 8, !dbg !2577, !tbaa !675
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2577
  %101 = load i8*, i8** %100, align 8, !dbg !2577, !tbaa !675
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2577
  %103 = load i8*, i8** %102, align 8, !dbg !2577, !tbaa !675
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2577
  %105 = load i8*, i8** %104, align 8, !dbg !2577, !tbaa !675
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #26, !dbg !2577
  br label %147, !dbg !2578

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.86, i64 0, i64 0), i32 5) #26, !dbg !2579
  %109 = load i8*, i8** %4, align 8, !dbg !2579, !tbaa !675
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2579
  %111 = load i8*, i8** %110, align 8, !dbg !2579, !tbaa !675
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2579
  %113 = load i8*, i8** %112, align 8, !dbg !2579, !tbaa !675
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2579
  %115 = load i8*, i8** %114, align 8, !dbg !2579, !tbaa !675
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2579
  %117 = load i8*, i8** %116, align 8, !dbg !2579, !tbaa !675
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2579
  %119 = load i8*, i8** %118, align 8, !dbg !2579, !tbaa !675
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2579
  %121 = load i8*, i8** %120, align 8, !dbg !2579, !tbaa !675
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2579
  %123 = load i8*, i8** %122, align 8, !dbg !2579, !tbaa !675
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2579
  %125 = load i8*, i8** %124, align 8, !dbg !2579, !tbaa !675
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #26, !dbg !2579
  br label %147, !dbg !2580

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.87, i64 0, i64 0), i32 5) #26, !dbg !2581
  %129 = load i8*, i8** %4, align 8, !dbg !2581, !tbaa !675
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2581
  %131 = load i8*, i8** %130, align 8, !dbg !2581, !tbaa !675
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2581
  %133 = load i8*, i8** %132, align 8, !dbg !2581, !tbaa !675
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2581
  %135 = load i8*, i8** %134, align 8, !dbg !2581, !tbaa !675
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2581
  %137 = load i8*, i8** %136, align 8, !dbg !2581, !tbaa !675
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2581
  %139 = load i8*, i8** %138, align 8, !dbg !2581, !tbaa !675
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2581
  %141 = load i8*, i8** %140, align 8, !dbg !2581, !tbaa !675
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2581
  %143 = load i8*, i8** %142, align 8, !dbg !2581, !tbaa !675
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2581
  %145 = load i8*, i8** %144, align 8, !dbg !2581, !tbaa !675
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #26, !dbg !2581
  br label %147, !dbg !2582

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2583
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !2584 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2588, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i8* %1, metadata !2589, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i8* %2, metadata !2590, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i8* %3, metadata !2591, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i8** %4, metadata !2592, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i64 0, metadata !2593, metadata !DIExpression()), !dbg !2594
  br label %6, !dbg !2595

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2597
  call void @llvm.dbg.value(metadata i64 %7, metadata !2593, metadata !DIExpression()), !dbg !2594
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2598
  %9 = load i8*, i8** %8, align 8, !dbg !2598, !tbaa !675
  %10 = icmp eq i8* %9, null, !dbg !2600
  %11 = add i64 %7, 1, !dbg !2601
  call void @llvm.dbg.value(metadata i64 %11, metadata !2593, metadata !DIExpression()), !dbg !2594
  br i1 %10, label %12, label %6, !dbg !2600, !llvm.loop !2602

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2604
  ret void, !dbg !2605
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !2606 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2617, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8* %1, metadata !2618, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8* %2, metadata !2619, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8* %3, metadata !2620, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2621, metadata !DIExpression()), !dbg !2625
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2626
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #26, !dbg !2626
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2623, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i64 0, metadata !2622, metadata !DIExpression()), !dbg !2625
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !2622, metadata !DIExpression()), !dbg !2625
  %11 = load i32, i32* %8, align 8, !dbg !2628
  %12 = icmp ult i32 %11, 41, !dbg !2628
  br i1 %12, label %13, label %18, !dbg !2628

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2628
  %15 = zext i32 %11 to i64, !dbg !2628
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2628
  %17 = add nuw nsw i32 %11, 8, !dbg !2628
  store i32 %17, i32* %8, align 8, !dbg !2628
  br label %21, !dbg !2628

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2628
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2628
  store i8* %20, i8** %9, align 8, !dbg !2628
  br label %21, !dbg !2628

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2628
  %25 = load i8*, i8** %24, align 8, !dbg !2628
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2631
  store i8* %25, i8** %26, align 16, !dbg !2632, !tbaa !675
  %27 = icmp eq i8* %25, null, !dbg !2633
  br i1 %27, label %30, label %28, !dbg !2634

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2622, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i64 1, metadata !2622, metadata !DIExpression()), !dbg !2625
  %29 = icmp ult i32 %22, 41, !dbg !2628
  br i1 %29, label %35, label %32, !dbg !2628

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2635
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2636
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #26, !dbg !2637
  ret void, !dbg !2637

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2628
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2628
  store i8* %34, i8** %9, align 8, !dbg !2628
  br label %40, !dbg !2628

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2628
  %37 = zext i32 %22 to i64, !dbg !2628
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2628
  %39 = add nuw nsw i32 %22, 8, !dbg !2628
  store i32 %39, i32* %8, align 8, !dbg !2628
  br label %40, !dbg !2628

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2628
  %44 = load i8*, i8** %43, align 8, !dbg !2628
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2631
  store i8* %44, i8** %45, align 8, !dbg !2632, !tbaa !675
  %46 = icmp eq i8* %44, null, !dbg !2633
  br i1 %46, label %30, label %47, !dbg !2634

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2622, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i64 2, metadata !2622, metadata !DIExpression()), !dbg !2625
  %48 = icmp ult i32 %41, 41, !dbg !2628
  br i1 %48, label %52, label %49, !dbg !2628

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2628
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2628
  store i8* %51, i8** %9, align 8, !dbg !2628
  br label %57, !dbg !2628

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2628
  %54 = zext i32 %41 to i64, !dbg !2628
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2628
  %56 = add nuw nsw i32 %41, 8, !dbg !2628
  store i32 %56, i32* %8, align 8, !dbg !2628
  br label %57, !dbg !2628

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2628
  %61 = load i8*, i8** %60, align 8, !dbg !2628
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2631
  store i8* %61, i8** %62, align 16, !dbg !2632, !tbaa !675
  %63 = icmp eq i8* %61, null, !dbg !2633
  br i1 %63, label %30, label %64, !dbg !2634

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2622, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i64 3, metadata !2622, metadata !DIExpression()), !dbg !2625
  %65 = icmp ult i32 %58, 41, !dbg !2628
  br i1 %65, label %69, label %66, !dbg !2628

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2628
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2628
  store i8* %68, i8** %9, align 8, !dbg !2628
  br label %74, !dbg !2628

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2628
  %71 = zext i32 %58 to i64, !dbg !2628
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2628
  %73 = add nuw nsw i32 %58, 8, !dbg !2628
  store i32 %73, i32* %8, align 8, !dbg !2628
  br label %74, !dbg !2628

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2628
  %78 = load i8*, i8** %77, align 8, !dbg !2628
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2631
  store i8* %78, i8** %79, align 8, !dbg !2632, !tbaa !675
  %80 = icmp eq i8* %78, null, !dbg !2633
  br i1 %80, label %30, label %81, !dbg !2634

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2622, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i64 4, metadata !2622, metadata !DIExpression()), !dbg !2625
  %82 = icmp ult i32 %75, 41, !dbg !2628
  br i1 %82, label %86, label %83, !dbg !2628

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2628
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2628
  store i8* %85, i8** %9, align 8, !dbg !2628
  br label %91, !dbg !2628

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2628
  %88 = zext i32 %75 to i64, !dbg !2628
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2628
  %90 = add nuw nsw i32 %75, 8, !dbg !2628
  store i32 %90, i32* %8, align 8, !dbg !2628
  br label %91, !dbg !2628

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2628
  %95 = load i8*, i8** %94, align 8, !dbg !2628
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2631
  store i8* %95, i8** %96, align 16, !dbg !2632, !tbaa !675
  %97 = icmp eq i8* %95, null, !dbg !2633
  br i1 %97, label %30, label %98, !dbg !2634

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2622, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i64 5, metadata !2622, metadata !DIExpression()), !dbg !2625
  %99 = icmp ult i32 %92, 41, !dbg !2628
  br i1 %99, label %103, label %100, !dbg !2628

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2628
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2628
  store i8* %102, i8** %9, align 8, !dbg !2628
  br label %108, !dbg !2628

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2628
  %105 = zext i32 %92 to i64, !dbg !2628
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2628
  %107 = add nuw nsw i32 %92, 8, !dbg !2628
  store i32 %107, i32* %8, align 8, !dbg !2628
  br label %108, !dbg !2628

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2628
  %111 = load i8*, i8** %110, align 8, !dbg !2628
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2631
  store i8* %111, i8** %112, align 8, !dbg !2632, !tbaa !675
  %113 = icmp eq i8* %111, null, !dbg !2633
  br i1 %113, label %30, label %114, !dbg !2634

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2622, metadata !DIExpression()), !dbg !2625
  %115 = load i8*, i8** %9, align 8, !dbg !2628
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2628
  store i8* %116, i8** %9, align 8, !dbg !2628
  %117 = bitcast i8* %115 to i8**, !dbg !2628
  %118 = load i8*, i8** %117, align 8, !dbg !2628
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2631
  store i8* %118, i8** %119, align 16, !dbg !2632, !tbaa !675
  %120 = icmp eq i8* %118, null, !dbg !2633
  br i1 %120, label %30, label %121, !dbg !2634

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2622, metadata !DIExpression()), !dbg !2625
  %122 = load i8*, i8** %9, align 8, !dbg !2628
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2628
  store i8* %123, i8** %9, align 8, !dbg !2628
  %124 = bitcast i8* %122 to i8**, !dbg !2628
  %125 = load i8*, i8** %124, align 8, !dbg !2628
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2631
  store i8* %125, i8** %126, align 8, !dbg !2632, !tbaa !675
  %127 = icmp eq i8* %125, null, !dbg !2633
  br i1 %127, label %30, label %128, !dbg !2634

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2622, metadata !DIExpression()), !dbg !2625
  %129 = load i8*, i8** %9, align 8, !dbg !2628
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2628
  store i8* %130, i8** %9, align 8, !dbg !2628
  %131 = bitcast i8* %129 to i8**, !dbg !2628
  %132 = load i8*, i8** %131, align 8, !dbg !2628
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2631
  store i8* %132, i8** %133, align 16, !dbg !2632, !tbaa !675
  %134 = icmp eq i8* %132, null, !dbg !2633
  br i1 %134, label %30, label %135, !dbg !2634

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2622, metadata !DIExpression()), !dbg !2625
  %136 = load i8*, i8** %9, align 8, !dbg !2628
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2628
  store i8* %137, i8** %9, align 8, !dbg !2628
  %138 = bitcast i8* %136 to i8**, !dbg !2628
  %139 = load i8*, i8** %138, align 8, !dbg !2628
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2631
  store i8* %139, i8** %140, align 8, !dbg !2632, !tbaa !675
  %141 = icmp eq i8* %139, null, !dbg !2633
  %142 = select i1 %141, i64 9, i64 10, !dbg !2634
  br label %30, !dbg !2634
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !2638 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2642, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i8* %1, metadata !2643, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i8* %2, metadata !2644, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i8* %3, metadata !2645, metadata !DIExpression()), !dbg !2652
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2653
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #26, !dbg !2653
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2646, metadata !DIExpression()), !dbg !2654
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2655
  call void @llvm.va_start(i8* nonnull %6), !dbg !2655
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2656
  call void @llvm.va_end(i8* nonnull %6), !dbg !2657
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #26, !dbg !2658
  ret void, !dbg !2658
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #23

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !2659 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2660, !tbaa !675
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.75, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2660
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.90, i64 0, i64 0), i32 5) #26, !dbg !2661
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.91, i64 0, i64 0)) #26, !dbg !2661
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.92, i64 0, i64 0), i32 5) #26, !dbg !2662
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.93, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.94, i64 0, i64 0)) #26, !dbg !2662
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.95, i64 0, i64 0), i32 5) #26, !dbg !2663
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.96, i64 0, i64 0)) #26, !dbg !2663
  ret void, !dbg !2664
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #24 !dbg !2665 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2669, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i64 %1, metadata !2670, metadata !DIExpression()), !dbg !2671
  %3 = udiv i64 9223372036854775807, %1, !dbg !2672
  %4 = icmp ult i64 %3, %0, !dbg !2672
  br i1 %4, label %5, label %6, !dbg !2674

5:                                                ; preds = %2
  tail call void @xalloc_die() #28, !dbg !2675
  unreachable, !dbg !2675

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2676
  call void @llvm.dbg.value(metadata i64 %7, metadata !2677, metadata !DIExpression()) #26, !dbg !2683
  %8 = tail call noalias i8* @malloc(i64 %7) #26, !dbg !2685
  call void @llvm.dbg.value(metadata i8* %8, metadata !2682, metadata !DIExpression()) #26, !dbg !2683
  %9 = icmp eq i8* %8, null, !dbg !2686
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !2688
  br i1 %11, label %12, label %13, !dbg !2688

12:                                               ; preds = %6
  tail call void @xalloc_die() #28, !dbg !2689
  unreachable, !dbg !2689

13:                                               ; preds = %6
  ret i8* %8, !dbg !2690
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !2678 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2677, metadata !DIExpression()), !dbg !2691
  %2 = tail call noalias i8* @malloc(i64 %0) #26, !dbg !2692
  call void @llvm.dbg.value(metadata i8* %2, metadata !2682, metadata !DIExpression()), !dbg !2691
  %3 = icmp eq i8* %2, null, !dbg !2693
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2694
  br i1 %5, label %6, label %7, !dbg !2694

6:                                                ; preds = %1
  tail call void @xalloc_die() #28, !dbg !2695
  unreachable, !dbg !2695

7:                                                ; preds = %1
  ret i8* %2, !dbg !2696
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #24 !dbg !2697 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2701, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i64 %1, metadata !2702, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i64 %2, metadata !2703, metadata !DIExpression()), !dbg !2704
  %4 = udiv i64 9223372036854775807, %2, !dbg !2705
  %5 = icmp ult i64 %4, %1, !dbg !2705
  br i1 %5, label %6, label %7, !dbg !2707

6:                                                ; preds = %3
  tail call void @xalloc_die() #28, !dbg !2708
  unreachable, !dbg !2708

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2709
  call void @llvm.dbg.value(metadata i8* %0, metadata !2710, metadata !DIExpression()) #26, !dbg !2716
  call void @llvm.dbg.value(metadata i64 %8, metadata !2715, metadata !DIExpression()) #26, !dbg !2716
  %9 = icmp eq i64 %8, 0, !dbg !2718
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !2720
  br i1 %11, label %12, label %13, !dbg !2720

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #26, !dbg !2721
  br label %19, !dbg !2723

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #26, !dbg !2724
  call void @llvm.dbg.value(metadata i8* %14, metadata !2710, metadata !DIExpression()) #26, !dbg !2716
  %15 = icmp eq i8* %14, null, !dbg !2725
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !2727
  br i1 %17, label %18, label %19, !dbg !2727

18:                                               ; preds = %13
  tail call void @xalloc_die() #28, !dbg !2728
  unreachable, !dbg !2728

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2716
  ret i8* %20, !dbg !2729
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2711 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2710, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata i64 %1, metadata !2715, metadata !DIExpression()), !dbg !2730
  %3 = icmp eq i64 %1, 0, !dbg !2731
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !2732
  br i1 %5, label %6, label %7, !dbg !2732

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #26, !dbg !2733
  br label %13, !dbg !2734

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #26, !dbg !2735
  call void @llvm.dbg.value(metadata i8* %8, metadata !2710, metadata !DIExpression()), !dbg !2730
  %9 = icmp eq i8* %8, null, !dbg !2736
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !2737
  br i1 %11, label %12, label %13, !dbg !2737

12:                                               ; preds = %7
  tail call void @xalloc_die() #28, !dbg !2738
  unreachable, !dbg !2738

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2730
  ret i8* %14, !dbg !2739
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #24 !dbg !238 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !243, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i64* %1, metadata !244, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i64 %2, metadata !245, metadata !DIExpression()), !dbg !2740
  %4 = load i64, i64* %1, align 8, !dbg !2741, !tbaa !1953
  call void @llvm.dbg.value(metadata i64 %4, metadata !246, metadata !DIExpression()), !dbg !2740
  %5 = icmp eq i8* %0, null, !dbg !2742
  br i1 %5, label %6, label %20, !dbg !2744

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2745
  br i1 %7, label %8, label %13, !dbg !2748

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2749
  call void @llvm.dbg.value(metadata i64 %9, metadata !246, metadata !DIExpression()), !dbg !2740
  %10 = icmp ugt i64 %2, 128, !dbg !2751
  %11 = zext i1 %10 to i64, !dbg !2751
  %12 = add nuw nsw i64 %9, %11, !dbg !2752
  call void @llvm.dbg.value(metadata i64 %12, metadata !246, metadata !DIExpression()), !dbg !2740
  br label %13, !dbg !2753

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2740
  call void @llvm.dbg.value(metadata i64 %14, metadata !246, metadata !DIExpression()), !dbg !2740
  %15 = udiv i64 9223372036854775807, %2, !dbg !2754
  %16 = icmp ult i64 %15, %14, !dbg !2754
  br i1 %16, label %19, label %17, !dbg !2756

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !246, metadata !DIExpression()), !dbg !2740
  store i64 %14, i64* %1, align 8, !dbg !2757, !tbaa !1953
  %18 = mul i64 %14, %2, !dbg !2758
  call void @llvm.dbg.value(metadata i8* %0, metadata !2710, metadata !DIExpression()) #26, !dbg !2759
  call void @llvm.dbg.value(metadata i64 %28, metadata !2715, metadata !DIExpression()) #26, !dbg !2759
  br label %31, !dbg !2761

19:                                               ; preds = %13
  tail call void @xalloc_die() #28, !dbg !2762
  unreachable, !dbg !2762

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !2763
  %22 = icmp ugt i64 %21, %4, !dbg !2766
  br i1 %22, label %24, label %23, !dbg !2767

23:                                               ; preds = %20
  tail call void @xalloc_die() #28, !dbg !2768
  unreachable, !dbg !2768

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !2769
  %26 = add nuw i64 %4, 1, !dbg !2770
  %27 = add i64 %26, %25, !dbg !2771
  call void @llvm.dbg.value(metadata i64 %27, metadata !246, metadata !DIExpression()), !dbg !2740
  store i64 %27, i64* %1, align 8, !dbg !2757, !tbaa !1953
  %28 = mul i64 %27, %2, !dbg !2758
  call void @llvm.dbg.value(metadata i8* %0, metadata !2710, metadata !DIExpression()) #26, !dbg !2759
  call void @llvm.dbg.value(metadata i64 %28, metadata !2715, metadata !DIExpression()) #26, !dbg !2759
  %29 = icmp eq i64 %28, 0, !dbg !2772
  br i1 %29, label %30, label %31, !dbg !2761

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #26, !dbg !2773
  br label %38, !dbg !2774

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #26, !dbg !2775
  call void @llvm.dbg.value(metadata i8* %33, metadata !2710, metadata !DIExpression()) #26, !dbg !2759
  %34 = icmp eq i8* %33, null, !dbg !2776
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !2777
  br i1 %36, label %37, label %38, !dbg !2777

37:                                               ; preds = %31
  tail call void @xalloc_die() #28, !dbg !2778
  unreachable, !dbg !2778

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !2759
  ret i8* %39, !dbg !2779
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #24 !dbg !2780 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2782, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i64 %0, metadata !2677, metadata !DIExpression()) #26, !dbg !2784
  %2 = tail call noalias i8* @malloc(i64 %0) #26, !dbg !2786
  call void @llvm.dbg.value(metadata i8* %2, metadata !2682, metadata !DIExpression()) #26, !dbg !2784
  %3 = icmp eq i8* %2, null, !dbg !2787
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2788
  br i1 %5, label %6, label %7, !dbg !2788

6:                                                ; preds = %1
  tail call void @xalloc_die() #28, !dbg !2789
  unreachable, !dbg !2789

7:                                                ; preds = %1
  ret i8* %2, !dbg !2790
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !2791 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2795, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i64* %1, metadata !2796, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i8* %0, metadata !243, metadata !DIExpression()) #26, !dbg !2798
  call void @llvm.dbg.value(metadata i64* %1, metadata !244, metadata !DIExpression()) #26, !dbg !2798
  call void @llvm.dbg.value(metadata i64 1, metadata !245, metadata !DIExpression()) #26, !dbg !2798
  %3 = load i64, i64* %1, align 8, !dbg !2800, !tbaa !1953
  call void @llvm.dbg.value(metadata i64 %3, metadata !246, metadata !DIExpression()) #26, !dbg !2798
  %4 = icmp eq i8* %0, null, !dbg !2801
  br i1 %4, label %5, label %10, !dbg !2802

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2803
  br i1 %6, label %17, label %7, !dbg !2804

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !246, metadata !DIExpression()) #26, !dbg !2798
  %8 = icmp slt i64 %3, 0, !dbg !2805
  br i1 %8, label %9, label %17, !dbg !2806

9:                                                ; preds = %7
  tail call void @xalloc_die() #28, !dbg !2807
  unreachable, !dbg !2807

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !2808
  br i1 %11, label %13, label %12, !dbg !2809

12:                                               ; preds = %10
  tail call void @xalloc_die() #28, !dbg !2810
  unreachable, !dbg !2810

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !2811
  %15 = add nuw nsw i64 %3, 1, !dbg !2812
  %16 = add nuw nsw i64 %15, %14, !dbg !2813
  call void @llvm.dbg.value(metadata i64 %16, metadata !246, metadata !DIExpression()) #26, !dbg !2798
  call void @llvm.dbg.value(metadata i8* %0, metadata !2710, metadata !DIExpression()) #26, !dbg !2814
  call void @llvm.dbg.value(metadata i64 %16, metadata !2715, metadata !DIExpression()) #26, !dbg !2814
  br label %17, !dbg !2816

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !2817
  store i64 %18, i64* %1, align 8, !dbg !2817, !tbaa !1953
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #26, !dbg !2818
  call void @llvm.dbg.value(metadata i8* %19, metadata !2710, metadata !DIExpression()) #26, !dbg !2814
  %20 = icmp eq i8* %19, null, !dbg !2819
  br i1 %20, label %21, label %22, !dbg !2820

21:                                               ; preds = %17
  tail call void @xalloc_die() #28, !dbg !2821
  unreachable, !dbg !2821

22:                                               ; preds = %17
  ret i8* %19, !dbg !2822
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !2823 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2825, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i64 %0, metadata !2827, metadata !DIExpression()) #26, !dbg !2832
  call void @llvm.dbg.value(metadata i64 1, metadata !2830, metadata !DIExpression()) #26, !dbg !2832
  %2 = icmp slt i64 %0, 0, !dbg !2834
  br i1 %2, label %6, label %3, !dbg !2836

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #26, !dbg !2837
  call void @llvm.dbg.value(metadata i8* %4, metadata !2831, metadata !DIExpression()) #26, !dbg !2832
  %5 = icmp eq i8* %4, null, !dbg !2838
  br i1 %5, label %6, label %7, !dbg !2839

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #28, !dbg !2840
  unreachable, !dbg !2840

7:                                                ; preds = %3
  ret i8* %4, !dbg !2841
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !2828 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2827, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i64 %1, metadata !2830, metadata !DIExpression()), !dbg !2842
  %3 = udiv i64 9223372036854775807, %1, !dbg !2843
  %4 = icmp ult i64 %3, %0, !dbg !2843
  br i1 %4, label %8, label %5, !dbg !2844

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #26, !dbg !2845
  call void @llvm.dbg.value(metadata i8* %6, metadata !2831, metadata !DIExpression()), !dbg !2842
  %7 = icmp eq i8* %6, null, !dbg !2846
  br i1 %7, label %8, label %9, !dbg !2847

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #28, !dbg !2848
  unreachable, !dbg !2848

9:                                                ; preds = %5
  ret i8* %6, !dbg !2849
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2850 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2854, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i64 %1, metadata !2855, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i64 %1, metadata !2677, metadata !DIExpression()) #26, !dbg !2857
  %3 = tail call noalias i8* @malloc(i64 %1) #26, !dbg !2859
  call void @llvm.dbg.value(metadata i8* %3, metadata !2682, metadata !DIExpression()) #26, !dbg !2857
  %4 = icmp eq i8* %3, null, !dbg !2860
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !2861
  br i1 %6, label %7, label %8, !dbg !2861

7:                                                ; preds = %2
  tail call void @xalloc_die() #28, !dbg !2862
  unreachable, !dbg !2862

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2863, metadata !DIExpression()) #26, !dbg !2868
  call void @llvm.dbg.value(metadata i8* %0, metadata !2866, metadata !DIExpression()) #26, !dbg !2868
  call void @llvm.dbg.value(metadata i64 %1, metadata !2867, metadata !DIExpression()) #26, !dbg !2868
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #26, !dbg !2870
  ret i8* %3, !dbg !2871
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !2872 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2874, metadata !DIExpression()), !dbg !2875
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #27, !dbg !2876
  %3 = add i64 %2, 1, !dbg !2877
  call void @llvm.dbg.value(metadata i8* %0, metadata !2854, metadata !DIExpression()) #26, !dbg !2878
  call void @llvm.dbg.value(metadata i64 %3, metadata !2855, metadata !DIExpression()) #26, !dbg !2878
  call void @llvm.dbg.value(metadata i64 %3, metadata !2677, metadata !DIExpression()) #26, !dbg !2880
  %4 = tail call noalias i8* @malloc(i64 %3) #26, !dbg !2882
  call void @llvm.dbg.value(metadata i8* %4, metadata !2682, metadata !DIExpression()) #26, !dbg !2880
  %5 = icmp eq i8* %4, null, !dbg !2883
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !2884
  br i1 %7, label %8, label %9, !dbg !2884

8:                                                ; preds = %1
  tail call void @xalloc_die() #28, !dbg !2885
  unreachable, !dbg !2885

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !2863, metadata !DIExpression()) #26, !dbg !2886
  call void @llvm.dbg.value(metadata i8* %0, metadata !2866, metadata !DIExpression()) #26, !dbg !2886
  call void @llvm.dbg.value(metadata i64 %3, metadata !2867, metadata !DIExpression()) #26, !dbg !2886
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #26, !dbg !2888
  ret i8* %4, !dbg !2889
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !2890 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !2891, !tbaa !768
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.107, i64 0, i64 0), i32 5) #26, !dbg !2892
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i64 0, i64 0), i8* %2) #26, !dbg !2893
  tail call void @abort() #28, !dbg !2894
  unreachable, !dbg !2894
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #25 !dbg !2895 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2897, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i64 %1, metadata !2898, metadata !DIExpression()), !dbg !2903
  %3 = icmp eq i64 %0, 0, !dbg !2904
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !2905
  br i1 %5, label %11, label %6, !dbg !2905

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !2900, metadata !DIExpression()), !dbg !2906
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !2907
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !2907
  br i1 %8, label %9, label %11, !dbg !2909

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #30, !dbg !2910
  store i32 12, i32* %10, align 4, !dbg !2912, !tbaa !768
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !2897, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i64 %12, metadata !2898, metadata !DIExpression()), !dbg !2903
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #26, !dbg !2913
  call void @llvm.dbg.value(metadata i8* %14, metadata !2899, metadata !DIExpression()), !dbg !2903
  br label %15, !dbg !2914

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !2903
  ret i8* %16, !dbg !2915
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #14

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !2916 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !2932, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8* %1, metadata !2933, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i64 %2, metadata !2934, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !2935, metadata !DIExpression()), !dbg !2941
  %6 = bitcast i32* %5 to i8*, !dbg !2942
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #26, !dbg !2942
  %7 = icmp eq i32* %0, null, !dbg !2943
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !2945
  call void @llvm.dbg.value(metadata i32* %8, metadata !2932, metadata !DIExpression()), !dbg !2941
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #26, !dbg !2946
  call void @llvm.dbg.value(metadata i64 %9, metadata !2936, metadata !DIExpression()), !dbg !2941
  %10 = icmp ugt i64 %9, -3, !dbg !2947
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !2948
  br i1 %12, label %13, label %18, !dbg !2948

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #26, !dbg !2949
  br i1 %14, label %18, label %15, !dbg !2950

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !2951, !tbaa !798
  call void @llvm.dbg.value(metadata i8 %16, metadata !2938, metadata !DIExpression()), !dbg !2952
  %17 = zext i8 %16 to i32, !dbg !2953
  store i32 %17, i32* %8, align 4, !dbg !2954, !tbaa !768
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !2941
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #26, !dbg !2955
  ret i64 %19, !dbg !2955
}

; Function Attrs: nounwind
declare !dbg !2956 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !2960 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2998, metadata !DIExpression()), !dbg !3003
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #26, !dbg !3004
  call void @llvm.dbg.value(metadata i1 undef, metadata !2999, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3003
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3005, metadata !DIExpression()), !dbg !3008
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3010
  %4 = load i32, i32* %3, align 8, !dbg !3010, !tbaa !3011
  %5 = and i32 %4, 32, !dbg !3012
  %6 = icmp eq i32 %5, 0, !dbg !3012
  call void @llvm.dbg.value(metadata i1 %6, metadata !3001, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3003
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #26, !dbg !3013
  %8 = icmp eq i32 %7, 0, !dbg !3014
  call void @llvm.dbg.value(metadata i1 %8, metadata !3002, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3003
  br i1 %6, label %9, label %19, !dbg !3015

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3017
  call void @llvm.dbg.value(metadata i1 %10, metadata !2999, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3003
  %11 = or i1 %10, %8, !dbg !3018
  %12 = xor i1 %8, true, !dbg !3018
  %13 = sext i1 %12 to i32, !dbg !3018
  br i1 %11, label %22, label %14, !dbg !3018

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #30, !dbg !3019
  %16 = load i32, i32* %15, align 4, !dbg !3019, !tbaa !768
  %17 = icmp ne i32 %16, 9, !dbg !3020
  %18 = sext i1 %17 to i32, !dbg !3021
  br label %22, !dbg !3021

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3022

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #30, !dbg !3024
  store i32 0, i32* %21, align 4, !dbg !3026, !tbaa !768
  br label %22, !dbg !3024

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3003
  ret i32 %23, !dbg !3027
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3028 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3032, metadata !DIExpression()), !dbg !3037
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3038
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #26, !dbg !3038
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3033, metadata !DIExpression()), !dbg !3039
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #26, !dbg !3040
  %5 = icmp eq i32 %4, 0, !dbg !3040
  br i1 %5, label %6, label %13, !dbg !3042

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3043
  %8 = load i16, i16* %7, align 16, !dbg !3043
  %9 = icmp eq i16 %8, 67, !dbg !3043
  br i1 %9, label %13, label %10, !dbg !3044

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.117, i64 0, i64 0), i64 6), !dbg !3045
  %12 = icmp ne i32 %11, 0, !dbg !3046
  br label %13, !dbg !3044

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3037
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #26, !dbg !3047
  ret i1 %14, !dbg !3047
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3048 {
  %1 = tail call i8* @nl_langinfo(i32 14) #26, !dbg !3053
  call void @llvm.dbg.value(metadata i8* %1, metadata !3052, metadata !DIExpression()), !dbg !3054
  %2 = icmp eq i8* %1, null, !dbg !3055
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i64 0, i64 0), i8* %1, !dbg !3057
  call void @llvm.dbg.value(metadata i8* %3, metadata !3052, metadata !DIExpression()), !dbg !3054
  %4 = load i8, i8* %3, align 1, !dbg !3058, !tbaa !798
  %5 = icmp eq i8 %4, 0, !dbg !3062
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.121, i64 0, i64 0), i8* %3, !dbg !3063
  call void @llvm.dbg.value(metadata i8* %6, metadata !3052, metadata !DIExpression()), !dbg !3054
  ret i8* %6, !dbg !3064
}

; Function Attrs: nounwind
declare !dbg !3065 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3068 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3072, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i8* %1, metadata !3073, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i64 %2, metadata !3074, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 %0, metadata !3076, metadata !DIExpression()) #26, !dbg !3085
  call void @llvm.dbg.value(metadata i8* %1, metadata !3079, metadata !DIExpression()) #26, !dbg !3085
  call void @llvm.dbg.value(metadata i64 %2, metadata !3080, metadata !DIExpression()) #26, !dbg !3085
  call void @llvm.dbg.value(metadata i32 %0, metadata !3087, metadata !DIExpression()) #26, !dbg !3093
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #26, !dbg !3095
  call void @llvm.dbg.value(metadata i8* %4, metadata !3092, metadata !DIExpression()) #26, !dbg !3093
  call void @llvm.dbg.value(metadata i8* %4, metadata !3081, metadata !DIExpression()) #26, !dbg !3085
  %5 = icmp eq i8* %4, null, !dbg !3096
  br i1 %5, label %6, label %9, !dbg !3097

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3098
  br i1 %7, label %19, label %8, !dbg !3101

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3102, !tbaa !798
  br label %19, !dbg !3103

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #27, !dbg !3104
  call void @llvm.dbg.value(metadata i64 %10, metadata !3082, metadata !DIExpression()) #26, !dbg !3105
  %11 = icmp ult i64 %10, %2, !dbg !3106
  br i1 %11, label %12, label %14, !dbg !3108

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3109
  call void @llvm.dbg.value(metadata i8* %1, metadata !3111, metadata !DIExpression()) #26, !dbg !3116
  call void @llvm.dbg.value(metadata i8* %4, metadata !3114, metadata !DIExpression()) #26, !dbg !3116
  call void @llvm.dbg.value(metadata i64 %13, metadata !3115, metadata !DIExpression()) #26, !dbg !3116
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #26, !dbg !3118
  br label %19, !dbg !3119

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3120
  br i1 %15, label %19, label %16, !dbg !3123

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3124
  call void @llvm.dbg.value(metadata i8* %1, metadata !3111, metadata !DIExpression()) #26, !dbg !3126
  call void @llvm.dbg.value(metadata i8* %4, metadata !3114, metadata !DIExpression()) #26, !dbg !3126
  call void @llvm.dbg.value(metadata i64 %17, metadata !3115, metadata !DIExpression()) #26, !dbg !3126
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #26, !dbg !3128
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3129
  store i8 0, i8* %18, align 1, !dbg !3130, !tbaa !798
  br label %19, !dbg !3131

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3132
  ret i32 %20, !dbg !3133
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3134 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3136, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata i32 %0, metadata !3087, metadata !DIExpression()) #26, !dbg !3138
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #26, !dbg !3140
  call void @llvm.dbg.value(metadata i8* %2, metadata !3092, metadata !DIExpression()) #26, !dbg !3138
  ret i8* %2, !dbg !3141
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3142 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3180, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata i32 0, metadata !3181, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata i32 0, metadata !3183, metadata !DIExpression()), !dbg !3184
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #26, !dbg !3185
  call void @llvm.dbg.value(metadata i32 %2, metadata !3182, metadata !DIExpression()), !dbg !3184
  %3 = icmp slt i32 %2, 0, !dbg !3186
  br i1 %3, label %4, label %6, !dbg !3188

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3189
  br label %24, !dbg !3190

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #26, !dbg !3191
  %8 = icmp eq i32 %7, 0, !dbg !3191
  br i1 %8, label %13, label %9, !dbg !3193

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #26, !dbg !3194
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #26, !dbg !3195
  %12 = icmp eq i64 %11, -1, !dbg !3196
  br i1 %12, label %16, label %13, !dbg !3197

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #26, !dbg !3198
  %15 = icmp eq i32 %14, 0, !dbg !3198
  br i1 %15, label %16, label %18, !dbg !3199

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3181, metadata !DIExpression()), !dbg !3184
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3200
  call void @llvm.dbg.value(metadata i32 %21, metadata !3183, metadata !DIExpression()), !dbg !3184
  br label %24, !dbg !3201

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #30, !dbg !3202
  %20 = load i32, i32* %19, align 4, !dbg !3202, !tbaa !768
  call void @llvm.dbg.value(metadata i32 %20, metadata !3181, metadata !DIExpression()), !dbg !3184
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3200
  call void @llvm.dbg.value(metadata i32 %21, metadata !3183, metadata !DIExpression()), !dbg !3184
  %22 = icmp eq i32 %20, 0, !dbg !3203
  br i1 %22, label %24, label %23, !dbg !3201

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3205, !tbaa !768
  call void @llvm.dbg.value(metadata i32 -1, metadata !3183, metadata !DIExpression()), !dbg !3184
  br label %24, !dbg !3207

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3184
  ret i32 %25, !dbg !3208
}

; Function Attrs: nofree nounwind
declare !dbg !3209 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3212 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3213 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3217 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3255, metadata !DIExpression()), !dbg !3256
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3257
  br i1 %2, label %6, label %3, !dbg !3259

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #26, !dbg !3260
  %5 = icmp eq i32 %4, 0, !dbg !3260
  br i1 %5, label %6, label %8, !dbg !3261

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3262
  br label %17, !dbg !3263

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3264, metadata !DIExpression()) #26, !dbg !3269
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3271
  %10 = load i32, i32* %9, align 8, !dbg !3271, !tbaa !3011
  %11 = and i32 %10, 256, !dbg !3273
  %12 = icmp eq i32 %11, 0, !dbg !3273
  br i1 %12, label %15, label %13, !dbg !3274

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #26, !dbg !3275
  br label %15, !dbg !3275

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3276
  br label %17, !dbg !3277

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3256
  ret i32 %18, !dbg !3278
}

; Function Attrs: nofree nounwind
declare !dbg !3279 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3282 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3321, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i64 %1, metadata !3322, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i32 %2, metadata !3323, metadata !DIExpression()), !dbg !3327
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3328
  %5 = load i8*, i8** %4, align 8, !dbg !3328, !tbaa !3329
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3330
  %7 = load i8*, i8** %6, align 8, !dbg !3330, !tbaa !3331
  %8 = icmp eq i8* %5, %7, !dbg !3332
  br i1 %8, label %9, label %28, !dbg !3333

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3334
  %11 = load i8*, i8** %10, align 8, !dbg !3334, !tbaa !792
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3335
  %13 = load i8*, i8** %12, align 8, !dbg !3335, !tbaa !3336
  %14 = icmp eq i8* %11, %13, !dbg !3337
  br i1 %14, label %15, label %28, !dbg !3338

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3339
  %17 = load i8*, i8** %16, align 8, !dbg !3339, !tbaa !3340
  %18 = icmp eq i8* %17, null, !dbg !3341
  br i1 %18, label %19, label %28, !dbg !3342

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #26, !dbg !3343
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #26, !dbg !3344
  call void @llvm.dbg.value(metadata i64 %21, metadata !3324, metadata !DIExpression()), !dbg !3345
  %22 = icmp eq i64 %21, -1, !dbg !3346
  br i1 %22, label %30, label %23, !dbg !3348

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3349
  %25 = load i32, i32* %24, align 8, !dbg !3350, !tbaa !3011
  %26 = and i32 %25, -17, !dbg !3350
  store i32 %26, i32* %24, align 8, !dbg !3350, !tbaa !3011
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3351
  store i64 %21, i64* %27, align 8, !dbg !3352, !tbaa !3353
  br label %30, !dbg !3354

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3355
  br label %30, !dbg !3356

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3327
  ret i32 %31, !dbg !3357
}

; Function Attrs: nofree nounwind
declare !dbg !3358 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

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
attributes #12 = { nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nofree nounwind }
attributes #17 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { argmemonly nofree nounwind readonly willreturn }
attributes #19 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #22 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #23 = { nofree nosync nounwind willreturn }
attributes #24 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #25 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #26 = { nounwind }
attributes #27 = { nounwind readonly willreturn }
attributes #28 = { noreturn nounwind }
attributes #29 = { noreturn }
attributes #30 = { nounwind readnone willreturn }
attributes #31 = { cold }

!llvm.dbg.cu = !{!2, !109, !114, !221, !223, !121, !127, !133, !226, !215, !233, !250, !252, !254, !257, !259, !261, !650, !652, !654, !656}
!llvm.ident = !{!658, !658, !658, !658, !658, !658, !658, !658, !658, !658, !658, !658, !658, !658, !658, !658, !658, !658, !658, !658, !658}
!llvm.module.flags = !{!659, !660, !661, !662, !663}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 35, type: !95, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !15, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/dirname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{}
!5 = !{!6, !8, !9, !12, !14}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !10, line: 46, baseType: !11)
!10 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!11 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!14 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!15 = !{!16, !0}
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "dot", scope: !18, file: !3, line: 80, type: !13, isLocal: true, isDefinition: true)
!18 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 78, type: !19, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !23)
!19 = !DISubroutineType(types: !20)
!20 = !{!21, !21, !22}
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!23 = !{!24, !25, !26, !28, !29, !30, !32, !37, !94}
!24 = !DILocalVariable(name: "argc", arg: 1, scope: !18, file: !3, line: 78, type: !21)
!25 = !DILocalVariable(name: "argv", arg: 2, scope: !18, file: !3, line: 78, type: !22)
!26 = !DILocalVariable(name: "use_nuls", scope: !18, file: !3, line: 81, type: !27)
!27 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!28 = !DILocalVariable(name: "result", scope: !18, file: !3, line: 82, type: !12)
!29 = !DILocalVariable(name: "len", scope: !18, file: !3, line: 83, type: !9)
!30 = !DILocalVariable(name: "c", scope: !31, file: !3, line: 95, type: !21)
!31 = distinct !DILexicalBlock(scope: !18, file: !3, line: 94, column: 5)
!32 = !DILocalVariable(name: "__ptr", scope: !33, file: !3, line: 131, type: !12)
!33 = distinct !DILexicalBlock(scope: !34, file: !3, line: 131, column: 7)
!34 = distinct !DILexicalBlock(scope: !35, file: !3, line: 121, column: 5)
!35 = distinct !DILexicalBlock(scope: !36, file: !3, line: 120, column: 3)
!36 = distinct !DILexicalBlock(scope: !18, file: !3, line: 120, column: 3)
!37 = !DILocalVariable(name: "__stream", scope: !33, file: !3, line: 131, type: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !40, line: 7, baseType: !41)
!40 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !42, line: 49, size: 1728, elements: !43)
!42 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!43 = !{!44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !59, !61, !62, !63, !67, !69, !71, !75, !78, !80, !83, !86, !87, !88, !89, !90}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !41, file: !42, line: 51, baseType: !21, size: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !41, file: !42, line: 54, baseType: !6, size: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !41, file: !42, line: 55, baseType: !6, size: 64, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !41, file: !42, line: 56, baseType: !6, size: 64, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !41, file: !42, line: 57, baseType: !6, size: 64, offset: 256)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !41, file: !42, line: 58, baseType: !6, size: 64, offset: 320)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !41, file: !42, line: 59, baseType: !6, size: 64, offset: 384)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !41, file: !42, line: 60, baseType: !6, size: 64, offset: 448)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !41, file: !42, line: 61, baseType: !6, size: 64, offset: 512)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !41, file: !42, line: 64, baseType: !6, size: 64, offset: 576)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !41, file: !42, line: 65, baseType: !6, size: 64, offset: 640)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !41, file: !42, line: 66, baseType: !6, size: 64, offset: 704)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !41, file: !42, line: 68, baseType: !57, size: 64, offset: 768)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !42, line: 36, flags: DIFlagFwdDecl)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !41, file: !42, line: 70, baseType: !60, size: 64, offset: 832)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !41, file: !42, line: 72, baseType: !21, size: 32, offset: 896)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !41, file: !42, line: 73, baseType: !21, size: 32, offset: 928)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !41, file: !42, line: 74, baseType: !64, size: 64, offset: 960)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !65, line: 152, baseType: !66)
!65 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!66 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !41, file: !42, line: 77, baseType: !68, size: 16, offset: 1024)
!68 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !41, file: !42, line: 78, baseType: !70, size: 8, offset: 1040)
!70 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !41, file: !42, line: 79, baseType: !72, size: 8, offset: 1048)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 1)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !41, file: !42, line: 81, baseType: !76, size: 64, offset: 1088)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !42, line: 43, baseType: null)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !41, file: !42, line: 89, baseType: !79, size: 64, offset: 1152)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !65, line: 153, baseType: !66)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !41, file: !42, line: 91, baseType: !81, size: 64, offset: 1216)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !42, line: 37, flags: DIFlagFwdDecl)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !41, file: !42, line: 92, baseType: !84, size: 64, offset: 1280)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !42, line: 38, flags: DIFlagFwdDecl)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !41, file: !42, line: 93, baseType: !60, size: 64, offset: 1344)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !41, file: !42, line: 94, baseType: !8, size: 64, offset: 1408)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !41, file: !42, line: 95, baseType: !9, size: 64, offset: 1472)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !41, file: !42, line: 96, baseType: !21, size: 32, offset: 1536)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !41, file: !42, line: 98, baseType: !91, size: 160, offset: 1568)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 20)
!94 = !DILocalVariable(name: "__cnt", scope: !33, file: !3, line: 131, type: !9)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 1024, elements: !105)
!96 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !98, line: 50, size: 256, elements: !99)
!98 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!99 = !{!100, !101, !102, !104}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !97, file: !98, line: 52, baseType: !12, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !97, file: !98, line: 55, baseType: !21, size: 32, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !97, file: !98, line: 56, baseType: !103, size: 64, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !97, file: !98, line: 57, baseType: !21, size: 32, offset: 192)
!105 = !{!106}
!106 = !DISubrange(count: 4)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "Version", scope: !109, file: !110, line: 2, type: !12, isLocal: false, isDefinition: true)
!109 = distinct !DICompileUnit(language: DW_LANG_C99, file: !110, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !111, splitDebugInlining: false, nameTableKind: None)
!110 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!111 = !{!107}
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "file_name", scope: !114, file: !115, line: 46, type: !12, isLocal: true, isDefinition: true)
!114 = distinct !DICompileUnit(language: DW_LANG_C99, file: !115, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !116, splitDebugInlining: false, nameTableKind: None)
!115 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!116 = !{!112, !117}
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !114, file: !115, line: 56, type: !27, isLocal: true, isDefinition: true)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "exit_failure", scope: !121, file: !122, line: 24, type: !124, isLocal: false, isDefinition: true)
!121 = distinct !DICompileUnit(language: DW_LANG_C99, file: !122, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !123, splitDebugInlining: false, nameTableKind: None)
!122 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!123 = !{!119}
!124 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !21)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(name: "program_name", scope: !127, file: !128, line: 33, type: !12, isLocal: false, isDefinition: true)
!127 = distinct !DICompileUnit(language: DW_LANG_C99, file: !128, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !129, globals: !130, splitDebugInlining: false, nameTableKind: None)
!128 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!129 = !{!8, !6}
!130 = !{!125}
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !133, file: !134, line: 85, type: !209, isLocal: false, isDefinition: true)
!133 = distinct !DICompileUnit(language: DW_LANG_C99, file: !134, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !135, retainedTypes: !171, globals: !172, splitDebugInlining: false, nameTableKind: None)
!134 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!135 = !{!136, !151, !156}
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !137, line: 32, baseType: !138, size: 32, elements: !139)
!137 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!138 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!139 = !{!140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150}
!140 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!141 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!142 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!143 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!144 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!145 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!146 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!147 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!148 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!149 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!150 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !137, line: 242, baseType: !138, size: 32, elements: !152)
!152 = !{!153, !154, !155}
!153 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!154 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!155 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !157, line: 46, baseType: !138, size: 32, elements: !158)
!157 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!158 = !{!159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170}
!159 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!160 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!161 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!162 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!163 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!164 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!165 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!166 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!167 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!168 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!169 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!170 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!171 = !{!21, !68, !9, !6}
!172 = !{!131, !173, !179, !191, !193, !198, !205, !207}
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !133, file: !134, line: 101, type: !175, isLocal: false, isDefinition: true)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 320, elements: !177)
!176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!177 = !{!178}
!178 = !DISubrange(count: 10)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !133, file: !134, line: 1052, type: !181, isLocal: false, isDefinition: true)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !134, line: 65, size: 448, elements: !182)
!182 = !{!183, !184, !185, !189, !190}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !181, file: !134, line: 68, baseType: !136, size: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !181, file: !134, line: 71, baseType: !21, size: 32, offset: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !181, file: !134, line: 75, baseType: !186, size: 256, offset: 64)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 256, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 8)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !181, file: !134, line: 78, baseType: !12, size: 64, offset: 320)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !181, file: !134, line: 81, baseType: !12, size: 64, offset: 384)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !133, file: !134, line: 116, type: !181, isLocal: true, isDefinition: true)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "slot0", scope: !133, file: !134, line: 842, type: !195, isLocal: true, isDefinition: true)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 256)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "slotvec", scope: !133, file: !134, line: 845, type: !200, isLocal: true, isDefinition: true)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !134, line: 834, size: 128, elements: !202)
!202 = !{!203, !204}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !201, file: !134, line: 836, baseType: !9, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !201, file: !134, line: 837, baseType: !6, size: 64, offset: 64)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "nslots", scope: !133, file: !134, line: 843, type: !21, isLocal: true, isDefinition: true)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(name: "slotvec0", scope: !133, file: !134, line: 844, type: !201, isLocal: true, isDefinition: true)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 704, elements: !211)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!211 = !{!212}
!212 = !DISubrange(count: 11)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !215, file: !216, line: 26, type: !218, isLocal: false, isDefinition: true)
!215 = distinct !DICompileUnit(language: DW_LANG_C99, file: !216, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !217, splitDebugInlining: false, nameTableKind: None)
!216 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!217 = !{!213}
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 376, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 47)
!221 = distinct !DICompileUnit(language: DW_LANG_C99, file: !222, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!222 = !DIFile(filename: "lib/dirname-lgpl.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!223 = distinct !DICompileUnit(language: DW_LANG_C99, file: !224, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !225, splitDebugInlining: false, nameTableKind: None)
!224 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!225 = !{!6}
!226 = distinct !DICompileUnit(language: DW_LANG_C99, file: !227, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !228, retainedTypes: !232, splitDebugInlining: false, nameTableKind: None)
!227 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!228 = !{!229}
!229 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !227, line: 40, baseType: !138, size: 32, elements: !230)
!230 = !{!231}
!231 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!232 = !{!8}
!233 = distinct !DICompileUnit(language: DW_LANG_C99, file: !234, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !235, retainedTypes: !249, splitDebugInlining: false, nameTableKind: None)
!234 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!235 = !{!236}
!236 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !238, file: !237, line: 186, baseType: !138, size: 32, elements: !247)
!237 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!238 = distinct !DISubprogram(name: "x2nrealloc", scope: !237, file: !237, line: 174, type: !239, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !242)
!239 = !DISubroutineType(types: !240)
!240 = !{!8, !8, !241, !9}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!242 = !{!243, !244, !245, !246}
!243 = !DILocalVariable(name: "p", arg: 1, scope: !238, file: !237, line: 174, type: !8)
!244 = !DILocalVariable(name: "pn", arg: 2, scope: !238, file: !237, line: 174, type: !241)
!245 = !DILocalVariable(name: "s", arg: 3, scope: !238, file: !237, line: 174, type: !9)
!246 = !DILocalVariable(name: "n", scope: !238, file: !237, line: 176, type: !9)
!247 = !{!248}
!248 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!249 = !{!9, !6, !8}
!250 = distinct !DICompileUnit(language: DW_LANG_C99, file: !251, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!251 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!252 = distinct !DICompileUnit(language: DW_LANG_C99, file: !253, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !232, splitDebugInlining: false, nameTableKind: None)
!253 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!254 = distinct !DICompileUnit(language: DW_LANG_C99, file: !255, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !256, splitDebugInlining: false, nameTableKind: None)
!255 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!256 = !{!9}
!257 = distinct !DICompileUnit(language: DW_LANG_C99, file: !258, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!258 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!259 = distinct !DICompileUnit(language: DW_LANG_C99, file: !260, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!260 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!261 = distinct !DICompileUnit(language: DW_LANG_C99, file: !262, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !263, retainedTypes: !232, splitDebugInlining: false, nameTableKind: None)
!262 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!263 = !{!264}
!264 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !265, line: 41, baseType: !138, size: 32, elements: !266)
!265 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!266 = !{!267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649}
!267 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!268 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!269 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!270 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!271 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!272 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!273 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!274 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!275 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!276 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!277 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!278 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!279 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!280 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!281 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!282 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!283 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!284 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!285 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!286 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!287 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!288 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!289 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!290 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!291 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!292 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!293 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!294 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!295 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!296 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!297 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!298 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!299 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!300 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!301 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!302 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!303 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!304 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!305 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!306 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!307 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!308 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!309 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!310 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!311 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!312 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!313 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!314 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!315 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!316 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!375 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!378 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!379 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!380 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!381 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!382 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!383 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!384 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!385 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!386 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!387 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!388 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!389 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!462 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!535 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!536 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!537 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!538 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!539 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!540 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!541 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!542 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!543 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!544 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!545 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!546 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!547 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!548 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!549 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!551 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!552 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!553 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!554 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!555 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!556 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!582 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!583 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!584 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!585 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!586 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!591 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!592 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!593 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!594 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!650 = distinct !DICompileUnit(language: DW_LANG_C99, file: !651, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !232, splitDebugInlining: false, nameTableKind: None)
!651 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!652 = distinct !DICompileUnit(language: DW_LANG_C99, file: !653, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!653 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!654 = distinct !DICompileUnit(language: DW_LANG_C99, file: !655, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !232, splitDebugInlining: false, nameTableKind: None)
!655 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!656 = distinct !DICompileUnit(language: DW_LANG_C99, file: !657, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !232, splitDebugInlining: false, nameTableKind: None)
!657 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!658 = !{!"clang version 12.0.1"}
!659 = !{i32 7, !"Dwarf Version", i32 4}
!660 = !{i32 2, !"Debug Info Version", i32 3}
!661 = !{i32 1, !"wchar_size", i32 4}
!662 = !{i32 7, !"PIC Level", i32 2}
!663 = !{i32 7, !"PIE Level", i32 2}
!664 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 44, type: !665, scopeLine: 45, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !667)
!665 = !DISubroutineType(types: !666)
!666 = !{null, !21}
!667 = !{!668}
!668 = !DILocalVariable(name: "status", arg: 1, scope: !664, file: !3, line: 44, type: !21)
!669 = !DILocation(line: 0, scope: !664)
!670 = !DILocation(line: 46, column: 14, scope: !671)
!671 = distinct !DILexicalBlock(scope: !664, file: !3, line: 46, column: 7)
!672 = !DILocation(line: 46, column: 7, scope: !664)
!673 = !DILocation(line: 47, column: 5, scope: !674)
!674 = distinct !DILexicalBlock(scope: !671, file: !3, line: 47, column: 5)
!675 = !{!676, !676, i64 0}
!676 = !{!"any pointer", !677, i64 0}
!677 = !{!"omnipotent char", !678, i64 0}
!678 = !{!"Simple C/C++ TBAA"}
!679 = !DILocation(line: 50, column: 7, scope: !680)
!680 = distinct !DILexicalBlock(scope: !671, file: !3, line: 49, column: 5)
!681 = !DILocation(line: 54, column: 7, scope: !680)
!682 = !DILocation(line: 59, column: 7, scope: !680)
!683 = !DILocation(line: 62, column: 7, scope: !680)
!684 = !DILocation(line: 63, column: 7, scope: !680)
!685 = !DILocation(line: 64, column: 7, scope: !680)
!686 = !DILocalVariable(name: "program", arg: 1, scope: !687, file: !688, line: 634, type: !12)
!687 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !688, file: !688, line: 634, type: !689, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !691)
!688 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!689 = !DISubroutineType(types: !690)
!690 = !{null, !12}
!691 = !{!686, !692, !701, !702, !704}
!692 = !DILocalVariable(name: "infomap", scope: !687, file: !688, line: 636, type: !693)
!693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !694, size: 896, elements: !699)
!694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !695)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !687, file: !688, line: 636, size: 128, elements: !696)
!696 = !{!697, !698}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !695, file: !688, line: 636, baseType: !12, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !695, file: !688, line: 636, baseType: !12, size: 64, offset: 64)
!699 = !{!700}
!700 = !DISubrange(count: 7)
!701 = !DILocalVariable(name: "node", scope: !687, file: !688, line: 646, type: !12)
!702 = !DILocalVariable(name: "map_prog", scope: !687, file: !688, line: 647, type: !703)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!704 = !DILocalVariable(name: "lc_messages", scope: !687, file: !688, line: 659, type: !12)
!705 = !DILocation(line: 0, scope: !687, inlinedAt: !706)
!706 = distinct !DILocation(line: 72, column: 7, scope: !680)
!707 = !DILocation(line: 636, column: 3, scope: !687, inlinedAt: !706)
!708 = !DILocation(line: 636, column: 67, scope: !687, inlinedAt: !706)
!709 = !DILocation(line: 647, column: 36, scope: !687, inlinedAt: !706)
!710 = !DILocation(line: 649, column: 3, scope: !687, inlinedAt: !706)
!711 = !DILocation(line: 649, column: 33, scope: !687, inlinedAt: !706)
!712 = !DILocation(line: 650, column: 13, scope: !687, inlinedAt: !706)
!713 = !DILocation(line: 649, column: 20, scope: !687, inlinedAt: !706)
!714 = !{!715, !676, i64 0}
!715 = !{!"infomap", !676, i64 0, !676, i64 8}
!716 = !DILocation(line: 649, column: 10, scope: !687, inlinedAt: !706)
!717 = !DILocation(line: 649, column: 28, scope: !687, inlinedAt: !706)
!718 = distinct !{!718, !710, !712, !719}
!719 = !{!"llvm.loop.mustprogress"}
!720 = !DILocation(line: 652, column: 17, scope: !721, inlinedAt: !706)
!721 = distinct !DILexicalBlock(scope: !687, file: !688, line: 652, column: 7)
!722 = !{!715, !676, i64 8}
!723 = !DILocation(line: 652, column: 7, scope: !721, inlinedAt: !706)
!724 = !DILocation(line: 652, column: 7, scope: !687, inlinedAt: !706)
!725 = !DILocation(line: 655, column: 3, scope: !687, inlinedAt: !706)
!726 = !DILocation(line: 659, column: 29, scope: !687, inlinedAt: !706)
!727 = !DILocation(line: 660, column: 7, scope: !728, inlinedAt: !706)
!728 = distinct !DILexicalBlock(scope: !687, file: !688, line: 660, column: 7)
!729 = !DILocation(line: 660, column: 19, scope: !728, inlinedAt: !706)
!730 = !DILocation(line: 660, column: 22, scope: !728, inlinedAt: !706)
!731 = !DILocation(line: 660, column: 7, scope: !687, inlinedAt: !706)
!732 = !DILocation(line: 666, column: 7, scope: !733, inlinedAt: !706)
!733 = distinct !DILexicalBlock(scope: !728, file: !688, line: 661, column: 5)
!734 = !DILocation(line: 668, column: 5, scope: !733, inlinedAt: !706)
!735 = !DILocation(line: 669, column: 3, scope: !687, inlinedAt: !706)
!736 = !DILocation(line: 671, column: 3, scope: !687, inlinedAt: !706)
!737 = !DILocation(line: 673, column: 1, scope: !687, inlinedAt: !706)
!738 = !DILocation(line: 74, column: 3, scope: !664)
!739 = !DISubprogram(name: "dcgettext", scope: !740, file: !740, line: 51, type: !741, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!740 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!741 = !DISubroutineType(types: !742)
!742 = !{!6, !12, !12, !21}
!743 = !DISubprogram(name: "fputs_unlocked", scope: !744, file: !744, line: 667, type: !745, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!744 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!745 = !DISubroutineType(types: !746)
!746 = !{!21, !12, !60}
!747 = !DISubprogram(name: "setlocale", scope: !748, file: !748, line: 122, type: !749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!748 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!749 = !DISubroutineType(types: !750)
!750 = !{!6, !21, !12}
!751 = !DILocation(line: 0, scope: !18)
!752 = !DILocation(line: 86, column: 21, scope: !18)
!753 = !DILocation(line: 86, column: 3, scope: !18)
!754 = !DILocation(line: 87, column: 3, scope: !18)
!755 = !DILocation(line: 88, column: 3, scope: !18)
!756 = !DILocation(line: 89, column: 3, scope: !18)
!757 = !DILocation(line: 91, column: 3, scope: !18)
!758 = !DILocation(line: 93, column: 3, scope: !18)
!759 = !DILocation(line: 95, column: 15, scope: !31)
!760 = !DILocation(line: 0, scope: !31)
!761 = !DILocation(line: 97, column: 11, scope: !31)
!762 = !DILocation(line: 106, column: 9, scope: !763)
!763 = distinct !DILexicalBlock(scope: !31, file: !3, line: 101, column: 9)
!764 = !DILocation(line: 107, column: 9, scope: !763)
!765 = !DILocation(line: 110, column: 11, scope: !763)
!766 = !DILocation(line: 114, column: 14, scope: !767)
!767 = distinct !DILexicalBlock(scope: !18, file: !3, line: 114, column: 7)
!768 = !{!769, !769, i64 0}
!769 = !{!"int", !677, i64 0}
!770 = !DILocation(line: 114, column: 12, scope: !767)
!771 = !DILocation(line: 114, column: 7, scope: !18)
!772 = !DILocation(line: 120, column: 3, scope: !36)
!773 = !DILocation(line: 116, column: 20, scope: !774)
!774 = distinct !DILexicalBlock(scope: !767, file: !3, line: 115, column: 5)
!775 = !DILocation(line: 116, column: 7, scope: !774)
!776 = !DILocation(line: 117, column: 7, scope: !774)
!777 = !DILocation(line: 122, column: 16, scope: !34)
!778 = !DILocation(line: 123, column: 13, scope: !34)
!779 = !DILocation(line: 125, column: 13, scope: !780)
!780 = distinct !DILexicalBlock(scope: !34, file: !3, line: 125, column: 11)
!781 = !DILocation(line: 125, column: 11, scope: !34)
!782 = !DILocation(line: 131, column: 7, scope: !34)
!783 = !DILocalVariable(name: "__c", arg: 1, scope: !784, file: !785, line: 108, type: !21)
!784 = distinct !DISubprogram(name: "putchar_unlocked", scope: !785, file: !785, line: 108, type: !786, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !788)
!785 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!786 = !DISubroutineType(types: !787)
!787 = !{!21, !21}
!788 = !{!783}
!789 = !DILocation(line: 0, scope: !784, inlinedAt: !790)
!790 = distinct !DILocation(line: 132, column: 7, scope: !34)
!791 = !DILocation(line: 110, column: 10, scope: !784, inlinedAt: !790)
!792 = !{!793, !676, i64 40}
!793 = !{!"_IO_FILE", !769, i64 0, !676, i64 8, !676, i64 16, !676, i64 24, !676, i64 32, !676, i64 40, !676, i64 48, !676, i64 56, !676, i64 64, !676, i64 72, !676, i64 80, !676, i64 88, !676, i64 96, !676, i64 104, !769, i64 112, !769, i64 116, !794, i64 120, !795, i64 128, !677, i64 130, !677, i64 131, !676, i64 136, !794, i64 144, !676, i64 152, !676, i64 160, !676, i64 168, !676, i64 176, !794, i64 184, !769, i64 192, !677, i64 196}
!794 = !{!"long", !677, i64 0}
!795 = !{!"short", !677, i64 0}
!796 = !{!793, !676, i64 48}
!797 = !{!"branch_weights", i32 2000, i32 1}
!798 = !{!677, !677, i64 0}
!799 = !DILocation(line: 120, column: 31, scope: !35)
!800 = !DILocation(line: 120, column: 17, scope: !35)
!801 = distinct !{!801, !772, !802, !719}
!802 = !DILocation(line: 133, column: 5, scope: !36)
!803 = !DILocation(line: 136, column: 1, scope: !18)
!804 = !DISubprogram(name: "bindtextdomain", scope: !740, file: !740, line: 86, type: !805, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!805 = !DISubroutineType(types: !806)
!806 = !{!6, !12, !12}
!807 = !DISubprogram(name: "textdomain", scope: !740, file: !740, line: 82, type: !808, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!808 = !DISubroutineType(types: !809)
!809 = !{!6, !12}
!810 = !DISubprogram(name: "atexit", scope: !811, file: !811, line: 595, type: !812, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!811 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!812 = !DISubroutineType(types: !813)
!813 = !{!21, !814}
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{null}
!817 = !DISubprogram(name: "getopt_long", scope: !98, file: !98, line: 66, type: !818, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!818 = !DISubroutineType(types: !819)
!819 = !{!21, !21, !820, !12, !822, !103}
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!823 = !DISubprogram(name: "error", scope: !824, file: !824, line: 52, type: !825, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!824 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!825 = !DISubroutineType(types: !826)
!826 = !{null, !21, !21, !12, null}
!827 = !DISubprogram(name: "fwrite_unlocked", scope: !744, file: !744, line: 680, type: !828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!828 = !DISubroutineType(types: !829)
!829 = !{!11, !830, !11, !11, !60}
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!832 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !115, file: !115, line: 51, type: !689, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !833)
!833 = !{!834}
!834 = !DILocalVariable(name: "file", arg: 1, scope: !832, file: !115, line: 51, type: !12)
!835 = !DILocation(line: 0, scope: !832)
!836 = !DILocation(line: 53, column: 13, scope: !832)
!837 = !DILocation(line: 54, column: 1, scope: !832)
!838 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !115, file: !115, line: 88, type: !839, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !841)
!839 = !DISubroutineType(types: !840)
!840 = !{null, !27}
!841 = !{!842}
!842 = !DILocalVariable(name: "ignore", arg: 1, scope: !838, file: !115, line: 88, type: !27)
!843 = !DILocation(line: 0, scope: !838)
!844 = !DILocation(line: 90, column: 16, scope: !838)
!845 = !{!846, !846, i64 0}
!846 = !{!"_Bool", !677, i64 0}
!847 = !DILocation(line: 91, column: 1, scope: !838)
!848 = distinct !DISubprogram(name: "close_stdout", scope: !115, file: !115, line: 117, type: !815, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !849)
!849 = !{!850}
!850 = !DILocalVariable(name: "write_error", scope: !851, file: !115, line: 122, type: !12)
!851 = distinct !DILexicalBlock(scope: !852, file: !115, line: 121, column: 5)
!852 = distinct !DILexicalBlock(scope: !848, file: !115, line: 119, column: 7)
!853 = !DILocation(line: 119, column: 21, scope: !852)
!854 = !DILocation(line: 119, column: 7, scope: !852)
!855 = !DILocation(line: 119, column: 29, scope: !852)
!856 = !DILocation(line: 120, column: 7, scope: !852)
!857 = !DILocation(line: 120, column: 12, scope: !852)
!858 = !{i8 0, i8 2}
!859 = !DILocation(line: 120, column: 25, scope: !852)
!860 = !DILocation(line: 120, column: 28, scope: !852)
!861 = !DILocation(line: 120, column: 34, scope: !852)
!862 = !DILocation(line: 119, column: 7, scope: !848)
!863 = !DILocation(line: 122, column: 33, scope: !851)
!864 = !DILocation(line: 0, scope: !851)
!865 = !DILocation(line: 123, column: 11, scope: !866)
!866 = distinct !DILexicalBlock(scope: !851, file: !115, line: 123, column: 11)
!867 = !DILocation(line: 0, scope: !866)
!868 = !DILocation(line: 123, column: 11, scope: !851)
!869 = !DILocation(line: 124, column: 36, scope: !866)
!870 = !DILocation(line: 124, column: 9, scope: !866)
!871 = !DILocation(line: 127, column: 9, scope: !866)
!872 = !DILocation(line: 129, column: 14, scope: !851)
!873 = !DILocation(line: 129, column: 7, scope: !851)
!874 = !DILocation(line: 134, column: 42, scope: !875)
!875 = distinct !DILexicalBlock(scope: !848, file: !115, line: 134, column: 7)
!876 = !DILocation(line: 134, column: 28, scope: !875)
!877 = !DILocation(line: 134, column: 50, scope: !875)
!878 = !DILocation(line: 134, column: 7, scope: !848)
!879 = !DILocation(line: 135, column: 12, scope: !875)
!880 = !DILocation(line: 135, column: 5, scope: !875)
!881 = !DILocation(line: 136, column: 1, scope: !848)
!882 = distinct !DISubprogram(name: "dir_len", scope: !222, file: !222, line: 32, type: !883, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !885)
!883 = !DISubroutineType(types: !884)
!884 = !{!9, !12}
!885 = !{!886, !887, !888}
!886 = !DILocalVariable(name: "file", arg: 1, scope: !882, file: !222, line: 32, type: !12)
!887 = !DILocalVariable(name: "prefix_length", scope: !882, file: !222, line: 34, type: !9)
!888 = !DILocalVariable(name: "length", scope: !882, file: !222, line: 35, type: !9)
!889 = !DILocation(line: 0, scope: !882)
!890 = !DILocation(line: 41, column: 24, scope: !882)
!891 = !DILocation(line: 48, column: 17, scope: !892)
!892 = distinct !DILexicalBlock(scope: !882, file: !222, line: 48, column: 3)
!893 = !DILocation(line: 48, column: 39, scope: !892)
!894 = !DILocation(line: 48, column: 8, scope: !892)
!895 = !DILocation(line: 0, scope: !892)
!896 = !DILocation(line: 49, column: 22, scope: !897)
!897 = distinct !DILexicalBlock(scope: !892, file: !222, line: 48, column: 3)
!898 = !DILocation(line: 48, column: 3, scope: !892)
!899 = !DILocation(line: 50, column: 11, scope: !900)
!900 = distinct !DILexicalBlock(scope: !897, file: !222, line: 50, column: 9)
!901 = !DILocation(line: 50, column: 9, scope: !897)
!902 = distinct !{!902, !898, !903, !719}
!903 = !DILocation(line: 51, column: 7, scope: !892)
!904 = !DILocation(line: 52, column: 3, scope: !882)
!905 = distinct !DISubprogram(name: "mdir_name", scope: !222, file: !222, line: 71, type: !808, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !906)
!906 = !{!907, !908, !909, !910}
!907 = !DILocalVariable(name: "file", arg: 1, scope: !905, file: !222, line: 71, type: !12)
!908 = !DILocalVariable(name: "length", scope: !905, file: !222, line: 73, type: !9)
!909 = !DILocalVariable(name: "append_dot", scope: !905, file: !222, line: 74, type: !27)
!910 = !DILocalVariable(name: "dir", scope: !905, file: !222, line: 78, type: !6)
!911 = !DILocation(line: 0, scope: !905)
!912 = !DILocation(line: 0, scope: !882, inlinedAt: !913)
!913 = distinct !DILocation(line: 73, column: 19, scope: !905)
!914 = !DILocation(line: 41, column: 24, scope: !882, inlinedAt: !913)
!915 = !DILocation(line: 48, column: 17, scope: !892, inlinedAt: !913)
!916 = !DILocation(line: 48, column: 39, scope: !892, inlinedAt: !913)
!917 = !DILocation(line: 48, column: 8, scope: !892, inlinedAt: !913)
!918 = !DILocation(line: 0, scope: !892, inlinedAt: !913)
!919 = !DILocation(line: 49, column: 22, scope: !897, inlinedAt: !913)
!920 = !DILocation(line: 48, column: 3, scope: !892, inlinedAt: !913)
!921 = !DILocation(line: 50, column: 11, scope: !900, inlinedAt: !913)
!922 = !DILocation(line: 50, column: 9, scope: !897, inlinedAt: !913)
!923 = distinct !{!923, !920, !924, !719}
!924 = !DILocation(line: 51, column: 7, scope: !892, inlinedAt: !913)
!925 = !DILocation(line: 74, column: 29, scope: !905)
!926 = !DILocation(line: 78, column: 32, scope: !905)
!927 = !DILocation(line: 78, column: 30, scope: !905)
!928 = !DILocation(line: 78, column: 43, scope: !905)
!929 = !DILocation(line: 78, column: 15, scope: !905)
!930 = !DILocation(line: 79, column: 8, scope: !931)
!931 = distinct !DILexicalBlock(scope: !905, file: !222, line: 79, column: 7)
!932 = !DILocation(line: 79, column: 7, scope: !905)
!933 = !DILocalVariable(name: "__dest", arg: 1, scope: !934, file: !935, line: 26, type: !938)
!934 = distinct !DISubprogram(name: "memcpy", scope: !935, file: !935, line: 26, type: !936, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !940)
!935 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!936 = !DISubroutineType(types: !937)
!937 = !{!8, !938, !939, !9}
!938 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!939 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !830)
!940 = !{!933, !941, !942}
!941 = !DILocalVariable(name: "__src", arg: 2, scope: !934, file: !935, line: 26, type: !939)
!942 = !DILocalVariable(name: "__len", arg: 3, scope: !934, file: !935, line: 26, type: !9)
!943 = !DILocation(line: 0, scope: !934, inlinedAt: !944)
!944 = distinct !DILocation(line: 81, column: 3, scope: !905)
!945 = !DILocation(line: 29, column: 10, scope: !934, inlinedAt: !944)
!946 = !DILocation(line: 82, column: 7, scope: !905)
!947 = !DILocation(line: 83, column: 19, scope: !948)
!948 = distinct !DILexicalBlock(scope: !905, file: !222, line: 82, column: 7)
!949 = !DILocation(line: 83, column: 5, scope: !948)
!950 = !DILocation(line: 84, column: 3, scope: !905)
!951 = !DILocation(line: 84, column: 15, scope: !905)
!952 = !DILocation(line: 85, column: 3, scope: !905)
!953 = !DILocation(line: 86, column: 1, scope: !905)
!954 = distinct !DISubprogram(name: "last_component", scope: !224, file: !224, line: 30, type: !808, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !223, retainedNodes: !955)
!955 = !{!956, !957, !958, !959}
!956 = !DILocalVariable(name: "name", arg: 1, scope: !954, file: !224, line: 30, type: !12)
!957 = !DILocalVariable(name: "base", scope: !954, file: !224, line: 32, type: !12)
!958 = !DILocalVariable(name: "p", scope: !954, file: !224, line: 33, type: !12)
!959 = !DILocalVariable(name: "saw_slash", scope: !954, file: !224, line: 34, type: !27)
!960 = !DILocation(line: 0, scope: !954)
!961 = !DILocation(line: 36, column: 3, scope: !954)
!962 = !DILocation(line: 36, column: 10, scope: !954)
!963 = !DILocation(line: 37, column: 9, scope: !954)
!964 = distinct !{!964, !961, !963, !719}
!965 = !DILocation(line: 39, column: 18, scope: !966)
!966 = distinct !DILexicalBlock(scope: !967, file: !224, line: 39, column: 3)
!967 = distinct !DILexicalBlock(scope: !954, file: !224, line: 39, column: 3)
!968 = !DILocation(line: 32, column: 15, scope: !954)
!969 = !DILocation(line: 0, scope: !967)
!970 = !DILocation(line: 39, column: 3, scope: !967)
!971 = !DILocation(line: 43, column: 16, scope: !972)
!972 = distinct !DILexicalBlock(scope: !973, file: !224, line: 43, column: 16)
!973 = distinct !DILexicalBlock(scope: !974, file: !224, line: 41, column: 11)
!974 = distinct !DILexicalBlock(scope: !966, file: !224, line: 40, column: 5)
!975 = !DILocation(line: 43, column: 16, scope: !973)
!976 = !DILocation(line: 39, column: 23, scope: !966)
!977 = !DILocation(line: 39, column: 3, scope: !966)
!978 = distinct !{!978, !970, !979, !719}
!979 = !DILocation(line: 48, column: 5, scope: !967)
!980 = !DILocation(line: 50, column: 3, scope: !954)
!981 = distinct !DISubprogram(name: "base_len", scope: !224, file: !224, line: 58, type: !883, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !223, retainedNodes: !982)
!982 = !{!983, !984, !985}
!983 = !DILocalVariable(name: "name", arg: 1, scope: !981, file: !224, line: 58, type: !12)
!984 = !DILocalVariable(name: "len", scope: !981, file: !224, line: 60, type: !9)
!985 = !DILocalVariable(name: "prefix_len", scope: !981, file: !224, line: 61, type: !9)
!986 = !DILocation(line: 0, scope: !981)
!987 = !DILocation(line: 63, column: 14, scope: !988)
!988 = distinct !DILexicalBlock(scope: !981, file: !224, line: 63, column: 3)
!989 = !DILocation(line: 63, column: 8, scope: !988)
!990 = !DILocation(line: 0, scope: !988)
!991 = !DILocation(line: 63, column: 32, scope: !992)
!992 = distinct !DILexicalBlock(scope: !988, file: !224, line: 63, column: 3)
!993 = !DILocation(line: 63, column: 38, scope: !992)
!994 = !DILocation(line: 63, column: 41, scope: !992)
!995 = !DILocation(line: 63, column: 3, scope: !988)
!996 = distinct !{!996, !995, !997, !719}
!997 = !DILocation(line: 64, column: 5, scope: !988)
!998 = !DILocation(line: 74, column: 3, scope: !981)
!999 = distinct !DISubprogram(name: "set_program_name", scope: !128, file: !128, line: 39, type: !689, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !1000)
!1000 = !{!1001, !1002, !1003}
!1001 = !DILocalVariable(name: "argv0", arg: 1, scope: !999, file: !128, line: 39, type: !12)
!1002 = !DILocalVariable(name: "slash", scope: !999, file: !128, line: 46, type: !12)
!1003 = !DILocalVariable(name: "base", scope: !999, file: !128, line: 47, type: !12)
!1004 = !DILocation(line: 0, scope: !999)
!1005 = !DILocation(line: 51, column: 13, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !999, file: !128, line: 51, column: 7)
!1007 = !DILocation(line: 51, column: 7, scope: !999)
!1008 = !DILocation(line: 55, column: 14, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1006, file: !128, line: 52, column: 5)
!1010 = !DILocation(line: 54, column: 7, scope: !1009)
!1011 = !DILocation(line: 56, column: 7, scope: !1009)
!1012 = !DILocation(line: 59, column: 11, scope: !999)
!1013 = !DILocation(line: 60, column: 17, scope: !999)
!1014 = !DILocation(line: 60, column: 11, scope: !999)
!1015 = !DILocation(line: 61, column: 12, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !999, file: !128, line: 61, column: 7)
!1017 = !DILocation(line: 61, column: 20, scope: !1016)
!1018 = !DILocation(line: 61, column: 25, scope: !1016)
!1019 = !DILocation(line: 61, column: 42, scope: !1016)
!1020 = !DILocation(line: 61, column: 28, scope: !1016)
!1021 = !DILocation(line: 61, column: 61, scope: !1016)
!1022 = !DILocation(line: 61, column: 7, scope: !999)
!1023 = !DILocation(line: 64, column: 11, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !128, line: 64, column: 11)
!1025 = distinct !DILexicalBlock(scope: !1016, file: !128, line: 62, column: 5)
!1026 = !DILocation(line: 64, column: 36, scope: !1024)
!1027 = !DILocation(line: 64, column: 11, scope: !1025)
!1028 = !DILocation(line: 66, column: 24, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1024, file: !128, line: 65, column: 9)
!1030 = !DILocation(line: 70, column: 41, scope: !1029)
!1031 = !DILocation(line: 72, column: 9, scope: !1029)
!1032 = !DILocation(line: 84, column: 16, scope: !999)
!1033 = !DILocation(line: 90, column: 27, scope: !999)
!1034 = !DILocation(line: 92, column: 1, scope: !999)
!1035 = distinct !DISubprogram(name: "clone_quoting_options", scope: !134, file: !134, line: 122, type: !1036, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !1039)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!1038, !1038}
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!1039 = !{!1040, !1041, !1042}
!1040 = !DILocalVariable(name: "o", arg: 1, scope: !1035, file: !134, line: 122, type: !1038)
!1041 = !DILocalVariable(name: "e", scope: !1035, file: !134, line: 124, type: !21)
!1042 = !DILocalVariable(name: "p", scope: !1035, file: !134, line: 125, type: !1038)
!1043 = !DILocation(line: 0, scope: !1035)
!1044 = !DILocation(line: 124, column: 11, scope: !1035)
!1045 = !DILocation(line: 125, column: 40, scope: !1035)
!1046 = !DILocation(line: 125, column: 31, scope: !1035)
!1047 = !DILocation(line: 127, column: 9, scope: !1035)
!1048 = !DILocation(line: 128, column: 3, scope: !1035)
!1049 = distinct !DISubprogram(name: "get_quoting_style", scope: !134, file: !134, line: 133, type: !1050, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !1054)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!136, !1052}
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!1054 = !{!1055}
!1055 = !DILocalVariable(name: "o", arg: 1, scope: !1049, file: !134, line: 133, type: !1052)
!1056 = !DILocation(line: 0, scope: !1049)
!1057 = !DILocation(line: 135, column: 11, scope: !1049)
!1058 = !DILocation(line: 135, column: 46, scope: !1049)
!1059 = !{!1060, !677, i64 0}
!1060 = !{!"quoting_options", !677, i64 0, !769, i64 4, !677, i64 8, !676, i64 40, !676, i64 48}
!1061 = !DILocation(line: 135, column: 3, scope: !1049)
!1062 = distinct !DISubprogram(name: "set_quoting_style", scope: !134, file: !134, line: 141, type: !1063, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !1065)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{null, !1038, !136}
!1065 = !{!1066, !1067}
!1066 = !DILocalVariable(name: "o", arg: 1, scope: !1062, file: !134, line: 141, type: !1038)
!1067 = !DILocalVariable(name: "s", arg: 2, scope: !1062, file: !134, line: 141, type: !136)
!1068 = !DILocation(line: 0, scope: !1062)
!1069 = !DILocation(line: 143, column: 4, scope: !1062)
!1070 = !DILocation(line: 143, column: 39, scope: !1062)
!1071 = !DILocation(line: 143, column: 45, scope: !1062)
!1072 = !DILocation(line: 144, column: 1, scope: !1062)
!1073 = distinct !DISubprogram(name: "set_char_quoting", scope: !134, file: !134, line: 152, type: !1074, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !1076)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!21, !1038, !7, !21}
!1076 = !{!1077, !1078, !1079, !1080, !1081, !1083, !1084}
!1077 = !DILocalVariable(name: "o", arg: 1, scope: !1073, file: !134, line: 152, type: !1038)
!1078 = !DILocalVariable(name: "c", arg: 2, scope: !1073, file: !134, line: 152, type: !7)
!1079 = !DILocalVariable(name: "i", arg: 3, scope: !1073, file: !134, line: 152, type: !21)
!1080 = !DILocalVariable(name: "uc", scope: !1073, file: !134, line: 154, type: !14)
!1081 = !DILocalVariable(name: "p", scope: !1073, file: !134, line: 155, type: !1082)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!1083 = !DILocalVariable(name: "shift", scope: !1073, file: !134, line: 157, type: !21)
!1084 = !DILocalVariable(name: "r", scope: !1073, file: !134, line: 158, type: !21)
!1085 = !DILocation(line: 0, scope: !1073)
!1086 = !DILocation(line: 156, column: 6, scope: !1073)
!1087 = !DILocation(line: 156, column: 62, scope: !1073)
!1088 = !DILocation(line: 156, column: 57, scope: !1073)
!1089 = !DILocation(line: 157, column: 15, scope: !1073)
!1090 = !DILocation(line: 158, column: 12, scope: !1073)
!1091 = !DILocation(line: 158, column: 15, scope: !1073)
!1092 = !DILocation(line: 158, column: 25, scope: !1073)
!1093 = !DILocation(line: 159, column: 13, scope: !1073)
!1094 = !DILocation(line: 159, column: 18, scope: !1073)
!1095 = !DILocation(line: 159, column: 23, scope: !1073)
!1096 = !DILocation(line: 159, column: 6, scope: !1073)
!1097 = !DILocation(line: 160, column: 3, scope: !1073)
!1098 = distinct !DISubprogram(name: "set_quoting_flags", scope: !134, file: !134, line: 168, type: !1099, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !1101)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!21, !1038, !21}
!1101 = !{!1102, !1103, !1104}
!1102 = !DILocalVariable(name: "o", arg: 1, scope: !1098, file: !134, line: 168, type: !1038)
!1103 = !DILocalVariable(name: "i", arg: 2, scope: !1098, file: !134, line: 168, type: !21)
!1104 = !DILocalVariable(name: "r", scope: !1098, file: !134, line: 170, type: !21)
!1105 = !DILocation(line: 0, scope: !1098)
!1106 = !DILocation(line: 171, column: 8, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1098, file: !134, line: 171, column: 7)
!1108 = !DILocation(line: 171, column: 7, scope: !1098)
!1109 = !DILocation(line: 173, column: 10, scope: !1098)
!1110 = !{!1060, !769, i64 4}
!1111 = !DILocation(line: 174, column: 12, scope: !1098)
!1112 = !DILocation(line: 175, column: 3, scope: !1098)
!1113 = distinct !DISubprogram(name: "set_custom_quoting", scope: !134, file: !134, line: 179, type: !1114, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !1116)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{null, !1038, !12, !12}
!1116 = !{!1117, !1118, !1119}
!1117 = !DILocalVariable(name: "o", arg: 1, scope: !1113, file: !134, line: 179, type: !1038)
!1118 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1113, file: !134, line: 180, type: !12)
!1119 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1113, file: !134, line: 180, type: !12)
!1120 = !DILocation(line: 0, scope: !1113)
!1121 = !DILocation(line: 182, column: 8, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1113, file: !134, line: 182, column: 7)
!1123 = !DILocation(line: 182, column: 7, scope: !1113)
!1124 = !DILocation(line: 184, column: 6, scope: !1113)
!1125 = !DILocation(line: 184, column: 12, scope: !1113)
!1126 = !DILocation(line: 185, column: 8, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1113, file: !134, line: 185, column: 7)
!1128 = !DILocation(line: 185, column: 19, scope: !1127)
!1129 = !DILocation(line: 186, column: 5, scope: !1127)
!1130 = !DILocation(line: 187, column: 6, scope: !1113)
!1131 = !DILocation(line: 187, column: 17, scope: !1113)
!1132 = !{!1060, !676, i64 40}
!1133 = !DILocation(line: 188, column: 6, scope: !1113)
!1134 = !DILocation(line: 188, column: 18, scope: !1113)
!1135 = !{!1060, !676, i64 48}
!1136 = !DILocation(line: 189, column: 1, scope: !1113)
!1137 = distinct !DISubprogram(name: "quotearg_buffer", scope: !134, file: !134, line: 784, type: !1138, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !1140)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!9, !6, !9, !12, !9, !1052}
!1140 = !{!1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148}
!1141 = !DILocalVariable(name: "buffer", arg: 1, scope: !1137, file: !134, line: 784, type: !6)
!1142 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1137, file: !134, line: 784, type: !9)
!1143 = !DILocalVariable(name: "arg", arg: 3, scope: !1137, file: !134, line: 785, type: !12)
!1144 = !DILocalVariable(name: "argsize", arg: 4, scope: !1137, file: !134, line: 785, type: !9)
!1145 = !DILocalVariable(name: "o", arg: 5, scope: !1137, file: !134, line: 786, type: !1052)
!1146 = !DILocalVariable(name: "p", scope: !1137, file: !134, line: 788, type: !1052)
!1147 = !DILocalVariable(name: "e", scope: !1137, file: !134, line: 789, type: !21)
!1148 = !DILocalVariable(name: "r", scope: !1137, file: !134, line: 790, type: !9)
!1149 = !DILocation(line: 0, scope: !1137)
!1150 = !DILocation(line: 788, column: 37, scope: !1137)
!1151 = !DILocation(line: 789, column: 11, scope: !1137)
!1152 = !DILocation(line: 791, column: 43, scope: !1137)
!1153 = !DILocation(line: 791, column: 53, scope: !1137)
!1154 = !DILocation(line: 791, column: 60, scope: !1137)
!1155 = !DILocation(line: 792, column: 43, scope: !1137)
!1156 = !DILocation(line: 792, column: 58, scope: !1137)
!1157 = !DILocation(line: 790, column: 14, scope: !1137)
!1158 = !DILocation(line: 793, column: 9, scope: !1137)
!1159 = !DILocation(line: 794, column: 3, scope: !1137)
!1160 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !134, file: !134, line: 256, type: !1161, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !1165)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!9, !6, !9, !12, !9, !136, !21, !1163, !12, !12}
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!1165 = !{!1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1190, !1191, !1192, !1193, !1194, !1197, !1198, !1214, !1217, !1218, !1225, !1228, !1229, !1230, !1231, !1232, !1233}
!1166 = !DILocalVariable(name: "buffer", arg: 1, scope: !1160, file: !134, line: 256, type: !6)
!1167 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1160, file: !134, line: 256, type: !9)
!1168 = !DILocalVariable(name: "arg", arg: 3, scope: !1160, file: !134, line: 257, type: !12)
!1169 = !DILocalVariable(name: "argsize", arg: 4, scope: !1160, file: !134, line: 257, type: !9)
!1170 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1160, file: !134, line: 258, type: !136)
!1171 = !DILocalVariable(name: "flags", arg: 6, scope: !1160, file: !134, line: 258, type: !21)
!1172 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1160, file: !134, line: 259, type: !1163)
!1173 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1160, file: !134, line: 260, type: !12)
!1174 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1160, file: !134, line: 261, type: !12)
!1175 = !DILocalVariable(name: "i", scope: !1160, file: !134, line: 263, type: !9)
!1176 = !DILocalVariable(name: "len", scope: !1160, file: !134, line: 264, type: !9)
!1177 = !DILocalVariable(name: "orig_buffersize", scope: !1160, file: !134, line: 265, type: !9)
!1178 = !DILocalVariable(name: "quote_string", scope: !1160, file: !134, line: 266, type: !12)
!1179 = !DILocalVariable(name: "quote_string_len", scope: !1160, file: !134, line: 267, type: !9)
!1180 = !DILocalVariable(name: "backslash_escapes", scope: !1160, file: !134, line: 268, type: !27)
!1181 = !DILocalVariable(name: "unibyte_locale", scope: !1160, file: !134, line: 269, type: !27)
!1182 = !DILocalVariable(name: "elide_outer_quotes", scope: !1160, file: !134, line: 270, type: !27)
!1183 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1160, file: !134, line: 271, type: !27)
!1184 = !DILocalVariable(name: "encountered_single_quote", scope: !1160, file: !134, line: 272, type: !27)
!1185 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1160, file: !134, line: 273, type: !27)
!1186 = !DILocalVariable(name: "c", scope: !1187, file: !134, line: 402, type: !14)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !134, line: 401, column: 5)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !134, line: 400, column: 3)
!1189 = distinct !DILexicalBlock(scope: !1160, file: !134, line: 400, column: 3)
!1190 = !DILocalVariable(name: "esc", scope: !1187, file: !134, line: 403, type: !14)
!1191 = !DILocalVariable(name: "is_right_quote", scope: !1187, file: !134, line: 404, type: !27)
!1192 = !DILocalVariable(name: "escaping", scope: !1187, file: !134, line: 405, type: !27)
!1193 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1187, file: !134, line: 406, type: !27)
!1194 = !DILocalVariable(name: "m", scope: !1195, file: !134, line: 610, type: !9)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !134, line: 608, column: 11)
!1196 = distinct !DILexicalBlock(scope: !1187, file: !134, line: 426, column: 9)
!1197 = !DILocalVariable(name: "printable", scope: !1195, file: !134, line: 612, type: !27)
!1198 = !DILocalVariable(name: "mbstate", scope: !1199, file: !134, line: 621, type: !1201)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !134, line: 620, column: 15)
!1200 = distinct !DILexicalBlock(scope: !1195, file: !134, line: 614, column: 17)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1202, line: 6, baseType: !1203)
!1202 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1204, line: 21, baseType: !1205)
!1204 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1204, line: 13, size: 64, elements: !1206)
!1206 = !{!1207, !1208}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1205, file: !1204, line: 15, baseType: !21, size: 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1205, file: !1204, line: 20, baseType: !1209, size: 32, offset: 32)
!1209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1205, file: !1204, line: 16, size: 32, elements: !1210)
!1210 = !{!1211, !1212}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1209, file: !1204, line: 18, baseType: !138, size: 32)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1209, file: !1204, line: 19, baseType: !1213, size: 32)
!1213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, elements: !105)
!1214 = !DILocalVariable(name: "w", scope: !1215, file: !134, line: 631, type: !1216)
!1215 = distinct !DILexicalBlock(scope: !1199, file: !134, line: 630, column: 19)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !10, line: 74, baseType: !21)
!1217 = !DILocalVariable(name: "bytes", scope: !1215, file: !134, line: 632, type: !9)
!1218 = !DILocalVariable(name: "j", scope: !1219, file: !134, line: 657, type: !9)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !134, line: 656, column: 27)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !134, line: 654, column: 29)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !134, line: 649, column: 23)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !134, line: 641, column: 30)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !134, line: 636, column: 30)
!1224 = distinct !DILexicalBlock(scope: !1215, file: !134, line: 634, column: 25)
!1225 = !DILocalVariable(name: "ilim", scope: !1226, file: !134, line: 684, type: !9)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !134, line: 681, column: 15)
!1227 = distinct !DILexicalBlock(scope: !1195, file: !134, line: 680, column: 17)
!1228 = !DILabel(scope: !1160, name: "process_input", file: !134, line: 314)
!1229 = !DILabel(scope: !1196, name: "c_and_shell_escape", file: !134, line: 512)
!1230 = !DILabel(scope: !1196, name: "c_escape", file: !134, line: 517)
!1231 = !DILabel(scope: !1187, name: "store_escape", file: !134, line: 719)
!1232 = !DILabel(scope: !1187, name: "store_c", file: !134, line: 722)
!1233 = !DILabel(scope: !1160, name: "force_outer_quoting_style", file: !134, line: 763)
!1234 = !DILocation(line: 0, scope: !1160)
!1235 = !DILocation(line: 269, column: 25, scope: !1160)
!1236 = !DILocation(line: 269, column: 36, scope: !1160)
!1237 = !DILocation(line: 270, column: 8, scope: !1160)
!1238 = !DILocation(line: 273, column: 3, scope: !1160)
!1239 = !DILocation(line: 265, column: 10, scope: !1160)
!1240 = !DILocation(line: 266, column: 15, scope: !1160)
!1241 = !DILocation(line: 267, column: 10, scope: !1160)
!1242 = !DILocation(line: 268, column: 8, scope: !1160)
!1243 = !DILocation(line: 271, column: 8, scope: !1160)
!1244 = !DILocation(line: 272, column: 8, scope: !1160)
!1245 = !DILocation(line: 273, column: 8, scope: !1160)
!1246 = !DILocation(line: 314, column: 2, scope: !1160)
!1247 = !DILocation(line: 316, column: 3, scope: !1160)
!1248 = !DILocation(line: 323, column: 11, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1160, file: !134, line: 317, column: 5)
!1250 = !DILocation(line: 323, column: 12, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1249, file: !134, line: 323, column: 11)
!1252 = !DILocation(line: 324, column: 9, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !134, line: 324, column: 9)
!1254 = distinct !DILexicalBlock(scope: !1251, file: !134, line: 324, column: 9)
!1255 = !DILocation(line: 324, column: 9, scope: !1254)
!1256 = !DILocation(line: 362, column: 26, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !134, line: 340, column: 11)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !134, line: 339, column: 13)
!1259 = distinct !DILexicalBlock(scope: !1249, file: !134, line: 338, column: 7)
!1260 = !DILocation(line: 363, column: 27, scope: !1257)
!1261 = !DILocation(line: 364, column: 11, scope: !1257)
!1262 = !DILocation(line: 365, column: 14, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1259, file: !134, line: 365, column: 13)
!1264 = !DILocation(line: 365, column: 13, scope: !1259)
!1265 = !DILocation(line: 366, column: 43, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !134, line: 366, column: 11)
!1267 = distinct !DILexicalBlock(scope: !1263, file: !134, line: 366, column: 11)
!1268 = !DILocation(line: 366, column: 11, scope: !1267)
!1269 = !DILocation(line: 367, column: 13, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !134, line: 367, column: 13)
!1271 = distinct !DILexicalBlock(scope: !1266, file: !134, line: 367, column: 13)
!1272 = !DILocation(line: 367, column: 13, scope: !1271)
!1273 = !DILocation(line: 366, column: 70, scope: !1266)
!1274 = distinct !{!1274, !1268, !1275, !719}
!1275 = !DILocation(line: 367, column: 13, scope: !1267)
!1276 = !DILocation(line: 264, column: 10, scope: !1160)
!1277 = !DILocation(line: 370, column: 28, scope: !1259)
!1278 = !DILocation(line: 372, column: 7, scope: !1249)
!1279 = !DILocation(line: 376, column: 7, scope: !1249)
!1280 = !DILocation(line: 379, column: 7, scope: !1249)
!1281 = !DILocation(line: 381, column: 12, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1249, file: !134, line: 381, column: 11)
!1283 = !DILocation(line: 381, column: 11, scope: !1249)
!1284 = !DILocation(line: 386, column: 12, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1249, file: !134, line: 386, column: 11)
!1286 = !DILocation(line: 386, column: 11, scope: !1249)
!1287 = !DILocation(line: 387, column: 9, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !134, line: 387, column: 9)
!1289 = distinct !DILexicalBlock(scope: !1285, file: !134, line: 387, column: 9)
!1290 = !DILocation(line: 387, column: 9, scope: !1289)
!1291 = !DILocation(line: 394, column: 7, scope: !1249)
!1292 = !DILocation(line: 397, column: 7, scope: !1249)
!1293 = !DILocation(line: 400, column: 8, scope: !1189)
!1294 = !DILocation(line: 0, scope: !1189)
!1295 = !DILocation(line: 400, column: 27, scope: !1188)
!1296 = !DILocation(line: 400, column: 19, scope: !1188)
!1297 = !DILocation(line: 400, column: 41, scope: !1188)
!1298 = !DILocation(line: 400, column: 48, scope: !1188)
!1299 = !DILocation(line: 400, column: 3, scope: !1189)
!1300 = !DILocation(line: 400, column: 60, scope: !1188)
!1301 = !DILocation(line: 0, scope: !1187)
!1302 = !DILocation(line: 409, column: 11, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1187, file: !134, line: 408, column: 11)
!1304 = !DILocation(line: 411, column: 17, scope: !1303)
!1305 = !DILocation(line: 412, column: 39, scope: !1303)
!1306 = !DILocation(line: 416, column: 32, scope: !1303)
!1307 = !DILocation(line: 412, column: 19, scope: !1303)
!1308 = !DILocation(line: 412, column: 15, scope: !1303)
!1309 = !DILocation(line: 417, column: 11, scope: !1303)
!1310 = !DILocation(line: 417, column: 26, scope: !1303)
!1311 = !DILocation(line: 417, column: 14, scope: !1303)
!1312 = !DILocation(line: 417, column: 63, scope: !1303)
!1313 = !DILocation(line: 408, column: 11, scope: !1187)
!1314 = !DILocation(line: 424, column: 11, scope: !1187)
!1315 = !DILocation(line: 425, column: 7, scope: !1187)
!1316 = !DILocation(line: 428, column: 15, scope: !1196)
!1317 = !DILocation(line: 430, column: 15, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !134, line: 430, column: 15)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !134, line: 429, column: 13)
!1320 = distinct !DILexicalBlock(scope: !1196, file: !134, line: 428, column: 15)
!1321 = !DILocation(line: 430, column: 15, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1318, file: !134, line: 430, column: 15)
!1323 = !DILocation(line: 430, column: 15, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !134, line: 430, column: 15)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !134, line: 430, column: 15)
!1326 = distinct !DILexicalBlock(scope: !1322, file: !134, line: 430, column: 15)
!1327 = !DILocation(line: 430, column: 15, scope: !1325)
!1328 = !DILocation(line: 430, column: 15, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !134, line: 430, column: 15)
!1330 = distinct !DILexicalBlock(scope: !1326, file: !134, line: 430, column: 15)
!1331 = !DILocation(line: 430, column: 15, scope: !1330)
!1332 = !DILocation(line: 430, column: 15, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !134, line: 430, column: 15)
!1334 = distinct !DILexicalBlock(scope: !1326, file: !134, line: 430, column: 15)
!1335 = !DILocation(line: 430, column: 15, scope: !1334)
!1336 = !DILocation(line: 430, column: 15, scope: !1326)
!1337 = !DILocation(line: 430, column: 15, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !134, line: 430, column: 15)
!1339 = distinct !DILexicalBlock(scope: !1318, file: !134, line: 430, column: 15)
!1340 = !DILocation(line: 430, column: 15, scope: !1339)
!1341 = !DILocation(line: 438, column: 19, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1319, file: !134, line: 437, column: 19)
!1343 = !DILocation(line: 438, column: 48, scope: !1342)
!1344 = !DILocation(line: 438, column: 59, scope: !1342)
!1345 = !DILocation(line: 440, column: 19, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !134, line: 440, column: 19)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !134, line: 440, column: 19)
!1348 = distinct !DILexicalBlock(scope: !1342, file: !134, line: 439, column: 17)
!1349 = !DILocation(line: 440, column: 19, scope: !1347)
!1350 = !DILocation(line: 441, column: 19, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1352, file: !134, line: 441, column: 19)
!1352 = distinct !DILexicalBlock(scope: !1348, file: !134, line: 441, column: 19)
!1353 = !DILocation(line: 441, column: 19, scope: !1352)
!1354 = !DILocation(line: 442, column: 17, scope: !1348)
!1355 = !DILocation(line: 449, column: 20, scope: !1320)
!1356 = !DILocation(line: 454, column: 11, scope: !1196)
!1357 = !DILocation(line: 457, column: 19, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1196, file: !134, line: 455, column: 13)
!1359 = !DILocation(line: 463, column: 19, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1358, file: !134, line: 462, column: 19)
!1361 = !DILocation(line: 463, column: 47, scope: !1360)
!1362 = !DILocation(line: 463, column: 41, scope: !1360)
!1363 = !DILocation(line: 463, column: 52, scope: !1360)
!1364 = !DILocation(line: 462, column: 19, scope: !1358)
!1365 = !DILocation(line: 464, column: 25, scope: !1360)
!1366 = !DILocation(line: 464, column: 17, scope: !1360)
!1367 = !DILocation(line: 471, column: 25, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1360, file: !134, line: 465, column: 19)
!1369 = !DILocation(line: 475, column: 21, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !134, line: 475, column: 21)
!1371 = distinct !DILexicalBlock(scope: !1368, file: !134, line: 475, column: 21)
!1372 = !DILocation(line: 475, column: 21, scope: !1371)
!1373 = !DILocation(line: 476, column: 21, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !134, line: 476, column: 21)
!1375 = distinct !DILexicalBlock(scope: !1368, file: !134, line: 476, column: 21)
!1376 = !DILocation(line: 476, column: 21, scope: !1375)
!1377 = !DILocation(line: 477, column: 21, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !134, line: 477, column: 21)
!1379 = distinct !DILexicalBlock(scope: !1368, file: !134, line: 477, column: 21)
!1380 = !DILocation(line: 477, column: 21, scope: !1379)
!1381 = !DILocation(line: 478, column: 21, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !134, line: 478, column: 21)
!1383 = distinct !DILexicalBlock(scope: !1368, file: !134, line: 478, column: 21)
!1384 = !DILocation(line: 478, column: 21, scope: !1383)
!1385 = !DILocation(line: 479, column: 21, scope: !1368)
!1386 = !DILocation(line: 492, column: 31, scope: !1196)
!1387 = !DILocation(line: 493, column: 31, scope: !1196)
!1388 = !DILocation(line: 495, column: 31, scope: !1196)
!1389 = !DILocation(line: 496, column: 31, scope: !1196)
!1390 = !DILocation(line: 497, column: 31, scope: !1196)
!1391 = !DILocation(line: 500, column: 15, scope: !1196)
!1392 = !DILocation(line: 502, column: 19, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !134, line: 501, column: 13)
!1394 = distinct !DILexicalBlock(scope: !1196, file: !134, line: 500, column: 15)
!1395 = !DILocation(line: 509, column: 33, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1196, file: !134, line: 509, column: 15)
!1397 = !DILocation(line: 0, scope: !1196)
!1398 = !DILocation(line: 512, column: 9, scope: !1196)
!1399 = !DILocation(line: 514, column: 15, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1196, file: !134, line: 513, column: 15)
!1401 = !DILocation(line: 517, column: 9, scope: !1196)
!1402 = !DILocation(line: 518, column: 15, scope: !1196)
!1403 = !DILocation(line: 526, column: 15, scope: !1196)
!1404 = !DILocation(line: 526, column: 40, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1196, file: !134, line: 526, column: 15)
!1406 = !DILocation(line: 526, column: 47, scope: !1405)
!1407 = !DILocation(line: 526, column: 18, scope: !1405)
!1408 = !DILocation(line: 530, column: 17, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1196, file: !134, line: 530, column: 15)
!1410 = !DILocation(line: 530, column: 15, scope: !1196)
!1411 = !DILocation(line: 535, column: 11, scope: !1196)
!1412 = !DILocation(line: 549, column: 15, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1196, file: !134, line: 548, column: 15)
!1414 = !DILocation(line: 556, column: 15, scope: !1196)
!1415 = !DILocation(line: 558, column: 19, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !134, line: 557, column: 13)
!1417 = distinct !DILexicalBlock(scope: !1196, file: !134, line: 556, column: 15)
!1418 = !DILocation(line: 561, column: 19, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1416, file: !134, line: 561, column: 19)
!1420 = !DILocation(line: 561, column: 30, scope: !1419)
!1421 = !DILocation(line: 570, column: 15, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !134, line: 570, column: 15)
!1423 = distinct !DILexicalBlock(scope: !1416, file: !134, line: 570, column: 15)
!1424 = !DILocation(line: 570, column: 15, scope: !1423)
!1425 = !DILocation(line: 571, column: 15, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !134, line: 571, column: 15)
!1427 = distinct !DILexicalBlock(scope: !1416, file: !134, line: 571, column: 15)
!1428 = !DILocation(line: 571, column: 15, scope: !1427)
!1429 = !DILocation(line: 572, column: 15, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !134, line: 572, column: 15)
!1431 = distinct !DILexicalBlock(scope: !1416, file: !134, line: 572, column: 15)
!1432 = !DILocation(line: 572, column: 15, scope: !1431)
!1433 = !DILocation(line: 574, column: 13, scope: !1416)
!1434 = !DILocation(line: 614, column: 17, scope: !1195)
!1435 = !DILocation(line: 0, scope: !1195)
!1436 = !DILocation(line: 617, column: 29, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1200, file: !134, line: 615, column: 15)
!1438 = !{!795, !795, i64 0}
!1439 = !DILocation(line: 617, column: 27, scope: !1437)
!1440 = !DILocation(line: 678, column: 40, scope: !1195)
!1441 = !DILocation(line: 680, column: 23, scope: !1227)
!1442 = !DILocation(line: 621, column: 17, scope: !1199)
!1443 = !DILocation(line: 621, column: 27, scope: !1199)
!1444 = !DILocalVariable(name: "__dest", arg: 1, scope: !1445, file: !935, line: 57, type: !8)
!1445 = distinct !DISubprogram(name: "memset", scope: !935, file: !935, line: 57, type: !1446, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !1448)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!8, !8, !21, !9}
!1448 = !{!1444, !1449, !1450}
!1449 = !DILocalVariable(name: "__ch", arg: 2, scope: !1445, file: !935, line: 57, type: !21)
!1450 = !DILocalVariable(name: "__len", arg: 3, scope: !1445, file: !935, line: 57, type: !9)
!1451 = !DILocation(line: 0, scope: !1445, inlinedAt: !1452)
!1452 = distinct !DILocation(line: 622, column: 17, scope: !1199)
!1453 = !DILocation(line: 59, column: 10, scope: !1445, inlinedAt: !1452)
!1454 = !DILocation(line: 626, column: 29, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1199, file: !134, line: 626, column: 21)
!1456 = !DILocation(line: 626, column: 21, scope: !1199)
!1457 = !DILocation(line: 627, column: 29, scope: !1455)
!1458 = !DILocation(line: 627, column: 19, scope: !1455)
!1459 = !DILocation(line: 629, column: 17, scope: !1199)
!1460 = !DILocation(line: 624, column: 19, scope: !1199)
!1461 = !DILocation(line: 625, column: 27, scope: !1199)
!1462 = !DILocation(line: 631, column: 21, scope: !1215)
!1463 = !DILocation(line: 632, column: 56, scope: !1215)
!1464 = !DILocation(line: 632, column: 50, scope: !1215)
!1465 = !DILocation(line: 633, column: 53, scope: !1215)
!1466 = !DILocation(line: 0, scope: !1215)
!1467 = !DILocation(line: 632, column: 36, scope: !1215)
!1468 = !DILocation(line: 634, column: 25, scope: !1215)
!1469 = !DILocation(line: 644, column: 38, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1222, file: !134, line: 642, column: 23)
!1471 = !DILocation(line: 644, column: 48, scope: !1470)
!1472 = !DILocation(line: 644, column: 25, scope: !1470)
!1473 = !DILocation(line: 644, column: 51, scope: !1470)
!1474 = !DILocation(line: 645, column: 28, scope: !1470)
!1475 = !DILocation(line: 644, column: 34, scope: !1470)
!1476 = distinct !{!1476, !1472, !1474, !719}
!1477 = !DILocation(line: 655, column: 29, scope: !1220)
!1478 = !DILocation(line: 0, scope: !1219)
!1479 = !DILocation(line: 659, column: 49, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !134, line: 658, column: 29)
!1481 = distinct !DILexicalBlock(scope: !1219, file: !134, line: 658, column: 29)
!1482 = !DILocation(line: 659, column: 39, scope: !1480)
!1483 = !DILocation(line: 659, column: 31, scope: !1480)
!1484 = !DILocation(line: 658, column: 53, scope: !1480)
!1485 = !DILocation(line: 658, column: 43, scope: !1480)
!1486 = !DILocation(line: 658, column: 29, scope: !1481)
!1487 = distinct !{!1487, !1486, !1488, !719}
!1488 = !DILocation(line: 667, column: 33, scope: !1481)
!1489 = !DILocation(line: 674, column: 19, scope: !1199)
!1490 = !DILocation(line: 670, column: 41, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1221, file: !134, line: 670, column: 29)
!1492 = !DILocation(line: 670, column: 31, scope: !1491)
!1493 = !DILocation(line: 670, column: 29, scope: !1221)
!1494 = !DILocation(line: 672, column: 27, scope: !1221)
!1495 = !DILocation(line: 675, column: 26, scope: !1199)
!1496 = !DILocation(line: 675, column: 24, scope: !1199)
!1497 = !DILocation(line: 674, column: 19, scope: !1215)
!1498 = distinct !{!1498, !1459, !1499, !719}
!1499 = !DILocation(line: 675, column: 44, scope: !1199)
!1500 = !DILocation(line: 676, column: 15, scope: !1200)
!1501 = !DILocation(line: 680, column: 19, scope: !1227)
!1502 = !DILocation(line: 680, column: 45, scope: !1227)
!1503 = !DILocation(line: 684, column: 33, scope: !1226)
!1504 = !DILocation(line: 0, scope: !1226)
!1505 = !DILocation(line: 686, column: 17, scope: !1226)
!1506 = !DILocation(line: 405, column: 12, scope: !1187)
!1507 = !DILocation(line: 688, column: 43, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !134, line: 688, column: 25)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !134, line: 687, column: 19)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !134, line: 686, column: 17)
!1511 = distinct !DILexicalBlock(scope: !1226, file: !134, line: 686, column: 17)
!1512 = !DILocation(line: 690, column: 25, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !134, line: 690, column: 25)
!1514 = distinct !DILexicalBlock(scope: !1508, file: !134, line: 689, column: 23)
!1515 = !DILocation(line: 690, column: 25, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1513, file: !134, line: 690, column: 25)
!1517 = !DILocation(line: 690, column: 25, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !134, line: 690, column: 25)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !134, line: 690, column: 25)
!1520 = distinct !DILexicalBlock(scope: !1516, file: !134, line: 690, column: 25)
!1521 = !DILocation(line: 690, column: 25, scope: !1519)
!1522 = !DILocation(line: 690, column: 25, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !134, line: 690, column: 25)
!1524 = distinct !DILexicalBlock(scope: !1520, file: !134, line: 690, column: 25)
!1525 = !DILocation(line: 690, column: 25, scope: !1524)
!1526 = !DILocation(line: 690, column: 25, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !134, line: 690, column: 25)
!1528 = distinct !DILexicalBlock(scope: !1520, file: !134, line: 690, column: 25)
!1529 = !DILocation(line: 690, column: 25, scope: !1528)
!1530 = !DILocation(line: 690, column: 25, scope: !1520)
!1531 = !DILocation(line: 690, column: 25, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !134, line: 690, column: 25)
!1533 = distinct !DILexicalBlock(scope: !1513, file: !134, line: 690, column: 25)
!1534 = !DILocation(line: 690, column: 25, scope: !1533)
!1535 = !DILocation(line: 691, column: 25, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !134, line: 691, column: 25)
!1537 = distinct !DILexicalBlock(scope: !1514, file: !134, line: 691, column: 25)
!1538 = !DILocation(line: 691, column: 25, scope: !1537)
!1539 = !DILocation(line: 692, column: 25, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !134, line: 692, column: 25)
!1541 = distinct !DILexicalBlock(scope: !1514, file: !134, line: 692, column: 25)
!1542 = !DILocation(line: 692, column: 25, scope: !1541)
!1543 = !DILocation(line: 693, column: 38, scope: !1514)
!1544 = !DILocation(line: 693, column: 33, scope: !1514)
!1545 = !DILocation(line: 694, column: 23, scope: !1514)
!1546 = !DILocation(line: 695, column: 30, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1508, file: !134, line: 695, column: 30)
!1548 = !DILocation(line: 695, column: 30, scope: !1508)
!1549 = !DILocation(line: 697, column: 25, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !134, line: 697, column: 25)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !134, line: 697, column: 25)
!1552 = distinct !DILexicalBlock(scope: !1547, file: !134, line: 696, column: 23)
!1553 = !DILocation(line: 697, column: 25, scope: !1551)
!1554 = !DILocation(line: 699, column: 23, scope: !1552)
!1555 = !DILocation(line: 700, column: 35, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1509, file: !134, line: 700, column: 25)
!1557 = !DILocation(line: 700, column: 30, scope: !1556)
!1558 = !DILocation(line: 700, column: 25, scope: !1509)
!1559 = !DILocation(line: 702, column: 21, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !134, line: 702, column: 21)
!1561 = distinct !DILexicalBlock(scope: !1509, file: !134, line: 702, column: 21)
!1562 = !DILocation(line: 702, column: 21, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !134, line: 702, column: 21)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !134, line: 702, column: 21)
!1565 = distinct !DILexicalBlock(scope: !1560, file: !134, line: 702, column: 21)
!1566 = !DILocation(line: 702, column: 21, scope: !1564)
!1567 = !DILocation(line: 702, column: 21, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !134, line: 702, column: 21)
!1569 = distinct !DILexicalBlock(scope: !1565, file: !134, line: 702, column: 21)
!1570 = !DILocation(line: 702, column: 21, scope: !1569)
!1571 = !DILocation(line: 702, column: 21, scope: !1565)
!1572 = !DILocation(line: 0, scope: !1509)
!1573 = !DILocation(line: 703, column: 21, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !134, line: 703, column: 21)
!1575 = distinct !DILexicalBlock(scope: !1509, file: !134, line: 703, column: 21)
!1576 = !DILocation(line: 703, column: 21, scope: !1575)
!1577 = !DILocation(line: 704, column: 25, scope: !1509)
!1578 = !DILocation(line: 686, column: 17, scope: !1510)
!1579 = distinct !{!1579, !1580, !1581}
!1580 = !DILocation(line: 686, column: 17, scope: !1511)
!1581 = !DILocation(line: 705, column: 19, scope: !1511)
!1582 = !DILocation(line: 416, column: 30, scope: !1303)
!1583 = !DILocation(line: 712, column: 34, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1187, file: !134, line: 712, column: 11)
!1585 = !DILocation(line: 715, column: 35, scope: !1584)
!1586 = !DILocation(line: 715, column: 17, scope: !1584)
!1587 = !DILocation(line: 715, column: 47, scope: !1584)
!1588 = !DILocation(line: 715, column: 65, scope: !1584)
!1589 = !DILocation(line: 716, column: 11, scope: !1584)
!1590 = !DILocation(line: 712, column: 11, scope: !1187)
!1591 = !DILocation(line: 400, column: 10, scope: !1189)
!1592 = !DILocation(line: 719, column: 5, scope: !1187)
!1593 = !DILocation(line: 720, column: 7, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1187, file: !134, line: 720, column: 7)
!1595 = !DILocation(line: 720, column: 7, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1594, file: !134, line: 720, column: 7)
!1597 = !DILocation(line: 720, column: 7, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !134, line: 720, column: 7)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !134, line: 720, column: 7)
!1600 = distinct !DILexicalBlock(scope: !1596, file: !134, line: 720, column: 7)
!1601 = !DILocation(line: 720, column: 7, scope: !1599)
!1602 = !DILocation(line: 720, column: 7, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !134, line: 720, column: 7)
!1604 = distinct !DILexicalBlock(scope: !1600, file: !134, line: 720, column: 7)
!1605 = !DILocation(line: 720, column: 7, scope: !1604)
!1606 = !DILocation(line: 720, column: 7, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !134, line: 720, column: 7)
!1608 = distinct !DILexicalBlock(scope: !1600, file: !134, line: 720, column: 7)
!1609 = !DILocation(line: 720, column: 7, scope: !1608)
!1610 = !DILocation(line: 720, column: 7, scope: !1600)
!1611 = !DILocation(line: 720, column: 7, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !134, line: 720, column: 7)
!1613 = distinct !DILexicalBlock(scope: !1594, file: !134, line: 720, column: 7)
!1614 = !DILocation(line: 720, column: 7, scope: !1613)
!1615 = !DILocation(line: 722, column: 5, scope: !1187)
!1616 = !DILocation(line: 723, column: 7, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !134, line: 723, column: 7)
!1618 = distinct !DILexicalBlock(scope: !1187, file: !134, line: 723, column: 7)
!1619 = !DILocation(line: 424, column: 9, scope: !1187)
!1620 = !DILocation(line: 723, column: 7, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !134, line: 723, column: 7)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !134, line: 723, column: 7)
!1623 = distinct !DILexicalBlock(scope: !1617, file: !134, line: 723, column: 7)
!1624 = !DILocation(line: 723, column: 7, scope: !1622)
!1625 = !DILocation(line: 723, column: 7, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !134, line: 723, column: 7)
!1627 = distinct !DILexicalBlock(scope: !1623, file: !134, line: 723, column: 7)
!1628 = !DILocation(line: 723, column: 7, scope: !1627)
!1629 = !DILocation(line: 723, column: 7, scope: !1623)
!1630 = !DILocation(line: 724, column: 7, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !134, line: 724, column: 7)
!1632 = distinct !DILexicalBlock(scope: !1187, file: !134, line: 724, column: 7)
!1633 = !DILocation(line: 724, column: 7, scope: !1632)
!1634 = !DILocation(line: 726, column: 13, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1187, file: !134, line: 726, column: 11)
!1636 = !DILocation(line: 726, column: 11, scope: !1187)
!1637 = !DILocation(line: 728, column: 5, scope: !1188)
!1638 = !DILocation(line: 400, column: 75, scope: !1188)
!1639 = !DILocation(line: 400, column: 3, scope: !1188)
!1640 = distinct !{!1640, !1299, !1641, !719}
!1641 = !DILocation(line: 728, column: 5, scope: !1189)
!1642 = !DILocation(line: 730, column: 11, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1160, file: !134, line: 730, column: 7)
!1644 = !DILocation(line: 730, column: 16, scope: !1643)
!1645 = !DILocation(line: 738, column: 51, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1160, file: !134, line: 738, column: 7)
!1647 = !DILocation(line: 741, column: 11, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !134, line: 741, column: 11)
!1649 = distinct !DILexicalBlock(scope: !1646, file: !134, line: 740, column: 5)
!1650 = !DILocation(line: 741, column: 11, scope: !1649)
!1651 = !DILocation(line: 742, column: 16, scope: !1648)
!1652 = !DILocation(line: 742, column: 9, scope: !1648)
!1653 = !DILocation(line: 746, column: 18, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1648, file: !134, line: 746, column: 16)
!1655 = !DILocation(line: 746, column: 29, scope: !1654)
!1656 = !DILocation(line: 755, column: 7, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1160, file: !134, line: 755, column: 7)
!1658 = !DILocation(line: 755, column: 20, scope: !1657)
!1659 = !DILocation(line: 756, column: 12, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !134, line: 756, column: 5)
!1661 = distinct !DILexicalBlock(scope: !1657, file: !134, line: 756, column: 5)
!1662 = !DILocation(line: 756, column: 5, scope: !1661)
!1663 = !DILocation(line: 757, column: 7, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !134, line: 757, column: 7)
!1665 = distinct !DILexicalBlock(scope: !1660, file: !134, line: 757, column: 7)
!1666 = !DILocation(line: 757, column: 7, scope: !1665)
!1667 = !DILocation(line: 756, column: 39, scope: !1660)
!1668 = distinct !{!1668, !1662, !1669, !719}
!1669 = !DILocation(line: 757, column: 7, scope: !1661)
!1670 = !DILocation(line: 759, column: 11, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1160, file: !134, line: 759, column: 7)
!1672 = !DILocation(line: 759, column: 7, scope: !1160)
!1673 = !DILocation(line: 760, column: 5, scope: !1671)
!1674 = !DILocation(line: 760, column: 17, scope: !1671)
!1675 = !DILocation(line: 763, column: 2, scope: !1160)
!1676 = !DILocation(line: 766, column: 51, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1160, file: !134, line: 766, column: 7)
!1678 = !DILocation(line: 766, column: 21, scope: !1677)
!1679 = !DILocation(line: 770, column: 42, scope: !1160)
!1680 = !DILocation(line: 768, column: 10, scope: !1160)
!1681 = !DILocation(line: 768, column: 3, scope: !1160)
!1682 = !DILocation(line: 772, column: 1, scope: !1160)
!1683 = distinct !DISubprogram(name: "gettext_quote", scope: !134, file: !134, line: 207, type: !1684, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !1686)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!12, !12, !136}
!1686 = !{!1687, !1688, !1689, !1690}
!1687 = !DILocalVariable(name: "msgid", arg: 1, scope: !1683, file: !134, line: 207, type: !12)
!1688 = !DILocalVariable(name: "s", arg: 2, scope: !1683, file: !134, line: 207, type: !136)
!1689 = !DILocalVariable(name: "translation", scope: !1683, file: !134, line: 209, type: !12)
!1690 = !DILocalVariable(name: "locale_code", scope: !1683, file: !134, line: 210, type: !12)
!1691 = !DILocation(line: 0, scope: !1683)
!1692 = !DILocation(line: 209, column: 29, scope: !1683)
!1693 = !DILocation(line: 212, column: 19, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1683, file: !134, line: 212, column: 7)
!1695 = !DILocation(line: 212, column: 7, scope: !1683)
!1696 = !DILocation(line: 233, column: 17, scope: !1683)
!1697 = !DILocalVariable(name: "s1", arg: 1, scope: !1698, file: !1699, line: 160, type: !12)
!1698 = distinct !DISubprogram(name: "strcaseeq0", scope: !1699, file: !1699, line: 160, type: !1700, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !1702)
!1699 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!21, !12, !12, !7, !7, !7, !7, !7, !7, !7, !7, !7}
!1702 = !{!1697, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712}
!1703 = !DILocalVariable(name: "s2", arg: 2, scope: !1698, file: !1699, line: 160, type: !12)
!1704 = !DILocalVariable(name: "s20", arg: 3, scope: !1698, file: !1699, line: 160, type: !7)
!1705 = !DILocalVariable(name: "s21", arg: 4, scope: !1698, file: !1699, line: 160, type: !7)
!1706 = !DILocalVariable(name: "s22", arg: 5, scope: !1698, file: !1699, line: 160, type: !7)
!1707 = !DILocalVariable(name: "s23", arg: 6, scope: !1698, file: !1699, line: 160, type: !7)
!1708 = !DILocalVariable(name: "s24", arg: 7, scope: !1698, file: !1699, line: 160, type: !7)
!1709 = !DILocalVariable(name: "s25", arg: 8, scope: !1698, file: !1699, line: 160, type: !7)
!1710 = !DILocalVariable(name: "s26", arg: 9, scope: !1698, file: !1699, line: 160, type: !7)
!1711 = !DILocalVariable(name: "s27", arg: 10, scope: !1698, file: !1699, line: 160, type: !7)
!1712 = !DILocalVariable(name: "s28", arg: 11, scope: !1698, file: !1699, line: 160, type: !7)
!1713 = !DILocation(line: 0, scope: !1698, inlinedAt: !1714)
!1714 = distinct !DILocation(line: 234, column: 7, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1683, file: !134, line: 234, column: 7)
!1716 = !DILocation(line: 162, column: 7, scope: !1717, inlinedAt: !1714)
!1717 = distinct !DILexicalBlock(scope: !1698, file: !1699, line: 162, column: 7)
!1718 = !DILocalVariable(name: "s1", arg: 1, scope: !1719, file: !1699, line: 146, type: !12)
!1719 = distinct !DISubprogram(name: "strcaseeq1", scope: !1699, file: !1699, line: 146, type: !1720, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !1722)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!21, !12, !12, !7, !7, !7, !7, !7, !7, !7, !7}
!1722 = !{!1718, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731}
!1723 = !DILocalVariable(name: "s2", arg: 2, scope: !1719, file: !1699, line: 146, type: !12)
!1724 = !DILocalVariable(name: "s21", arg: 3, scope: !1719, file: !1699, line: 146, type: !7)
!1725 = !DILocalVariable(name: "s22", arg: 4, scope: !1719, file: !1699, line: 146, type: !7)
!1726 = !DILocalVariable(name: "s23", arg: 5, scope: !1719, file: !1699, line: 146, type: !7)
!1727 = !DILocalVariable(name: "s24", arg: 6, scope: !1719, file: !1699, line: 146, type: !7)
!1728 = !DILocalVariable(name: "s25", arg: 7, scope: !1719, file: !1699, line: 146, type: !7)
!1729 = !DILocalVariable(name: "s26", arg: 8, scope: !1719, file: !1699, line: 146, type: !7)
!1730 = !DILocalVariable(name: "s27", arg: 9, scope: !1719, file: !1699, line: 146, type: !7)
!1731 = !DILocalVariable(name: "s28", arg: 10, scope: !1719, file: !1699, line: 146, type: !7)
!1732 = !DILocation(line: 0, scope: !1719, inlinedAt: !1733)
!1733 = distinct !DILocation(line: 167, column: 16, scope: !1734, inlinedAt: !1714)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !1699, line: 164, column: 11)
!1735 = distinct !DILexicalBlock(scope: !1717, file: !1699, line: 163, column: 5)
!1736 = !DILocation(line: 148, column: 7, scope: !1737, inlinedAt: !1733)
!1737 = distinct !DILexicalBlock(scope: !1719, file: !1699, line: 148, column: 7)
!1738 = !DILocalVariable(name: "s1", arg: 1, scope: !1739, file: !1699, line: 132, type: !12)
!1739 = distinct !DISubprogram(name: "strcaseeq2", scope: !1699, file: !1699, line: 132, type: !1740, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !1742)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!21, !12, !12, !7, !7, !7, !7, !7, !7, !7}
!1742 = !{!1738, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750}
!1743 = !DILocalVariable(name: "s2", arg: 2, scope: !1739, file: !1699, line: 132, type: !12)
!1744 = !DILocalVariable(name: "s22", arg: 3, scope: !1739, file: !1699, line: 132, type: !7)
!1745 = !DILocalVariable(name: "s23", arg: 4, scope: !1739, file: !1699, line: 132, type: !7)
!1746 = !DILocalVariable(name: "s24", arg: 5, scope: !1739, file: !1699, line: 132, type: !7)
!1747 = !DILocalVariable(name: "s25", arg: 6, scope: !1739, file: !1699, line: 132, type: !7)
!1748 = !DILocalVariable(name: "s26", arg: 7, scope: !1739, file: !1699, line: 132, type: !7)
!1749 = !DILocalVariable(name: "s27", arg: 8, scope: !1739, file: !1699, line: 132, type: !7)
!1750 = !DILocalVariable(name: "s28", arg: 9, scope: !1739, file: !1699, line: 132, type: !7)
!1751 = !DILocation(line: 0, scope: !1739, inlinedAt: !1752)
!1752 = distinct !DILocation(line: 153, column: 16, scope: !1753, inlinedAt: !1733)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !1699, line: 150, column: 11)
!1754 = distinct !DILexicalBlock(scope: !1737, file: !1699, line: 149, column: 5)
!1755 = !DILocation(line: 134, column: 7, scope: !1756, inlinedAt: !1752)
!1756 = distinct !DILexicalBlock(scope: !1739, file: !1699, line: 134, column: 7)
!1757 = !DILocalVariable(name: "s1", arg: 1, scope: !1758, file: !1699, line: 118, type: !12)
!1758 = distinct !DISubprogram(name: "strcaseeq3", scope: !1699, file: !1699, line: 118, type: !1759, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !1761)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!21, !12, !12, !7, !7, !7, !7, !7, !7}
!1761 = !{!1757, !1762, !1763, !1764, !1765, !1766, !1767, !1768}
!1762 = !DILocalVariable(name: "s2", arg: 2, scope: !1758, file: !1699, line: 118, type: !12)
!1763 = !DILocalVariable(name: "s23", arg: 3, scope: !1758, file: !1699, line: 118, type: !7)
!1764 = !DILocalVariable(name: "s24", arg: 4, scope: !1758, file: !1699, line: 118, type: !7)
!1765 = !DILocalVariable(name: "s25", arg: 5, scope: !1758, file: !1699, line: 118, type: !7)
!1766 = !DILocalVariable(name: "s26", arg: 6, scope: !1758, file: !1699, line: 118, type: !7)
!1767 = !DILocalVariable(name: "s27", arg: 7, scope: !1758, file: !1699, line: 118, type: !7)
!1768 = !DILocalVariable(name: "s28", arg: 8, scope: !1758, file: !1699, line: 118, type: !7)
!1769 = !DILocation(line: 0, scope: !1758, inlinedAt: !1770)
!1770 = distinct !DILocation(line: 139, column: 16, scope: !1771, inlinedAt: !1752)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !1699, line: 136, column: 11)
!1772 = distinct !DILexicalBlock(scope: !1756, file: !1699, line: 135, column: 5)
!1773 = !DILocation(line: 120, column: 7, scope: !1774, inlinedAt: !1770)
!1774 = distinct !DILexicalBlock(scope: !1758, file: !1699, line: 120, column: 7)
!1775 = !DILocation(line: 120, column: 7, scope: !1758, inlinedAt: !1770)
!1776 = !DILocalVariable(name: "s1", arg: 1, scope: !1777, file: !1699, line: 104, type: !12)
!1777 = distinct !DISubprogram(name: "strcaseeq4", scope: !1699, file: !1699, line: 104, type: !1778, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !1780)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!21, !12, !12, !7, !7, !7, !7, !7}
!1780 = !{!1776, !1781, !1782, !1783, !1784, !1785, !1786}
!1781 = !DILocalVariable(name: "s2", arg: 2, scope: !1777, file: !1699, line: 104, type: !12)
!1782 = !DILocalVariable(name: "s24", arg: 3, scope: !1777, file: !1699, line: 104, type: !7)
!1783 = !DILocalVariable(name: "s25", arg: 4, scope: !1777, file: !1699, line: 104, type: !7)
!1784 = !DILocalVariable(name: "s26", arg: 5, scope: !1777, file: !1699, line: 104, type: !7)
!1785 = !DILocalVariable(name: "s27", arg: 6, scope: !1777, file: !1699, line: 104, type: !7)
!1786 = !DILocalVariable(name: "s28", arg: 7, scope: !1777, file: !1699, line: 104, type: !7)
!1787 = !DILocation(line: 0, scope: !1777, inlinedAt: !1788)
!1788 = distinct !DILocation(line: 125, column: 16, scope: !1789, inlinedAt: !1770)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !1699, line: 122, column: 11)
!1790 = distinct !DILexicalBlock(scope: !1774, file: !1699, line: 121, column: 5)
!1791 = !DILocation(line: 106, column: 7, scope: !1792, inlinedAt: !1788)
!1792 = distinct !DILexicalBlock(scope: !1777, file: !1699, line: 106, column: 7)
!1793 = !DILocation(line: 106, column: 7, scope: !1777, inlinedAt: !1788)
!1794 = !DILocalVariable(name: "s1", arg: 1, scope: !1795, file: !1699, line: 90, type: !12)
!1795 = distinct !DISubprogram(name: "strcaseeq5", scope: !1699, file: !1699, line: 90, type: !1796, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !1798)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!21, !12, !12, !7, !7, !7, !7}
!1798 = !{!1794, !1799, !1800, !1801, !1802, !1803}
!1799 = !DILocalVariable(name: "s2", arg: 2, scope: !1795, file: !1699, line: 90, type: !12)
!1800 = !DILocalVariable(name: "s25", arg: 3, scope: !1795, file: !1699, line: 90, type: !7)
!1801 = !DILocalVariable(name: "s26", arg: 4, scope: !1795, file: !1699, line: 90, type: !7)
!1802 = !DILocalVariable(name: "s27", arg: 5, scope: !1795, file: !1699, line: 90, type: !7)
!1803 = !DILocalVariable(name: "s28", arg: 6, scope: !1795, file: !1699, line: 90, type: !7)
!1804 = !DILocation(line: 0, scope: !1795, inlinedAt: !1805)
!1805 = distinct !DILocation(line: 111, column: 16, scope: !1806, inlinedAt: !1788)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !1699, line: 108, column: 11)
!1807 = distinct !DILexicalBlock(scope: !1792, file: !1699, line: 107, column: 5)
!1808 = !DILocation(line: 92, column: 7, scope: !1809, inlinedAt: !1805)
!1809 = distinct !DILexicalBlock(scope: !1795, file: !1699, line: 92, column: 7)
!1810 = !DILocation(line: 92, column: 7, scope: !1795, inlinedAt: !1805)
!1811 = !DILocation(line: 235, column: 12, scope: !1715)
!1812 = !DILocation(line: 235, column: 21, scope: !1715)
!1813 = !DILocation(line: 235, column: 5, scope: !1715)
!1814 = !DILocation(line: 0, scope: !1719, inlinedAt: !1815)
!1815 = distinct !DILocation(line: 167, column: 16, scope: !1734, inlinedAt: !1816)
!1816 = distinct !DILocation(line: 236, column: 7, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1683, file: !134, line: 236, column: 7)
!1818 = !DILocation(line: 148, column: 7, scope: !1737, inlinedAt: !1815)
!1819 = !DILocation(line: 0, scope: !1739, inlinedAt: !1820)
!1820 = distinct !DILocation(line: 153, column: 16, scope: !1753, inlinedAt: !1815)
!1821 = !DILocation(line: 134, column: 7, scope: !1756, inlinedAt: !1820)
!1822 = !DILocation(line: 134, column: 7, scope: !1739, inlinedAt: !1820)
!1823 = !DILocation(line: 0, scope: !1758, inlinedAt: !1824)
!1824 = distinct !DILocation(line: 139, column: 16, scope: !1771, inlinedAt: !1820)
!1825 = !DILocation(line: 120, column: 7, scope: !1774, inlinedAt: !1824)
!1826 = !DILocation(line: 120, column: 7, scope: !1758, inlinedAt: !1824)
!1827 = !DILocation(line: 0, scope: !1777, inlinedAt: !1828)
!1828 = distinct !DILocation(line: 125, column: 16, scope: !1789, inlinedAt: !1824)
!1829 = !DILocation(line: 106, column: 7, scope: !1792, inlinedAt: !1828)
!1830 = !DILocation(line: 106, column: 7, scope: !1777, inlinedAt: !1828)
!1831 = !DILocation(line: 0, scope: !1795, inlinedAt: !1832)
!1832 = distinct !DILocation(line: 111, column: 16, scope: !1806, inlinedAt: !1828)
!1833 = !DILocation(line: 92, column: 7, scope: !1809, inlinedAt: !1832)
!1834 = !DILocation(line: 92, column: 7, scope: !1795, inlinedAt: !1832)
!1835 = !DILocalVariable(name: "s1", arg: 1, scope: !1836, file: !1699, line: 76, type: !12)
!1836 = distinct !DISubprogram(name: "strcaseeq6", scope: !1699, file: !1699, line: 76, type: !1837, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !1839)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!21, !12, !12, !7, !7, !7}
!1839 = !{!1835, !1840, !1841, !1842, !1843}
!1840 = !DILocalVariable(name: "s2", arg: 2, scope: !1836, file: !1699, line: 76, type: !12)
!1841 = !DILocalVariable(name: "s26", arg: 3, scope: !1836, file: !1699, line: 76, type: !7)
!1842 = !DILocalVariable(name: "s27", arg: 4, scope: !1836, file: !1699, line: 76, type: !7)
!1843 = !DILocalVariable(name: "s28", arg: 5, scope: !1836, file: !1699, line: 76, type: !7)
!1844 = !DILocation(line: 0, scope: !1836, inlinedAt: !1845)
!1845 = distinct !DILocation(line: 97, column: 16, scope: !1846, inlinedAt: !1832)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !1699, line: 94, column: 11)
!1847 = distinct !DILexicalBlock(scope: !1809, file: !1699, line: 93, column: 5)
!1848 = !DILocation(line: 78, column: 7, scope: !1849, inlinedAt: !1845)
!1849 = distinct !DILexicalBlock(scope: !1836, file: !1699, line: 78, column: 7)
!1850 = !DILocation(line: 78, column: 7, scope: !1836, inlinedAt: !1845)
!1851 = !DILocalVariable(name: "s1", arg: 1, scope: !1852, file: !1699, line: 62, type: !12)
!1852 = distinct !DISubprogram(name: "strcaseeq7", scope: !1699, file: !1699, line: 62, type: !1853, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !1855)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!21, !12, !12, !7, !7}
!1855 = !{!1851, !1856, !1857, !1858}
!1856 = !DILocalVariable(name: "s2", arg: 2, scope: !1852, file: !1699, line: 62, type: !12)
!1857 = !DILocalVariable(name: "s27", arg: 3, scope: !1852, file: !1699, line: 62, type: !7)
!1858 = !DILocalVariable(name: "s28", arg: 4, scope: !1852, file: !1699, line: 62, type: !7)
!1859 = !DILocation(line: 0, scope: !1852, inlinedAt: !1860)
!1860 = distinct !DILocation(line: 83, column: 16, scope: !1861, inlinedAt: !1845)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !1699, line: 80, column: 11)
!1862 = distinct !DILexicalBlock(scope: !1849, file: !1699, line: 79, column: 5)
!1863 = !DILocation(line: 64, column: 7, scope: !1864, inlinedAt: !1860)
!1864 = distinct !DILexicalBlock(scope: !1852, file: !1699, line: 64, column: 7)
!1865 = !DILocation(line: 236, column: 7, scope: !1683)
!1866 = !DILocation(line: 237, column: 12, scope: !1817)
!1867 = !DILocation(line: 237, column: 21, scope: !1817)
!1868 = !DILocation(line: 237, column: 5, scope: !1817)
!1869 = !DILocation(line: 239, column: 13, scope: !1683)
!1870 = !DILocation(line: 239, column: 11, scope: !1683)
!1871 = !DILocation(line: 239, column: 3, scope: !1683)
!1872 = !DILocation(line: 240, column: 1, scope: !1683)
!1873 = !DISubprogram(name: "iswprint", scope: !1874, file: !1874, line: 120, type: !1875, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1874 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!21, !138}
!1877 = !DISubprogram(name: "mbsinit", scope: !1878, file: !1878, line: 292, type: !1879, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1878 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!21, !1881}
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1205)
!1883 = distinct !DISubprogram(name: "quotearg_alloc", scope: !134, file: !134, line: 799, type: !1884, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !1886)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!6, !12, !9, !1052}
!1886 = !{!1887, !1888, !1889}
!1887 = !DILocalVariable(name: "arg", arg: 1, scope: !1883, file: !134, line: 799, type: !12)
!1888 = !DILocalVariable(name: "argsize", arg: 2, scope: !1883, file: !134, line: 799, type: !9)
!1889 = !DILocalVariable(name: "o", arg: 3, scope: !1883, file: !134, line: 800, type: !1052)
!1890 = !DILocation(line: 0, scope: !1883)
!1891 = !DILocalVariable(name: "arg", arg: 1, scope: !1892, file: !134, line: 812, type: !12)
!1892 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !134, file: !134, line: 812, type: !1893, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !1895)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{!6, !12, !9, !241, !1052}
!1895 = !{!1891, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903}
!1896 = !DILocalVariable(name: "argsize", arg: 2, scope: !1892, file: !134, line: 812, type: !9)
!1897 = !DILocalVariable(name: "size", arg: 3, scope: !1892, file: !134, line: 812, type: !241)
!1898 = !DILocalVariable(name: "o", arg: 4, scope: !1892, file: !134, line: 813, type: !1052)
!1899 = !DILocalVariable(name: "p", scope: !1892, file: !134, line: 815, type: !1052)
!1900 = !DILocalVariable(name: "e", scope: !1892, file: !134, line: 816, type: !21)
!1901 = !DILocalVariable(name: "flags", scope: !1892, file: !134, line: 818, type: !21)
!1902 = !DILocalVariable(name: "bufsize", scope: !1892, file: !134, line: 819, type: !9)
!1903 = !DILocalVariable(name: "buf", scope: !1892, file: !134, line: 823, type: !6)
!1904 = !DILocation(line: 0, scope: !1892, inlinedAt: !1905)
!1905 = distinct !DILocation(line: 802, column: 10, scope: !1883)
!1906 = !DILocation(line: 815, column: 37, scope: !1892, inlinedAt: !1905)
!1907 = !DILocation(line: 816, column: 11, scope: !1892, inlinedAt: !1905)
!1908 = !DILocation(line: 818, column: 18, scope: !1892, inlinedAt: !1905)
!1909 = !DILocation(line: 818, column: 24, scope: !1892, inlinedAt: !1905)
!1910 = !DILocation(line: 819, column: 69, scope: !1892, inlinedAt: !1905)
!1911 = !DILocation(line: 820, column: 53, scope: !1892, inlinedAt: !1905)
!1912 = !DILocation(line: 821, column: 49, scope: !1892, inlinedAt: !1905)
!1913 = !DILocation(line: 822, column: 49, scope: !1892, inlinedAt: !1905)
!1914 = !DILocation(line: 819, column: 20, scope: !1892, inlinedAt: !1905)
!1915 = !DILocation(line: 822, column: 62, scope: !1892, inlinedAt: !1905)
!1916 = !DILocalVariable(name: "n", arg: 1, scope: !1917, file: !237, line: 216, type: !9)
!1917 = distinct !DISubprogram(name: "xcharalloc", scope: !237, file: !237, line: 216, type: !1918, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !1920)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!6, !9}
!1920 = !{!1916}
!1921 = !DILocation(line: 0, scope: !1917, inlinedAt: !1922)
!1922 = distinct !DILocation(line: 823, column: 15, scope: !1892, inlinedAt: !1905)
!1923 = !DILocation(line: 218, column: 10, scope: !1917, inlinedAt: !1922)
!1924 = !DILocation(line: 824, column: 60, scope: !1892, inlinedAt: !1905)
!1925 = !DILocation(line: 826, column: 32, scope: !1892, inlinedAt: !1905)
!1926 = !DILocation(line: 826, column: 47, scope: !1892, inlinedAt: !1905)
!1927 = !DILocation(line: 824, column: 3, scope: !1892, inlinedAt: !1905)
!1928 = !DILocation(line: 827, column: 9, scope: !1892, inlinedAt: !1905)
!1929 = !DILocation(line: 802, column: 3, scope: !1883)
!1930 = !DILocation(line: 0, scope: !1892)
!1931 = !DILocation(line: 815, column: 37, scope: !1892)
!1932 = !DILocation(line: 816, column: 11, scope: !1892)
!1933 = !DILocation(line: 818, column: 18, scope: !1892)
!1934 = !DILocation(line: 818, column: 27, scope: !1892)
!1935 = !DILocation(line: 818, column: 24, scope: !1892)
!1936 = !DILocation(line: 819, column: 69, scope: !1892)
!1937 = !DILocation(line: 820, column: 53, scope: !1892)
!1938 = !DILocation(line: 821, column: 49, scope: !1892)
!1939 = !DILocation(line: 822, column: 49, scope: !1892)
!1940 = !DILocation(line: 819, column: 20, scope: !1892)
!1941 = !DILocation(line: 822, column: 62, scope: !1892)
!1942 = !DILocation(line: 0, scope: !1917, inlinedAt: !1943)
!1943 = distinct !DILocation(line: 823, column: 15, scope: !1892)
!1944 = !DILocation(line: 218, column: 10, scope: !1917, inlinedAt: !1943)
!1945 = !DILocation(line: 824, column: 60, scope: !1892)
!1946 = !DILocation(line: 826, column: 32, scope: !1892)
!1947 = !DILocation(line: 826, column: 47, scope: !1892)
!1948 = !DILocation(line: 824, column: 3, scope: !1892)
!1949 = !DILocation(line: 827, column: 9, scope: !1892)
!1950 = !DILocation(line: 828, column: 7, scope: !1892)
!1951 = !DILocation(line: 829, column: 11, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1892, file: !134, line: 828, column: 7)
!1953 = !{!794, !794, i64 0}
!1954 = !DILocation(line: 829, column: 5, scope: !1952)
!1955 = !DILocation(line: 830, column: 3, scope: !1892)
!1956 = distinct !DISubprogram(name: "quotearg_free", scope: !134, file: !134, line: 848, type: !815, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !1957)
!1957 = !{!1958, !1959}
!1958 = !DILocalVariable(name: "sv", scope: !1956, file: !134, line: 850, type: !200)
!1959 = !DILocalVariable(name: "i", scope: !1956, file: !134, line: 851, type: !21)
!1960 = !DILocation(line: 850, column: 24, scope: !1956)
!1961 = !DILocation(line: 0, scope: !1956)
!1962 = !DILocation(line: 852, column: 19, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !134, line: 852, column: 3)
!1964 = distinct !DILexicalBlock(scope: !1956, file: !134, line: 852, column: 3)
!1965 = !DILocation(line: 852, column: 17, scope: !1963)
!1966 = !DILocation(line: 852, column: 3, scope: !1964)
!1967 = !DILocation(line: 853, column: 17, scope: !1963)
!1968 = !{!1969, !676, i64 8}
!1969 = !{!"slotvec", !794, i64 0, !676, i64 8}
!1970 = !DILocation(line: 853, column: 5, scope: !1963)
!1971 = !DILocation(line: 852, column: 28, scope: !1963)
!1972 = distinct !{!1972, !1966, !1973, !719}
!1973 = !DILocation(line: 853, column: 20, scope: !1964)
!1974 = !DILocation(line: 854, column: 13, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1956, file: !134, line: 854, column: 7)
!1976 = !DILocation(line: 854, column: 17, scope: !1975)
!1977 = !DILocation(line: 854, column: 7, scope: !1956)
!1978 = !DILocation(line: 856, column: 7, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1975, file: !134, line: 855, column: 5)
!1980 = !DILocation(line: 857, column: 21, scope: !1979)
!1981 = !{!1969, !794, i64 0}
!1982 = !DILocation(line: 858, column: 20, scope: !1979)
!1983 = !DILocation(line: 859, column: 5, scope: !1979)
!1984 = !DILocation(line: 860, column: 10, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1956, file: !134, line: 860, column: 7)
!1986 = !DILocation(line: 860, column: 7, scope: !1956)
!1987 = !DILocation(line: 862, column: 13, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1985, file: !134, line: 861, column: 5)
!1989 = !DILocation(line: 862, column: 7, scope: !1988)
!1990 = !DILocation(line: 863, column: 15, scope: !1988)
!1991 = !DILocation(line: 864, column: 5, scope: !1988)
!1992 = !DILocation(line: 865, column: 10, scope: !1956)
!1993 = !DILocation(line: 866, column: 1, scope: !1956)
!1994 = distinct !DISubprogram(name: "quotearg_n", scope: !134, file: !134, line: 931, type: !749, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !1995)
!1995 = !{!1996, !1997}
!1996 = !DILocalVariable(name: "n", arg: 1, scope: !1994, file: !134, line: 931, type: !21)
!1997 = !DILocalVariable(name: "arg", arg: 2, scope: !1994, file: !134, line: 931, type: !12)
!1998 = !DILocation(line: 0, scope: !1994)
!1999 = !DILocation(line: 933, column: 10, scope: !1994)
!2000 = !DILocation(line: 933, column: 3, scope: !1994)
!2001 = distinct !DISubprogram(name: "quotearg_n_options", scope: !134, file: !134, line: 877, type: !2002, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !2004)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!6, !21, !12, !9, !1052}
!2004 = !{!2005, !2006, !2007, !2008, !2009, !2010, !2011, !2014, !2015, !2017, !2018, !2019}
!2005 = !DILocalVariable(name: "n", arg: 1, scope: !2001, file: !134, line: 877, type: !21)
!2006 = !DILocalVariable(name: "arg", arg: 2, scope: !2001, file: !134, line: 877, type: !12)
!2007 = !DILocalVariable(name: "argsize", arg: 3, scope: !2001, file: !134, line: 877, type: !9)
!2008 = !DILocalVariable(name: "options", arg: 4, scope: !2001, file: !134, line: 878, type: !1052)
!2009 = !DILocalVariable(name: "e", scope: !2001, file: !134, line: 880, type: !21)
!2010 = !DILocalVariable(name: "sv", scope: !2001, file: !134, line: 882, type: !200)
!2011 = !DILocalVariable(name: "preallocated", scope: !2012, file: !134, line: 889, type: !27)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !134, line: 888, column: 5)
!2013 = distinct !DILexicalBlock(scope: !2001, file: !134, line: 887, column: 7)
!2014 = !DILocalVariable(name: "nmax", scope: !2012, file: !134, line: 890, type: !21)
!2015 = !DILocalVariable(name: "size", scope: !2016, file: !134, line: 903, type: !9)
!2016 = distinct !DILexicalBlock(scope: !2001, file: !134, line: 902, column: 3)
!2017 = !DILocalVariable(name: "val", scope: !2016, file: !134, line: 904, type: !6)
!2018 = !DILocalVariable(name: "flags", scope: !2016, file: !134, line: 906, type: !21)
!2019 = !DILocalVariable(name: "qsize", scope: !2016, file: !134, line: 907, type: !9)
!2020 = !DILocation(line: 0, scope: !2001)
!2021 = !DILocation(line: 880, column: 11, scope: !2001)
!2022 = !DILocation(line: 882, column: 24, scope: !2001)
!2023 = !DILocation(line: 884, column: 9, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2001, file: !134, line: 884, column: 7)
!2025 = !DILocation(line: 884, column: 7, scope: !2001)
!2026 = !DILocation(line: 885, column: 5, scope: !2024)
!2027 = !DILocation(line: 887, column: 7, scope: !2013)
!2028 = !DILocation(line: 887, column: 14, scope: !2013)
!2029 = !DILocation(line: 887, column: 7, scope: !2001)
!2030 = !DILocation(line: 889, column: 31, scope: !2012)
!2031 = !DILocation(line: 0, scope: !2012)
!2032 = !DILocation(line: 892, column: 16, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2012, file: !134, line: 892, column: 11)
!2034 = !DILocation(line: 892, column: 11, scope: !2012)
!2035 = !DILocation(line: 893, column: 9, scope: !2033)
!2036 = !DILocation(line: 895, column: 32, scope: !2012)
!2037 = !DILocation(line: 895, column: 61, scope: !2012)
!2038 = !DILocation(line: 895, column: 66, scope: !2012)
!2039 = !DILocation(line: 895, column: 22, scope: !2012)
!2040 = !DILocation(line: 895, column: 15, scope: !2012)
!2041 = !DILocation(line: 896, column: 11, scope: !2012)
!2042 = !DILocation(line: 897, column: 15, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2012, file: !134, line: 896, column: 11)
!2044 = !{i64 0, i64 8, !1953, i64 8, i64 8, !675}
!2045 = !DILocation(line: 897, column: 9, scope: !2043)
!2046 = !DILocation(line: 898, column: 20, scope: !2012)
!2047 = !DILocation(line: 898, column: 18, scope: !2012)
!2048 = !DILocation(line: 898, column: 15, scope: !2012)
!2049 = !DILocation(line: 898, column: 38, scope: !2012)
!2050 = !DILocation(line: 898, column: 31, scope: !2012)
!2051 = !DILocation(line: 898, column: 48, scope: !2012)
!2052 = !DILocation(line: 0, scope: !1445, inlinedAt: !2053)
!2053 = distinct !DILocation(line: 898, column: 7, scope: !2012)
!2054 = !DILocation(line: 59, column: 10, scope: !1445, inlinedAt: !2053)
!2055 = !DILocation(line: 899, column: 14, scope: !2012)
!2056 = !DILocation(line: 900, column: 5, scope: !2012)
!2057 = !DILocation(line: 903, column: 19, scope: !2016)
!2058 = !DILocation(line: 903, column: 25, scope: !2016)
!2059 = !DILocation(line: 0, scope: !2016)
!2060 = !DILocation(line: 904, column: 23, scope: !2016)
!2061 = !DILocation(line: 906, column: 26, scope: !2016)
!2062 = !DILocation(line: 906, column: 32, scope: !2016)
!2063 = !DILocation(line: 908, column: 55, scope: !2016)
!2064 = !DILocation(line: 909, column: 46, scope: !2016)
!2065 = !DILocation(line: 910, column: 55, scope: !2016)
!2066 = !DILocation(line: 911, column: 55, scope: !2016)
!2067 = !DILocation(line: 907, column: 20, scope: !2016)
!2068 = !DILocation(line: 913, column: 14, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2016, file: !134, line: 913, column: 9)
!2070 = !DILocation(line: 913, column: 9, scope: !2016)
!2071 = !DILocation(line: 915, column: 35, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2069, file: !134, line: 914, column: 7)
!2073 = !DILocation(line: 915, column: 20, scope: !2072)
!2074 = !DILocation(line: 916, column: 17, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2072, file: !134, line: 916, column: 13)
!2076 = !DILocation(line: 916, column: 13, scope: !2072)
!2077 = !DILocation(line: 917, column: 11, scope: !2075)
!2078 = !DILocation(line: 0, scope: !1917, inlinedAt: !2079)
!2079 = distinct !DILocation(line: 918, column: 27, scope: !2072)
!2080 = !DILocation(line: 218, column: 10, scope: !1917, inlinedAt: !2079)
!2081 = !DILocation(line: 918, column: 19, scope: !2072)
!2082 = !DILocation(line: 919, column: 69, scope: !2072)
!2083 = !DILocation(line: 921, column: 44, scope: !2072)
!2084 = !DILocation(line: 922, column: 44, scope: !2072)
!2085 = !DILocation(line: 919, column: 9, scope: !2072)
!2086 = !DILocation(line: 923, column: 7, scope: !2072)
!2087 = !DILocation(line: 925, column: 11, scope: !2016)
!2088 = !DILocation(line: 926, column: 5, scope: !2016)
!2089 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !134, file: !134, line: 937, type: !2090, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !2092)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!6, !21, !12, !9}
!2092 = !{!2093, !2094, !2095}
!2093 = !DILocalVariable(name: "n", arg: 1, scope: !2089, file: !134, line: 937, type: !21)
!2094 = !DILocalVariable(name: "arg", arg: 2, scope: !2089, file: !134, line: 937, type: !12)
!2095 = !DILocalVariable(name: "argsize", arg: 3, scope: !2089, file: !134, line: 937, type: !9)
!2096 = !DILocation(line: 0, scope: !2089)
!2097 = !DILocation(line: 939, column: 10, scope: !2089)
!2098 = !DILocation(line: 939, column: 3, scope: !2089)
!2099 = distinct !DISubprogram(name: "quotearg", scope: !134, file: !134, line: 943, type: !808, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !2100)
!2100 = !{!2101}
!2101 = !DILocalVariable(name: "arg", arg: 1, scope: !2099, file: !134, line: 943, type: !12)
!2102 = !DILocation(line: 0, scope: !2099)
!2103 = !DILocation(line: 0, scope: !1994, inlinedAt: !2104)
!2104 = distinct !DILocation(line: 945, column: 10, scope: !2099)
!2105 = !DILocation(line: 933, column: 10, scope: !1994, inlinedAt: !2104)
!2106 = !DILocation(line: 945, column: 3, scope: !2099)
!2107 = distinct !DISubprogram(name: "quotearg_mem", scope: !134, file: !134, line: 949, type: !2108, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !2110)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!6, !12, !9}
!2110 = !{!2111, !2112}
!2111 = !DILocalVariable(name: "arg", arg: 1, scope: !2107, file: !134, line: 949, type: !12)
!2112 = !DILocalVariable(name: "argsize", arg: 2, scope: !2107, file: !134, line: 949, type: !9)
!2113 = !DILocation(line: 0, scope: !2107)
!2114 = !DILocation(line: 0, scope: !2089, inlinedAt: !2115)
!2115 = distinct !DILocation(line: 951, column: 10, scope: !2107)
!2116 = !DILocation(line: 939, column: 10, scope: !2089, inlinedAt: !2115)
!2117 = !DILocation(line: 951, column: 3, scope: !2107)
!2118 = distinct !DISubprogram(name: "quotearg_n_style", scope: !134, file: !134, line: 955, type: !2119, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !2121)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!6, !21, !136, !12}
!2121 = !{!2122, !2123, !2124, !2125}
!2122 = !DILocalVariable(name: "n", arg: 1, scope: !2118, file: !134, line: 955, type: !21)
!2123 = !DILocalVariable(name: "s", arg: 2, scope: !2118, file: !134, line: 955, type: !136)
!2124 = !DILocalVariable(name: "arg", arg: 3, scope: !2118, file: !134, line: 955, type: !12)
!2125 = !DILocalVariable(name: "o", scope: !2118, file: !134, line: 957, type: !1053)
!2126 = !DILocation(line: 0, scope: !2118)
!2127 = !DILocation(line: 957, column: 3, scope: !2118)
!2128 = !DILocation(line: 957, column: 32, scope: !2118)
!2129 = !{!2130}
!2130 = distinct !{!2130, !2131, !"quoting_options_from_style: argument 0"}
!2131 = distinct !{!2131, !"quoting_options_from_style"}
!2132 = !DILocation(line: 957, column: 36, scope: !2118)
!2133 = !DILocalVariable(name: "style", arg: 1, scope: !2134, file: !134, line: 193, type: !136)
!2134 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !134, file: !134, line: 193, type: !2135, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !2137)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!181, !136}
!2137 = !{!2133, !2138}
!2138 = !DILocalVariable(name: "o", scope: !2134, file: !134, line: 195, type: !181)
!2139 = !DILocation(line: 0, scope: !2134, inlinedAt: !2140)
!2140 = distinct !DILocation(line: 957, column: 36, scope: !2118)
!2141 = !DILocation(line: 195, column: 26, scope: !2134, inlinedAt: !2140)
!2142 = !DILocation(line: 196, column: 13, scope: !2143, inlinedAt: !2140)
!2143 = distinct !DILexicalBlock(scope: !2134, file: !134, line: 196, column: 7)
!2144 = !DILocation(line: 196, column: 7, scope: !2134, inlinedAt: !2140)
!2145 = !DILocation(line: 197, column: 5, scope: !2143, inlinedAt: !2140)
!2146 = !DILocation(line: 198, column: 5, scope: !2134, inlinedAt: !2140)
!2147 = !DILocation(line: 198, column: 11, scope: !2134, inlinedAt: !2140)
!2148 = !DILocation(line: 958, column: 10, scope: !2118)
!2149 = !DILocation(line: 959, column: 1, scope: !2118)
!2150 = !DILocation(line: 958, column: 3, scope: !2118)
!2151 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !134, file: !134, line: 962, type: !2152, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !2154)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!6, !21, !136, !12, !9}
!2154 = !{!2155, !2156, !2157, !2158, !2159}
!2155 = !DILocalVariable(name: "n", arg: 1, scope: !2151, file: !134, line: 962, type: !21)
!2156 = !DILocalVariable(name: "s", arg: 2, scope: !2151, file: !134, line: 962, type: !136)
!2157 = !DILocalVariable(name: "arg", arg: 3, scope: !2151, file: !134, line: 963, type: !12)
!2158 = !DILocalVariable(name: "argsize", arg: 4, scope: !2151, file: !134, line: 963, type: !9)
!2159 = !DILocalVariable(name: "o", scope: !2151, file: !134, line: 965, type: !1053)
!2160 = !DILocation(line: 0, scope: !2151)
!2161 = !DILocation(line: 965, column: 3, scope: !2151)
!2162 = !DILocation(line: 965, column: 32, scope: !2151)
!2163 = !{!2164}
!2164 = distinct !{!2164, !2165, !"quoting_options_from_style: argument 0"}
!2165 = distinct !{!2165, !"quoting_options_from_style"}
!2166 = !DILocation(line: 965, column: 36, scope: !2151)
!2167 = !DILocation(line: 0, scope: !2134, inlinedAt: !2168)
!2168 = distinct !DILocation(line: 965, column: 36, scope: !2151)
!2169 = !DILocation(line: 195, column: 26, scope: !2134, inlinedAt: !2168)
!2170 = !DILocation(line: 196, column: 13, scope: !2143, inlinedAt: !2168)
!2171 = !DILocation(line: 196, column: 7, scope: !2134, inlinedAt: !2168)
!2172 = !DILocation(line: 197, column: 5, scope: !2143, inlinedAt: !2168)
!2173 = !DILocation(line: 198, column: 5, scope: !2134, inlinedAt: !2168)
!2174 = !DILocation(line: 198, column: 11, scope: !2134, inlinedAt: !2168)
!2175 = !DILocation(line: 966, column: 10, scope: !2151)
!2176 = !DILocation(line: 967, column: 1, scope: !2151)
!2177 = !DILocation(line: 966, column: 3, scope: !2151)
!2178 = distinct !DISubprogram(name: "quotearg_style", scope: !134, file: !134, line: 970, type: !2179, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !2181)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!6, !136, !12}
!2181 = !{!2182, !2183}
!2182 = !DILocalVariable(name: "s", arg: 1, scope: !2178, file: !134, line: 970, type: !136)
!2183 = !DILocalVariable(name: "arg", arg: 2, scope: !2178, file: !134, line: 970, type: !12)
!2184 = !DILocation(line: 0, scope: !2178)
!2185 = !DILocation(line: 0, scope: !2118, inlinedAt: !2186)
!2186 = distinct !DILocation(line: 972, column: 10, scope: !2178)
!2187 = !DILocation(line: 957, column: 3, scope: !2118, inlinedAt: !2186)
!2188 = !DILocation(line: 957, column: 32, scope: !2118, inlinedAt: !2186)
!2189 = !{!2190}
!2190 = distinct !{!2190, !2191, !"quoting_options_from_style: argument 0"}
!2191 = distinct !{!2191, !"quoting_options_from_style"}
!2192 = !DILocation(line: 957, column: 36, scope: !2118, inlinedAt: !2186)
!2193 = !DILocation(line: 0, scope: !2134, inlinedAt: !2194)
!2194 = distinct !DILocation(line: 957, column: 36, scope: !2118, inlinedAt: !2186)
!2195 = !DILocation(line: 195, column: 26, scope: !2134, inlinedAt: !2194)
!2196 = !DILocation(line: 196, column: 13, scope: !2143, inlinedAt: !2194)
!2197 = !DILocation(line: 196, column: 7, scope: !2134, inlinedAt: !2194)
!2198 = !DILocation(line: 197, column: 5, scope: !2143, inlinedAt: !2194)
!2199 = !DILocation(line: 198, column: 5, scope: !2134, inlinedAt: !2194)
!2200 = !DILocation(line: 198, column: 11, scope: !2134, inlinedAt: !2194)
!2201 = !DILocation(line: 958, column: 10, scope: !2118, inlinedAt: !2186)
!2202 = !DILocation(line: 959, column: 1, scope: !2118, inlinedAt: !2186)
!2203 = !DILocation(line: 972, column: 3, scope: !2178)
!2204 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !134, file: !134, line: 976, type: !2205, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !2207)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!6, !136, !12, !9}
!2207 = !{!2208, !2209, !2210}
!2208 = !DILocalVariable(name: "s", arg: 1, scope: !2204, file: !134, line: 976, type: !136)
!2209 = !DILocalVariable(name: "arg", arg: 2, scope: !2204, file: !134, line: 976, type: !12)
!2210 = !DILocalVariable(name: "argsize", arg: 3, scope: !2204, file: !134, line: 976, type: !9)
!2211 = !DILocation(line: 0, scope: !2204)
!2212 = !DILocation(line: 0, scope: !2151, inlinedAt: !2213)
!2213 = distinct !DILocation(line: 978, column: 10, scope: !2204)
!2214 = !DILocation(line: 965, column: 3, scope: !2151, inlinedAt: !2213)
!2215 = !DILocation(line: 965, column: 32, scope: !2151, inlinedAt: !2213)
!2216 = !{!2217}
!2217 = distinct !{!2217, !2218, !"quoting_options_from_style: argument 0"}
!2218 = distinct !{!2218, !"quoting_options_from_style"}
!2219 = !DILocation(line: 965, column: 36, scope: !2151, inlinedAt: !2213)
!2220 = !DILocation(line: 0, scope: !2134, inlinedAt: !2221)
!2221 = distinct !DILocation(line: 965, column: 36, scope: !2151, inlinedAt: !2213)
!2222 = !DILocation(line: 195, column: 26, scope: !2134, inlinedAt: !2221)
!2223 = !DILocation(line: 196, column: 13, scope: !2143, inlinedAt: !2221)
!2224 = !DILocation(line: 196, column: 7, scope: !2134, inlinedAt: !2221)
!2225 = !DILocation(line: 197, column: 5, scope: !2143, inlinedAt: !2221)
!2226 = !DILocation(line: 198, column: 5, scope: !2134, inlinedAt: !2221)
!2227 = !DILocation(line: 198, column: 11, scope: !2134, inlinedAt: !2221)
!2228 = !DILocation(line: 966, column: 10, scope: !2151, inlinedAt: !2213)
!2229 = !DILocation(line: 967, column: 1, scope: !2151, inlinedAt: !2213)
!2230 = !DILocation(line: 978, column: 3, scope: !2204)
!2231 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !134, file: !134, line: 982, type: !2232, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !2234)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!6, !12, !9, !7}
!2234 = !{!2235, !2236, !2237, !2238}
!2235 = !DILocalVariable(name: "arg", arg: 1, scope: !2231, file: !134, line: 982, type: !12)
!2236 = !DILocalVariable(name: "argsize", arg: 2, scope: !2231, file: !134, line: 982, type: !9)
!2237 = !DILocalVariable(name: "ch", arg: 3, scope: !2231, file: !134, line: 982, type: !7)
!2238 = !DILocalVariable(name: "options", scope: !2231, file: !134, line: 984, type: !181)
!2239 = !DILocation(line: 0, scope: !2231)
!2240 = !DILocation(line: 984, column: 3, scope: !2231)
!2241 = !DILocation(line: 984, column: 26, scope: !2231)
!2242 = !DILocation(line: 985, column: 13, scope: !2231)
!2243 = !{i64 0, i64 4, !798, i64 4, i64 4, !768, i64 8, i64 32, !798, i64 40, i64 8, !675, i64 48, i64 8, !675}
!2244 = !DILocation(line: 0, scope: !1073, inlinedAt: !2245)
!2245 = distinct !DILocation(line: 986, column: 3, scope: !2231)
!2246 = !DILocation(line: 156, column: 62, scope: !1073, inlinedAt: !2245)
!2247 = !DILocation(line: 156, column: 57, scope: !1073, inlinedAt: !2245)
!2248 = !DILocation(line: 157, column: 15, scope: !1073, inlinedAt: !2245)
!2249 = !DILocation(line: 158, column: 12, scope: !1073, inlinedAt: !2245)
!2250 = !DILocation(line: 158, column: 15, scope: !1073, inlinedAt: !2245)
!2251 = !DILocation(line: 158, column: 25, scope: !1073, inlinedAt: !2245)
!2252 = !DILocation(line: 159, column: 18, scope: !1073, inlinedAt: !2245)
!2253 = !DILocation(line: 159, column: 23, scope: !1073, inlinedAt: !2245)
!2254 = !DILocation(line: 159, column: 6, scope: !1073, inlinedAt: !2245)
!2255 = !DILocation(line: 987, column: 10, scope: !2231)
!2256 = !DILocation(line: 988, column: 1, scope: !2231)
!2257 = !DILocation(line: 987, column: 3, scope: !2231)
!2258 = distinct !DISubprogram(name: "quotearg_char", scope: !134, file: !134, line: 991, type: !2259, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !2261)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!6, !12, !7}
!2261 = !{!2262, !2263}
!2262 = !DILocalVariable(name: "arg", arg: 1, scope: !2258, file: !134, line: 991, type: !12)
!2263 = !DILocalVariable(name: "ch", arg: 2, scope: !2258, file: !134, line: 991, type: !7)
!2264 = !DILocation(line: 0, scope: !2258)
!2265 = !DILocation(line: 0, scope: !2231, inlinedAt: !2266)
!2266 = distinct !DILocation(line: 993, column: 10, scope: !2258)
!2267 = !DILocation(line: 984, column: 3, scope: !2231, inlinedAt: !2266)
!2268 = !DILocation(line: 984, column: 26, scope: !2231, inlinedAt: !2266)
!2269 = !DILocation(line: 985, column: 13, scope: !2231, inlinedAt: !2266)
!2270 = !DILocation(line: 0, scope: !1073, inlinedAt: !2271)
!2271 = distinct !DILocation(line: 986, column: 3, scope: !2231, inlinedAt: !2266)
!2272 = !DILocation(line: 156, column: 62, scope: !1073, inlinedAt: !2271)
!2273 = !DILocation(line: 156, column: 57, scope: !1073, inlinedAt: !2271)
!2274 = !DILocation(line: 157, column: 15, scope: !1073, inlinedAt: !2271)
!2275 = !DILocation(line: 158, column: 12, scope: !1073, inlinedAt: !2271)
!2276 = !DILocation(line: 158, column: 15, scope: !1073, inlinedAt: !2271)
!2277 = !DILocation(line: 158, column: 25, scope: !1073, inlinedAt: !2271)
!2278 = !DILocation(line: 159, column: 18, scope: !1073, inlinedAt: !2271)
!2279 = !DILocation(line: 159, column: 23, scope: !1073, inlinedAt: !2271)
!2280 = !DILocation(line: 159, column: 6, scope: !1073, inlinedAt: !2271)
!2281 = !DILocation(line: 987, column: 10, scope: !2231, inlinedAt: !2266)
!2282 = !DILocation(line: 988, column: 1, scope: !2231, inlinedAt: !2266)
!2283 = !DILocation(line: 993, column: 3, scope: !2258)
!2284 = distinct !DISubprogram(name: "quotearg_colon", scope: !134, file: !134, line: 997, type: !808, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !2285)
!2285 = !{!2286}
!2286 = !DILocalVariable(name: "arg", arg: 1, scope: !2284, file: !134, line: 997, type: !12)
!2287 = !DILocation(line: 0, scope: !2284)
!2288 = !DILocation(line: 0, scope: !2258, inlinedAt: !2289)
!2289 = distinct !DILocation(line: 999, column: 10, scope: !2284)
!2290 = !DILocation(line: 0, scope: !2231, inlinedAt: !2291)
!2291 = distinct !DILocation(line: 993, column: 10, scope: !2258, inlinedAt: !2289)
!2292 = !DILocation(line: 984, column: 3, scope: !2231, inlinedAt: !2291)
!2293 = !DILocation(line: 984, column: 26, scope: !2231, inlinedAt: !2291)
!2294 = !DILocation(line: 985, column: 13, scope: !2231, inlinedAt: !2291)
!2295 = !DILocation(line: 0, scope: !1073, inlinedAt: !2296)
!2296 = distinct !DILocation(line: 986, column: 3, scope: !2231, inlinedAt: !2291)
!2297 = !DILocation(line: 156, column: 57, scope: !1073, inlinedAt: !2296)
!2298 = !DILocation(line: 158, column: 12, scope: !1073, inlinedAt: !2296)
!2299 = !DILocation(line: 159, column: 6, scope: !1073, inlinedAt: !2296)
!2300 = !DILocation(line: 987, column: 10, scope: !2231, inlinedAt: !2291)
!2301 = !DILocation(line: 988, column: 1, scope: !2231, inlinedAt: !2291)
!2302 = !DILocation(line: 999, column: 3, scope: !2284)
!2303 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !134, file: !134, line: 1003, type: !2108, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !2304)
!2304 = !{!2305, !2306}
!2305 = !DILocalVariable(name: "arg", arg: 1, scope: !2303, file: !134, line: 1003, type: !12)
!2306 = !DILocalVariable(name: "argsize", arg: 2, scope: !2303, file: !134, line: 1003, type: !9)
!2307 = !DILocation(line: 0, scope: !2303)
!2308 = !DILocation(line: 0, scope: !2231, inlinedAt: !2309)
!2309 = distinct !DILocation(line: 1005, column: 10, scope: !2303)
!2310 = !DILocation(line: 984, column: 3, scope: !2231, inlinedAt: !2309)
!2311 = !DILocation(line: 984, column: 26, scope: !2231, inlinedAt: !2309)
!2312 = !DILocation(line: 985, column: 13, scope: !2231, inlinedAt: !2309)
!2313 = !DILocation(line: 0, scope: !1073, inlinedAt: !2314)
!2314 = distinct !DILocation(line: 986, column: 3, scope: !2231, inlinedAt: !2309)
!2315 = !DILocation(line: 156, column: 57, scope: !1073, inlinedAt: !2314)
!2316 = !DILocation(line: 158, column: 12, scope: !1073, inlinedAt: !2314)
!2317 = !DILocation(line: 159, column: 6, scope: !1073, inlinedAt: !2314)
!2318 = !DILocation(line: 987, column: 10, scope: !2231, inlinedAt: !2309)
!2319 = !DILocation(line: 988, column: 1, scope: !2231, inlinedAt: !2309)
!2320 = !DILocation(line: 1005, column: 3, scope: !2303)
!2321 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !134, file: !134, line: 1009, type: !2119, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !2322)
!2322 = !{!2323, !2324, !2325, !2326}
!2323 = !DILocalVariable(name: "n", arg: 1, scope: !2321, file: !134, line: 1009, type: !21)
!2324 = !DILocalVariable(name: "s", arg: 2, scope: !2321, file: !134, line: 1009, type: !136)
!2325 = !DILocalVariable(name: "arg", arg: 3, scope: !2321, file: !134, line: 1009, type: !12)
!2326 = !DILocalVariable(name: "options", scope: !2321, file: !134, line: 1011, type: !181)
!2327 = !DILocation(line: 195, column: 26, scope: !2134, inlinedAt: !2328)
!2328 = distinct !DILocation(line: 1012, column: 13, scope: !2321)
!2329 = !DILocation(line: 0, scope: !2321)
!2330 = !DILocation(line: 1011, column: 3, scope: !2321)
!2331 = !DILocation(line: 1011, column: 26, scope: !2321)
!2332 = !DILocation(line: 1012, column: 13, scope: !2321)
!2333 = !{!2334}
!2334 = distinct !{!2334, !2335, !"quoting_options_from_style: argument 0"}
!2335 = distinct !{!2335, !"quoting_options_from_style"}
!2336 = !DILocation(line: 0, scope: !2134, inlinedAt: !2328)
!2337 = !DILocation(line: 196, column: 13, scope: !2143, inlinedAt: !2328)
!2338 = !DILocation(line: 196, column: 7, scope: !2134, inlinedAt: !2328)
!2339 = !DILocation(line: 197, column: 5, scope: !2143, inlinedAt: !2328)
!2340 = !{i64 0, i64 4, !768, i64 4, i64 32, !798, i64 36, i64 8, !675, i64 44, i64 8, !675}
!2341 = !DILocation(line: 0, scope: !1073, inlinedAt: !2342)
!2342 = distinct !DILocation(line: 1013, column: 3, scope: !2321)
!2343 = !DILocation(line: 156, column: 57, scope: !1073, inlinedAt: !2342)
!2344 = !DILocation(line: 158, column: 12, scope: !1073, inlinedAt: !2342)
!2345 = !DILocation(line: 159, column: 6, scope: !1073, inlinedAt: !2342)
!2346 = !DILocation(line: 1014, column: 10, scope: !2321)
!2347 = !DILocation(line: 1015, column: 1, scope: !2321)
!2348 = !DILocation(line: 1014, column: 3, scope: !2321)
!2349 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !134, file: !134, line: 1018, type: !2350, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !2352)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!6, !21, !12, !12, !12}
!2352 = !{!2353, !2354, !2355, !2356}
!2353 = !DILocalVariable(name: "n", arg: 1, scope: !2349, file: !134, line: 1018, type: !21)
!2354 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2349, file: !134, line: 1018, type: !12)
!2355 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2349, file: !134, line: 1019, type: !12)
!2356 = !DILocalVariable(name: "arg", arg: 4, scope: !2349, file: !134, line: 1019, type: !12)
!2357 = !DILocation(line: 0, scope: !2349)
!2358 = !DILocalVariable(name: "n", arg: 1, scope: !2359, file: !134, line: 1026, type: !21)
!2359 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !134, file: !134, line: 1026, type: !2360, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !2362)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!6, !21, !12, !12, !12, !9}
!2362 = !{!2358, !2363, !2364, !2365, !2366, !2367}
!2363 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2359, file: !134, line: 1026, type: !12)
!2364 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2359, file: !134, line: 1027, type: !12)
!2365 = !DILocalVariable(name: "arg", arg: 4, scope: !2359, file: !134, line: 1028, type: !12)
!2366 = !DILocalVariable(name: "argsize", arg: 5, scope: !2359, file: !134, line: 1028, type: !9)
!2367 = !DILocalVariable(name: "o", scope: !2359, file: !134, line: 1030, type: !181)
!2368 = !DILocation(line: 0, scope: !2359, inlinedAt: !2369)
!2369 = distinct !DILocation(line: 1021, column: 10, scope: !2349)
!2370 = !DILocation(line: 1030, column: 3, scope: !2359, inlinedAt: !2369)
!2371 = !DILocation(line: 1030, column: 26, scope: !2359, inlinedAt: !2369)
!2372 = !DILocation(line: 1030, column: 30, scope: !2359, inlinedAt: !2369)
!2373 = !DILocation(line: 0, scope: !1113, inlinedAt: !2374)
!2374 = distinct !DILocation(line: 1031, column: 3, scope: !2359, inlinedAt: !2369)
!2375 = !DILocation(line: 184, column: 6, scope: !1113, inlinedAt: !2374)
!2376 = !DILocation(line: 184, column: 12, scope: !1113, inlinedAt: !2374)
!2377 = !DILocation(line: 185, column: 8, scope: !1127, inlinedAt: !2374)
!2378 = !DILocation(line: 185, column: 19, scope: !1127, inlinedAt: !2374)
!2379 = !DILocation(line: 186, column: 5, scope: !1127, inlinedAt: !2374)
!2380 = !DILocation(line: 187, column: 6, scope: !1113, inlinedAt: !2374)
!2381 = !DILocation(line: 187, column: 17, scope: !1113, inlinedAt: !2374)
!2382 = !DILocation(line: 188, column: 6, scope: !1113, inlinedAt: !2374)
!2383 = !DILocation(line: 188, column: 18, scope: !1113, inlinedAt: !2374)
!2384 = !DILocation(line: 1032, column: 10, scope: !2359, inlinedAt: !2369)
!2385 = !DILocation(line: 1033, column: 1, scope: !2359, inlinedAt: !2369)
!2386 = !DILocation(line: 1021, column: 3, scope: !2349)
!2387 = !DILocation(line: 0, scope: !2359)
!2388 = !DILocation(line: 1030, column: 3, scope: !2359)
!2389 = !DILocation(line: 1030, column: 26, scope: !2359)
!2390 = !DILocation(line: 1030, column: 30, scope: !2359)
!2391 = !DILocation(line: 0, scope: !1113, inlinedAt: !2392)
!2392 = distinct !DILocation(line: 1031, column: 3, scope: !2359)
!2393 = !DILocation(line: 184, column: 6, scope: !1113, inlinedAt: !2392)
!2394 = !DILocation(line: 184, column: 12, scope: !1113, inlinedAt: !2392)
!2395 = !DILocation(line: 185, column: 8, scope: !1127, inlinedAt: !2392)
!2396 = !DILocation(line: 185, column: 19, scope: !1127, inlinedAt: !2392)
!2397 = !DILocation(line: 186, column: 5, scope: !1127, inlinedAt: !2392)
!2398 = !DILocation(line: 187, column: 6, scope: !1113, inlinedAt: !2392)
!2399 = !DILocation(line: 187, column: 17, scope: !1113, inlinedAt: !2392)
!2400 = !DILocation(line: 188, column: 6, scope: !1113, inlinedAt: !2392)
!2401 = !DILocation(line: 188, column: 18, scope: !1113, inlinedAt: !2392)
!2402 = !DILocation(line: 1032, column: 10, scope: !2359)
!2403 = !DILocation(line: 1033, column: 1, scope: !2359)
!2404 = !DILocation(line: 1032, column: 3, scope: !2359)
!2405 = distinct !DISubprogram(name: "quotearg_custom", scope: !134, file: !134, line: 1036, type: !2406, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !2408)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!6, !12, !12, !12}
!2408 = !{!2409, !2410, !2411}
!2409 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2405, file: !134, line: 1036, type: !12)
!2410 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2405, file: !134, line: 1036, type: !12)
!2411 = !DILocalVariable(name: "arg", arg: 3, scope: !2405, file: !134, line: 1037, type: !12)
!2412 = !DILocation(line: 0, scope: !2405)
!2413 = !DILocation(line: 0, scope: !2349, inlinedAt: !2414)
!2414 = distinct !DILocation(line: 1039, column: 10, scope: !2405)
!2415 = !DILocation(line: 0, scope: !2359, inlinedAt: !2416)
!2416 = distinct !DILocation(line: 1021, column: 10, scope: !2349, inlinedAt: !2414)
!2417 = !DILocation(line: 1030, column: 3, scope: !2359, inlinedAt: !2416)
!2418 = !DILocation(line: 1030, column: 26, scope: !2359, inlinedAt: !2416)
!2419 = !DILocation(line: 1030, column: 30, scope: !2359, inlinedAt: !2416)
!2420 = !DILocation(line: 0, scope: !1113, inlinedAt: !2421)
!2421 = distinct !DILocation(line: 1031, column: 3, scope: !2359, inlinedAt: !2416)
!2422 = !DILocation(line: 184, column: 6, scope: !1113, inlinedAt: !2421)
!2423 = !DILocation(line: 184, column: 12, scope: !1113, inlinedAt: !2421)
!2424 = !DILocation(line: 185, column: 8, scope: !1127, inlinedAt: !2421)
!2425 = !DILocation(line: 185, column: 19, scope: !1127, inlinedAt: !2421)
!2426 = !DILocation(line: 186, column: 5, scope: !1127, inlinedAt: !2421)
!2427 = !DILocation(line: 187, column: 6, scope: !1113, inlinedAt: !2421)
!2428 = !DILocation(line: 187, column: 17, scope: !1113, inlinedAt: !2421)
!2429 = !DILocation(line: 188, column: 6, scope: !1113, inlinedAt: !2421)
!2430 = !DILocation(line: 188, column: 18, scope: !1113, inlinedAt: !2421)
!2431 = !DILocation(line: 1032, column: 10, scope: !2359, inlinedAt: !2416)
!2432 = !DILocation(line: 1033, column: 1, scope: !2359, inlinedAt: !2416)
!2433 = !DILocation(line: 1039, column: 3, scope: !2405)
!2434 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !134, file: !134, line: 1043, type: !2435, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !2437)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!6, !12, !12, !12, !9}
!2437 = !{!2438, !2439, !2440, !2441}
!2438 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2434, file: !134, line: 1043, type: !12)
!2439 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2434, file: !134, line: 1043, type: !12)
!2440 = !DILocalVariable(name: "arg", arg: 3, scope: !2434, file: !134, line: 1044, type: !12)
!2441 = !DILocalVariable(name: "argsize", arg: 4, scope: !2434, file: !134, line: 1044, type: !9)
!2442 = !DILocation(line: 0, scope: !2434)
!2443 = !DILocation(line: 0, scope: !2359, inlinedAt: !2444)
!2444 = distinct !DILocation(line: 1046, column: 10, scope: !2434)
!2445 = !DILocation(line: 1030, column: 3, scope: !2359, inlinedAt: !2444)
!2446 = !DILocation(line: 1030, column: 26, scope: !2359, inlinedAt: !2444)
!2447 = !DILocation(line: 1030, column: 30, scope: !2359, inlinedAt: !2444)
!2448 = !DILocation(line: 0, scope: !1113, inlinedAt: !2449)
!2449 = distinct !DILocation(line: 1031, column: 3, scope: !2359, inlinedAt: !2444)
!2450 = !DILocation(line: 184, column: 6, scope: !1113, inlinedAt: !2449)
!2451 = !DILocation(line: 184, column: 12, scope: !1113, inlinedAt: !2449)
!2452 = !DILocation(line: 185, column: 8, scope: !1127, inlinedAt: !2449)
!2453 = !DILocation(line: 185, column: 19, scope: !1127, inlinedAt: !2449)
!2454 = !DILocation(line: 186, column: 5, scope: !1127, inlinedAt: !2449)
!2455 = !DILocation(line: 187, column: 6, scope: !1113, inlinedAt: !2449)
!2456 = !DILocation(line: 187, column: 17, scope: !1113, inlinedAt: !2449)
!2457 = !DILocation(line: 188, column: 6, scope: !1113, inlinedAt: !2449)
!2458 = !DILocation(line: 188, column: 18, scope: !1113, inlinedAt: !2449)
!2459 = !DILocation(line: 1032, column: 10, scope: !2359, inlinedAt: !2444)
!2460 = !DILocation(line: 1033, column: 1, scope: !2359, inlinedAt: !2444)
!2461 = !DILocation(line: 1046, column: 3, scope: !2434)
!2462 = distinct !DISubprogram(name: "quote_n_mem", scope: !134, file: !134, line: 1061, type: !2463, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !2465)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!12, !21, !12, !9}
!2465 = !{!2466, !2467, !2468}
!2466 = !DILocalVariable(name: "n", arg: 1, scope: !2462, file: !134, line: 1061, type: !21)
!2467 = !DILocalVariable(name: "arg", arg: 2, scope: !2462, file: !134, line: 1061, type: !12)
!2468 = !DILocalVariable(name: "argsize", arg: 3, scope: !2462, file: !134, line: 1061, type: !9)
!2469 = !DILocation(line: 0, scope: !2462)
!2470 = !DILocation(line: 1063, column: 10, scope: !2462)
!2471 = !DILocation(line: 1063, column: 3, scope: !2462)
!2472 = distinct !DISubprogram(name: "quote_mem", scope: !134, file: !134, line: 1067, type: !2473, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !2475)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!12, !12, !9}
!2475 = !{!2476, !2477}
!2476 = !DILocalVariable(name: "arg", arg: 1, scope: !2472, file: !134, line: 1067, type: !12)
!2477 = !DILocalVariable(name: "argsize", arg: 2, scope: !2472, file: !134, line: 1067, type: !9)
!2478 = !DILocation(line: 0, scope: !2472)
!2479 = !DILocation(line: 0, scope: !2462, inlinedAt: !2480)
!2480 = distinct !DILocation(line: 1069, column: 10, scope: !2472)
!2481 = !DILocation(line: 1063, column: 10, scope: !2462, inlinedAt: !2480)
!2482 = !DILocation(line: 1069, column: 3, scope: !2472)
!2483 = distinct !DISubprogram(name: "quote_n", scope: !134, file: !134, line: 1073, type: !2484, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !2486)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!12, !21, !12}
!2486 = !{!2487, !2488}
!2487 = !DILocalVariable(name: "n", arg: 1, scope: !2483, file: !134, line: 1073, type: !21)
!2488 = !DILocalVariable(name: "arg", arg: 2, scope: !2483, file: !134, line: 1073, type: !12)
!2489 = !DILocation(line: 0, scope: !2483)
!2490 = !DILocation(line: 0, scope: !2462, inlinedAt: !2491)
!2491 = distinct !DILocation(line: 1075, column: 10, scope: !2483)
!2492 = !DILocation(line: 1063, column: 10, scope: !2462, inlinedAt: !2491)
!2493 = !DILocation(line: 1075, column: 3, scope: !2483)
!2494 = distinct !DISubprogram(name: "quote", scope: !134, file: !134, line: 1079, type: !2495, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !2497)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!12, !12}
!2497 = !{!2498}
!2498 = !DILocalVariable(name: "arg", arg: 1, scope: !2494, file: !134, line: 1079, type: !12)
!2499 = !DILocation(line: 0, scope: !2494)
!2500 = !DILocation(line: 0, scope: !2483, inlinedAt: !2501)
!2501 = distinct !DILocation(line: 1081, column: 10, scope: !2494)
!2502 = !DILocation(line: 0, scope: !2462, inlinedAt: !2503)
!2503 = distinct !DILocation(line: 1075, column: 10, scope: !2483, inlinedAt: !2501)
!2504 = !DILocation(line: 1063, column: 10, scope: !2462, inlinedAt: !2503)
!2505 = !DILocation(line: 1081, column: 3, scope: !2494)
!2506 = distinct !DISubprogram(name: "version_etc_arn", scope: !227, file: !227, line: 61, type: !2507, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !2544)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{null, !2509, !12, !12, !12, !2543, !9}
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !40, line: 7, baseType: !2511)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !42, line: 49, size: 1728, elements: !2512)
!2512 = !{!2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2511, file: !42, line: 51, baseType: !21, size: 32)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2511, file: !42, line: 54, baseType: !6, size: 64, offset: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2511, file: !42, line: 55, baseType: !6, size: 64, offset: 128)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2511, file: !42, line: 56, baseType: !6, size: 64, offset: 192)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2511, file: !42, line: 57, baseType: !6, size: 64, offset: 256)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2511, file: !42, line: 58, baseType: !6, size: 64, offset: 320)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2511, file: !42, line: 59, baseType: !6, size: 64, offset: 384)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2511, file: !42, line: 60, baseType: !6, size: 64, offset: 448)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2511, file: !42, line: 61, baseType: !6, size: 64, offset: 512)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2511, file: !42, line: 64, baseType: !6, size: 64, offset: 576)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2511, file: !42, line: 65, baseType: !6, size: 64, offset: 640)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2511, file: !42, line: 66, baseType: !6, size: 64, offset: 704)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2511, file: !42, line: 68, baseType: !57, size: 64, offset: 768)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2511, file: !42, line: 70, baseType: !2527, size: 64, offset: 832)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2511, file: !42, line: 72, baseType: !21, size: 32, offset: 896)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2511, file: !42, line: 73, baseType: !21, size: 32, offset: 928)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2511, file: !42, line: 74, baseType: !64, size: 64, offset: 960)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2511, file: !42, line: 77, baseType: !68, size: 16, offset: 1024)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2511, file: !42, line: 78, baseType: !70, size: 8, offset: 1040)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2511, file: !42, line: 79, baseType: !72, size: 8, offset: 1048)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2511, file: !42, line: 81, baseType: !76, size: 64, offset: 1088)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2511, file: !42, line: 89, baseType: !79, size: 64, offset: 1152)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2511, file: !42, line: 91, baseType: !81, size: 64, offset: 1216)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2511, file: !42, line: 92, baseType: !84, size: 64, offset: 1280)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2511, file: !42, line: 93, baseType: !2527, size: 64, offset: 1344)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2511, file: !42, line: 94, baseType: !8, size: 64, offset: 1408)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2511, file: !42, line: 95, baseType: !9, size: 64, offset: 1472)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2511, file: !42, line: 96, baseType: !21, size: 32, offset: 1536)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2511, file: !42, line: 98, baseType: !91, size: 160, offset: 1568)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!2544 = !{!2545, !2546, !2547, !2548, !2549, !2550}
!2545 = !DILocalVariable(name: "stream", arg: 1, scope: !2506, file: !227, line: 61, type: !2509)
!2546 = !DILocalVariable(name: "command_name", arg: 2, scope: !2506, file: !227, line: 62, type: !12)
!2547 = !DILocalVariable(name: "package", arg: 3, scope: !2506, file: !227, line: 62, type: !12)
!2548 = !DILocalVariable(name: "version", arg: 4, scope: !2506, file: !227, line: 63, type: !12)
!2549 = !DILocalVariable(name: "authors", arg: 5, scope: !2506, file: !227, line: 64, type: !2543)
!2550 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2506, file: !227, line: 64, type: !9)
!2551 = !DILocation(line: 0, scope: !2506)
!2552 = !DILocation(line: 66, column: 7, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2506, file: !227, line: 66, column: 7)
!2554 = !DILocation(line: 66, column: 7, scope: !2506)
!2555 = !DILocation(line: 67, column: 5, scope: !2553)
!2556 = !DILocation(line: 69, column: 5, scope: !2553)
!2557 = !DILocation(line: 83, column: 3, scope: !2506)
!2558 = !DILocation(line: 85, column: 3, scope: !2506)
!2559 = !DILocation(line: 88, column: 3, scope: !2506)
!2560 = !DILocation(line: 95, column: 3, scope: !2506)
!2561 = !DILocation(line: 97, column: 3, scope: !2506)
!2562 = !DILocation(line: 105, column: 7, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2506, file: !227, line: 98, column: 5)
!2564 = !DILocation(line: 106, column: 7, scope: !2563)
!2565 = !DILocation(line: 109, column: 7, scope: !2563)
!2566 = !DILocation(line: 110, column: 7, scope: !2563)
!2567 = !DILocation(line: 113, column: 7, scope: !2563)
!2568 = !DILocation(line: 115, column: 7, scope: !2563)
!2569 = !DILocation(line: 120, column: 7, scope: !2563)
!2570 = !DILocation(line: 122, column: 7, scope: !2563)
!2571 = !DILocation(line: 127, column: 7, scope: !2563)
!2572 = !DILocation(line: 129, column: 7, scope: !2563)
!2573 = !DILocation(line: 134, column: 7, scope: !2563)
!2574 = !DILocation(line: 137, column: 7, scope: !2563)
!2575 = !DILocation(line: 142, column: 7, scope: !2563)
!2576 = !DILocation(line: 145, column: 7, scope: !2563)
!2577 = !DILocation(line: 150, column: 7, scope: !2563)
!2578 = !DILocation(line: 154, column: 7, scope: !2563)
!2579 = !DILocation(line: 159, column: 7, scope: !2563)
!2580 = !DILocation(line: 163, column: 7, scope: !2563)
!2581 = !DILocation(line: 170, column: 7, scope: !2563)
!2582 = !DILocation(line: 174, column: 7, scope: !2563)
!2583 = !DILocation(line: 176, column: 1, scope: !2506)
!2584 = distinct !DISubprogram(name: "version_etc_ar", scope: !227, file: !227, line: 183, type: !2585, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !2587)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{null, !2509, !12, !12, !12, !2543}
!2587 = !{!2588, !2589, !2590, !2591, !2592, !2593}
!2588 = !DILocalVariable(name: "stream", arg: 1, scope: !2584, file: !227, line: 183, type: !2509)
!2589 = !DILocalVariable(name: "command_name", arg: 2, scope: !2584, file: !227, line: 184, type: !12)
!2590 = !DILocalVariable(name: "package", arg: 3, scope: !2584, file: !227, line: 184, type: !12)
!2591 = !DILocalVariable(name: "version", arg: 4, scope: !2584, file: !227, line: 185, type: !12)
!2592 = !DILocalVariable(name: "authors", arg: 5, scope: !2584, file: !227, line: 185, type: !2543)
!2593 = !DILocalVariable(name: "n_authors", scope: !2584, file: !227, line: 187, type: !9)
!2594 = !DILocation(line: 0, scope: !2584)
!2595 = !DILocation(line: 189, column: 8, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2584, file: !227, line: 189, column: 3)
!2597 = !DILocation(line: 0, scope: !2596)
!2598 = !DILocation(line: 189, column: 23, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2596, file: !227, line: 189, column: 3)
!2600 = !DILocation(line: 189, column: 3, scope: !2596)
!2601 = !DILocation(line: 189, column: 52, scope: !2599)
!2602 = distinct !{!2602, !2600, !2603, !719}
!2603 = !DILocation(line: 190, column: 5, scope: !2596)
!2604 = !DILocation(line: 191, column: 3, scope: !2584)
!2605 = !DILocation(line: 192, column: 1, scope: !2584)
!2606 = distinct !DISubprogram(name: "version_etc_va", scope: !227, file: !227, line: 199, type: !2607, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !2616)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{null, !2509, !12, !12, !12, !2609}
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2611)
!2611 = !{!2612, !2613, !2614, !2615}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2610, file: !227, line: 192, baseType: !138, size: 32)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2610, file: !227, line: 192, baseType: !138, size: 32, offset: 32)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2610, file: !227, line: 192, baseType: !8, size: 64, offset: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2610, file: !227, line: 192, baseType: !8, size: 64, offset: 128)
!2616 = !{!2617, !2618, !2619, !2620, !2621, !2622, !2623}
!2617 = !DILocalVariable(name: "stream", arg: 1, scope: !2606, file: !227, line: 199, type: !2509)
!2618 = !DILocalVariable(name: "command_name", arg: 2, scope: !2606, file: !227, line: 200, type: !12)
!2619 = !DILocalVariable(name: "package", arg: 3, scope: !2606, file: !227, line: 200, type: !12)
!2620 = !DILocalVariable(name: "version", arg: 4, scope: !2606, file: !227, line: 201, type: !12)
!2621 = !DILocalVariable(name: "authors", arg: 5, scope: !2606, file: !227, line: 201, type: !2609)
!2622 = !DILocalVariable(name: "n_authors", scope: !2606, file: !227, line: 203, type: !9)
!2623 = !DILocalVariable(name: "authtab", scope: !2606, file: !227, line: 204, type: !2624)
!2624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 640, elements: !177)
!2625 = !DILocation(line: 0, scope: !2606)
!2626 = !DILocation(line: 204, column: 3, scope: !2606)
!2627 = !DILocation(line: 204, column: 15, scope: !2606)
!2628 = !DILocation(line: 208, column: 35, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2630, file: !227, line: 206, column: 3)
!2630 = distinct !DILexicalBlock(scope: !2606, file: !227, line: 206, column: 3)
!2631 = !DILocation(line: 208, column: 14, scope: !2629)
!2632 = !DILocation(line: 208, column: 33, scope: !2629)
!2633 = !DILocation(line: 208, column: 67, scope: !2629)
!2634 = !DILocation(line: 206, column: 3, scope: !2630)
!2635 = !DILocation(line: 0, scope: !2630)
!2636 = !DILocation(line: 211, column: 3, scope: !2606)
!2637 = !DILocation(line: 213, column: 1, scope: !2606)
!2638 = distinct !DISubprogram(name: "version_etc", scope: !227, file: !227, line: 230, type: !2639, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !2641)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{null, !2509, !12, !12, !12, null}
!2641 = !{!2642, !2643, !2644, !2645, !2646}
!2642 = !DILocalVariable(name: "stream", arg: 1, scope: !2638, file: !227, line: 230, type: !2509)
!2643 = !DILocalVariable(name: "command_name", arg: 2, scope: !2638, file: !227, line: 231, type: !12)
!2644 = !DILocalVariable(name: "package", arg: 3, scope: !2638, file: !227, line: 231, type: !12)
!2645 = !DILocalVariable(name: "version", arg: 4, scope: !2638, file: !227, line: 232, type: !12)
!2646 = !DILocalVariable(name: "authors", scope: !2638, file: !227, line: 234, type: !2647)
!2647 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !744, line: 52, baseType: !2648)
!2648 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2649, line: 32, baseType: !2650)
!2649 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!2650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !227, baseType: !2651)
!2651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2610, size: 192, elements: !73)
!2652 = !DILocation(line: 0, scope: !2638)
!2653 = !DILocation(line: 234, column: 3, scope: !2638)
!2654 = !DILocation(line: 234, column: 11, scope: !2638)
!2655 = !DILocation(line: 236, column: 3, scope: !2638)
!2656 = !DILocation(line: 237, column: 3, scope: !2638)
!2657 = !DILocation(line: 238, column: 3, scope: !2638)
!2658 = !DILocation(line: 239, column: 1, scope: !2638)
!2659 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !227, file: !227, line: 242, type: !815, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !4)
!2660 = !DILocation(line: 244, column: 3, scope: !2659)
!2661 = !DILocation(line: 249, column: 3, scope: !2659)
!2662 = !DILocation(line: 255, column: 3, scope: !2659)
!2663 = !DILocation(line: 260, column: 3, scope: !2659)
!2664 = !DILocation(line: 262, column: 1, scope: !2659)
!2665 = distinct !DISubprogram(name: "xnmalloc", scope: !237, file: !237, line: 99, type: !2666, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2668)
!2666 = !DISubroutineType(types: !2667)
!2667 = !{!8, !9, !9}
!2668 = !{!2669, !2670}
!2669 = !DILocalVariable(name: "n", arg: 1, scope: !2665, file: !237, line: 99, type: !9)
!2670 = !DILocalVariable(name: "s", arg: 2, scope: !2665, file: !237, line: 99, type: !9)
!2671 = !DILocation(line: 0, scope: !2665)
!2672 = !DILocation(line: 101, column: 7, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2665, file: !237, line: 101, column: 7)
!2674 = !DILocation(line: 101, column: 7, scope: !2665)
!2675 = !DILocation(line: 102, column: 5, scope: !2673)
!2676 = !DILocation(line: 103, column: 21, scope: !2665)
!2677 = !DILocalVariable(name: "n", arg: 1, scope: !2678, file: !234, line: 39, type: !9)
!2678 = distinct !DISubprogram(name: "xmalloc", scope: !234, file: !234, line: 39, type: !2679, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2681)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!8, !9}
!2681 = !{!2677, !2682}
!2682 = !DILocalVariable(name: "p", scope: !2678, file: !234, line: 41, type: !8)
!2683 = !DILocation(line: 0, scope: !2678, inlinedAt: !2684)
!2684 = distinct !DILocation(line: 103, column: 10, scope: !2665)
!2685 = !DILocation(line: 41, column: 13, scope: !2678, inlinedAt: !2684)
!2686 = !DILocation(line: 42, column: 8, scope: !2687, inlinedAt: !2684)
!2687 = distinct !DILexicalBlock(scope: !2678, file: !234, line: 42, column: 7)
!2688 = !DILocation(line: 42, column: 10, scope: !2687, inlinedAt: !2684)
!2689 = !DILocation(line: 43, column: 5, scope: !2687, inlinedAt: !2684)
!2690 = !DILocation(line: 103, column: 3, scope: !2665)
!2691 = !DILocation(line: 0, scope: !2678)
!2692 = !DILocation(line: 41, column: 13, scope: !2678)
!2693 = !DILocation(line: 42, column: 8, scope: !2687)
!2694 = !DILocation(line: 42, column: 10, scope: !2687)
!2695 = !DILocation(line: 43, column: 5, scope: !2687)
!2696 = !DILocation(line: 44, column: 3, scope: !2678)
!2697 = distinct !DISubprogram(name: "xnrealloc", scope: !237, file: !237, line: 112, type: !2698, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2700)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!8, !8, !9, !9}
!2700 = !{!2701, !2702, !2703}
!2701 = !DILocalVariable(name: "p", arg: 1, scope: !2697, file: !237, line: 112, type: !8)
!2702 = !DILocalVariable(name: "n", arg: 2, scope: !2697, file: !237, line: 112, type: !9)
!2703 = !DILocalVariable(name: "s", arg: 3, scope: !2697, file: !237, line: 112, type: !9)
!2704 = !DILocation(line: 0, scope: !2697)
!2705 = !DILocation(line: 114, column: 7, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2697, file: !237, line: 114, column: 7)
!2707 = !DILocation(line: 114, column: 7, scope: !2697)
!2708 = !DILocation(line: 115, column: 5, scope: !2706)
!2709 = !DILocation(line: 116, column: 25, scope: !2697)
!2710 = !DILocalVariable(name: "p", arg: 1, scope: !2711, file: !234, line: 51, type: !8)
!2711 = distinct !DISubprogram(name: "xrealloc", scope: !234, file: !234, line: 51, type: !2712, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2714)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!8, !8, !9}
!2714 = !{!2710, !2715}
!2715 = !DILocalVariable(name: "n", arg: 2, scope: !2711, file: !234, line: 51, type: !9)
!2716 = !DILocation(line: 0, scope: !2711, inlinedAt: !2717)
!2717 = distinct !DILocation(line: 116, column: 10, scope: !2697)
!2718 = !DILocation(line: 53, column: 8, scope: !2719, inlinedAt: !2717)
!2719 = distinct !DILexicalBlock(scope: !2711, file: !234, line: 53, column: 7)
!2720 = !DILocation(line: 53, column: 10, scope: !2719, inlinedAt: !2717)
!2721 = !DILocation(line: 57, column: 7, scope: !2722, inlinedAt: !2717)
!2722 = distinct !DILexicalBlock(scope: !2719, file: !234, line: 54, column: 5)
!2723 = !DILocation(line: 58, column: 7, scope: !2722, inlinedAt: !2717)
!2724 = !DILocation(line: 61, column: 7, scope: !2711, inlinedAt: !2717)
!2725 = !DILocation(line: 62, column: 8, scope: !2726, inlinedAt: !2717)
!2726 = distinct !DILexicalBlock(scope: !2711, file: !234, line: 62, column: 7)
!2727 = !DILocation(line: 62, column: 10, scope: !2726, inlinedAt: !2717)
!2728 = !DILocation(line: 63, column: 5, scope: !2726, inlinedAt: !2717)
!2729 = !DILocation(line: 116, column: 3, scope: !2697)
!2730 = !DILocation(line: 0, scope: !2711)
!2731 = !DILocation(line: 53, column: 8, scope: !2719)
!2732 = !DILocation(line: 53, column: 10, scope: !2719)
!2733 = !DILocation(line: 57, column: 7, scope: !2722)
!2734 = !DILocation(line: 58, column: 7, scope: !2722)
!2735 = !DILocation(line: 61, column: 7, scope: !2711)
!2736 = !DILocation(line: 62, column: 8, scope: !2726)
!2737 = !DILocation(line: 62, column: 10, scope: !2726)
!2738 = !DILocation(line: 63, column: 5, scope: !2726)
!2739 = !DILocation(line: 65, column: 1, scope: !2711)
!2740 = !DILocation(line: 0, scope: !238)
!2741 = !DILocation(line: 176, column: 14, scope: !238)
!2742 = !DILocation(line: 178, column: 9, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !238, file: !237, line: 178, column: 7)
!2744 = !DILocation(line: 178, column: 7, scope: !238)
!2745 = !DILocation(line: 180, column: 13, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !237, line: 180, column: 11)
!2747 = distinct !DILexicalBlock(scope: !2743, file: !237, line: 179, column: 5)
!2748 = !DILocation(line: 180, column: 11, scope: !2747)
!2749 = !DILocation(line: 188, column: 30, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2746, file: !237, line: 181, column: 9)
!2751 = !DILocation(line: 189, column: 16, scope: !2750)
!2752 = !DILocation(line: 189, column: 13, scope: !2750)
!2753 = !DILocation(line: 190, column: 9, scope: !2750)
!2754 = !DILocation(line: 191, column: 11, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2747, file: !237, line: 191, column: 11)
!2756 = !DILocation(line: 191, column: 11, scope: !2747)
!2757 = !DILocation(line: 206, column: 7, scope: !238)
!2758 = !DILocation(line: 207, column: 25, scope: !238)
!2759 = !DILocation(line: 0, scope: !2711, inlinedAt: !2760)
!2760 = distinct !DILocation(line: 207, column: 10, scope: !238)
!2761 = !DILocation(line: 53, column: 10, scope: !2719, inlinedAt: !2760)
!2762 = !DILocation(line: 192, column: 9, scope: !2755)
!2763 = !DILocation(line: 200, column: 69, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2765, file: !237, line: 200, column: 11)
!2765 = distinct !DILexicalBlock(scope: !2743, file: !237, line: 195, column: 5)
!2766 = !DILocation(line: 201, column: 11, scope: !2764)
!2767 = !DILocation(line: 200, column: 11, scope: !2765)
!2768 = !DILocation(line: 202, column: 9, scope: !2764)
!2769 = !DILocation(line: 203, column: 14, scope: !2765)
!2770 = !DILocation(line: 203, column: 18, scope: !2765)
!2771 = !DILocation(line: 203, column: 9, scope: !2765)
!2772 = !DILocation(line: 53, column: 8, scope: !2719, inlinedAt: !2760)
!2773 = !DILocation(line: 57, column: 7, scope: !2722, inlinedAt: !2760)
!2774 = !DILocation(line: 58, column: 7, scope: !2722, inlinedAt: !2760)
!2775 = !DILocation(line: 61, column: 7, scope: !2711, inlinedAt: !2760)
!2776 = !DILocation(line: 62, column: 8, scope: !2726, inlinedAt: !2760)
!2777 = !DILocation(line: 62, column: 10, scope: !2726, inlinedAt: !2760)
!2778 = !DILocation(line: 63, column: 5, scope: !2726, inlinedAt: !2760)
!2779 = !DILocation(line: 207, column: 3, scope: !238)
!2780 = distinct !DISubprogram(name: "xcharalloc", scope: !237, file: !237, line: 216, type: !1918, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2781)
!2781 = !{!2782}
!2782 = !DILocalVariable(name: "n", arg: 1, scope: !2780, file: !237, line: 216, type: !9)
!2783 = !DILocation(line: 0, scope: !2780)
!2784 = !DILocation(line: 0, scope: !2678, inlinedAt: !2785)
!2785 = distinct !DILocation(line: 218, column: 10, scope: !2780)
!2786 = !DILocation(line: 41, column: 13, scope: !2678, inlinedAt: !2785)
!2787 = !DILocation(line: 42, column: 8, scope: !2687, inlinedAt: !2785)
!2788 = !DILocation(line: 42, column: 10, scope: !2687, inlinedAt: !2785)
!2789 = !DILocation(line: 43, column: 5, scope: !2687, inlinedAt: !2785)
!2790 = !DILocation(line: 218, column: 3, scope: !2780)
!2791 = distinct !DISubprogram(name: "x2realloc", scope: !234, file: !234, line: 74, type: !2792, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2794)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!8, !8, !241}
!2794 = !{!2795, !2796}
!2795 = !DILocalVariable(name: "p", arg: 1, scope: !2791, file: !234, line: 74, type: !8)
!2796 = !DILocalVariable(name: "pn", arg: 2, scope: !2791, file: !234, line: 74, type: !241)
!2797 = !DILocation(line: 0, scope: !2791)
!2798 = !DILocation(line: 0, scope: !238, inlinedAt: !2799)
!2799 = distinct !DILocation(line: 76, column: 10, scope: !2791)
!2800 = !DILocation(line: 176, column: 14, scope: !238, inlinedAt: !2799)
!2801 = !DILocation(line: 178, column: 9, scope: !2743, inlinedAt: !2799)
!2802 = !DILocation(line: 178, column: 7, scope: !238, inlinedAt: !2799)
!2803 = !DILocation(line: 180, column: 13, scope: !2746, inlinedAt: !2799)
!2804 = !DILocation(line: 180, column: 11, scope: !2747, inlinedAt: !2799)
!2805 = !DILocation(line: 191, column: 11, scope: !2755, inlinedAt: !2799)
!2806 = !DILocation(line: 191, column: 11, scope: !2747, inlinedAt: !2799)
!2807 = !DILocation(line: 192, column: 9, scope: !2755, inlinedAt: !2799)
!2808 = !DILocation(line: 201, column: 11, scope: !2764, inlinedAt: !2799)
!2809 = !DILocation(line: 200, column: 11, scope: !2765, inlinedAt: !2799)
!2810 = !DILocation(line: 202, column: 9, scope: !2764, inlinedAt: !2799)
!2811 = !DILocation(line: 203, column: 14, scope: !2765, inlinedAt: !2799)
!2812 = !DILocation(line: 203, column: 18, scope: !2765, inlinedAt: !2799)
!2813 = !DILocation(line: 203, column: 9, scope: !2765, inlinedAt: !2799)
!2814 = !DILocation(line: 0, scope: !2711, inlinedAt: !2815)
!2815 = distinct !DILocation(line: 207, column: 10, scope: !238, inlinedAt: !2799)
!2816 = !DILocation(line: 53, column: 10, scope: !2719, inlinedAt: !2815)
!2817 = !DILocation(line: 206, column: 7, scope: !238, inlinedAt: !2799)
!2818 = !DILocation(line: 61, column: 7, scope: !2711, inlinedAt: !2815)
!2819 = !DILocation(line: 62, column: 8, scope: !2726, inlinedAt: !2815)
!2820 = !DILocation(line: 62, column: 10, scope: !2726, inlinedAt: !2815)
!2821 = !DILocation(line: 63, column: 5, scope: !2726, inlinedAt: !2815)
!2822 = !DILocation(line: 76, column: 3, scope: !2791)
!2823 = distinct !DISubprogram(name: "xzalloc", scope: !234, file: !234, line: 84, type: !2679, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2824)
!2824 = !{!2825}
!2825 = !DILocalVariable(name: "n", arg: 1, scope: !2823, file: !234, line: 84, type: !9)
!2826 = !DILocation(line: 0, scope: !2823)
!2827 = !DILocalVariable(name: "n", arg: 1, scope: !2828, file: !234, line: 93, type: !9)
!2828 = distinct !DISubprogram(name: "xcalloc", scope: !234, file: !234, line: 93, type: !2666, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2829)
!2829 = !{!2827, !2830, !2831}
!2830 = !DILocalVariable(name: "s", arg: 2, scope: !2828, file: !234, line: 93, type: !9)
!2831 = !DILocalVariable(name: "p", scope: !2828, file: !234, line: 95, type: !8)
!2832 = !DILocation(line: 0, scope: !2828, inlinedAt: !2833)
!2833 = distinct !DILocation(line: 86, column: 10, scope: !2823)
!2834 = !DILocation(line: 100, column: 7, scope: !2835, inlinedAt: !2833)
!2835 = distinct !DILexicalBlock(scope: !2828, file: !234, line: 100, column: 7)
!2836 = !DILocation(line: 101, column: 7, scope: !2835, inlinedAt: !2833)
!2837 = !DILocation(line: 101, column: 18, scope: !2835, inlinedAt: !2833)
!2838 = !DILocation(line: 101, column: 16, scope: !2835, inlinedAt: !2833)
!2839 = !DILocation(line: 100, column: 7, scope: !2828, inlinedAt: !2833)
!2840 = !DILocation(line: 102, column: 5, scope: !2835, inlinedAt: !2833)
!2841 = !DILocation(line: 86, column: 3, scope: !2823)
!2842 = !DILocation(line: 0, scope: !2828)
!2843 = !DILocation(line: 100, column: 7, scope: !2835)
!2844 = !DILocation(line: 101, column: 7, scope: !2835)
!2845 = !DILocation(line: 101, column: 18, scope: !2835)
!2846 = !DILocation(line: 101, column: 16, scope: !2835)
!2847 = !DILocation(line: 100, column: 7, scope: !2828)
!2848 = !DILocation(line: 102, column: 5, scope: !2835)
!2849 = !DILocation(line: 103, column: 3, scope: !2828)
!2850 = distinct !DISubprogram(name: "xmemdup", scope: !234, file: !234, line: 111, type: !2851, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2853)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!8, !830, !9}
!2853 = !{!2854, !2855}
!2854 = !DILocalVariable(name: "p", arg: 1, scope: !2850, file: !234, line: 111, type: !830)
!2855 = !DILocalVariable(name: "s", arg: 2, scope: !2850, file: !234, line: 111, type: !9)
!2856 = !DILocation(line: 0, scope: !2850)
!2857 = !DILocation(line: 0, scope: !2678, inlinedAt: !2858)
!2858 = distinct !DILocation(line: 113, column: 18, scope: !2850)
!2859 = !DILocation(line: 41, column: 13, scope: !2678, inlinedAt: !2858)
!2860 = !DILocation(line: 42, column: 8, scope: !2687, inlinedAt: !2858)
!2861 = !DILocation(line: 42, column: 10, scope: !2687, inlinedAt: !2858)
!2862 = !DILocation(line: 43, column: 5, scope: !2687, inlinedAt: !2858)
!2863 = !DILocalVariable(name: "__dest", arg: 1, scope: !2864, file: !935, line: 26, type: !938)
!2864 = distinct !DISubprogram(name: "memcpy", scope: !935, file: !935, line: 26, type: !936, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2865)
!2865 = !{!2863, !2866, !2867}
!2866 = !DILocalVariable(name: "__src", arg: 2, scope: !2864, file: !935, line: 26, type: !939)
!2867 = !DILocalVariable(name: "__len", arg: 3, scope: !2864, file: !935, line: 26, type: !9)
!2868 = !DILocation(line: 0, scope: !2864, inlinedAt: !2869)
!2869 = distinct !DILocation(line: 113, column: 10, scope: !2850)
!2870 = !DILocation(line: 29, column: 10, scope: !2864, inlinedAt: !2869)
!2871 = !DILocation(line: 113, column: 3, scope: !2850)
!2872 = distinct !DISubprogram(name: "xstrdup", scope: !234, file: !234, line: 119, type: !808, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2873)
!2873 = !{!2874}
!2874 = !DILocalVariable(name: "string", arg: 1, scope: !2872, file: !234, line: 119, type: !12)
!2875 = !DILocation(line: 0, scope: !2872)
!2876 = !DILocation(line: 121, column: 27, scope: !2872)
!2877 = !DILocation(line: 121, column: 43, scope: !2872)
!2878 = !DILocation(line: 0, scope: !2850, inlinedAt: !2879)
!2879 = distinct !DILocation(line: 121, column: 10, scope: !2872)
!2880 = !DILocation(line: 0, scope: !2678, inlinedAt: !2881)
!2881 = distinct !DILocation(line: 113, column: 18, scope: !2850, inlinedAt: !2879)
!2882 = !DILocation(line: 41, column: 13, scope: !2678, inlinedAt: !2881)
!2883 = !DILocation(line: 42, column: 8, scope: !2687, inlinedAt: !2881)
!2884 = !DILocation(line: 42, column: 10, scope: !2687, inlinedAt: !2881)
!2885 = !DILocation(line: 43, column: 5, scope: !2687, inlinedAt: !2881)
!2886 = !DILocation(line: 0, scope: !2864, inlinedAt: !2887)
!2887 = distinct !DILocation(line: 113, column: 10, scope: !2850, inlinedAt: !2879)
!2888 = !DILocation(line: 29, column: 10, scope: !2864, inlinedAt: !2887)
!2889 = !DILocation(line: 121, column: 3, scope: !2872)
!2890 = distinct !DISubprogram(name: "xalloc_die", scope: !251, file: !251, line: 32, type: !815, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !4)
!2891 = !DILocation(line: 34, column: 10, scope: !2890)
!2892 = !DILocation(line: 34, column: 33, scope: !2890)
!2893 = !DILocation(line: 34, column: 3, scope: !2890)
!2894 = !DILocation(line: 40, column: 3, scope: !2890)
!2895 = distinct !DISubprogram(name: "rpl_calloc", scope: !253, file: !253, line: 42, type: !2666, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !2896)
!2896 = !{!2897, !2898, !2899, !2900}
!2897 = !DILocalVariable(name: "n", arg: 1, scope: !2895, file: !253, line: 42, type: !9)
!2898 = !DILocalVariable(name: "s", arg: 2, scope: !2895, file: !253, line: 42, type: !9)
!2899 = !DILocalVariable(name: "result", scope: !2895, file: !253, line: 44, type: !8)
!2900 = !DILocalVariable(name: "bytes", scope: !2901, file: !253, line: 56, type: !9)
!2901 = distinct !DILexicalBlock(scope: !2902, file: !253, line: 53, column: 5)
!2902 = distinct !DILexicalBlock(scope: !2895, file: !253, line: 47, column: 7)
!2903 = !DILocation(line: 0, scope: !2895)
!2904 = !DILocation(line: 47, column: 9, scope: !2902)
!2905 = !DILocation(line: 47, column: 14, scope: !2902)
!2906 = !DILocation(line: 0, scope: !2901)
!2907 = !DILocation(line: 57, column: 21, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2901, file: !253, line: 57, column: 11)
!2909 = !DILocation(line: 57, column: 11, scope: !2901)
!2910 = !DILocation(line: 59, column: 11, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2908, file: !253, line: 58, column: 9)
!2912 = !DILocation(line: 59, column: 17, scope: !2911)
!2913 = !DILocation(line: 65, column: 12, scope: !2895)
!2914 = !DILocation(line: 72, column: 3, scope: !2895)
!2915 = !DILocation(line: 73, column: 1, scope: !2895)
!2916 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !255, file: !255, line: 86, type: !2917, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2931)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!9, !2919, !12, !9, !2920}
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1202, line: 6, baseType: !2922)
!2922 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1204, line: 21, baseType: !2923)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1204, line: 13, size: 64, elements: !2924)
!2924 = !{!2925, !2926}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2923, file: !1204, line: 15, baseType: !21, size: 32)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2923, file: !1204, line: 20, baseType: !2927, size: 32, offset: 32)
!2927 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2923, file: !1204, line: 16, size: 32, elements: !2928)
!2928 = !{!2929, !2930}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2927, file: !1204, line: 18, baseType: !138, size: 32)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2927, file: !1204, line: 19, baseType: !1213, size: 32)
!2931 = !{!2932, !2933, !2934, !2935, !2936, !2937, !2938}
!2932 = !DILocalVariable(name: "pwc", arg: 1, scope: !2916, file: !255, line: 86, type: !2919)
!2933 = !DILocalVariable(name: "s", arg: 2, scope: !2916, file: !255, line: 86, type: !12)
!2934 = !DILocalVariable(name: "n", arg: 3, scope: !2916, file: !255, line: 86, type: !9)
!2935 = !DILocalVariable(name: "ps", arg: 4, scope: !2916, file: !255, line: 86, type: !2920)
!2936 = !DILocalVariable(name: "ret", scope: !2916, file: !255, line: 88, type: !9)
!2937 = !DILocalVariable(name: "wc", scope: !2916, file: !255, line: 89, type: !1216)
!2938 = !DILocalVariable(name: "uc", scope: !2939, file: !255, line: 156, type: !14)
!2939 = distinct !DILexicalBlock(scope: !2940, file: !255, line: 155, column: 5)
!2940 = distinct !DILexicalBlock(scope: !2916, file: !255, line: 154, column: 7)
!2941 = !DILocation(line: 0, scope: !2916)
!2942 = !DILocation(line: 89, column: 3, scope: !2916)
!2943 = !DILocation(line: 105, column: 9, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2916, file: !255, line: 105, column: 7)
!2945 = !DILocation(line: 105, column: 7, scope: !2916)
!2946 = !DILocation(line: 145, column: 9, scope: !2916)
!2947 = !DILocation(line: 154, column: 19, scope: !2940)
!2948 = !DILocation(line: 154, column: 26, scope: !2940)
!2949 = !DILocation(line: 154, column: 41, scope: !2940)
!2950 = !DILocation(line: 154, column: 7, scope: !2916)
!2951 = !DILocation(line: 156, column: 26, scope: !2939)
!2952 = !DILocation(line: 0, scope: !2939)
!2953 = !DILocation(line: 157, column: 14, scope: !2939)
!2954 = !DILocation(line: 157, column: 12, scope: !2939)
!2955 = !DILocation(line: 163, column: 1, scope: !2916)
!2956 = !DISubprogram(name: "mbrtowc", scope: !1878, file: !1878, line: 296, type: !2957, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!11, !103, !12, !11, !2959}
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2960 = distinct !DISubprogram(name: "close_stream", scope: !258, file: !258, line: 56, type: !2961, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !2997)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!21, !2963}
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !40, line: 7, baseType: !2965)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !42, line: 49, size: 1728, elements: !2966)
!2966 = !{!2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2965, file: !42, line: 51, baseType: !21, size: 32)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2965, file: !42, line: 54, baseType: !6, size: 64, offset: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2965, file: !42, line: 55, baseType: !6, size: 64, offset: 128)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2965, file: !42, line: 56, baseType: !6, size: 64, offset: 192)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2965, file: !42, line: 57, baseType: !6, size: 64, offset: 256)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2965, file: !42, line: 58, baseType: !6, size: 64, offset: 320)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2965, file: !42, line: 59, baseType: !6, size: 64, offset: 384)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2965, file: !42, line: 60, baseType: !6, size: 64, offset: 448)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2965, file: !42, line: 61, baseType: !6, size: 64, offset: 512)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2965, file: !42, line: 64, baseType: !6, size: 64, offset: 576)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2965, file: !42, line: 65, baseType: !6, size: 64, offset: 640)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2965, file: !42, line: 66, baseType: !6, size: 64, offset: 704)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2965, file: !42, line: 68, baseType: !57, size: 64, offset: 768)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2965, file: !42, line: 70, baseType: !2981, size: 64, offset: 832)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2965, file: !42, line: 72, baseType: !21, size: 32, offset: 896)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2965, file: !42, line: 73, baseType: !21, size: 32, offset: 928)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2965, file: !42, line: 74, baseType: !64, size: 64, offset: 960)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2965, file: !42, line: 77, baseType: !68, size: 16, offset: 1024)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2965, file: !42, line: 78, baseType: !70, size: 8, offset: 1040)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2965, file: !42, line: 79, baseType: !72, size: 8, offset: 1048)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2965, file: !42, line: 81, baseType: !76, size: 64, offset: 1088)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2965, file: !42, line: 89, baseType: !79, size: 64, offset: 1152)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2965, file: !42, line: 91, baseType: !81, size: 64, offset: 1216)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2965, file: !42, line: 92, baseType: !84, size: 64, offset: 1280)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2965, file: !42, line: 93, baseType: !2981, size: 64, offset: 1344)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2965, file: !42, line: 94, baseType: !8, size: 64, offset: 1408)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2965, file: !42, line: 95, baseType: !9, size: 64, offset: 1472)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2965, file: !42, line: 96, baseType: !21, size: 32, offset: 1536)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2965, file: !42, line: 98, baseType: !91, size: 160, offset: 1568)
!2997 = !{!2998, !2999, !3001, !3002}
!2998 = !DILocalVariable(name: "stream", arg: 1, scope: !2960, file: !258, line: 56, type: !2963)
!2999 = !DILocalVariable(name: "some_pending", scope: !2960, file: !258, line: 58, type: !3000)
!3000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!3001 = !DILocalVariable(name: "prev_fail", scope: !2960, file: !258, line: 59, type: !3000)
!3002 = !DILocalVariable(name: "fclose_fail", scope: !2960, file: !258, line: 60, type: !3000)
!3003 = !DILocation(line: 0, scope: !2960)
!3004 = !DILocation(line: 58, column: 30, scope: !2960)
!3005 = !DILocalVariable(name: "__stream", arg: 1, scope: !3006, file: !785, line: 135, type: !2963)
!3006 = distinct !DISubprogram(name: "ferror_unlocked", scope: !785, file: !785, line: 135, type: !2961, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !3007)
!3007 = !{!3005}
!3008 = !DILocation(line: 0, scope: !3006, inlinedAt: !3009)
!3009 = distinct !DILocation(line: 59, column: 27, scope: !2960)
!3010 = !DILocation(line: 137, column: 10, scope: !3006, inlinedAt: !3009)
!3011 = !{!793, !769, i64 0}
!3012 = !DILocation(line: 59, column: 43, scope: !2960)
!3013 = !DILocation(line: 60, column: 29, scope: !2960)
!3014 = !DILocation(line: 60, column: 45, scope: !2960)
!3015 = !DILocation(line: 70, column: 17, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !2960, file: !258, line: 70, column: 7)
!3017 = !DILocation(line: 58, column: 50, scope: !2960)
!3018 = !DILocation(line: 70, column: 33, scope: !3016)
!3019 = !DILocation(line: 70, column: 53, scope: !3016)
!3020 = !DILocation(line: 70, column: 59, scope: !3016)
!3021 = !DILocation(line: 70, column: 7, scope: !2960)
!3022 = !DILocation(line: 72, column: 11, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3016, file: !258, line: 71, column: 5)
!3024 = !DILocation(line: 73, column: 9, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3023, file: !258, line: 72, column: 11)
!3026 = !DILocation(line: 73, column: 15, scope: !3025)
!3027 = !DILocation(line: 78, column: 1, scope: !2960)
!3028 = distinct !DISubprogram(name: "hard_locale", scope: !260, file: !260, line: 27, type: !3029, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !3031)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!27, !21}
!3031 = !{!3032, !3033}
!3032 = !DILocalVariable(name: "category", arg: 1, scope: !3028, file: !260, line: 27, type: !21)
!3033 = !DILocalVariable(name: "locale", scope: !3028, file: !260, line: 29, type: !3034)
!3034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2056, elements: !3035)
!3035 = !{!3036}
!3036 = !DISubrange(count: 257)
!3037 = !DILocation(line: 0, scope: !3028)
!3038 = !DILocation(line: 29, column: 3, scope: !3028)
!3039 = !DILocation(line: 29, column: 8, scope: !3028)
!3040 = !DILocation(line: 31, column: 7, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3028, file: !260, line: 31, column: 7)
!3042 = !DILocation(line: 31, column: 7, scope: !3028)
!3043 = !DILocation(line: 34, column: 12, scope: !3028)
!3044 = !DILocation(line: 34, column: 38, scope: !3028)
!3045 = !DILocation(line: 34, column: 41, scope: !3028)
!3046 = !DILocation(line: 34, column: 66, scope: !3028)
!3047 = !DILocation(line: 35, column: 1, scope: !3028)
!3048 = distinct !DISubprogram(name: "locale_charset", scope: !262, file: !262, line: 831, type: !3049, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !3051)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!12}
!3051 = !{!3052}
!3052 = !DILocalVariable(name: "codeset", scope: !3048, file: !262, line: 833, type: !12)
!3053 = !DILocation(line: 847, column: 13, scope: !3048)
!3054 = !DILocation(line: 0, scope: !3048)
!3055 = !DILocation(line: 911, column: 15, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3048, file: !262, line: 911, column: 7)
!3057 = !DILocation(line: 911, column: 7, scope: !3048)
!3058 = !DILocation(line: 1070, column: 13, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3060, file: !262, line: 1070, column: 13)
!3060 = distinct !DILexicalBlock(scope: !3061, file: !262, line: 1060, column: 7)
!3061 = distinct !DILexicalBlock(scope: !3048, file: !262, line: 1019, column: 3)
!3062 = !DILocation(line: 1070, column: 24, scope: !3059)
!3063 = !DILocation(line: 1070, column: 13, scope: !3060)
!3064 = !DILocation(line: 1158, column: 3, scope: !3048)
!3065 = !DISubprogram(name: "nl_langinfo", scope: !265, file: !265, line: 661, type: !3066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!6, !21}
!3068 = distinct !DISubprogram(name: "setlocale_null_r", scope: !651, file: !651, line: 269, type: !3069, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !3071)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!21, !21, !6, !9}
!3071 = !{!3072, !3073, !3074}
!3072 = !DILocalVariable(name: "category", arg: 1, scope: !3068, file: !651, line: 269, type: !21)
!3073 = !DILocalVariable(name: "buf", arg: 2, scope: !3068, file: !651, line: 269, type: !6)
!3074 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3068, file: !651, line: 269, type: !9)
!3075 = !DILocation(line: 0, scope: !3068)
!3076 = !DILocalVariable(name: "category", arg: 1, scope: !3077, file: !651, line: 91, type: !21)
!3077 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !651, file: !651, line: 91, type: !3069, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !3078)
!3078 = !{!3076, !3079, !3080, !3081, !3082}
!3079 = !DILocalVariable(name: "buf", arg: 2, scope: !3077, file: !651, line: 91, type: !6)
!3080 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3077, file: !651, line: 91, type: !9)
!3081 = !DILocalVariable(name: "result", scope: !3077, file: !651, line: 140, type: !12)
!3082 = !DILocalVariable(name: "length", scope: !3083, file: !651, line: 154, type: !9)
!3083 = distinct !DILexicalBlock(scope: !3084, file: !651, line: 153, column: 5)
!3084 = distinct !DILexicalBlock(scope: !3077, file: !651, line: 142, column: 7)
!3085 = !DILocation(line: 0, scope: !3077, inlinedAt: !3086)
!3086 = distinct !DILocation(line: 274, column: 10, scope: !3068)
!3087 = !DILocalVariable(name: "category", arg: 1, scope: !3088, file: !651, line: 60, type: !21)
!3088 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !651, file: !651, line: 60, type: !3089, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !3091)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!12, !21}
!3091 = !{!3087, !3092}
!3092 = !DILocalVariable(name: "result", scope: !3088, file: !651, line: 62, type: !12)
!3093 = !DILocation(line: 0, scope: !3088, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 140, column: 24, scope: !3077, inlinedAt: !3086)
!3095 = !DILocation(line: 62, column: 24, scope: !3088, inlinedAt: !3094)
!3096 = !DILocation(line: 142, column: 14, scope: !3084, inlinedAt: !3086)
!3097 = !DILocation(line: 142, column: 7, scope: !3077, inlinedAt: !3086)
!3098 = !DILocation(line: 145, column: 19, scope: !3099, inlinedAt: !3086)
!3099 = distinct !DILexicalBlock(scope: !3100, file: !651, line: 145, column: 11)
!3100 = distinct !DILexicalBlock(scope: !3084, file: !651, line: 143, column: 5)
!3101 = !DILocation(line: 145, column: 11, scope: !3100, inlinedAt: !3086)
!3102 = !DILocation(line: 149, column: 16, scope: !3099, inlinedAt: !3086)
!3103 = !DILocation(line: 149, column: 9, scope: !3099, inlinedAt: !3086)
!3104 = !DILocation(line: 154, column: 23, scope: !3083, inlinedAt: !3086)
!3105 = !DILocation(line: 0, scope: !3083, inlinedAt: !3086)
!3106 = !DILocation(line: 155, column: 18, scope: !3107, inlinedAt: !3086)
!3107 = distinct !DILexicalBlock(scope: !3083, file: !651, line: 155, column: 11)
!3108 = !DILocation(line: 155, column: 11, scope: !3083, inlinedAt: !3086)
!3109 = !DILocation(line: 157, column: 39, scope: !3110, inlinedAt: !3086)
!3110 = distinct !DILexicalBlock(scope: !3107, file: !651, line: 156, column: 9)
!3111 = !DILocalVariable(name: "__dest", arg: 1, scope: !3112, file: !935, line: 26, type: !938)
!3112 = distinct !DISubprogram(name: "memcpy", scope: !935, file: !935, line: 26, type: !936, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !3113)
!3113 = !{!3111, !3114, !3115}
!3114 = !DILocalVariable(name: "__src", arg: 2, scope: !3112, file: !935, line: 26, type: !939)
!3115 = !DILocalVariable(name: "__len", arg: 3, scope: !3112, file: !935, line: 26, type: !9)
!3116 = !DILocation(line: 0, scope: !3112, inlinedAt: !3117)
!3117 = distinct !DILocation(line: 157, column: 11, scope: !3110, inlinedAt: !3086)
!3118 = !DILocation(line: 29, column: 10, scope: !3112, inlinedAt: !3117)
!3119 = !DILocation(line: 158, column: 11, scope: !3110, inlinedAt: !3086)
!3120 = !DILocation(line: 162, column: 23, scope: !3121, inlinedAt: !3086)
!3121 = distinct !DILexicalBlock(scope: !3122, file: !651, line: 162, column: 15)
!3122 = distinct !DILexicalBlock(scope: !3107, file: !651, line: 161, column: 9)
!3123 = !DILocation(line: 162, column: 15, scope: !3122, inlinedAt: !3086)
!3124 = !DILocation(line: 167, column: 44, scope: !3125, inlinedAt: !3086)
!3125 = distinct !DILexicalBlock(scope: !3121, file: !651, line: 163, column: 13)
!3126 = !DILocation(line: 0, scope: !3112, inlinedAt: !3127)
!3127 = distinct !DILocation(line: 167, column: 15, scope: !3125, inlinedAt: !3086)
!3128 = !DILocation(line: 29, column: 10, scope: !3112, inlinedAt: !3127)
!3129 = !DILocation(line: 168, column: 15, scope: !3125, inlinedAt: !3086)
!3130 = !DILocation(line: 168, column: 32, scope: !3125, inlinedAt: !3086)
!3131 = !DILocation(line: 169, column: 13, scope: !3125, inlinedAt: !3086)
!3132 = !DILocation(line: 0, scope: !3084, inlinedAt: !3086)
!3133 = !DILocation(line: 274, column: 3, scope: !3068)
!3134 = distinct !DISubprogram(name: "setlocale_null", scope: !651, file: !651, line: 301, type: !3089, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !3135)
!3135 = !{!3136}
!3136 = !DILocalVariable(name: "category", arg: 1, scope: !3134, file: !651, line: 301, type: !21)
!3137 = !DILocation(line: 0, scope: !3134)
!3138 = !DILocation(line: 0, scope: !3088, inlinedAt: !3139)
!3139 = distinct !DILocation(line: 304, column: 10, scope: !3134)
!3140 = !DILocation(line: 62, column: 24, scope: !3088, inlinedAt: !3139)
!3141 = !DILocation(line: 304, column: 3, scope: !3134)
!3142 = distinct !DISubprogram(name: "rpl_fclose", scope: !653, file: !653, line: 58, type: !3143, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !652, retainedNodes: !3179)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!21, !3145}
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !40, line: 7, baseType: !3147)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !42, line: 49, size: 1728, elements: !3148)
!3148 = !{!3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3147, file: !42, line: 51, baseType: !21, size: 32)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3147, file: !42, line: 54, baseType: !6, size: 64, offset: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3147, file: !42, line: 55, baseType: !6, size: 64, offset: 128)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3147, file: !42, line: 56, baseType: !6, size: 64, offset: 192)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3147, file: !42, line: 57, baseType: !6, size: 64, offset: 256)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3147, file: !42, line: 58, baseType: !6, size: 64, offset: 320)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3147, file: !42, line: 59, baseType: !6, size: 64, offset: 384)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3147, file: !42, line: 60, baseType: !6, size: 64, offset: 448)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3147, file: !42, line: 61, baseType: !6, size: 64, offset: 512)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3147, file: !42, line: 64, baseType: !6, size: 64, offset: 576)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3147, file: !42, line: 65, baseType: !6, size: 64, offset: 640)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3147, file: !42, line: 66, baseType: !6, size: 64, offset: 704)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3147, file: !42, line: 68, baseType: !57, size: 64, offset: 768)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3147, file: !42, line: 70, baseType: !3163, size: 64, offset: 832)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3147, file: !42, line: 72, baseType: !21, size: 32, offset: 896)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3147, file: !42, line: 73, baseType: !21, size: 32, offset: 928)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3147, file: !42, line: 74, baseType: !64, size: 64, offset: 960)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3147, file: !42, line: 77, baseType: !68, size: 16, offset: 1024)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3147, file: !42, line: 78, baseType: !70, size: 8, offset: 1040)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3147, file: !42, line: 79, baseType: !72, size: 8, offset: 1048)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3147, file: !42, line: 81, baseType: !76, size: 64, offset: 1088)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3147, file: !42, line: 89, baseType: !79, size: 64, offset: 1152)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3147, file: !42, line: 91, baseType: !81, size: 64, offset: 1216)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3147, file: !42, line: 92, baseType: !84, size: 64, offset: 1280)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3147, file: !42, line: 93, baseType: !3163, size: 64, offset: 1344)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3147, file: !42, line: 94, baseType: !8, size: 64, offset: 1408)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3147, file: !42, line: 95, baseType: !9, size: 64, offset: 1472)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3147, file: !42, line: 96, baseType: !21, size: 32, offset: 1536)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3147, file: !42, line: 98, baseType: !91, size: 160, offset: 1568)
!3179 = !{!3180, !3181, !3182, !3183}
!3180 = !DILocalVariable(name: "fp", arg: 1, scope: !3142, file: !653, line: 58, type: !3145)
!3181 = !DILocalVariable(name: "saved_errno", scope: !3142, file: !653, line: 60, type: !21)
!3182 = !DILocalVariable(name: "fd", scope: !3142, file: !653, line: 61, type: !21)
!3183 = !DILocalVariable(name: "result", scope: !3142, file: !653, line: 62, type: !21)
!3184 = !DILocation(line: 0, scope: !3142)
!3185 = !DILocation(line: 65, column: 8, scope: !3142)
!3186 = !DILocation(line: 66, column: 10, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3142, file: !653, line: 66, column: 7)
!3188 = !DILocation(line: 66, column: 7, scope: !3142)
!3189 = !DILocation(line: 67, column: 12, scope: !3187)
!3190 = !DILocation(line: 67, column: 5, scope: !3187)
!3191 = !DILocation(line: 72, column: 9, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3142, file: !653, line: 72, column: 7)
!3193 = !DILocation(line: 72, column: 23, scope: !3192)
!3194 = !DILocation(line: 72, column: 33, scope: !3192)
!3195 = !DILocation(line: 72, column: 26, scope: !3192)
!3196 = !DILocation(line: 72, column: 59, scope: !3192)
!3197 = !DILocation(line: 73, column: 7, scope: !3192)
!3198 = !DILocation(line: 73, column: 10, scope: !3192)
!3199 = !DILocation(line: 72, column: 7, scope: !3142)
!3200 = !DILocation(line: 100, column: 12, scope: !3142)
!3201 = !DILocation(line: 105, column: 7, scope: !3142)
!3202 = !DILocation(line: 74, column: 19, scope: !3192)
!3203 = !DILocation(line: 105, column: 19, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3142, file: !653, line: 105, column: 7)
!3205 = !DILocation(line: 107, column: 13, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3204, file: !653, line: 106, column: 5)
!3207 = !DILocation(line: 109, column: 5, scope: !3206)
!3208 = !DILocation(line: 112, column: 1, scope: !3142)
!3209 = !DISubprogram(name: "fileno", scope: !744, file: !744, line: 785, type: !3210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!21, !3163}
!3212 = !DISubprogram(name: "fclose", scope: !744, file: !744, line: 213, type: !3210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3213 = !DISubprogram(name: "lseek", scope: !3214, file: !3214, line: 334, type: !3215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3214 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!66, !21, !66, !21}
!3217 = distinct !DISubprogram(name: "rpl_fflush", scope: !655, file: !655, line: 129, type: !3218, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !654, retainedNodes: !3254)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!21, !3220}
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !40, line: 7, baseType: !3222)
!3222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !42, line: 49, size: 1728, elements: !3223)
!3223 = !{!3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3222, file: !42, line: 51, baseType: !21, size: 32)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3222, file: !42, line: 54, baseType: !6, size: 64, offset: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3222, file: !42, line: 55, baseType: !6, size: 64, offset: 128)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3222, file: !42, line: 56, baseType: !6, size: 64, offset: 192)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3222, file: !42, line: 57, baseType: !6, size: 64, offset: 256)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3222, file: !42, line: 58, baseType: !6, size: 64, offset: 320)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3222, file: !42, line: 59, baseType: !6, size: 64, offset: 384)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3222, file: !42, line: 60, baseType: !6, size: 64, offset: 448)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3222, file: !42, line: 61, baseType: !6, size: 64, offset: 512)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3222, file: !42, line: 64, baseType: !6, size: 64, offset: 576)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3222, file: !42, line: 65, baseType: !6, size: 64, offset: 640)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3222, file: !42, line: 66, baseType: !6, size: 64, offset: 704)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3222, file: !42, line: 68, baseType: !57, size: 64, offset: 768)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3222, file: !42, line: 70, baseType: !3238, size: 64, offset: 832)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3222, file: !42, line: 72, baseType: !21, size: 32, offset: 896)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3222, file: !42, line: 73, baseType: !21, size: 32, offset: 928)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3222, file: !42, line: 74, baseType: !64, size: 64, offset: 960)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3222, file: !42, line: 77, baseType: !68, size: 16, offset: 1024)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3222, file: !42, line: 78, baseType: !70, size: 8, offset: 1040)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3222, file: !42, line: 79, baseType: !72, size: 8, offset: 1048)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3222, file: !42, line: 81, baseType: !76, size: 64, offset: 1088)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3222, file: !42, line: 89, baseType: !79, size: 64, offset: 1152)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3222, file: !42, line: 91, baseType: !81, size: 64, offset: 1216)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3222, file: !42, line: 92, baseType: !84, size: 64, offset: 1280)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3222, file: !42, line: 93, baseType: !3238, size: 64, offset: 1344)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3222, file: !42, line: 94, baseType: !8, size: 64, offset: 1408)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3222, file: !42, line: 95, baseType: !9, size: 64, offset: 1472)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3222, file: !42, line: 96, baseType: !21, size: 32, offset: 1536)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3222, file: !42, line: 98, baseType: !91, size: 160, offset: 1568)
!3254 = !{!3255}
!3255 = !DILocalVariable(name: "stream", arg: 1, scope: !3217, file: !655, line: 129, type: !3220)
!3256 = !DILocation(line: 0, scope: !3217)
!3257 = !DILocation(line: 150, column: 14, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3217, file: !655, line: 150, column: 7)
!3259 = !DILocation(line: 150, column: 22, scope: !3258)
!3260 = !DILocation(line: 150, column: 27, scope: !3258)
!3261 = !DILocation(line: 150, column: 7, scope: !3217)
!3262 = !DILocation(line: 151, column: 12, scope: !3258)
!3263 = !DILocation(line: 151, column: 5, scope: !3258)
!3264 = !DILocalVariable(name: "fp", arg: 1, scope: !3265, file: !655, line: 41, type: !3220)
!3265 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !655, file: !655, line: 41, type: !3266, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !654, retainedNodes: !3268)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{null, !3220}
!3268 = !{!3264}
!3269 = !DILocation(line: 0, scope: !3265, inlinedAt: !3270)
!3270 = distinct !DILocation(line: 156, column: 3, scope: !3217)
!3271 = !DILocation(line: 43, column: 11, scope: !3272, inlinedAt: !3270)
!3272 = distinct !DILexicalBlock(scope: !3265, file: !655, line: 43, column: 7)
!3273 = !DILocation(line: 43, column: 18, scope: !3272, inlinedAt: !3270)
!3274 = !DILocation(line: 43, column: 7, scope: !3265, inlinedAt: !3270)
!3275 = !DILocation(line: 45, column: 5, scope: !3272, inlinedAt: !3270)
!3276 = !DILocation(line: 158, column: 10, scope: !3217)
!3277 = !DILocation(line: 158, column: 3, scope: !3217)
!3278 = !DILocation(line: 235, column: 1, scope: !3217)
!3279 = !DISubprogram(name: "fflush", scope: !744, file: !744, line: 218, type: !3280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!21, !3238}
!3282 = distinct !DISubprogram(name: "rpl_fseeko", scope: !657, file: !657, line: 28, type: !3283, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !3320)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{!21, !3285, !3319, !21}
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !40, line: 7, baseType: !3287)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !42, line: 49, size: 1728, elements: !3288)
!3288 = !{!3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3287, file: !42, line: 51, baseType: !21, size: 32)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3287, file: !42, line: 54, baseType: !6, size: 64, offset: 64)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3287, file: !42, line: 55, baseType: !6, size: 64, offset: 128)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3287, file: !42, line: 56, baseType: !6, size: 64, offset: 192)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3287, file: !42, line: 57, baseType: !6, size: 64, offset: 256)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3287, file: !42, line: 58, baseType: !6, size: 64, offset: 320)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3287, file: !42, line: 59, baseType: !6, size: 64, offset: 384)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3287, file: !42, line: 60, baseType: !6, size: 64, offset: 448)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3287, file: !42, line: 61, baseType: !6, size: 64, offset: 512)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3287, file: !42, line: 64, baseType: !6, size: 64, offset: 576)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3287, file: !42, line: 65, baseType: !6, size: 64, offset: 640)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3287, file: !42, line: 66, baseType: !6, size: 64, offset: 704)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3287, file: !42, line: 68, baseType: !57, size: 64, offset: 768)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3287, file: !42, line: 70, baseType: !3303, size: 64, offset: 832)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3287, file: !42, line: 72, baseType: !21, size: 32, offset: 896)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3287, file: !42, line: 73, baseType: !21, size: 32, offset: 928)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3287, file: !42, line: 74, baseType: !64, size: 64, offset: 960)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3287, file: !42, line: 77, baseType: !68, size: 16, offset: 1024)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3287, file: !42, line: 78, baseType: !70, size: 8, offset: 1040)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3287, file: !42, line: 79, baseType: !72, size: 8, offset: 1048)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3287, file: !42, line: 81, baseType: !76, size: 64, offset: 1088)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3287, file: !42, line: 89, baseType: !79, size: 64, offset: 1152)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3287, file: !42, line: 91, baseType: !81, size: 64, offset: 1216)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3287, file: !42, line: 92, baseType: !84, size: 64, offset: 1280)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3287, file: !42, line: 93, baseType: !3303, size: 64, offset: 1344)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3287, file: !42, line: 94, baseType: !8, size: 64, offset: 1408)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3287, file: !42, line: 95, baseType: !9, size: 64, offset: 1472)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3287, file: !42, line: 96, baseType: !21, size: 32, offset: 1536)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3287, file: !42, line: 98, baseType: !91, size: 160, offset: 1568)
!3319 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !744, line: 63, baseType: !64)
!3320 = !{!3321, !3322, !3323, !3324}
!3321 = !DILocalVariable(name: "fp", arg: 1, scope: !3282, file: !657, line: 28, type: !3285)
!3322 = !DILocalVariable(name: "offset", arg: 2, scope: !3282, file: !657, line: 28, type: !3319)
!3323 = !DILocalVariable(name: "whence", arg: 3, scope: !3282, file: !657, line: 28, type: !21)
!3324 = !DILocalVariable(name: "pos", scope: !3325, file: !657, line: 117, type: !3319)
!3325 = distinct !DILexicalBlock(scope: !3326, file: !657, line: 113, column: 5)
!3326 = distinct !DILexicalBlock(scope: !3282, file: !657, line: 52, column: 7)
!3327 = !DILocation(line: 0, scope: !3282)
!3328 = !DILocation(line: 52, column: 11, scope: !3326)
!3329 = !{!793, !676, i64 16}
!3330 = !DILocation(line: 52, column: 31, scope: !3326)
!3331 = !{!793, !676, i64 8}
!3332 = !DILocation(line: 52, column: 24, scope: !3326)
!3333 = !DILocation(line: 53, column: 7, scope: !3326)
!3334 = !DILocation(line: 53, column: 14, scope: !3326)
!3335 = !DILocation(line: 53, column: 35, scope: !3326)
!3336 = !{!793, !676, i64 32}
!3337 = !DILocation(line: 53, column: 28, scope: !3326)
!3338 = !DILocation(line: 54, column: 7, scope: !3326)
!3339 = !DILocation(line: 54, column: 14, scope: !3326)
!3340 = !{!793, !676, i64 72}
!3341 = !DILocation(line: 54, column: 28, scope: !3326)
!3342 = !DILocation(line: 52, column: 7, scope: !3282)
!3343 = !DILocation(line: 117, column: 26, scope: !3325)
!3344 = !DILocation(line: 117, column: 19, scope: !3325)
!3345 = !DILocation(line: 0, scope: !3325)
!3346 = !DILocation(line: 118, column: 15, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3325, file: !657, line: 118, column: 11)
!3348 = !DILocation(line: 118, column: 11, scope: !3325)
!3349 = !DILocation(line: 129, column: 11, scope: !3325)
!3350 = !DILocation(line: 129, column: 18, scope: !3325)
!3351 = !DILocation(line: 130, column: 11, scope: !3325)
!3352 = !DILocation(line: 130, column: 19, scope: !3325)
!3353 = !{!793, !794, i64 144}
!3354 = !DILocation(line: 161, column: 7, scope: !3325)
!3355 = !DILocation(line: 163, column: 10, scope: !3282)
!3356 = !DILocation(line: 163, column: 3, scope: !3282)
!3357 = !DILocation(line: 164, column: 1, scope: !3282)
!3358 = !DISubprogram(name: "fseeko", scope: !744, file: !744, line: 712, type: !3359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!21, !3303, !66, !21}
