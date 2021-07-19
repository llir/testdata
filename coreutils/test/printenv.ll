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
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), align 8, !dbg !29
@.str.33 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !35
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !40
@.str.36 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.37 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.38 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !43
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !49
@.str.45 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.46 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.47 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.49, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.50, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.51, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.52, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.53, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.54, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.55, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.56, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.57, i32 0, i32 0), i8* null], align 16, !dbg !55
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !100
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !106
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !118
@.str.11.58 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.59 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.60 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.61 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.62 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.63 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.64 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !125
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !132
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !120
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !134
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !140
@.str.1.102 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.103 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.112 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.115 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.116 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !586 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !590, metadata !DIExpression()), !dbg !591
  %3 = icmp eq i32 %0, 0, !dbg !592
  br i1 %3, label %9, label %4, !dbg !594

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !595, !tbaa !597
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #24, !dbg !595
  %7 = load i8*, i8** @program_name, align 8, !dbg !595, !tbaa !597
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #24, !dbg !595
  br label %60, !dbg !595

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([167 x i8], [167 x i8]* @.str.1, i64 0, i64 0), i32 5) #24, !dbg !601
  %11 = load i8*, i8** @program_name, align 8, !dbg !601, !tbaa !597
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #24, !dbg !601
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 5) #24, !dbg !603
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !603, !tbaa !597
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !603
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #24, !dbg !604
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !604, !tbaa !597
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !604
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #24, !dbg !605
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !605, !tbaa !597
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !605
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.5, i64 0, i64 0), i32 5) #24, !dbg !606
  %23 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)) #24, !dbg !606
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), metadata !607, metadata !DIExpression()) #24, !dbg !626
  %24 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !628
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %24) #24, !dbg !628
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !613, metadata !DIExpression()) #24, !dbg !629
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %24, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #24, !dbg !629
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), metadata !622, metadata !DIExpression()) #24, !dbg !626
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !623, metadata !DIExpression()) #24, !dbg !626
  %25 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !630
  call void @llvm.dbg.value(metadata %struct.infomap* %25, metadata !623, metadata !DIExpression()) #24, !dbg !626
  br label %26, !dbg !631

26:                                               ; preds = %31, %9
  %27 = phi i8* [ %34, %31 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), %9 ]
  %28 = phi %struct.infomap* [ %32, %31 ], [ %25, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %28, metadata !623, metadata !DIExpression()) #24, !dbg !626
  %29 = tail call i32 @strcmp(i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %27) #25, !dbg !632
  %30 = icmp eq i32 %29, 0, !dbg !632
  br i1 %30, label %36, label %31, !dbg !631

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.infomap, %struct.infomap* %28, i64 1, !dbg !633
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !623, metadata !DIExpression()) #24, !dbg !626
  %33 = getelementptr inbounds %struct.infomap, %struct.infomap* %32, i64 0, i32 0, !dbg !634
  %34 = load i8*, i8** %33, align 8, !dbg !634, !tbaa !635
  %35 = icmp eq i8* %34, null, !dbg !637
  br i1 %35, label %36, label %26, !dbg !638, !llvm.loop !639

36:                                               ; preds = %31, %26
  %37 = phi %struct.infomap* [ %28, %26 ], [ %32, %31 ]
  %38 = getelementptr inbounds %struct.infomap, %struct.infomap* %37, i64 0, i32 1, !dbg !641
  %39 = load i8*, i8** %38, align 8, !dbg !641, !tbaa !643
  %40 = icmp eq i8* %39, null, !dbg !644
  %41 = select i1 %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %39, !dbg !645
  call void @llvm.dbg.value(metadata i8* %41, metadata !622, metadata !DIExpression()) #24, !dbg !626
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 5) #24, !dbg !646
  %43 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0)) #24, !dbg !646
  %44 = tail call i8* @setlocale(i32 5, i8* null) #24, !dbg !647
  call void @llvm.dbg.value(metadata i8* %44, metadata !625, metadata !DIExpression()) #24, !dbg !626
  %45 = icmp eq i8* %44, null, !dbg !648
  br i1 %45, label %53, label %46, !dbg !650

46:                                               ; preds = %36
  %47 = tail call i32 @strncmp(i8* nonnull %44, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i64 3) #25, !dbg !651
  %48 = icmp eq i32 %47, 0, !dbg !651
  br i1 %48, label %53, label %49, !dbg !652

49:                                               ; preds = %46
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.26, i64 0, i64 0), i32 5) #24, !dbg !653
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !653, !tbaa !597
  %52 = tail call i32 @fputs_unlocked(i8* %50, %struct._IO_FILE* %51) #24, !dbg !653
  br label %53, !dbg !655

53:                                               ; preds = %36, %46, %49
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i32 5) #24, !dbg !656
  %55 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)) #24, !dbg !656
  %56 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i64 0, i64 0), i32 5) #24, !dbg !657
  %57 = icmp eq i8* %41, getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), !dbg !657
  %58 = select i1 %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !657
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %56, i8* %41, i8* %58) #24, !dbg !657
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %24) #24, !dbg !658
  br label %60

60:                                               ; preds = %53, %4
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
  call void @llvm.dbg.value(metadata i32 %0, metadata !729, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata i8** %1, metadata !730, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata i8 0, metadata !737, metadata !DIExpression()), !dbg !745
  %3 = load i8*, i8** %1, align 8, !dbg !746, !tbaa !597
  tail call void @set_program_name(i8* %3) #24, !dbg !747
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #24, !dbg !748
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #24, !dbg !749
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #24, !dbg !750
  call void @llvm.dbg.value(metadata i32 2, metadata !751, metadata !DIExpression()), !dbg !754
  store volatile i32 2, i32* @exit_failure, align 4, !dbg !756, !tbaa !758
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #24, !dbg !760
  br label %8, !dbg !761

8:                                                ; preds = %8, %2
  %9 = phi i32 [ 10, %2 ], [ 0, %8 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !737, metadata !DIExpression()), !dbg !745
  %10 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), %struct.option* getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #24, !dbg !762
  call void @llvm.dbg.value(metadata i32 %10, metadata !736, metadata !DIExpression()), !dbg !745
  switch i32 %10, label %15 [
    i32 -1, label %16
    i32 48, label %8
    i32 -130, label %11
    i32 -131, label %12
  ], !dbg !761, !llvm.loop !763

11:                                               ; preds = %8
  tail call void @usage(i32 0) #27, !dbg !765
  unreachable, !dbg !765

12:                                               ; preds = %8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !768, !tbaa !597
  %14 = load i8*, i8** @Version, align 8, !dbg !768, !tbaa !597
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8* null) #24, !dbg !768
  tail call void @exit(i32 0) #26, !dbg !768
  unreachable, !dbg !768

15:                                               ; preds = %8
  tail call void @usage(i32 2) #27, !dbg !769
  unreachable, !dbg !769

16:                                               ; preds = %8
  %17 = load i32, i32* @optind, align 4, !dbg !770, !tbaa !758
  %18 = icmp slt i32 %17, %0, !dbg !771
  br i1 %18, label %19, label %21, !dbg !772

19:                                               ; preds = %16
  %20 = sext i32 %17 to i64, !dbg !773
  br label %32, !dbg !773

21:                                               ; preds = %16
  %22 = load i8**, i8*** @environ, align 8, !dbg !774, !tbaa !597
  call void @llvm.dbg.value(metadata i8** %22, metadata !731, metadata !DIExpression()), !dbg !745
  %23 = load i8*, i8** %22, align 8, !dbg !777, !tbaa !597
  %24 = icmp eq i8* %23, null, !dbg !779
  br i1 %24, label %96, label %25, !dbg !780

25:                                               ; preds = %21, %25
  %26 = phi i8* [ %30, %25 ], [ %23, %21 ]
  %27 = phi i8** [ %29, %25 ], [ %22, %21 ]
  call void @llvm.dbg.value(metadata i8** %27, metadata !731, metadata !DIExpression()), !dbg !745
  %28 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* nonnull %26, i32 %9) #24, !dbg !781
  %29 = getelementptr inbounds i8*, i8** %27, i64 1, !dbg !782
  call void @llvm.dbg.value(metadata i8** %29, metadata !731, metadata !DIExpression()), !dbg !745
  %30 = load i8*, i8** %29, align 8, !dbg !777, !tbaa !597
  %31 = icmp eq i8* %30, null, !dbg !779
  br i1 %31, label %96, label %25, !dbg !780, !llvm.loop !783

32:                                               ; preds = %19, %86
  %33 = phi i64 [ %20, %19 ], [ %88, %86 ]
  %34 = phi i32 [ 0, %19 ], [ %87, %86 ]
  call void @llvm.dbg.value(metadata i32 %34, metadata !738, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.value(metadata i64 %33, metadata !734, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata i8 0, metadata !741, metadata !DIExpression()), !dbg !786
  %35 = getelementptr inbounds i8*, i8** %1, i64 %33, !dbg !787
  %36 = load i8*, i8** %35, align 8, !dbg !787, !tbaa !597
  %37 = tail call i8* @strchr(i8* nonnull dereferenceable(1) %36, i32 61) #25, !dbg !789
  %38 = icmp eq i8* %37, null, !dbg !789
  br i1 %38, label %39, label %86, !dbg !790

39:                                               ; preds = %32
  %40 = load i8**, i8*** @environ, align 8, !dbg !791, !tbaa !597
  call void @llvm.dbg.value(metadata i8** %40, metadata !731, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata i8 0, metadata !741, metadata !DIExpression()), !dbg !786
  %41 = load i8*, i8** %40, align 8, !dbg !793, !tbaa !597
  %42 = icmp eq i8* %41, null, !dbg !795
  br i1 %42, label %81, label %43, !dbg !795

43:                                               ; preds = %39, %79
  %44 = phi i8* [ %80, %79 ], [ %36, %39 ], !dbg !796
  %45 = phi i8* [ %77, %79 ], [ %41, %39 ]
  %46 = phi i8 [ %75, %79 ], [ 0, %39 ]
  %47 = phi i8** [ %76, %79 ], [ %40, %39 ]
  call void @llvm.dbg.value(metadata i8 %46, metadata !741, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.value(metadata i8** %47, metadata !731, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata i8* %45, metadata !732, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata i8* %44, metadata !733, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata i8* %45, metadata !732, metadata !DIExpression()), !dbg !745
  %48 = load i8, i8* %45, align 1, !dbg !798, !tbaa !799
  %49 = icmp eq i8 %48, 0, !dbg !800
  br i1 %49, label %74, label %50, !dbg !801

50:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i8* %44, metadata !733, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata i8* %45, metadata !732, metadata !DIExpression()), !dbg !745
  %51 = load i8, i8* %44, align 1, !dbg !802, !tbaa !799
  %52 = icmp eq i8 %51, 0, !dbg !803
  br i1 %52, label %74, label %53, !dbg !804

53:                                               ; preds = %50, %71
  %54 = phi i8 [ %72, %71 ], [ %51, %50 ]
  %55 = phi i8* [ %58, %71 ], [ %45, %50 ]
  %56 = phi i8* [ %59, %71 ], [ %44, %50 ]
  %57 = phi i8 [ %62, %71 ], [ %48, %50 ]
  call void @llvm.dbg.value(metadata i8* %55, metadata !732, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata i8* %56, metadata !733, metadata !DIExpression()), !dbg !745
  %58 = getelementptr inbounds i8, i8* %55, i64 1, !dbg !805
  call void @llvm.dbg.value(metadata i8* %58, metadata !732, metadata !DIExpression()), !dbg !745
  %59 = getelementptr inbounds i8, i8* %56, i64 1, !dbg !806
  call void @llvm.dbg.value(metadata i8* %59, metadata !733, metadata !DIExpression()), !dbg !745
  %60 = icmp eq i8 %57, %54, !dbg !807
  br i1 %60, label %61, label %74, !dbg !808

61:                                               ; preds = %53
  %62 = load i8, i8* %58, align 1, !dbg !809, !tbaa !799
  switch i8 %62, label %71 [
    i8 61, label %63
    i8 0, label %74
  ], !dbg !812

63:                                               ; preds = %61
  %64 = load i8, i8* %59, align 1, !dbg !813, !tbaa !799
  %65 = icmp eq i8 %64, 0, !dbg !814
  br i1 %65, label %66, label %69, !dbg !815

66:                                               ; preds = %63
  %67 = getelementptr inbounds i8, i8* %55, i64 2, !dbg !816
  %68 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* nonnull %67, i32 %9) #24, !dbg !816
  call void @llvm.dbg.value(metadata i8 1, metadata !741, metadata !DIExpression()), !dbg !786
  br label %74, !dbg !818

69:                                               ; preds = %63
  call void @llvm.dbg.value(metadata i8* %59, metadata !733, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata i8* %58, metadata !732, metadata !DIExpression()), !dbg !745
  %70 = icmp eq i8 %62, 0, !dbg !800
  br i1 %70, label %74, label %71, !dbg !801

71:                                               ; preds = %69, %61
  call void @llvm.dbg.value(metadata i8* %59, metadata !733, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata i8* %58, metadata !732, metadata !DIExpression()), !dbg !745
  %72 = load i8, i8* %59, align 1, !dbg !802, !tbaa !799
  %73 = icmp eq i8 %72, 0, !dbg !803
  br i1 %73, label %74, label %53, !dbg !804, !llvm.loop !819

74:                                               ; preds = %61, %53, %71, %69, %50, %43, %66
  %75 = phi i8 [ 1, %66 ], [ %46, %43 ], [ %46, %50 ], [ %46, %69 ], [ %46, %71 ], [ %46, %53 ], [ %46, %61 ], !dbg !786
  call void @llvm.dbg.value(metadata i8 %75, metadata !741, metadata !DIExpression()), !dbg !786
  %76 = getelementptr inbounds i8*, i8** %47, i64 1, !dbg !821
  call void @llvm.dbg.value(metadata i8** %76, metadata !731, metadata !DIExpression()), !dbg !745
  %77 = load i8*, i8** %76, align 8, !dbg !793, !tbaa !597
  %78 = icmp eq i8* %77, null, !dbg !795
  br i1 %78, label %81, label %79, !dbg !795, !llvm.loop !822

79:                                               ; preds = %74
  %80 = load i8*, i8** %35, align 8, !dbg !796, !tbaa !597
  br label %43, !dbg !795

81:                                               ; preds = %74, %39
  %82 = phi i8 [ 0, %39 ], [ %75, %74 ], !dbg !786
  %83 = and i8 %82, 1, !dbg !824
  %84 = zext i8 %83 to i32, !dbg !824
  %85 = add nsw i32 %34, %84, !dbg !825
  call void @llvm.dbg.value(metadata i32 %85, metadata !738, metadata !DIExpression()), !dbg !785
  br label %86, !dbg !826

86:                                               ; preds = %32, %81
  %87 = phi i32 [ %85, %81 ], [ %34, %32 ], !dbg !785
  call void @llvm.dbg.value(metadata i32 %87, metadata !738, metadata !DIExpression()), !dbg !785
  %88 = add nsw i64 %33, 1, !dbg !827
  call void @llvm.dbg.value(metadata i64 %88, metadata !734, metadata !DIExpression()), !dbg !745
  %89 = trunc i64 %88 to i32, !dbg !828
  %90 = icmp eq i32 %89, %0, !dbg !828
  br i1 %90, label %91, label %32, !dbg !773, !llvm.loop !829

91:                                               ; preds = %86
  %92 = load i32, i32* @optind, align 4, !dbg !831, !tbaa !758
  %93 = sub nsw i32 %0, %92, !dbg !832
  %94 = icmp ne i32 %87, %93, !dbg !833
  call void @llvm.dbg.value(metadata i1 %94, metadata !735, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !745
  %95 = zext i1 %94 to i32
  br label %96

96:                                               ; preds = %25, %21, %91
  %97 = phi i32 [ %95, %91 ], [ 0, %21 ], [ 0, %25 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !735, metadata !DIExpression()), !dbg !745
  ret i32 %97, !dbg !834
}

; Function Attrs: nounwind
declare !dbg !835 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !838 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !841 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !848 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #9 !dbg !854 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !856, metadata !DIExpression()), !dbg !857
  store i8* %0, i8** @file_name, align 8, !dbg !858, !tbaa !597
  ret void, !dbg !859
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #9 !dbg !860 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !864, metadata !DIExpression()), !dbg !865
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !866, !tbaa !867
  ret void, !dbg !869
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !870 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !875, !tbaa !597
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #24, !dbg !876
  %3 = icmp eq i32 %2, 0, !dbg !877
  br i1 %3, label %22, label %4, !dbg !878

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !879, !tbaa !867, !range !880
  %6 = icmp eq i8 %5, 0, !dbg !879
  br i1 %6, label %11, label %7, !dbg !881

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #28, !dbg !882
  %9 = load i32, i32* %8, align 4, !dbg !882, !tbaa !758
  %10 = icmp eq i32 %9, 32, !dbg !883
  br i1 %10, label %22, label %11, !dbg !884

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i32 5) #24, !dbg !885
  call void @llvm.dbg.value(metadata i8* %12, metadata !872, metadata !DIExpression()), !dbg !886
  %13 = load i8*, i8** @file_name, align 8, !dbg !887, !tbaa !597
  %14 = icmp eq i8* %13, null, !dbg !887
  %15 = tail call i32* @__errno_location() #28, !dbg !889
  %16 = load i32, i32* %15, align 4, !dbg !889, !tbaa !758
  br i1 %14, label %19, label %17, !dbg !890

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #24, !dbg !891
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.37, i64 0, i64 0), i8* %18, i8* %12) #24, !dbg !892
  br label %20, !dbg !892

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.38, i64 0, i64 0), i8* %12) #24, !dbg !893
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !894, !tbaa !758
  tail call void @_exit(i32 %21) #26, !dbg !895
  unreachable, !dbg !895

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !896, !tbaa !597
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #24, !dbg !898
  %25 = icmp eq i32 %24, 0, !dbg !899
  br i1 %25, label %28, label %26, !dbg !900

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !901, !tbaa !758
  tail call void @_exit(i32 %27) #26, !dbg !902
  unreachable, !dbg !902

28:                                               ; preds = %22
  ret void, !dbg !903
}

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #10

declare !dbg !904 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !908 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !910, metadata !DIExpression()), !dbg !913
  %2 = icmp eq i8* %0, null, !dbg !914
  br i1 %2, label %3, label %6, !dbg !916

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !917, !tbaa !597
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.45, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #29, !dbg !919
  tail call void @abort() #26, !dbg !920
  unreachable, !dbg !920

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #25, !dbg !921
  call void @llvm.dbg.value(metadata i8* %7, metadata !911, metadata !DIExpression()), !dbg !913
  %8 = icmp eq i8* %7, null, !dbg !922
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !923
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !923
  call void @llvm.dbg.value(metadata i8* %10, metadata !912, metadata !DIExpression()), !dbg !913
  %11 = ptrtoint i8* %10 to i64, !dbg !924
  %12 = ptrtoint i8* %0 to i64, !dbg !924
  %13 = sub i64 %11, %12, !dbg !924
  %14 = icmp sgt i64 %13, 6, !dbg !926
  br i1 %14, label %15, label %24, !dbg !927

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !928
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.46, i64 0, i64 0), i64 7) #25, !dbg !929
  %18 = icmp eq i32 %17, 0, !dbg !930
  br i1 %18, label %19, label %24, !dbg !931

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !910, metadata !DIExpression()), !dbg !913
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.47, i64 0, i64 0), i64 3) #25, !dbg !932
  %21 = icmp eq i32 %20, 0, !dbg !935
  br i1 %21, label %22, label %24, !dbg !936

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !937
  call void @llvm.dbg.value(metadata i8* %23, metadata !910, metadata !DIExpression()), !dbg !913
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !939, !tbaa !597
  br label %24, !dbg !940

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !910, metadata !DIExpression()), !dbg !913
  store i8* %25, i8** @program_name, align 8, !dbg !941, !tbaa !597
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !942, !tbaa !597
  ret void, !dbg !943
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !944 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !949, metadata !DIExpression()), !dbg !952
  %2 = tail call i32* @__errno_location() #28, !dbg !953
  %3 = load i32, i32* %2, align 4, !dbg !953, !tbaa !758
  call void @llvm.dbg.value(metadata i32 %3, metadata !950, metadata !DIExpression()), !dbg !952
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !954
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !954
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !954
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #24, !dbg !955
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !955
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !951, metadata !DIExpression()), !dbg !952
  store i32 %3, i32* %2, align 4, !dbg !956, !tbaa !758
  ret %struct.quoting_options* %8, !dbg !957
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #13 !dbg !958 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !964, metadata !DIExpression()), !dbg !965
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !966
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !966
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !967
  %5 = load i32, i32* %4, align 8, !dbg !967, !tbaa !968
  ret i32 %5, !dbg !970
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #9 !dbg !971 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !975, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.value(metadata i32 %1, metadata !976, metadata !DIExpression()), !dbg !977
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !978
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !978
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !979
  store i32 %1, i32* %5, align 8, !dbg !980, !tbaa !968
  ret void, !dbg !981
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #14 !dbg !982 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !986, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.value(metadata i8 %1, metadata !987, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.value(metadata i32 %2, metadata !988, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.value(metadata i8 %1, metadata !989, metadata !DIExpression()), !dbg !995
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !996
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !996
  %6 = lshr i8 %1, 5, !dbg !997
  %7 = zext i8 %6 to i64, !dbg !997
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !998
  call void @llvm.dbg.value(metadata i32* %8, metadata !991, metadata !DIExpression()), !dbg !995
  %9 = and i8 %1, 31, !dbg !999
  %10 = zext i8 %9 to i32, !dbg !999
  call void @llvm.dbg.value(metadata i32 %10, metadata !993, metadata !DIExpression()), !dbg !995
  %11 = load i32, i32* %8, align 4, !dbg !1000, !tbaa !758
  %12 = lshr i32 %11, %10, !dbg !1001
  %13 = and i32 %12, 1, !dbg !1002
  call void @llvm.dbg.value(metadata i32 %13, metadata !994, metadata !DIExpression()), !dbg !995
  %14 = and i32 %2, 1, !dbg !1003
  %15 = xor i32 %13, %14, !dbg !1004
  %16 = shl i32 %15, %10, !dbg !1005
  %17 = xor i32 %16, %11, !dbg !1006
  store i32 %17, i32* %8, align 4, !dbg !1006, !tbaa !758
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
  store i32 10, i32* %6, align 8, !dbg !1035, !tbaa !968
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
  %9 = load i32, i32* %8, align 4, !dbg !1061, !tbaa !758
  call void @llvm.dbg.value(metadata i32 %9, metadata !1057, metadata !DIExpression()), !dbg !1059
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1062
  %11 = load i32, i32* %10, align 8, !dbg !1062, !tbaa !968
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1063
  %13 = load i32, i32* %12, align 4, !dbg !1063, !tbaa !1020
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1064
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1065
  %16 = load i8*, i8** %15, align 8, !dbg !1065, !tbaa !1042
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1066
  %18 = load i8*, i8** %17, align 8, !dbg !1066, !tbaa !1045
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1067
  call void @llvm.dbg.value(metadata i64 %19, metadata !1058, metadata !DIExpression()), !dbg !1059
  store i32 %9, i32* %8, align 4, !dbg !1068, !tbaa !758
  ret i64 %19, !dbg !1069
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1070 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1076, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %1, metadata !1077, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8* %2, metadata !1078, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %3, metadata !1079, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i32 %4, metadata !1080, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i32 %5, metadata !1081, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i32* %6, metadata !1082, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8* %7, metadata !1083, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8* %8, metadata !1084, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 0, metadata !1086, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 0, metadata !1087, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8* null, metadata !1088, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 0, metadata !1089, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8 0, metadata !1090, metadata !DIExpression()), !dbg !1144
  %13 = tail call i64 @__ctype_get_mb_cur_max() #24, !dbg !1145
  %14 = icmp eq i64 %13, 1, !dbg !1146
  call void @llvm.dbg.value(metadata i1 %14, metadata !1091, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1144
  %15 = lshr i32 %5, 1, !dbg !1147
  %16 = trunc i32 %15 to i8, !dbg !1147
  %17 = and i8 %16, 1, !dbg !1147
  call void @llvm.dbg.value(metadata i8 %17, metadata !1092, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8 0, metadata !1093, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8 0, metadata !1094, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8 1, metadata !1095, metadata !DIExpression()), !dbg !1144
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1148

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1149
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1150
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1151
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1152
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1144
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1153
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1154
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1155
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1077, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8 %38, metadata !1095, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8 %37, metadata !1094, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8 %36, metadata !1093, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8 %35, metadata !1092, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %34, metadata !1079, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8 %33, metadata !1090, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %32, metadata !1089, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8* %31, metadata !1088, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %30, metadata !1087, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 0, metadata !1086, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8* %29, metadata !1084, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8* %28, metadata !1083, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i32 %27, metadata !1080, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.label(metadata !1138), !dbg !1156
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
  ], !dbg !1157

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1092, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i32 5, metadata !1080, metadata !DIExpression()), !dbg !1144
  br label %92, !dbg !1158

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1092, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i32 5, metadata !1080, metadata !DIExpression()), !dbg !1144
  %42 = and i8 %35, 1, !dbg !1160
  %43 = icmp eq i8 %42, 0, !dbg !1160
  br i1 %43, label %44, label %92, !dbg !1158

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1162
  br i1 %45, label %92, label %46, !dbg !1165

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1162, !tbaa !799
  br label %92, !dbg !1162

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.58, i64 0, i64 0), i32 %27), !dbg !1166
  call void @llvm.dbg.value(metadata i8* %48, metadata !1083, metadata !DIExpression()), !dbg !1144
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), i32 %27), !dbg !1170
  call void @llvm.dbg.value(metadata i8* %49, metadata !1084, metadata !DIExpression()), !dbg !1144
  br label %50, !dbg !1171

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1084, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8* %51, metadata !1083, metadata !DIExpression()), !dbg !1144
  %53 = and i8 %35, 1, !dbg !1172
  %54 = icmp eq i8 %53, 0, !dbg !1172
  br i1 %54, label %55, label %70, !dbg !1174

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1088, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 0, metadata !1086, metadata !DIExpression()), !dbg !1144
  %56 = load i8, i8* %51, align 1, !dbg !1175, !tbaa !799
  %57 = icmp eq i8 %56, 0, !dbg !1178
  br i1 %57, label %70, label %58, !dbg !1178

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1088, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %61, metadata !1086, metadata !DIExpression()), !dbg !1144
  %62 = icmp ult i64 %61, %39, !dbg !1179
  br i1 %62, label %63, label %65, !dbg !1182

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1179
  store i8 %59, i8* %64, align 1, !dbg !1179, !tbaa !799
  br label %65, !dbg !1179

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1182
  call void @llvm.dbg.value(metadata i64 %66, metadata !1086, metadata !DIExpression()), !dbg !1144
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1183
  call void @llvm.dbg.value(metadata i8* %67, metadata !1088, metadata !DIExpression()), !dbg !1144
  %68 = load i8, i8* %67, align 1, !dbg !1175, !tbaa !799
  %69 = icmp eq i8 %68, 0, !dbg !1178
  br i1 %69, label %70, label %58, !dbg !1178, !llvm.loop !1184

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1186
  call void @llvm.dbg.value(metadata i64 %71, metadata !1086, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8 1, metadata !1090, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8* %52, metadata !1088, metadata !DIExpression()), !dbg !1144
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #25, !dbg !1187
  call void @llvm.dbg.value(metadata i64 %72, metadata !1089, metadata !DIExpression()), !dbg !1144
  br label %92, !dbg !1188

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1090, metadata !DIExpression()), !dbg !1144
  br label %74, !dbg !1189

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1144
  call void @llvm.dbg.value(metadata i8 %75, metadata !1090, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8 1, metadata !1092, metadata !DIExpression()), !dbg !1144
  br label %76, !dbg !1190

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1152
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1144
  call void @llvm.dbg.value(metadata i8 %78, metadata !1092, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8 %77, metadata !1090, metadata !DIExpression()), !dbg !1144
  %79 = and i8 %78, 1, !dbg !1191
  %80 = icmp eq i8 %79, 0, !dbg !1191
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1193
  br label %82, !dbg !1193

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1144
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1147
  call void @llvm.dbg.value(metadata i8 %84, metadata !1092, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8 %83, metadata !1090, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i32 2, metadata !1080, metadata !DIExpression()), !dbg !1144
  %85 = and i8 %84, 1, !dbg !1194
  %86 = icmp eq i8 %85, 0, !dbg !1194
  br i1 %86, label %87, label %92, !dbg !1196

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1197
  br i1 %88, label %92, label %89, !dbg !1200

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1197, !tbaa !799
  br label %92, !dbg !1197

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1092, metadata !DIExpression()), !dbg !1144
  br label %92, !dbg !1201

91:                                               ; preds = %26
  call void @abort() #26, !dbg !1202
  unreachable, !dbg !1202

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1186
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %40 ], !dbg !1144
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1144
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1144
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1144
  call void @llvm.dbg.value(metadata i8 %100, metadata !1092, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8 %99, metadata !1090, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %98, metadata !1089, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8* %97, metadata !1088, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %96, metadata !1086, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8* %95, metadata !1084, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8* %94, metadata !1083, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i32 %93, metadata !1080, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 0, metadata !1085, metadata !DIExpression()), !dbg !1144
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
  br label %121, !dbg !1203

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1204
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1186
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1149
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1153
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1154
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1155
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1077, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8 %128, metadata !1095, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8 %127, metadata !1094, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8 %126, metadata !1093, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %125, metadata !1079, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %124, metadata !1087, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %123, metadata !1086, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %122, metadata !1085, metadata !DIExpression()), !dbg !1144
  %130 = icmp eq i64 %125, -1, !dbg !1205
  br i1 %130, label %131, label %135, !dbg !1206

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1207
  %133 = load i8, i8* %132, align 1, !dbg !1207, !tbaa !799
  %134 = icmp eq i8 %133, 0, !dbg !1208
  br i1 %134, label %587, label %137, !dbg !1209

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1210
  br i1 %136, label %587, label %137, !dbg !1209

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1101, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 0, metadata !1102, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 0, metadata !1103, metadata !DIExpression()), !dbg !1211
  br i1 %106, label %138, label %153, !dbg !1212

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1214
  %140 = and i1 %107, %130, !dbg !1215
  br i1 %140, label %141, label %143, !dbg !1215

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #25, !dbg !1216
  call void @llvm.dbg.value(metadata i64 %142, metadata !1079, metadata !DIExpression()), !dbg !1144
  br label %143, !dbg !1217

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1217
  call void @llvm.dbg.value(metadata i64 %144, metadata !1079, metadata !DIExpression()), !dbg !1144
  %145 = icmp ugt i64 %139, %144, !dbg !1218
  br i1 %145, label %153, label %146, !dbg !1219

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1220
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1221
  %149 = icmp ne i32 %148, 0, !dbg !1222
  %150 = or i1 %149, %109, !dbg !1223
  %151 = xor i1 %149, true, !dbg !1223
  %152 = zext i1 %151 to i8, !dbg !1223
  br i1 %150, label %153, label %646, !dbg !1223

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1211
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1211
  call void @llvm.dbg.value(metadata i8 %156, metadata !1101, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i64 %154, metadata !1079, metadata !DIExpression()), !dbg !1144
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1224
  %158 = load i8, i8* %157, align 1, !dbg !1224, !tbaa !799
  call void @llvm.dbg.value(metadata i8 %158, metadata !1096, metadata !DIExpression()), !dbg !1211
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
  ], !dbg !1225

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1226

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1227

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1102, metadata !DIExpression()), !dbg !1211
  %162 = and i8 %126, 1, !dbg !1231
  %163 = icmp eq i8 %162, 0, !dbg !1231
  %164 = and i1 %110, %163, !dbg !1231
  br i1 %164, label %165, label %181, !dbg !1231

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1233
  br i1 %166, label %167, label %169, !dbg !1237

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1233
  store i8 39, i8* %168, align 1, !dbg !1233, !tbaa !799
  br label %169, !dbg !1233

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1237
  call void @llvm.dbg.value(metadata i64 %170, metadata !1086, metadata !DIExpression()), !dbg !1144
  %171 = icmp ult i64 %170, %129, !dbg !1238
  br i1 %171, label %172, label %174, !dbg !1241

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1238
  store i8 36, i8* %173, align 1, !dbg !1238, !tbaa !799
  br label %174, !dbg !1238

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1241
  call void @llvm.dbg.value(metadata i64 %175, metadata !1086, metadata !DIExpression()), !dbg !1144
  %176 = icmp ult i64 %175, %129, !dbg !1242
  br i1 %176, label %177, label %179, !dbg !1245

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1242
  store i8 39, i8* %178, align 1, !dbg !1242, !tbaa !799
  br label %179, !dbg !1242

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1245
  call void @llvm.dbg.value(metadata i64 %180, metadata !1086, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8 1, metadata !1093, metadata !DIExpression()), !dbg !1144
  br label %181, !dbg !1246

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1144
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1144
  call void @llvm.dbg.value(metadata i8 %183, metadata !1093, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %182, metadata !1086, metadata !DIExpression()), !dbg !1144
  %184 = icmp ult i64 %182, %129, !dbg !1247
  br i1 %184, label %185, label %187, !dbg !1250

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1247
  store i8 92, i8* %186, align 1, !dbg !1247, !tbaa !799
  br label %187, !dbg !1247

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1250
  call void @llvm.dbg.value(metadata i64 %188, metadata !1086, metadata !DIExpression()), !dbg !1144
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1251
  br i1 %191, label %192, label %473, !dbg !1251

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1253
  %194 = load i8, i8* %193, align 1, !dbg !1253, !tbaa !799
  %195 = add i8 %194, -48, !dbg !1254
  %196 = icmp ult i8 %195, 10, !dbg !1254
  br i1 %196, label %197, label %473, !dbg !1254

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1255
  br i1 %198, label %199, label %201, !dbg !1259

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1255
  store i8 48, i8* %200, align 1, !dbg !1255, !tbaa !799
  br label %201, !dbg !1255

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1259
  call void @llvm.dbg.value(metadata i64 %202, metadata !1086, metadata !DIExpression()), !dbg !1144
  %203 = icmp ult i64 %202, %129, !dbg !1260
  br i1 %203, label %204, label %206, !dbg !1263

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1260
  store i8 48, i8* %205, align 1, !dbg !1260, !tbaa !799
  br label %206, !dbg !1260

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1263
  call void @llvm.dbg.value(metadata i64 %207, metadata !1086, metadata !DIExpression()), !dbg !1144
  br label %473, !dbg !1264

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1265

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1266

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1267

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1269
  br i1 %214, label %215, label %473, !dbg !1269

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1271
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1272
  %218 = load i8, i8* %217, align 1, !dbg !1272, !tbaa !799
  %219 = icmp eq i8 %218, 63, !dbg !1273
  br i1 %219, label %220, label %473, !dbg !1274

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1275
  %222 = load i8, i8* %221, align 1, !dbg !1275, !tbaa !799
  %223 = sext i8 %222 to i32, !dbg !1275
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
  ], !dbg !1276

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1277

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1096, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i64 undef, metadata !1085, metadata !DIExpression()), !dbg !1144
  %226 = icmp ult i64 %123, %129, !dbg !1279
  br i1 %226, label %227, label %229, !dbg !1282

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1279
  store i8 63, i8* %228, align 1, !dbg !1279, !tbaa !799
  br label %229, !dbg !1279

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !1282
  call void @llvm.dbg.value(metadata i64 %230, metadata !1086, metadata !DIExpression()), !dbg !1144
  %231 = icmp ult i64 %230, %129, !dbg !1283
  br i1 %231, label %232, label %234, !dbg !1286

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1283
  store i8 34, i8* %233, align 1, !dbg !1283, !tbaa !799
  br label %234, !dbg !1283

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !1286
  call void @llvm.dbg.value(metadata i64 %235, metadata !1086, metadata !DIExpression()), !dbg !1144
  %236 = icmp ult i64 %235, %129, !dbg !1287
  br i1 %236, label %237, label %239, !dbg !1290

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1287
  store i8 34, i8* %238, align 1, !dbg !1287, !tbaa !799
  br label %239, !dbg !1287

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !1290
  call void @llvm.dbg.value(metadata i64 %240, metadata !1086, metadata !DIExpression()), !dbg !1144
  %241 = icmp ult i64 %240, %129, !dbg !1291
  br i1 %241, label %242, label %244, !dbg !1294

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1291
  store i8 63, i8* %243, align 1, !dbg !1291, !tbaa !799
  br label %244, !dbg !1291

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !1294
  call void @llvm.dbg.value(metadata i64 %245, metadata !1086, metadata !DIExpression()), !dbg !1144
  br label %473, !dbg !1295

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1100, metadata !DIExpression()), !dbg !1211
  br label %256, !dbg !1296

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1100, metadata !DIExpression()), !dbg !1211
  br label %256, !dbg !1297

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1100, metadata !DIExpression()), !dbg !1211
  br label %254, !dbg !1298

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1100, metadata !DIExpression()), !dbg !1211
  br label %254, !dbg !1299

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1100, metadata !DIExpression()), !dbg !1211
  br label %256, !dbg !1300

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1100, metadata !DIExpression()), !dbg !1211
  br i1 %110, label %252, label %253, !dbg !1301

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !1302

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !1305

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !1307
  call void @llvm.dbg.value(metadata i8 %255, metadata !1100, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.label(metadata !1139), !dbg !1308
  br i1 %111, label %256, label %631, !dbg !1309

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !1307
  call void @llvm.dbg.value(metadata i8 %257, metadata !1100, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.label(metadata !1140), !dbg !1311
  br i1 %102, label %495, label %473, !dbg !1312

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1313

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1314, !tbaa !799
  %261 = icmp eq i8 %260, 0, !dbg !1316
  br i1 %261, label %262, label %473, !dbg !1317

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !1318
  br i1 %263, label %264, label %473, !dbg !1320

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1103, metadata !DIExpression()), !dbg !1211
  br label %265, !dbg !1321

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1211
  call void @llvm.dbg.value(metadata i8 %266, metadata !1103, metadata !DIExpression()), !dbg !1211
  br i1 %111, label %473, label %631, !dbg !1322

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1094, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8 1, metadata !1103, metadata !DIExpression()), !dbg !1211
  br i1 %110, label %268, label %473, !dbg !1324

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !1325

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !1328
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !1330
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !1330
  %274 = select i1 %272, i64 %129, i64 0, !dbg !1330
  call void @llvm.dbg.value(metadata i64 %274, metadata !1077, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %273, metadata !1087, metadata !DIExpression()), !dbg !1144
  %275 = icmp ult i64 %123, %274, !dbg !1331
  br i1 %275, label %276, label %278, !dbg !1334

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1331
  store i8 39, i8* %277, align 1, !dbg !1331, !tbaa !799
  br label %278, !dbg !1331

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !1334
  call void @llvm.dbg.value(metadata i64 %279, metadata !1086, metadata !DIExpression()), !dbg !1144
  %280 = icmp ult i64 %279, %274, !dbg !1335
  br i1 %280, label %281, label %283, !dbg !1338

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1335
  store i8 92, i8* %282, align 1, !dbg !1335, !tbaa !799
  br label %283, !dbg !1335

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !1338
  call void @llvm.dbg.value(metadata i64 %284, metadata !1086, metadata !DIExpression()), !dbg !1144
  %285 = icmp ult i64 %284, %274, !dbg !1339
  br i1 %285, label %286, label %288, !dbg !1342

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1339
  store i8 39, i8* %287, align 1, !dbg !1339, !tbaa !799
  br label %288, !dbg !1339

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !1342
  call void @llvm.dbg.value(metadata i64 %289, metadata !1086, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8 0, metadata !1093, metadata !DIExpression()), !dbg !1144
  br label %473, !dbg !1343

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !1344

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1104, metadata !DIExpression()), !dbg !1345
  %292 = tail call i16** @__ctype_b_loc() #28, !dbg !1346
  %293 = load i16*, i16** %292, align 8, !dbg !1346, !tbaa !597
  %294 = zext i8 %158 to i64, !dbg !1346
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1346
  %296 = load i16, i16* %295, align 2, !dbg !1346, !tbaa !1348
  %297 = lshr i16 %296, 14, !dbg !1350
  %298 = trunc i16 %297 to i8, !dbg !1350
  %299 = and i8 %298, 1, !dbg !1350
  call void @llvm.dbg.value(metadata i8 %354, metadata !1107, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata i64 %355, metadata !1104, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata i64 %306, metadata !1079, metadata !DIExpression()), !dbg !1144
  %300 = icmp eq i8 %299, 0, !dbg !1351
  call void @llvm.dbg.value(metadata i1 %357, metadata !1103, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1211
  br label %359, !dbg !1352

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #24, !dbg !1353
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1108, metadata !DIExpression()), !dbg !1354
  call void @llvm.dbg.value(metadata i8* %23, metadata !1355, metadata !DIExpression()) #24, !dbg !1363
  call void @llvm.dbg.value(metadata i32 0, metadata !1361, metadata !DIExpression()) #24, !dbg !1363
  call void @llvm.dbg.value(metadata i64 8, metadata !1362, metadata !DIExpression()) #24, !dbg !1363
  store i64 0, i64* %10, align 8, !dbg !1365
  call void @llvm.dbg.value(metadata i64 0, metadata !1104, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata i8 1, metadata !1107, metadata !DIExpression()), !dbg !1345
  %302 = icmp eq i64 %154, -1, !dbg !1366
  br i1 %302, label %303, label %305, !dbg !1368

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #25, !dbg !1369
  call void @llvm.dbg.value(metadata i64 %304, metadata !1079, metadata !DIExpression()), !dbg !1144
  br label %305, !dbg !1370

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1211
  call void @llvm.dbg.value(metadata i64 %306, metadata !1079, metadata !DIExpression()), !dbg !1144
  br label %307, !dbg !1371

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !1372
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !1373
  call void @llvm.dbg.value(metadata i8 %309, metadata !1107, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata i64 %308, metadata !1104, metadata !DIExpression()), !dbg !1345
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1374
  %310 = add i64 %308, %122, !dbg !1375
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !1376
  %312 = sub i64 %306, %310, !dbg !1377
  call void @llvm.dbg.value(metadata i32* %12, metadata !1124, metadata !DIExpression(DW_OP_deref)), !dbg !1378
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #24, !dbg !1379
  call void @llvm.dbg.value(metadata i64 %313, metadata !1127, metadata !DIExpression()), !dbg !1378
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !1380

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1104, metadata !DIExpression()), !dbg !1345
  %315 = icmp ugt i64 %306, %310, !dbg !1381
  br i1 %315, label %316, label %341, !dbg !1383

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !1384
  br label %318, !dbg !1384

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1104, metadata !DIExpression()), !dbg !1345
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !1385
  %322 = load i8, i8* %321, align 1, !dbg !1385, !tbaa !799
  %323 = icmp eq i8 %322, 0, !dbg !1383
  br i1 %323, label %341, label %324, !dbg !1384

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !1386
  call void @llvm.dbg.value(metadata i64 %325, metadata !1104, metadata !DIExpression()), !dbg !1345
  %326 = add i64 %325, %122, !dbg !1387
  %327 = icmp ult i64 %326, %306, !dbg !1381
  br i1 %327, label %318, label %341, !dbg !1383, !llvm.loop !1388

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !1389
  call void @llvm.dbg.value(metadata i64 1, metadata !1128, metadata !DIExpression()), !dbg !1390
  br i1 %330, label %331, label %344, !dbg !1389

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1128, metadata !DIExpression()), !dbg !1390
  %333 = add i64 %332, %310, !dbg !1391
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !1394
  %335 = load i8, i8* %334, align 1, !dbg !1394, !tbaa !799
  %336 = sext i8 %335 to i32, !dbg !1394
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !1395

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !1396
  call void @llvm.dbg.value(metadata i64 %338, metadata !1128, metadata !DIExpression()), !dbg !1390
  %339 = icmp eq i64 %338, %313, !dbg !1397
  br i1 %339, label %344, label %331, !dbg !1398, !llvm.loop !1399

340:                                              ; preds = %307
  br label %341, !dbg !1401

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1107, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata i64 undef, metadata !1104, metadata !DIExpression()), !dbg !1345
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1401
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !1402, !tbaa !758
  call void @llvm.dbg.value(metadata i32 %345, metadata !1124, metadata !DIExpression()), !dbg !1378
  %346 = call i32 @iswprint(i32 %345) #24, !dbg !1404
  %347 = icmp eq i32 %346, 0, !dbg !1404
  %348 = select i1 %347, i8 0, i8 %309, !dbg !1405
  call void @llvm.dbg.value(metadata i8 %348, metadata !1107, metadata !DIExpression()), !dbg !1345
  %349 = add i64 %313, %308, !dbg !1406
  call void @llvm.dbg.value(metadata i64 %349, metadata !1104, metadata !DIExpression()), !dbg !1345
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1401
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #25, !dbg !1407
  %351 = icmp eq i32 %350, 0, !dbg !1408
  br i1 %351, label %307, label %353, !dbg !1409, !llvm.loop !1410

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1107, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata i64 undef, metadata !1104, metadata !DIExpression()), !dbg !1345
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1401
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #24, !dbg !1412
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #24, !dbg !1412
  call void @llvm.dbg.value(metadata i8 %354, metadata !1107, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata i64 %355, metadata !1104, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata i64 %306, metadata !1079, metadata !DIExpression()), !dbg !1144
  %356 = and i8 %354, 1, !dbg !1351
  %357 = icmp eq i8 %356, 0, !dbg !1351
  call void @llvm.dbg.value(metadata i1 %357, metadata !1103, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1211
  %358 = icmp ugt i64 %355, 1, !dbg !1413
  br i1 %358, label %367, label %359, !dbg !1352

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !1414
  br i1 %364, label %367, label %365, !dbg !1414

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1211
  call void @llvm.dbg.value(metadata i8 %472, metadata !1103, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 %441, metadata !1102, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 %440, metadata !1101, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 %439, metadata !1096, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 %438, metadata !1093, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %371, metadata !1079, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %437, metadata !1086, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %375, metadata !1085, metadata !DIExpression()), !dbg !1144
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !1415
  call void @llvm.dbg.value(metadata i64 %372, metadata !1135, metadata !DIExpression()), !dbg !1416
  %373 = and i1 %102, %368
  br label %374, !dbg !1417

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1204
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1144
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1153
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1211
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1211
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !1418
  call void @llvm.dbg.value(metadata i8 %380, metadata !1102, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 %379, metadata !1101, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 %378, metadata !1096, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 %377, metadata !1093, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %376, metadata !1086, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %375, metadata !1085, metadata !DIExpression()), !dbg !1144
  br i1 %373, label %381, label %427, !dbg !1419

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !1424

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1102, metadata !DIExpression()), !dbg !1211
  %383 = and i8 %377, 1, !dbg !1427
  %384 = icmp eq i8 %383, 0, !dbg !1427
  %385 = and i1 %110, %384, !dbg !1427
  br i1 %385, label %386, label %402, !dbg !1427

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !1429
  br i1 %387, label %388, label %390, !dbg !1433

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1429
  store i8 39, i8* %389, align 1, !dbg !1429, !tbaa !799
  br label %390, !dbg !1429

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !1433
  call void @llvm.dbg.value(metadata i64 %391, metadata !1086, metadata !DIExpression()), !dbg !1144
  %392 = icmp ult i64 %391, %129, !dbg !1434
  br i1 %392, label %393, label %395, !dbg !1437

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !1434
  store i8 36, i8* %394, align 1, !dbg !1434, !tbaa !799
  br label %395, !dbg !1434

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !1437
  call void @llvm.dbg.value(metadata i64 %396, metadata !1086, metadata !DIExpression()), !dbg !1144
  %397 = icmp ult i64 %396, %129, !dbg !1438
  br i1 %397, label %398, label %400, !dbg !1441

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1438
  store i8 39, i8* %399, align 1, !dbg !1438, !tbaa !799
  br label %400, !dbg !1438

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !1441
  call void @llvm.dbg.value(metadata i64 %401, metadata !1086, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8 1, metadata !1093, metadata !DIExpression()), !dbg !1144
  br label %402, !dbg !1442

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1144
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1144
  call void @llvm.dbg.value(metadata i8 %404, metadata !1093, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %403, metadata !1086, metadata !DIExpression()), !dbg !1144
  %405 = icmp ult i64 %403, %129, !dbg !1443
  br i1 %405, label %406, label %408, !dbg !1446

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1443
  store i8 92, i8* %407, align 1, !dbg !1443, !tbaa !799
  br label %408, !dbg !1443

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !1446
  call void @llvm.dbg.value(metadata i64 %409, metadata !1086, metadata !DIExpression()), !dbg !1144
  %410 = icmp ult i64 %409, %129, !dbg !1447
  br i1 %410, label %411, label %415, !dbg !1450

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !1447
  %413 = or i8 %412, 48, !dbg !1447
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !1447
  store i8 %413, i8* %414, align 1, !dbg !1447, !tbaa !799
  br label %415, !dbg !1447

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !1450
  call void @llvm.dbg.value(metadata i64 %416, metadata !1086, metadata !DIExpression()), !dbg !1144
  %417 = icmp ult i64 %416, %129, !dbg !1451
  br i1 %417, label %418, label %423, !dbg !1454

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !1451
  %420 = and i8 %419, 7, !dbg !1451
  %421 = or i8 %420, 48, !dbg !1451
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !1451
  store i8 %421, i8* %422, align 1, !dbg !1451, !tbaa !799
  br label %423, !dbg !1451

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !1454
  call void @llvm.dbg.value(metadata i64 %424, metadata !1086, metadata !DIExpression()), !dbg !1144
  %425 = and i8 %378, 7, !dbg !1455
  %426 = or i8 %425, 48, !dbg !1456
  call void @llvm.dbg.value(metadata i8 %426, metadata !1096, metadata !DIExpression()), !dbg !1211
  br label %436, !dbg !1457

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !1458
  %429 = icmp eq i8 %428, 0, !dbg !1458
  br i1 %429, label %436, label %430, !dbg !1460

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !1461
  br i1 %431, label %432, label %434, !dbg !1465

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1461
  store i8 92, i8* %433, align 1, !dbg !1461, !tbaa !799
  br label %434, !dbg !1461

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !1465
  call void @llvm.dbg.value(metadata i64 %435, metadata !1086, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8 0, metadata !1101, metadata !DIExpression()), !dbg !1211
  br label %436, !dbg !1466

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1144
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1153
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1211
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1211
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1211
  call void @llvm.dbg.value(metadata i8 %441, metadata !1102, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 %440, metadata !1101, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 %439, metadata !1096, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 %438, metadata !1093, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %437, metadata !1086, metadata !DIExpression()), !dbg !1144
  %442 = add i64 %375, 1, !dbg !1467
  %443 = icmp ugt i64 %372, %442, !dbg !1469
  br i1 %443, label %444, label %471, !dbg !1470

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !1471
  %446 = icmp ne i8 %445, 0, !dbg !1471
  %447 = and i8 %441, 1, !dbg !1471
  %448 = icmp eq i8 %447, 0, !dbg !1471
  %449 = and i1 %446, %448, !dbg !1471
  br i1 %449, label %450, label %461, !dbg !1471

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !1474
  br i1 %451, label %452, label %454, !dbg !1478

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !1474
  store i8 39, i8* %453, align 1, !dbg !1474, !tbaa !799
  br label %454, !dbg !1474

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !1478
  call void @llvm.dbg.value(metadata i64 %455, metadata !1086, metadata !DIExpression()), !dbg !1144
  %456 = icmp ult i64 %455, %129, !dbg !1479
  br i1 %456, label %457, label %459, !dbg !1482

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !1479
  store i8 39, i8* %458, align 1, !dbg !1479, !tbaa !799
  br label %459, !dbg !1479

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !1482
  call void @llvm.dbg.value(metadata i64 %460, metadata !1086, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8 0, metadata !1093, metadata !DIExpression()), !dbg !1144
  br label %461, !dbg !1483

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !1484
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1144
  call void @llvm.dbg.value(metadata i8 %463, metadata !1093, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %462, metadata !1086, metadata !DIExpression()), !dbg !1144
  %464 = icmp ult i64 %462, %129, !dbg !1485
  br i1 %464, label %465, label %467, !dbg !1488

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !1485
  store i8 %439, i8* %466, align 1, !dbg !1485, !tbaa !799
  br label %467, !dbg !1485

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !1488
  call void @llvm.dbg.value(metadata i64 %468, metadata !1086, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %442, metadata !1085, metadata !DIExpression()), !dbg !1144
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !1489
  %470 = load i8, i8* %469, align 1, !dbg !1489, !tbaa !799
  call void @llvm.dbg.value(metadata i8 %470, metadata !1096, metadata !DIExpression()), !dbg !1211
  br label %374, !dbg !1490, !llvm.loop !1491

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1211
  call void @llvm.dbg.value(metadata i8 %472, metadata !1103, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 %441, metadata !1102, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 %440, metadata !1101, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 %439, metadata !1096, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 %438, metadata !1093, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %371, metadata !1079, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %437, metadata !1086, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %375, metadata !1085, metadata !DIExpression()), !dbg !1144
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1204
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1144
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1149
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !1494
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1144
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1144
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1211
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1211
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1211
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1077, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8 %482, metadata !1103, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 %481, metadata !1102, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 %156, metadata !1101, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 %480, metadata !1096, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 %479, metadata !1094, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8 %478, metadata !1093, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %477, metadata !1079, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %476, metadata !1087, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %475, metadata !1086, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %474, metadata !1085, metadata !DIExpression()), !dbg !1144
  br i1 %116, label %494, label %484, !dbg !1495

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !1497
  %486 = zext i8 %485 to i64, !dbg !1497
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !1498
  %488 = load i32, i32* %487, align 4, !dbg !1498, !tbaa !758
  %489 = and i8 %480, 31, !dbg !1499
  %490 = zext i8 %489 to i32, !dbg !1499
  %491 = shl nuw i32 1, %490, !dbg !1500
  %492 = and i32 %488, %491, !dbg !1500
  %493 = icmp eq i32 %492, 0, !dbg !1500
  br i1 %493, label %494, label %495, !dbg !1501

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !1502

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !1503
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1144
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1149
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !1494
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1153
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1154
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1211
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1211
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1077, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8 %503, metadata !1103, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 %502, metadata !1096, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 %501, metadata !1094, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8 %500, metadata !1093, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %499, metadata !1079, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %498, metadata !1087, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %497, metadata !1086, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %496, metadata !1085, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.label(metadata !1141), !dbg !1504
  br i1 %109, label %505, label %635, !dbg !1505

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1102, metadata !DIExpression()), !dbg !1211
  %506 = and i8 %500, 1, !dbg !1507
  %507 = icmp eq i8 %506, 0, !dbg !1507
  %508 = and i1 %110, %507, !dbg !1507
  br i1 %508, label %509, label %525, !dbg !1507

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !1509
  br i1 %510, label %511, label %513, !dbg !1513

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !1509
  store i8 39, i8* %512, align 1, !dbg !1509, !tbaa !799
  br label %513, !dbg !1509

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !1513
  call void @llvm.dbg.value(metadata i64 %514, metadata !1086, metadata !DIExpression()), !dbg !1144
  %515 = icmp ult i64 %514, %504, !dbg !1514
  br i1 %515, label %516, label %518, !dbg !1517

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !1514
  store i8 36, i8* %517, align 1, !dbg !1514, !tbaa !799
  br label %518, !dbg !1514

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !1517
  call void @llvm.dbg.value(metadata i64 %519, metadata !1086, metadata !DIExpression()), !dbg !1144
  %520 = icmp ult i64 %519, %504, !dbg !1518
  br i1 %520, label %521, label %523, !dbg !1521

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1518
  store i8 39, i8* %522, align 1, !dbg !1518, !tbaa !799
  br label %523, !dbg !1518

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !1521
  call void @llvm.dbg.value(metadata i64 %524, metadata !1086, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8 1, metadata !1093, metadata !DIExpression()), !dbg !1144
  br label %525, !dbg !1522

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1211
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1144
  call void @llvm.dbg.value(metadata i8 %527, metadata !1093, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %526, metadata !1086, metadata !DIExpression()), !dbg !1144
  %528 = icmp ult i64 %526, %504, !dbg !1523
  br i1 %528, label %529, label %531, !dbg !1526

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1523
  store i8 92, i8* %530, align 1, !dbg !1523, !tbaa !799
  br label %531, !dbg !1523

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !1526
  call void @llvm.dbg.value(metadata i64 %543, metadata !1077, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8 %542, metadata !1103, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 %541, metadata !1102, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 %540, metadata !1096, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 %539, metadata !1094, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8 %538, metadata !1093, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %537, metadata !1079, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %536, metadata !1087, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %535, metadata !1086, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %534, metadata !1085, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.label(metadata !1142), !dbg !1527
  br label %560, !dbg !1528

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !1503
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1144
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1149
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !1494
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1153
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1154
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !1531
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1211
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1211
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1077, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8 %542, metadata !1103, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 %541, metadata !1102, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 %540, metadata !1096, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 %539, metadata !1094, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8 %538, metadata !1093, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %537, metadata !1079, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %536, metadata !1087, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %535, metadata !1086, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %534, metadata !1085, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.label(metadata !1142), !dbg !1527
  %544 = and i8 %538, 1, !dbg !1528
  %545 = icmp ne i8 %544, 0, !dbg !1528
  %546 = and i8 %541, 1, !dbg !1528
  %547 = icmp eq i8 %546, 0, !dbg !1528
  %548 = and i1 %545, %547, !dbg !1528
  br i1 %548, label %549, label %560, !dbg !1528

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !1532
  br i1 %550, label %551, label %553, !dbg !1536

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !1532
  store i8 39, i8* %552, align 1, !dbg !1532, !tbaa !799
  br label %553, !dbg !1532

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !1536
  call void @llvm.dbg.value(metadata i64 %554, metadata !1086, metadata !DIExpression()), !dbg !1144
  %555 = icmp ult i64 %554, %543, !dbg !1537
  br i1 %555, label %556, label %558, !dbg !1540

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !1537
  store i8 39, i8* %557, align 1, !dbg !1537, !tbaa !799
  br label %558, !dbg !1537

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !1540
  call void @llvm.dbg.value(metadata i64 %559, metadata !1086, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8 0, metadata !1093, metadata !DIExpression()), !dbg !1144
  br label %560, !dbg !1541

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1211
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1144
  call void @llvm.dbg.value(metadata i8 %569, metadata !1093, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %568, metadata !1086, metadata !DIExpression()), !dbg !1144
  %570 = icmp ult i64 %568, %561, !dbg !1542
  br i1 %570, label %571, label %573, !dbg !1545

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !1542
  store i8 %563, i8* %572, align 1, !dbg !1542, !tbaa !799
  br label %573, !dbg !1542

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !1545
  call void @llvm.dbg.value(metadata i64 %574, metadata !1086, metadata !DIExpression()), !dbg !1144
  %575 = icmp eq i8 %562, 0, !dbg !1546
  %576 = select i1 %575, i8 0, i8 %128, !dbg !1548
  call void @llvm.dbg.value(metadata i8 %576, metadata !1095, metadata !DIExpression()), !dbg !1144
  br label %577, !dbg !1549

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !1503
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1144
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1149
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !1494
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1153
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1144
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1155
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1077, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8 %584, metadata !1095, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8 %583, metadata !1094, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8 %582, metadata !1093, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %581, metadata !1079, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %580, metadata !1087, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %579, metadata !1086, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %578, metadata !1085, metadata !DIExpression()), !dbg !1144
  %586 = add i64 %578, 1, !dbg !1550
  call void @llvm.dbg.value(metadata i64 %586, metadata !1085, metadata !DIExpression()), !dbg !1144
  br label %121, !dbg !1551, !llvm.loop !1552

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !1554
  %590 = and i1 %110, %589, !dbg !1556
  %591 = xor i1 %590, true, !dbg !1556
  %592 = or i1 %109, %591, !dbg !1556
  br i1 %592, label %593, label %635, !dbg !1556

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !1557
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !1557
  br i1 %597, label %598, label %607, !dbg !1557

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !1559
  %600 = icmp eq i8 %599, 0, !dbg !1559
  br i1 %600, label %603, label %601, !dbg !1562

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !1563
  br label %652, !dbg !1564

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !1565
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !1567
  br i1 %606, label %26, label %607, !dbg !1567

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !1568
  %610 = and i1 %609, %608, !dbg !1570
  br i1 %610, label %611, label %626, !dbg !1570

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1088, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %123, metadata !1086, metadata !DIExpression()), !dbg !1144
  %612 = load i8, i8* %97, align 1, !dbg !1571, !tbaa !799
  %613 = icmp eq i8 %612, 0, !dbg !1574
  br i1 %613, label %626, label %614, !dbg !1574

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1088, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %617, metadata !1086, metadata !DIExpression()), !dbg !1144
  %618 = icmp ult i64 %617, %129, !dbg !1575
  br i1 %618, label %619, label %621, !dbg !1578

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !1575
  store i8 %615, i8* %620, align 1, !dbg !1575, !tbaa !799
  br label %621, !dbg !1575

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !1578
  call void @llvm.dbg.value(metadata i64 %622, metadata !1086, metadata !DIExpression()), !dbg !1144
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !1579
  call void @llvm.dbg.value(metadata i8* %623, metadata !1088, metadata !DIExpression()), !dbg !1144
  %624 = load i8, i8* %623, align 1, !dbg !1571, !tbaa !799
  %625 = icmp eq i8 %624, 0, !dbg !1574
  br i1 %625, label %626, label %614, !dbg !1574, !llvm.loop !1580

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1186
  call void @llvm.dbg.value(metadata i64 %627, metadata !1086, metadata !DIExpression()), !dbg !1144
  %628 = icmp ult i64 %627, %129, !dbg !1582
  br i1 %628, label %629, label %652, !dbg !1584

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !1585
  store i8 0, i8* %630, align 1, !dbg !1586, !tbaa !799
  br label %652, !dbg !1585

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1077, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %637, metadata !1079, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.label(metadata !1143), !dbg !1587
  %633 = icmp eq i8 %101, 0, !dbg !1588
  %634 = select i1 %633, i32 2, i32 4, !dbg !1588
  br label %642, !dbg !1588

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1077, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %637, metadata !1079, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.label(metadata !1143), !dbg !1587
  %639 = icmp eq i32 %93, 2, !dbg !1590
  %640 = icmp eq i8 %636, 0, !dbg !1588
  %641 = select i1 %640, i32 2, i32 4, !dbg !1588
  br i1 %639, label %642, label %646, !dbg !1588

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !1588

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1080, metadata !DIExpression()), !dbg !1144
  %650 = and i32 %5, -3, !dbg !1591
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !1592
  br label %652, !dbg !1593

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !1594
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !1595 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1599, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i32 %1, metadata !1600, metadata !DIExpression()), !dbg !1603
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #24, !dbg !1604
  call void @llvm.dbg.value(metadata i8* %3, metadata !1601, metadata !DIExpression()), !dbg !1603
  %4 = icmp eq i8* %3, %0, !dbg !1605
  br i1 %4, label %5, label %72, !dbg !1607

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #24, !dbg !1608
  call void @llvm.dbg.value(metadata i8* %6, metadata !1602, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8* %6, metadata !1609, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i8* undef, metadata !1615, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i8 85, metadata !1616, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i8 84, metadata !1617, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i8 70, metadata !1618, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i8 45, metadata !1619, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i8 56, metadata !1620, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i8 0, metadata !1621, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i8 0, metadata !1622, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i8 0, metadata !1623, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i8 0, metadata !1624, metadata !DIExpression()), !dbg !1625
  %7 = load i8, i8* %6, align 1, !dbg !1628, !tbaa !799
  %8 = and i8 %7, -33, !dbg !1628
  %9 = sext i8 %8 to i32, !dbg !1628
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !1628

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1630, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8* undef, metadata !1635, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 84, metadata !1636, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 70, metadata !1637, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 45, metadata !1638, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 56, metadata !1639, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 0, metadata !1640, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 0, metadata !1641, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 0, metadata !1642, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 0, metadata !1643, metadata !DIExpression()), !dbg !1644
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1648
  %12 = load i8, i8* %11, align 1, !dbg !1648, !tbaa !799
  %13 = and i8 %12, -33, !dbg !1648
  %14 = icmp eq i8 %13, 84, !dbg !1648
  br i1 %14, label %15, label %69, !dbg !1648

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !1650, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i8* undef, metadata !1655, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i8 70, metadata !1656, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i8 45, metadata !1657, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i8 56, metadata !1658, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i8 0, metadata !1659, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i8 0, metadata !1660, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i8 0, metadata !1661, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i8 0, metadata !1662, metadata !DIExpression()), !dbg !1663
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1667
  %17 = load i8, i8* %16, align 1, !dbg !1667, !tbaa !799
  %18 = and i8 %17, -33, !dbg !1667
  %19 = icmp eq i8 %18, 70, !dbg !1667
  br i1 %19, label %20, label %69, !dbg !1667

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !1669, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i8* undef, metadata !1674, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i8 45, metadata !1675, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i8 56, metadata !1676, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i8 0, metadata !1677, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i8 0, metadata !1678, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i8 0, metadata !1679, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i8 0, metadata !1680, metadata !DIExpression()), !dbg !1681
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1685
  %22 = load i8, i8* %21, align 1, !dbg !1685, !tbaa !799
  %23 = icmp eq i8 %22, 45, !dbg !1685
  br i1 %23, label %24, label %69, !dbg !1687

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !1688, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8* undef, metadata !1693, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 56, metadata !1694, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 0, metadata !1695, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 0, metadata !1696, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 0, metadata !1697, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 0, metadata !1698, metadata !DIExpression()), !dbg !1699
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1703
  %26 = load i8, i8* %25, align 1, !dbg !1703, !tbaa !799
  %27 = icmp eq i8 %26, 56, !dbg !1703
  br i1 %27, label %28, label %69, !dbg !1705

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !1706, metadata !DIExpression()), !dbg !1716
  call void @llvm.dbg.value(metadata i8* undef, metadata !1711, metadata !DIExpression()), !dbg !1716
  call void @llvm.dbg.value(metadata i8 0, metadata !1712, metadata !DIExpression()), !dbg !1716
  call void @llvm.dbg.value(metadata i8 0, metadata !1713, metadata !DIExpression()), !dbg !1716
  call void @llvm.dbg.value(metadata i8 0, metadata !1714, metadata !DIExpression()), !dbg !1716
  call void @llvm.dbg.value(metadata i8 0, metadata !1715, metadata !DIExpression()), !dbg !1716
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1720
  %30 = load i8, i8* %29, align 1, !dbg !1720, !tbaa !799
  %31 = icmp eq i8 %30, 0, !dbg !1720
  br i1 %31, label %32, label %69, !dbg !1722

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !1723, !tbaa !799
  %34 = icmp eq i8 %33, 96, !dbg !1724
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.61, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.62, i64 0, i64 0), !dbg !1723
  br label %72, !dbg !1725

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1630, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i8* undef, metadata !1635, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i8 66, metadata !1636, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i8 49, metadata !1637, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i8 56, metadata !1638, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i8 48, metadata !1639, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i8 51, metadata !1640, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i8 48, metadata !1641, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i8 0, metadata !1642, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i8 0, metadata !1643, metadata !DIExpression()), !dbg !1726
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1730
  %38 = load i8, i8* %37, align 1, !dbg !1730, !tbaa !799
  %39 = and i8 %38, -33, !dbg !1730
  %40 = icmp eq i8 %39, 66, !dbg !1730
  br i1 %40, label %41, label %69, !dbg !1730

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !1650, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i8* undef, metadata !1655, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i8 49, metadata !1656, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i8 56, metadata !1657, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i8 48, metadata !1658, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i8 51, metadata !1659, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i8 48, metadata !1660, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i8 0, metadata !1661, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i8 0, metadata !1662, metadata !DIExpression()), !dbg !1731
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1733
  %43 = load i8, i8* %42, align 1, !dbg !1733, !tbaa !799
  %44 = icmp eq i8 %43, 49, !dbg !1733
  br i1 %44, label %45, label %69, !dbg !1734

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !1669, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i8* undef, metadata !1674, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i8 56, metadata !1675, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i8 48, metadata !1676, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i8 51, metadata !1677, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i8 48, metadata !1678, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i8 0, metadata !1679, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i8 0, metadata !1680, metadata !DIExpression()), !dbg !1735
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1737
  %47 = load i8, i8* %46, align 1, !dbg !1737, !tbaa !799
  %48 = icmp eq i8 %47, 56, !dbg !1737
  br i1 %48, label %49, label %69, !dbg !1738

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !1688, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8* undef, metadata !1693, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8 48, metadata !1694, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8 51, metadata !1695, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8 48, metadata !1696, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8 0, metadata !1697, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8 0, metadata !1698, metadata !DIExpression()), !dbg !1739
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1741
  %51 = load i8, i8* %50, align 1, !dbg !1741, !tbaa !799
  %52 = icmp eq i8 %51, 48, !dbg !1741
  br i1 %52, label %53, label %69, !dbg !1742

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !1706, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8* undef, metadata !1711, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 51, metadata !1712, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 48, metadata !1713, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 0, metadata !1714, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 0, metadata !1715, metadata !DIExpression()), !dbg !1743
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1745
  %55 = load i8, i8* %54, align 1, !dbg !1745, !tbaa !799
  %56 = icmp eq i8 %55, 51, !dbg !1745
  br i1 %56, label %57, label %69, !dbg !1746

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !1747, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i8* undef, metadata !1752, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i8 48, metadata !1753, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i8 0, metadata !1754, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i8 0, metadata !1755, metadata !DIExpression()), !dbg !1756
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1760
  %59 = load i8, i8* %58, align 1, !dbg !1760, !tbaa !799
  %60 = icmp eq i8 %59, 48, !dbg !1760
  br i1 %60, label %61, label %69, !dbg !1762

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !1763, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8* undef, metadata !1768, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 0, metadata !1769, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 0, metadata !1770, metadata !DIExpression()), !dbg !1771
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1775
  %63 = load i8, i8* %62, align 1, !dbg !1775, !tbaa !799
  %64 = icmp eq i8 %63, 0, !dbg !1775
  br i1 %64, label %65, label %69, !dbg !1777

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !1778, !tbaa !799
  %67 = icmp eq i8 %66, 96, !dbg !1779
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.63, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.64, i64 0, i64 0), !dbg !1778
  br label %72, !dbg !1780

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !1781
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), !dbg !1782
  br label %72, !dbg !1783

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !1603
  ret i8* %73, !dbg !1784
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #15

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !1785 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !1789 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #16

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !1795 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1799, metadata !DIExpression()), !dbg !1802
  call void @llvm.dbg.value(metadata i64 %1, metadata !1800, metadata !DIExpression()), !dbg !1802
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1801, metadata !DIExpression()), !dbg !1802
  call void @llvm.dbg.value(metadata i8* %0, metadata !1803, metadata !DIExpression()) #24, !dbg !1816
  call void @llvm.dbg.value(metadata i64 %1, metadata !1808, metadata !DIExpression()) #24, !dbg !1816
  call void @llvm.dbg.value(metadata i64* null, metadata !1809, metadata !DIExpression()) #24, !dbg !1816
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1810, metadata !DIExpression()) #24, !dbg !1816
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1818
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1818
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1811, metadata !DIExpression()) #24, !dbg !1816
  %6 = tail call i32* @__errno_location() #28, !dbg !1819
  %7 = load i32, i32* %6, align 4, !dbg !1819, !tbaa !758
  call void @llvm.dbg.value(metadata i32 %7, metadata !1812, metadata !DIExpression()) #24, !dbg !1816
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1820
  %9 = load i32, i32* %8, align 4, !dbg !1820, !tbaa !1020
  %10 = or i32 %9, 1, !dbg !1821
  call void @llvm.dbg.value(metadata i32 %10, metadata !1813, metadata !DIExpression()) #24, !dbg !1816
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1822
  %12 = load i32, i32* %11, align 8, !dbg !1822, !tbaa !968
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1823
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1824
  %15 = load i8*, i8** %14, align 8, !dbg !1824, !tbaa !1042
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1825
  %17 = load i8*, i8** %16, align 8, !dbg !1825, !tbaa !1045
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #24, !dbg !1826
  %19 = add i64 %18, 1, !dbg !1827
  call void @llvm.dbg.value(metadata i64 %19, metadata !1814, metadata !DIExpression()) #24, !dbg !1816
  call void @llvm.dbg.value(metadata i64 %19, metadata !1828, metadata !DIExpression()) #24, !dbg !1833
  %20 = tail call noalias i8* @xmalloc(i64 %19) #24, !dbg !1835
  call void @llvm.dbg.value(metadata i8* %20, metadata !1815, metadata !DIExpression()) #24, !dbg !1816
  %21 = load i32, i32* %11, align 8, !dbg !1836, !tbaa !968
  %22 = load i8*, i8** %14, align 8, !dbg !1837, !tbaa !1042
  %23 = load i8*, i8** %16, align 8, !dbg !1838, !tbaa !1045
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #24, !dbg !1839
  store i32 %7, i32* %6, align 4, !dbg !1840, !tbaa !758
  ret i8* %20, !dbg !1841
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !1804 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1803, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i64 %1, metadata !1808, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i64* %2, metadata !1809, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1810, metadata !DIExpression()), !dbg !1842
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1843
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1843
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1811, metadata !DIExpression()), !dbg !1842
  %7 = tail call i32* @__errno_location() #28, !dbg !1844
  %8 = load i32, i32* %7, align 4, !dbg !1844, !tbaa !758
  call void @llvm.dbg.value(metadata i32 %8, metadata !1812, metadata !DIExpression()), !dbg !1842
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1845
  %10 = load i32, i32* %9, align 4, !dbg !1845, !tbaa !1020
  %11 = icmp eq i64* %2, null, !dbg !1846
  %12 = zext i1 %11 to i32, !dbg !1846
  %13 = or i32 %10, %12, !dbg !1847
  call void @llvm.dbg.value(metadata i32 %13, metadata !1813, metadata !DIExpression()), !dbg !1842
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1848
  %15 = load i32, i32* %14, align 8, !dbg !1848, !tbaa !968
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1849
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1850
  %18 = load i8*, i8** %17, align 8, !dbg !1850, !tbaa !1042
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1851
  %20 = load i8*, i8** %19, align 8, !dbg !1851, !tbaa !1045
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !1852
  %22 = add i64 %21, 1, !dbg !1853
  call void @llvm.dbg.value(metadata i64 %22, metadata !1814, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i64 %22, metadata !1828, metadata !DIExpression()) #24, !dbg !1854
  %23 = tail call noalias i8* @xmalloc(i64 %22) #24, !dbg !1856
  call void @llvm.dbg.value(metadata i8* %23, metadata !1815, metadata !DIExpression()), !dbg !1842
  %24 = load i32, i32* %14, align 8, !dbg !1857, !tbaa !968
  %25 = load i8*, i8** %17, align 8, !dbg !1858, !tbaa !1042
  %26 = load i8*, i8** %19, align 8, !dbg !1859, !tbaa !1045
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !1860
  store i32 %8, i32* %7, align 4, !dbg !1861, !tbaa !758
  br i1 %11, label %29, label %28, !dbg !1862

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !1863, !tbaa !1865
  br label %29, !dbg !1867

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !1868
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !1869 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1873, !tbaa !597
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !1871, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i32 1, metadata !1872, metadata !DIExpression()), !dbg !1874
  %2 = load i32, i32* @nslots, align 4, !dbg !1875, !tbaa !758
  %3 = icmp sgt i32 %2, 1, !dbg !1878
  br i1 %3, label %4, label %12, !dbg !1879

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !1878
  br label %6, !dbg !1879

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !1872, metadata !DIExpression()), !dbg !1874
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !1880
  %9 = load i8*, i8** %8, align 8, !dbg !1880, !tbaa !1881
  tail call void @free(i8* %9) #24, !dbg !1883
  %10 = add nuw nsw i64 %7, 1, !dbg !1884
  call void @llvm.dbg.value(metadata i64 %10, metadata !1872, metadata !DIExpression()), !dbg !1874
  %11 = icmp eq i64 %10, %5, !dbg !1878
  br i1 %11, label %12, label %6, !dbg !1879, !llvm.loop !1885

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1887
  %14 = load i8*, i8** %13, align 8, !dbg !1887, !tbaa !1881
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1889
  br i1 %15, label %17, label %16, !dbg !1890

16:                                               ; preds = %12
  tail call void @free(i8* %14) #24, !dbg !1891
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1893, !tbaa !1894
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1895, !tbaa !1881
  br label %17, !dbg !1896

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1897
  br i1 %18, label %21, label %19, !dbg !1899

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !1900
  tail call void @free(i8* %20) #24, !dbg !1902
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1903, !tbaa !597
  br label %21, !dbg !1904

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !1905, !tbaa !758
  ret void, !dbg !1906
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !1907 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1909, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8* %1, metadata !1910, metadata !DIExpression()), !dbg !1911
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1912
  ret i8* %3, !dbg !1913
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !1914 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1918, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i8* %1, metadata !1919, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i64 %2, metadata !1920, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1921, metadata !DIExpression()), !dbg !1933
  %5 = tail call i32* @__errno_location() #28, !dbg !1934
  %6 = load i32, i32* %5, align 4, !dbg !1934, !tbaa !758
  call void @llvm.dbg.value(metadata i32 %6, metadata !1922, metadata !DIExpression()), !dbg !1933
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1935, !tbaa !597
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !1923, metadata !DIExpression()), !dbg !1933
  %8 = icmp slt i32 %0, 0, !dbg !1936
  br i1 %8, label %9, label %10, !dbg !1938

9:                                                ; preds = %4
  tail call void @abort() #26, !dbg !1939
  unreachable, !dbg !1939

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !1940, !tbaa !758
  %12 = icmp sgt i32 %11, %0, !dbg !1941
  br i1 %12, label %34, label %13, !dbg !1942

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !1943
  call void @llvm.dbg.value(metadata i1 %14, metadata !1924, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1944
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !1927, metadata !DIExpression()), !dbg !1944
  %15 = icmp eq i32 %0, 2147483647, !dbg !1945
  br i1 %15, label %16, label %17, !dbg !1947

16:                                               ; preds = %13
  tail call void @xalloc_die() #26, !dbg !1948
  unreachable, !dbg !1948

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !1949
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !1949
  %20 = add nuw nsw i32 %0, 1, !dbg !1950
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !1951
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #24, !dbg !1952
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !1952
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !1923, metadata !DIExpression()), !dbg !1933
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !1953, !tbaa !597
  br i1 %14, label %25, label %26, !dbg !1954

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !1955, !tbaa.struct !1957
  br label %26, !dbg !1958

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !1959, !tbaa !758
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !1960
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !1961
  %31 = sub nsw i32 %20, %27, !dbg !1962
  %32 = sext i32 %31 to i64, !dbg !1963
  %33 = shl nsw i64 %32, 4, !dbg !1964
  call void @llvm.dbg.value(metadata i8* %30, metadata !1355, metadata !DIExpression()) #24, !dbg !1965
  call void @llvm.dbg.value(metadata i32 0, metadata !1361, metadata !DIExpression()) #24, !dbg !1965
  call void @llvm.dbg.value(metadata i64 %33, metadata !1362, metadata !DIExpression()) #24, !dbg !1965
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #24, !dbg !1967
  store i32 %20, i32* @nslots, align 4, !dbg !1968, !tbaa !758
  br label %34, !dbg !1969

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !1933
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !1923, metadata !DIExpression()), !dbg !1933
  %36 = zext i32 %0 to i64, !dbg !1970
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !1971
  %38 = load i64, i64* %37, align 8, !dbg !1971, !tbaa !1894
  call void @llvm.dbg.value(metadata i64 %38, metadata !1928, metadata !DIExpression()), !dbg !1972
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !1973
  %40 = load i8*, i8** %39, align 8, !dbg !1973, !tbaa !1881
  call void @llvm.dbg.value(metadata i8* %40, metadata !1930, metadata !DIExpression()), !dbg !1972
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !1974
  %42 = load i32, i32* %41, align 4, !dbg !1974, !tbaa !1020
  %43 = or i32 %42, 1, !dbg !1975
  call void @llvm.dbg.value(metadata i32 %43, metadata !1931, metadata !DIExpression()), !dbg !1972
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1976
  %45 = load i32, i32* %44, align 8, !dbg !1976, !tbaa !968
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !1977
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !1978
  %48 = load i8*, i8** %47, align 8, !dbg !1978, !tbaa !1042
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !1979
  %50 = load i8*, i8** %49, align 8, !dbg !1979, !tbaa !1045
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !1980
  call void @llvm.dbg.value(metadata i64 %51, metadata !1932, metadata !DIExpression()), !dbg !1972
  %52 = icmp ugt i64 %38, %51, !dbg !1981
  br i1 %52, label %63, label %53, !dbg !1983

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !1984
  call void @llvm.dbg.value(metadata i64 %54, metadata !1928, metadata !DIExpression()), !dbg !1972
  store i64 %54, i64* %37, align 8, !dbg !1986, !tbaa !1894
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1987
  br i1 %55, label %57, label %56, !dbg !1989

56:                                               ; preds = %53
  tail call void @free(i8* %40) #24, !dbg !1990
  br label %57, !dbg !1990

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !1828, metadata !DIExpression()) #24, !dbg !1991
  %58 = tail call noalias i8* @xmalloc(i64 %54) #24, !dbg !1993
  call void @llvm.dbg.value(metadata i8* %58, metadata !1930, metadata !DIExpression()), !dbg !1972
  store i8* %58, i8** %39, align 8, !dbg !1994, !tbaa !1881
  %59 = load i32, i32* %44, align 8, !dbg !1995, !tbaa !968
  %60 = load i8*, i8** %47, align 8, !dbg !1996, !tbaa !1042
  %61 = load i8*, i8** %49, align 8, !dbg !1997, !tbaa !1045
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !1998
  br label %63, !dbg !1999

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !1972
  call void @llvm.dbg.value(metadata i8* %64, metadata !1930, metadata !DIExpression()), !dbg !1972
  store i32 %6, i32* %5, align 4, !dbg !2000, !tbaa !758
  ret i8* %64, !dbg !2001
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2002 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2006, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i8* %1, metadata !2007, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i64 %2, metadata !2008, metadata !DIExpression()), !dbg !2009
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2010
  ret i8* %4, !dbg !2011
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2012 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2014, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i32 0, metadata !1909, metadata !DIExpression()) #24, !dbg !2016
  call void @llvm.dbg.value(metadata i8* %0, metadata !1910, metadata !DIExpression()) #24, !dbg !2016
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #24, !dbg !2018
  ret i8* %2, !dbg !2019
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2020 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2024, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i64 %1, metadata !2025, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i32 0, metadata !2006, metadata !DIExpression()) #24, !dbg !2027
  call void @llvm.dbg.value(metadata i8* %0, metadata !2007, metadata !DIExpression()) #24, !dbg !2027
  call void @llvm.dbg.value(metadata i64 %1, metadata !2008, metadata !DIExpression()) #24, !dbg !2027
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #24, !dbg !2029
  ret i8* %3, !dbg !2030
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2031 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2035, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i32 %1, metadata !2036, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8* %2, metadata !2037, metadata !DIExpression()), !dbg !2039
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2040
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2040
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2038, metadata !DIExpression()), !dbg !2041
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2042), !dbg !2045
  call void @llvm.dbg.value(metadata i32 %1, metadata !2046, metadata !DIExpression()) #24, !dbg !2052
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2051, metadata !DIExpression()) #24, !dbg !2054
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #24, !dbg !2054, !alias.scope !2042
  %6 = icmp eq i32 %1, 10, !dbg !2055
  br i1 %6, label %7, label %8, !dbg !2057

7:                                                ; preds = %3
  tail call void @abort() #26, !dbg !2058, !noalias !2042
  unreachable, !dbg !2058

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2059
  store i32 %1, i32* %9, align 8, !dbg !2060, !tbaa !968, !alias.scope !2042
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2061
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2062
  ret i8* %10, !dbg !2063
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2064 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2068, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i32 %1, metadata !2069, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i8* %2, metadata !2070, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i64 %3, metadata !2071, metadata !DIExpression()), !dbg !2073
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2074
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2074
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2072, metadata !DIExpression()), !dbg !2075
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2076), !dbg !2079
  call void @llvm.dbg.value(metadata i32 %1, metadata !2046, metadata !DIExpression()) #24, !dbg !2080
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2051, metadata !DIExpression()) #24, !dbg !2082
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #24, !dbg !2082, !alias.scope !2076
  %7 = icmp eq i32 %1, 10, !dbg !2083
  br i1 %7, label %8, label %9, !dbg !2084

8:                                                ; preds = %4
  tail call void @abort() #26, !dbg !2085, !noalias !2076
  unreachable, !dbg !2085

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2086
  store i32 %1, i32* %10, align 8, !dbg !2087, !tbaa !968, !alias.scope !2076
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2088
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2089
  ret i8* %11, !dbg !2090
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2091 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2095, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i8* %1, metadata !2096, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i32 0, metadata !2035, metadata !DIExpression()) #24, !dbg !2098
  call void @llvm.dbg.value(metadata i32 %0, metadata !2036, metadata !DIExpression()) #24, !dbg !2098
  call void @llvm.dbg.value(metadata i8* %1, metadata !2037, metadata !DIExpression()) #24, !dbg !2098
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2100
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2100
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2038, metadata !DIExpression()) #24, !dbg !2101
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2102) #24, !dbg !2105
  call void @llvm.dbg.value(metadata i32 %0, metadata !2046, metadata !DIExpression()) #24, !dbg !2106
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2051, metadata !DIExpression()) #24, !dbg !2108
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #24, !dbg !2108, !alias.scope !2102
  %5 = icmp eq i32 %0, 10, !dbg !2109
  br i1 %5, label %6, label %7, !dbg !2110

6:                                                ; preds = %2
  tail call void @abort() #26, !dbg !2111, !noalias !2102
  unreachable, !dbg !2111

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2112
  store i32 %0, i32* %8, align 8, !dbg !2113, !tbaa !968, !alias.scope !2102
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #24, !dbg !2114
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2115
  ret i8* %9, !dbg !2116
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2117 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2121, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i8* %1, metadata !2122, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i64 %2, metadata !2123, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i32 0, metadata !2068, metadata !DIExpression()) #24, !dbg !2125
  call void @llvm.dbg.value(metadata i32 %0, metadata !2069, metadata !DIExpression()) #24, !dbg !2125
  call void @llvm.dbg.value(metadata i8* %1, metadata !2070, metadata !DIExpression()) #24, !dbg !2125
  call void @llvm.dbg.value(metadata i64 %2, metadata !2071, metadata !DIExpression()) #24, !dbg !2125
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2127
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2127
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2072, metadata !DIExpression()) #24, !dbg !2128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2129) #24, !dbg !2132
  call void @llvm.dbg.value(metadata i32 %0, metadata !2046, metadata !DIExpression()) #24, !dbg !2133
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2051, metadata !DIExpression()) #24, !dbg !2135
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #24, !dbg !2135, !alias.scope !2129
  %6 = icmp eq i32 %0, 10, !dbg !2136
  br i1 %6, label %7, label %8, !dbg !2137

7:                                                ; preds = %3
  tail call void @abort() #26, !dbg !2138, !noalias !2129
  unreachable, !dbg !2138

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2139
  store i32 %0, i32* %9, align 8, !dbg !2140, !tbaa !968, !alias.scope !2129
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #24, !dbg !2141
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2142
  ret i8* %10, !dbg !2143
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2144 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2148, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i64 %1, metadata !2149, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i8 %2, metadata !2150, metadata !DIExpression()), !dbg !2152
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2153
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2153
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2151, metadata !DIExpression()), !dbg !2154
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2155, !tbaa.struct !2156
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !986, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i8 %2, metadata !987, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i32 1, metadata !988, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i8 %2, metadata !989, metadata !DIExpression()), !dbg !2157
  %6 = lshr i8 %2, 5, !dbg !2159
  %7 = zext i8 %6 to i64, !dbg !2159
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2160
  call void @llvm.dbg.value(metadata i32* %8, metadata !991, metadata !DIExpression()), !dbg !2157
  %9 = and i8 %2, 31, !dbg !2161
  %10 = zext i8 %9 to i32, !dbg !2161
  call void @llvm.dbg.value(metadata i32 %10, metadata !993, metadata !DIExpression()), !dbg !2157
  %11 = load i32, i32* %8, align 4, !dbg !2162, !tbaa !758
  %12 = lshr i32 %11, %10, !dbg !2163
  %13 = and i32 %12, 1, !dbg !2164
  call void @llvm.dbg.value(metadata i32 %13, metadata !994, metadata !DIExpression()), !dbg !2157
  %14 = xor i32 %13, 1, !dbg !2165
  %15 = shl i32 %14, %10, !dbg !2166
  %16 = xor i32 %15, %11, !dbg !2167
  store i32 %16, i32* %8, align 4, !dbg !2167, !tbaa !758
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2168
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2169
  ret i8* %17, !dbg !2170
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2171 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2175, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i8 %1, metadata !2176, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i8* %0, metadata !2148, metadata !DIExpression()) #24, !dbg !2178
  call void @llvm.dbg.value(metadata i64 -1, metadata !2149, metadata !DIExpression()) #24, !dbg !2178
  call void @llvm.dbg.value(metadata i8 %1, metadata !2150, metadata !DIExpression()) #24, !dbg !2178
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2180
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2180
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2151, metadata !DIExpression()) #24, !dbg !2181
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #24, !dbg !2182, !tbaa.struct !2156
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !986, metadata !DIExpression()) #24, !dbg !2183
  call void @llvm.dbg.value(metadata i8 %1, metadata !987, metadata !DIExpression()) #24, !dbg !2183
  call void @llvm.dbg.value(metadata i32 1, metadata !988, metadata !DIExpression()) #24, !dbg !2183
  call void @llvm.dbg.value(metadata i8 %1, metadata !989, metadata !DIExpression()) #24, !dbg !2183
  %5 = lshr i8 %1, 5, !dbg !2185
  %6 = zext i8 %5 to i64, !dbg !2185
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2186
  call void @llvm.dbg.value(metadata i32* %7, metadata !991, metadata !DIExpression()) #24, !dbg !2183
  %8 = and i8 %1, 31, !dbg !2187
  %9 = zext i8 %8 to i32, !dbg !2187
  call void @llvm.dbg.value(metadata i32 %9, metadata !993, metadata !DIExpression()) #24, !dbg !2183
  %10 = load i32, i32* %7, align 4, !dbg !2188, !tbaa !758
  %11 = lshr i32 %10, %9, !dbg !2189
  %12 = and i32 %11, 1, !dbg !2190
  call void @llvm.dbg.value(metadata i32 %12, metadata !994, metadata !DIExpression()) #24, !dbg !2183
  %13 = xor i32 %12, 1, !dbg !2191
  %14 = shl i32 %13, %9, !dbg !2192
  %15 = xor i32 %14, %10, !dbg !2193
  store i32 %15, i32* %7, align 4, !dbg !2193, !tbaa !758
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #24, !dbg !2194
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2195
  ret i8* %16, !dbg !2196
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2197 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2199, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i8* %0, metadata !2175, metadata !DIExpression()) #24, !dbg !2201
  call void @llvm.dbg.value(metadata i8 58, metadata !2176, metadata !DIExpression()) #24, !dbg !2201
  call void @llvm.dbg.value(metadata i8* %0, metadata !2148, metadata !DIExpression()) #24, !dbg !2203
  call void @llvm.dbg.value(metadata i64 -1, metadata !2149, metadata !DIExpression()) #24, !dbg !2203
  call void @llvm.dbg.value(metadata i8 58, metadata !2150, metadata !DIExpression()) #24, !dbg !2203
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2205
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #24, !dbg !2205
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2151, metadata !DIExpression()) #24, !dbg !2206
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #24, !dbg !2207, !tbaa.struct !2156
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !986, metadata !DIExpression()) #24, !dbg !2208
  call void @llvm.dbg.value(metadata i8 58, metadata !987, metadata !DIExpression()) #24, !dbg !2208
  call void @llvm.dbg.value(metadata i32 1, metadata !988, metadata !DIExpression()) #24, !dbg !2208
  call void @llvm.dbg.value(metadata i8 58, metadata !989, metadata !DIExpression()) #24, !dbg !2208
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2210
  call void @llvm.dbg.value(metadata i32* %4, metadata !991, metadata !DIExpression()) #24, !dbg !2208
  call void @llvm.dbg.value(metadata i32 26, metadata !993, metadata !DIExpression()) #24, !dbg !2208
  %5 = load i32, i32* %4, align 4, !dbg !2211, !tbaa !758
  call void @llvm.dbg.value(metadata i32 %5, metadata !994, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #24, !dbg !2208
  %6 = or i32 %5, 67108864, !dbg !2212
  store i32 %6, i32* %4, align 4, !dbg !2212, !tbaa !758
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #24, !dbg !2213
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #24, !dbg !2214
  ret i8* %7, !dbg !2215
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2216 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2218, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %1, metadata !2219, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8* %0, metadata !2148, metadata !DIExpression()) #24, !dbg !2221
  call void @llvm.dbg.value(metadata i64 %1, metadata !2149, metadata !DIExpression()) #24, !dbg !2221
  call void @llvm.dbg.value(metadata i8 58, metadata !2150, metadata !DIExpression()) #24, !dbg !2221
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2223
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2223
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2151, metadata !DIExpression()) #24, !dbg !2224
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #24, !dbg !2225, !tbaa.struct !2156
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !986, metadata !DIExpression()) #24, !dbg !2226
  call void @llvm.dbg.value(metadata i8 58, metadata !987, metadata !DIExpression()) #24, !dbg !2226
  call void @llvm.dbg.value(metadata i32 1, metadata !988, metadata !DIExpression()) #24, !dbg !2226
  call void @llvm.dbg.value(metadata i8 58, metadata !989, metadata !DIExpression()) #24, !dbg !2226
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2228
  call void @llvm.dbg.value(metadata i32* %5, metadata !991, metadata !DIExpression()) #24, !dbg !2226
  call void @llvm.dbg.value(metadata i32 26, metadata !993, metadata !DIExpression()) #24, !dbg !2226
  %6 = load i32, i32* %5, align 4, !dbg !2229, !tbaa !758
  call void @llvm.dbg.value(metadata i32 %6, metadata !994, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #24, !dbg !2226
  %7 = or i32 %6, 67108864, !dbg !2230
  store i32 %7, i32* %5, align 4, !dbg !2230, !tbaa !758
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #24, !dbg !2231
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2232
  ret i8* %8, !dbg !2233
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2234 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2051, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2240
  call void @llvm.dbg.value(metadata i32 %0, metadata !2236, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i32 %1, metadata !2237, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i8* %2, metadata !2238, metadata !DIExpression()), !dbg !2242
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2243
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2243
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2239, metadata !DIExpression()), !dbg !2244
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2245
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2245
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2246), !dbg !2245
  call void @llvm.dbg.value(metadata i32 %1, metadata !2046, metadata !DIExpression()) #24, !dbg !2249
  call void @llvm.dbg.value(metadata i32 0, metadata !2051, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2249
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2240, !alias.scope !2246
  %8 = icmp eq i32 %1, 10, !dbg !2250
  br i1 %8, label %9, label %10, !dbg !2251

9:                                                ; preds = %3
  tail call void @abort() #26, !dbg !2252, !noalias !2246
  unreachable, !dbg !2252

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2051, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2249
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2245
  store i32 %1, i32* %11, align 8, !dbg !2245, !tbaa.struct !2156
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2245
  %13 = bitcast i32* %12 to i8*, !dbg !2245
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2245, !tbaa.struct !2253
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2245
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !986, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i8 58, metadata !987, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i32 1, metadata !988, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i8 58, metadata !989, metadata !DIExpression()), !dbg !2254
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2256
  call void @llvm.dbg.value(metadata i32* %14, metadata !991, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i32 26, metadata !993, metadata !DIExpression()), !dbg !2254
  %15 = load i32, i32* %14, align 4, !dbg !2257, !tbaa !758
  call void @llvm.dbg.value(metadata i32 %15, metadata !994, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2254
  %16 = or i32 %15, 67108864, !dbg !2258
  store i32 %16, i32* %14, align 4, !dbg !2258, !tbaa !758
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2259
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2260
  ret i8* %17, !dbg !2261
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2262 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2266, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %1, metadata !2267, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %2, metadata !2268, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %3, metadata !2269, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i32 %0, metadata !2271, metadata !DIExpression()) #24, !dbg !2281
  call void @llvm.dbg.value(metadata i8* %1, metadata !2276, metadata !DIExpression()) #24, !dbg !2281
  call void @llvm.dbg.value(metadata i8* %2, metadata !2277, metadata !DIExpression()) #24, !dbg !2281
  call void @llvm.dbg.value(metadata i8* %3, metadata !2278, metadata !DIExpression()) #24, !dbg !2281
  call void @llvm.dbg.value(metadata i64 -1, metadata !2279, metadata !DIExpression()) #24, !dbg !2281
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2283
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2283
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2280, metadata !DIExpression()) #24, !dbg !2284
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #24, !dbg !2285, !tbaa.struct !2156
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1027, metadata !DIExpression()) #24, !dbg !2286
  call void @llvm.dbg.value(metadata i8* %1, metadata !1028, metadata !DIExpression()) #24, !dbg !2286
  call void @llvm.dbg.value(metadata i8* %2, metadata !1029, metadata !DIExpression()) #24, !dbg !2286
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1027, metadata !DIExpression()) #24, !dbg !2286
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2288
  store i32 10, i32* %7, align 8, !dbg !2289, !tbaa !968
  %8 = icmp ne i8* %1, null, !dbg !2290
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2291
  br i1 %10, label %12, label %11, !dbg !2291

11:                                               ; preds = %4
  tail call void @abort() #26, !dbg !2292
  unreachable, !dbg !2292

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2293
  store i8* %1, i8** %13, align 8, !dbg !2294, !tbaa !1042
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2295
  store i8* %2, i8** %14, align 8, !dbg !2296, !tbaa !1045
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #24, !dbg !2297
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2298
  ret i8* %15, !dbg !2299
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2272 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2271, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8* %1, metadata !2276, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8* %2, metadata !2277, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8* %3, metadata !2278, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i64 %4, metadata !2279, metadata !DIExpression()), !dbg !2300
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2301
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #24, !dbg !2301
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2280, metadata !DIExpression()), !dbg !2302
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2303, !tbaa.struct !2156
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1027, metadata !DIExpression()) #24, !dbg !2304
  call void @llvm.dbg.value(metadata i8* %1, metadata !1028, metadata !DIExpression()) #24, !dbg !2304
  call void @llvm.dbg.value(metadata i8* %2, metadata !1029, metadata !DIExpression()) #24, !dbg !2304
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1027, metadata !DIExpression()) #24, !dbg !2304
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2306
  store i32 10, i32* %8, align 8, !dbg !2307, !tbaa !968
  %9 = icmp ne i8* %1, null, !dbg !2308
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2309
  br i1 %11, label %13, label %12, !dbg !2309

12:                                               ; preds = %5
  tail call void @abort() #26, !dbg !2310
  unreachable, !dbg !2310

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2311
  store i8* %1, i8** %14, align 8, !dbg !2312, !tbaa !1042
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2313
  store i8* %2, i8** %15, align 8, !dbg !2314, !tbaa !1045
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2315
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #24, !dbg !2316
  ret i8* %16, !dbg !2317
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2318 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2322, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i8* %1, metadata !2323, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i8* %2, metadata !2324, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i32 0, metadata !2266, metadata !DIExpression()) #24, !dbg !2326
  call void @llvm.dbg.value(metadata i8* %0, metadata !2267, metadata !DIExpression()) #24, !dbg !2326
  call void @llvm.dbg.value(metadata i8* %1, metadata !2268, metadata !DIExpression()) #24, !dbg !2326
  call void @llvm.dbg.value(metadata i8* %2, metadata !2269, metadata !DIExpression()) #24, !dbg !2326
  call void @llvm.dbg.value(metadata i32 0, metadata !2271, metadata !DIExpression()) #24, !dbg !2328
  call void @llvm.dbg.value(metadata i8* %0, metadata !2276, metadata !DIExpression()) #24, !dbg !2328
  call void @llvm.dbg.value(metadata i8* %1, metadata !2277, metadata !DIExpression()) #24, !dbg !2328
  call void @llvm.dbg.value(metadata i8* %2, metadata !2278, metadata !DIExpression()) #24, !dbg !2328
  call void @llvm.dbg.value(metadata i64 -1, metadata !2279, metadata !DIExpression()) #24, !dbg !2328
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2330
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2330
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2280, metadata !DIExpression()) #24, !dbg !2331
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #24, !dbg !2332, !tbaa.struct !2156
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1027, metadata !DIExpression()) #24, !dbg !2333
  call void @llvm.dbg.value(metadata i8* %0, metadata !1028, metadata !DIExpression()) #24, !dbg !2333
  call void @llvm.dbg.value(metadata i8* %1, metadata !1029, metadata !DIExpression()) #24, !dbg !2333
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1027, metadata !DIExpression()) #24, !dbg !2333
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2335
  store i32 10, i32* %6, align 8, !dbg !2336, !tbaa !968
  %7 = icmp ne i8* %0, null, !dbg !2337
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2338
  br i1 %9, label %11, label %10, !dbg !2338

10:                                               ; preds = %3
  tail call void @abort() #26, !dbg !2339
  unreachable, !dbg !2339

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2340
  store i8* %0, i8** %12, align 8, !dbg !2341, !tbaa !1042
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2342
  store i8* %1, i8** %13, align 8, !dbg !2343, !tbaa !1045
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #24, !dbg !2344
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2345
  ret i8* %14, !dbg !2346
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2347 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2351, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i8* %1, metadata !2352, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i8* %2, metadata !2353, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i64 %3, metadata !2354, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i32 0, metadata !2271, metadata !DIExpression()) #24, !dbg !2356
  call void @llvm.dbg.value(metadata i8* %0, metadata !2276, metadata !DIExpression()) #24, !dbg !2356
  call void @llvm.dbg.value(metadata i8* %1, metadata !2277, metadata !DIExpression()) #24, !dbg !2356
  call void @llvm.dbg.value(metadata i8* %2, metadata !2278, metadata !DIExpression()) #24, !dbg !2356
  call void @llvm.dbg.value(metadata i64 %3, metadata !2279, metadata !DIExpression()) #24, !dbg !2356
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2358
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2358
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2280, metadata !DIExpression()) #24, !dbg !2359
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #24, !dbg !2360, !tbaa.struct !2156
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1027, metadata !DIExpression()) #24, !dbg !2361
  call void @llvm.dbg.value(metadata i8* %0, metadata !1028, metadata !DIExpression()) #24, !dbg !2361
  call void @llvm.dbg.value(metadata i8* %1, metadata !1029, metadata !DIExpression()) #24, !dbg !2361
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1027, metadata !DIExpression()) #24, !dbg !2361
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2363
  store i32 10, i32* %7, align 8, !dbg !2364, !tbaa !968
  %8 = icmp ne i8* %0, null, !dbg !2365
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2366
  br i1 %10, label %12, label %11, !dbg !2366

11:                                               ; preds = %4
  tail call void @abort() #26, !dbg !2367
  unreachable, !dbg !2367

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2368
  store i8* %0, i8** %13, align 8, !dbg !2369, !tbaa !1042
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2370
  store i8* %1, i8** %14, align 8, !dbg !2371, !tbaa !1045
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #24, !dbg !2372
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2373
  ret i8* %15, !dbg !2374
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2375 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2379, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i8* %1, metadata !2380, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i64 %2, metadata !2381, metadata !DIExpression()), !dbg !2382
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2383
  ret i8* %4, !dbg !2384
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2385 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2389, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i64 %1, metadata !2390, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i32 0, metadata !2379, metadata !DIExpression()) #24, !dbg !2392
  call void @llvm.dbg.value(metadata i8* %0, metadata !2380, metadata !DIExpression()) #24, !dbg !2392
  call void @llvm.dbg.value(metadata i64 %1, metadata !2381, metadata !DIExpression()) #24, !dbg !2392
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #24, !dbg !2394
  ret i8* %3, !dbg !2395
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2396 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2400, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata i8* %1, metadata !2401, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata i32 %0, metadata !2379, metadata !DIExpression()) #24, !dbg !2403
  call void @llvm.dbg.value(metadata i8* %1, metadata !2380, metadata !DIExpression()) #24, !dbg !2403
  call void @llvm.dbg.value(metadata i64 -1, metadata !2381, metadata !DIExpression()) #24, !dbg !2403
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #24, !dbg !2405
  ret i8* %3, !dbg !2406
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2407 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2411, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i32 0, metadata !2400, metadata !DIExpression()) #24, !dbg !2413
  call void @llvm.dbg.value(metadata i8* %0, metadata !2401, metadata !DIExpression()) #24, !dbg !2413
  call void @llvm.dbg.value(metadata i32 0, metadata !2379, metadata !DIExpression()) #24, !dbg !2415
  call void @llvm.dbg.value(metadata i8* %0, metadata !2380, metadata !DIExpression()) #24, !dbg !2415
  call void @llvm.dbg.value(metadata i64 -1, metadata !2381, metadata !DIExpression()) #24, !dbg !2415
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #24, !dbg !2417
  ret i8* %2, !dbg !2418
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2419 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2459, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i8* %1, metadata !2460, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i8* %2, metadata !2461, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i8* %3, metadata !2462, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i8** %4, metadata !2463, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i64 %5, metadata !2464, metadata !DIExpression()), !dbg !2465
  %7 = icmp eq i8* %1, null, !dbg !2466
  br i1 %7, label %10, label %8, !dbg !2468

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.67, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #24, !dbg !2469
  br label %12, !dbg !2469

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.68, i64 0, i64 0), i8* %2, i8* %3) #24, !dbg !2470
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.69, i64 0, i64 0), i32 5) #24, !dbg !2471
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #24, !dbg !2471
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.70, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2472
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.71, i64 0, i64 0), i32 5) #24, !dbg !2473
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.72, i64 0, i64 0)) #24, !dbg !2473
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.70, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2474
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
  ], !dbg !2475

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.73, i64 0, i64 0), i32 5) #24, !dbg !2476
  %21 = load i8*, i8** %4, align 8, !dbg !2476, !tbaa !597
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #24, !dbg !2476
  br label %147, !dbg !2478

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.74, i64 0, i64 0), i32 5) #24, !dbg !2479
  %25 = load i8*, i8** %4, align 8, !dbg !2479, !tbaa !597
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2479
  %27 = load i8*, i8** %26, align 8, !dbg !2479, !tbaa !597
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #24, !dbg !2479
  br label %147, !dbg !2480

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.75, i64 0, i64 0), i32 5) #24, !dbg !2481
  %31 = load i8*, i8** %4, align 8, !dbg !2481, !tbaa !597
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2481
  %33 = load i8*, i8** %32, align 8, !dbg !2481, !tbaa !597
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2481
  %35 = load i8*, i8** %34, align 8, !dbg !2481, !tbaa !597
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #24, !dbg !2481
  br label %147, !dbg !2482

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.76, i64 0, i64 0), i32 5) #24, !dbg !2483
  %39 = load i8*, i8** %4, align 8, !dbg !2483, !tbaa !597
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2483
  %41 = load i8*, i8** %40, align 8, !dbg !2483, !tbaa !597
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2483
  %43 = load i8*, i8** %42, align 8, !dbg !2483, !tbaa !597
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2483
  %45 = load i8*, i8** %44, align 8, !dbg !2483, !tbaa !597
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #24, !dbg !2483
  br label %147, !dbg !2484

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.77, i64 0, i64 0), i32 5) #24, !dbg !2485
  %49 = load i8*, i8** %4, align 8, !dbg !2485, !tbaa !597
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2485
  %51 = load i8*, i8** %50, align 8, !dbg !2485, !tbaa !597
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2485
  %53 = load i8*, i8** %52, align 8, !dbg !2485, !tbaa !597
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2485
  %55 = load i8*, i8** %54, align 8, !dbg !2485, !tbaa !597
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2485
  %57 = load i8*, i8** %56, align 8, !dbg !2485, !tbaa !597
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #24, !dbg !2485
  br label %147, !dbg !2486

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.78, i64 0, i64 0), i32 5) #24, !dbg !2487
  %61 = load i8*, i8** %4, align 8, !dbg !2487, !tbaa !597
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2487
  %63 = load i8*, i8** %62, align 8, !dbg !2487, !tbaa !597
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2487
  %65 = load i8*, i8** %64, align 8, !dbg !2487, !tbaa !597
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2487
  %67 = load i8*, i8** %66, align 8, !dbg !2487, !tbaa !597
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2487
  %69 = load i8*, i8** %68, align 8, !dbg !2487, !tbaa !597
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2487
  %71 = load i8*, i8** %70, align 8, !dbg !2487, !tbaa !597
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #24, !dbg !2487
  br label %147, !dbg !2488

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.79, i64 0, i64 0), i32 5) #24, !dbg !2489
  %75 = load i8*, i8** %4, align 8, !dbg !2489, !tbaa !597
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2489
  %77 = load i8*, i8** %76, align 8, !dbg !2489, !tbaa !597
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2489
  %79 = load i8*, i8** %78, align 8, !dbg !2489, !tbaa !597
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2489
  %81 = load i8*, i8** %80, align 8, !dbg !2489, !tbaa !597
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2489
  %83 = load i8*, i8** %82, align 8, !dbg !2489, !tbaa !597
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2489
  %85 = load i8*, i8** %84, align 8, !dbg !2489, !tbaa !597
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2489
  %87 = load i8*, i8** %86, align 8, !dbg !2489, !tbaa !597
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #24, !dbg !2489
  br label %147, !dbg !2490

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.80, i64 0, i64 0), i32 5) #24, !dbg !2491
  %91 = load i8*, i8** %4, align 8, !dbg !2491, !tbaa !597
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2491
  %93 = load i8*, i8** %92, align 8, !dbg !2491, !tbaa !597
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2491
  %95 = load i8*, i8** %94, align 8, !dbg !2491, !tbaa !597
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2491
  %97 = load i8*, i8** %96, align 8, !dbg !2491, !tbaa !597
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2491
  %99 = load i8*, i8** %98, align 8, !dbg !2491, !tbaa !597
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2491
  %101 = load i8*, i8** %100, align 8, !dbg !2491, !tbaa !597
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2491
  %103 = load i8*, i8** %102, align 8, !dbg !2491, !tbaa !597
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2491
  %105 = load i8*, i8** %104, align 8, !dbg !2491, !tbaa !597
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #24, !dbg !2491
  br label %147, !dbg !2492

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.81, i64 0, i64 0), i32 5) #24, !dbg !2493
  %109 = load i8*, i8** %4, align 8, !dbg !2493, !tbaa !597
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2493
  %111 = load i8*, i8** %110, align 8, !dbg !2493, !tbaa !597
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2493
  %113 = load i8*, i8** %112, align 8, !dbg !2493, !tbaa !597
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2493
  %115 = load i8*, i8** %114, align 8, !dbg !2493, !tbaa !597
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2493
  %117 = load i8*, i8** %116, align 8, !dbg !2493, !tbaa !597
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2493
  %119 = load i8*, i8** %118, align 8, !dbg !2493, !tbaa !597
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2493
  %121 = load i8*, i8** %120, align 8, !dbg !2493, !tbaa !597
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2493
  %123 = load i8*, i8** %122, align 8, !dbg !2493, !tbaa !597
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2493
  %125 = load i8*, i8** %124, align 8, !dbg !2493, !tbaa !597
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #24, !dbg !2493
  br label %147, !dbg !2494

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.82, i64 0, i64 0), i32 5) #24, !dbg !2495
  %129 = load i8*, i8** %4, align 8, !dbg !2495, !tbaa !597
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2495
  %131 = load i8*, i8** %130, align 8, !dbg !2495, !tbaa !597
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2495
  %133 = load i8*, i8** %132, align 8, !dbg !2495, !tbaa !597
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2495
  %135 = load i8*, i8** %134, align 8, !dbg !2495, !tbaa !597
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2495
  %137 = load i8*, i8** %136, align 8, !dbg !2495, !tbaa !597
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2495
  %139 = load i8*, i8** %138, align 8, !dbg !2495, !tbaa !597
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2495
  %141 = load i8*, i8** %140, align 8, !dbg !2495, !tbaa !597
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2495
  %143 = load i8*, i8** %142, align 8, !dbg !2495, !tbaa !597
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2495
  %145 = load i8*, i8** %144, align 8, !dbg !2495, !tbaa !597
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #24, !dbg !2495
  br label %147, !dbg !2496

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2497
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !2498 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2502, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i8* %1, metadata !2503, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i8* %2, metadata !2504, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i8* %3, metadata !2505, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i8** %4, metadata !2506, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i64 0, metadata !2507, metadata !DIExpression()), !dbg !2508
  br label %6, !dbg !2509

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2511
  call void @llvm.dbg.value(metadata i64 %7, metadata !2507, metadata !DIExpression()), !dbg !2508
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2512
  %9 = load i8*, i8** %8, align 8, !dbg !2512, !tbaa !597
  %10 = icmp eq i8* %9, null, !dbg !2514
  %11 = add i64 %7, 1, !dbg !2515
  call void @llvm.dbg.value(metadata i64 %11, metadata !2507, metadata !DIExpression()), !dbg !2508
  br i1 %10, label %12, label %6, !dbg !2514, !llvm.loop !2516

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2518
  ret void, !dbg !2519
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !2520 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2531, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i8* %1, metadata !2532, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i8* %2, metadata !2533, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i8* %3, metadata !2534, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2535, metadata !DIExpression()), !dbg !2539
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2540
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #24, !dbg !2540
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2537, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i64 0, metadata !2536, metadata !DIExpression()), !dbg !2539
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !2536, metadata !DIExpression()), !dbg !2539
  %11 = load i32, i32* %8, align 8, !dbg !2542
  %12 = icmp ult i32 %11, 41, !dbg !2542
  br i1 %12, label %13, label %18, !dbg !2542

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2542
  %15 = zext i32 %11 to i64, !dbg !2542
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2542
  %17 = add nuw nsw i32 %11, 8, !dbg !2542
  store i32 %17, i32* %8, align 8, !dbg !2542
  br label %21, !dbg !2542

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2542
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2542
  store i8* %20, i8** %9, align 8, !dbg !2542
  br label %21, !dbg !2542

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2542
  %25 = load i8*, i8** %24, align 8, !dbg !2542
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2545
  store i8* %25, i8** %26, align 16, !dbg !2546, !tbaa !597
  %27 = icmp eq i8* %25, null, !dbg !2547
  br i1 %27, label %30, label %28, !dbg !2548

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2536, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i64 1, metadata !2536, metadata !DIExpression()), !dbg !2539
  %29 = icmp ult i32 %22, 41, !dbg !2542
  br i1 %29, label %35, label %32, !dbg !2542

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2549
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2550
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #24, !dbg !2551
  ret void, !dbg !2551

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2542
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2542
  store i8* %34, i8** %9, align 8, !dbg !2542
  br label %40, !dbg !2542

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2542
  %37 = zext i32 %22 to i64, !dbg !2542
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2542
  %39 = add nuw nsw i32 %22, 8, !dbg !2542
  store i32 %39, i32* %8, align 8, !dbg !2542
  br label %40, !dbg !2542

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2542
  %44 = load i8*, i8** %43, align 8, !dbg !2542
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2545
  store i8* %44, i8** %45, align 8, !dbg !2546, !tbaa !597
  %46 = icmp eq i8* %44, null, !dbg !2547
  br i1 %46, label %30, label %47, !dbg !2548

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2536, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i64 2, metadata !2536, metadata !DIExpression()), !dbg !2539
  %48 = icmp ult i32 %41, 41, !dbg !2542
  br i1 %48, label %52, label %49, !dbg !2542

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2542
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2542
  store i8* %51, i8** %9, align 8, !dbg !2542
  br label %57, !dbg !2542

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2542
  %54 = zext i32 %41 to i64, !dbg !2542
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2542
  %56 = add nuw nsw i32 %41, 8, !dbg !2542
  store i32 %56, i32* %8, align 8, !dbg !2542
  br label %57, !dbg !2542

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2542
  %61 = load i8*, i8** %60, align 8, !dbg !2542
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2545
  store i8* %61, i8** %62, align 16, !dbg !2546, !tbaa !597
  %63 = icmp eq i8* %61, null, !dbg !2547
  br i1 %63, label %30, label %64, !dbg !2548

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2536, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i64 3, metadata !2536, metadata !DIExpression()), !dbg !2539
  %65 = icmp ult i32 %58, 41, !dbg !2542
  br i1 %65, label %69, label %66, !dbg !2542

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2542
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2542
  store i8* %68, i8** %9, align 8, !dbg !2542
  br label %74, !dbg !2542

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2542
  %71 = zext i32 %58 to i64, !dbg !2542
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2542
  %73 = add nuw nsw i32 %58, 8, !dbg !2542
  store i32 %73, i32* %8, align 8, !dbg !2542
  br label %74, !dbg !2542

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2542
  %78 = load i8*, i8** %77, align 8, !dbg !2542
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2545
  store i8* %78, i8** %79, align 8, !dbg !2546, !tbaa !597
  %80 = icmp eq i8* %78, null, !dbg !2547
  br i1 %80, label %30, label %81, !dbg !2548

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2536, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i64 4, metadata !2536, metadata !DIExpression()), !dbg !2539
  %82 = icmp ult i32 %75, 41, !dbg !2542
  br i1 %82, label %86, label %83, !dbg !2542

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2542
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2542
  store i8* %85, i8** %9, align 8, !dbg !2542
  br label %91, !dbg !2542

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2542
  %88 = zext i32 %75 to i64, !dbg !2542
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2542
  %90 = add nuw nsw i32 %75, 8, !dbg !2542
  store i32 %90, i32* %8, align 8, !dbg !2542
  br label %91, !dbg !2542

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2542
  %95 = load i8*, i8** %94, align 8, !dbg !2542
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2545
  store i8* %95, i8** %96, align 16, !dbg !2546, !tbaa !597
  %97 = icmp eq i8* %95, null, !dbg !2547
  br i1 %97, label %30, label %98, !dbg !2548

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2536, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i64 5, metadata !2536, metadata !DIExpression()), !dbg !2539
  %99 = icmp ult i32 %92, 41, !dbg !2542
  br i1 %99, label %103, label %100, !dbg !2542

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2542
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2542
  store i8* %102, i8** %9, align 8, !dbg !2542
  br label %108, !dbg !2542

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2542
  %105 = zext i32 %92 to i64, !dbg !2542
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2542
  %107 = add nuw nsw i32 %92, 8, !dbg !2542
  store i32 %107, i32* %8, align 8, !dbg !2542
  br label %108, !dbg !2542

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2542
  %111 = load i8*, i8** %110, align 8, !dbg !2542
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2545
  store i8* %111, i8** %112, align 8, !dbg !2546, !tbaa !597
  %113 = icmp eq i8* %111, null, !dbg !2547
  br i1 %113, label %30, label %114, !dbg !2548

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2536, metadata !DIExpression()), !dbg !2539
  %115 = load i8*, i8** %9, align 8, !dbg !2542
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2542
  store i8* %116, i8** %9, align 8, !dbg !2542
  %117 = bitcast i8* %115 to i8**, !dbg !2542
  %118 = load i8*, i8** %117, align 8, !dbg !2542
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2545
  store i8* %118, i8** %119, align 16, !dbg !2546, !tbaa !597
  %120 = icmp eq i8* %118, null, !dbg !2547
  br i1 %120, label %30, label %121, !dbg !2548

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2536, metadata !DIExpression()), !dbg !2539
  %122 = load i8*, i8** %9, align 8, !dbg !2542
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2542
  store i8* %123, i8** %9, align 8, !dbg !2542
  %124 = bitcast i8* %122 to i8**, !dbg !2542
  %125 = load i8*, i8** %124, align 8, !dbg !2542
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2545
  store i8* %125, i8** %126, align 8, !dbg !2546, !tbaa !597
  %127 = icmp eq i8* %125, null, !dbg !2547
  br i1 %127, label %30, label %128, !dbg !2548

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2536, metadata !DIExpression()), !dbg !2539
  %129 = load i8*, i8** %9, align 8, !dbg !2542
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2542
  store i8* %130, i8** %9, align 8, !dbg !2542
  %131 = bitcast i8* %129 to i8**, !dbg !2542
  %132 = load i8*, i8** %131, align 8, !dbg !2542
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2545
  store i8* %132, i8** %133, align 16, !dbg !2546, !tbaa !597
  %134 = icmp eq i8* %132, null, !dbg !2547
  br i1 %134, label %30, label %135, !dbg !2548

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2536, metadata !DIExpression()), !dbg !2539
  %136 = load i8*, i8** %9, align 8, !dbg !2542
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2542
  store i8* %137, i8** %9, align 8, !dbg !2542
  %138 = bitcast i8* %136 to i8**, !dbg !2542
  %139 = load i8*, i8** %138, align 8, !dbg !2542
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2545
  store i8* %139, i8** %140, align 8, !dbg !2546, !tbaa !597
  %141 = icmp eq i8* %139, null, !dbg !2547
  %142 = select i1 %141, i64 9, i64 10, !dbg !2548
  br label %30, !dbg !2548
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !2552 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2556, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8* %1, metadata !2557, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8* %2, metadata !2558, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8* %3, metadata !2559, metadata !DIExpression()), !dbg !2566
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2567
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #24, !dbg !2567
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2560, metadata !DIExpression()), !dbg !2568
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2569
  call void @llvm.va_start(i8* nonnull %6), !dbg !2569
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2570
  call void @llvm.va_end(i8* nonnull %6), !dbg !2571
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #24, !dbg !2572
  ret void, !dbg !2572
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #20

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !2573 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2574, !tbaa !597
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.70, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2574
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.85, i64 0, i64 0), i32 5) #24, !dbg !2575
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.86, i64 0, i64 0)) #24, !dbg !2575
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.87, i64 0, i64 0), i32 5) #24, !dbg !2576
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.88, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.89, i64 0, i64 0)) #24, !dbg !2576
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.90, i64 0, i64 0), i32 5) #24, !dbg !2577
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.91, i64 0, i64 0)) #24, !dbg !2577
  ret void, !dbg !2578
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #21 !dbg !2579 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2583, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %1, metadata !2584, metadata !DIExpression()), !dbg !2585
  %3 = udiv i64 9223372036854775807, %1, !dbg !2586
  %4 = icmp ult i64 %3, %0, !dbg !2586
  br i1 %4, label %5, label %6, !dbg !2588

5:                                                ; preds = %2
  tail call void @xalloc_die() #26, !dbg !2589
  unreachable, !dbg !2589

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2590
  call void @llvm.dbg.value(metadata i64 %7, metadata !2591, metadata !DIExpression()) #24, !dbg !2597
  %8 = tail call noalias i8* @malloc(i64 %7) #24, !dbg !2599
  call void @llvm.dbg.value(metadata i8* %8, metadata !2596, metadata !DIExpression()) #24, !dbg !2597
  %9 = icmp eq i8* %8, null, !dbg !2600
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !2602
  br i1 %11, label %12, label %13, !dbg !2602

12:                                               ; preds = %6
  tail call void @xalloc_die() #26, !dbg !2603
  unreachable, !dbg !2603

13:                                               ; preds = %6
  ret i8* %8, !dbg !2604
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !2592 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2591, metadata !DIExpression()), !dbg !2605
  %2 = tail call noalias i8* @malloc(i64 %0) #24, !dbg !2606
  call void @llvm.dbg.value(metadata i8* %2, metadata !2596, metadata !DIExpression()), !dbg !2605
  %3 = icmp eq i8* %2, null, !dbg !2607
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2608
  br i1 %5, label %6, label %7, !dbg !2608

6:                                                ; preds = %1
  tail call void @xalloc_die() #26, !dbg !2609
  unreachable, !dbg !2609

7:                                                ; preds = %1
  ret i8* %2, !dbg !2610
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #21 !dbg !2611 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2615, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata i64 %1, metadata !2616, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata i64 %2, metadata !2617, metadata !DIExpression()), !dbg !2618
  %4 = udiv i64 9223372036854775807, %2, !dbg !2619
  %5 = icmp ult i64 %4, %1, !dbg !2619
  br i1 %5, label %6, label %7, !dbg !2621

6:                                                ; preds = %3
  tail call void @xalloc_die() #26, !dbg !2622
  unreachable, !dbg !2622

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2623
  call void @llvm.dbg.value(metadata i8* %0, metadata !2624, metadata !DIExpression()) #24, !dbg !2630
  call void @llvm.dbg.value(metadata i64 %8, metadata !2629, metadata !DIExpression()) #24, !dbg !2630
  %9 = icmp eq i64 %8, 0, !dbg !2632
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !2634
  br i1 %11, label %12, label %13, !dbg !2634

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #24, !dbg !2635
  br label %19, !dbg !2637

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #24, !dbg !2638
  call void @llvm.dbg.value(metadata i8* %14, metadata !2624, metadata !DIExpression()) #24, !dbg !2630
  %15 = icmp eq i8* %14, null, !dbg !2639
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !2641
  br i1 %17, label %18, label %19, !dbg !2641

18:                                               ; preds = %13
  tail call void @xalloc_die() #26, !dbg !2642
  unreachable, !dbg !2642

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2630
  ret i8* %20, !dbg !2643
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2625 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2624, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i64 %1, metadata !2629, metadata !DIExpression()), !dbg !2644
  %3 = icmp eq i64 %1, 0, !dbg !2645
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !2646
  br i1 %5, label %6, label %7, !dbg !2646

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #24, !dbg !2647
  br label %13, !dbg !2648

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #24, !dbg !2649
  call void @llvm.dbg.value(metadata i8* %8, metadata !2624, metadata !DIExpression()), !dbg !2644
  %9 = icmp eq i8* %8, null, !dbg !2650
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !2651
  br i1 %11, label %12, label %13, !dbg !2651

12:                                               ; preds = %7
  tail call void @xalloc_die() #26, !dbg !2652
  unreachable, !dbg !2652

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2644
  ret i8* %14, !dbg !2653
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #21 !dbg !160 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !165, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata i64* %1, metadata !166, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata i64 %2, metadata !167, metadata !DIExpression()), !dbg !2654
  %4 = load i64, i64* %1, align 8, !dbg !2655, !tbaa !1865
  call void @llvm.dbg.value(metadata i64 %4, metadata !168, metadata !DIExpression()), !dbg !2654
  %5 = icmp eq i8* %0, null, !dbg !2656
  br i1 %5, label %6, label %20, !dbg !2658

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2659
  br i1 %7, label %8, label %13, !dbg !2662

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2663
  call void @llvm.dbg.value(metadata i64 %9, metadata !168, metadata !DIExpression()), !dbg !2654
  %10 = icmp ugt i64 %2, 128, !dbg !2665
  %11 = zext i1 %10 to i64, !dbg !2665
  %12 = add nuw nsw i64 %9, %11, !dbg !2666
  call void @llvm.dbg.value(metadata i64 %12, metadata !168, metadata !DIExpression()), !dbg !2654
  br label %13, !dbg !2667

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2654
  call void @llvm.dbg.value(metadata i64 %14, metadata !168, metadata !DIExpression()), !dbg !2654
  %15 = udiv i64 9223372036854775807, %2, !dbg !2668
  %16 = icmp ult i64 %15, %14, !dbg !2668
  br i1 %16, label %19, label %17, !dbg !2670

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !168, metadata !DIExpression()), !dbg !2654
  store i64 %14, i64* %1, align 8, !dbg !2671, !tbaa !1865
  %18 = mul i64 %14, %2, !dbg !2672
  call void @llvm.dbg.value(metadata i8* %0, metadata !2624, metadata !DIExpression()) #24, !dbg !2673
  call void @llvm.dbg.value(metadata i64 %28, metadata !2629, metadata !DIExpression()) #24, !dbg !2673
  br label %31, !dbg !2675

19:                                               ; preds = %13
  tail call void @xalloc_die() #26, !dbg !2676
  unreachable, !dbg !2676

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !2677
  %22 = icmp ugt i64 %21, %4, !dbg !2680
  br i1 %22, label %24, label %23, !dbg !2681

23:                                               ; preds = %20
  tail call void @xalloc_die() #26, !dbg !2682
  unreachable, !dbg !2682

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !2683
  %26 = add nuw i64 %4, 1, !dbg !2684
  %27 = add i64 %26, %25, !dbg !2685
  call void @llvm.dbg.value(metadata i64 %27, metadata !168, metadata !DIExpression()), !dbg !2654
  store i64 %27, i64* %1, align 8, !dbg !2671, !tbaa !1865
  %28 = mul i64 %27, %2, !dbg !2672
  call void @llvm.dbg.value(metadata i8* %0, metadata !2624, metadata !DIExpression()) #24, !dbg !2673
  call void @llvm.dbg.value(metadata i64 %28, metadata !2629, metadata !DIExpression()) #24, !dbg !2673
  %29 = icmp eq i64 %28, 0, !dbg !2686
  br i1 %29, label %30, label %31, !dbg !2675

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #24, !dbg !2687
  br label %38, !dbg !2688

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #24, !dbg !2689
  call void @llvm.dbg.value(metadata i8* %33, metadata !2624, metadata !DIExpression()) #24, !dbg !2673
  %34 = icmp eq i8* %33, null, !dbg !2690
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !2691
  br i1 %36, label %37, label %38, !dbg !2691

37:                                               ; preds = %31
  tail call void @xalloc_die() #26, !dbg !2692
  unreachable, !dbg !2692

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !2673
  ret i8* %39, !dbg !2693
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #21 !dbg !2694 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2696, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %0, metadata !2591, metadata !DIExpression()) #24, !dbg !2698
  %2 = tail call noalias i8* @malloc(i64 %0) #24, !dbg !2700
  call void @llvm.dbg.value(metadata i8* %2, metadata !2596, metadata !DIExpression()) #24, !dbg !2698
  %3 = icmp eq i8* %2, null, !dbg !2701
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2702
  br i1 %5, label %6, label %7, !dbg !2702

6:                                                ; preds = %1
  tail call void @xalloc_die() #26, !dbg !2703
  unreachable, !dbg !2703

7:                                                ; preds = %1
  ret i8* %2, !dbg !2704
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !2705 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2709, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata i64* %1, metadata !2710, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata i8* %0, metadata !165, metadata !DIExpression()) #24, !dbg !2712
  call void @llvm.dbg.value(metadata i64* %1, metadata !166, metadata !DIExpression()) #24, !dbg !2712
  call void @llvm.dbg.value(metadata i64 1, metadata !167, metadata !DIExpression()) #24, !dbg !2712
  %3 = load i64, i64* %1, align 8, !dbg !2714, !tbaa !1865
  call void @llvm.dbg.value(metadata i64 %3, metadata !168, metadata !DIExpression()) #24, !dbg !2712
  %4 = icmp eq i8* %0, null, !dbg !2715
  br i1 %4, label %5, label %10, !dbg !2716

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2717
  br i1 %6, label %17, label %7, !dbg !2718

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !168, metadata !DIExpression()) #24, !dbg !2712
  %8 = icmp slt i64 %3, 0, !dbg !2719
  br i1 %8, label %9, label %17, !dbg !2720

9:                                                ; preds = %7
  tail call void @xalloc_die() #26, !dbg !2721
  unreachable, !dbg !2721

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !2722
  br i1 %11, label %13, label %12, !dbg !2723

12:                                               ; preds = %10
  tail call void @xalloc_die() #26, !dbg !2724
  unreachable, !dbg !2724

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !2725
  %15 = add nuw nsw i64 %3, 1, !dbg !2726
  %16 = add nuw nsw i64 %15, %14, !dbg !2727
  call void @llvm.dbg.value(metadata i64 %16, metadata !168, metadata !DIExpression()) #24, !dbg !2712
  call void @llvm.dbg.value(metadata i8* %0, metadata !2624, metadata !DIExpression()) #24, !dbg !2728
  call void @llvm.dbg.value(metadata i64 %16, metadata !2629, metadata !DIExpression()) #24, !dbg !2728
  br label %17, !dbg !2730

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !2731
  store i64 %18, i64* %1, align 8, !dbg !2731, !tbaa !1865
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #24, !dbg !2732
  call void @llvm.dbg.value(metadata i8* %19, metadata !2624, metadata !DIExpression()) #24, !dbg !2728
  %20 = icmp eq i8* %19, null, !dbg !2733
  br i1 %20, label %21, label %22, !dbg !2734

21:                                               ; preds = %17
  tail call void @xalloc_die() #26, !dbg !2735
  unreachable, !dbg !2735

22:                                               ; preds = %17
  ret i8* %19, !dbg !2736
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !2737 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2739, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i64 %0, metadata !2741, metadata !DIExpression()) #24, !dbg !2746
  call void @llvm.dbg.value(metadata i64 1, metadata !2744, metadata !DIExpression()) #24, !dbg !2746
  %2 = icmp slt i64 %0, 0, !dbg !2748
  br i1 %2, label %6, label %3, !dbg !2750

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #24, !dbg !2751
  call void @llvm.dbg.value(metadata i8* %4, metadata !2745, metadata !DIExpression()) #24, !dbg !2746
  %5 = icmp eq i8* %4, null, !dbg !2752
  br i1 %5, label %6, label %7, !dbg !2753

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #26, !dbg !2754
  unreachable, !dbg !2754

7:                                                ; preds = %3
  ret i8* %4, !dbg !2755
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !2742 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2741, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i64 %1, metadata !2744, metadata !DIExpression()), !dbg !2756
  %3 = udiv i64 9223372036854775807, %1, !dbg !2757
  %4 = icmp ult i64 %3, %0, !dbg !2757
  br i1 %4, label %8, label %5, !dbg !2758

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #24, !dbg !2759
  call void @llvm.dbg.value(metadata i8* %6, metadata !2745, metadata !DIExpression()), !dbg !2756
  %7 = icmp eq i8* %6, null, !dbg !2760
  br i1 %7, label %8, label %9, !dbg !2761

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #26, !dbg !2762
  unreachable, !dbg !2762

9:                                                ; preds = %5
  ret i8* %6, !dbg !2763
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2764 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2770, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i64 %1, metadata !2771, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i64 %1, metadata !2591, metadata !DIExpression()) #24, !dbg !2773
  %3 = tail call noalias i8* @malloc(i64 %1) #24, !dbg !2775
  call void @llvm.dbg.value(metadata i8* %3, metadata !2596, metadata !DIExpression()) #24, !dbg !2773
  %4 = icmp eq i8* %3, null, !dbg !2776
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !2777
  br i1 %6, label %7, label %8, !dbg !2777

7:                                                ; preds = %2
  tail call void @xalloc_die() #26, !dbg !2778
  unreachable, !dbg !2778

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2779, metadata !DIExpression()) #24, !dbg !2788
  call void @llvm.dbg.value(metadata i8* %0, metadata !2786, metadata !DIExpression()) #24, !dbg !2788
  call void @llvm.dbg.value(metadata i64 %1, metadata !2787, metadata !DIExpression()) #24, !dbg !2788
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #24, !dbg !2790
  ret i8* %3, !dbg !2791
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !2792 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2794, metadata !DIExpression()), !dbg !2795
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #25, !dbg !2796
  %3 = add i64 %2, 1, !dbg !2797
  call void @llvm.dbg.value(metadata i8* %0, metadata !2770, metadata !DIExpression()) #24, !dbg !2798
  call void @llvm.dbg.value(metadata i64 %3, metadata !2771, metadata !DIExpression()) #24, !dbg !2798
  call void @llvm.dbg.value(metadata i64 %3, metadata !2591, metadata !DIExpression()) #24, !dbg !2800
  %4 = tail call noalias i8* @malloc(i64 %3) #24, !dbg !2802
  call void @llvm.dbg.value(metadata i8* %4, metadata !2596, metadata !DIExpression()) #24, !dbg !2800
  %5 = icmp eq i8* %4, null, !dbg !2803
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !2804
  br i1 %7, label %8, label %9, !dbg !2804

8:                                                ; preds = %1
  tail call void @xalloc_die() #26, !dbg !2805
  unreachable, !dbg !2805

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !2779, metadata !DIExpression()) #24, !dbg !2806
  call void @llvm.dbg.value(metadata i8* %0, metadata !2786, metadata !DIExpression()) #24, !dbg !2806
  call void @llvm.dbg.value(metadata i64 %3, metadata !2787, metadata !DIExpression()) #24, !dbg !2806
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #24, !dbg !2808
  ret i8* %4, !dbg !2809
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !2810 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !2811, !tbaa !758
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.102, i64 0, i64 0), i32 5) #24, !dbg !2812
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.103, i64 0, i64 0), i8* %2) #24, !dbg !2813
  tail call void @abort() #26, !dbg !2814
  unreachable, !dbg !2814
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #23 !dbg !2815 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2817, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i64 %1, metadata !2818, metadata !DIExpression()), !dbg !2823
  %3 = icmp eq i64 %0, 0, !dbg !2824
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !2825
  br i1 %5, label %11, label %6, !dbg !2825

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !2820, metadata !DIExpression()), !dbg !2826
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !2827
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !2827
  br i1 %8, label %9, label %11, !dbg !2829

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #28, !dbg !2830
  store i32 12, i32* %10, align 4, !dbg !2832, !tbaa !758
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !2817, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i64 %12, metadata !2818, metadata !DIExpression()), !dbg !2823
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #24, !dbg !2833
  call void @llvm.dbg.value(metadata i8* %14, metadata !2819, metadata !DIExpression()), !dbg !2823
  br label %15, !dbg !2834

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !2823
  ret i8* %16, !dbg !2835
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !2836 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !2852, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i8* %1, metadata !2853, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i64 %2, metadata !2854, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !2855, metadata !DIExpression()), !dbg !2861
  %6 = bitcast i32* %5 to i8*, !dbg !2862
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #24, !dbg !2862
  %7 = icmp eq i32* %0, null, !dbg !2863
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !2865
  call void @llvm.dbg.value(metadata i32* %8, metadata !2852, metadata !DIExpression()), !dbg !2861
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #24, !dbg !2866
  call void @llvm.dbg.value(metadata i64 %9, metadata !2856, metadata !DIExpression()), !dbg !2861
  %10 = icmp ugt i64 %9, -3, !dbg !2867
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !2868
  br i1 %12, label %13, label %18, !dbg !2868

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #24, !dbg !2869
  br i1 %14, label %18, label %15, !dbg !2870

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !2871, !tbaa !799
  call void @llvm.dbg.value(metadata i8 %16, metadata !2858, metadata !DIExpression()), !dbg !2872
  %17 = zext i8 %16 to i32, !dbg !2873
  store i32 %17, i32* %8, align 4, !dbg !2874, !tbaa !758
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !2861
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #24, !dbg !2875
  ret i64 %19, !dbg !2875
}

; Function Attrs: nounwind
declare !dbg !2876 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !2880 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2918, metadata !DIExpression()), !dbg !2923
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #24, !dbg !2924
  call void @llvm.dbg.value(metadata i1 undef, metadata !2919, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2923
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2925, metadata !DIExpression()), !dbg !2929
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !2931
  %4 = load i32, i32* %3, align 8, !dbg !2931, !tbaa !2932
  %5 = and i32 %4, 32, !dbg !2934
  %6 = icmp eq i32 %5, 0, !dbg !2934
  call void @llvm.dbg.value(metadata i1 %6, metadata !2921, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2923
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #24, !dbg !2935
  %8 = icmp eq i32 %7, 0, !dbg !2936
  call void @llvm.dbg.value(metadata i1 %8, metadata !2922, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2923
  br i1 %6, label %9, label %19, !dbg !2937

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !2939
  call void @llvm.dbg.value(metadata i1 %10, metadata !2919, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2923
  %11 = or i1 %10, %8, !dbg !2940
  %12 = xor i1 %8, true, !dbg !2940
  %13 = sext i1 %12 to i32, !dbg !2940
  br i1 %11, label %22, label %14, !dbg !2940

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #28, !dbg !2941
  %16 = load i32, i32* %15, align 4, !dbg !2941, !tbaa !758
  %17 = icmp ne i32 %16, 9, !dbg !2942
  %18 = sext i1 %17 to i32, !dbg !2943
  br label %22, !dbg !2943

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !2944

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #28, !dbg !2946
  store i32 0, i32* %21, align 4, !dbg !2948, !tbaa !758
  br label %22, !dbg !2946

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !2923
  ret i32 %23, !dbg !2949
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !2950 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2954, metadata !DIExpression()), !dbg !2959
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !2960
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #24, !dbg !2960
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !2955, metadata !DIExpression()), !dbg !2961
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #24, !dbg !2962
  %5 = icmp eq i32 %4, 0, !dbg !2962
  br i1 %5, label %6, label %13, !dbg !2964

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !2965
  %8 = load i16, i16* %7, align 16, !dbg !2965
  %9 = icmp eq i16 %8, 67, !dbg !2965
  br i1 %9, label %13, label %10, !dbg !2966

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.112, i64 0, i64 0), i64 6), !dbg !2967
  %12 = icmp ne i32 %11, 0, !dbg !2968
  br label %13, !dbg !2966

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !2959
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #24, !dbg !2969
  ret i1 %14, !dbg !2969
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !2970 {
  %1 = tail call i8* @nl_langinfo(i32 14) #24, !dbg !2975
  call void @llvm.dbg.value(metadata i8* %1, metadata !2974, metadata !DIExpression()), !dbg !2976
  %2 = icmp eq i8* %1, null, !dbg !2977
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.115, i64 0, i64 0), i8* %1, !dbg !2979
  call void @llvm.dbg.value(metadata i8* %3, metadata !2974, metadata !DIExpression()), !dbg !2976
  %4 = load i8, i8* %3, align 1, !dbg !2980, !tbaa !799
  %5 = icmp eq i8 %4, 0, !dbg !2984
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.116, i64 0, i64 0), i8* %3, !dbg !2985
  call void @llvm.dbg.value(metadata i8* %6, metadata !2974, metadata !DIExpression()), !dbg !2976
  ret i8* %6, !dbg !2986
}

; Function Attrs: nounwind
declare !dbg !2987 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !2990 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2994, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i8* %1, metadata !2995, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i64 %2, metadata !2996, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i32 %0, metadata !2998, metadata !DIExpression()) #24, !dbg !3007
  call void @llvm.dbg.value(metadata i8* %1, metadata !3001, metadata !DIExpression()) #24, !dbg !3007
  call void @llvm.dbg.value(metadata i64 %2, metadata !3002, metadata !DIExpression()) #24, !dbg !3007
  call void @llvm.dbg.value(metadata i32 %0, metadata !3009, metadata !DIExpression()) #24, !dbg !3015
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #24, !dbg !3017
  call void @llvm.dbg.value(metadata i8* %4, metadata !3014, metadata !DIExpression()) #24, !dbg !3015
  call void @llvm.dbg.value(metadata i8* %4, metadata !3003, metadata !DIExpression()) #24, !dbg !3007
  %5 = icmp eq i8* %4, null, !dbg !3018
  br i1 %5, label %6, label %9, !dbg !3019

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3020
  br i1 %7, label %19, label %8, !dbg !3023

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3024, !tbaa !799
  br label %19, !dbg !3025

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #25, !dbg !3026
  call void @llvm.dbg.value(metadata i64 %10, metadata !3004, metadata !DIExpression()) #24, !dbg !3027
  %11 = icmp ult i64 %10, %2, !dbg !3028
  br i1 %11, label %12, label %14, !dbg !3030

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3031
  call void @llvm.dbg.value(metadata i8* %1, metadata !3033, metadata !DIExpression()) #24, !dbg !3038
  call void @llvm.dbg.value(metadata i8* %4, metadata !3036, metadata !DIExpression()) #24, !dbg !3038
  call void @llvm.dbg.value(metadata i64 %13, metadata !3037, metadata !DIExpression()) #24, !dbg !3038
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #24, !dbg !3040
  br label %19, !dbg !3041

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3042
  br i1 %15, label %19, label %16, !dbg !3045

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3046
  call void @llvm.dbg.value(metadata i8* %1, metadata !3033, metadata !DIExpression()) #24, !dbg !3048
  call void @llvm.dbg.value(metadata i8* %4, metadata !3036, metadata !DIExpression()) #24, !dbg !3048
  call void @llvm.dbg.value(metadata i64 %17, metadata !3037, metadata !DIExpression()) #24, !dbg !3048
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #24, !dbg !3050
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3051
  store i8 0, i8* %18, align 1, !dbg !3052, !tbaa !799
  br label %19, !dbg !3053

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3054
  ret i32 %20, !dbg !3055
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3056 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3058, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i32 %0, metadata !3009, metadata !DIExpression()) #24, !dbg !3060
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #24, !dbg !3062
  call void @llvm.dbg.value(metadata i8* %2, metadata !3014, metadata !DIExpression()) #24, !dbg !3060
  ret i8* %2, !dbg !3063
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3064 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3102, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i32 0, metadata !3103, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i32 0, metadata !3105, metadata !DIExpression()), !dbg !3106
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !3107
  call void @llvm.dbg.value(metadata i32 %2, metadata !3104, metadata !DIExpression()), !dbg !3106
  %3 = icmp slt i32 %2, 0, !dbg !3108
  br i1 %3, label %4, label %6, !dbg !3110

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3111
  br label %24, !dbg !3112

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #24, !dbg !3113
  %8 = icmp eq i32 %7, 0, !dbg !3113
  br i1 %8, label %13, label %9, !dbg !3115

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !3116
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #24, !dbg !3117
  %12 = icmp eq i64 %11, -1, !dbg !3118
  br i1 %12, label %16, label %13, !dbg !3119

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #24, !dbg !3120
  %15 = icmp eq i32 %14, 0, !dbg !3120
  br i1 %15, label %16, label %18, !dbg !3121

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3103, metadata !DIExpression()), !dbg !3106
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3122
  call void @llvm.dbg.value(metadata i32 %21, metadata !3105, metadata !DIExpression()), !dbg !3106
  br label %24, !dbg !3123

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #28, !dbg !3124
  %20 = load i32, i32* %19, align 4, !dbg !3124, !tbaa !758
  call void @llvm.dbg.value(metadata i32 %20, metadata !3103, metadata !DIExpression()), !dbg !3106
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3122
  call void @llvm.dbg.value(metadata i32 %21, metadata !3105, metadata !DIExpression()), !dbg !3106
  %22 = icmp eq i32 %20, 0, !dbg !3125
  br i1 %22, label %24, label %23, !dbg !3123

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3127, !tbaa !758
  call void @llvm.dbg.value(metadata i32 -1, metadata !3105, metadata !DIExpression()), !dbg !3106
  br label %24, !dbg !3129

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3106
  ret i32 %25, !dbg !3130
}

; Function Attrs: nofree nounwind
declare !dbg !3131 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3134 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3135 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3139 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3177, metadata !DIExpression()), !dbg !3178
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3179
  br i1 %2, label %6, label %3, !dbg !3181

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #24, !dbg !3182
  %5 = icmp eq i32 %4, 0, !dbg !3182
  br i1 %5, label %6, label %8, !dbg !3183

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3184
  br label %17, !dbg !3185

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3186, metadata !DIExpression()) #24, !dbg !3191
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3193
  %10 = load i32, i32* %9, align 8, !dbg !3193, !tbaa !2932
  %11 = and i32 %10, 256, !dbg !3195
  %12 = icmp eq i32 %11, 0, !dbg !3195
  br i1 %12, label %15, label %13, !dbg !3196

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #24, !dbg !3197
  br label %15, !dbg !3197

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3198
  br label %17, !dbg !3199

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3178
  ret i32 %18, !dbg !3200
}

; Function Attrs: nofree nounwind
declare !dbg !3201 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3204 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3243, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 %1, metadata !3244, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i32 %2, metadata !3245, metadata !DIExpression()), !dbg !3249
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3250
  %5 = load i8*, i8** %4, align 8, !dbg !3250, !tbaa !3251
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3252
  %7 = load i8*, i8** %6, align 8, !dbg !3252, !tbaa !3253
  %8 = icmp eq i8* %5, %7, !dbg !3254
  br i1 %8, label %9, label %28, !dbg !3255

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3256
  %11 = load i8*, i8** %10, align 8, !dbg !3256, !tbaa !3257
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3258
  %13 = load i8*, i8** %12, align 8, !dbg !3258, !tbaa !3259
  %14 = icmp eq i8* %11, %13, !dbg !3260
  br i1 %14, label %15, label %28, !dbg !3261

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3262
  %17 = load i8*, i8** %16, align 8, !dbg !3262, !tbaa !3263
  %18 = icmp eq i8* %17, null, !dbg !3264
  br i1 %18, label %19, label %28, !dbg !3265

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !3266
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #24, !dbg !3267
  call void @llvm.dbg.value(metadata i64 %21, metadata !3246, metadata !DIExpression()), !dbg !3268
  %22 = icmp eq i64 %21, -1, !dbg !3269
  br i1 %22, label %30, label %23, !dbg !3271

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3272
  %25 = load i32, i32* %24, align 8, !dbg !3273, !tbaa !2932
  %26 = and i32 %25, -17, !dbg !3273
  store i32 %26, i32* %24, align 8, !dbg !3273, !tbaa !2932
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3274
  store i64 %21, i64* %27, align 8, !dbg !3275, !tbaa !3276
  br label %30, !dbg !3277

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3278
  br label %30, !dbg !3279

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3249
  ret i32 %31, !dbg !3280
}

; Function Attrs: nofree nounwind
declare !dbg !3281 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

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

!llvm.dbg.cu = !{!2, !31, !37, !45, !51, !57, !148, !142, !155, !172, !174, !176, !179, !181, !183, !572, !574, !576, !578}
!llvm.ident = !{!580, !580, !580, !580, !580, !580, !580, !580, !580, !580, !580, !580, !580, !580, !580, !580, !580, !580, !580}
!llvm.module.flags = !{!581, !582, !583, !584, !585}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 47, type: !14, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !9, globals: !13, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/printenv.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 38, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8}
!8 = !DIEnumerator(name: "PRINTENV_FAILURE", value: 2, isUnsigned: true)
!9 = !{!10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !{!0}
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 1024, elements: !27)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !17, line: 50, size: 256, elements: !18)
!17 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!18 = !{!19, !22, !24, !26}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !16, file: !17, line: 52, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !16, file: !17, line: 55, baseType: !23, size: 32, offset: 64)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !16, file: !17, line: 56, baseType: !25, size: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !16, file: !17, line: 57, baseType: !23, size: 32, offset: 192)
!27 = !{!28}
!28 = !DISubrange(count: 4)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "Version", scope: !31, file: !32, line: 2, type: !20, isLocal: false, isDefinition: true)
!31 = distinct !DICompileUnit(language: DW_LANG_C99, file: !32, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !33, globals: !34, splitDebugInlining: false, nameTableKind: None)
!32 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!33 = !{}
!34 = !{!29}
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "file_name", scope: !37, file: !38, line: 46, type: !20, isLocal: true, isDefinition: true)
!37 = distinct !DICompileUnit(language: DW_LANG_C99, file: !38, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !33, globals: !39, splitDebugInlining: false, nameTableKind: None)
!38 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!39 = !{!35, !40}
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !37, file: !38, line: 56, type: !42, isLocal: true, isDefinition: true)
!42 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "exit_failure", scope: !45, file: !46, line: 24, type: !48, isLocal: false, isDefinition: true)
!45 = distinct !DICompileUnit(language: DW_LANG_C99, file: !46, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !33, globals: !47, splitDebugInlining: false, nameTableKind: None)
!46 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!47 = !{!43}
!48 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !23)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "program_name", scope: !51, file: !52, line: 33, type: !20, isLocal: false, isDefinition: true)
!51 = distinct !DICompileUnit(language: DW_LANG_C99, file: !52, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !33, retainedTypes: !53, globals: !54, splitDebugInlining: false, nameTableKind: None)
!52 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!53 = !{!12, !10}
!54 = !{!49}
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !57, file: !58, line: 85, type: !136, isLocal: false, isDefinition: true)
!57 = distinct !DICompileUnit(language: DW_LANG_C99, file: !58, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !59, retainedTypes: !94, globals: !99, splitDebugInlining: false, nameTableKind: None)
!58 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!59 = !{!60, !74, !79}
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !61, line: 32, baseType: !6, size: 32, elements: !62)
!61 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!62 = !{!63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73}
!63 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!64 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!65 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!66 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!67 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!68 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!69 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!70 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!71 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!72 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!73 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !61, line: 242, baseType: !6, size: 32, elements: !75)
!75 = !{!76, !77, !78}
!76 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!77 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!78 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !80, line: 46, baseType: !6, size: 32, elements: !81)
!80 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!81 = !{!82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93}
!82 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!83 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!84 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!85 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!86 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!87 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!88 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!89 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!90 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!91 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!92 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!93 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!94 = !{!23, !95, !96, !10}
!95 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !97, line: 46, baseType: !98)
!97 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!98 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!99 = !{!55, !100, !106, !118, !120, !125, !132, !134}
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !57, file: !58, line: 101, type: !102, isLocal: false, isDefinition: true)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 320, elements: !104)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!104 = !{!105}
!105 = !DISubrange(count: 10)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !57, file: !58, line: 1052, type: !108, isLocal: false, isDefinition: true)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !58, line: 65, size: 448, elements: !109)
!109 = !{!110, !111, !112, !116, !117}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !108, file: !58, line: 68, baseType: !60, size: 32)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !108, file: !58, line: 71, baseType: !23, size: 32, offset: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !108, file: !58, line: 75, baseType: !113, size: 256, offset: 64)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 8)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !108, file: !58, line: 78, baseType: !20, size: 64, offset: 320)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !108, file: !58, line: 81, baseType: !20, size: 64, offset: 384)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !57, file: !58, line: 116, type: !108, isLocal: true, isDefinition: true)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(name: "slot0", scope: !57, file: !58, line: 842, type: !122, isLocal: true, isDefinition: true)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2048, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 256)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(name: "slotvec", scope: !57, file: !58, line: 845, type: !127, isLocal: true, isDefinition: true)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !58, line: 834, size: 128, elements: !129)
!129 = !{!130, !131}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !128, file: !58, line: 836, baseType: !96, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !128, file: !58, line: 837, baseType: !10, size: 64, offset: 64)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(name: "nslots", scope: !57, file: !58, line: 843, type: !23, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "slotvec0", scope: !57, file: !58, line: 844, type: !128, isLocal: true, isDefinition: true)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 704, elements: !138)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!138 = !{!139}
!139 = !DISubrange(count: 11)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !142, file: !143, line: 26, type: !145, isLocal: false, isDefinition: true)
!142 = distinct !DICompileUnit(language: DW_LANG_C99, file: !143, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !33, globals: !144, splitDebugInlining: false, nameTableKind: None)
!143 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!144 = !{!140}
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 376, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 47)
!148 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !150, retainedTypes: !154, splitDebugInlining: false, nameTableKind: None)
!149 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!150 = !{!151}
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !149, line: 40, baseType: !6, size: 32, elements: !152)
!152 = !{!153}
!153 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!154 = !{!12}
!155 = distinct !DICompileUnit(language: DW_LANG_C99, file: !156, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !157, retainedTypes: !171, splitDebugInlining: false, nameTableKind: None)
!156 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!157 = !{!158}
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !160, file: !159, line: 186, baseType: !6, size: 32, elements: !169)
!159 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!160 = distinct !DISubprogram(name: "x2nrealloc", scope: !159, file: !159, line: 174, type: !161, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !155, retainedNodes: !164)
!161 = !DISubroutineType(types: !162)
!162 = !{!12, !12, !163, !96}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!164 = !{!165, !166, !167, !168}
!165 = !DILocalVariable(name: "p", arg: 1, scope: !160, file: !159, line: 174, type: !12)
!166 = !DILocalVariable(name: "pn", arg: 2, scope: !160, file: !159, line: 174, type: !163)
!167 = !DILocalVariable(name: "s", arg: 3, scope: !160, file: !159, line: 174, type: !96)
!168 = !DILocalVariable(name: "n", scope: !160, file: !159, line: 176, type: !96)
!169 = !{!170}
!170 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!171 = !{!96, !10, !12}
!172 = distinct !DICompileUnit(language: DW_LANG_C99, file: !173, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !33, splitDebugInlining: false, nameTableKind: None)
!173 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!174 = distinct !DICompileUnit(language: DW_LANG_C99, file: !175, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !33, retainedTypes: !154, splitDebugInlining: false, nameTableKind: None)
!175 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!176 = distinct !DICompileUnit(language: DW_LANG_C99, file: !177, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !33, retainedTypes: !178, splitDebugInlining: false, nameTableKind: None)
!177 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!178 = !{!96}
!179 = distinct !DICompileUnit(language: DW_LANG_C99, file: !180, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !33, splitDebugInlining: false, nameTableKind: None)
!180 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!181 = distinct !DICompileUnit(language: DW_LANG_C99, file: !182, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !33, splitDebugInlining: false, nameTableKind: None)
!182 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!183 = distinct !DICompileUnit(language: DW_LANG_C99, file: !184, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !185, retainedTypes: !154, splitDebugInlining: false, nameTableKind: None)
!184 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!185 = !{!186}
!186 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !187, line: 41, baseType: !6, size: 32, elements: !188)
!187 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!188 = !{!189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571}
!189 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!190 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!191 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!192 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!193 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!194 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!195 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!196 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!197 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!198 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!199 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!200 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!201 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!202 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!203 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!204 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!205 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!206 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!207 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!208 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!209 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!210 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!211 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!212 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!213 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!214 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!215 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!216 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!217 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!218 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!219 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!220 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!221 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!222 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!223 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!224 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!225 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!226 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!227 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!228 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!229 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!230 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!231 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!232 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!233 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!234 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!235 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!236 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!237 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!238 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!239 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!240 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!241 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!242 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!243 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!244 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!245 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!246 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!247 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!248 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!249 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!250 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!251 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!252 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!253 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!254 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!255 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!256 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!257 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!258 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!259 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!260 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!261 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!262 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!263 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!264 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!265 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!266 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!267 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!268 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!269 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!270 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!271 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!272 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!273 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!274 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!297 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!300 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!301 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!302 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!303 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!304 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!305 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!306 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!307 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!308 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!309 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!310 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!311 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!384 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!457 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!458 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!459 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!460 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!461 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!462 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!463 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!464 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!465 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!466 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!467 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!468 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!469 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!470 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!471 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!473 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!474 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!475 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!476 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!477 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!478 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!504 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!505 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!506 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!507 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!508 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!513 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!514 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!515 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!516 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!572 = distinct !DICompileUnit(language: DW_LANG_C99, file: !573, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !33, retainedTypes: !154, splitDebugInlining: false, nameTableKind: None)
!573 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!574 = distinct !DICompileUnit(language: DW_LANG_C99, file: !575, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !33, splitDebugInlining: false, nameTableKind: None)
!575 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!576 = distinct !DICompileUnit(language: DW_LANG_C99, file: !577, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !33, retainedTypes: !154, splitDebugInlining: false, nameTableKind: None)
!577 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!578 = distinct !DICompileUnit(language: DW_LANG_C99, file: !579, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !33, retainedTypes: !154, splitDebugInlining: false, nameTableKind: None)
!579 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!580 = !{!"clang version 12.0.1"}
!581 = !{i32 7, !"Dwarf Version", i32 4}
!582 = !{i32 2, !"Debug Info Version", i32 3}
!583 = !{i32 1, !"wchar_size", i32 4}
!584 = !{i32 7, !"PIC Level", i32 2}
!585 = !{i32 7, !"PIE Level", i32 2}
!586 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 56, type: !587, scopeLine: 57, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !589)
!587 = !DISubroutineType(types: !588)
!588 = !{null, !23}
!589 = !{!590}
!590 = !DILocalVariable(name: "status", arg: 1, scope: !586, file: !3, line: 56, type: !23)
!591 = !DILocation(line: 0, scope: !586)
!592 = !DILocation(line: 58, column: 14, scope: !593)
!593 = distinct !DILexicalBlock(scope: !586, file: !3, line: 58, column: 7)
!594 = !DILocation(line: 58, column: 7, scope: !586)
!595 = !DILocation(line: 59, column: 5, scope: !596)
!596 = distinct !DILexicalBlock(scope: !593, file: !3, line: 59, column: 5)
!597 = !{!598, !598, i64 0}
!598 = !{!"any pointer", !599, i64 0}
!599 = !{!"omnipotent char", !600, i64 0}
!600 = !{!"Simple C/C++ TBAA"}
!601 = !DILocation(line: 62, column: 7, scope: !602)
!602 = distinct !DILexicalBlock(scope: !593, file: !3, line: 61, column: 5)
!603 = !DILocation(line: 69, column: 7, scope: !602)
!604 = !DILocation(line: 72, column: 7, scope: !602)
!605 = !DILocation(line: 73, column: 7, scope: !602)
!606 = !DILocation(line: 74, column: 7, scope: !602)
!607 = !DILocalVariable(name: "program", arg: 1, scope: !608, file: !609, line: 634, type: !20)
!608 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !609, file: !609, line: 634, type: !610, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !612)
!609 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!610 = !DISubroutineType(types: !611)
!611 = !{null, !20}
!612 = !{!607, !613, !622, !623, !625}
!613 = !DILocalVariable(name: "infomap", scope: !608, file: !609, line: 636, type: !614)
!614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !615, size: 896, elements: !620)
!615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !616)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !608, file: !609, line: 636, size: 128, elements: !617)
!617 = !{!618, !619}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !616, file: !609, line: 636, baseType: !20, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !616, file: !609, line: 636, baseType: !20, size: 64, offset: 64)
!620 = !{!621}
!621 = !DISubrange(count: 7)
!622 = !DILocalVariable(name: "node", scope: !608, file: !609, line: 646, type: !20)
!623 = !DILocalVariable(name: "map_prog", scope: !608, file: !609, line: 647, type: !624)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!625 = !DILocalVariable(name: "lc_messages", scope: !608, file: !609, line: 659, type: !20)
!626 = !DILocation(line: 0, scope: !608, inlinedAt: !627)
!627 = distinct !DILocation(line: 75, column: 7, scope: !602)
!628 = !DILocation(line: 636, column: 3, scope: !608, inlinedAt: !627)
!629 = !DILocation(line: 636, column: 67, scope: !608, inlinedAt: !627)
!630 = !DILocation(line: 647, column: 36, scope: !608, inlinedAt: !627)
!631 = !DILocation(line: 649, column: 3, scope: !608, inlinedAt: !627)
!632 = !DILocation(line: 649, column: 33, scope: !608, inlinedAt: !627)
!633 = !DILocation(line: 650, column: 13, scope: !608, inlinedAt: !627)
!634 = !DILocation(line: 649, column: 20, scope: !608, inlinedAt: !627)
!635 = !{!636, !598, i64 0}
!636 = !{!"infomap", !598, i64 0, !598, i64 8}
!637 = !DILocation(line: 649, column: 10, scope: !608, inlinedAt: !627)
!638 = !DILocation(line: 649, column: 28, scope: !608, inlinedAt: !627)
!639 = distinct !{!639, !631, !633, !640}
!640 = !{!"llvm.loop.mustprogress"}
!641 = !DILocation(line: 652, column: 17, scope: !642, inlinedAt: !627)
!642 = distinct !DILexicalBlock(scope: !608, file: !609, line: 652, column: 7)
!643 = !{!636, !598, i64 8}
!644 = !DILocation(line: 652, column: 7, scope: !642, inlinedAt: !627)
!645 = !DILocation(line: 652, column: 7, scope: !608, inlinedAt: !627)
!646 = !DILocation(line: 655, column: 3, scope: !608, inlinedAt: !627)
!647 = !DILocation(line: 659, column: 29, scope: !608, inlinedAt: !627)
!648 = !DILocation(line: 660, column: 7, scope: !649, inlinedAt: !627)
!649 = distinct !DILexicalBlock(scope: !608, file: !609, line: 660, column: 7)
!650 = !DILocation(line: 660, column: 19, scope: !649, inlinedAt: !627)
!651 = !DILocation(line: 660, column: 22, scope: !649, inlinedAt: !627)
!652 = !DILocation(line: 660, column: 7, scope: !608, inlinedAt: !627)
!653 = !DILocation(line: 666, column: 7, scope: !654, inlinedAt: !627)
!654 = distinct !DILexicalBlock(scope: !649, file: !609, line: 661, column: 5)
!655 = !DILocation(line: 668, column: 5, scope: !654, inlinedAt: !627)
!656 = !DILocation(line: 669, column: 3, scope: !608, inlinedAt: !627)
!657 = !DILocation(line: 671, column: 3, scope: !608, inlinedAt: !627)
!658 = !DILocation(line: 673, column: 1, scope: !608, inlinedAt: !627)
!659 = !DILocation(line: 77, column: 3, scope: !586)
!660 = !DISubprogram(name: "dcgettext", scope: !661, file: !661, line: 51, type: !662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !33)
!661 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!662 = !DISubroutineType(types: !663)
!663 = !{!10, !20, !20, !23}
!664 = !DISubprogram(name: "fputs_unlocked", scope: !665, file: !665, line: 667, type: !666, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !33)
!665 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!666 = !DISubroutineType(types: !667)
!667 = !{!23, !20, !668}
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !670, line: 49, size: 1728, elements: !671)
!670 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!671 = !{!672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !687, !688, !689, !690, !694, !695, !697, !701, !704, !706, !709, !712, !713, !714, !715, !716}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !669, file: !670, line: 51, baseType: !23, size: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !669, file: !670, line: 54, baseType: !10, size: 64, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !669, file: !670, line: 55, baseType: !10, size: 64, offset: 128)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !669, file: !670, line: 56, baseType: !10, size: 64, offset: 192)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !669, file: !670, line: 57, baseType: !10, size: 64, offset: 256)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !669, file: !670, line: 58, baseType: !10, size: 64, offset: 320)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !669, file: !670, line: 59, baseType: !10, size: 64, offset: 384)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !669, file: !670, line: 60, baseType: !10, size: 64, offset: 448)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !669, file: !670, line: 61, baseType: !10, size: 64, offset: 512)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !669, file: !670, line: 64, baseType: !10, size: 64, offset: 576)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !669, file: !670, line: 65, baseType: !10, size: 64, offset: 640)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !669, file: !670, line: 66, baseType: !10, size: 64, offset: 704)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !669, file: !670, line: 68, baseType: !685, size: 64, offset: 768)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !670, line: 36, flags: DIFlagFwdDecl)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !669, file: !670, line: 70, baseType: !668, size: 64, offset: 832)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !669, file: !670, line: 72, baseType: !23, size: 32, offset: 896)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !669, file: !670, line: 73, baseType: !23, size: 32, offset: 928)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !669, file: !670, line: 74, baseType: !691, size: 64, offset: 960)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !692, line: 152, baseType: !693)
!692 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!693 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !669, file: !670, line: 77, baseType: !95, size: 16, offset: 1024)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !669, file: !670, line: 78, baseType: !696, size: 8, offset: 1040)
!696 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !669, file: !670, line: 79, baseType: !698, size: 8, offset: 1048)
!698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8, elements: !699)
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
!713 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !669, file: !670, line: 94, baseType: !12, size: 64, offset: 1408)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !669, file: !670, line: 95, baseType: !96, size: 64, offset: 1472)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !669, file: !670, line: 96, baseType: !23, size: 32, offset: 1536)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !669, file: !670, line: 98, baseType: !717, size: 160, offset: 1568)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, elements: !718)
!718 = !{!719}
!719 = !DISubrange(count: 20)
!720 = !DISubprogram(name: "setlocale", scope: !721, file: !721, line: 122, type: !722, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !33)
!721 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!722 = !DISubroutineType(types: !723)
!723 = !{!10, !23, !20}
!724 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 81, type: !725, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !728)
!725 = !DISubroutineType(types: !726)
!726 = !{!23, !23, !727}
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!728 = !{!729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !741}
!729 = !DILocalVariable(name: "argc", arg: 1, scope: !724, file: !3, line: 81, type: !23)
!730 = !DILocalVariable(name: "argv", arg: 2, scope: !724, file: !3, line: 81, type: !727)
!731 = !DILocalVariable(name: "env", scope: !724, file: !3, line: 83, type: !727)
!732 = !DILocalVariable(name: "ep", scope: !724, file: !3, line: 84, type: !10)
!733 = !DILocalVariable(name: "ap", scope: !724, file: !3, line: 84, type: !10)
!734 = !DILocalVariable(name: "i", scope: !724, file: !3, line: 85, type: !23)
!735 = !DILocalVariable(name: "ok", scope: !724, file: !3, line: 86, type: !42)
!736 = !DILocalVariable(name: "optc", scope: !724, file: !3, line: 87, type: !23)
!737 = !DILocalVariable(name: "opt_nul_terminate_output", scope: !724, file: !3, line: 88, type: !42)
!738 = !DILocalVariable(name: "matches", scope: !739, file: !3, line: 121, type: !23)
!739 = distinct !DILexicalBlock(scope: !740, file: !3, line: 120, column: 5)
!740 = distinct !DILexicalBlock(scope: !724, file: !3, line: 113, column: 7)
!741 = !DILocalVariable(name: "matched", scope: !742, file: !3, line: 125, type: !42)
!742 = distinct !DILexicalBlock(scope: !743, file: !3, line: 124, column: 9)
!743 = distinct !DILexicalBlock(scope: !744, file: !3, line: 123, column: 7)
!744 = distinct !DILexicalBlock(scope: !739, file: !3, line: 123, column: 7)
!745 = !DILocation(line: 0, scope: !724)
!746 = !DILocation(line: 91, column: 21, scope: !724)
!747 = !DILocation(line: 91, column: 3, scope: !724)
!748 = !DILocation(line: 92, column: 3, scope: !724)
!749 = !DILocation(line: 93, column: 3, scope: !724)
!750 = !DILocation(line: 94, column: 3, scope: !724)
!751 = !DILocalVariable(name: "status", arg: 1, scope: !752, file: !609, line: 99, type: !23)
!752 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !609, file: !609, line: 99, type: !587, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !753)
!753 = !{!751}
!754 = !DILocation(line: 0, scope: !752, inlinedAt: !755)
!755 = distinct !DILocation(line: 96, column: 3, scope: !724)
!756 = !DILocation(line: 102, column: 18, scope: !757, inlinedAt: !755)
!757 = distinct !DILexicalBlock(scope: !752, file: !609, line: 101, column: 7)
!758 = !{!759, !759, i64 0}
!759 = !{!"int", !599, i64 0}
!760 = !DILocation(line: 97, column: 3, scope: !724)
!761 = !DILocation(line: 99, column: 3, scope: !724)
!762 = !DILocation(line: 99, column: 18, scope: !724)
!763 = distinct !{!763, !761, !764, !640}
!764 = !DILocation(line: 111, column: 5, scope: !724)
!765 = !DILocation(line: 106, column: 9, scope: !766)
!766 = distinct !DILexicalBlock(scope: !767, file: !3, line: 102, column: 9)
!767 = distinct !DILexicalBlock(scope: !724, file: !3, line: 100, column: 5)
!768 = !DILocation(line: 107, column: 9, scope: !766)
!769 = !DILocation(line: 109, column: 11, scope: !766)
!770 = !DILocation(line: 113, column: 7, scope: !740)
!771 = !DILocation(line: 113, column: 14, scope: !740)
!772 = !DILocation(line: 113, column: 7, scope: !724)
!773 = !DILocation(line: 123, column: 7, scope: !744)
!774 = !DILocation(line: 115, column: 18, scope: !775)
!775 = distinct !DILexicalBlock(scope: !776, file: !3, line: 115, column: 7)
!776 = distinct !DILexicalBlock(scope: !740, file: !3, line: 114, column: 5)
!777 = !DILocation(line: 115, column: 27, scope: !778)
!778 = distinct !DILexicalBlock(scope: !775, file: !3, line: 115, column: 7)
!779 = !DILocation(line: 115, column: 32, scope: !778)
!780 = !DILocation(line: 115, column: 7, scope: !775)
!781 = !DILocation(line: 116, column: 9, scope: !778)
!782 = !DILocation(line: 115, column: 41, scope: !778)
!783 = distinct !{!783, !780, !784, !640}
!784 = !DILocation(line: 116, column: 9, scope: !775)
!785 = !DILocation(line: 0, scope: !739)
!786 = !DILocation(line: 0, scope: !742)
!787 = !DILocation(line: 128, column: 23, scope: !788)
!788 = distinct !DILexicalBlock(scope: !742, file: !3, line: 128, column: 15)
!789 = !DILocation(line: 128, column: 15, scope: !788)
!790 = !DILocation(line: 128, column: 15, scope: !742)
!791 = !DILocation(line: 131, column: 22, scope: !792)
!792 = distinct !DILexicalBlock(scope: !742, file: !3, line: 131, column: 11)
!793 = !DILocation(line: 131, column: 31, scope: !794)
!794 = distinct !DILexicalBlock(scope: !792, file: !3, line: 131, column: 11)
!795 = !DILocation(line: 131, column: 11, scope: !792)
!796 = !DILocation(line: 134, column: 20, scope: !797)
!797 = distinct !DILexicalBlock(scope: !794, file: !3, line: 132, column: 13)
!798 = !DILocation(line: 135, column: 22, scope: !797)
!799 = !{!599, !599, i64 0}
!800 = !DILocation(line: 135, column: 26, scope: !797)
!801 = !DILocation(line: 135, column: 34, scope: !797)
!802 = !DILocation(line: 135, column: 37, scope: !797)
!803 = !DILocation(line: 135, column: 41, scope: !797)
!804 = !DILocation(line: 135, column: 49, scope: !797)
!805 = !DILocation(line: 135, column: 55, scope: !797)
!806 = !DILocation(line: 135, column: 64, scope: !797)
!807 = !DILocation(line: 135, column: 58, scope: !797)
!808 = !DILocation(line: 135, column: 15, scope: !797)
!809 = !DILocation(line: 137, column: 23, scope: !810)
!810 = distinct !DILexicalBlock(scope: !811, file: !3, line: 137, column: 23)
!811 = distinct !DILexicalBlock(scope: !797, file: !3, line: 136, column: 17)
!812 = !DILocation(line: 137, column: 34, scope: !810)
!813 = !DILocation(line: 137, column: 37, scope: !810)
!814 = !DILocation(line: 137, column: 41, scope: !810)
!815 = !DILocation(line: 137, column: 23, scope: !811)
!816 = !DILocation(line: 139, column: 23, scope: !817)
!817 = distinct !DILexicalBlock(scope: !810, file: !3, line: 138, column: 21)
!818 = !DILocation(line: 142, column: 23, scope: !817)
!819 = distinct !{!819, !808, !820, !640}
!820 = !DILocation(line: 144, column: 17, scope: !797)
!821 = !DILocation(line: 131, column: 37, scope: !794)
!822 = distinct !{!822, !795, !823, !640}
!823 = !DILocation(line: 145, column: 13, scope: !792)
!824 = !DILocation(line: 147, column: 22, scope: !742)
!825 = !DILocation(line: 147, column: 19, scope: !742)
!826 = !DILocation(line: 148, column: 9, scope: !743)
!827 = !DILocation(line: 123, column: 34, scope: !743)
!828 = !DILocation(line: 123, column: 26, scope: !743)
!829 = distinct !{!829, !773, !830, !640}
!830 = !DILocation(line: 148, column: 9, scope: !744)
!831 = !DILocation(line: 150, column: 31, scope: !739)
!832 = !DILocation(line: 150, column: 29, scope: !739)
!833 = !DILocation(line: 150, column: 21, scope: !739)
!834 = !DILocation(line: 154, column: 1, scope: !724)
!835 = !DISubprogram(name: "bindtextdomain", scope: !661, file: !661, line: 86, type: !836, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !33)
!836 = !DISubroutineType(types: !837)
!837 = !{!10, !20, !20}
!838 = !DISubprogram(name: "textdomain", scope: !661, file: !661, line: 82, type: !839, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !33)
!839 = !DISubroutineType(types: !840)
!840 = !{!10, !20}
!841 = !DISubprogram(name: "atexit", scope: !842, file: !842, line: 595, type: !843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !33)
!842 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!843 = !DISubroutineType(types: !844)
!844 = !{!23, !845}
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{null}
!848 = !DISubprogram(name: "getopt_long", scope: !17, file: !17, line: 66, type: !849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !33)
!849 = !DISubroutineType(types: !850)
!850 = !{!23, !23, !851, !20, !853, !25}
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!854 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !38, file: !38, line: 51, type: !610, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !855)
!855 = !{!856}
!856 = !DILocalVariable(name: "file", arg: 1, scope: !854, file: !38, line: 51, type: !20)
!857 = !DILocation(line: 0, scope: !854)
!858 = !DILocation(line: 53, column: 13, scope: !854)
!859 = !DILocation(line: 54, column: 1, scope: !854)
!860 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !38, file: !38, line: 88, type: !861, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !863)
!861 = !DISubroutineType(types: !862)
!862 = !{null, !42}
!863 = !{!864}
!864 = !DILocalVariable(name: "ignore", arg: 1, scope: !860, file: !38, line: 88, type: !42)
!865 = !DILocation(line: 0, scope: !860)
!866 = !DILocation(line: 90, column: 16, scope: !860)
!867 = !{!868, !868, i64 0}
!868 = !{!"_Bool", !599, i64 0}
!869 = !DILocation(line: 91, column: 1, scope: !860)
!870 = distinct !DISubprogram(name: "close_stdout", scope: !38, file: !38, line: 117, type: !846, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !871)
!871 = !{!872}
!872 = !DILocalVariable(name: "write_error", scope: !873, file: !38, line: 122, type: !20)
!873 = distinct !DILexicalBlock(scope: !874, file: !38, line: 121, column: 5)
!874 = distinct !DILexicalBlock(scope: !870, file: !38, line: 119, column: 7)
!875 = !DILocation(line: 119, column: 21, scope: !874)
!876 = !DILocation(line: 119, column: 7, scope: !874)
!877 = !DILocation(line: 119, column: 29, scope: !874)
!878 = !DILocation(line: 120, column: 7, scope: !874)
!879 = !DILocation(line: 120, column: 12, scope: !874)
!880 = !{i8 0, i8 2}
!881 = !DILocation(line: 120, column: 25, scope: !874)
!882 = !DILocation(line: 120, column: 28, scope: !874)
!883 = !DILocation(line: 120, column: 34, scope: !874)
!884 = !DILocation(line: 119, column: 7, scope: !870)
!885 = !DILocation(line: 122, column: 33, scope: !873)
!886 = !DILocation(line: 0, scope: !873)
!887 = !DILocation(line: 123, column: 11, scope: !888)
!888 = distinct !DILexicalBlock(scope: !873, file: !38, line: 123, column: 11)
!889 = !DILocation(line: 0, scope: !888)
!890 = !DILocation(line: 123, column: 11, scope: !873)
!891 = !DILocation(line: 124, column: 36, scope: !888)
!892 = !DILocation(line: 124, column: 9, scope: !888)
!893 = !DILocation(line: 127, column: 9, scope: !888)
!894 = !DILocation(line: 129, column: 14, scope: !873)
!895 = !DILocation(line: 129, column: 7, scope: !873)
!896 = !DILocation(line: 134, column: 42, scope: !897)
!897 = distinct !DILexicalBlock(scope: !870, file: !38, line: 134, column: 7)
!898 = !DILocation(line: 134, column: 28, scope: !897)
!899 = !DILocation(line: 134, column: 50, scope: !897)
!900 = !DILocation(line: 134, column: 7, scope: !870)
!901 = !DILocation(line: 135, column: 12, scope: !897)
!902 = !DILocation(line: 135, column: 5, scope: !897)
!903 = !DILocation(line: 136, column: 1, scope: !870)
!904 = !DISubprogram(name: "error", scope: !905, file: !905, line: 52, type: !906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !33)
!905 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!906 = !DISubroutineType(types: !907)
!907 = !{null, !23, !23, !20, null}
!908 = distinct !DISubprogram(name: "set_program_name", scope: !52, file: !52, line: 39, type: !610, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !909)
!909 = !{!910, !911, !912}
!910 = !DILocalVariable(name: "argv0", arg: 1, scope: !908, file: !52, line: 39, type: !20)
!911 = !DILocalVariable(name: "slash", scope: !908, file: !52, line: 46, type: !20)
!912 = !DILocalVariable(name: "base", scope: !908, file: !52, line: 47, type: !20)
!913 = !DILocation(line: 0, scope: !908)
!914 = !DILocation(line: 51, column: 13, scope: !915)
!915 = distinct !DILexicalBlock(scope: !908, file: !52, line: 51, column: 7)
!916 = !DILocation(line: 51, column: 7, scope: !908)
!917 = !DILocation(line: 55, column: 14, scope: !918)
!918 = distinct !DILexicalBlock(scope: !915, file: !52, line: 52, column: 5)
!919 = !DILocation(line: 54, column: 7, scope: !918)
!920 = !DILocation(line: 56, column: 7, scope: !918)
!921 = !DILocation(line: 59, column: 11, scope: !908)
!922 = !DILocation(line: 60, column: 17, scope: !908)
!923 = !DILocation(line: 60, column: 11, scope: !908)
!924 = !DILocation(line: 61, column: 12, scope: !925)
!925 = distinct !DILexicalBlock(scope: !908, file: !52, line: 61, column: 7)
!926 = !DILocation(line: 61, column: 20, scope: !925)
!927 = !DILocation(line: 61, column: 25, scope: !925)
!928 = !DILocation(line: 61, column: 42, scope: !925)
!929 = !DILocation(line: 61, column: 28, scope: !925)
!930 = !DILocation(line: 61, column: 61, scope: !925)
!931 = !DILocation(line: 61, column: 7, scope: !908)
!932 = !DILocation(line: 64, column: 11, scope: !933)
!933 = distinct !DILexicalBlock(scope: !934, file: !52, line: 64, column: 11)
!934 = distinct !DILexicalBlock(scope: !925, file: !52, line: 62, column: 5)
!935 = !DILocation(line: 64, column: 36, scope: !933)
!936 = !DILocation(line: 64, column: 11, scope: !934)
!937 = !DILocation(line: 66, column: 24, scope: !938)
!938 = distinct !DILexicalBlock(scope: !933, file: !52, line: 65, column: 9)
!939 = !DILocation(line: 70, column: 41, scope: !938)
!940 = !DILocation(line: 72, column: 9, scope: !938)
!941 = !DILocation(line: 84, column: 16, scope: !908)
!942 = !DILocation(line: 90, column: 27, scope: !908)
!943 = !DILocation(line: 92, column: 1, scope: !908)
!944 = distinct !DISubprogram(name: "clone_quoting_options", scope: !58, file: !58, line: 122, type: !945, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !948)
!945 = !DISubroutineType(types: !946)
!946 = !{!947, !947}
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!948 = !{!949, !950, !951}
!949 = !DILocalVariable(name: "o", arg: 1, scope: !944, file: !58, line: 122, type: !947)
!950 = !DILocalVariable(name: "e", scope: !944, file: !58, line: 124, type: !23)
!951 = !DILocalVariable(name: "p", scope: !944, file: !58, line: 125, type: !947)
!952 = !DILocation(line: 0, scope: !944)
!953 = !DILocation(line: 124, column: 11, scope: !944)
!954 = !DILocation(line: 125, column: 40, scope: !944)
!955 = !DILocation(line: 125, column: 31, scope: !944)
!956 = !DILocation(line: 127, column: 9, scope: !944)
!957 = !DILocation(line: 128, column: 3, scope: !944)
!958 = distinct !DISubprogram(name: "get_quoting_style", scope: !58, file: !58, line: 133, type: !959, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !963)
!959 = !DISubroutineType(types: !960)
!960 = !{!60, !961}
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!963 = !{!964}
!964 = !DILocalVariable(name: "o", arg: 1, scope: !958, file: !58, line: 133, type: !961)
!965 = !DILocation(line: 0, scope: !958)
!966 = !DILocation(line: 135, column: 11, scope: !958)
!967 = !DILocation(line: 135, column: 46, scope: !958)
!968 = !{!969, !599, i64 0}
!969 = !{!"quoting_options", !599, i64 0, !759, i64 4, !599, i64 8, !598, i64 40, !598, i64 48}
!970 = !DILocation(line: 135, column: 3, scope: !958)
!971 = distinct !DISubprogram(name: "set_quoting_style", scope: !58, file: !58, line: 141, type: !972, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !974)
!972 = !DISubroutineType(types: !973)
!973 = !{null, !947, !60}
!974 = !{!975, !976}
!975 = !DILocalVariable(name: "o", arg: 1, scope: !971, file: !58, line: 141, type: !947)
!976 = !DILocalVariable(name: "s", arg: 2, scope: !971, file: !58, line: 141, type: !60)
!977 = !DILocation(line: 0, scope: !971)
!978 = !DILocation(line: 143, column: 4, scope: !971)
!979 = !DILocation(line: 143, column: 39, scope: !971)
!980 = !DILocation(line: 143, column: 45, scope: !971)
!981 = !DILocation(line: 144, column: 1, scope: !971)
!982 = distinct !DISubprogram(name: "set_char_quoting", scope: !58, file: !58, line: 152, type: !983, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !985)
!983 = !DISubroutineType(types: !984)
!984 = !{!23, !947, !11, !23}
!985 = !{!986, !987, !988, !989, !991, !993, !994}
!986 = !DILocalVariable(name: "o", arg: 1, scope: !982, file: !58, line: 152, type: !947)
!987 = !DILocalVariable(name: "c", arg: 2, scope: !982, file: !58, line: 152, type: !11)
!988 = !DILocalVariable(name: "i", arg: 3, scope: !982, file: !58, line: 152, type: !23)
!989 = !DILocalVariable(name: "uc", scope: !982, file: !58, line: 154, type: !990)
!990 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!991 = !DILocalVariable(name: "p", scope: !982, file: !58, line: 155, type: !992)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!993 = !DILocalVariable(name: "shift", scope: !982, file: !58, line: 157, type: !23)
!994 = !DILocalVariable(name: "r", scope: !982, file: !58, line: 158, type: !23)
!995 = !DILocation(line: 0, scope: !982)
!996 = !DILocation(line: 156, column: 6, scope: !982)
!997 = !DILocation(line: 156, column: 62, scope: !982)
!998 = !DILocation(line: 156, column: 57, scope: !982)
!999 = !DILocation(line: 157, column: 15, scope: !982)
!1000 = !DILocation(line: 158, column: 12, scope: !982)
!1001 = !DILocation(line: 158, column: 15, scope: !982)
!1002 = !DILocation(line: 158, column: 25, scope: !982)
!1003 = !DILocation(line: 159, column: 13, scope: !982)
!1004 = !DILocation(line: 159, column: 18, scope: !982)
!1005 = !DILocation(line: 159, column: 23, scope: !982)
!1006 = !DILocation(line: 159, column: 6, scope: !982)
!1007 = !DILocation(line: 160, column: 3, scope: !982)
!1008 = distinct !DISubprogram(name: "set_quoting_flags", scope: !58, file: !58, line: 168, type: !1009, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !1011)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!23, !947, !23}
!1011 = !{!1012, !1013, !1014}
!1012 = !DILocalVariable(name: "o", arg: 1, scope: !1008, file: !58, line: 168, type: !947)
!1013 = !DILocalVariable(name: "i", arg: 2, scope: !1008, file: !58, line: 168, type: !23)
!1014 = !DILocalVariable(name: "r", scope: !1008, file: !58, line: 170, type: !23)
!1015 = !DILocation(line: 0, scope: !1008)
!1016 = !DILocation(line: 171, column: 8, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1008, file: !58, line: 171, column: 7)
!1018 = !DILocation(line: 171, column: 7, scope: !1008)
!1019 = !DILocation(line: 173, column: 10, scope: !1008)
!1020 = !{!969, !759, i64 4}
!1021 = !DILocation(line: 174, column: 12, scope: !1008)
!1022 = !DILocation(line: 175, column: 3, scope: !1008)
!1023 = distinct !DISubprogram(name: "set_custom_quoting", scope: !58, file: !58, line: 179, type: !1024, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !1026)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{null, !947, !20, !20}
!1026 = !{!1027, !1028, !1029}
!1027 = !DILocalVariable(name: "o", arg: 1, scope: !1023, file: !58, line: 179, type: !947)
!1028 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1023, file: !58, line: 180, type: !20)
!1029 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1023, file: !58, line: 180, type: !20)
!1030 = !DILocation(line: 0, scope: !1023)
!1031 = !DILocation(line: 182, column: 8, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1023, file: !58, line: 182, column: 7)
!1033 = !DILocation(line: 182, column: 7, scope: !1023)
!1034 = !DILocation(line: 184, column: 6, scope: !1023)
!1035 = !DILocation(line: 184, column: 12, scope: !1023)
!1036 = !DILocation(line: 185, column: 8, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1023, file: !58, line: 185, column: 7)
!1038 = !DILocation(line: 185, column: 19, scope: !1037)
!1039 = !DILocation(line: 186, column: 5, scope: !1037)
!1040 = !DILocation(line: 187, column: 6, scope: !1023)
!1041 = !DILocation(line: 187, column: 17, scope: !1023)
!1042 = !{!969, !598, i64 40}
!1043 = !DILocation(line: 188, column: 6, scope: !1023)
!1044 = !DILocation(line: 188, column: 18, scope: !1023)
!1045 = !{!969, !598, i64 48}
!1046 = !DILocation(line: 189, column: 1, scope: !1023)
!1047 = distinct !DISubprogram(name: "quotearg_buffer", scope: !58, file: !58, line: 784, type: !1048, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !1050)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!96, !10, !96, !20, !96, !961}
!1050 = !{!1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058}
!1051 = !DILocalVariable(name: "buffer", arg: 1, scope: !1047, file: !58, line: 784, type: !10)
!1052 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1047, file: !58, line: 784, type: !96)
!1053 = !DILocalVariable(name: "arg", arg: 3, scope: !1047, file: !58, line: 785, type: !20)
!1054 = !DILocalVariable(name: "argsize", arg: 4, scope: !1047, file: !58, line: 785, type: !96)
!1055 = !DILocalVariable(name: "o", arg: 5, scope: !1047, file: !58, line: 786, type: !961)
!1056 = !DILocalVariable(name: "p", scope: !1047, file: !58, line: 788, type: !961)
!1057 = !DILocalVariable(name: "e", scope: !1047, file: !58, line: 789, type: !23)
!1058 = !DILocalVariable(name: "r", scope: !1047, file: !58, line: 790, type: !96)
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
!1070 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !58, file: !58, line: 256, type: !1071, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !1075)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!96, !10, !96, !20, !96, !60, !23, !1073, !20, !20}
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1075 = !{!1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1100, !1101, !1102, !1103, !1104, !1107, !1108, !1124, !1127, !1128, !1135, !1138, !1139, !1140, !1141, !1142, !1143}
!1076 = !DILocalVariable(name: "buffer", arg: 1, scope: !1070, file: !58, line: 256, type: !10)
!1077 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1070, file: !58, line: 256, type: !96)
!1078 = !DILocalVariable(name: "arg", arg: 3, scope: !1070, file: !58, line: 257, type: !20)
!1079 = !DILocalVariable(name: "argsize", arg: 4, scope: !1070, file: !58, line: 257, type: !96)
!1080 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1070, file: !58, line: 258, type: !60)
!1081 = !DILocalVariable(name: "flags", arg: 6, scope: !1070, file: !58, line: 258, type: !23)
!1082 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1070, file: !58, line: 259, type: !1073)
!1083 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1070, file: !58, line: 260, type: !20)
!1084 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1070, file: !58, line: 261, type: !20)
!1085 = !DILocalVariable(name: "i", scope: !1070, file: !58, line: 263, type: !96)
!1086 = !DILocalVariable(name: "len", scope: !1070, file: !58, line: 264, type: !96)
!1087 = !DILocalVariable(name: "orig_buffersize", scope: !1070, file: !58, line: 265, type: !96)
!1088 = !DILocalVariable(name: "quote_string", scope: !1070, file: !58, line: 266, type: !20)
!1089 = !DILocalVariable(name: "quote_string_len", scope: !1070, file: !58, line: 267, type: !96)
!1090 = !DILocalVariable(name: "backslash_escapes", scope: !1070, file: !58, line: 268, type: !42)
!1091 = !DILocalVariable(name: "unibyte_locale", scope: !1070, file: !58, line: 269, type: !42)
!1092 = !DILocalVariable(name: "elide_outer_quotes", scope: !1070, file: !58, line: 270, type: !42)
!1093 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1070, file: !58, line: 271, type: !42)
!1094 = !DILocalVariable(name: "encountered_single_quote", scope: !1070, file: !58, line: 272, type: !42)
!1095 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1070, file: !58, line: 273, type: !42)
!1096 = !DILocalVariable(name: "c", scope: !1097, file: !58, line: 402, type: !990)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !58, line: 401, column: 5)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !58, line: 400, column: 3)
!1099 = distinct !DILexicalBlock(scope: !1070, file: !58, line: 400, column: 3)
!1100 = !DILocalVariable(name: "esc", scope: !1097, file: !58, line: 403, type: !990)
!1101 = !DILocalVariable(name: "is_right_quote", scope: !1097, file: !58, line: 404, type: !42)
!1102 = !DILocalVariable(name: "escaping", scope: !1097, file: !58, line: 405, type: !42)
!1103 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1097, file: !58, line: 406, type: !42)
!1104 = !DILocalVariable(name: "m", scope: !1105, file: !58, line: 610, type: !96)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !58, line: 608, column: 11)
!1106 = distinct !DILexicalBlock(scope: !1097, file: !58, line: 426, column: 9)
!1107 = !DILocalVariable(name: "printable", scope: !1105, file: !58, line: 612, type: !42)
!1108 = !DILocalVariable(name: "mbstate", scope: !1109, file: !58, line: 621, type: !1111)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !58, line: 620, column: 15)
!1110 = distinct !DILexicalBlock(scope: !1105, file: !58, line: 614, column: 17)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1112, line: 6, baseType: !1113)
!1112 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1114, line: 21, baseType: !1115)
!1114 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1114, line: 13, size: 64, elements: !1116)
!1116 = !{!1117, !1118}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1115, file: !1114, line: 15, baseType: !23, size: 32)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1115, file: !1114, line: 20, baseType: !1119, size: 32, offset: 32)
!1119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1115, file: !1114, line: 16, size: 32, elements: !1120)
!1120 = !{!1121, !1122}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1119, file: !1114, line: 18, baseType: !6, size: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1119, file: !1114, line: 19, baseType: !1123, size: 32)
!1123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 32, elements: !27)
!1124 = !DILocalVariable(name: "w", scope: !1125, file: !58, line: 631, type: !1126)
!1125 = distinct !DILexicalBlock(scope: !1109, file: !58, line: 630, column: 19)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !97, line: 74, baseType: !23)
!1127 = !DILocalVariable(name: "bytes", scope: !1125, file: !58, line: 632, type: !96)
!1128 = !DILocalVariable(name: "j", scope: !1129, file: !58, line: 657, type: !96)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !58, line: 656, column: 27)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !58, line: 654, column: 29)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !58, line: 649, column: 23)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !58, line: 641, column: 30)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !58, line: 636, column: 30)
!1134 = distinct !DILexicalBlock(scope: !1125, file: !58, line: 634, column: 25)
!1135 = !DILocalVariable(name: "ilim", scope: !1136, file: !58, line: 684, type: !96)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !58, line: 681, column: 15)
!1137 = distinct !DILexicalBlock(scope: !1105, file: !58, line: 680, column: 17)
!1138 = !DILabel(scope: !1070, name: "process_input", file: !58, line: 314)
!1139 = !DILabel(scope: !1106, name: "c_and_shell_escape", file: !58, line: 512)
!1140 = !DILabel(scope: !1106, name: "c_escape", file: !58, line: 517)
!1141 = !DILabel(scope: !1097, name: "store_escape", file: !58, line: 719)
!1142 = !DILabel(scope: !1097, name: "store_c", file: !58, line: 722)
!1143 = !DILabel(scope: !1070, name: "force_outer_quoting_style", file: !58, line: 763)
!1144 = !DILocation(line: 0, scope: !1070)
!1145 = !DILocation(line: 269, column: 25, scope: !1070)
!1146 = !DILocation(line: 269, column: 36, scope: !1070)
!1147 = !DILocation(line: 270, column: 8, scope: !1070)
!1148 = !DILocation(line: 273, column: 3, scope: !1070)
!1149 = !DILocation(line: 265, column: 10, scope: !1070)
!1150 = !DILocation(line: 266, column: 15, scope: !1070)
!1151 = !DILocation(line: 267, column: 10, scope: !1070)
!1152 = !DILocation(line: 268, column: 8, scope: !1070)
!1153 = !DILocation(line: 271, column: 8, scope: !1070)
!1154 = !DILocation(line: 272, column: 8, scope: !1070)
!1155 = !DILocation(line: 273, column: 8, scope: !1070)
!1156 = !DILocation(line: 314, column: 2, scope: !1070)
!1157 = !DILocation(line: 316, column: 3, scope: !1070)
!1158 = !DILocation(line: 323, column: 11, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1070, file: !58, line: 317, column: 5)
!1160 = !DILocation(line: 323, column: 12, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1159, file: !58, line: 323, column: 11)
!1162 = !DILocation(line: 324, column: 9, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !58, line: 324, column: 9)
!1164 = distinct !DILexicalBlock(scope: !1161, file: !58, line: 324, column: 9)
!1165 = !DILocation(line: 324, column: 9, scope: !1164)
!1166 = !DILocation(line: 362, column: 26, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !58, line: 340, column: 11)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !58, line: 339, column: 13)
!1169 = distinct !DILexicalBlock(scope: !1159, file: !58, line: 338, column: 7)
!1170 = !DILocation(line: 363, column: 27, scope: !1167)
!1171 = !DILocation(line: 364, column: 11, scope: !1167)
!1172 = !DILocation(line: 365, column: 14, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1169, file: !58, line: 365, column: 13)
!1174 = !DILocation(line: 365, column: 13, scope: !1169)
!1175 = !DILocation(line: 366, column: 43, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !58, line: 366, column: 11)
!1177 = distinct !DILexicalBlock(scope: !1173, file: !58, line: 366, column: 11)
!1178 = !DILocation(line: 366, column: 11, scope: !1177)
!1179 = !DILocation(line: 367, column: 13, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !58, line: 367, column: 13)
!1181 = distinct !DILexicalBlock(scope: !1176, file: !58, line: 367, column: 13)
!1182 = !DILocation(line: 367, column: 13, scope: !1181)
!1183 = !DILocation(line: 366, column: 70, scope: !1176)
!1184 = distinct !{!1184, !1178, !1185, !640}
!1185 = !DILocation(line: 367, column: 13, scope: !1177)
!1186 = !DILocation(line: 264, column: 10, scope: !1070)
!1187 = !DILocation(line: 370, column: 28, scope: !1169)
!1188 = !DILocation(line: 372, column: 7, scope: !1159)
!1189 = !DILocation(line: 376, column: 7, scope: !1159)
!1190 = !DILocation(line: 379, column: 7, scope: !1159)
!1191 = !DILocation(line: 381, column: 12, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1159, file: !58, line: 381, column: 11)
!1193 = !DILocation(line: 381, column: 11, scope: !1159)
!1194 = !DILocation(line: 386, column: 12, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1159, file: !58, line: 386, column: 11)
!1196 = !DILocation(line: 386, column: 11, scope: !1159)
!1197 = !DILocation(line: 387, column: 9, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !58, line: 387, column: 9)
!1199 = distinct !DILexicalBlock(scope: !1195, file: !58, line: 387, column: 9)
!1200 = !DILocation(line: 387, column: 9, scope: !1199)
!1201 = !DILocation(line: 394, column: 7, scope: !1159)
!1202 = !DILocation(line: 397, column: 7, scope: !1159)
!1203 = !DILocation(line: 400, column: 8, scope: !1099)
!1204 = !DILocation(line: 0, scope: !1099)
!1205 = !DILocation(line: 400, column: 27, scope: !1098)
!1206 = !DILocation(line: 400, column: 19, scope: !1098)
!1207 = !DILocation(line: 400, column: 41, scope: !1098)
!1208 = !DILocation(line: 400, column: 48, scope: !1098)
!1209 = !DILocation(line: 400, column: 3, scope: !1099)
!1210 = !DILocation(line: 400, column: 60, scope: !1098)
!1211 = !DILocation(line: 0, scope: !1097)
!1212 = !DILocation(line: 409, column: 11, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1097, file: !58, line: 408, column: 11)
!1214 = !DILocation(line: 411, column: 17, scope: !1213)
!1215 = !DILocation(line: 412, column: 39, scope: !1213)
!1216 = !DILocation(line: 416, column: 32, scope: !1213)
!1217 = !DILocation(line: 412, column: 19, scope: !1213)
!1218 = !DILocation(line: 412, column: 15, scope: !1213)
!1219 = !DILocation(line: 417, column: 11, scope: !1213)
!1220 = !DILocation(line: 417, column: 26, scope: !1213)
!1221 = !DILocation(line: 417, column: 14, scope: !1213)
!1222 = !DILocation(line: 417, column: 63, scope: !1213)
!1223 = !DILocation(line: 408, column: 11, scope: !1097)
!1224 = !DILocation(line: 424, column: 11, scope: !1097)
!1225 = !DILocation(line: 425, column: 7, scope: !1097)
!1226 = !DILocation(line: 428, column: 15, scope: !1106)
!1227 = !DILocation(line: 430, column: 15, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !58, line: 430, column: 15)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !58, line: 429, column: 13)
!1230 = distinct !DILexicalBlock(scope: !1106, file: !58, line: 428, column: 15)
!1231 = !DILocation(line: 430, column: 15, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1228, file: !58, line: 430, column: 15)
!1233 = !DILocation(line: 430, column: 15, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !58, line: 430, column: 15)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !58, line: 430, column: 15)
!1236 = distinct !DILexicalBlock(scope: !1232, file: !58, line: 430, column: 15)
!1237 = !DILocation(line: 430, column: 15, scope: !1235)
!1238 = !DILocation(line: 430, column: 15, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !58, line: 430, column: 15)
!1240 = distinct !DILexicalBlock(scope: !1236, file: !58, line: 430, column: 15)
!1241 = !DILocation(line: 430, column: 15, scope: !1240)
!1242 = !DILocation(line: 430, column: 15, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !58, line: 430, column: 15)
!1244 = distinct !DILexicalBlock(scope: !1236, file: !58, line: 430, column: 15)
!1245 = !DILocation(line: 430, column: 15, scope: !1244)
!1246 = !DILocation(line: 430, column: 15, scope: !1236)
!1247 = !DILocation(line: 430, column: 15, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !58, line: 430, column: 15)
!1249 = distinct !DILexicalBlock(scope: !1228, file: !58, line: 430, column: 15)
!1250 = !DILocation(line: 430, column: 15, scope: !1249)
!1251 = !DILocation(line: 438, column: 19, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1229, file: !58, line: 437, column: 19)
!1253 = !DILocation(line: 438, column: 48, scope: !1252)
!1254 = !DILocation(line: 438, column: 59, scope: !1252)
!1255 = !DILocation(line: 440, column: 19, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !58, line: 440, column: 19)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !58, line: 440, column: 19)
!1258 = distinct !DILexicalBlock(scope: !1252, file: !58, line: 439, column: 17)
!1259 = !DILocation(line: 440, column: 19, scope: !1257)
!1260 = !DILocation(line: 441, column: 19, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !58, line: 441, column: 19)
!1262 = distinct !DILexicalBlock(scope: !1258, file: !58, line: 441, column: 19)
!1263 = !DILocation(line: 441, column: 19, scope: !1262)
!1264 = !DILocation(line: 442, column: 17, scope: !1258)
!1265 = !DILocation(line: 449, column: 20, scope: !1230)
!1266 = !DILocation(line: 454, column: 11, scope: !1106)
!1267 = !DILocation(line: 457, column: 19, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1106, file: !58, line: 455, column: 13)
!1269 = !DILocation(line: 463, column: 19, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1268, file: !58, line: 462, column: 19)
!1271 = !DILocation(line: 463, column: 47, scope: !1270)
!1272 = !DILocation(line: 463, column: 41, scope: !1270)
!1273 = !DILocation(line: 463, column: 52, scope: !1270)
!1274 = !DILocation(line: 462, column: 19, scope: !1268)
!1275 = !DILocation(line: 464, column: 25, scope: !1270)
!1276 = !DILocation(line: 464, column: 17, scope: !1270)
!1277 = !DILocation(line: 471, column: 25, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1270, file: !58, line: 465, column: 19)
!1279 = !DILocation(line: 475, column: 21, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !58, line: 475, column: 21)
!1281 = distinct !DILexicalBlock(scope: !1278, file: !58, line: 475, column: 21)
!1282 = !DILocation(line: 475, column: 21, scope: !1281)
!1283 = !DILocation(line: 476, column: 21, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !58, line: 476, column: 21)
!1285 = distinct !DILexicalBlock(scope: !1278, file: !58, line: 476, column: 21)
!1286 = !DILocation(line: 476, column: 21, scope: !1285)
!1287 = !DILocation(line: 477, column: 21, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !58, line: 477, column: 21)
!1289 = distinct !DILexicalBlock(scope: !1278, file: !58, line: 477, column: 21)
!1290 = !DILocation(line: 477, column: 21, scope: !1289)
!1291 = !DILocation(line: 478, column: 21, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !58, line: 478, column: 21)
!1293 = distinct !DILexicalBlock(scope: !1278, file: !58, line: 478, column: 21)
!1294 = !DILocation(line: 478, column: 21, scope: !1293)
!1295 = !DILocation(line: 479, column: 21, scope: !1278)
!1296 = !DILocation(line: 492, column: 31, scope: !1106)
!1297 = !DILocation(line: 493, column: 31, scope: !1106)
!1298 = !DILocation(line: 495, column: 31, scope: !1106)
!1299 = !DILocation(line: 496, column: 31, scope: !1106)
!1300 = !DILocation(line: 497, column: 31, scope: !1106)
!1301 = !DILocation(line: 500, column: 15, scope: !1106)
!1302 = !DILocation(line: 502, column: 19, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !58, line: 501, column: 13)
!1304 = distinct !DILexicalBlock(scope: !1106, file: !58, line: 500, column: 15)
!1305 = !DILocation(line: 509, column: 33, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1106, file: !58, line: 509, column: 15)
!1307 = !DILocation(line: 0, scope: !1106)
!1308 = !DILocation(line: 512, column: 9, scope: !1106)
!1309 = !DILocation(line: 514, column: 15, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1106, file: !58, line: 513, column: 15)
!1311 = !DILocation(line: 517, column: 9, scope: !1106)
!1312 = !DILocation(line: 518, column: 15, scope: !1106)
!1313 = !DILocation(line: 526, column: 15, scope: !1106)
!1314 = !DILocation(line: 526, column: 40, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1106, file: !58, line: 526, column: 15)
!1316 = !DILocation(line: 526, column: 47, scope: !1315)
!1317 = !DILocation(line: 526, column: 18, scope: !1315)
!1318 = !DILocation(line: 530, column: 17, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1106, file: !58, line: 530, column: 15)
!1320 = !DILocation(line: 530, column: 15, scope: !1106)
!1321 = !DILocation(line: 535, column: 11, scope: !1106)
!1322 = !DILocation(line: 549, column: 15, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1106, file: !58, line: 548, column: 15)
!1324 = !DILocation(line: 556, column: 15, scope: !1106)
!1325 = !DILocation(line: 558, column: 19, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !58, line: 557, column: 13)
!1327 = distinct !DILexicalBlock(scope: !1106, file: !58, line: 556, column: 15)
!1328 = !DILocation(line: 561, column: 19, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1326, file: !58, line: 561, column: 19)
!1330 = !DILocation(line: 561, column: 30, scope: !1329)
!1331 = !DILocation(line: 570, column: 15, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !58, line: 570, column: 15)
!1333 = distinct !DILexicalBlock(scope: !1326, file: !58, line: 570, column: 15)
!1334 = !DILocation(line: 570, column: 15, scope: !1333)
!1335 = !DILocation(line: 571, column: 15, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !58, line: 571, column: 15)
!1337 = distinct !DILexicalBlock(scope: !1326, file: !58, line: 571, column: 15)
!1338 = !DILocation(line: 571, column: 15, scope: !1337)
!1339 = !DILocation(line: 572, column: 15, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !58, line: 572, column: 15)
!1341 = distinct !DILexicalBlock(scope: !1326, file: !58, line: 572, column: 15)
!1342 = !DILocation(line: 572, column: 15, scope: !1341)
!1343 = !DILocation(line: 574, column: 13, scope: !1326)
!1344 = !DILocation(line: 614, column: 17, scope: !1105)
!1345 = !DILocation(line: 0, scope: !1105)
!1346 = !DILocation(line: 617, column: 29, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1110, file: !58, line: 615, column: 15)
!1348 = !{!1349, !1349, i64 0}
!1349 = !{!"short", !599, i64 0}
!1350 = !DILocation(line: 617, column: 27, scope: !1347)
!1351 = !DILocation(line: 678, column: 40, scope: !1105)
!1352 = !DILocation(line: 680, column: 23, scope: !1137)
!1353 = !DILocation(line: 621, column: 17, scope: !1109)
!1354 = !DILocation(line: 621, column: 27, scope: !1109)
!1355 = !DILocalVariable(name: "__dest", arg: 1, scope: !1356, file: !1357, line: 57, type: !12)
!1356 = distinct !DISubprogram(name: "memset", scope: !1357, file: !1357, line: 57, type: !1358, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !1360)
!1357 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!12, !12, !23, !96}
!1360 = !{!1355, !1361, !1362}
!1361 = !DILocalVariable(name: "__ch", arg: 2, scope: !1356, file: !1357, line: 57, type: !23)
!1362 = !DILocalVariable(name: "__len", arg: 3, scope: !1356, file: !1357, line: 57, type: !96)
!1363 = !DILocation(line: 0, scope: !1356, inlinedAt: !1364)
!1364 = distinct !DILocation(line: 622, column: 17, scope: !1109)
!1365 = !DILocation(line: 59, column: 10, scope: !1356, inlinedAt: !1364)
!1366 = !DILocation(line: 626, column: 29, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1109, file: !58, line: 626, column: 21)
!1368 = !DILocation(line: 626, column: 21, scope: !1109)
!1369 = !DILocation(line: 627, column: 29, scope: !1367)
!1370 = !DILocation(line: 627, column: 19, scope: !1367)
!1371 = !DILocation(line: 629, column: 17, scope: !1109)
!1372 = !DILocation(line: 624, column: 19, scope: !1109)
!1373 = !DILocation(line: 625, column: 27, scope: !1109)
!1374 = !DILocation(line: 631, column: 21, scope: !1125)
!1375 = !DILocation(line: 632, column: 56, scope: !1125)
!1376 = !DILocation(line: 632, column: 50, scope: !1125)
!1377 = !DILocation(line: 633, column: 53, scope: !1125)
!1378 = !DILocation(line: 0, scope: !1125)
!1379 = !DILocation(line: 632, column: 36, scope: !1125)
!1380 = !DILocation(line: 634, column: 25, scope: !1125)
!1381 = !DILocation(line: 644, column: 38, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1132, file: !58, line: 642, column: 23)
!1383 = !DILocation(line: 644, column: 48, scope: !1382)
!1384 = !DILocation(line: 644, column: 25, scope: !1382)
!1385 = !DILocation(line: 644, column: 51, scope: !1382)
!1386 = !DILocation(line: 645, column: 28, scope: !1382)
!1387 = !DILocation(line: 644, column: 34, scope: !1382)
!1388 = distinct !{!1388, !1384, !1386, !640}
!1389 = !DILocation(line: 655, column: 29, scope: !1130)
!1390 = !DILocation(line: 0, scope: !1129)
!1391 = !DILocation(line: 659, column: 49, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !58, line: 658, column: 29)
!1393 = distinct !DILexicalBlock(scope: !1129, file: !58, line: 658, column: 29)
!1394 = !DILocation(line: 659, column: 39, scope: !1392)
!1395 = !DILocation(line: 659, column: 31, scope: !1392)
!1396 = !DILocation(line: 658, column: 53, scope: !1392)
!1397 = !DILocation(line: 658, column: 43, scope: !1392)
!1398 = !DILocation(line: 658, column: 29, scope: !1393)
!1399 = distinct !{!1399, !1398, !1400, !640}
!1400 = !DILocation(line: 667, column: 33, scope: !1393)
!1401 = !DILocation(line: 674, column: 19, scope: !1109)
!1402 = !DILocation(line: 670, column: 41, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1131, file: !58, line: 670, column: 29)
!1404 = !DILocation(line: 670, column: 31, scope: !1403)
!1405 = !DILocation(line: 670, column: 29, scope: !1131)
!1406 = !DILocation(line: 672, column: 27, scope: !1131)
!1407 = !DILocation(line: 675, column: 26, scope: !1109)
!1408 = !DILocation(line: 675, column: 24, scope: !1109)
!1409 = !DILocation(line: 674, column: 19, scope: !1125)
!1410 = distinct !{!1410, !1371, !1411, !640}
!1411 = !DILocation(line: 675, column: 44, scope: !1109)
!1412 = !DILocation(line: 676, column: 15, scope: !1110)
!1413 = !DILocation(line: 680, column: 19, scope: !1137)
!1414 = !DILocation(line: 680, column: 45, scope: !1137)
!1415 = !DILocation(line: 684, column: 33, scope: !1136)
!1416 = !DILocation(line: 0, scope: !1136)
!1417 = !DILocation(line: 686, column: 17, scope: !1136)
!1418 = !DILocation(line: 405, column: 12, scope: !1097)
!1419 = !DILocation(line: 688, column: 43, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !58, line: 688, column: 25)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !58, line: 687, column: 19)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !58, line: 686, column: 17)
!1423 = distinct !DILexicalBlock(scope: !1136, file: !58, line: 686, column: 17)
!1424 = !DILocation(line: 690, column: 25, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !58, line: 690, column: 25)
!1426 = distinct !DILexicalBlock(scope: !1420, file: !58, line: 689, column: 23)
!1427 = !DILocation(line: 690, column: 25, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1425, file: !58, line: 690, column: 25)
!1429 = !DILocation(line: 690, column: 25, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !58, line: 690, column: 25)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !58, line: 690, column: 25)
!1432 = distinct !DILexicalBlock(scope: !1428, file: !58, line: 690, column: 25)
!1433 = !DILocation(line: 690, column: 25, scope: !1431)
!1434 = !DILocation(line: 690, column: 25, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !58, line: 690, column: 25)
!1436 = distinct !DILexicalBlock(scope: !1432, file: !58, line: 690, column: 25)
!1437 = !DILocation(line: 690, column: 25, scope: !1436)
!1438 = !DILocation(line: 690, column: 25, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !58, line: 690, column: 25)
!1440 = distinct !DILexicalBlock(scope: !1432, file: !58, line: 690, column: 25)
!1441 = !DILocation(line: 690, column: 25, scope: !1440)
!1442 = !DILocation(line: 690, column: 25, scope: !1432)
!1443 = !DILocation(line: 690, column: 25, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !58, line: 690, column: 25)
!1445 = distinct !DILexicalBlock(scope: !1425, file: !58, line: 690, column: 25)
!1446 = !DILocation(line: 690, column: 25, scope: !1445)
!1447 = !DILocation(line: 691, column: 25, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !58, line: 691, column: 25)
!1449 = distinct !DILexicalBlock(scope: !1426, file: !58, line: 691, column: 25)
!1450 = !DILocation(line: 691, column: 25, scope: !1449)
!1451 = !DILocation(line: 692, column: 25, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !58, line: 692, column: 25)
!1453 = distinct !DILexicalBlock(scope: !1426, file: !58, line: 692, column: 25)
!1454 = !DILocation(line: 692, column: 25, scope: !1453)
!1455 = !DILocation(line: 693, column: 38, scope: !1426)
!1456 = !DILocation(line: 693, column: 33, scope: !1426)
!1457 = !DILocation(line: 694, column: 23, scope: !1426)
!1458 = !DILocation(line: 695, column: 30, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1420, file: !58, line: 695, column: 30)
!1460 = !DILocation(line: 695, column: 30, scope: !1420)
!1461 = !DILocation(line: 697, column: 25, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !58, line: 697, column: 25)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !58, line: 697, column: 25)
!1464 = distinct !DILexicalBlock(scope: !1459, file: !58, line: 696, column: 23)
!1465 = !DILocation(line: 697, column: 25, scope: !1463)
!1466 = !DILocation(line: 699, column: 23, scope: !1464)
!1467 = !DILocation(line: 700, column: 35, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1421, file: !58, line: 700, column: 25)
!1469 = !DILocation(line: 700, column: 30, scope: !1468)
!1470 = !DILocation(line: 700, column: 25, scope: !1421)
!1471 = !DILocation(line: 702, column: 21, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !58, line: 702, column: 21)
!1473 = distinct !DILexicalBlock(scope: !1421, file: !58, line: 702, column: 21)
!1474 = !DILocation(line: 702, column: 21, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !58, line: 702, column: 21)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !58, line: 702, column: 21)
!1477 = distinct !DILexicalBlock(scope: !1472, file: !58, line: 702, column: 21)
!1478 = !DILocation(line: 702, column: 21, scope: !1476)
!1479 = !DILocation(line: 702, column: 21, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !58, line: 702, column: 21)
!1481 = distinct !DILexicalBlock(scope: !1477, file: !58, line: 702, column: 21)
!1482 = !DILocation(line: 702, column: 21, scope: !1481)
!1483 = !DILocation(line: 702, column: 21, scope: !1477)
!1484 = !DILocation(line: 0, scope: !1421)
!1485 = !DILocation(line: 703, column: 21, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !58, line: 703, column: 21)
!1487 = distinct !DILexicalBlock(scope: !1421, file: !58, line: 703, column: 21)
!1488 = !DILocation(line: 703, column: 21, scope: !1487)
!1489 = !DILocation(line: 704, column: 25, scope: !1421)
!1490 = !DILocation(line: 686, column: 17, scope: !1422)
!1491 = distinct !{!1491, !1492, !1493}
!1492 = !DILocation(line: 686, column: 17, scope: !1423)
!1493 = !DILocation(line: 705, column: 19, scope: !1423)
!1494 = !DILocation(line: 416, column: 30, scope: !1213)
!1495 = !DILocation(line: 712, column: 34, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1097, file: !58, line: 712, column: 11)
!1497 = !DILocation(line: 715, column: 35, scope: !1496)
!1498 = !DILocation(line: 715, column: 17, scope: !1496)
!1499 = !DILocation(line: 715, column: 47, scope: !1496)
!1500 = !DILocation(line: 715, column: 65, scope: !1496)
!1501 = !DILocation(line: 716, column: 11, scope: !1496)
!1502 = !DILocation(line: 712, column: 11, scope: !1097)
!1503 = !DILocation(line: 400, column: 10, scope: !1099)
!1504 = !DILocation(line: 719, column: 5, scope: !1097)
!1505 = !DILocation(line: 720, column: 7, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1097, file: !58, line: 720, column: 7)
!1507 = !DILocation(line: 720, column: 7, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1506, file: !58, line: 720, column: 7)
!1509 = !DILocation(line: 720, column: 7, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !58, line: 720, column: 7)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !58, line: 720, column: 7)
!1512 = distinct !DILexicalBlock(scope: !1508, file: !58, line: 720, column: 7)
!1513 = !DILocation(line: 720, column: 7, scope: !1511)
!1514 = !DILocation(line: 720, column: 7, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !58, line: 720, column: 7)
!1516 = distinct !DILexicalBlock(scope: !1512, file: !58, line: 720, column: 7)
!1517 = !DILocation(line: 720, column: 7, scope: !1516)
!1518 = !DILocation(line: 720, column: 7, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !58, line: 720, column: 7)
!1520 = distinct !DILexicalBlock(scope: !1512, file: !58, line: 720, column: 7)
!1521 = !DILocation(line: 720, column: 7, scope: !1520)
!1522 = !DILocation(line: 720, column: 7, scope: !1512)
!1523 = !DILocation(line: 720, column: 7, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !58, line: 720, column: 7)
!1525 = distinct !DILexicalBlock(scope: !1506, file: !58, line: 720, column: 7)
!1526 = !DILocation(line: 720, column: 7, scope: !1525)
!1527 = !DILocation(line: 722, column: 5, scope: !1097)
!1528 = !DILocation(line: 723, column: 7, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !58, line: 723, column: 7)
!1530 = distinct !DILexicalBlock(scope: !1097, file: !58, line: 723, column: 7)
!1531 = !DILocation(line: 424, column: 9, scope: !1097)
!1532 = !DILocation(line: 723, column: 7, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !58, line: 723, column: 7)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !58, line: 723, column: 7)
!1535 = distinct !DILexicalBlock(scope: !1529, file: !58, line: 723, column: 7)
!1536 = !DILocation(line: 723, column: 7, scope: !1534)
!1537 = !DILocation(line: 723, column: 7, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !58, line: 723, column: 7)
!1539 = distinct !DILexicalBlock(scope: !1535, file: !58, line: 723, column: 7)
!1540 = !DILocation(line: 723, column: 7, scope: !1539)
!1541 = !DILocation(line: 723, column: 7, scope: !1535)
!1542 = !DILocation(line: 724, column: 7, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !58, line: 724, column: 7)
!1544 = distinct !DILexicalBlock(scope: !1097, file: !58, line: 724, column: 7)
!1545 = !DILocation(line: 724, column: 7, scope: !1544)
!1546 = !DILocation(line: 726, column: 13, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1097, file: !58, line: 726, column: 11)
!1548 = !DILocation(line: 726, column: 11, scope: !1097)
!1549 = !DILocation(line: 728, column: 5, scope: !1098)
!1550 = !DILocation(line: 400, column: 75, scope: !1098)
!1551 = !DILocation(line: 400, column: 3, scope: !1098)
!1552 = distinct !{!1552, !1209, !1553, !640}
!1553 = !DILocation(line: 728, column: 5, scope: !1099)
!1554 = !DILocation(line: 730, column: 11, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1070, file: !58, line: 730, column: 7)
!1556 = !DILocation(line: 730, column: 16, scope: !1555)
!1557 = !DILocation(line: 738, column: 51, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1070, file: !58, line: 738, column: 7)
!1559 = !DILocation(line: 741, column: 11, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !58, line: 741, column: 11)
!1561 = distinct !DILexicalBlock(scope: !1558, file: !58, line: 740, column: 5)
!1562 = !DILocation(line: 741, column: 11, scope: !1561)
!1563 = !DILocation(line: 742, column: 16, scope: !1560)
!1564 = !DILocation(line: 742, column: 9, scope: !1560)
!1565 = !DILocation(line: 746, column: 18, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1560, file: !58, line: 746, column: 16)
!1567 = !DILocation(line: 746, column: 29, scope: !1566)
!1568 = !DILocation(line: 755, column: 7, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1070, file: !58, line: 755, column: 7)
!1570 = !DILocation(line: 755, column: 20, scope: !1569)
!1571 = !DILocation(line: 756, column: 12, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !58, line: 756, column: 5)
!1573 = distinct !DILexicalBlock(scope: !1569, file: !58, line: 756, column: 5)
!1574 = !DILocation(line: 756, column: 5, scope: !1573)
!1575 = !DILocation(line: 757, column: 7, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !58, line: 757, column: 7)
!1577 = distinct !DILexicalBlock(scope: !1572, file: !58, line: 757, column: 7)
!1578 = !DILocation(line: 757, column: 7, scope: !1577)
!1579 = !DILocation(line: 756, column: 39, scope: !1572)
!1580 = distinct !{!1580, !1574, !1581, !640}
!1581 = !DILocation(line: 757, column: 7, scope: !1573)
!1582 = !DILocation(line: 759, column: 11, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1070, file: !58, line: 759, column: 7)
!1584 = !DILocation(line: 759, column: 7, scope: !1070)
!1585 = !DILocation(line: 760, column: 5, scope: !1583)
!1586 = !DILocation(line: 760, column: 17, scope: !1583)
!1587 = !DILocation(line: 763, column: 2, scope: !1070)
!1588 = !DILocation(line: 766, column: 51, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1070, file: !58, line: 766, column: 7)
!1590 = !DILocation(line: 766, column: 21, scope: !1589)
!1591 = !DILocation(line: 770, column: 42, scope: !1070)
!1592 = !DILocation(line: 768, column: 10, scope: !1070)
!1593 = !DILocation(line: 768, column: 3, scope: !1070)
!1594 = !DILocation(line: 772, column: 1, scope: !1070)
!1595 = distinct !DISubprogram(name: "gettext_quote", scope: !58, file: !58, line: 207, type: !1596, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !1598)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!20, !20, !60}
!1598 = !{!1599, !1600, !1601, !1602}
!1599 = !DILocalVariable(name: "msgid", arg: 1, scope: !1595, file: !58, line: 207, type: !20)
!1600 = !DILocalVariable(name: "s", arg: 2, scope: !1595, file: !58, line: 207, type: !60)
!1601 = !DILocalVariable(name: "translation", scope: !1595, file: !58, line: 209, type: !20)
!1602 = !DILocalVariable(name: "locale_code", scope: !1595, file: !58, line: 210, type: !20)
!1603 = !DILocation(line: 0, scope: !1595)
!1604 = !DILocation(line: 209, column: 29, scope: !1595)
!1605 = !DILocation(line: 212, column: 19, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1595, file: !58, line: 212, column: 7)
!1607 = !DILocation(line: 212, column: 7, scope: !1595)
!1608 = !DILocation(line: 233, column: 17, scope: !1595)
!1609 = !DILocalVariable(name: "s1", arg: 1, scope: !1610, file: !1611, line: 160, type: !20)
!1610 = distinct !DISubprogram(name: "strcaseeq0", scope: !1611, file: !1611, line: 160, type: !1612, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !1614)
!1611 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!23, !20, !20, !11, !11, !11, !11, !11, !11, !11, !11, !11}
!1614 = !{!1609, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624}
!1615 = !DILocalVariable(name: "s2", arg: 2, scope: !1610, file: !1611, line: 160, type: !20)
!1616 = !DILocalVariable(name: "s20", arg: 3, scope: !1610, file: !1611, line: 160, type: !11)
!1617 = !DILocalVariable(name: "s21", arg: 4, scope: !1610, file: !1611, line: 160, type: !11)
!1618 = !DILocalVariable(name: "s22", arg: 5, scope: !1610, file: !1611, line: 160, type: !11)
!1619 = !DILocalVariable(name: "s23", arg: 6, scope: !1610, file: !1611, line: 160, type: !11)
!1620 = !DILocalVariable(name: "s24", arg: 7, scope: !1610, file: !1611, line: 160, type: !11)
!1621 = !DILocalVariable(name: "s25", arg: 8, scope: !1610, file: !1611, line: 160, type: !11)
!1622 = !DILocalVariable(name: "s26", arg: 9, scope: !1610, file: !1611, line: 160, type: !11)
!1623 = !DILocalVariable(name: "s27", arg: 10, scope: !1610, file: !1611, line: 160, type: !11)
!1624 = !DILocalVariable(name: "s28", arg: 11, scope: !1610, file: !1611, line: 160, type: !11)
!1625 = !DILocation(line: 0, scope: !1610, inlinedAt: !1626)
!1626 = distinct !DILocation(line: 234, column: 7, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1595, file: !58, line: 234, column: 7)
!1628 = !DILocation(line: 162, column: 7, scope: !1629, inlinedAt: !1626)
!1629 = distinct !DILexicalBlock(scope: !1610, file: !1611, line: 162, column: 7)
!1630 = !DILocalVariable(name: "s1", arg: 1, scope: !1631, file: !1611, line: 146, type: !20)
!1631 = distinct !DISubprogram(name: "strcaseeq1", scope: !1611, file: !1611, line: 146, type: !1632, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !1634)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!23, !20, !20, !11, !11, !11, !11, !11, !11, !11, !11}
!1634 = !{!1630, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643}
!1635 = !DILocalVariable(name: "s2", arg: 2, scope: !1631, file: !1611, line: 146, type: !20)
!1636 = !DILocalVariable(name: "s21", arg: 3, scope: !1631, file: !1611, line: 146, type: !11)
!1637 = !DILocalVariable(name: "s22", arg: 4, scope: !1631, file: !1611, line: 146, type: !11)
!1638 = !DILocalVariable(name: "s23", arg: 5, scope: !1631, file: !1611, line: 146, type: !11)
!1639 = !DILocalVariable(name: "s24", arg: 6, scope: !1631, file: !1611, line: 146, type: !11)
!1640 = !DILocalVariable(name: "s25", arg: 7, scope: !1631, file: !1611, line: 146, type: !11)
!1641 = !DILocalVariable(name: "s26", arg: 8, scope: !1631, file: !1611, line: 146, type: !11)
!1642 = !DILocalVariable(name: "s27", arg: 9, scope: !1631, file: !1611, line: 146, type: !11)
!1643 = !DILocalVariable(name: "s28", arg: 10, scope: !1631, file: !1611, line: 146, type: !11)
!1644 = !DILocation(line: 0, scope: !1631, inlinedAt: !1645)
!1645 = distinct !DILocation(line: 167, column: 16, scope: !1646, inlinedAt: !1626)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !1611, line: 164, column: 11)
!1647 = distinct !DILexicalBlock(scope: !1629, file: !1611, line: 163, column: 5)
!1648 = !DILocation(line: 148, column: 7, scope: !1649, inlinedAt: !1645)
!1649 = distinct !DILexicalBlock(scope: !1631, file: !1611, line: 148, column: 7)
!1650 = !DILocalVariable(name: "s1", arg: 1, scope: !1651, file: !1611, line: 132, type: !20)
!1651 = distinct !DISubprogram(name: "strcaseeq2", scope: !1611, file: !1611, line: 132, type: !1652, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !1654)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!23, !20, !20, !11, !11, !11, !11, !11, !11, !11}
!1654 = !{!1650, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662}
!1655 = !DILocalVariable(name: "s2", arg: 2, scope: !1651, file: !1611, line: 132, type: !20)
!1656 = !DILocalVariable(name: "s22", arg: 3, scope: !1651, file: !1611, line: 132, type: !11)
!1657 = !DILocalVariable(name: "s23", arg: 4, scope: !1651, file: !1611, line: 132, type: !11)
!1658 = !DILocalVariable(name: "s24", arg: 5, scope: !1651, file: !1611, line: 132, type: !11)
!1659 = !DILocalVariable(name: "s25", arg: 6, scope: !1651, file: !1611, line: 132, type: !11)
!1660 = !DILocalVariable(name: "s26", arg: 7, scope: !1651, file: !1611, line: 132, type: !11)
!1661 = !DILocalVariable(name: "s27", arg: 8, scope: !1651, file: !1611, line: 132, type: !11)
!1662 = !DILocalVariable(name: "s28", arg: 9, scope: !1651, file: !1611, line: 132, type: !11)
!1663 = !DILocation(line: 0, scope: !1651, inlinedAt: !1664)
!1664 = distinct !DILocation(line: 153, column: 16, scope: !1665, inlinedAt: !1645)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !1611, line: 150, column: 11)
!1666 = distinct !DILexicalBlock(scope: !1649, file: !1611, line: 149, column: 5)
!1667 = !DILocation(line: 134, column: 7, scope: !1668, inlinedAt: !1664)
!1668 = distinct !DILexicalBlock(scope: !1651, file: !1611, line: 134, column: 7)
!1669 = !DILocalVariable(name: "s1", arg: 1, scope: !1670, file: !1611, line: 118, type: !20)
!1670 = distinct !DISubprogram(name: "strcaseeq3", scope: !1611, file: !1611, line: 118, type: !1671, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !1673)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!23, !20, !20, !11, !11, !11, !11, !11, !11}
!1673 = !{!1669, !1674, !1675, !1676, !1677, !1678, !1679, !1680}
!1674 = !DILocalVariable(name: "s2", arg: 2, scope: !1670, file: !1611, line: 118, type: !20)
!1675 = !DILocalVariable(name: "s23", arg: 3, scope: !1670, file: !1611, line: 118, type: !11)
!1676 = !DILocalVariable(name: "s24", arg: 4, scope: !1670, file: !1611, line: 118, type: !11)
!1677 = !DILocalVariable(name: "s25", arg: 5, scope: !1670, file: !1611, line: 118, type: !11)
!1678 = !DILocalVariable(name: "s26", arg: 6, scope: !1670, file: !1611, line: 118, type: !11)
!1679 = !DILocalVariable(name: "s27", arg: 7, scope: !1670, file: !1611, line: 118, type: !11)
!1680 = !DILocalVariable(name: "s28", arg: 8, scope: !1670, file: !1611, line: 118, type: !11)
!1681 = !DILocation(line: 0, scope: !1670, inlinedAt: !1682)
!1682 = distinct !DILocation(line: 139, column: 16, scope: !1683, inlinedAt: !1664)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !1611, line: 136, column: 11)
!1684 = distinct !DILexicalBlock(scope: !1668, file: !1611, line: 135, column: 5)
!1685 = !DILocation(line: 120, column: 7, scope: !1686, inlinedAt: !1682)
!1686 = distinct !DILexicalBlock(scope: !1670, file: !1611, line: 120, column: 7)
!1687 = !DILocation(line: 120, column: 7, scope: !1670, inlinedAt: !1682)
!1688 = !DILocalVariable(name: "s1", arg: 1, scope: !1689, file: !1611, line: 104, type: !20)
!1689 = distinct !DISubprogram(name: "strcaseeq4", scope: !1611, file: !1611, line: 104, type: !1690, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !1692)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!23, !20, !20, !11, !11, !11, !11, !11}
!1692 = !{!1688, !1693, !1694, !1695, !1696, !1697, !1698}
!1693 = !DILocalVariable(name: "s2", arg: 2, scope: !1689, file: !1611, line: 104, type: !20)
!1694 = !DILocalVariable(name: "s24", arg: 3, scope: !1689, file: !1611, line: 104, type: !11)
!1695 = !DILocalVariable(name: "s25", arg: 4, scope: !1689, file: !1611, line: 104, type: !11)
!1696 = !DILocalVariable(name: "s26", arg: 5, scope: !1689, file: !1611, line: 104, type: !11)
!1697 = !DILocalVariable(name: "s27", arg: 6, scope: !1689, file: !1611, line: 104, type: !11)
!1698 = !DILocalVariable(name: "s28", arg: 7, scope: !1689, file: !1611, line: 104, type: !11)
!1699 = !DILocation(line: 0, scope: !1689, inlinedAt: !1700)
!1700 = distinct !DILocation(line: 125, column: 16, scope: !1701, inlinedAt: !1682)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !1611, line: 122, column: 11)
!1702 = distinct !DILexicalBlock(scope: !1686, file: !1611, line: 121, column: 5)
!1703 = !DILocation(line: 106, column: 7, scope: !1704, inlinedAt: !1700)
!1704 = distinct !DILexicalBlock(scope: !1689, file: !1611, line: 106, column: 7)
!1705 = !DILocation(line: 106, column: 7, scope: !1689, inlinedAt: !1700)
!1706 = !DILocalVariable(name: "s1", arg: 1, scope: !1707, file: !1611, line: 90, type: !20)
!1707 = distinct !DISubprogram(name: "strcaseeq5", scope: !1611, file: !1611, line: 90, type: !1708, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !1710)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!23, !20, !20, !11, !11, !11, !11}
!1710 = !{!1706, !1711, !1712, !1713, !1714, !1715}
!1711 = !DILocalVariable(name: "s2", arg: 2, scope: !1707, file: !1611, line: 90, type: !20)
!1712 = !DILocalVariable(name: "s25", arg: 3, scope: !1707, file: !1611, line: 90, type: !11)
!1713 = !DILocalVariable(name: "s26", arg: 4, scope: !1707, file: !1611, line: 90, type: !11)
!1714 = !DILocalVariable(name: "s27", arg: 5, scope: !1707, file: !1611, line: 90, type: !11)
!1715 = !DILocalVariable(name: "s28", arg: 6, scope: !1707, file: !1611, line: 90, type: !11)
!1716 = !DILocation(line: 0, scope: !1707, inlinedAt: !1717)
!1717 = distinct !DILocation(line: 111, column: 16, scope: !1718, inlinedAt: !1700)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !1611, line: 108, column: 11)
!1719 = distinct !DILexicalBlock(scope: !1704, file: !1611, line: 107, column: 5)
!1720 = !DILocation(line: 92, column: 7, scope: !1721, inlinedAt: !1717)
!1721 = distinct !DILexicalBlock(scope: !1707, file: !1611, line: 92, column: 7)
!1722 = !DILocation(line: 92, column: 7, scope: !1707, inlinedAt: !1717)
!1723 = !DILocation(line: 235, column: 12, scope: !1627)
!1724 = !DILocation(line: 235, column: 21, scope: !1627)
!1725 = !DILocation(line: 235, column: 5, scope: !1627)
!1726 = !DILocation(line: 0, scope: !1631, inlinedAt: !1727)
!1727 = distinct !DILocation(line: 167, column: 16, scope: !1646, inlinedAt: !1728)
!1728 = distinct !DILocation(line: 236, column: 7, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1595, file: !58, line: 236, column: 7)
!1730 = !DILocation(line: 148, column: 7, scope: !1649, inlinedAt: !1727)
!1731 = !DILocation(line: 0, scope: !1651, inlinedAt: !1732)
!1732 = distinct !DILocation(line: 153, column: 16, scope: !1665, inlinedAt: !1727)
!1733 = !DILocation(line: 134, column: 7, scope: !1668, inlinedAt: !1732)
!1734 = !DILocation(line: 134, column: 7, scope: !1651, inlinedAt: !1732)
!1735 = !DILocation(line: 0, scope: !1670, inlinedAt: !1736)
!1736 = distinct !DILocation(line: 139, column: 16, scope: !1683, inlinedAt: !1732)
!1737 = !DILocation(line: 120, column: 7, scope: !1686, inlinedAt: !1736)
!1738 = !DILocation(line: 120, column: 7, scope: !1670, inlinedAt: !1736)
!1739 = !DILocation(line: 0, scope: !1689, inlinedAt: !1740)
!1740 = distinct !DILocation(line: 125, column: 16, scope: !1701, inlinedAt: !1736)
!1741 = !DILocation(line: 106, column: 7, scope: !1704, inlinedAt: !1740)
!1742 = !DILocation(line: 106, column: 7, scope: !1689, inlinedAt: !1740)
!1743 = !DILocation(line: 0, scope: !1707, inlinedAt: !1744)
!1744 = distinct !DILocation(line: 111, column: 16, scope: !1718, inlinedAt: !1740)
!1745 = !DILocation(line: 92, column: 7, scope: !1721, inlinedAt: !1744)
!1746 = !DILocation(line: 92, column: 7, scope: !1707, inlinedAt: !1744)
!1747 = !DILocalVariable(name: "s1", arg: 1, scope: !1748, file: !1611, line: 76, type: !20)
!1748 = distinct !DISubprogram(name: "strcaseeq6", scope: !1611, file: !1611, line: 76, type: !1749, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !1751)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!23, !20, !20, !11, !11, !11}
!1751 = !{!1747, !1752, !1753, !1754, !1755}
!1752 = !DILocalVariable(name: "s2", arg: 2, scope: !1748, file: !1611, line: 76, type: !20)
!1753 = !DILocalVariable(name: "s26", arg: 3, scope: !1748, file: !1611, line: 76, type: !11)
!1754 = !DILocalVariable(name: "s27", arg: 4, scope: !1748, file: !1611, line: 76, type: !11)
!1755 = !DILocalVariable(name: "s28", arg: 5, scope: !1748, file: !1611, line: 76, type: !11)
!1756 = !DILocation(line: 0, scope: !1748, inlinedAt: !1757)
!1757 = distinct !DILocation(line: 97, column: 16, scope: !1758, inlinedAt: !1744)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !1611, line: 94, column: 11)
!1759 = distinct !DILexicalBlock(scope: !1721, file: !1611, line: 93, column: 5)
!1760 = !DILocation(line: 78, column: 7, scope: !1761, inlinedAt: !1757)
!1761 = distinct !DILexicalBlock(scope: !1748, file: !1611, line: 78, column: 7)
!1762 = !DILocation(line: 78, column: 7, scope: !1748, inlinedAt: !1757)
!1763 = !DILocalVariable(name: "s1", arg: 1, scope: !1764, file: !1611, line: 62, type: !20)
!1764 = distinct !DISubprogram(name: "strcaseeq7", scope: !1611, file: !1611, line: 62, type: !1765, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !1767)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!23, !20, !20, !11, !11}
!1767 = !{!1763, !1768, !1769, !1770}
!1768 = !DILocalVariable(name: "s2", arg: 2, scope: !1764, file: !1611, line: 62, type: !20)
!1769 = !DILocalVariable(name: "s27", arg: 3, scope: !1764, file: !1611, line: 62, type: !11)
!1770 = !DILocalVariable(name: "s28", arg: 4, scope: !1764, file: !1611, line: 62, type: !11)
!1771 = !DILocation(line: 0, scope: !1764, inlinedAt: !1772)
!1772 = distinct !DILocation(line: 83, column: 16, scope: !1773, inlinedAt: !1757)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !1611, line: 80, column: 11)
!1774 = distinct !DILexicalBlock(scope: !1761, file: !1611, line: 79, column: 5)
!1775 = !DILocation(line: 64, column: 7, scope: !1776, inlinedAt: !1772)
!1776 = distinct !DILexicalBlock(scope: !1764, file: !1611, line: 64, column: 7)
!1777 = !DILocation(line: 236, column: 7, scope: !1595)
!1778 = !DILocation(line: 237, column: 12, scope: !1729)
!1779 = !DILocation(line: 237, column: 21, scope: !1729)
!1780 = !DILocation(line: 237, column: 5, scope: !1729)
!1781 = !DILocation(line: 239, column: 13, scope: !1595)
!1782 = !DILocation(line: 239, column: 11, scope: !1595)
!1783 = !DILocation(line: 239, column: 3, scope: !1595)
!1784 = !DILocation(line: 240, column: 1, scope: !1595)
!1785 = !DISubprogram(name: "iswprint", scope: !1786, file: !1786, line: 120, type: !1787, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !33)
!1786 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!23, !6}
!1789 = !DISubprogram(name: "mbsinit", scope: !1790, file: !1790, line: 292, type: !1791, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !33)
!1790 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!23, !1793}
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1115)
!1795 = distinct !DISubprogram(name: "quotearg_alloc", scope: !58, file: !58, line: 799, type: !1796, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !1798)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!10, !20, !96, !961}
!1798 = !{!1799, !1800, !1801}
!1799 = !DILocalVariable(name: "arg", arg: 1, scope: !1795, file: !58, line: 799, type: !20)
!1800 = !DILocalVariable(name: "argsize", arg: 2, scope: !1795, file: !58, line: 799, type: !96)
!1801 = !DILocalVariable(name: "o", arg: 3, scope: !1795, file: !58, line: 800, type: !961)
!1802 = !DILocation(line: 0, scope: !1795)
!1803 = !DILocalVariable(name: "arg", arg: 1, scope: !1804, file: !58, line: 812, type: !20)
!1804 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !58, file: !58, line: 812, type: !1805, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !1807)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{!10, !20, !96, !163, !961}
!1807 = !{!1803, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815}
!1808 = !DILocalVariable(name: "argsize", arg: 2, scope: !1804, file: !58, line: 812, type: !96)
!1809 = !DILocalVariable(name: "size", arg: 3, scope: !1804, file: !58, line: 812, type: !163)
!1810 = !DILocalVariable(name: "o", arg: 4, scope: !1804, file: !58, line: 813, type: !961)
!1811 = !DILocalVariable(name: "p", scope: !1804, file: !58, line: 815, type: !961)
!1812 = !DILocalVariable(name: "e", scope: !1804, file: !58, line: 816, type: !23)
!1813 = !DILocalVariable(name: "flags", scope: !1804, file: !58, line: 818, type: !23)
!1814 = !DILocalVariable(name: "bufsize", scope: !1804, file: !58, line: 819, type: !96)
!1815 = !DILocalVariable(name: "buf", scope: !1804, file: !58, line: 823, type: !10)
!1816 = !DILocation(line: 0, scope: !1804, inlinedAt: !1817)
!1817 = distinct !DILocation(line: 802, column: 10, scope: !1795)
!1818 = !DILocation(line: 815, column: 37, scope: !1804, inlinedAt: !1817)
!1819 = !DILocation(line: 816, column: 11, scope: !1804, inlinedAt: !1817)
!1820 = !DILocation(line: 818, column: 18, scope: !1804, inlinedAt: !1817)
!1821 = !DILocation(line: 818, column: 24, scope: !1804, inlinedAt: !1817)
!1822 = !DILocation(line: 819, column: 69, scope: !1804, inlinedAt: !1817)
!1823 = !DILocation(line: 820, column: 53, scope: !1804, inlinedAt: !1817)
!1824 = !DILocation(line: 821, column: 49, scope: !1804, inlinedAt: !1817)
!1825 = !DILocation(line: 822, column: 49, scope: !1804, inlinedAt: !1817)
!1826 = !DILocation(line: 819, column: 20, scope: !1804, inlinedAt: !1817)
!1827 = !DILocation(line: 822, column: 62, scope: !1804, inlinedAt: !1817)
!1828 = !DILocalVariable(name: "n", arg: 1, scope: !1829, file: !159, line: 216, type: !96)
!1829 = distinct !DISubprogram(name: "xcharalloc", scope: !159, file: !159, line: 216, type: !1830, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !1832)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!10, !96}
!1832 = !{!1828}
!1833 = !DILocation(line: 0, scope: !1829, inlinedAt: !1834)
!1834 = distinct !DILocation(line: 823, column: 15, scope: !1804, inlinedAt: !1817)
!1835 = !DILocation(line: 218, column: 10, scope: !1829, inlinedAt: !1834)
!1836 = !DILocation(line: 824, column: 60, scope: !1804, inlinedAt: !1817)
!1837 = !DILocation(line: 826, column: 32, scope: !1804, inlinedAt: !1817)
!1838 = !DILocation(line: 826, column: 47, scope: !1804, inlinedAt: !1817)
!1839 = !DILocation(line: 824, column: 3, scope: !1804, inlinedAt: !1817)
!1840 = !DILocation(line: 827, column: 9, scope: !1804, inlinedAt: !1817)
!1841 = !DILocation(line: 802, column: 3, scope: !1795)
!1842 = !DILocation(line: 0, scope: !1804)
!1843 = !DILocation(line: 815, column: 37, scope: !1804)
!1844 = !DILocation(line: 816, column: 11, scope: !1804)
!1845 = !DILocation(line: 818, column: 18, scope: !1804)
!1846 = !DILocation(line: 818, column: 27, scope: !1804)
!1847 = !DILocation(line: 818, column: 24, scope: !1804)
!1848 = !DILocation(line: 819, column: 69, scope: !1804)
!1849 = !DILocation(line: 820, column: 53, scope: !1804)
!1850 = !DILocation(line: 821, column: 49, scope: !1804)
!1851 = !DILocation(line: 822, column: 49, scope: !1804)
!1852 = !DILocation(line: 819, column: 20, scope: !1804)
!1853 = !DILocation(line: 822, column: 62, scope: !1804)
!1854 = !DILocation(line: 0, scope: !1829, inlinedAt: !1855)
!1855 = distinct !DILocation(line: 823, column: 15, scope: !1804)
!1856 = !DILocation(line: 218, column: 10, scope: !1829, inlinedAt: !1855)
!1857 = !DILocation(line: 824, column: 60, scope: !1804)
!1858 = !DILocation(line: 826, column: 32, scope: !1804)
!1859 = !DILocation(line: 826, column: 47, scope: !1804)
!1860 = !DILocation(line: 824, column: 3, scope: !1804)
!1861 = !DILocation(line: 827, column: 9, scope: !1804)
!1862 = !DILocation(line: 828, column: 7, scope: !1804)
!1863 = !DILocation(line: 829, column: 11, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1804, file: !58, line: 828, column: 7)
!1865 = !{!1866, !1866, i64 0}
!1866 = !{!"long", !599, i64 0}
!1867 = !DILocation(line: 829, column: 5, scope: !1864)
!1868 = !DILocation(line: 830, column: 3, scope: !1804)
!1869 = distinct !DISubprogram(name: "quotearg_free", scope: !58, file: !58, line: 848, type: !846, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !1870)
!1870 = !{!1871, !1872}
!1871 = !DILocalVariable(name: "sv", scope: !1869, file: !58, line: 850, type: !127)
!1872 = !DILocalVariable(name: "i", scope: !1869, file: !58, line: 851, type: !23)
!1873 = !DILocation(line: 850, column: 24, scope: !1869)
!1874 = !DILocation(line: 0, scope: !1869)
!1875 = !DILocation(line: 852, column: 19, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !58, line: 852, column: 3)
!1877 = distinct !DILexicalBlock(scope: !1869, file: !58, line: 852, column: 3)
!1878 = !DILocation(line: 852, column: 17, scope: !1876)
!1879 = !DILocation(line: 852, column: 3, scope: !1877)
!1880 = !DILocation(line: 853, column: 17, scope: !1876)
!1881 = !{!1882, !598, i64 8}
!1882 = !{!"slotvec", !1866, i64 0, !598, i64 8}
!1883 = !DILocation(line: 853, column: 5, scope: !1876)
!1884 = !DILocation(line: 852, column: 28, scope: !1876)
!1885 = distinct !{!1885, !1879, !1886, !640}
!1886 = !DILocation(line: 853, column: 20, scope: !1877)
!1887 = !DILocation(line: 854, column: 13, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1869, file: !58, line: 854, column: 7)
!1889 = !DILocation(line: 854, column: 17, scope: !1888)
!1890 = !DILocation(line: 854, column: 7, scope: !1869)
!1891 = !DILocation(line: 856, column: 7, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1888, file: !58, line: 855, column: 5)
!1893 = !DILocation(line: 857, column: 21, scope: !1892)
!1894 = !{!1882, !1866, i64 0}
!1895 = !DILocation(line: 858, column: 20, scope: !1892)
!1896 = !DILocation(line: 859, column: 5, scope: !1892)
!1897 = !DILocation(line: 860, column: 10, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1869, file: !58, line: 860, column: 7)
!1899 = !DILocation(line: 860, column: 7, scope: !1869)
!1900 = !DILocation(line: 862, column: 13, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1898, file: !58, line: 861, column: 5)
!1902 = !DILocation(line: 862, column: 7, scope: !1901)
!1903 = !DILocation(line: 863, column: 15, scope: !1901)
!1904 = !DILocation(line: 864, column: 5, scope: !1901)
!1905 = !DILocation(line: 865, column: 10, scope: !1869)
!1906 = !DILocation(line: 866, column: 1, scope: !1869)
!1907 = distinct !DISubprogram(name: "quotearg_n", scope: !58, file: !58, line: 931, type: !722, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !1908)
!1908 = !{!1909, !1910}
!1909 = !DILocalVariable(name: "n", arg: 1, scope: !1907, file: !58, line: 931, type: !23)
!1910 = !DILocalVariable(name: "arg", arg: 2, scope: !1907, file: !58, line: 931, type: !20)
!1911 = !DILocation(line: 0, scope: !1907)
!1912 = !DILocation(line: 933, column: 10, scope: !1907)
!1913 = !DILocation(line: 933, column: 3, scope: !1907)
!1914 = distinct !DISubprogram(name: "quotearg_n_options", scope: !58, file: !58, line: 877, type: !1915, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !1917)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!10, !23, !20, !96, !961}
!1917 = !{!1918, !1919, !1920, !1921, !1922, !1923, !1924, !1927, !1928, !1930, !1931, !1932}
!1918 = !DILocalVariable(name: "n", arg: 1, scope: !1914, file: !58, line: 877, type: !23)
!1919 = !DILocalVariable(name: "arg", arg: 2, scope: !1914, file: !58, line: 877, type: !20)
!1920 = !DILocalVariable(name: "argsize", arg: 3, scope: !1914, file: !58, line: 877, type: !96)
!1921 = !DILocalVariable(name: "options", arg: 4, scope: !1914, file: !58, line: 878, type: !961)
!1922 = !DILocalVariable(name: "e", scope: !1914, file: !58, line: 880, type: !23)
!1923 = !DILocalVariable(name: "sv", scope: !1914, file: !58, line: 882, type: !127)
!1924 = !DILocalVariable(name: "preallocated", scope: !1925, file: !58, line: 889, type: !42)
!1925 = distinct !DILexicalBlock(scope: !1926, file: !58, line: 888, column: 5)
!1926 = distinct !DILexicalBlock(scope: !1914, file: !58, line: 887, column: 7)
!1927 = !DILocalVariable(name: "nmax", scope: !1925, file: !58, line: 890, type: !23)
!1928 = !DILocalVariable(name: "size", scope: !1929, file: !58, line: 903, type: !96)
!1929 = distinct !DILexicalBlock(scope: !1914, file: !58, line: 902, column: 3)
!1930 = !DILocalVariable(name: "val", scope: !1929, file: !58, line: 904, type: !10)
!1931 = !DILocalVariable(name: "flags", scope: !1929, file: !58, line: 906, type: !23)
!1932 = !DILocalVariable(name: "qsize", scope: !1929, file: !58, line: 907, type: !96)
!1933 = !DILocation(line: 0, scope: !1914)
!1934 = !DILocation(line: 880, column: 11, scope: !1914)
!1935 = !DILocation(line: 882, column: 24, scope: !1914)
!1936 = !DILocation(line: 884, column: 9, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1914, file: !58, line: 884, column: 7)
!1938 = !DILocation(line: 884, column: 7, scope: !1914)
!1939 = !DILocation(line: 885, column: 5, scope: !1937)
!1940 = !DILocation(line: 887, column: 7, scope: !1926)
!1941 = !DILocation(line: 887, column: 14, scope: !1926)
!1942 = !DILocation(line: 887, column: 7, scope: !1914)
!1943 = !DILocation(line: 889, column: 31, scope: !1925)
!1944 = !DILocation(line: 0, scope: !1925)
!1945 = !DILocation(line: 892, column: 16, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1925, file: !58, line: 892, column: 11)
!1947 = !DILocation(line: 892, column: 11, scope: !1925)
!1948 = !DILocation(line: 893, column: 9, scope: !1946)
!1949 = !DILocation(line: 895, column: 32, scope: !1925)
!1950 = !DILocation(line: 895, column: 61, scope: !1925)
!1951 = !DILocation(line: 895, column: 66, scope: !1925)
!1952 = !DILocation(line: 895, column: 22, scope: !1925)
!1953 = !DILocation(line: 895, column: 15, scope: !1925)
!1954 = !DILocation(line: 896, column: 11, scope: !1925)
!1955 = !DILocation(line: 897, column: 15, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1925, file: !58, line: 896, column: 11)
!1957 = !{i64 0, i64 8, !1865, i64 8, i64 8, !597}
!1958 = !DILocation(line: 897, column: 9, scope: !1956)
!1959 = !DILocation(line: 898, column: 20, scope: !1925)
!1960 = !DILocation(line: 898, column: 18, scope: !1925)
!1961 = !DILocation(line: 898, column: 15, scope: !1925)
!1962 = !DILocation(line: 898, column: 38, scope: !1925)
!1963 = !DILocation(line: 898, column: 31, scope: !1925)
!1964 = !DILocation(line: 898, column: 48, scope: !1925)
!1965 = !DILocation(line: 0, scope: !1356, inlinedAt: !1966)
!1966 = distinct !DILocation(line: 898, column: 7, scope: !1925)
!1967 = !DILocation(line: 59, column: 10, scope: !1356, inlinedAt: !1966)
!1968 = !DILocation(line: 899, column: 14, scope: !1925)
!1969 = !DILocation(line: 900, column: 5, scope: !1925)
!1970 = !DILocation(line: 903, column: 19, scope: !1929)
!1971 = !DILocation(line: 903, column: 25, scope: !1929)
!1972 = !DILocation(line: 0, scope: !1929)
!1973 = !DILocation(line: 904, column: 23, scope: !1929)
!1974 = !DILocation(line: 906, column: 26, scope: !1929)
!1975 = !DILocation(line: 906, column: 32, scope: !1929)
!1976 = !DILocation(line: 908, column: 55, scope: !1929)
!1977 = !DILocation(line: 909, column: 46, scope: !1929)
!1978 = !DILocation(line: 910, column: 55, scope: !1929)
!1979 = !DILocation(line: 911, column: 55, scope: !1929)
!1980 = !DILocation(line: 907, column: 20, scope: !1929)
!1981 = !DILocation(line: 913, column: 14, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1929, file: !58, line: 913, column: 9)
!1983 = !DILocation(line: 913, column: 9, scope: !1929)
!1984 = !DILocation(line: 915, column: 35, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1982, file: !58, line: 914, column: 7)
!1986 = !DILocation(line: 915, column: 20, scope: !1985)
!1987 = !DILocation(line: 916, column: 17, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1985, file: !58, line: 916, column: 13)
!1989 = !DILocation(line: 916, column: 13, scope: !1985)
!1990 = !DILocation(line: 917, column: 11, scope: !1988)
!1991 = !DILocation(line: 0, scope: !1829, inlinedAt: !1992)
!1992 = distinct !DILocation(line: 918, column: 27, scope: !1985)
!1993 = !DILocation(line: 218, column: 10, scope: !1829, inlinedAt: !1992)
!1994 = !DILocation(line: 918, column: 19, scope: !1985)
!1995 = !DILocation(line: 919, column: 69, scope: !1985)
!1996 = !DILocation(line: 921, column: 44, scope: !1985)
!1997 = !DILocation(line: 922, column: 44, scope: !1985)
!1998 = !DILocation(line: 919, column: 9, scope: !1985)
!1999 = !DILocation(line: 923, column: 7, scope: !1985)
!2000 = !DILocation(line: 925, column: 11, scope: !1929)
!2001 = !DILocation(line: 926, column: 5, scope: !1929)
!2002 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !58, file: !58, line: 937, type: !2003, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2005)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!10, !23, !20, !96}
!2005 = !{!2006, !2007, !2008}
!2006 = !DILocalVariable(name: "n", arg: 1, scope: !2002, file: !58, line: 937, type: !23)
!2007 = !DILocalVariable(name: "arg", arg: 2, scope: !2002, file: !58, line: 937, type: !20)
!2008 = !DILocalVariable(name: "argsize", arg: 3, scope: !2002, file: !58, line: 937, type: !96)
!2009 = !DILocation(line: 0, scope: !2002)
!2010 = !DILocation(line: 939, column: 10, scope: !2002)
!2011 = !DILocation(line: 939, column: 3, scope: !2002)
!2012 = distinct !DISubprogram(name: "quotearg", scope: !58, file: !58, line: 943, type: !839, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2013)
!2013 = !{!2014}
!2014 = !DILocalVariable(name: "arg", arg: 1, scope: !2012, file: !58, line: 943, type: !20)
!2015 = !DILocation(line: 0, scope: !2012)
!2016 = !DILocation(line: 0, scope: !1907, inlinedAt: !2017)
!2017 = distinct !DILocation(line: 945, column: 10, scope: !2012)
!2018 = !DILocation(line: 933, column: 10, scope: !1907, inlinedAt: !2017)
!2019 = !DILocation(line: 945, column: 3, scope: !2012)
!2020 = distinct !DISubprogram(name: "quotearg_mem", scope: !58, file: !58, line: 949, type: !2021, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2023)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!10, !20, !96}
!2023 = !{!2024, !2025}
!2024 = !DILocalVariable(name: "arg", arg: 1, scope: !2020, file: !58, line: 949, type: !20)
!2025 = !DILocalVariable(name: "argsize", arg: 2, scope: !2020, file: !58, line: 949, type: !96)
!2026 = !DILocation(line: 0, scope: !2020)
!2027 = !DILocation(line: 0, scope: !2002, inlinedAt: !2028)
!2028 = distinct !DILocation(line: 951, column: 10, scope: !2020)
!2029 = !DILocation(line: 939, column: 10, scope: !2002, inlinedAt: !2028)
!2030 = !DILocation(line: 951, column: 3, scope: !2020)
!2031 = distinct !DISubprogram(name: "quotearg_n_style", scope: !58, file: !58, line: 955, type: !2032, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2034)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!10, !23, !60, !20}
!2034 = !{!2035, !2036, !2037, !2038}
!2035 = !DILocalVariable(name: "n", arg: 1, scope: !2031, file: !58, line: 955, type: !23)
!2036 = !DILocalVariable(name: "s", arg: 2, scope: !2031, file: !58, line: 955, type: !60)
!2037 = !DILocalVariable(name: "arg", arg: 3, scope: !2031, file: !58, line: 955, type: !20)
!2038 = !DILocalVariable(name: "o", scope: !2031, file: !58, line: 957, type: !962)
!2039 = !DILocation(line: 0, scope: !2031)
!2040 = !DILocation(line: 957, column: 3, scope: !2031)
!2041 = !DILocation(line: 957, column: 32, scope: !2031)
!2042 = !{!2043}
!2043 = distinct !{!2043, !2044, !"quoting_options_from_style: argument 0"}
!2044 = distinct !{!2044, !"quoting_options_from_style"}
!2045 = !DILocation(line: 957, column: 36, scope: !2031)
!2046 = !DILocalVariable(name: "style", arg: 1, scope: !2047, file: !58, line: 193, type: !60)
!2047 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !58, file: !58, line: 193, type: !2048, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2050)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!108, !60}
!2050 = !{!2046, !2051}
!2051 = !DILocalVariable(name: "o", scope: !2047, file: !58, line: 195, type: !108)
!2052 = !DILocation(line: 0, scope: !2047, inlinedAt: !2053)
!2053 = distinct !DILocation(line: 957, column: 36, scope: !2031)
!2054 = !DILocation(line: 195, column: 26, scope: !2047, inlinedAt: !2053)
!2055 = !DILocation(line: 196, column: 13, scope: !2056, inlinedAt: !2053)
!2056 = distinct !DILexicalBlock(scope: !2047, file: !58, line: 196, column: 7)
!2057 = !DILocation(line: 196, column: 7, scope: !2047, inlinedAt: !2053)
!2058 = !DILocation(line: 197, column: 5, scope: !2056, inlinedAt: !2053)
!2059 = !DILocation(line: 198, column: 5, scope: !2047, inlinedAt: !2053)
!2060 = !DILocation(line: 198, column: 11, scope: !2047, inlinedAt: !2053)
!2061 = !DILocation(line: 958, column: 10, scope: !2031)
!2062 = !DILocation(line: 959, column: 1, scope: !2031)
!2063 = !DILocation(line: 958, column: 3, scope: !2031)
!2064 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !58, file: !58, line: 962, type: !2065, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2067)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!10, !23, !60, !20, !96}
!2067 = !{!2068, !2069, !2070, !2071, !2072}
!2068 = !DILocalVariable(name: "n", arg: 1, scope: !2064, file: !58, line: 962, type: !23)
!2069 = !DILocalVariable(name: "s", arg: 2, scope: !2064, file: !58, line: 962, type: !60)
!2070 = !DILocalVariable(name: "arg", arg: 3, scope: !2064, file: !58, line: 963, type: !20)
!2071 = !DILocalVariable(name: "argsize", arg: 4, scope: !2064, file: !58, line: 963, type: !96)
!2072 = !DILocalVariable(name: "o", scope: !2064, file: !58, line: 965, type: !962)
!2073 = !DILocation(line: 0, scope: !2064)
!2074 = !DILocation(line: 965, column: 3, scope: !2064)
!2075 = !DILocation(line: 965, column: 32, scope: !2064)
!2076 = !{!2077}
!2077 = distinct !{!2077, !2078, !"quoting_options_from_style: argument 0"}
!2078 = distinct !{!2078, !"quoting_options_from_style"}
!2079 = !DILocation(line: 965, column: 36, scope: !2064)
!2080 = !DILocation(line: 0, scope: !2047, inlinedAt: !2081)
!2081 = distinct !DILocation(line: 965, column: 36, scope: !2064)
!2082 = !DILocation(line: 195, column: 26, scope: !2047, inlinedAt: !2081)
!2083 = !DILocation(line: 196, column: 13, scope: !2056, inlinedAt: !2081)
!2084 = !DILocation(line: 196, column: 7, scope: !2047, inlinedAt: !2081)
!2085 = !DILocation(line: 197, column: 5, scope: !2056, inlinedAt: !2081)
!2086 = !DILocation(line: 198, column: 5, scope: !2047, inlinedAt: !2081)
!2087 = !DILocation(line: 198, column: 11, scope: !2047, inlinedAt: !2081)
!2088 = !DILocation(line: 966, column: 10, scope: !2064)
!2089 = !DILocation(line: 967, column: 1, scope: !2064)
!2090 = !DILocation(line: 966, column: 3, scope: !2064)
!2091 = distinct !DISubprogram(name: "quotearg_style", scope: !58, file: !58, line: 970, type: !2092, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2094)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!10, !60, !20}
!2094 = !{!2095, !2096}
!2095 = !DILocalVariable(name: "s", arg: 1, scope: !2091, file: !58, line: 970, type: !60)
!2096 = !DILocalVariable(name: "arg", arg: 2, scope: !2091, file: !58, line: 970, type: !20)
!2097 = !DILocation(line: 0, scope: !2091)
!2098 = !DILocation(line: 0, scope: !2031, inlinedAt: !2099)
!2099 = distinct !DILocation(line: 972, column: 10, scope: !2091)
!2100 = !DILocation(line: 957, column: 3, scope: !2031, inlinedAt: !2099)
!2101 = !DILocation(line: 957, column: 32, scope: !2031, inlinedAt: !2099)
!2102 = !{!2103}
!2103 = distinct !{!2103, !2104, !"quoting_options_from_style: argument 0"}
!2104 = distinct !{!2104, !"quoting_options_from_style"}
!2105 = !DILocation(line: 957, column: 36, scope: !2031, inlinedAt: !2099)
!2106 = !DILocation(line: 0, scope: !2047, inlinedAt: !2107)
!2107 = distinct !DILocation(line: 957, column: 36, scope: !2031, inlinedAt: !2099)
!2108 = !DILocation(line: 195, column: 26, scope: !2047, inlinedAt: !2107)
!2109 = !DILocation(line: 196, column: 13, scope: !2056, inlinedAt: !2107)
!2110 = !DILocation(line: 196, column: 7, scope: !2047, inlinedAt: !2107)
!2111 = !DILocation(line: 197, column: 5, scope: !2056, inlinedAt: !2107)
!2112 = !DILocation(line: 198, column: 5, scope: !2047, inlinedAt: !2107)
!2113 = !DILocation(line: 198, column: 11, scope: !2047, inlinedAt: !2107)
!2114 = !DILocation(line: 958, column: 10, scope: !2031, inlinedAt: !2099)
!2115 = !DILocation(line: 959, column: 1, scope: !2031, inlinedAt: !2099)
!2116 = !DILocation(line: 972, column: 3, scope: !2091)
!2117 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !58, file: !58, line: 976, type: !2118, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2120)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!10, !60, !20, !96}
!2120 = !{!2121, !2122, !2123}
!2121 = !DILocalVariable(name: "s", arg: 1, scope: !2117, file: !58, line: 976, type: !60)
!2122 = !DILocalVariable(name: "arg", arg: 2, scope: !2117, file: !58, line: 976, type: !20)
!2123 = !DILocalVariable(name: "argsize", arg: 3, scope: !2117, file: !58, line: 976, type: !96)
!2124 = !DILocation(line: 0, scope: !2117)
!2125 = !DILocation(line: 0, scope: !2064, inlinedAt: !2126)
!2126 = distinct !DILocation(line: 978, column: 10, scope: !2117)
!2127 = !DILocation(line: 965, column: 3, scope: !2064, inlinedAt: !2126)
!2128 = !DILocation(line: 965, column: 32, scope: !2064, inlinedAt: !2126)
!2129 = !{!2130}
!2130 = distinct !{!2130, !2131, !"quoting_options_from_style: argument 0"}
!2131 = distinct !{!2131, !"quoting_options_from_style"}
!2132 = !DILocation(line: 965, column: 36, scope: !2064, inlinedAt: !2126)
!2133 = !DILocation(line: 0, scope: !2047, inlinedAt: !2134)
!2134 = distinct !DILocation(line: 965, column: 36, scope: !2064, inlinedAt: !2126)
!2135 = !DILocation(line: 195, column: 26, scope: !2047, inlinedAt: !2134)
!2136 = !DILocation(line: 196, column: 13, scope: !2056, inlinedAt: !2134)
!2137 = !DILocation(line: 196, column: 7, scope: !2047, inlinedAt: !2134)
!2138 = !DILocation(line: 197, column: 5, scope: !2056, inlinedAt: !2134)
!2139 = !DILocation(line: 198, column: 5, scope: !2047, inlinedAt: !2134)
!2140 = !DILocation(line: 198, column: 11, scope: !2047, inlinedAt: !2134)
!2141 = !DILocation(line: 966, column: 10, scope: !2064, inlinedAt: !2126)
!2142 = !DILocation(line: 967, column: 1, scope: !2064, inlinedAt: !2126)
!2143 = !DILocation(line: 978, column: 3, scope: !2117)
!2144 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !58, file: !58, line: 982, type: !2145, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2147)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!10, !20, !96, !11}
!2147 = !{!2148, !2149, !2150, !2151}
!2148 = !DILocalVariable(name: "arg", arg: 1, scope: !2144, file: !58, line: 982, type: !20)
!2149 = !DILocalVariable(name: "argsize", arg: 2, scope: !2144, file: !58, line: 982, type: !96)
!2150 = !DILocalVariable(name: "ch", arg: 3, scope: !2144, file: !58, line: 982, type: !11)
!2151 = !DILocalVariable(name: "options", scope: !2144, file: !58, line: 984, type: !108)
!2152 = !DILocation(line: 0, scope: !2144)
!2153 = !DILocation(line: 984, column: 3, scope: !2144)
!2154 = !DILocation(line: 984, column: 26, scope: !2144)
!2155 = !DILocation(line: 985, column: 13, scope: !2144)
!2156 = !{i64 0, i64 4, !799, i64 4, i64 4, !758, i64 8, i64 32, !799, i64 40, i64 8, !597, i64 48, i64 8, !597}
!2157 = !DILocation(line: 0, scope: !982, inlinedAt: !2158)
!2158 = distinct !DILocation(line: 986, column: 3, scope: !2144)
!2159 = !DILocation(line: 156, column: 62, scope: !982, inlinedAt: !2158)
!2160 = !DILocation(line: 156, column: 57, scope: !982, inlinedAt: !2158)
!2161 = !DILocation(line: 157, column: 15, scope: !982, inlinedAt: !2158)
!2162 = !DILocation(line: 158, column: 12, scope: !982, inlinedAt: !2158)
!2163 = !DILocation(line: 158, column: 15, scope: !982, inlinedAt: !2158)
!2164 = !DILocation(line: 158, column: 25, scope: !982, inlinedAt: !2158)
!2165 = !DILocation(line: 159, column: 18, scope: !982, inlinedAt: !2158)
!2166 = !DILocation(line: 159, column: 23, scope: !982, inlinedAt: !2158)
!2167 = !DILocation(line: 159, column: 6, scope: !982, inlinedAt: !2158)
!2168 = !DILocation(line: 987, column: 10, scope: !2144)
!2169 = !DILocation(line: 988, column: 1, scope: !2144)
!2170 = !DILocation(line: 987, column: 3, scope: !2144)
!2171 = distinct !DISubprogram(name: "quotearg_char", scope: !58, file: !58, line: 991, type: !2172, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2174)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!10, !20, !11}
!2174 = !{!2175, !2176}
!2175 = !DILocalVariable(name: "arg", arg: 1, scope: !2171, file: !58, line: 991, type: !20)
!2176 = !DILocalVariable(name: "ch", arg: 2, scope: !2171, file: !58, line: 991, type: !11)
!2177 = !DILocation(line: 0, scope: !2171)
!2178 = !DILocation(line: 0, scope: !2144, inlinedAt: !2179)
!2179 = distinct !DILocation(line: 993, column: 10, scope: !2171)
!2180 = !DILocation(line: 984, column: 3, scope: !2144, inlinedAt: !2179)
!2181 = !DILocation(line: 984, column: 26, scope: !2144, inlinedAt: !2179)
!2182 = !DILocation(line: 985, column: 13, scope: !2144, inlinedAt: !2179)
!2183 = !DILocation(line: 0, scope: !982, inlinedAt: !2184)
!2184 = distinct !DILocation(line: 986, column: 3, scope: !2144, inlinedAt: !2179)
!2185 = !DILocation(line: 156, column: 62, scope: !982, inlinedAt: !2184)
!2186 = !DILocation(line: 156, column: 57, scope: !982, inlinedAt: !2184)
!2187 = !DILocation(line: 157, column: 15, scope: !982, inlinedAt: !2184)
!2188 = !DILocation(line: 158, column: 12, scope: !982, inlinedAt: !2184)
!2189 = !DILocation(line: 158, column: 15, scope: !982, inlinedAt: !2184)
!2190 = !DILocation(line: 158, column: 25, scope: !982, inlinedAt: !2184)
!2191 = !DILocation(line: 159, column: 18, scope: !982, inlinedAt: !2184)
!2192 = !DILocation(line: 159, column: 23, scope: !982, inlinedAt: !2184)
!2193 = !DILocation(line: 159, column: 6, scope: !982, inlinedAt: !2184)
!2194 = !DILocation(line: 987, column: 10, scope: !2144, inlinedAt: !2179)
!2195 = !DILocation(line: 988, column: 1, scope: !2144, inlinedAt: !2179)
!2196 = !DILocation(line: 993, column: 3, scope: !2171)
!2197 = distinct !DISubprogram(name: "quotearg_colon", scope: !58, file: !58, line: 997, type: !839, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2198)
!2198 = !{!2199}
!2199 = !DILocalVariable(name: "arg", arg: 1, scope: !2197, file: !58, line: 997, type: !20)
!2200 = !DILocation(line: 0, scope: !2197)
!2201 = !DILocation(line: 0, scope: !2171, inlinedAt: !2202)
!2202 = distinct !DILocation(line: 999, column: 10, scope: !2197)
!2203 = !DILocation(line: 0, scope: !2144, inlinedAt: !2204)
!2204 = distinct !DILocation(line: 993, column: 10, scope: !2171, inlinedAt: !2202)
!2205 = !DILocation(line: 984, column: 3, scope: !2144, inlinedAt: !2204)
!2206 = !DILocation(line: 984, column: 26, scope: !2144, inlinedAt: !2204)
!2207 = !DILocation(line: 985, column: 13, scope: !2144, inlinedAt: !2204)
!2208 = !DILocation(line: 0, scope: !982, inlinedAt: !2209)
!2209 = distinct !DILocation(line: 986, column: 3, scope: !2144, inlinedAt: !2204)
!2210 = !DILocation(line: 156, column: 57, scope: !982, inlinedAt: !2209)
!2211 = !DILocation(line: 158, column: 12, scope: !982, inlinedAt: !2209)
!2212 = !DILocation(line: 159, column: 6, scope: !982, inlinedAt: !2209)
!2213 = !DILocation(line: 987, column: 10, scope: !2144, inlinedAt: !2204)
!2214 = !DILocation(line: 988, column: 1, scope: !2144, inlinedAt: !2204)
!2215 = !DILocation(line: 999, column: 3, scope: !2197)
!2216 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !58, file: !58, line: 1003, type: !2021, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2217)
!2217 = !{!2218, !2219}
!2218 = !DILocalVariable(name: "arg", arg: 1, scope: !2216, file: !58, line: 1003, type: !20)
!2219 = !DILocalVariable(name: "argsize", arg: 2, scope: !2216, file: !58, line: 1003, type: !96)
!2220 = !DILocation(line: 0, scope: !2216)
!2221 = !DILocation(line: 0, scope: !2144, inlinedAt: !2222)
!2222 = distinct !DILocation(line: 1005, column: 10, scope: !2216)
!2223 = !DILocation(line: 984, column: 3, scope: !2144, inlinedAt: !2222)
!2224 = !DILocation(line: 984, column: 26, scope: !2144, inlinedAt: !2222)
!2225 = !DILocation(line: 985, column: 13, scope: !2144, inlinedAt: !2222)
!2226 = !DILocation(line: 0, scope: !982, inlinedAt: !2227)
!2227 = distinct !DILocation(line: 986, column: 3, scope: !2144, inlinedAt: !2222)
!2228 = !DILocation(line: 156, column: 57, scope: !982, inlinedAt: !2227)
!2229 = !DILocation(line: 158, column: 12, scope: !982, inlinedAt: !2227)
!2230 = !DILocation(line: 159, column: 6, scope: !982, inlinedAt: !2227)
!2231 = !DILocation(line: 987, column: 10, scope: !2144, inlinedAt: !2222)
!2232 = !DILocation(line: 988, column: 1, scope: !2144, inlinedAt: !2222)
!2233 = !DILocation(line: 1005, column: 3, scope: !2216)
!2234 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !58, file: !58, line: 1009, type: !2032, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2235)
!2235 = !{!2236, !2237, !2238, !2239}
!2236 = !DILocalVariable(name: "n", arg: 1, scope: !2234, file: !58, line: 1009, type: !23)
!2237 = !DILocalVariable(name: "s", arg: 2, scope: !2234, file: !58, line: 1009, type: !60)
!2238 = !DILocalVariable(name: "arg", arg: 3, scope: !2234, file: !58, line: 1009, type: !20)
!2239 = !DILocalVariable(name: "options", scope: !2234, file: !58, line: 1011, type: !108)
!2240 = !DILocation(line: 195, column: 26, scope: !2047, inlinedAt: !2241)
!2241 = distinct !DILocation(line: 1012, column: 13, scope: !2234)
!2242 = !DILocation(line: 0, scope: !2234)
!2243 = !DILocation(line: 1011, column: 3, scope: !2234)
!2244 = !DILocation(line: 1011, column: 26, scope: !2234)
!2245 = !DILocation(line: 1012, column: 13, scope: !2234)
!2246 = !{!2247}
!2247 = distinct !{!2247, !2248, !"quoting_options_from_style: argument 0"}
!2248 = distinct !{!2248, !"quoting_options_from_style"}
!2249 = !DILocation(line: 0, scope: !2047, inlinedAt: !2241)
!2250 = !DILocation(line: 196, column: 13, scope: !2056, inlinedAt: !2241)
!2251 = !DILocation(line: 196, column: 7, scope: !2047, inlinedAt: !2241)
!2252 = !DILocation(line: 197, column: 5, scope: !2056, inlinedAt: !2241)
!2253 = !{i64 0, i64 4, !758, i64 4, i64 32, !799, i64 36, i64 8, !597, i64 44, i64 8, !597}
!2254 = !DILocation(line: 0, scope: !982, inlinedAt: !2255)
!2255 = distinct !DILocation(line: 1013, column: 3, scope: !2234)
!2256 = !DILocation(line: 156, column: 57, scope: !982, inlinedAt: !2255)
!2257 = !DILocation(line: 158, column: 12, scope: !982, inlinedAt: !2255)
!2258 = !DILocation(line: 159, column: 6, scope: !982, inlinedAt: !2255)
!2259 = !DILocation(line: 1014, column: 10, scope: !2234)
!2260 = !DILocation(line: 1015, column: 1, scope: !2234)
!2261 = !DILocation(line: 1014, column: 3, scope: !2234)
!2262 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !58, file: !58, line: 1018, type: !2263, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2265)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!10, !23, !20, !20, !20}
!2265 = !{!2266, !2267, !2268, !2269}
!2266 = !DILocalVariable(name: "n", arg: 1, scope: !2262, file: !58, line: 1018, type: !23)
!2267 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2262, file: !58, line: 1018, type: !20)
!2268 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2262, file: !58, line: 1019, type: !20)
!2269 = !DILocalVariable(name: "arg", arg: 4, scope: !2262, file: !58, line: 1019, type: !20)
!2270 = !DILocation(line: 0, scope: !2262)
!2271 = !DILocalVariable(name: "n", arg: 1, scope: !2272, file: !58, line: 1026, type: !23)
!2272 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !58, file: !58, line: 1026, type: !2273, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2275)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!10, !23, !20, !20, !20, !96}
!2275 = !{!2271, !2276, !2277, !2278, !2279, !2280}
!2276 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2272, file: !58, line: 1026, type: !20)
!2277 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2272, file: !58, line: 1027, type: !20)
!2278 = !DILocalVariable(name: "arg", arg: 4, scope: !2272, file: !58, line: 1028, type: !20)
!2279 = !DILocalVariable(name: "argsize", arg: 5, scope: !2272, file: !58, line: 1028, type: !96)
!2280 = !DILocalVariable(name: "o", scope: !2272, file: !58, line: 1030, type: !108)
!2281 = !DILocation(line: 0, scope: !2272, inlinedAt: !2282)
!2282 = distinct !DILocation(line: 1021, column: 10, scope: !2262)
!2283 = !DILocation(line: 1030, column: 3, scope: !2272, inlinedAt: !2282)
!2284 = !DILocation(line: 1030, column: 26, scope: !2272, inlinedAt: !2282)
!2285 = !DILocation(line: 1030, column: 30, scope: !2272, inlinedAt: !2282)
!2286 = !DILocation(line: 0, scope: !1023, inlinedAt: !2287)
!2287 = distinct !DILocation(line: 1031, column: 3, scope: !2272, inlinedAt: !2282)
!2288 = !DILocation(line: 184, column: 6, scope: !1023, inlinedAt: !2287)
!2289 = !DILocation(line: 184, column: 12, scope: !1023, inlinedAt: !2287)
!2290 = !DILocation(line: 185, column: 8, scope: !1037, inlinedAt: !2287)
!2291 = !DILocation(line: 185, column: 19, scope: !1037, inlinedAt: !2287)
!2292 = !DILocation(line: 186, column: 5, scope: !1037, inlinedAt: !2287)
!2293 = !DILocation(line: 187, column: 6, scope: !1023, inlinedAt: !2287)
!2294 = !DILocation(line: 187, column: 17, scope: !1023, inlinedAt: !2287)
!2295 = !DILocation(line: 188, column: 6, scope: !1023, inlinedAt: !2287)
!2296 = !DILocation(line: 188, column: 18, scope: !1023, inlinedAt: !2287)
!2297 = !DILocation(line: 1032, column: 10, scope: !2272, inlinedAt: !2282)
!2298 = !DILocation(line: 1033, column: 1, scope: !2272, inlinedAt: !2282)
!2299 = !DILocation(line: 1021, column: 3, scope: !2262)
!2300 = !DILocation(line: 0, scope: !2272)
!2301 = !DILocation(line: 1030, column: 3, scope: !2272)
!2302 = !DILocation(line: 1030, column: 26, scope: !2272)
!2303 = !DILocation(line: 1030, column: 30, scope: !2272)
!2304 = !DILocation(line: 0, scope: !1023, inlinedAt: !2305)
!2305 = distinct !DILocation(line: 1031, column: 3, scope: !2272)
!2306 = !DILocation(line: 184, column: 6, scope: !1023, inlinedAt: !2305)
!2307 = !DILocation(line: 184, column: 12, scope: !1023, inlinedAt: !2305)
!2308 = !DILocation(line: 185, column: 8, scope: !1037, inlinedAt: !2305)
!2309 = !DILocation(line: 185, column: 19, scope: !1037, inlinedAt: !2305)
!2310 = !DILocation(line: 186, column: 5, scope: !1037, inlinedAt: !2305)
!2311 = !DILocation(line: 187, column: 6, scope: !1023, inlinedAt: !2305)
!2312 = !DILocation(line: 187, column: 17, scope: !1023, inlinedAt: !2305)
!2313 = !DILocation(line: 188, column: 6, scope: !1023, inlinedAt: !2305)
!2314 = !DILocation(line: 188, column: 18, scope: !1023, inlinedAt: !2305)
!2315 = !DILocation(line: 1032, column: 10, scope: !2272)
!2316 = !DILocation(line: 1033, column: 1, scope: !2272)
!2317 = !DILocation(line: 1032, column: 3, scope: !2272)
!2318 = distinct !DISubprogram(name: "quotearg_custom", scope: !58, file: !58, line: 1036, type: !2319, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2321)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!10, !20, !20, !20}
!2321 = !{!2322, !2323, !2324}
!2322 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2318, file: !58, line: 1036, type: !20)
!2323 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2318, file: !58, line: 1036, type: !20)
!2324 = !DILocalVariable(name: "arg", arg: 3, scope: !2318, file: !58, line: 1037, type: !20)
!2325 = !DILocation(line: 0, scope: !2318)
!2326 = !DILocation(line: 0, scope: !2262, inlinedAt: !2327)
!2327 = distinct !DILocation(line: 1039, column: 10, scope: !2318)
!2328 = !DILocation(line: 0, scope: !2272, inlinedAt: !2329)
!2329 = distinct !DILocation(line: 1021, column: 10, scope: !2262, inlinedAt: !2327)
!2330 = !DILocation(line: 1030, column: 3, scope: !2272, inlinedAt: !2329)
!2331 = !DILocation(line: 1030, column: 26, scope: !2272, inlinedAt: !2329)
!2332 = !DILocation(line: 1030, column: 30, scope: !2272, inlinedAt: !2329)
!2333 = !DILocation(line: 0, scope: !1023, inlinedAt: !2334)
!2334 = distinct !DILocation(line: 1031, column: 3, scope: !2272, inlinedAt: !2329)
!2335 = !DILocation(line: 184, column: 6, scope: !1023, inlinedAt: !2334)
!2336 = !DILocation(line: 184, column: 12, scope: !1023, inlinedAt: !2334)
!2337 = !DILocation(line: 185, column: 8, scope: !1037, inlinedAt: !2334)
!2338 = !DILocation(line: 185, column: 19, scope: !1037, inlinedAt: !2334)
!2339 = !DILocation(line: 186, column: 5, scope: !1037, inlinedAt: !2334)
!2340 = !DILocation(line: 187, column: 6, scope: !1023, inlinedAt: !2334)
!2341 = !DILocation(line: 187, column: 17, scope: !1023, inlinedAt: !2334)
!2342 = !DILocation(line: 188, column: 6, scope: !1023, inlinedAt: !2334)
!2343 = !DILocation(line: 188, column: 18, scope: !1023, inlinedAt: !2334)
!2344 = !DILocation(line: 1032, column: 10, scope: !2272, inlinedAt: !2329)
!2345 = !DILocation(line: 1033, column: 1, scope: !2272, inlinedAt: !2329)
!2346 = !DILocation(line: 1039, column: 3, scope: !2318)
!2347 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !58, file: !58, line: 1043, type: !2348, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2350)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!10, !20, !20, !20, !96}
!2350 = !{!2351, !2352, !2353, !2354}
!2351 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2347, file: !58, line: 1043, type: !20)
!2352 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2347, file: !58, line: 1043, type: !20)
!2353 = !DILocalVariable(name: "arg", arg: 3, scope: !2347, file: !58, line: 1044, type: !20)
!2354 = !DILocalVariable(name: "argsize", arg: 4, scope: !2347, file: !58, line: 1044, type: !96)
!2355 = !DILocation(line: 0, scope: !2347)
!2356 = !DILocation(line: 0, scope: !2272, inlinedAt: !2357)
!2357 = distinct !DILocation(line: 1046, column: 10, scope: !2347)
!2358 = !DILocation(line: 1030, column: 3, scope: !2272, inlinedAt: !2357)
!2359 = !DILocation(line: 1030, column: 26, scope: !2272, inlinedAt: !2357)
!2360 = !DILocation(line: 1030, column: 30, scope: !2272, inlinedAt: !2357)
!2361 = !DILocation(line: 0, scope: !1023, inlinedAt: !2362)
!2362 = distinct !DILocation(line: 1031, column: 3, scope: !2272, inlinedAt: !2357)
!2363 = !DILocation(line: 184, column: 6, scope: !1023, inlinedAt: !2362)
!2364 = !DILocation(line: 184, column: 12, scope: !1023, inlinedAt: !2362)
!2365 = !DILocation(line: 185, column: 8, scope: !1037, inlinedAt: !2362)
!2366 = !DILocation(line: 185, column: 19, scope: !1037, inlinedAt: !2362)
!2367 = !DILocation(line: 186, column: 5, scope: !1037, inlinedAt: !2362)
!2368 = !DILocation(line: 187, column: 6, scope: !1023, inlinedAt: !2362)
!2369 = !DILocation(line: 187, column: 17, scope: !1023, inlinedAt: !2362)
!2370 = !DILocation(line: 188, column: 6, scope: !1023, inlinedAt: !2362)
!2371 = !DILocation(line: 188, column: 18, scope: !1023, inlinedAt: !2362)
!2372 = !DILocation(line: 1032, column: 10, scope: !2272, inlinedAt: !2357)
!2373 = !DILocation(line: 1033, column: 1, scope: !2272, inlinedAt: !2357)
!2374 = !DILocation(line: 1046, column: 3, scope: !2347)
!2375 = distinct !DISubprogram(name: "quote_n_mem", scope: !58, file: !58, line: 1061, type: !2376, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2378)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!20, !23, !20, !96}
!2378 = !{!2379, !2380, !2381}
!2379 = !DILocalVariable(name: "n", arg: 1, scope: !2375, file: !58, line: 1061, type: !23)
!2380 = !DILocalVariable(name: "arg", arg: 2, scope: !2375, file: !58, line: 1061, type: !20)
!2381 = !DILocalVariable(name: "argsize", arg: 3, scope: !2375, file: !58, line: 1061, type: !96)
!2382 = !DILocation(line: 0, scope: !2375)
!2383 = !DILocation(line: 1063, column: 10, scope: !2375)
!2384 = !DILocation(line: 1063, column: 3, scope: !2375)
!2385 = distinct !DISubprogram(name: "quote_mem", scope: !58, file: !58, line: 1067, type: !2386, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2388)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!20, !20, !96}
!2388 = !{!2389, !2390}
!2389 = !DILocalVariable(name: "arg", arg: 1, scope: !2385, file: !58, line: 1067, type: !20)
!2390 = !DILocalVariable(name: "argsize", arg: 2, scope: !2385, file: !58, line: 1067, type: !96)
!2391 = !DILocation(line: 0, scope: !2385)
!2392 = !DILocation(line: 0, scope: !2375, inlinedAt: !2393)
!2393 = distinct !DILocation(line: 1069, column: 10, scope: !2385)
!2394 = !DILocation(line: 1063, column: 10, scope: !2375, inlinedAt: !2393)
!2395 = !DILocation(line: 1069, column: 3, scope: !2385)
!2396 = distinct !DISubprogram(name: "quote_n", scope: !58, file: !58, line: 1073, type: !2397, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2399)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!20, !23, !20}
!2399 = !{!2400, !2401}
!2400 = !DILocalVariable(name: "n", arg: 1, scope: !2396, file: !58, line: 1073, type: !23)
!2401 = !DILocalVariable(name: "arg", arg: 2, scope: !2396, file: !58, line: 1073, type: !20)
!2402 = !DILocation(line: 0, scope: !2396)
!2403 = !DILocation(line: 0, scope: !2375, inlinedAt: !2404)
!2404 = distinct !DILocation(line: 1075, column: 10, scope: !2396)
!2405 = !DILocation(line: 1063, column: 10, scope: !2375, inlinedAt: !2404)
!2406 = !DILocation(line: 1075, column: 3, scope: !2396)
!2407 = distinct !DISubprogram(name: "quote", scope: !58, file: !58, line: 1079, type: !2408, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2410)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!20, !20}
!2410 = !{!2411}
!2411 = !DILocalVariable(name: "arg", arg: 1, scope: !2407, file: !58, line: 1079, type: !20)
!2412 = !DILocation(line: 0, scope: !2407)
!2413 = !DILocation(line: 0, scope: !2396, inlinedAt: !2414)
!2414 = distinct !DILocation(line: 1081, column: 10, scope: !2407)
!2415 = !DILocation(line: 0, scope: !2375, inlinedAt: !2416)
!2416 = distinct !DILocation(line: 1075, column: 10, scope: !2396, inlinedAt: !2414)
!2417 = !DILocation(line: 1063, column: 10, scope: !2375, inlinedAt: !2416)
!2418 = !DILocation(line: 1081, column: 3, scope: !2407)
!2419 = distinct !DISubprogram(name: "version_etc_arn", scope: !149, file: !149, line: 61, type: !2420, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !148, retainedNodes: !2458)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{null, !2422, !20, !20, !20, !2457, !96}
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2424, line: 7, baseType: !2425)
!2424 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !670, line: 49, size: 1728, elements: !2426)
!2426 = !{!2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2425, file: !670, line: 51, baseType: !23, size: 32)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2425, file: !670, line: 54, baseType: !10, size: 64, offset: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2425, file: !670, line: 55, baseType: !10, size: 64, offset: 128)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2425, file: !670, line: 56, baseType: !10, size: 64, offset: 192)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2425, file: !670, line: 57, baseType: !10, size: 64, offset: 256)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2425, file: !670, line: 58, baseType: !10, size: 64, offset: 320)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2425, file: !670, line: 59, baseType: !10, size: 64, offset: 384)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2425, file: !670, line: 60, baseType: !10, size: 64, offset: 448)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2425, file: !670, line: 61, baseType: !10, size: 64, offset: 512)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2425, file: !670, line: 64, baseType: !10, size: 64, offset: 576)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2425, file: !670, line: 65, baseType: !10, size: 64, offset: 640)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2425, file: !670, line: 66, baseType: !10, size: 64, offset: 704)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2425, file: !670, line: 68, baseType: !685, size: 64, offset: 768)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2425, file: !670, line: 70, baseType: !2441, size: 64, offset: 832)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2425, file: !670, line: 72, baseType: !23, size: 32, offset: 896)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2425, file: !670, line: 73, baseType: !23, size: 32, offset: 928)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2425, file: !670, line: 74, baseType: !691, size: 64, offset: 960)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2425, file: !670, line: 77, baseType: !95, size: 16, offset: 1024)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2425, file: !670, line: 78, baseType: !696, size: 8, offset: 1040)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2425, file: !670, line: 79, baseType: !698, size: 8, offset: 1048)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2425, file: !670, line: 81, baseType: !702, size: 64, offset: 1088)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2425, file: !670, line: 89, baseType: !705, size: 64, offset: 1152)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2425, file: !670, line: 91, baseType: !707, size: 64, offset: 1216)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2425, file: !670, line: 92, baseType: !710, size: 64, offset: 1280)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2425, file: !670, line: 93, baseType: !2441, size: 64, offset: 1344)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2425, file: !670, line: 94, baseType: !12, size: 64, offset: 1408)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2425, file: !670, line: 95, baseType: !96, size: 64, offset: 1472)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2425, file: !670, line: 96, baseType: !23, size: 32, offset: 1536)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2425, file: !670, line: 98, baseType: !717, size: 160, offset: 1568)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!2458 = !{!2459, !2460, !2461, !2462, !2463, !2464}
!2459 = !DILocalVariable(name: "stream", arg: 1, scope: !2419, file: !149, line: 61, type: !2422)
!2460 = !DILocalVariable(name: "command_name", arg: 2, scope: !2419, file: !149, line: 62, type: !20)
!2461 = !DILocalVariable(name: "package", arg: 3, scope: !2419, file: !149, line: 62, type: !20)
!2462 = !DILocalVariable(name: "version", arg: 4, scope: !2419, file: !149, line: 63, type: !20)
!2463 = !DILocalVariable(name: "authors", arg: 5, scope: !2419, file: !149, line: 64, type: !2457)
!2464 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2419, file: !149, line: 64, type: !96)
!2465 = !DILocation(line: 0, scope: !2419)
!2466 = !DILocation(line: 66, column: 7, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2419, file: !149, line: 66, column: 7)
!2468 = !DILocation(line: 66, column: 7, scope: !2419)
!2469 = !DILocation(line: 67, column: 5, scope: !2467)
!2470 = !DILocation(line: 69, column: 5, scope: !2467)
!2471 = !DILocation(line: 83, column: 3, scope: !2419)
!2472 = !DILocation(line: 85, column: 3, scope: !2419)
!2473 = !DILocation(line: 88, column: 3, scope: !2419)
!2474 = !DILocation(line: 95, column: 3, scope: !2419)
!2475 = !DILocation(line: 97, column: 3, scope: !2419)
!2476 = !DILocation(line: 105, column: 7, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2419, file: !149, line: 98, column: 5)
!2478 = !DILocation(line: 106, column: 7, scope: !2477)
!2479 = !DILocation(line: 109, column: 7, scope: !2477)
!2480 = !DILocation(line: 110, column: 7, scope: !2477)
!2481 = !DILocation(line: 113, column: 7, scope: !2477)
!2482 = !DILocation(line: 115, column: 7, scope: !2477)
!2483 = !DILocation(line: 120, column: 7, scope: !2477)
!2484 = !DILocation(line: 122, column: 7, scope: !2477)
!2485 = !DILocation(line: 127, column: 7, scope: !2477)
!2486 = !DILocation(line: 129, column: 7, scope: !2477)
!2487 = !DILocation(line: 134, column: 7, scope: !2477)
!2488 = !DILocation(line: 137, column: 7, scope: !2477)
!2489 = !DILocation(line: 142, column: 7, scope: !2477)
!2490 = !DILocation(line: 145, column: 7, scope: !2477)
!2491 = !DILocation(line: 150, column: 7, scope: !2477)
!2492 = !DILocation(line: 154, column: 7, scope: !2477)
!2493 = !DILocation(line: 159, column: 7, scope: !2477)
!2494 = !DILocation(line: 163, column: 7, scope: !2477)
!2495 = !DILocation(line: 170, column: 7, scope: !2477)
!2496 = !DILocation(line: 174, column: 7, scope: !2477)
!2497 = !DILocation(line: 176, column: 1, scope: !2419)
!2498 = distinct !DISubprogram(name: "version_etc_ar", scope: !149, file: !149, line: 183, type: !2499, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !148, retainedNodes: !2501)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{null, !2422, !20, !20, !20, !2457}
!2501 = !{!2502, !2503, !2504, !2505, !2506, !2507}
!2502 = !DILocalVariable(name: "stream", arg: 1, scope: !2498, file: !149, line: 183, type: !2422)
!2503 = !DILocalVariable(name: "command_name", arg: 2, scope: !2498, file: !149, line: 184, type: !20)
!2504 = !DILocalVariable(name: "package", arg: 3, scope: !2498, file: !149, line: 184, type: !20)
!2505 = !DILocalVariable(name: "version", arg: 4, scope: !2498, file: !149, line: 185, type: !20)
!2506 = !DILocalVariable(name: "authors", arg: 5, scope: !2498, file: !149, line: 185, type: !2457)
!2507 = !DILocalVariable(name: "n_authors", scope: !2498, file: !149, line: 187, type: !96)
!2508 = !DILocation(line: 0, scope: !2498)
!2509 = !DILocation(line: 189, column: 8, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2498, file: !149, line: 189, column: 3)
!2511 = !DILocation(line: 0, scope: !2510)
!2512 = !DILocation(line: 189, column: 23, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2510, file: !149, line: 189, column: 3)
!2514 = !DILocation(line: 189, column: 3, scope: !2510)
!2515 = !DILocation(line: 189, column: 52, scope: !2513)
!2516 = distinct !{!2516, !2514, !2517, !640}
!2517 = !DILocation(line: 190, column: 5, scope: !2510)
!2518 = !DILocation(line: 191, column: 3, scope: !2498)
!2519 = !DILocation(line: 192, column: 1, scope: !2498)
!2520 = distinct !DISubprogram(name: "version_etc_va", scope: !149, file: !149, line: 199, type: !2521, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !148, retainedNodes: !2530)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{null, !2422, !20, !20, !20, !2523}
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2525)
!2525 = !{!2526, !2527, !2528, !2529}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2524, file: !149, line: 192, baseType: !6, size: 32)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2524, file: !149, line: 192, baseType: !6, size: 32, offset: 32)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2524, file: !149, line: 192, baseType: !12, size: 64, offset: 64)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2524, file: !149, line: 192, baseType: !12, size: 64, offset: 128)
!2530 = !{!2531, !2532, !2533, !2534, !2535, !2536, !2537}
!2531 = !DILocalVariable(name: "stream", arg: 1, scope: !2520, file: !149, line: 199, type: !2422)
!2532 = !DILocalVariable(name: "command_name", arg: 2, scope: !2520, file: !149, line: 200, type: !20)
!2533 = !DILocalVariable(name: "package", arg: 3, scope: !2520, file: !149, line: 200, type: !20)
!2534 = !DILocalVariable(name: "version", arg: 4, scope: !2520, file: !149, line: 201, type: !20)
!2535 = !DILocalVariable(name: "authors", arg: 5, scope: !2520, file: !149, line: 201, type: !2523)
!2536 = !DILocalVariable(name: "n_authors", scope: !2520, file: !149, line: 203, type: !96)
!2537 = !DILocalVariable(name: "authtab", scope: !2520, file: !149, line: 204, type: !2538)
!2538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 640, elements: !104)
!2539 = !DILocation(line: 0, scope: !2520)
!2540 = !DILocation(line: 204, column: 3, scope: !2520)
!2541 = !DILocation(line: 204, column: 15, scope: !2520)
!2542 = !DILocation(line: 208, column: 35, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2544, file: !149, line: 206, column: 3)
!2544 = distinct !DILexicalBlock(scope: !2520, file: !149, line: 206, column: 3)
!2545 = !DILocation(line: 208, column: 14, scope: !2543)
!2546 = !DILocation(line: 208, column: 33, scope: !2543)
!2547 = !DILocation(line: 208, column: 67, scope: !2543)
!2548 = !DILocation(line: 206, column: 3, scope: !2544)
!2549 = !DILocation(line: 0, scope: !2544)
!2550 = !DILocation(line: 211, column: 3, scope: !2520)
!2551 = !DILocation(line: 213, column: 1, scope: !2520)
!2552 = distinct !DISubprogram(name: "version_etc", scope: !149, file: !149, line: 230, type: !2553, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !148, retainedNodes: !2555)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{null, !2422, !20, !20, !20, null}
!2555 = !{!2556, !2557, !2558, !2559, !2560}
!2556 = !DILocalVariable(name: "stream", arg: 1, scope: !2552, file: !149, line: 230, type: !2422)
!2557 = !DILocalVariable(name: "command_name", arg: 2, scope: !2552, file: !149, line: 231, type: !20)
!2558 = !DILocalVariable(name: "package", arg: 3, scope: !2552, file: !149, line: 231, type: !20)
!2559 = !DILocalVariable(name: "version", arg: 4, scope: !2552, file: !149, line: 232, type: !20)
!2560 = !DILocalVariable(name: "authors", scope: !2552, file: !149, line: 234, type: !2561)
!2561 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !665, line: 52, baseType: !2562)
!2562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2563, line: 32, baseType: !2564)
!2563 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!2564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !149, baseType: !2565)
!2565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2524, size: 192, elements: !699)
!2566 = !DILocation(line: 0, scope: !2552)
!2567 = !DILocation(line: 234, column: 3, scope: !2552)
!2568 = !DILocation(line: 234, column: 11, scope: !2552)
!2569 = !DILocation(line: 236, column: 3, scope: !2552)
!2570 = !DILocation(line: 237, column: 3, scope: !2552)
!2571 = !DILocation(line: 238, column: 3, scope: !2552)
!2572 = !DILocation(line: 239, column: 1, scope: !2552)
!2573 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !149, file: !149, line: 242, type: !846, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !148, retainedNodes: !33)
!2574 = !DILocation(line: 244, column: 3, scope: !2573)
!2575 = !DILocation(line: 249, column: 3, scope: !2573)
!2576 = !DILocation(line: 255, column: 3, scope: !2573)
!2577 = !DILocation(line: 260, column: 3, scope: !2573)
!2578 = !DILocation(line: 262, column: 1, scope: !2573)
!2579 = distinct !DISubprogram(name: "xnmalloc", scope: !159, file: !159, line: 99, type: !2580, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !155, retainedNodes: !2582)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!12, !96, !96}
!2582 = !{!2583, !2584}
!2583 = !DILocalVariable(name: "n", arg: 1, scope: !2579, file: !159, line: 99, type: !96)
!2584 = !DILocalVariable(name: "s", arg: 2, scope: !2579, file: !159, line: 99, type: !96)
!2585 = !DILocation(line: 0, scope: !2579)
!2586 = !DILocation(line: 101, column: 7, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2579, file: !159, line: 101, column: 7)
!2588 = !DILocation(line: 101, column: 7, scope: !2579)
!2589 = !DILocation(line: 102, column: 5, scope: !2587)
!2590 = !DILocation(line: 103, column: 21, scope: !2579)
!2591 = !DILocalVariable(name: "n", arg: 1, scope: !2592, file: !156, line: 39, type: !96)
!2592 = distinct !DISubprogram(name: "xmalloc", scope: !156, file: !156, line: 39, type: !2593, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !155, retainedNodes: !2595)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!12, !96}
!2595 = !{!2591, !2596}
!2596 = !DILocalVariable(name: "p", scope: !2592, file: !156, line: 41, type: !12)
!2597 = !DILocation(line: 0, scope: !2592, inlinedAt: !2598)
!2598 = distinct !DILocation(line: 103, column: 10, scope: !2579)
!2599 = !DILocation(line: 41, column: 13, scope: !2592, inlinedAt: !2598)
!2600 = !DILocation(line: 42, column: 8, scope: !2601, inlinedAt: !2598)
!2601 = distinct !DILexicalBlock(scope: !2592, file: !156, line: 42, column: 7)
!2602 = !DILocation(line: 42, column: 10, scope: !2601, inlinedAt: !2598)
!2603 = !DILocation(line: 43, column: 5, scope: !2601, inlinedAt: !2598)
!2604 = !DILocation(line: 103, column: 3, scope: !2579)
!2605 = !DILocation(line: 0, scope: !2592)
!2606 = !DILocation(line: 41, column: 13, scope: !2592)
!2607 = !DILocation(line: 42, column: 8, scope: !2601)
!2608 = !DILocation(line: 42, column: 10, scope: !2601)
!2609 = !DILocation(line: 43, column: 5, scope: !2601)
!2610 = !DILocation(line: 44, column: 3, scope: !2592)
!2611 = distinct !DISubprogram(name: "xnrealloc", scope: !159, file: !159, line: 112, type: !2612, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !155, retainedNodes: !2614)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{!12, !12, !96, !96}
!2614 = !{!2615, !2616, !2617}
!2615 = !DILocalVariable(name: "p", arg: 1, scope: !2611, file: !159, line: 112, type: !12)
!2616 = !DILocalVariable(name: "n", arg: 2, scope: !2611, file: !159, line: 112, type: !96)
!2617 = !DILocalVariable(name: "s", arg: 3, scope: !2611, file: !159, line: 112, type: !96)
!2618 = !DILocation(line: 0, scope: !2611)
!2619 = !DILocation(line: 114, column: 7, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2611, file: !159, line: 114, column: 7)
!2621 = !DILocation(line: 114, column: 7, scope: !2611)
!2622 = !DILocation(line: 115, column: 5, scope: !2620)
!2623 = !DILocation(line: 116, column: 25, scope: !2611)
!2624 = !DILocalVariable(name: "p", arg: 1, scope: !2625, file: !156, line: 51, type: !12)
!2625 = distinct !DISubprogram(name: "xrealloc", scope: !156, file: !156, line: 51, type: !2626, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !155, retainedNodes: !2628)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!12, !12, !96}
!2628 = !{!2624, !2629}
!2629 = !DILocalVariable(name: "n", arg: 2, scope: !2625, file: !156, line: 51, type: !96)
!2630 = !DILocation(line: 0, scope: !2625, inlinedAt: !2631)
!2631 = distinct !DILocation(line: 116, column: 10, scope: !2611)
!2632 = !DILocation(line: 53, column: 8, scope: !2633, inlinedAt: !2631)
!2633 = distinct !DILexicalBlock(scope: !2625, file: !156, line: 53, column: 7)
!2634 = !DILocation(line: 53, column: 10, scope: !2633, inlinedAt: !2631)
!2635 = !DILocation(line: 57, column: 7, scope: !2636, inlinedAt: !2631)
!2636 = distinct !DILexicalBlock(scope: !2633, file: !156, line: 54, column: 5)
!2637 = !DILocation(line: 58, column: 7, scope: !2636, inlinedAt: !2631)
!2638 = !DILocation(line: 61, column: 7, scope: !2625, inlinedAt: !2631)
!2639 = !DILocation(line: 62, column: 8, scope: !2640, inlinedAt: !2631)
!2640 = distinct !DILexicalBlock(scope: !2625, file: !156, line: 62, column: 7)
!2641 = !DILocation(line: 62, column: 10, scope: !2640, inlinedAt: !2631)
!2642 = !DILocation(line: 63, column: 5, scope: !2640, inlinedAt: !2631)
!2643 = !DILocation(line: 116, column: 3, scope: !2611)
!2644 = !DILocation(line: 0, scope: !2625)
!2645 = !DILocation(line: 53, column: 8, scope: !2633)
!2646 = !DILocation(line: 53, column: 10, scope: !2633)
!2647 = !DILocation(line: 57, column: 7, scope: !2636)
!2648 = !DILocation(line: 58, column: 7, scope: !2636)
!2649 = !DILocation(line: 61, column: 7, scope: !2625)
!2650 = !DILocation(line: 62, column: 8, scope: !2640)
!2651 = !DILocation(line: 62, column: 10, scope: !2640)
!2652 = !DILocation(line: 63, column: 5, scope: !2640)
!2653 = !DILocation(line: 65, column: 1, scope: !2625)
!2654 = !DILocation(line: 0, scope: !160)
!2655 = !DILocation(line: 176, column: 14, scope: !160)
!2656 = !DILocation(line: 178, column: 9, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !160, file: !159, line: 178, column: 7)
!2658 = !DILocation(line: 178, column: 7, scope: !160)
!2659 = !DILocation(line: 180, column: 13, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2661, file: !159, line: 180, column: 11)
!2661 = distinct !DILexicalBlock(scope: !2657, file: !159, line: 179, column: 5)
!2662 = !DILocation(line: 180, column: 11, scope: !2661)
!2663 = !DILocation(line: 188, column: 30, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2660, file: !159, line: 181, column: 9)
!2665 = !DILocation(line: 189, column: 16, scope: !2664)
!2666 = !DILocation(line: 189, column: 13, scope: !2664)
!2667 = !DILocation(line: 190, column: 9, scope: !2664)
!2668 = !DILocation(line: 191, column: 11, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2661, file: !159, line: 191, column: 11)
!2670 = !DILocation(line: 191, column: 11, scope: !2661)
!2671 = !DILocation(line: 206, column: 7, scope: !160)
!2672 = !DILocation(line: 207, column: 25, scope: !160)
!2673 = !DILocation(line: 0, scope: !2625, inlinedAt: !2674)
!2674 = distinct !DILocation(line: 207, column: 10, scope: !160)
!2675 = !DILocation(line: 53, column: 10, scope: !2633, inlinedAt: !2674)
!2676 = !DILocation(line: 192, column: 9, scope: !2669)
!2677 = !DILocation(line: 200, column: 69, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2679, file: !159, line: 200, column: 11)
!2679 = distinct !DILexicalBlock(scope: !2657, file: !159, line: 195, column: 5)
!2680 = !DILocation(line: 201, column: 11, scope: !2678)
!2681 = !DILocation(line: 200, column: 11, scope: !2679)
!2682 = !DILocation(line: 202, column: 9, scope: !2678)
!2683 = !DILocation(line: 203, column: 14, scope: !2679)
!2684 = !DILocation(line: 203, column: 18, scope: !2679)
!2685 = !DILocation(line: 203, column: 9, scope: !2679)
!2686 = !DILocation(line: 53, column: 8, scope: !2633, inlinedAt: !2674)
!2687 = !DILocation(line: 57, column: 7, scope: !2636, inlinedAt: !2674)
!2688 = !DILocation(line: 58, column: 7, scope: !2636, inlinedAt: !2674)
!2689 = !DILocation(line: 61, column: 7, scope: !2625, inlinedAt: !2674)
!2690 = !DILocation(line: 62, column: 8, scope: !2640, inlinedAt: !2674)
!2691 = !DILocation(line: 62, column: 10, scope: !2640, inlinedAt: !2674)
!2692 = !DILocation(line: 63, column: 5, scope: !2640, inlinedAt: !2674)
!2693 = !DILocation(line: 207, column: 3, scope: !160)
!2694 = distinct !DISubprogram(name: "xcharalloc", scope: !159, file: !159, line: 216, type: !1830, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !155, retainedNodes: !2695)
!2695 = !{!2696}
!2696 = !DILocalVariable(name: "n", arg: 1, scope: !2694, file: !159, line: 216, type: !96)
!2697 = !DILocation(line: 0, scope: !2694)
!2698 = !DILocation(line: 0, scope: !2592, inlinedAt: !2699)
!2699 = distinct !DILocation(line: 218, column: 10, scope: !2694)
!2700 = !DILocation(line: 41, column: 13, scope: !2592, inlinedAt: !2699)
!2701 = !DILocation(line: 42, column: 8, scope: !2601, inlinedAt: !2699)
!2702 = !DILocation(line: 42, column: 10, scope: !2601, inlinedAt: !2699)
!2703 = !DILocation(line: 43, column: 5, scope: !2601, inlinedAt: !2699)
!2704 = !DILocation(line: 218, column: 3, scope: !2694)
!2705 = distinct !DISubprogram(name: "x2realloc", scope: !156, file: !156, line: 74, type: !2706, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !155, retainedNodes: !2708)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{!12, !12, !163}
!2708 = !{!2709, !2710}
!2709 = !DILocalVariable(name: "p", arg: 1, scope: !2705, file: !156, line: 74, type: !12)
!2710 = !DILocalVariable(name: "pn", arg: 2, scope: !2705, file: !156, line: 74, type: !163)
!2711 = !DILocation(line: 0, scope: !2705)
!2712 = !DILocation(line: 0, scope: !160, inlinedAt: !2713)
!2713 = distinct !DILocation(line: 76, column: 10, scope: !2705)
!2714 = !DILocation(line: 176, column: 14, scope: !160, inlinedAt: !2713)
!2715 = !DILocation(line: 178, column: 9, scope: !2657, inlinedAt: !2713)
!2716 = !DILocation(line: 178, column: 7, scope: !160, inlinedAt: !2713)
!2717 = !DILocation(line: 180, column: 13, scope: !2660, inlinedAt: !2713)
!2718 = !DILocation(line: 180, column: 11, scope: !2661, inlinedAt: !2713)
!2719 = !DILocation(line: 191, column: 11, scope: !2669, inlinedAt: !2713)
!2720 = !DILocation(line: 191, column: 11, scope: !2661, inlinedAt: !2713)
!2721 = !DILocation(line: 192, column: 9, scope: !2669, inlinedAt: !2713)
!2722 = !DILocation(line: 201, column: 11, scope: !2678, inlinedAt: !2713)
!2723 = !DILocation(line: 200, column: 11, scope: !2679, inlinedAt: !2713)
!2724 = !DILocation(line: 202, column: 9, scope: !2678, inlinedAt: !2713)
!2725 = !DILocation(line: 203, column: 14, scope: !2679, inlinedAt: !2713)
!2726 = !DILocation(line: 203, column: 18, scope: !2679, inlinedAt: !2713)
!2727 = !DILocation(line: 203, column: 9, scope: !2679, inlinedAt: !2713)
!2728 = !DILocation(line: 0, scope: !2625, inlinedAt: !2729)
!2729 = distinct !DILocation(line: 207, column: 10, scope: !160, inlinedAt: !2713)
!2730 = !DILocation(line: 53, column: 10, scope: !2633, inlinedAt: !2729)
!2731 = !DILocation(line: 206, column: 7, scope: !160, inlinedAt: !2713)
!2732 = !DILocation(line: 61, column: 7, scope: !2625, inlinedAt: !2729)
!2733 = !DILocation(line: 62, column: 8, scope: !2640, inlinedAt: !2729)
!2734 = !DILocation(line: 62, column: 10, scope: !2640, inlinedAt: !2729)
!2735 = !DILocation(line: 63, column: 5, scope: !2640, inlinedAt: !2729)
!2736 = !DILocation(line: 76, column: 3, scope: !2705)
!2737 = distinct !DISubprogram(name: "xzalloc", scope: !156, file: !156, line: 84, type: !2593, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !155, retainedNodes: !2738)
!2738 = !{!2739}
!2739 = !DILocalVariable(name: "n", arg: 1, scope: !2737, file: !156, line: 84, type: !96)
!2740 = !DILocation(line: 0, scope: !2737)
!2741 = !DILocalVariable(name: "n", arg: 1, scope: !2742, file: !156, line: 93, type: !96)
!2742 = distinct !DISubprogram(name: "xcalloc", scope: !156, file: !156, line: 93, type: !2580, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !155, retainedNodes: !2743)
!2743 = !{!2741, !2744, !2745}
!2744 = !DILocalVariable(name: "s", arg: 2, scope: !2742, file: !156, line: 93, type: !96)
!2745 = !DILocalVariable(name: "p", scope: !2742, file: !156, line: 95, type: !12)
!2746 = !DILocation(line: 0, scope: !2742, inlinedAt: !2747)
!2747 = distinct !DILocation(line: 86, column: 10, scope: !2737)
!2748 = !DILocation(line: 100, column: 7, scope: !2749, inlinedAt: !2747)
!2749 = distinct !DILexicalBlock(scope: !2742, file: !156, line: 100, column: 7)
!2750 = !DILocation(line: 101, column: 7, scope: !2749, inlinedAt: !2747)
!2751 = !DILocation(line: 101, column: 18, scope: !2749, inlinedAt: !2747)
!2752 = !DILocation(line: 101, column: 16, scope: !2749, inlinedAt: !2747)
!2753 = !DILocation(line: 100, column: 7, scope: !2742, inlinedAt: !2747)
!2754 = !DILocation(line: 102, column: 5, scope: !2749, inlinedAt: !2747)
!2755 = !DILocation(line: 86, column: 3, scope: !2737)
!2756 = !DILocation(line: 0, scope: !2742)
!2757 = !DILocation(line: 100, column: 7, scope: !2749)
!2758 = !DILocation(line: 101, column: 7, scope: !2749)
!2759 = !DILocation(line: 101, column: 18, scope: !2749)
!2760 = !DILocation(line: 101, column: 16, scope: !2749)
!2761 = !DILocation(line: 100, column: 7, scope: !2742)
!2762 = !DILocation(line: 102, column: 5, scope: !2749)
!2763 = !DILocation(line: 103, column: 3, scope: !2742)
!2764 = distinct !DISubprogram(name: "xmemdup", scope: !156, file: !156, line: 111, type: !2765, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !155, retainedNodes: !2769)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{!12, !2767, !96}
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2769 = !{!2770, !2771}
!2770 = !DILocalVariable(name: "p", arg: 1, scope: !2764, file: !156, line: 111, type: !2767)
!2771 = !DILocalVariable(name: "s", arg: 2, scope: !2764, file: !156, line: 111, type: !96)
!2772 = !DILocation(line: 0, scope: !2764)
!2773 = !DILocation(line: 0, scope: !2592, inlinedAt: !2774)
!2774 = distinct !DILocation(line: 113, column: 18, scope: !2764)
!2775 = !DILocation(line: 41, column: 13, scope: !2592, inlinedAt: !2774)
!2776 = !DILocation(line: 42, column: 8, scope: !2601, inlinedAt: !2774)
!2777 = !DILocation(line: 42, column: 10, scope: !2601, inlinedAt: !2774)
!2778 = !DILocation(line: 43, column: 5, scope: !2601, inlinedAt: !2774)
!2779 = !DILocalVariable(name: "__dest", arg: 1, scope: !2780, file: !1357, line: 26, type: !2783)
!2780 = distinct !DISubprogram(name: "memcpy", scope: !1357, file: !1357, line: 26, type: !2781, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !155, retainedNodes: !2785)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!12, !2783, !2784, !96}
!2783 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !12)
!2784 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2767)
!2785 = !{!2779, !2786, !2787}
!2786 = !DILocalVariable(name: "__src", arg: 2, scope: !2780, file: !1357, line: 26, type: !2784)
!2787 = !DILocalVariable(name: "__len", arg: 3, scope: !2780, file: !1357, line: 26, type: !96)
!2788 = !DILocation(line: 0, scope: !2780, inlinedAt: !2789)
!2789 = distinct !DILocation(line: 113, column: 10, scope: !2764)
!2790 = !DILocation(line: 29, column: 10, scope: !2780, inlinedAt: !2789)
!2791 = !DILocation(line: 113, column: 3, scope: !2764)
!2792 = distinct !DISubprogram(name: "xstrdup", scope: !156, file: !156, line: 119, type: !839, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !155, retainedNodes: !2793)
!2793 = !{!2794}
!2794 = !DILocalVariable(name: "string", arg: 1, scope: !2792, file: !156, line: 119, type: !20)
!2795 = !DILocation(line: 0, scope: !2792)
!2796 = !DILocation(line: 121, column: 27, scope: !2792)
!2797 = !DILocation(line: 121, column: 43, scope: !2792)
!2798 = !DILocation(line: 0, scope: !2764, inlinedAt: !2799)
!2799 = distinct !DILocation(line: 121, column: 10, scope: !2792)
!2800 = !DILocation(line: 0, scope: !2592, inlinedAt: !2801)
!2801 = distinct !DILocation(line: 113, column: 18, scope: !2764, inlinedAt: !2799)
!2802 = !DILocation(line: 41, column: 13, scope: !2592, inlinedAt: !2801)
!2803 = !DILocation(line: 42, column: 8, scope: !2601, inlinedAt: !2801)
!2804 = !DILocation(line: 42, column: 10, scope: !2601, inlinedAt: !2801)
!2805 = !DILocation(line: 43, column: 5, scope: !2601, inlinedAt: !2801)
!2806 = !DILocation(line: 0, scope: !2780, inlinedAt: !2807)
!2807 = distinct !DILocation(line: 113, column: 10, scope: !2764, inlinedAt: !2799)
!2808 = !DILocation(line: 29, column: 10, scope: !2780, inlinedAt: !2807)
!2809 = !DILocation(line: 121, column: 3, scope: !2792)
!2810 = distinct !DISubprogram(name: "xalloc_die", scope: !173, file: !173, line: 32, type: !846, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !33)
!2811 = !DILocation(line: 34, column: 10, scope: !2810)
!2812 = !DILocation(line: 34, column: 33, scope: !2810)
!2813 = !DILocation(line: 34, column: 3, scope: !2810)
!2814 = !DILocation(line: 40, column: 3, scope: !2810)
!2815 = distinct !DISubprogram(name: "rpl_calloc", scope: !175, file: !175, line: 42, type: !2580, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !174, retainedNodes: !2816)
!2816 = !{!2817, !2818, !2819, !2820}
!2817 = !DILocalVariable(name: "n", arg: 1, scope: !2815, file: !175, line: 42, type: !96)
!2818 = !DILocalVariable(name: "s", arg: 2, scope: !2815, file: !175, line: 42, type: !96)
!2819 = !DILocalVariable(name: "result", scope: !2815, file: !175, line: 44, type: !12)
!2820 = !DILocalVariable(name: "bytes", scope: !2821, file: !175, line: 56, type: !96)
!2821 = distinct !DILexicalBlock(scope: !2822, file: !175, line: 53, column: 5)
!2822 = distinct !DILexicalBlock(scope: !2815, file: !175, line: 47, column: 7)
!2823 = !DILocation(line: 0, scope: !2815)
!2824 = !DILocation(line: 47, column: 9, scope: !2822)
!2825 = !DILocation(line: 47, column: 14, scope: !2822)
!2826 = !DILocation(line: 0, scope: !2821)
!2827 = !DILocation(line: 57, column: 21, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2821, file: !175, line: 57, column: 11)
!2829 = !DILocation(line: 57, column: 11, scope: !2821)
!2830 = !DILocation(line: 59, column: 11, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2828, file: !175, line: 58, column: 9)
!2832 = !DILocation(line: 59, column: 17, scope: !2831)
!2833 = !DILocation(line: 65, column: 12, scope: !2815)
!2834 = !DILocation(line: 72, column: 3, scope: !2815)
!2835 = !DILocation(line: 73, column: 1, scope: !2815)
!2836 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !177, file: !177, line: 86, type: !2837, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !176, retainedNodes: !2851)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!96, !2839, !20, !96, !2840}
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1112, line: 6, baseType: !2842)
!2842 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1114, line: 21, baseType: !2843)
!2843 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1114, line: 13, size: 64, elements: !2844)
!2844 = !{!2845, !2846}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2843, file: !1114, line: 15, baseType: !23, size: 32)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2843, file: !1114, line: 20, baseType: !2847, size: 32, offset: 32)
!2847 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2843, file: !1114, line: 16, size: 32, elements: !2848)
!2848 = !{!2849, !2850}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2847, file: !1114, line: 18, baseType: !6, size: 32)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2847, file: !1114, line: 19, baseType: !1123, size: 32)
!2851 = !{!2852, !2853, !2854, !2855, !2856, !2857, !2858}
!2852 = !DILocalVariable(name: "pwc", arg: 1, scope: !2836, file: !177, line: 86, type: !2839)
!2853 = !DILocalVariable(name: "s", arg: 2, scope: !2836, file: !177, line: 86, type: !20)
!2854 = !DILocalVariable(name: "n", arg: 3, scope: !2836, file: !177, line: 86, type: !96)
!2855 = !DILocalVariable(name: "ps", arg: 4, scope: !2836, file: !177, line: 86, type: !2840)
!2856 = !DILocalVariable(name: "ret", scope: !2836, file: !177, line: 88, type: !96)
!2857 = !DILocalVariable(name: "wc", scope: !2836, file: !177, line: 89, type: !1126)
!2858 = !DILocalVariable(name: "uc", scope: !2859, file: !177, line: 156, type: !990)
!2859 = distinct !DILexicalBlock(scope: !2860, file: !177, line: 155, column: 5)
!2860 = distinct !DILexicalBlock(scope: !2836, file: !177, line: 154, column: 7)
!2861 = !DILocation(line: 0, scope: !2836)
!2862 = !DILocation(line: 89, column: 3, scope: !2836)
!2863 = !DILocation(line: 105, column: 9, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2836, file: !177, line: 105, column: 7)
!2865 = !DILocation(line: 105, column: 7, scope: !2836)
!2866 = !DILocation(line: 145, column: 9, scope: !2836)
!2867 = !DILocation(line: 154, column: 19, scope: !2860)
!2868 = !DILocation(line: 154, column: 26, scope: !2860)
!2869 = !DILocation(line: 154, column: 41, scope: !2860)
!2870 = !DILocation(line: 154, column: 7, scope: !2836)
!2871 = !DILocation(line: 156, column: 26, scope: !2859)
!2872 = !DILocation(line: 0, scope: !2859)
!2873 = !DILocation(line: 157, column: 14, scope: !2859)
!2874 = !DILocation(line: 157, column: 12, scope: !2859)
!2875 = !DILocation(line: 163, column: 1, scope: !2836)
!2876 = !DISubprogram(name: "mbrtowc", scope: !1790, file: !1790, line: 296, type: !2877, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !33)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!98, !25, !20, !98, !2879}
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2880 = distinct !DISubprogram(name: "close_stream", scope: !180, file: !180, line: 56, type: !2881, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !179, retainedNodes: !2917)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!23, !2883}
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2424, line: 7, baseType: !2885)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !670, line: 49, size: 1728, elements: !2886)
!2886 = !{!2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2885, file: !670, line: 51, baseType: !23, size: 32)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2885, file: !670, line: 54, baseType: !10, size: 64, offset: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2885, file: !670, line: 55, baseType: !10, size: 64, offset: 128)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2885, file: !670, line: 56, baseType: !10, size: 64, offset: 192)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2885, file: !670, line: 57, baseType: !10, size: 64, offset: 256)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2885, file: !670, line: 58, baseType: !10, size: 64, offset: 320)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2885, file: !670, line: 59, baseType: !10, size: 64, offset: 384)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2885, file: !670, line: 60, baseType: !10, size: 64, offset: 448)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2885, file: !670, line: 61, baseType: !10, size: 64, offset: 512)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2885, file: !670, line: 64, baseType: !10, size: 64, offset: 576)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2885, file: !670, line: 65, baseType: !10, size: 64, offset: 640)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2885, file: !670, line: 66, baseType: !10, size: 64, offset: 704)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2885, file: !670, line: 68, baseType: !685, size: 64, offset: 768)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2885, file: !670, line: 70, baseType: !2901, size: 64, offset: 832)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2885, file: !670, line: 72, baseType: !23, size: 32, offset: 896)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2885, file: !670, line: 73, baseType: !23, size: 32, offset: 928)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2885, file: !670, line: 74, baseType: !691, size: 64, offset: 960)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2885, file: !670, line: 77, baseType: !95, size: 16, offset: 1024)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2885, file: !670, line: 78, baseType: !696, size: 8, offset: 1040)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2885, file: !670, line: 79, baseType: !698, size: 8, offset: 1048)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2885, file: !670, line: 81, baseType: !702, size: 64, offset: 1088)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2885, file: !670, line: 89, baseType: !705, size: 64, offset: 1152)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2885, file: !670, line: 91, baseType: !707, size: 64, offset: 1216)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2885, file: !670, line: 92, baseType: !710, size: 64, offset: 1280)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2885, file: !670, line: 93, baseType: !2901, size: 64, offset: 1344)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2885, file: !670, line: 94, baseType: !12, size: 64, offset: 1408)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2885, file: !670, line: 95, baseType: !96, size: 64, offset: 1472)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2885, file: !670, line: 96, baseType: !23, size: 32, offset: 1536)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2885, file: !670, line: 98, baseType: !717, size: 160, offset: 1568)
!2917 = !{!2918, !2919, !2921, !2922}
!2918 = !DILocalVariable(name: "stream", arg: 1, scope: !2880, file: !180, line: 56, type: !2883)
!2919 = !DILocalVariable(name: "some_pending", scope: !2880, file: !180, line: 58, type: !2920)
!2920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!2921 = !DILocalVariable(name: "prev_fail", scope: !2880, file: !180, line: 59, type: !2920)
!2922 = !DILocalVariable(name: "fclose_fail", scope: !2880, file: !180, line: 60, type: !2920)
!2923 = !DILocation(line: 0, scope: !2880)
!2924 = !DILocation(line: 58, column: 30, scope: !2880)
!2925 = !DILocalVariable(name: "__stream", arg: 1, scope: !2926, file: !2927, line: 135, type: !2883)
!2926 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2927, file: !2927, line: 135, type: !2881, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !179, retainedNodes: !2928)
!2927 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!2928 = !{!2925}
!2929 = !DILocation(line: 0, scope: !2926, inlinedAt: !2930)
!2930 = distinct !DILocation(line: 59, column: 27, scope: !2880)
!2931 = !DILocation(line: 137, column: 10, scope: !2926, inlinedAt: !2930)
!2932 = !{!2933, !759, i64 0}
!2933 = !{!"_IO_FILE", !759, i64 0, !598, i64 8, !598, i64 16, !598, i64 24, !598, i64 32, !598, i64 40, !598, i64 48, !598, i64 56, !598, i64 64, !598, i64 72, !598, i64 80, !598, i64 88, !598, i64 96, !598, i64 104, !759, i64 112, !759, i64 116, !1866, i64 120, !1349, i64 128, !599, i64 130, !599, i64 131, !598, i64 136, !1866, i64 144, !598, i64 152, !598, i64 160, !598, i64 168, !598, i64 176, !1866, i64 184, !759, i64 192, !599, i64 196}
!2934 = !DILocation(line: 59, column: 43, scope: !2880)
!2935 = !DILocation(line: 60, column: 29, scope: !2880)
!2936 = !DILocation(line: 60, column: 45, scope: !2880)
!2937 = !DILocation(line: 70, column: 17, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2880, file: !180, line: 70, column: 7)
!2939 = !DILocation(line: 58, column: 50, scope: !2880)
!2940 = !DILocation(line: 70, column: 33, scope: !2938)
!2941 = !DILocation(line: 70, column: 53, scope: !2938)
!2942 = !DILocation(line: 70, column: 59, scope: !2938)
!2943 = !DILocation(line: 70, column: 7, scope: !2880)
!2944 = !DILocation(line: 72, column: 11, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2938, file: !180, line: 71, column: 5)
!2946 = !DILocation(line: 73, column: 9, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2945, file: !180, line: 72, column: 11)
!2948 = !DILocation(line: 73, column: 15, scope: !2947)
!2949 = !DILocation(line: 78, column: 1, scope: !2880)
!2950 = distinct !DISubprogram(name: "hard_locale", scope: !182, file: !182, line: 27, type: !2951, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2953)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!42, !23}
!2953 = !{!2954, !2955}
!2954 = !DILocalVariable(name: "category", arg: 1, scope: !2950, file: !182, line: 27, type: !23)
!2955 = !DILocalVariable(name: "locale", scope: !2950, file: !182, line: 29, type: !2956)
!2956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2056, elements: !2957)
!2957 = !{!2958}
!2958 = !DISubrange(count: 257)
!2959 = !DILocation(line: 0, scope: !2950)
!2960 = !DILocation(line: 29, column: 3, scope: !2950)
!2961 = !DILocation(line: 29, column: 8, scope: !2950)
!2962 = !DILocation(line: 31, column: 7, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2950, file: !182, line: 31, column: 7)
!2964 = !DILocation(line: 31, column: 7, scope: !2950)
!2965 = !DILocation(line: 34, column: 12, scope: !2950)
!2966 = !DILocation(line: 34, column: 38, scope: !2950)
!2967 = !DILocation(line: 34, column: 41, scope: !2950)
!2968 = !DILocation(line: 34, column: 66, scope: !2950)
!2969 = !DILocation(line: 35, column: 1, scope: !2950)
!2970 = distinct !DISubprogram(name: "locale_charset", scope: !184, file: !184, line: 831, type: !2971, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !2973)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!20}
!2973 = !{!2974}
!2974 = !DILocalVariable(name: "codeset", scope: !2970, file: !184, line: 833, type: !20)
!2975 = !DILocation(line: 847, column: 13, scope: !2970)
!2976 = !DILocation(line: 0, scope: !2970)
!2977 = !DILocation(line: 911, column: 15, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2970, file: !184, line: 911, column: 7)
!2979 = !DILocation(line: 911, column: 7, scope: !2970)
!2980 = !DILocation(line: 1070, column: 13, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2982, file: !184, line: 1070, column: 13)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !184, line: 1060, column: 7)
!2983 = distinct !DILexicalBlock(scope: !2970, file: !184, line: 1019, column: 3)
!2984 = !DILocation(line: 1070, column: 24, scope: !2981)
!2985 = !DILocation(line: 1070, column: 13, scope: !2982)
!2986 = !DILocation(line: 1158, column: 3, scope: !2970)
!2987 = !DISubprogram(name: "nl_langinfo", scope: !187, file: !187, line: 661, type: !2988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !33)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{!10, !23}
!2990 = distinct !DISubprogram(name: "setlocale_null_r", scope: !573, file: !573, line: 269, type: !2991, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !2993)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!23, !23, !10, !96}
!2993 = !{!2994, !2995, !2996}
!2994 = !DILocalVariable(name: "category", arg: 1, scope: !2990, file: !573, line: 269, type: !23)
!2995 = !DILocalVariable(name: "buf", arg: 2, scope: !2990, file: !573, line: 269, type: !10)
!2996 = !DILocalVariable(name: "bufsize", arg: 3, scope: !2990, file: !573, line: 269, type: !96)
!2997 = !DILocation(line: 0, scope: !2990)
!2998 = !DILocalVariable(name: "category", arg: 1, scope: !2999, file: !573, line: 91, type: !23)
!2999 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !573, file: !573, line: 91, type: !2991, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3000)
!3000 = !{!2998, !3001, !3002, !3003, !3004}
!3001 = !DILocalVariable(name: "buf", arg: 2, scope: !2999, file: !573, line: 91, type: !10)
!3002 = !DILocalVariable(name: "bufsize", arg: 3, scope: !2999, file: !573, line: 91, type: !96)
!3003 = !DILocalVariable(name: "result", scope: !2999, file: !573, line: 140, type: !20)
!3004 = !DILocalVariable(name: "length", scope: !3005, file: !573, line: 154, type: !96)
!3005 = distinct !DILexicalBlock(scope: !3006, file: !573, line: 153, column: 5)
!3006 = distinct !DILexicalBlock(scope: !2999, file: !573, line: 142, column: 7)
!3007 = !DILocation(line: 0, scope: !2999, inlinedAt: !3008)
!3008 = distinct !DILocation(line: 274, column: 10, scope: !2990)
!3009 = !DILocalVariable(name: "category", arg: 1, scope: !3010, file: !573, line: 60, type: !23)
!3010 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !573, file: !573, line: 60, type: !3011, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3013)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!20, !23}
!3013 = !{!3009, !3014}
!3014 = !DILocalVariable(name: "result", scope: !3010, file: !573, line: 62, type: !20)
!3015 = !DILocation(line: 0, scope: !3010, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 140, column: 24, scope: !2999, inlinedAt: !3008)
!3017 = !DILocation(line: 62, column: 24, scope: !3010, inlinedAt: !3016)
!3018 = !DILocation(line: 142, column: 14, scope: !3006, inlinedAt: !3008)
!3019 = !DILocation(line: 142, column: 7, scope: !2999, inlinedAt: !3008)
!3020 = !DILocation(line: 145, column: 19, scope: !3021, inlinedAt: !3008)
!3021 = distinct !DILexicalBlock(scope: !3022, file: !573, line: 145, column: 11)
!3022 = distinct !DILexicalBlock(scope: !3006, file: !573, line: 143, column: 5)
!3023 = !DILocation(line: 145, column: 11, scope: !3022, inlinedAt: !3008)
!3024 = !DILocation(line: 149, column: 16, scope: !3021, inlinedAt: !3008)
!3025 = !DILocation(line: 149, column: 9, scope: !3021, inlinedAt: !3008)
!3026 = !DILocation(line: 154, column: 23, scope: !3005, inlinedAt: !3008)
!3027 = !DILocation(line: 0, scope: !3005, inlinedAt: !3008)
!3028 = !DILocation(line: 155, column: 18, scope: !3029, inlinedAt: !3008)
!3029 = distinct !DILexicalBlock(scope: !3005, file: !573, line: 155, column: 11)
!3030 = !DILocation(line: 155, column: 11, scope: !3005, inlinedAt: !3008)
!3031 = !DILocation(line: 157, column: 39, scope: !3032, inlinedAt: !3008)
!3032 = distinct !DILexicalBlock(scope: !3029, file: !573, line: 156, column: 9)
!3033 = !DILocalVariable(name: "__dest", arg: 1, scope: !3034, file: !1357, line: 26, type: !2783)
!3034 = distinct !DISubprogram(name: "memcpy", scope: !1357, file: !1357, line: 26, type: !2781, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3035)
!3035 = !{!3033, !3036, !3037}
!3036 = !DILocalVariable(name: "__src", arg: 2, scope: !3034, file: !1357, line: 26, type: !2784)
!3037 = !DILocalVariable(name: "__len", arg: 3, scope: !3034, file: !1357, line: 26, type: !96)
!3038 = !DILocation(line: 0, scope: !3034, inlinedAt: !3039)
!3039 = distinct !DILocation(line: 157, column: 11, scope: !3032, inlinedAt: !3008)
!3040 = !DILocation(line: 29, column: 10, scope: !3034, inlinedAt: !3039)
!3041 = !DILocation(line: 158, column: 11, scope: !3032, inlinedAt: !3008)
!3042 = !DILocation(line: 162, column: 23, scope: !3043, inlinedAt: !3008)
!3043 = distinct !DILexicalBlock(scope: !3044, file: !573, line: 162, column: 15)
!3044 = distinct !DILexicalBlock(scope: !3029, file: !573, line: 161, column: 9)
!3045 = !DILocation(line: 162, column: 15, scope: !3044, inlinedAt: !3008)
!3046 = !DILocation(line: 167, column: 44, scope: !3047, inlinedAt: !3008)
!3047 = distinct !DILexicalBlock(scope: !3043, file: !573, line: 163, column: 13)
!3048 = !DILocation(line: 0, scope: !3034, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 167, column: 15, scope: !3047, inlinedAt: !3008)
!3050 = !DILocation(line: 29, column: 10, scope: !3034, inlinedAt: !3049)
!3051 = !DILocation(line: 168, column: 15, scope: !3047, inlinedAt: !3008)
!3052 = !DILocation(line: 168, column: 32, scope: !3047, inlinedAt: !3008)
!3053 = !DILocation(line: 169, column: 13, scope: !3047, inlinedAt: !3008)
!3054 = !DILocation(line: 0, scope: !3006, inlinedAt: !3008)
!3055 = !DILocation(line: 274, column: 3, scope: !2990)
!3056 = distinct !DISubprogram(name: "setlocale_null", scope: !573, file: !573, line: 301, type: !3011, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3057)
!3057 = !{!3058}
!3058 = !DILocalVariable(name: "category", arg: 1, scope: !3056, file: !573, line: 301, type: !23)
!3059 = !DILocation(line: 0, scope: !3056)
!3060 = !DILocation(line: 0, scope: !3010, inlinedAt: !3061)
!3061 = distinct !DILocation(line: 304, column: 10, scope: !3056)
!3062 = !DILocation(line: 62, column: 24, scope: !3010, inlinedAt: !3061)
!3063 = !DILocation(line: 304, column: 3, scope: !3056)
!3064 = distinct !DISubprogram(name: "rpl_fclose", scope: !575, file: !575, line: 58, type: !3065, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !574, retainedNodes: !3101)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!23, !3067}
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2424, line: 7, baseType: !3069)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !670, line: 49, size: 1728, elements: !3070)
!3070 = !{!3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3069, file: !670, line: 51, baseType: !23, size: 32)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3069, file: !670, line: 54, baseType: !10, size: 64, offset: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3069, file: !670, line: 55, baseType: !10, size: 64, offset: 128)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3069, file: !670, line: 56, baseType: !10, size: 64, offset: 192)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3069, file: !670, line: 57, baseType: !10, size: 64, offset: 256)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3069, file: !670, line: 58, baseType: !10, size: 64, offset: 320)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3069, file: !670, line: 59, baseType: !10, size: 64, offset: 384)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3069, file: !670, line: 60, baseType: !10, size: 64, offset: 448)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3069, file: !670, line: 61, baseType: !10, size: 64, offset: 512)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3069, file: !670, line: 64, baseType: !10, size: 64, offset: 576)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3069, file: !670, line: 65, baseType: !10, size: 64, offset: 640)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3069, file: !670, line: 66, baseType: !10, size: 64, offset: 704)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3069, file: !670, line: 68, baseType: !685, size: 64, offset: 768)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3069, file: !670, line: 70, baseType: !3085, size: 64, offset: 832)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3069, file: !670, line: 72, baseType: !23, size: 32, offset: 896)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3069, file: !670, line: 73, baseType: !23, size: 32, offset: 928)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3069, file: !670, line: 74, baseType: !691, size: 64, offset: 960)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3069, file: !670, line: 77, baseType: !95, size: 16, offset: 1024)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3069, file: !670, line: 78, baseType: !696, size: 8, offset: 1040)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3069, file: !670, line: 79, baseType: !698, size: 8, offset: 1048)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3069, file: !670, line: 81, baseType: !702, size: 64, offset: 1088)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3069, file: !670, line: 89, baseType: !705, size: 64, offset: 1152)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3069, file: !670, line: 91, baseType: !707, size: 64, offset: 1216)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3069, file: !670, line: 92, baseType: !710, size: 64, offset: 1280)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3069, file: !670, line: 93, baseType: !3085, size: 64, offset: 1344)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3069, file: !670, line: 94, baseType: !12, size: 64, offset: 1408)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3069, file: !670, line: 95, baseType: !96, size: 64, offset: 1472)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3069, file: !670, line: 96, baseType: !23, size: 32, offset: 1536)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3069, file: !670, line: 98, baseType: !717, size: 160, offset: 1568)
!3101 = !{!3102, !3103, !3104, !3105}
!3102 = !DILocalVariable(name: "fp", arg: 1, scope: !3064, file: !575, line: 58, type: !3067)
!3103 = !DILocalVariable(name: "saved_errno", scope: !3064, file: !575, line: 60, type: !23)
!3104 = !DILocalVariable(name: "fd", scope: !3064, file: !575, line: 61, type: !23)
!3105 = !DILocalVariable(name: "result", scope: !3064, file: !575, line: 62, type: !23)
!3106 = !DILocation(line: 0, scope: !3064)
!3107 = !DILocation(line: 65, column: 8, scope: !3064)
!3108 = !DILocation(line: 66, column: 10, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3064, file: !575, line: 66, column: 7)
!3110 = !DILocation(line: 66, column: 7, scope: !3064)
!3111 = !DILocation(line: 67, column: 12, scope: !3109)
!3112 = !DILocation(line: 67, column: 5, scope: !3109)
!3113 = !DILocation(line: 72, column: 9, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3064, file: !575, line: 72, column: 7)
!3115 = !DILocation(line: 72, column: 23, scope: !3114)
!3116 = !DILocation(line: 72, column: 33, scope: !3114)
!3117 = !DILocation(line: 72, column: 26, scope: !3114)
!3118 = !DILocation(line: 72, column: 59, scope: !3114)
!3119 = !DILocation(line: 73, column: 7, scope: !3114)
!3120 = !DILocation(line: 73, column: 10, scope: !3114)
!3121 = !DILocation(line: 72, column: 7, scope: !3064)
!3122 = !DILocation(line: 100, column: 12, scope: !3064)
!3123 = !DILocation(line: 105, column: 7, scope: !3064)
!3124 = !DILocation(line: 74, column: 19, scope: !3114)
!3125 = !DILocation(line: 105, column: 19, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3064, file: !575, line: 105, column: 7)
!3127 = !DILocation(line: 107, column: 13, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3126, file: !575, line: 106, column: 5)
!3129 = !DILocation(line: 109, column: 5, scope: !3128)
!3130 = !DILocation(line: 112, column: 1, scope: !3064)
!3131 = !DISubprogram(name: "fileno", scope: !665, file: !665, line: 785, type: !3132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !33)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!23, !3085}
!3134 = !DISubprogram(name: "fclose", scope: !665, file: !665, line: 213, type: !3132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !33)
!3135 = !DISubprogram(name: "lseek", scope: !3136, file: !3136, line: 334, type: !3137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !33)
!3136 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!693, !23, !693, !23}
!3139 = distinct !DISubprogram(name: "rpl_fflush", scope: !577, file: !577, line: 129, type: !3140, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !576, retainedNodes: !3176)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!23, !3142}
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2424, line: 7, baseType: !3144)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !670, line: 49, size: 1728, elements: !3145)
!3145 = !{!3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3144, file: !670, line: 51, baseType: !23, size: 32)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3144, file: !670, line: 54, baseType: !10, size: 64, offset: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3144, file: !670, line: 55, baseType: !10, size: 64, offset: 128)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3144, file: !670, line: 56, baseType: !10, size: 64, offset: 192)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3144, file: !670, line: 57, baseType: !10, size: 64, offset: 256)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3144, file: !670, line: 58, baseType: !10, size: 64, offset: 320)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3144, file: !670, line: 59, baseType: !10, size: 64, offset: 384)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3144, file: !670, line: 60, baseType: !10, size: 64, offset: 448)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3144, file: !670, line: 61, baseType: !10, size: 64, offset: 512)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3144, file: !670, line: 64, baseType: !10, size: 64, offset: 576)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3144, file: !670, line: 65, baseType: !10, size: 64, offset: 640)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3144, file: !670, line: 66, baseType: !10, size: 64, offset: 704)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3144, file: !670, line: 68, baseType: !685, size: 64, offset: 768)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3144, file: !670, line: 70, baseType: !3160, size: 64, offset: 832)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3144, file: !670, line: 72, baseType: !23, size: 32, offset: 896)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3144, file: !670, line: 73, baseType: !23, size: 32, offset: 928)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3144, file: !670, line: 74, baseType: !691, size: 64, offset: 960)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3144, file: !670, line: 77, baseType: !95, size: 16, offset: 1024)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3144, file: !670, line: 78, baseType: !696, size: 8, offset: 1040)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3144, file: !670, line: 79, baseType: !698, size: 8, offset: 1048)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3144, file: !670, line: 81, baseType: !702, size: 64, offset: 1088)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3144, file: !670, line: 89, baseType: !705, size: 64, offset: 1152)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3144, file: !670, line: 91, baseType: !707, size: 64, offset: 1216)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3144, file: !670, line: 92, baseType: !710, size: 64, offset: 1280)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3144, file: !670, line: 93, baseType: !3160, size: 64, offset: 1344)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3144, file: !670, line: 94, baseType: !12, size: 64, offset: 1408)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3144, file: !670, line: 95, baseType: !96, size: 64, offset: 1472)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3144, file: !670, line: 96, baseType: !23, size: 32, offset: 1536)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3144, file: !670, line: 98, baseType: !717, size: 160, offset: 1568)
!3176 = !{!3177}
!3177 = !DILocalVariable(name: "stream", arg: 1, scope: !3139, file: !577, line: 129, type: !3142)
!3178 = !DILocation(line: 0, scope: !3139)
!3179 = !DILocation(line: 150, column: 14, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3139, file: !577, line: 150, column: 7)
!3181 = !DILocation(line: 150, column: 22, scope: !3180)
!3182 = !DILocation(line: 150, column: 27, scope: !3180)
!3183 = !DILocation(line: 150, column: 7, scope: !3139)
!3184 = !DILocation(line: 151, column: 12, scope: !3180)
!3185 = !DILocation(line: 151, column: 5, scope: !3180)
!3186 = !DILocalVariable(name: "fp", arg: 1, scope: !3187, file: !577, line: 41, type: !3142)
!3187 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !577, file: !577, line: 41, type: !3188, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !576, retainedNodes: !3190)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{null, !3142}
!3190 = !{!3186}
!3191 = !DILocation(line: 0, scope: !3187, inlinedAt: !3192)
!3192 = distinct !DILocation(line: 156, column: 3, scope: !3139)
!3193 = !DILocation(line: 43, column: 11, scope: !3194, inlinedAt: !3192)
!3194 = distinct !DILexicalBlock(scope: !3187, file: !577, line: 43, column: 7)
!3195 = !DILocation(line: 43, column: 18, scope: !3194, inlinedAt: !3192)
!3196 = !DILocation(line: 43, column: 7, scope: !3187, inlinedAt: !3192)
!3197 = !DILocation(line: 45, column: 5, scope: !3194, inlinedAt: !3192)
!3198 = !DILocation(line: 158, column: 10, scope: !3139)
!3199 = !DILocation(line: 158, column: 3, scope: !3139)
!3200 = !DILocation(line: 235, column: 1, scope: !3139)
!3201 = !DISubprogram(name: "fflush", scope: !665, file: !665, line: 218, type: !3202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !33)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!23, !3160}
!3204 = distinct !DISubprogram(name: "rpl_fseeko", scope: !579, file: !579, line: 28, type: !3205, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, retainedNodes: !3242)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!23, !3207, !3241, !23}
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2424, line: 7, baseType: !3209)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !670, line: 49, size: 1728, elements: !3210)
!3210 = !{!3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3209, file: !670, line: 51, baseType: !23, size: 32)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3209, file: !670, line: 54, baseType: !10, size: 64, offset: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3209, file: !670, line: 55, baseType: !10, size: 64, offset: 128)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3209, file: !670, line: 56, baseType: !10, size: 64, offset: 192)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3209, file: !670, line: 57, baseType: !10, size: 64, offset: 256)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3209, file: !670, line: 58, baseType: !10, size: 64, offset: 320)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3209, file: !670, line: 59, baseType: !10, size: 64, offset: 384)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3209, file: !670, line: 60, baseType: !10, size: 64, offset: 448)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3209, file: !670, line: 61, baseType: !10, size: 64, offset: 512)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3209, file: !670, line: 64, baseType: !10, size: 64, offset: 576)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3209, file: !670, line: 65, baseType: !10, size: 64, offset: 640)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3209, file: !670, line: 66, baseType: !10, size: 64, offset: 704)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3209, file: !670, line: 68, baseType: !685, size: 64, offset: 768)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3209, file: !670, line: 70, baseType: !3225, size: 64, offset: 832)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3209, file: !670, line: 72, baseType: !23, size: 32, offset: 896)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3209, file: !670, line: 73, baseType: !23, size: 32, offset: 928)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3209, file: !670, line: 74, baseType: !691, size: 64, offset: 960)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3209, file: !670, line: 77, baseType: !95, size: 16, offset: 1024)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3209, file: !670, line: 78, baseType: !696, size: 8, offset: 1040)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3209, file: !670, line: 79, baseType: !698, size: 8, offset: 1048)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3209, file: !670, line: 81, baseType: !702, size: 64, offset: 1088)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3209, file: !670, line: 89, baseType: !705, size: 64, offset: 1152)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3209, file: !670, line: 91, baseType: !707, size: 64, offset: 1216)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3209, file: !670, line: 92, baseType: !710, size: 64, offset: 1280)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3209, file: !670, line: 93, baseType: !3225, size: 64, offset: 1344)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3209, file: !670, line: 94, baseType: !12, size: 64, offset: 1408)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3209, file: !670, line: 95, baseType: !96, size: 64, offset: 1472)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3209, file: !670, line: 96, baseType: !23, size: 32, offset: 1536)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3209, file: !670, line: 98, baseType: !717, size: 160, offset: 1568)
!3241 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !665, line: 63, baseType: !691)
!3242 = !{!3243, !3244, !3245, !3246}
!3243 = !DILocalVariable(name: "fp", arg: 1, scope: !3204, file: !579, line: 28, type: !3207)
!3244 = !DILocalVariable(name: "offset", arg: 2, scope: !3204, file: !579, line: 28, type: !3241)
!3245 = !DILocalVariable(name: "whence", arg: 3, scope: !3204, file: !579, line: 28, type: !23)
!3246 = !DILocalVariable(name: "pos", scope: !3247, file: !579, line: 117, type: !3241)
!3247 = distinct !DILexicalBlock(scope: !3248, file: !579, line: 113, column: 5)
!3248 = distinct !DILexicalBlock(scope: !3204, file: !579, line: 52, column: 7)
!3249 = !DILocation(line: 0, scope: !3204)
!3250 = !DILocation(line: 52, column: 11, scope: !3248)
!3251 = !{!2933, !598, i64 16}
!3252 = !DILocation(line: 52, column: 31, scope: !3248)
!3253 = !{!2933, !598, i64 8}
!3254 = !DILocation(line: 52, column: 24, scope: !3248)
!3255 = !DILocation(line: 53, column: 7, scope: !3248)
!3256 = !DILocation(line: 53, column: 14, scope: !3248)
!3257 = !{!2933, !598, i64 40}
!3258 = !DILocation(line: 53, column: 35, scope: !3248)
!3259 = !{!2933, !598, i64 32}
!3260 = !DILocation(line: 53, column: 28, scope: !3248)
!3261 = !DILocation(line: 54, column: 7, scope: !3248)
!3262 = !DILocation(line: 54, column: 14, scope: !3248)
!3263 = !{!2933, !598, i64 72}
!3264 = !DILocation(line: 54, column: 28, scope: !3248)
!3265 = !DILocation(line: 52, column: 7, scope: !3204)
!3266 = !DILocation(line: 117, column: 26, scope: !3247)
!3267 = !DILocation(line: 117, column: 19, scope: !3247)
!3268 = !DILocation(line: 0, scope: !3247)
!3269 = !DILocation(line: 118, column: 15, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3247, file: !579, line: 118, column: 11)
!3271 = !DILocation(line: 118, column: 11, scope: !3247)
!3272 = !DILocation(line: 129, column: 11, scope: !3247)
!3273 = !DILocation(line: 129, column: 18, scope: !3247)
!3274 = !DILocation(line: 130, column: 11, scope: !3247)
!3275 = !DILocation(line: 130, column: 19, scope: !3247)
!3276 = !{!2933, !1866, i64 144}
!3277 = !DILocation(line: 161, column: 7, scope: !3247)
!3278 = !DILocation(line: 163, column: 10, scope: !3204)
!3279 = !DILocation(line: 163, column: 3, scope: !3204)
!3280 = !DILocation(line: 164, column: 1, scope: !3204)
!3281 = !DISubprogram(name: "fseeko", scope: !665, file: !665, line: 712, type: !3282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !33)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!23, !3225, !693, !23}
