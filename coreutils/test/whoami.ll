; ModuleID = 'coreutils-8.32/src/whoami.bc'
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
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [85 x i8] c"Print the user name associated with the current effective user ID.\0ASame as id -un.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"whoami\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.13 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.24 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.26 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Richard Mlynarik\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"cannot find name for user ID %lu\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), align 8, !dbg !0
@.str.28 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !9
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !14
@.str.31 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.32 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.33 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !17
@opterr = external local_unnamed_addr global i32, align 4
@.str.36 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.37, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.38, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !24
@.str.2.37 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.38 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1.41 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !41
@.str.46 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.47 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.48 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.50, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.51, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.52, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.53, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.54, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.55, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.56, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.57, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.58, i32 0, i32 0), i8* null], align 16, !dbg !49
@.str.49 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.50 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.51 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.52 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.53 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.54 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.55 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.56 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.57 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.58 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !95
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !101
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !113
@.str.11.59 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.60 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.61 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.62 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.63 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.64 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.65 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !120
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !127
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !115
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !129
@.str.70 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.71 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.72 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.73 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.74 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.75 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.76 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.77 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.78 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.79 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.80 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.81 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.82 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.83 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.84 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.85 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.88 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.89 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.90 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.91 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.92 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.93 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.94 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !135
@.str.1.105 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.115 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.118 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.119 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) #0 !dbg !584 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !588, metadata !DIExpression()), !dbg !589
  %3 = icmp eq i32 %0, 0, !dbg !590
  br i1 %3, label %9, label %4, !dbg !592

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !593, !tbaa !595
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #24, !dbg !593
  %7 = load i8*, i8** @program_name, align 8, !dbg !593, !tbaa !595
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #24, !dbg !593
  br label %58, !dbg !593

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 5) #24, !dbg !599
  %11 = load i8*, i8** @program_name, align 8, !dbg !599, !tbaa !595
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #24, !dbg !599
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0), i32 5) #24, !dbg !601
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !601, !tbaa !595
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !601
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #24, !dbg !602
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !602, !tbaa !595
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !602
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #24, !dbg !603
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !603, !tbaa !595
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !603
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), metadata !604, metadata !DIExpression()) #24, !dbg !623
  %22 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !625
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %22) #24, !dbg !625
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !610, metadata !DIExpression()) #24, !dbg !626
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %22, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #24, !dbg !626
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), metadata !619, metadata !DIExpression()) #24, !dbg !623
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !620, metadata !DIExpression()) #24, !dbg !623
  %23 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !627
  call void @llvm.dbg.value(metadata %struct.infomap* %23, metadata !620, metadata !DIExpression()) #24, !dbg !623
  br label %24, !dbg !628

24:                                               ; preds = %29, %9
  %25 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), %9 ]
  %26 = phi %struct.infomap* [ %30, %29 ], [ %23, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !620, metadata !DIExpression()) #24, !dbg !623
  %27 = tail call i32 @strcmp(i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull %25) #25, !dbg !629
  %28 = icmp eq i32 %27, 0, !dbg !629
  br i1 %28, label %34, label %29, !dbg !628

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i64 1, !dbg !630
  call void @llvm.dbg.value(metadata %struct.infomap* %30, metadata !620, metadata !DIExpression()) #24, !dbg !623
  %31 = getelementptr inbounds %struct.infomap, %struct.infomap* %30, i64 0, i32 0, !dbg !631
  %32 = load i8*, i8** %31, align 8, !dbg !631, !tbaa !632
  %33 = icmp eq i8* %32, null, !dbg !634
  br i1 %33, label %34, label %24, !dbg !635, !llvm.loop !636

34:                                               ; preds = %29, %24
  %35 = phi %struct.infomap* [ %26, %24 ], [ %30, %29 ]
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 0, i32 1, !dbg !638
  %37 = load i8*, i8** %36, align 8, !dbg !638, !tbaa !640
  %38 = icmp eq i8* %37, null, !dbg !641
  %39 = select i1 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %37, !dbg !642
  call void @llvm.dbg.value(metadata i8* %39, metadata !619, metadata !DIExpression()) #24, !dbg !623
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i32 5) #24, !dbg !643
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0)) #24, !dbg !643
  %42 = tail call i8* @setlocale(i32 5, i8* null) #24, !dbg !644
  call void @llvm.dbg.value(metadata i8* %42, metadata !622, metadata !DIExpression()) #24, !dbg !623
  %43 = icmp eq i8* %42, null, !dbg !645
  br i1 %43, label %51, label %44, !dbg !647

44:                                               ; preds = %34
  %45 = tail call i32 @strncmp(i8* nonnull %42, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i64 3) #25, !dbg !648
  %46 = icmp eq i32 %45, 0, !dbg !648
  br i1 %46, label %51, label %47, !dbg !649

47:                                               ; preds = %44
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.24, i64 0, i64 0), i32 5) #24, !dbg !650
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !650, !tbaa !595
  %50 = tail call i32 @fputs_unlocked(i8* %48, %struct._IO_FILE* %49) #24, !dbg !650
  br label %51, !dbg !652

51:                                               ; preds = %34, %44, %47
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i64 0, i64 0), i32 5) #24, !dbg !653
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #24, !dbg !653
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.26, i64 0, i64 0), i32 5) #24, !dbg !654
  %55 = icmp eq i8* %39, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), !dbg !654
  %56 = select i1 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !654
  %57 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %54, i8* %39, i8* %56) #24, !dbg !654
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %22) #24, !dbg !655
  br label %58

58:                                               ; preds = %51, %4
  tail call void @exit(i32 %0) #26, !dbg !656
  unreachable, !dbg !656
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !657 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !661 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !717 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !721 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !726, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata i8** %1, metadata !727, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata i32 -1, metadata !745, metadata !DIExpression()), !dbg !746
  %3 = load i8*, i8** %1, align 8, !dbg !747, !tbaa !595
  tail call void @set_program_name(i8* %3) #24, !dbg !748
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #24, !dbg !749
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #24, !dbg !750
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #24, !dbg !751
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #24, !dbg !752
  %8 = load i8*, i8** @Version, align 8, !dbg !753, !tbaa !595
  tail call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %8, i1 zeroext true, void (i32)* nonnull @usage, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* null) #24, !dbg !754
  %9 = load i32, i32* @optind, align 4, !dbg !755, !tbaa !757
  %10 = icmp eq i32 %9, %0, !dbg !759
  br i1 %10, label %18, label %11, !dbg !760

11:                                               ; preds = %2
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 5) #24, !dbg !761
  %13 = load i32, i32* @optind, align 4, !dbg !763, !tbaa !757
  %14 = sext i32 %13 to i64, !dbg !764
  %15 = getelementptr inbounds i8*, i8** %1, i64 %14, !dbg !764
  %16 = load i8*, i8** %15, align 8, !dbg !764, !tbaa !595
  %17 = tail call i8* @quote(i8* %16) #24, !dbg !765
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %12, i8* %17) #24, !dbg !766
  tail call void @usage(i32 1) #27, !dbg !767
  unreachable, !dbg !767

18:                                               ; preds = %2
  %19 = tail call i32* @__errno_location() #28, !dbg !768
  store i32 0, i32* %19, align 4, !dbg !769, !tbaa !757
  %20 = tail call i32 @geteuid() #24, !dbg !770
  call void @llvm.dbg.value(metadata i32 %20, metadata !742, metadata !DIExpression()), !dbg !746
  %21 = icmp eq i32 %20, -1, !dbg !771
  br i1 %21, label %22, label %25, !dbg !772

22:                                               ; preds = %18
  %23 = load i32, i32* %19, align 4, !dbg !773, !tbaa !757
  %24 = icmp eq i32 %23, 0, !dbg !773
  br i1 %24, label %25, label %30, !dbg !774

25:                                               ; preds = %18, %22
  %26 = tail call %struct.passwd* @getpwuid(i32 %20) #24, !dbg !775
  call void @llvm.dbg.value(metadata %struct.passwd* %26, metadata !728, metadata !DIExpression()), !dbg !746
  %27 = icmp eq %struct.passwd* %26, null, !dbg !776
  br i1 %27, label %28, label %34, !dbg !778

28:                                               ; preds = %25
  %29 = load i32, i32* %19, align 4, !dbg !779, !tbaa !757
  br label %30, !dbg !778

30:                                               ; preds = %28, %22
  %31 = phi i32 [ %29, %28 ], [ %23, %22 ], !dbg !779
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 5) #24, !dbg !779
  %33 = zext i32 %20 to i64, !dbg !779
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %31, i8* %32, i64 %33) #24, !dbg !779
  unreachable, !dbg !779

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.passwd, %struct.passwd* %26, i64 0, i32 0, !dbg !780
  %36 = load i8*, i8** %35, align 8, !dbg !780, !tbaa !781
  %37 = tail call i32 @puts(i8* nonnull dereferenceable(1) %36), !dbg !783
  ret i32 0, !dbg !784
}

; Function Attrs: nounwind
declare !dbg !785 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !788 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !791 i32 @atexit(void ()*) local_unnamed_addr #2

declare !dbg !798 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !802 i32 @geteuid() local_unnamed_addr #2

declare !dbg !806 %struct.passwd* @getpwuid(i32) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !809 noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #10 !dbg !812 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !814, metadata !DIExpression()), !dbg !815
  store i8* %0, i8** @file_name, align 8, !dbg !816, !tbaa !595
  ret void, !dbg !817
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #10 !dbg !818 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !822, metadata !DIExpression()), !dbg !823
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !824, !tbaa !825
  ret void, !dbg !827
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !828 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !833, !tbaa !595
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #24, !dbg !834
  %3 = icmp eq i32 %2, 0, !dbg !835
  br i1 %3, label %22, label %4, !dbg !836

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !837, !tbaa !825, !range !838
  %6 = icmp eq i8 %5, 0, !dbg !837
  br i1 %6, label %11, label %7, !dbg !839

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #28, !dbg !840
  %9 = load i32, i32* %8, align 4, !dbg !840, !tbaa !757
  %10 = icmp eq i32 %9, 32, !dbg !841
  br i1 %10, label %22, label %11, !dbg !842

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i32 5) #24, !dbg !843
  call void @llvm.dbg.value(metadata i8* %12, metadata !830, metadata !DIExpression()), !dbg !844
  %13 = load i8*, i8** @file_name, align 8, !dbg !845, !tbaa !595
  %14 = icmp eq i8* %13, null, !dbg !845
  %15 = tail call i32* @__errno_location() #28, !dbg !847
  %16 = load i32, i32* %15, align 4, !dbg !847, !tbaa !757
  br i1 %14, label %19, label %17, !dbg !848

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #24, !dbg !849
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.32, i64 0, i64 0), i8* %18, i8* %12) #24, !dbg !850
  br label %20, !dbg !850

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.33, i64 0, i64 0), i8* %12) #24, !dbg !851
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !852, !tbaa !757
  tail call void @_exit(i32 %21) #26, !dbg !853
  unreachable, !dbg !853

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !854, !tbaa !595
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #24, !dbg !856
  %25 = icmp eq i32 %24, 0, !dbg !857
  br i1 %25, label %28, label %26, !dbg !858

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !859, !tbaa !757
  tail call void @_exit(i32 %27) #26, !dbg !860
  unreachable, !dbg !860

28:                                               ; preds = %22
  ret void, !dbg !861
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_long_options(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, void (i32)* nocapture %5, ...) local_unnamed_addr #8 !dbg !862 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !867, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i8** %1, metadata !868, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i8* %2, metadata !869, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i8* %3, metadata !870, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i8* %4, metadata !871, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !872, metadata !DIExpression()), !dbg !891
  %8 = load i32, i32* @opterr, align 4, !dbg !892, !tbaa !757
  call void @llvm.dbg.value(metadata i32 %8, metadata !874, metadata !DIExpression()), !dbg !891
  store i32 0, i32* @opterr, align 4, !dbg !893, !tbaa !757
  %9 = icmp eq i32 %0, 2, !dbg !894
  br i1 %9, label %10, label %17, !dbg !895

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #24, !dbg !896
  call void @llvm.dbg.value(metadata i32 %11, metadata !873, metadata !DIExpression()), !dbg !891
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !897

12:                                               ; preds = %10
  tail call void %5(i32 0) #24, !dbg !898
  br label %17, !dbg !899

13:                                               ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !900
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #24, !dbg !900
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !875, metadata !DIExpression()), !dbg !901
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !902
  call void @llvm.va_start(i8* nonnull %14), !dbg !902
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !903, !tbaa !595
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #24, !dbg !904
  call void @exit(i32 0) #26, !dbg !905
  unreachable, !dbg !905

17:                                               ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !906, !tbaa !757
  store i32 0, i32* @optind, align 4, !dbg !907, !tbaa !757
  ret void, !dbg !908
}

; Function Attrs: nounwind
declare !dbg !909 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_gnu_standard_options_only(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, i1 zeroext %5, void (i32)* nocapture %6, ...) local_unnamed_addr #8 !dbg !915 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !919, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata i8** %1, metadata !920, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata i8* %2, metadata !921, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata i8* %3, metadata !922, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata i8* %4, metadata !923, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata i1 %5, metadata !924, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !934
  call void @llvm.dbg.value(metadata void (i32)* %6, metadata !925, metadata !DIExpression()), !dbg !934
  %9 = load i32, i32* @opterr, align 4, !dbg !935, !tbaa !757
  call void @llvm.dbg.value(metadata i32 %9, metadata !927, metadata !DIExpression()), !dbg !934
  store i32 1, i32* @opterr, align 4, !dbg !936, !tbaa !757
  %10 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.41, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), !dbg !937
  call void @llvm.dbg.value(metadata i8* %10, metadata !928, metadata !DIExpression()), !dbg !934
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* %10, %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #24, !dbg !938
  call void @llvm.dbg.value(metadata i32 %11, metadata !926, metadata !DIExpression()), !dbg !934
  switch i32 %11, label %16 [
    i32 -1, label %20
    i32 104, label %18
    i32 118, label %12
  ], !dbg !939

12:                                               ; preds = %7
  %13 = bitcast [1 x %struct.__va_list_tag]* %8 to i8*, !dbg !940
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #24, !dbg !940
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %8, metadata !929, metadata !DIExpression()), !dbg !941
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !942
  call void @llvm.va_start(i8* nonnull %13), !dbg !942
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !943, !tbaa !595
  call void @version_etc_va(%struct._IO_FILE* %15, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %14) #24, !dbg !944
  call void @exit(i32 0) #26, !dbg !945
  unreachable, !dbg !945

16:                                               ; preds = %7
  %17 = load volatile i32, i32* @exit_failure, align 4, !dbg !946, !tbaa !757
  br label %18, !dbg !947

18:                                               ; preds = %7, %16
  %19 = phi i32 [ %17, %16 ], [ 0, %7 ]
  tail call void %6(i32 %19) #24, !dbg !948
  br label %20, !dbg !949

20:                                               ; preds = %18, %7
  store i32 %9, i32* @opterr, align 4, !dbg !949, !tbaa !757
  ret void, !dbg !950
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !951 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !953, metadata !DIExpression()), !dbg !956
  %2 = icmp eq i8* %0, null, !dbg !957
  br i1 %2, label %3, label %6, !dbg !959

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !960, !tbaa !595
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.46, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #29, !dbg !962
  tail call void @abort() #26, !dbg !963
  unreachable, !dbg !963

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #25, !dbg !964
  call void @llvm.dbg.value(metadata i8* %7, metadata !954, metadata !DIExpression()), !dbg !956
  %8 = icmp eq i8* %7, null, !dbg !965
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !966
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !966
  call void @llvm.dbg.value(metadata i8* %10, metadata !955, metadata !DIExpression()), !dbg !956
  %11 = ptrtoint i8* %10 to i64, !dbg !967
  %12 = ptrtoint i8* %0 to i64, !dbg !967
  %13 = sub i64 %11, %12, !dbg !967
  %14 = icmp sgt i64 %13, 6, !dbg !969
  br i1 %14, label %15, label %24, !dbg !970

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !971
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.47, i64 0, i64 0), i64 7) #25, !dbg !972
  %18 = icmp eq i32 %17, 0, !dbg !973
  br i1 %18, label %19, label %24, !dbg !974

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !953, metadata !DIExpression()), !dbg !956
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.48, i64 0, i64 0), i64 3) #25, !dbg !975
  %21 = icmp eq i32 %20, 0, !dbg !978
  br i1 %21, label %22, label %24, !dbg !979

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !980
  call void @llvm.dbg.value(metadata i8* %23, metadata !953, metadata !DIExpression()), !dbg !956
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !982, !tbaa !595
  br label %24, !dbg !983

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !953, metadata !DIExpression()), !dbg !956
  store i8* %25, i8** @program_name, align 8, !dbg !984, !tbaa !595
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !985, !tbaa !595
  ret void, !dbg !986
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #13

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !987 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !992, metadata !DIExpression()), !dbg !995
  %2 = tail call i32* @__errno_location() #28, !dbg !996
  %3 = load i32, i32* %2, align 4, !dbg !996, !tbaa !757
  call void @llvm.dbg.value(metadata i32 %3, metadata !993, metadata !DIExpression()), !dbg !995
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !997
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !997
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !997
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #24, !dbg !998
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !998
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !994, metadata !DIExpression()), !dbg !995
  store i32 %3, i32* %2, align 4, !dbg !999, !tbaa !757
  ret %struct.quoting_options* %8, !dbg !1000
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #14 !dbg !1001 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1007, metadata !DIExpression()), !dbg !1008
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1009
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1009
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1010
  %5 = load i32, i32* %4, align 8, !dbg !1010, !tbaa !1011
  ret i32 %5, !dbg !1013
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !1014 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1018, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata i32 %1, metadata !1019, metadata !DIExpression()), !dbg !1020
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1021
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1021
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1022
  store i32 %1, i32* %5, align 8, !dbg !1023, !tbaa !1011
  ret void, !dbg !1024
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #15 !dbg !1025 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1029, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i8 %1, metadata !1030, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i32 %2, metadata !1031, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i8 %1, metadata !1032, metadata !DIExpression()), !dbg !1038
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1039
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1039
  %6 = lshr i8 %1, 5, !dbg !1040
  %7 = zext i8 %6 to i64, !dbg !1040
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1041
  call void @llvm.dbg.value(metadata i32* %8, metadata !1034, metadata !DIExpression()), !dbg !1038
  %9 = and i8 %1, 31, !dbg !1042
  %10 = zext i8 %9 to i32, !dbg !1042
  call void @llvm.dbg.value(metadata i32 %10, metadata !1036, metadata !DIExpression()), !dbg !1038
  %11 = load i32, i32* %8, align 4, !dbg !1043, !tbaa !757
  %12 = lshr i32 %11, %10, !dbg !1044
  %13 = and i32 %12, 1, !dbg !1045
  call void @llvm.dbg.value(metadata i32 %13, metadata !1037, metadata !DIExpression()), !dbg !1038
  %14 = and i32 %2, 1, !dbg !1046
  %15 = xor i32 %13, %14, !dbg !1047
  %16 = shl i32 %15, %10, !dbg !1048
  %17 = xor i32 %16, %11, !dbg !1049
  store i32 %17, i32* %8, align 4, !dbg !1049, !tbaa !757
  ret i32 %13, !dbg !1050
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #15 !dbg !1051 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1055, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i32 %1, metadata !1056, metadata !DIExpression()), !dbg !1058
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1059
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1061
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1055, metadata !DIExpression()), !dbg !1058
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1062
  %6 = load i32, i32* %5, align 4, !dbg !1062, !tbaa !1063
  call void @llvm.dbg.value(metadata i32 %6, metadata !1057, metadata !DIExpression()), !dbg !1058
  store i32 %1, i32* %5, align 4, !dbg !1064, !tbaa !1063
  ret i32 %6, !dbg !1065
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1066 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1070, metadata !DIExpression()), !dbg !1073
  call void @llvm.dbg.value(metadata i8* %1, metadata !1071, metadata !DIExpression()), !dbg !1073
  call void @llvm.dbg.value(metadata i8* %2, metadata !1072, metadata !DIExpression()), !dbg !1073
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1074
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1076
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1070, metadata !DIExpression()), !dbg !1073
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1077
  store i32 10, i32* %6, align 8, !dbg !1078, !tbaa !1011
  %7 = icmp ne i8* %1, null, !dbg !1079
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1081
  br i1 %9, label %11, label %10, !dbg !1081

10:                                               ; preds = %3
  tail call void @abort() #26, !dbg !1082
  unreachable, !dbg !1082

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1083
  store i8* %1, i8** %12, align 8, !dbg !1084, !tbaa !1085
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1086
  store i8* %2, i8** %13, align 8, !dbg !1087, !tbaa !1088
  ret void, !dbg !1089
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1090 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1094, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %1, metadata !1095, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %2, metadata !1096, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %3, metadata !1097, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1098, metadata !DIExpression()), !dbg !1102
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1103
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1103
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1099, metadata !DIExpression()), !dbg !1102
  %8 = tail call i32* @__errno_location() #28, !dbg !1104
  %9 = load i32, i32* %8, align 4, !dbg !1104, !tbaa !757
  call void @llvm.dbg.value(metadata i32 %9, metadata !1100, metadata !DIExpression()), !dbg !1102
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1105
  %11 = load i32, i32* %10, align 8, !dbg !1105, !tbaa !1011
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1106
  %13 = load i32, i32* %12, align 4, !dbg !1106, !tbaa !1063
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1107
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1108
  %16 = load i8*, i8** %15, align 8, !dbg !1108, !tbaa !1085
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1109
  %18 = load i8*, i8** %17, align 8, !dbg !1109, !tbaa !1088
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %19, metadata !1101, metadata !DIExpression()), !dbg !1102
  store i32 %9, i32* %8, align 4, !dbg !1111, !tbaa !757
  ret i64 %19, !dbg !1112
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1113 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1119, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %1, metadata !1120, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8* %2, metadata !1121, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %3, metadata !1122, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i32 %4, metadata !1123, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i32 %5, metadata !1124, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i32* %6, metadata !1125, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8* %7, metadata !1126, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8* %8, metadata !1127, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 0, metadata !1129, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 0, metadata !1130, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8* null, metadata !1131, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 0, metadata !1132, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 0, metadata !1133, metadata !DIExpression()), !dbg !1189
  %13 = tail call i64 @__ctype_get_mb_cur_max() #24, !dbg !1190
  %14 = icmp eq i64 %13, 1, !dbg !1191
  call void @llvm.dbg.value(metadata i1 %14, metadata !1134, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1189
  %15 = lshr i32 %5, 1, !dbg !1192
  %16 = trunc i32 %15 to i8, !dbg !1192
  %17 = and i8 %16, 1, !dbg !1192
  call void @llvm.dbg.value(metadata i8 %17, metadata !1135, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 0, metadata !1136, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 0, metadata !1137, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 1, metadata !1138, metadata !DIExpression()), !dbg !1189
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1193

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1194
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1195
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1196
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1197
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1189
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1198
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1199
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1200
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1120, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %38, metadata !1138, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %37, metadata !1137, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %36, metadata !1136, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %35, metadata !1135, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %34, metadata !1122, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %33, metadata !1133, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %32, metadata !1132, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8* %31, metadata !1131, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %30, metadata !1130, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 0, metadata !1129, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8* %29, metadata !1127, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8* %28, metadata !1126, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i32 %27, metadata !1123, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.label(metadata !1183), !dbg !1201
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
  ], !dbg !1202

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1135, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i32 5, metadata !1123, metadata !DIExpression()), !dbg !1189
  br label %92, !dbg !1203

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1135, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i32 5, metadata !1123, metadata !DIExpression()), !dbg !1189
  %42 = and i8 %35, 1, !dbg !1205
  %43 = icmp eq i8 %42, 0, !dbg !1205
  br i1 %43, label %44, label %92, !dbg !1203

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1207
  br i1 %45, label %92, label %46, !dbg !1210

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1207, !tbaa !1211
  br label %92, !dbg !1207

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.59, i64 0, i64 0), i32 %27), !dbg !1212
  call void @llvm.dbg.value(metadata i8* %48, metadata !1126, metadata !DIExpression()), !dbg !1189
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.60, i64 0, i64 0), i32 %27), !dbg !1216
  call void @llvm.dbg.value(metadata i8* %49, metadata !1127, metadata !DIExpression()), !dbg !1189
  br label %50, !dbg !1217

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1127, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8* %51, metadata !1126, metadata !DIExpression()), !dbg !1189
  %53 = and i8 %35, 1, !dbg !1218
  %54 = icmp eq i8 %53, 0, !dbg !1218
  br i1 %54, label %55, label %70, !dbg !1220

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1131, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 0, metadata !1129, metadata !DIExpression()), !dbg !1189
  %56 = load i8, i8* %51, align 1, !dbg !1221, !tbaa !1211
  %57 = icmp eq i8 %56, 0, !dbg !1224
  br i1 %57, label %70, label %58, !dbg !1224

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1131, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %61, metadata !1129, metadata !DIExpression()), !dbg !1189
  %62 = icmp ult i64 %61, %39, !dbg !1225
  br i1 %62, label %63, label %65, !dbg !1228

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1225
  store i8 %59, i8* %64, align 1, !dbg !1225, !tbaa !1211
  br label %65, !dbg !1225

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1228
  call void @llvm.dbg.value(metadata i64 %66, metadata !1129, metadata !DIExpression()), !dbg !1189
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1229
  call void @llvm.dbg.value(metadata i8* %67, metadata !1131, metadata !DIExpression()), !dbg !1189
  %68 = load i8, i8* %67, align 1, !dbg !1221, !tbaa !1211
  %69 = icmp eq i8 %68, 0, !dbg !1224
  br i1 %69, label %70, label %58, !dbg !1224, !llvm.loop !1230

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1232
  call void @llvm.dbg.value(metadata i64 %71, metadata !1129, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 1, metadata !1133, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8* %52, metadata !1131, metadata !DIExpression()), !dbg !1189
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #25, !dbg !1233
  call void @llvm.dbg.value(metadata i64 %72, metadata !1132, metadata !DIExpression()), !dbg !1189
  br label %92, !dbg !1234

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1133, metadata !DIExpression()), !dbg !1189
  br label %74, !dbg !1235

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1189
  call void @llvm.dbg.value(metadata i8 %75, metadata !1133, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 1, metadata !1135, metadata !DIExpression()), !dbg !1189
  br label %76, !dbg !1236

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1197
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1189
  call void @llvm.dbg.value(metadata i8 %78, metadata !1135, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %77, metadata !1133, metadata !DIExpression()), !dbg !1189
  %79 = and i8 %78, 1, !dbg !1237
  %80 = icmp eq i8 %79, 0, !dbg !1237
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1239
  br label %82, !dbg !1239

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1189
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1192
  call void @llvm.dbg.value(metadata i8 %84, metadata !1135, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %83, metadata !1133, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i32 2, metadata !1123, metadata !DIExpression()), !dbg !1189
  %85 = and i8 %84, 1, !dbg !1240
  %86 = icmp eq i8 %85, 0, !dbg !1240
  br i1 %86, label %87, label %92, !dbg !1242

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1243
  br i1 %88, label %92, label %89, !dbg !1246

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1243, !tbaa !1211
  br label %92, !dbg !1243

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1135, metadata !DIExpression()), !dbg !1189
  br label %92, !dbg !1247

91:                                               ; preds = %26
  call void @abort() #26, !dbg !1248
  unreachable, !dbg !1248

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1232
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.61, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.61, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.61, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.60, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.60, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.60, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.61, i64 0, i64 0), %40 ], !dbg !1189
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1189
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1189
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1189
  call void @llvm.dbg.value(metadata i8 %100, metadata !1135, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %99, metadata !1133, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %98, metadata !1132, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8* %97, metadata !1131, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %96, metadata !1129, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8* %95, metadata !1127, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8* %94, metadata !1126, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i32 %93, metadata !1123, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 0, metadata !1128, metadata !DIExpression()), !dbg !1189
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
  br label %121, !dbg !1249

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1250
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1232
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1194
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1198
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1199
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1200
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1120, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %128, metadata !1138, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %127, metadata !1137, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %126, metadata !1136, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %125, metadata !1122, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %124, metadata !1130, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %123, metadata !1129, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %122, metadata !1128, metadata !DIExpression()), !dbg !1189
  %130 = icmp eq i64 %125, -1, !dbg !1251
  br i1 %130, label %131, label %135, !dbg !1252

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1253
  %133 = load i8, i8* %132, align 1, !dbg !1253, !tbaa !1211
  %134 = icmp eq i8 %133, 0, !dbg !1254
  br i1 %134, label %587, label %137, !dbg !1255

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1256
  br i1 %136, label %587, label %137, !dbg !1255

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1144, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8 0, metadata !1145, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8 0, metadata !1146, metadata !DIExpression()), !dbg !1257
  br i1 %106, label %138, label %153, !dbg !1258

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1260
  %140 = and i1 %107, %130, !dbg !1261
  br i1 %140, label %141, label %143, !dbg !1261

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #25, !dbg !1262
  call void @llvm.dbg.value(metadata i64 %142, metadata !1122, metadata !DIExpression()), !dbg !1189
  br label %143, !dbg !1263

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1263
  call void @llvm.dbg.value(metadata i64 %144, metadata !1122, metadata !DIExpression()), !dbg !1189
  %145 = icmp ugt i64 %139, %144, !dbg !1264
  br i1 %145, label %153, label %146, !dbg !1265

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1266
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1267
  %149 = icmp ne i32 %148, 0, !dbg !1268
  %150 = or i1 %149, %109, !dbg !1269
  %151 = xor i1 %149, true, !dbg !1269
  %152 = zext i1 %151 to i8, !dbg !1269
  br i1 %150, label %153, label %646, !dbg !1269

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1257
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1257
  call void @llvm.dbg.value(metadata i8 %156, metadata !1144, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i64 %154, metadata !1122, metadata !DIExpression()), !dbg !1189
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1270
  %158 = load i8, i8* %157, align 1, !dbg !1270, !tbaa !1211
  call void @llvm.dbg.value(metadata i8 %158, metadata !1139, metadata !DIExpression()), !dbg !1257
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
  ], !dbg !1271

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1272

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1273

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1145, metadata !DIExpression()), !dbg !1257
  %162 = and i8 %126, 1, !dbg !1277
  %163 = icmp eq i8 %162, 0, !dbg !1277
  %164 = and i1 %110, %163, !dbg !1277
  br i1 %164, label %165, label %181, !dbg !1277

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1279
  br i1 %166, label %167, label %169, !dbg !1283

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1279
  store i8 39, i8* %168, align 1, !dbg !1279, !tbaa !1211
  br label %169, !dbg !1279

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1283
  call void @llvm.dbg.value(metadata i64 %170, metadata !1129, metadata !DIExpression()), !dbg !1189
  %171 = icmp ult i64 %170, %129, !dbg !1284
  br i1 %171, label %172, label %174, !dbg !1287

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1284
  store i8 36, i8* %173, align 1, !dbg !1284, !tbaa !1211
  br label %174, !dbg !1284

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1287
  call void @llvm.dbg.value(metadata i64 %175, metadata !1129, metadata !DIExpression()), !dbg !1189
  %176 = icmp ult i64 %175, %129, !dbg !1288
  br i1 %176, label %177, label %179, !dbg !1291

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1288
  store i8 39, i8* %178, align 1, !dbg !1288, !tbaa !1211
  br label %179, !dbg !1288

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1291
  call void @llvm.dbg.value(metadata i64 %180, metadata !1129, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 1, metadata !1136, metadata !DIExpression()), !dbg !1189
  br label %181, !dbg !1292

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1189
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1189
  call void @llvm.dbg.value(metadata i8 %183, metadata !1136, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %182, metadata !1129, metadata !DIExpression()), !dbg !1189
  %184 = icmp ult i64 %182, %129, !dbg !1293
  br i1 %184, label %185, label %187, !dbg !1296

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1293
  store i8 92, i8* %186, align 1, !dbg !1293, !tbaa !1211
  br label %187, !dbg !1293

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1296
  call void @llvm.dbg.value(metadata i64 %188, metadata !1129, metadata !DIExpression()), !dbg !1189
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1297
  br i1 %191, label %192, label %473, !dbg !1297

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1299
  %194 = load i8, i8* %193, align 1, !dbg !1299, !tbaa !1211
  %195 = add i8 %194, -48, !dbg !1300
  %196 = icmp ult i8 %195, 10, !dbg !1300
  br i1 %196, label %197, label %473, !dbg !1300

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1301
  br i1 %198, label %199, label %201, !dbg !1305

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1301
  store i8 48, i8* %200, align 1, !dbg !1301, !tbaa !1211
  br label %201, !dbg !1301

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1305
  call void @llvm.dbg.value(metadata i64 %202, metadata !1129, metadata !DIExpression()), !dbg !1189
  %203 = icmp ult i64 %202, %129, !dbg !1306
  br i1 %203, label %204, label %206, !dbg !1309

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1306
  store i8 48, i8* %205, align 1, !dbg !1306, !tbaa !1211
  br label %206, !dbg !1306

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1309
  call void @llvm.dbg.value(metadata i64 %207, metadata !1129, metadata !DIExpression()), !dbg !1189
  br label %473, !dbg !1310

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1311

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1312

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1313

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1315
  br i1 %214, label %215, label %473, !dbg !1315

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1317
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1318
  %218 = load i8, i8* %217, align 1, !dbg !1318, !tbaa !1211
  %219 = icmp eq i8 %218, 63, !dbg !1319
  br i1 %219, label %220, label %473, !dbg !1320

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1321
  %222 = load i8, i8* %221, align 1, !dbg !1321, !tbaa !1211
  %223 = sext i8 %222 to i32, !dbg !1321
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
  ], !dbg !1322

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1323

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1139, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i64 undef, metadata !1128, metadata !DIExpression()), !dbg !1189
  %226 = icmp ult i64 %123, %129, !dbg !1325
  br i1 %226, label %227, label %229, !dbg !1328

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1325
  store i8 63, i8* %228, align 1, !dbg !1325, !tbaa !1211
  br label %229, !dbg !1325

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !1328
  call void @llvm.dbg.value(metadata i64 %230, metadata !1129, metadata !DIExpression()), !dbg !1189
  %231 = icmp ult i64 %230, %129, !dbg !1329
  br i1 %231, label %232, label %234, !dbg !1332

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1329
  store i8 34, i8* %233, align 1, !dbg !1329, !tbaa !1211
  br label %234, !dbg !1329

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !1332
  call void @llvm.dbg.value(metadata i64 %235, metadata !1129, metadata !DIExpression()), !dbg !1189
  %236 = icmp ult i64 %235, %129, !dbg !1333
  br i1 %236, label %237, label %239, !dbg !1336

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1333
  store i8 34, i8* %238, align 1, !dbg !1333, !tbaa !1211
  br label %239, !dbg !1333

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !1336
  call void @llvm.dbg.value(metadata i64 %240, metadata !1129, metadata !DIExpression()), !dbg !1189
  %241 = icmp ult i64 %240, %129, !dbg !1337
  br i1 %241, label %242, label %244, !dbg !1340

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1337
  store i8 63, i8* %243, align 1, !dbg !1337, !tbaa !1211
  br label %244, !dbg !1337

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !1340
  call void @llvm.dbg.value(metadata i64 %245, metadata !1129, metadata !DIExpression()), !dbg !1189
  br label %473, !dbg !1341

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1143, metadata !DIExpression()), !dbg !1257
  br label %256, !dbg !1342

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1143, metadata !DIExpression()), !dbg !1257
  br label %256, !dbg !1343

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1143, metadata !DIExpression()), !dbg !1257
  br label %254, !dbg !1344

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1143, metadata !DIExpression()), !dbg !1257
  br label %254, !dbg !1345

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1143, metadata !DIExpression()), !dbg !1257
  br label %256, !dbg !1346

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1143, metadata !DIExpression()), !dbg !1257
  br i1 %110, label %252, label %253, !dbg !1347

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !1348

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !1351

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !1353
  call void @llvm.dbg.value(metadata i8 %255, metadata !1143, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.label(metadata !1184), !dbg !1354
  br i1 %111, label %256, label %631, !dbg !1355

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !1353
  call void @llvm.dbg.value(metadata i8 %257, metadata !1143, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.label(metadata !1185), !dbg !1357
  br i1 %102, label %495, label %473, !dbg !1358

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1359

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1360, !tbaa !1211
  %261 = icmp eq i8 %260, 0, !dbg !1362
  br i1 %261, label %262, label %473, !dbg !1363

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !1364
  br i1 %263, label %264, label %473, !dbg !1366

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1146, metadata !DIExpression()), !dbg !1257
  br label %265, !dbg !1367

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1257
  call void @llvm.dbg.value(metadata i8 %266, metadata !1146, metadata !DIExpression()), !dbg !1257
  br i1 %111, label %473, label %631, !dbg !1368

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1137, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 1, metadata !1146, metadata !DIExpression()), !dbg !1257
  br i1 %110, label %268, label %473, !dbg !1370

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !1371

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !1374
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !1376
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !1376
  %274 = select i1 %272, i64 %129, i64 0, !dbg !1376
  call void @llvm.dbg.value(metadata i64 %274, metadata !1120, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %273, metadata !1130, metadata !DIExpression()), !dbg !1189
  %275 = icmp ult i64 %123, %274, !dbg !1377
  br i1 %275, label %276, label %278, !dbg !1380

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1377
  store i8 39, i8* %277, align 1, !dbg !1377, !tbaa !1211
  br label %278, !dbg !1377

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !1380
  call void @llvm.dbg.value(metadata i64 %279, metadata !1129, metadata !DIExpression()), !dbg !1189
  %280 = icmp ult i64 %279, %274, !dbg !1381
  br i1 %280, label %281, label %283, !dbg !1384

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1381
  store i8 92, i8* %282, align 1, !dbg !1381, !tbaa !1211
  br label %283, !dbg !1381

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !1384
  call void @llvm.dbg.value(metadata i64 %284, metadata !1129, metadata !DIExpression()), !dbg !1189
  %285 = icmp ult i64 %284, %274, !dbg !1385
  br i1 %285, label %286, label %288, !dbg !1388

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1385
  store i8 39, i8* %287, align 1, !dbg !1385, !tbaa !1211
  br label %288, !dbg !1385

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !1388
  call void @llvm.dbg.value(metadata i64 %289, metadata !1129, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 0, metadata !1136, metadata !DIExpression()), !dbg !1189
  br label %473, !dbg !1389

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !1390

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1147, metadata !DIExpression()), !dbg !1391
  %292 = tail call i16** @__ctype_b_loc() #28, !dbg !1392
  %293 = load i16*, i16** %292, align 8, !dbg !1392, !tbaa !595
  %294 = zext i8 %158 to i64, !dbg !1392
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1392
  %296 = load i16, i16* %295, align 2, !dbg !1392, !tbaa !1394
  %297 = lshr i16 %296, 14, !dbg !1396
  %298 = trunc i16 %297 to i8, !dbg !1396
  %299 = and i8 %298, 1, !dbg !1396
  call void @llvm.dbg.value(metadata i8 %354, metadata !1150, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i64 %355, metadata !1147, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i64 %306, metadata !1122, metadata !DIExpression()), !dbg !1189
  %300 = icmp eq i8 %299, 0, !dbg !1397
  call void @llvm.dbg.value(metadata i1 %357, metadata !1146, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1257
  br label %359, !dbg !1398

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #24, !dbg !1399
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1151, metadata !DIExpression()), !dbg !1400
  call void @llvm.dbg.value(metadata i8* %23, metadata !1401, metadata !DIExpression()) #24, !dbg !1409
  call void @llvm.dbg.value(metadata i32 0, metadata !1407, metadata !DIExpression()) #24, !dbg !1409
  call void @llvm.dbg.value(metadata i64 8, metadata !1408, metadata !DIExpression()) #24, !dbg !1409
  store i64 0, i64* %10, align 8, !dbg !1411
  call void @llvm.dbg.value(metadata i64 0, metadata !1147, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i8 1, metadata !1150, metadata !DIExpression()), !dbg !1391
  %302 = icmp eq i64 %154, -1, !dbg !1412
  br i1 %302, label %303, label %305, !dbg !1414

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #25, !dbg !1415
  call void @llvm.dbg.value(metadata i64 %304, metadata !1122, metadata !DIExpression()), !dbg !1189
  br label %305, !dbg !1416

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1257
  call void @llvm.dbg.value(metadata i64 %306, metadata !1122, metadata !DIExpression()), !dbg !1189
  br label %307, !dbg !1417

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !1418
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !1419
  call void @llvm.dbg.value(metadata i8 %309, metadata !1150, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i64 %308, metadata !1147, metadata !DIExpression()), !dbg !1391
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1420
  %310 = add i64 %308, %122, !dbg !1421
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !1422
  %312 = sub i64 %306, %310, !dbg !1423
  call void @llvm.dbg.value(metadata i32* %12, metadata !1169, metadata !DIExpression(DW_OP_deref)), !dbg !1424
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #24, !dbg !1425
  call void @llvm.dbg.value(metadata i64 %313, metadata !1172, metadata !DIExpression()), !dbg !1424
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !1426

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1147, metadata !DIExpression()), !dbg !1391
  %315 = icmp ugt i64 %306, %310, !dbg !1427
  br i1 %315, label %316, label %341, !dbg !1429

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !1430
  br label %318, !dbg !1430

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1147, metadata !DIExpression()), !dbg !1391
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !1431
  %322 = load i8, i8* %321, align 1, !dbg !1431, !tbaa !1211
  %323 = icmp eq i8 %322, 0, !dbg !1429
  br i1 %323, label %341, label %324, !dbg !1430

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !1432
  call void @llvm.dbg.value(metadata i64 %325, metadata !1147, metadata !DIExpression()), !dbg !1391
  %326 = add i64 %325, %122, !dbg !1433
  %327 = icmp ult i64 %326, %306, !dbg !1427
  br i1 %327, label %318, label %341, !dbg !1429, !llvm.loop !1434

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !1435
  call void @llvm.dbg.value(metadata i64 1, metadata !1173, metadata !DIExpression()), !dbg !1436
  br i1 %330, label %331, label %344, !dbg !1435

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1173, metadata !DIExpression()), !dbg !1436
  %333 = add i64 %332, %310, !dbg !1437
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !1440
  %335 = load i8, i8* %334, align 1, !dbg !1440, !tbaa !1211
  %336 = sext i8 %335 to i32, !dbg !1440
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !1441

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !1442
  call void @llvm.dbg.value(metadata i64 %338, metadata !1173, metadata !DIExpression()), !dbg !1436
  %339 = icmp eq i64 %338, %313, !dbg !1443
  br i1 %339, label %344, label %331, !dbg !1444, !llvm.loop !1445

340:                                              ; preds = %307
  br label %341, !dbg !1447

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1150, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i64 undef, metadata !1147, metadata !DIExpression()), !dbg !1391
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1447
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !1448, !tbaa !757
  call void @llvm.dbg.value(metadata i32 %345, metadata !1169, metadata !DIExpression()), !dbg !1424
  %346 = call i32 @iswprint(i32 %345) #24, !dbg !1450
  %347 = icmp eq i32 %346, 0, !dbg !1450
  %348 = select i1 %347, i8 0, i8 %309, !dbg !1451
  call void @llvm.dbg.value(metadata i8 %348, metadata !1150, metadata !DIExpression()), !dbg !1391
  %349 = add i64 %313, %308, !dbg !1452
  call void @llvm.dbg.value(metadata i64 %349, metadata !1147, metadata !DIExpression()), !dbg !1391
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1447
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #25, !dbg !1453
  %351 = icmp eq i32 %350, 0, !dbg !1454
  br i1 %351, label %307, label %353, !dbg !1455, !llvm.loop !1456

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1150, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i64 undef, metadata !1147, metadata !DIExpression()), !dbg !1391
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1447
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #24, !dbg !1458
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #24, !dbg !1458
  call void @llvm.dbg.value(metadata i8 %354, metadata !1150, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i64 %355, metadata !1147, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i64 %306, metadata !1122, metadata !DIExpression()), !dbg !1189
  %356 = and i8 %354, 1, !dbg !1397
  %357 = icmp eq i8 %356, 0, !dbg !1397
  call void @llvm.dbg.value(metadata i1 %357, metadata !1146, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1257
  %358 = icmp ugt i64 %355, 1, !dbg !1459
  br i1 %358, label %367, label %359, !dbg !1398

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !1460
  br i1 %364, label %367, label %365, !dbg !1460

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1257
  call void @llvm.dbg.value(metadata i8 %472, metadata !1146, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8 %441, metadata !1145, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8 %440, metadata !1144, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8 %439, metadata !1139, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8 %438, metadata !1136, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %371, metadata !1122, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %437, metadata !1129, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %375, metadata !1128, metadata !DIExpression()), !dbg !1189
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !1461
  call void @llvm.dbg.value(metadata i64 %372, metadata !1180, metadata !DIExpression()), !dbg !1462
  %373 = and i1 %102, %368
  br label %374, !dbg !1463

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1250
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1189
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1198
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1257
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1257
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !1464
  call void @llvm.dbg.value(metadata i8 %380, metadata !1145, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8 %379, metadata !1144, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8 %378, metadata !1139, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8 %377, metadata !1136, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %376, metadata !1129, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %375, metadata !1128, metadata !DIExpression()), !dbg !1189
  br i1 %373, label %381, label %427, !dbg !1465

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !1470

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1145, metadata !DIExpression()), !dbg !1257
  %383 = and i8 %377, 1, !dbg !1473
  %384 = icmp eq i8 %383, 0, !dbg !1473
  %385 = and i1 %110, %384, !dbg !1473
  br i1 %385, label %386, label %402, !dbg !1473

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !1475
  br i1 %387, label %388, label %390, !dbg !1479

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1475
  store i8 39, i8* %389, align 1, !dbg !1475, !tbaa !1211
  br label %390, !dbg !1475

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !1479
  call void @llvm.dbg.value(metadata i64 %391, metadata !1129, metadata !DIExpression()), !dbg !1189
  %392 = icmp ult i64 %391, %129, !dbg !1480
  br i1 %392, label %393, label %395, !dbg !1483

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !1480
  store i8 36, i8* %394, align 1, !dbg !1480, !tbaa !1211
  br label %395, !dbg !1480

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !1483
  call void @llvm.dbg.value(metadata i64 %396, metadata !1129, metadata !DIExpression()), !dbg !1189
  %397 = icmp ult i64 %396, %129, !dbg !1484
  br i1 %397, label %398, label %400, !dbg !1487

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1484
  store i8 39, i8* %399, align 1, !dbg !1484, !tbaa !1211
  br label %400, !dbg !1484

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !1487
  call void @llvm.dbg.value(metadata i64 %401, metadata !1129, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 1, metadata !1136, metadata !DIExpression()), !dbg !1189
  br label %402, !dbg !1488

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1189
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1189
  call void @llvm.dbg.value(metadata i8 %404, metadata !1136, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %403, metadata !1129, metadata !DIExpression()), !dbg !1189
  %405 = icmp ult i64 %403, %129, !dbg !1489
  br i1 %405, label %406, label %408, !dbg !1492

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1489
  store i8 92, i8* %407, align 1, !dbg !1489, !tbaa !1211
  br label %408, !dbg !1489

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !1492
  call void @llvm.dbg.value(metadata i64 %409, metadata !1129, metadata !DIExpression()), !dbg !1189
  %410 = icmp ult i64 %409, %129, !dbg !1493
  br i1 %410, label %411, label %415, !dbg !1496

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !1493
  %413 = or i8 %412, 48, !dbg !1493
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !1493
  store i8 %413, i8* %414, align 1, !dbg !1493, !tbaa !1211
  br label %415, !dbg !1493

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !1496
  call void @llvm.dbg.value(metadata i64 %416, metadata !1129, metadata !DIExpression()), !dbg !1189
  %417 = icmp ult i64 %416, %129, !dbg !1497
  br i1 %417, label %418, label %423, !dbg !1500

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !1497
  %420 = and i8 %419, 7, !dbg !1497
  %421 = or i8 %420, 48, !dbg !1497
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !1497
  store i8 %421, i8* %422, align 1, !dbg !1497, !tbaa !1211
  br label %423, !dbg !1497

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !1500
  call void @llvm.dbg.value(metadata i64 %424, metadata !1129, metadata !DIExpression()), !dbg !1189
  %425 = and i8 %378, 7, !dbg !1501
  %426 = or i8 %425, 48, !dbg !1502
  call void @llvm.dbg.value(metadata i8 %426, metadata !1139, metadata !DIExpression()), !dbg !1257
  br label %436, !dbg !1503

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !1504
  %429 = icmp eq i8 %428, 0, !dbg !1504
  br i1 %429, label %436, label %430, !dbg !1506

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !1507
  br i1 %431, label %432, label %434, !dbg !1511

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1507
  store i8 92, i8* %433, align 1, !dbg !1507, !tbaa !1211
  br label %434, !dbg !1507

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !1511
  call void @llvm.dbg.value(metadata i64 %435, metadata !1129, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 0, metadata !1144, metadata !DIExpression()), !dbg !1257
  br label %436, !dbg !1512

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1189
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1198
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1257
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1257
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1257
  call void @llvm.dbg.value(metadata i8 %441, metadata !1145, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8 %440, metadata !1144, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8 %439, metadata !1139, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8 %438, metadata !1136, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %437, metadata !1129, metadata !DIExpression()), !dbg !1189
  %442 = add i64 %375, 1, !dbg !1513
  %443 = icmp ugt i64 %372, %442, !dbg !1515
  br i1 %443, label %444, label %471, !dbg !1516

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !1517
  %446 = icmp ne i8 %445, 0, !dbg !1517
  %447 = and i8 %441, 1, !dbg !1517
  %448 = icmp eq i8 %447, 0, !dbg !1517
  %449 = and i1 %446, %448, !dbg !1517
  br i1 %449, label %450, label %461, !dbg !1517

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !1520
  br i1 %451, label %452, label %454, !dbg !1524

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !1520
  store i8 39, i8* %453, align 1, !dbg !1520, !tbaa !1211
  br label %454, !dbg !1520

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !1524
  call void @llvm.dbg.value(metadata i64 %455, metadata !1129, metadata !DIExpression()), !dbg !1189
  %456 = icmp ult i64 %455, %129, !dbg !1525
  br i1 %456, label %457, label %459, !dbg !1528

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !1525
  store i8 39, i8* %458, align 1, !dbg !1525, !tbaa !1211
  br label %459, !dbg !1525

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !1528
  call void @llvm.dbg.value(metadata i64 %460, metadata !1129, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 0, metadata !1136, metadata !DIExpression()), !dbg !1189
  br label %461, !dbg !1529

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !1530
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1189
  call void @llvm.dbg.value(metadata i8 %463, metadata !1136, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %462, metadata !1129, metadata !DIExpression()), !dbg !1189
  %464 = icmp ult i64 %462, %129, !dbg !1531
  br i1 %464, label %465, label %467, !dbg !1534

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !1531
  store i8 %439, i8* %466, align 1, !dbg !1531, !tbaa !1211
  br label %467, !dbg !1531

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !1534
  call void @llvm.dbg.value(metadata i64 %468, metadata !1129, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %442, metadata !1128, metadata !DIExpression()), !dbg !1189
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !1535
  %470 = load i8, i8* %469, align 1, !dbg !1535, !tbaa !1211
  call void @llvm.dbg.value(metadata i8 %470, metadata !1139, metadata !DIExpression()), !dbg !1257
  br label %374, !dbg !1536, !llvm.loop !1537

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1257
  call void @llvm.dbg.value(metadata i8 %472, metadata !1146, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8 %441, metadata !1145, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8 %440, metadata !1144, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8 %439, metadata !1139, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8 %438, metadata !1136, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %371, metadata !1122, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %437, metadata !1129, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %375, metadata !1128, metadata !DIExpression()), !dbg !1189
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1250
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1189
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1194
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !1540
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1189
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1189
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1257
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1257
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1257
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1120, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %482, metadata !1146, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8 %481, metadata !1145, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8 %156, metadata !1144, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8 %480, metadata !1139, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8 %479, metadata !1137, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %478, metadata !1136, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %477, metadata !1122, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %476, metadata !1130, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %475, metadata !1129, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %474, metadata !1128, metadata !DIExpression()), !dbg !1189
  br i1 %116, label %494, label %484, !dbg !1541

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !1543
  %486 = zext i8 %485 to i64, !dbg !1543
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !1544
  %488 = load i32, i32* %487, align 4, !dbg !1544, !tbaa !757
  %489 = and i8 %480, 31, !dbg !1545
  %490 = zext i8 %489 to i32, !dbg !1545
  %491 = shl nuw i32 1, %490, !dbg !1546
  %492 = and i32 %488, %491, !dbg !1546
  %493 = icmp eq i32 %492, 0, !dbg !1546
  br i1 %493, label %494, label %495, !dbg !1547

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !1548

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !1549
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1189
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1194
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !1540
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1198
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1199
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1257
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1257
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1120, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %503, metadata !1146, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8 %502, metadata !1139, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8 %501, metadata !1137, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %500, metadata !1136, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %499, metadata !1122, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %498, metadata !1130, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %497, metadata !1129, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %496, metadata !1128, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.label(metadata !1186), !dbg !1550
  br i1 %109, label %505, label %635, !dbg !1551

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1145, metadata !DIExpression()), !dbg !1257
  %506 = and i8 %500, 1, !dbg !1553
  %507 = icmp eq i8 %506, 0, !dbg !1553
  %508 = and i1 %110, %507, !dbg !1553
  br i1 %508, label %509, label %525, !dbg !1553

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !1555
  br i1 %510, label %511, label %513, !dbg !1559

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !1555
  store i8 39, i8* %512, align 1, !dbg !1555, !tbaa !1211
  br label %513, !dbg !1555

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !1559
  call void @llvm.dbg.value(metadata i64 %514, metadata !1129, metadata !DIExpression()), !dbg !1189
  %515 = icmp ult i64 %514, %504, !dbg !1560
  br i1 %515, label %516, label %518, !dbg !1563

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !1560
  store i8 36, i8* %517, align 1, !dbg !1560, !tbaa !1211
  br label %518, !dbg !1560

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !1563
  call void @llvm.dbg.value(metadata i64 %519, metadata !1129, metadata !DIExpression()), !dbg !1189
  %520 = icmp ult i64 %519, %504, !dbg !1564
  br i1 %520, label %521, label %523, !dbg !1567

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1564
  store i8 39, i8* %522, align 1, !dbg !1564, !tbaa !1211
  br label %523, !dbg !1564

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !1567
  call void @llvm.dbg.value(metadata i64 %524, metadata !1129, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 1, metadata !1136, metadata !DIExpression()), !dbg !1189
  br label %525, !dbg !1568

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1257
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1189
  call void @llvm.dbg.value(metadata i8 %527, metadata !1136, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %526, metadata !1129, metadata !DIExpression()), !dbg !1189
  %528 = icmp ult i64 %526, %504, !dbg !1569
  br i1 %528, label %529, label %531, !dbg !1572

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1569
  store i8 92, i8* %530, align 1, !dbg !1569, !tbaa !1211
  br label %531, !dbg !1569

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !1572
  call void @llvm.dbg.value(metadata i64 %543, metadata !1120, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %542, metadata !1146, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8 %541, metadata !1145, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8 %540, metadata !1139, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8 %539, metadata !1137, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %538, metadata !1136, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %537, metadata !1122, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %536, metadata !1130, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %535, metadata !1129, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %534, metadata !1128, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.label(metadata !1187), !dbg !1573
  br label %560, !dbg !1574

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !1549
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1189
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1194
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !1540
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1198
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1199
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !1577
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1257
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1257
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1120, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %542, metadata !1146, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8 %541, metadata !1145, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8 %540, metadata !1139, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8 %539, metadata !1137, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %538, metadata !1136, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %537, metadata !1122, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %536, metadata !1130, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %535, metadata !1129, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %534, metadata !1128, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.label(metadata !1187), !dbg !1573
  %544 = and i8 %538, 1, !dbg !1574
  %545 = icmp ne i8 %544, 0, !dbg !1574
  %546 = and i8 %541, 1, !dbg !1574
  %547 = icmp eq i8 %546, 0, !dbg !1574
  %548 = and i1 %545, %547, !dbg !1574
  br i1 %548, label %549, label %560, !dbg !1574

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !1578
  br i1 %550, label %551, label %553, !dbg !1582

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !1578
  store i8 39, i8* %552, align 1, !dbg !1578, !tbaa !1211
  br label %553, !dbg !1578

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !1582
  call void @llvm.dbg.value(metadata i64 %554, metadata !1129, metadata !DIExpression()), !dbg !1189
  %555 = icmp ult i64 %554, %543, !dbg !1583
  br i1 %555, label %556, label %558, !dbg !1586

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !1583
  store i8 39, i8* %557, align 1, !dbg !1583, !tbaa !1211
  br label %558, !dbg !1583

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !1586
  call void @llvm.dbg.value(metadata i64 %559, metadata !1129, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 0, metadata !1136, metadata !DIExpression()), !dbg !1189
  br label %560, !dbg !1587

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1257
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1189
  call void @llvm.dbg.value(metadata i8 %569, metadata !1136, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %568, metadata !1129, metadata !DIExpression()), !dbg !1189
  %570 = icmp ult i64 %568, %561, !dbg !1588
  br i1 %570, label %571, label %573, !dbg !1591

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !1588
  store i8 %563, i8* %572, align 1, !dbg !1588, !tbaa !1211
  br label %573, !dbg !1588

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !1591
  call void @llvm.dbg.value(metadata i64 %574, metadata !1129, metadata !DIExpression()), !dbg !1189
  %575 = icmp eq i8 %562, 0, !dbg !1592
  %576 = select i1 %575, i8 0, i8 %128, !dbg !1594
  call void @llvm.dbg.value(metadata i8 %576, metadata !1138, metadata !DIExpression()), !dbg !1189
  br label %577, !dbg !1595

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !1549
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1189
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1194
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !1540
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1198
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1189
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1200
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1120, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %584, metadata !1138, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %583, metadata !1137, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %582, metadata !1136, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %581, metadata !1122, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %580, metadata !1130, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %579, metadata !1129, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %578, metadata !1128, metadata !DIExpression()), !dbg !1189
  %586 = add i64 %578, 1, !dbg !1596
  call void @llvm.dbg.value(metadata i64 %586, metadata !1128, metadata !DIExpression()), !dbg !1189
  br label %121, !dbg !1597, !llvm.loop !1598

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !1600
  %590 = and i1 %110, %589, !dbg !1602
  %591 = xor i1 %590, true, !dbg !1602
  %592 = or i1 %109, %591, !dbg !1602
  br i1 %592, label %593, label %635, !dbg !1602

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !1603
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !1603
  br i1 %597, label %598, label %607, !dbg !1603

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !1605
  %600 = icmp eq i8 %599, 0, !dbg !1605
  br i1 %600, label %603, label %601, !dbg !1608

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !1609
  br label %652, !dbg !1610

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !1611
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !1613
  br i1 %606, label %26, label %607, !dbg !1613

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !1614
  %610 = and i1 %609, %608, !dbg !1616
  br i1 %610, label %611, label %626, !dbg !1616

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1131, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %123, metadata !1129, metadata !DIExpression()), !dbg !1189
  %612 = load i8, i8* %97, align 1, !dbg !1617, !tbaa !1211
  %613 = icmp eq i8 %612, 0, !dbg !1620
  br i1 %613, label %626, label %614, !dbg !1620

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1131, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %617, metadata !1129, metadata !DIExpression()), !dbg !1189
  %618 = icmp ult i64 %617, %129, !dbg !1621
  br i1 %618, label %619, label %621, !dbg !1624

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !1621
  store i8 %615, i8* %620, align 1, !dbg !1621, !tbaa !1211
  br label %621, !dbg !1621

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !1624
  call void @llvm.dbg.value(metadata i64 %622, metadata !1129, metadata !DIExpression()), !dbg !1189
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !1625
  call void @llvm.dbg.value(metadata i8* %623, metadata !1131, metadata !DIExpression()), !dbg !1189
  %624 = load i8, i8* %623, align 1, !dbg !1617, !tbaa !1211
  %625 = icmp eq i8 %624, 0, !dbg !1620
  br i1 %625, label %626, label %614, !dbg !1620, !llvm.loop !1626

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1232
  call void @llvm.dbg.value(metadata i64 %627, metadata !1129, metadata !DIExpression()), !dbg !1189
  %628 = icmp ult i64 %627, %129, !dbg !1628
  br i1 %628, label %629, label %652, !dbg !1630

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !1631
  store i8 0, i8* %630, align 1, !dbg !1632, !tbaa !1211
  br label %652, !dbg !1631

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1120, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %637, metadata !1122, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.label(metadata !1188), !dbg !1633
  %633 = icmp eq i8 %101, 0, !dbg !1634
  %634 = select i1 %633, i32 2, i32 4, !dbg !1634
  br label %642, !dbg !1634

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1120, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %637, metadata !1122, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.label(metadata !1188), !dbg !1633
  %639 = icmp eq i32 %93, 2, !dbg !1636
  %640 = icmp eq i8 %636, 0, !dbg !1634
  %641 = select i1 %640, i32 2, i32 4, !dbg !1634
  br i1 %639, label %642, label %646, !dbg !1634

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !1634

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1123, metadata !DIExpression()), !dbg !1189
  %650 = and i32 %5, -3, !dbg !1637
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !1638
  br label %652, !dbg !1639

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !1640
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !1641 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1645, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i32 %1, metadata !1646, metadata !DIExpression()), !dbg !1649
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #24, !dbg !1650
  call void @llvm.dbg.value(metadata i8* %3, metadata !1647, metadata !DIExpression()), !dbg !1649
  %4 = icmp eq i8* %3, %0, !dbg !1651
  br i1 %4, label %5, label %72, !dbg !1653

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #24, !dbg !1654
  call void @llvm.dbg.value(metadata i8* %6, metadata !1648, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8* %6, metadata !1655, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i8* undef, metadata !1661, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i8 85, metadata !1662, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i8 84, metadata !1663, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i8 70, metadata !1664, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i8 45, metadata !1665, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i8 56, metadata !1666, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i8 0, metadata !1667, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i8 0, metadata !1668, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i8 0, metadata !1669, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i8 0, metadata !1670, metadata !DIExpression()), !dbg !1671
  %7 = load i8, i8* %6, align 1, !dbg !1674, !tbaa !1211
  %8 = and i8 %7, -33, !dbg !1674
  %9 = sext i8 %8 to i32, !dbg !1674
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !1674

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1676, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8* undef, metadata !1681, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8 84, metadata !1682, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8 70, metadata !1683, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8 45, metadata !1684, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8 56, metadata !1685, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8 0, metadata !1686, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8 0, metadata !1687, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8 0, metadata !1688, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8 0, metadata !1689, metadata !DIExpression()), !dbg !1690
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1694
  %12 = load i8, i8* %11, align 1, !dbg !1694, !tbaa !1211
  %13 = and i8 %12, -33, !dbg !1694
  %14 = icmp eq i8 %13, 84, !dbg !1694
  br i1 %14, label %15, label %69, !dbg !1694

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !1696, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i8* undef, metadata !1701, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i8 70, metadata !1702, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i8 45, metadata !1703, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i8 56, metadata !1704, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i8 0, metadata !1705, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i8 0, metadata !1706, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i8 0, metadata !1707, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i8 0, metadata !1708, metadata !DIExpression()), !dbg !1709
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1713
  %17 = load i8, i8* %16, align 1, !dbg !1713, !tbaa !1211
  %18 = and i8 %17, -33, !dbg !1713
  %19 = icmp eq i8 %18, 70, !dbg !1713
  br i1 %19, label %20, label %69, !dbg !1713

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !1715, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i8* undef, metadata !1720, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i8 45, metadata !1721, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i8 56, metadata !1722, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i8 0, metadata !1723, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i8 0, metadata !1724, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i8 0, metadata !1725, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i8 0, metadata !1726, metadata !DIExpression()), !dbg !1727
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1731
  %22 = load i8, i8* %21, align 1, !dbg !1731, !tbaa !1211
  %23 = icmp eq i8 %22, 45, !dbg !1731
  br i1 %23, label %24, label %69, !dbg !1733

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !1734, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8* undef, metadata !1739, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8 56, metadata !1740, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8 0, metadata !1741, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8 0, metadata !1742, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8 0, metadata !1743, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8 0, metadata !1744, metadata !DIExpression()), !dbg !1745
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1749
  %26 = load i8, i8* %25, align 1, !dbg !1749, !tbaa !1211
  %27 = icmp eq i8 %26, 56, !dbg !1749
  br i1 %27, label %28, label %69, !dbg !1751

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !1752, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8* undef, metadata !1757, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 0, metadata !1758, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 0, metadata !1759, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 0, metadata !1760, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 0, metadata !1761, metadata !DIExpression()), !dbg !1762
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1766
  %30 = load i8, i8* %29, align 1, !dbg !1766, !tbaa !1211
  %31 = icmp eq i8 %30, 0, !dbg !1766
  br i1 %31, label %32, label %69, !dbg !1768

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !1769, !tbaa !1211
  %34 = icmp eq i8 %33, 96, !dbg !1770
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.62, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.63, i64 0, i64 0), !dbg !1769
  br label %72, !dbg !1771

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1676, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8* undef, metadata !1681, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8 66, metadata !1682, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8 49, metadata !1683, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8 56, metadata !1684, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8 48, metadata !1685, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8 51, metadata !1686, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8 48, metadata !1687, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8 0, metadata !1688, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8 0, metadata !1689, metadata !DIExpression()), !dbg !1772
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1776
  %38 = load i8, i8* %37, align 1, !dbg !1776, !tbaa !1211
  %39 = and i8 %38, -33, !dbg !1776
  %40 = icmp eq i8 %39, 66, !dbg !1776
  br i1 %40, label %41, label %69, !dbg !1776

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !1696, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* undef, metadata !1701, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8 49, metadata !1702, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8 56, metadata !1703, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8 48, metadata !1704, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8 51, metadata !1705, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8 48, metadata !1706, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8 0, metadata !1707, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8 0, metadata !1708, metadata !DIExpression()), !dbg !1777
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1779
  %43 = load i8, i8* %42, align 1, !dbg !1779, !tbaa !1211
  %44 = icmp eq i8 %43, 49, !dbg !1779
  br i1 %44, label %45, label %69, !dbg !1780

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !1715, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i8* undef, metadata !1720, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i8 56, metadata !1721, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i8 48, metadata !1722, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i8 51, metadata !1723, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i8 48, metadata !1724, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i8 0, metadata !1725, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i8 0, metadata !1726, metadata !DIExpression()), !dbg !1781
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1783
  %47 = load i8, i8* %46, align 1, !dbg !1783, !tbaa !1211
  %48 = icmp eq i8 %47, 56, !dbg !1783
  br i1 %48, label %49, label %69, !dbg !1784

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !1734, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8* undef, metadata !1739, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 48, metadata !1740, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 51, metadata !1741, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 48, metadata !1742, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 0, metadata !1743, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 0, metadata !1744, metadata !DIExpression()), !dbg !1785
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1787
  %51 = load i8, i8* %50, align 1, !dbg !1787, !tbaa !1211
  %52 = icmp eq i8 %51, 48, !dbg !1787
  br i1 %52, label %53, label %69, !dbg !1788

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !1752, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8* undef, metadata !1757, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8 51, metadata !1758, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8 48, metadata !1759, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8 0, metadata !1760, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8 0, metadata !1761, metadata !DIExpression()), !dbg !1789
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1791
  %55 = load i8, i8* %54, align 1, !dbg !1791, !tbaa !1211
  %56 = icmp eq i8 %55, 51, !dbg !1791
  br i1 %56, label %57, label %69, !dbg !1792

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !1793, metadata !DIExpression()), !dbg !1802
  call void @llvm.dbg.value(metadata i8* undef, metadata !1798, metadata !DIExpression()), !dbg !1802
  call void @llvm.dbg.value(metadata i8 48, metadata !1799, metadata !DIExpression()), !dbg !1802
  call void @llvm.dbg.value(metadata i8 0, metadata !1800, metadata !DIExpression()), !dbg !1802
  call void @llvm.dbg.value(metadata i8 0, metadata !1801, metadata !DIExpression()), !dbg !1802
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1806
  %59 = load i8, i8* %58, align 1, !dbg !1806, !tbaa !1211
  %60 = icmp eq i8 %59, 48, !dbg !1806
  br i1 %60, label %61, label %69, !dbg !1808

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !1809, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i8* undef, metadata !1814, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i8 0, metadata !1815, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i8 0, metadata !1816, metadata !DIExpression()), !dbg !1817
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1821
  %63 = load i8, i8* %62, align 1, !dbg !1821, !tbaa !1211
  %64 = icmp eq i8 %63, 0, !dbg !1821
  br i1 %64, label %65, label %69, !dbg !1823

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !1824, !tbaa !1211
  %67 = icmp eq i8 %66, 96, !dbg !1825
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.64, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.65, i64 0, i64 0), !dbg !1824
  br label %72, !dbg !1826

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !1827
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.61, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.60, i64 0, i64 0), !dbg !1828
  br label %72, !dbg !1829

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !1649
  ret i8* %73, !dbg !1830
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #16

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1831 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !1835 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !1841 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1845, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 %1, metadata !1846, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1847, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8* %0, metadata !1849, metadata !DIExpression()) #24, !dbg !1862
  call void @llvm.dbg.value(metadata i64 %1, metadata !1854, metadata !DIExpression()) #24, !dbg !1862
  call void @llvm.dbg.value(metadata i64* null, metadata !1855, metadata !DIExpression()) #24, !dbg !1862
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1856, metadata !DIExpression()) #24, !dbg !1862
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1864
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1864
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1857, metadata !DIExpression()) #24, !dbg !1862
  %6 = tail call i32* @__errno_location() #28, !dbg !1865
  %7 = load i32, i32* %6, align 4, !dbg !1865, !tbaa !757
  call void @llvm.dbg.value(metadata i32 %7, metadata !1858, metadata !DIExpression()) #24, !dbg !1862
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1866
  %9 = load i32, i32* %8, align 4, !dbg !1866, !tbaa !1063
  %10 = or i32 %9, 1, !dbg !1867
  call void @llvm.dbg.value(metadata i32 %10, metadata !1859, metadata !DIExpression()) #24, !dbg !1862
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1868
  %12 = load i32, i32* %11, align 8, !dbg !1868, !tbaa !1011
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1869
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1870
  %15 = load i8*, i8** %14, align 8, !dbg !1870, !tbaa !1085
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1871
  %17 = load i8*, i8** %16, align 8, !dbg !1871, !tbaa !1088
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #24, !dbg !1872
  %19 = add i64 %18, 1, !dbg !1873
  call void @llvm.dbg.value(metadata i64 %19, metadata !1860, metadata !DIExpression()) #24, !dbg !1862
  call void @llvm.dbg.value(metadata i64 %19, metadata !1874, metadata !DIExpression()) #24, !dbg !1879
  %20 = tail call noalias i8* @xmalloc(i64 %19) #24, !dbg !1881
  call void @llvm.dbg.value(metadata i8* %20, metadata !1861, metadata !DIExpression()) #24, !dbg !1862
  %21 = load i32, i32* %11, align 8, !dbg !1882, !tbaa !1011
  %22 = load i8*, i8** %14, align 8, !dbg !1883, !tbaa !1085
  %23 = load i8*, i8** %16, align 8, !dbg !1884, !tbaa !1088
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #24, !dbg !1885
  store i32 %7, i32* %6, align 4, !dbg !1886, !tbaa !757
  ret i8* %20, !dbg !1887
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !1850 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1849, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata i64 %1, metadata !1854, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata i64* %2, metadata !1855, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1856, metadata !DIExpression()), !dbg !1888
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1889
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1889
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1857, metadata !DIExpression()), !dbg !1888
  %7 = tail call i32* @__errno_location() #28, !dbg !1890
  %8 = load i32, i32* %7, align 4, !dbg !1890, !tbaa !757
  call void @llvm.dbg.value(metadata i32 %8, metadata !1858, metadata !DIExpression()), !dbg !1888
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1891
  %10 = load i32, i32* %9, align 4, !dbg !1891, !tbaa !1063
  %11 = icmp eq i64* %2, null, !dbg !1892
  %12 = zext i1 %11 to i32, !dbg !1892
  %13 = or i32 %10, %12, !dbg !1893
  call void @llvm.dbg.value(metadata i32 %13, metadata !1859, metadata !DIExpression()), !dbg !1888
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1894
  %15 = load i32, i32* %14, align 8, !dbg !1894, !tbaa !1011
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1895
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1896
  %18 = load i8*, i8** %17, align 8, !dbg !1896, !tbaa !1085
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1897
  %20 = load i8*, i8** %19, align 8, !dbg !1897, !tbaa !1088
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !1898
  %22 = add i64 %21, 1, !dbg !1899
  call void @llvm.dbg.value(metadata i64 %22, metadata !1860, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata i64 %22, metadata !1874, metadata !DIExpression()) #24, !dbg !1900
  %23 = tail call noalias i8* @xmalloc(i64 %22) #24, !dbg !1902
  call void @llvm.dbg.value(metadata i8* %23, metadata !1861, metadata !DIExpression()), !dbg !1888
  %24 = load i32, i32* %14, align 8, !dbg !1903, !tbaa !1011
  %25 = load i8*, i8** %17, align 8, !dbg !1904, !tbaa !1085
  %26 = load i8*, i8** %19, align 8, !dbg !1905, !tbaa !1088
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !1906
  store i32 %8, i32* %7, align 4, !dbg !1907, !tbaa !757
  br i1 %11, label %29, label %28, !dbg !1908

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !1909, !tbaa !1911
  br label %29, !dbg !1913

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !1914
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !1915 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1919, !tbaa !595
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !1917, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i32 1, metadata !1918, metadata !DIExpression()), !dbg !1920
  %2 = load i32, i32* @nslots, align 4, !dbg !1921, !tbaa !757
  %3 = icmp sgt i32 %2, 1, !dbg !1924
  br i1 %3, label %4, label %12, !dbg !1925

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !1924
  br label %6, !dbg !1925

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !1918, metadata !DIExpression()), !dbg !1920
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !1926
  %9 = load i8*, i8** %8, align 8, !dbg !1926, !tbaa !1927
  tail call void @free(i8* %9) #24, !dbg !1929
  %10 = add nuw nsw i64 %7, 1, !dbg !1930
  call void @llvm.dbg.value(metadata i64 %10, metadata !1918, metadata !DIExpression()), !dbg !1920
  %11 = icmp eq i64 %10, %5, !dbg !1924
  br i1 %11, label %12, label %6, !dbg !1925, !llvm.loop !1931

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1933
  %14 = load i8*, i8** %13, align 8, !dbg !1933, !tbaa !1927
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1935
  br i1 %15, label %17, label %16, !dbg !1936

16:                                               ; preds = %12
  tail call void @free(i8* %14) #24, !dbg !1937
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1939, !tbaa !1940
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1941, !tbaa !1927
  br label %17, !dbg !1942

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1943
  br i1 %18, label %21, label %19, !dbg !1945

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !1946
  tail call void @free(i8* %20) #24, !dbg !1948
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1949, !tbaa !595
  br label %21, !dbg !1950

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !1951, !tbaa !757
  ret void, !dbg !1952
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !1953 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1955, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i8* %1, metadata !1956, metadata !DIExpression()), !dbg !1957
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1958
  ret i8* %3, !dbg !1959
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !1960 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1964, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i8* %1, metadata !1965, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i64 %2, metadata !1966, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1967, metadata !DIExpression()), !dbg !1979
  %5 = tail call i32* @__errno_location() #28, !dbg !1980
  %6 = load i32, i32* %5, align 4, !dbg !1980, !tbaa !757
  call void @llvm.dbg.value(metadata i32 %6, metadata !1968, metadata !DIExpression()), !dbg !1979
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1981, !tbaa !595
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !1969, metadata !DIExpression()), !dbg !1979
  %8 = icmp slt i32 %0, 0, !dbg !1982
  br i1 %8, label %9, label %10, !dbg !1984

9:                                                ; preds = %4
  tail call void @abort() #26, !dbg !1985
  unreachable, !dbg !1985

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !1986, !tbaa !757
  %12 = icmp sgt i32 %11, %0, !dbg !1987
  br i1 %12, label %34, label %13, !dbg !1988

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !1989
  call void @llvm.dbg.value(metadata i1 %14, metadata !1970, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1990
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !1973, metadata !DIExpression()), !dbg !1990
  %15 = icmp eq i32 %0, 2147483647, !dbg !1991
  br i1 %15, label %16, label %17, !dbg !1993

16:                                               ; preds = %13
  tail call void @xalloc_die() #26, !dbg !1994
  unreachable, !dbg !1994

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !1995
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !1995
  %20 = add nuw nsw i32 %0, 1, !dbg !1996
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !1997
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #24, !dbg !1998
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !1998
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !1969, metadata !DIExpression()), !dbg !1979
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !1999, !tbaa !595
  br i1 %14, label %25, label %26, !dbg !2000

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2001, !tbaa.struct !2003
  br label %26, !dbg !2004

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2005, !tbaa !757
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2006
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2007
  %31 = sub nsw i32 %20, %27, !dbg !2008
  %32 = sext i32 %31 to i64, !dbg !2009
  %33 = shl nsw i64 %32, 4, !dbg !2010
  call void @llvm.dbg.value(metadata i8* %30, metadata !1401, metadata !DIExpression()) #24, !dbg !2011
  call void @llvm.dbg.value(metadata i32 0, metadata !1407, metadata !DIExpression()) #24, !dbg !2011
  call void @llvm.dbg.value(metadata i64 %33, metadata !1408, metadata !DIExpression()) #24, !dbg !2011
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #24, !dbg !2013
  store i32 %20, i32* @nslots, align 4, !dbg !2014, !tbaa !757
  br label %34, !dbg !2015

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !1979
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !1969, metadata !DIExpression()), !dbg !1979
  %36 = zext i32 %0 to i64, !dbg !2016
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2017
  %38 = load i64, i64* %37, align 8, !dbg !2017, !tbaa !1940
  call void @llvm.dbg.value(metadata i64 %38, metadata !1974, metadata !DIExpression()), !dbg !2018
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2019
  %40 = load i8*, i8** %39, align 8, !dbg !2019, !tbaa !1927
  call void @llvm.dbg.value(metadata i8* %40, metadata !1976, metadata !DIExpression()), !dbg !2018
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2020
  %42 = load i32, i32* %41, align 4, !dbg !2020, !tbaa !1063
  %43 = or i32 %42, 1, !dbg !2021
  call void @llvm.dbg.value(metadata i32 %43, metadata !1977, metadata !DIExpression()), !dbg !2018
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2022
  %45 = load i32, i32* %44, align 8, !dbg !2022, !tbaa !1011
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2023
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2024
  %48 = load i8*, i8** %47, align 8, !dbg !2024, !tbaa !1085
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2025
  %50 = load i8*, i8** %49, align 8, !dbg !2025, !tbaa !1088
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2026
  call void @llvm.dbg.value(metadata i64 %51, metadata !1978, metadata !DIExpression()), !dbg !2018
  %52 = icmp ugt i64 %38, %51, !dbg !2027
  br i1 %52, label %63, label %53, !dbg !2029

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2030
  call void @llvm.dbg.value(metadata i64 %54, metadata !1974, metadata !DIExpression()), !dbg !2018
  store i64 %54, i64* %37, align 8, !dbg !2032, !tbaa !1940
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2033
  br i1 %55, label %57, label %56, !dbg !2035

56:                                               ; preds = %53
  tail call void @free(i8* %40) #24, !dbg !2036
  br label %57, !dbg !2036

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !1874, metadata !DIExpression()) #24, !dbg !2037
  %58 = tail call noalias i8* @xmalloc(i64 %54) #24, !dbg !2039
  call void @llvm.dbg.value(metadata i8* %58, metadata !1976, metadata !DIExpression()), !dbg !2018
  store i8* %58, i8** %39, align 8, !dbg !2040, !tbaa !1927
  %59 = load i32, i32* %44, align 8, !dbg !2041, !tbaa !1011
  %60 = load i8*, i8** %47, align 8, !dbg !2042, !tbaa !1085
  %61 = load i8*, i8** %49, align 8, !dbg !2043, !tbaa !1088
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2044
  br label %63, !dbg !2045

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2018
  call void @llvm.dbg.value(metadata i8* %64, metadata !1976, metadata !DIExpression()), !dbg !2018
  store i32 %6, i32* %5, align 4, !dbg !2046, !tbaa !757
  ret i8* %64, !dbg !2047
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2048 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2052, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i8* %1, metadata !2053, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i64 %2, metadata !2054, metadata !DIExpression()), !dbg !2055
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2056
  ret i8* %4, !dbg !2057
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2058 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2060, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata i32 0, metadata !1955, metadata !DIExpression()) #24, !dbg !2062
  call void @llvm.dbg.value(metadata i8* %0, metadata !1956, metadata !DIExpression()) #24, !dbg !2062
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #24, !dbg !2064
  ret i8* %2, !dbg !2065
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2066 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2070, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %1, metadata !2071, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i32 0, metadata !2052, metadata !DIExpression()) #24, !dbg !2073
  call void @llvm.dbg.value(metadata i8* %0, metadata !2053, metadata !DIExpression()) #24, !dbg !2073
  call void @llvm.dbg.value(metadata i64 %1, metadata !2054, metadata !DIExpression()) #24, !dbg !2073
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #24, !dbg !2075
  ret i8* %3, !dbg !2076
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2077 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2081, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i32 %1, metadata !2082, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i8* %2, metadata !2083, metadata !DIExpression()), !dbg !2085
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2086
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2086
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2084, metadata !DIExpression()), !dbg !2087
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2088), !dbg !2091
  call void @llvm.dbg.value(metadata i32 %1, metadata !2092, metadata !DIExpression()) #24, !dbg !2098
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2097, metadata !DIExpression()) #24, !dbg !2100
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #24, !dbg !2100, !alias.scope !2088
  %6 = icmp eq i32 %1, 10, !dbg !2101
  br i1 %6, label %7, label %8, !dbg !2103

7:                                                ; preds = %3
  tail call void @abort() #26, !dbg !2104, !noalias !2088
  unreachable, !dbg !2104

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2105
  store i32 %1, i32* %9, align 8, !dbg !2106, !tbaa !1011, !alias.scope !2088
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2107
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2108
  ret i8* %10, !dbg !2109
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2110 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2114, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata i32 %1, metadata !2115, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata i8* %2, metadata !2116, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata i64 %3, metadata !2117, metadata !DIExpression()), !dbg !2119
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2120
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2120
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2118, metadata !DIExpression()), !dbg !2121
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2122), !dbg !2125
  call void @llvm.dbg.value(metadata i32 %1, metadata !2092, metadata !DIExpression()) #24, !dbg !2126
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2097, metadata !DIExpression()) #24, !dbg !2128
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #24, !dbg !2128, !alias.scope !2122
  %7 = icmp eq i32 %1, 10, !dbg !2129
  br i1 %7, label %8, label %9, !dbg !2130

8:                                                ; preds = %4
  tail call void @abort() #26, !dbg !2131, !noalias !2122
  unreachable, !dbg !2131

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2132
  store i32 %1, i32* %10, align 8, !dbg !2133, !tbaa !1011, !alias.scope !2122
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2134
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2135
  ret i8* %11, !dbg !2136
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2137 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2141, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8* %1, metadata !2142, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i32 0, metadata !2081, metadata !DIExpression()) #24, !dbg !2144
  call void @llvm.dbg.value(metadata i32 %0, metadata !2082, metadata !DIExpression()) #24, !dbg !2144
  call void @llvm.dbg.value(metadata i8* %1, metadata !2083, metadata !DIExpression()) #24, !dbg !2144
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2146
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2146
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2084, metadata !DIExpression()) #24, !dbg !2147
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2148) #24, !dbg !2151
  call void @llvm.dbg.value(metadata i32 %0, metadata !2092, metadata !DIExpression()) #24, !dbg !2152
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2097, metadata !DIExpression()) #24, !dbg !2154
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #24, !dbg !2154, !alias.scope !2148
  %5 = icmp eq i32 %0, 10, !dbg !2155
  br i1 %5, label %6, label %7, !dbg !2156

6:                                                ; preds = %2
  tail call void @abort() #26, !dbg !2157, !noalias !2148
  unreachable, !dbg !2157

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2158
  store i32 %0, i32* %8, align 8, !dbg !2159, !tbaa !1011, !alias.scope !2148
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #24, !dbg !2160
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2161
  ret i8* %9, !dbg !2162
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2163 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2167, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i8* %1, metadata !2168, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i64 %2, metadata !2169, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i32 0, metadata !2114, metadata !DIExpression()) #24, !dbg !2171
  call void @llvm.dbg.value(metadata i32 %0, metadata !2115, metadata !DIExpression()) #24, !dbg !2171
  call void @llvm.dbg.value(metadata i8* %1, metadata !2116, metadata !DIExpression()) #24, !dbg !2171
  call void @llvm.dbg.value(metadata i64 %2, metadata !2117, metadata !DIExpression()) #24, !dbg !2171
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2173
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2173
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2118, metadata !DIExpression()) #24, !dbg !2174
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2175) #24, !dbg !2178
  call void @llvm.dbg.value(metadata i32 %0, metadata !2092, metadata !DIExpression()) #24, !dbg !2179
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2097, metadata !DIExpression()) #24, !dbg !2181
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #24, !dbg !2181, !alias.scope !2175
  %6 = icmp eq i32 %0, 10, !dbg !2182
  br i1 %6, label %7, label %8, !dbg !2183

7:                                                ; preds = %3
  tail call void @abort() #26, !dbg !2184, !noalias !2175
  unreachable, !dbg !2184

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2185
  store i32 %0, i32* %9, align 8, !dbg !2186, !tbaa !1011, !alias.scope !2175
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #24, !dbg !2187
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2188
  ret i8* %10, !dbg !2189
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2190 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2194, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i64 %1, metadata !2195, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i8 %2, metadata !2196, metadata !DIExpression()), !dbg !2198
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2199
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2199
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2197, metadata !DIExpression()), !dbg !2200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2201, !tbaa.struct !2202
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1029, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i8 %2, metadata !1030, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i32 1, metadata !1031, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i8 %2, metadata !1032, metadata !DIExpression()), !dbg !2203
  %6 = lshr i8 %2, 5, !dbg !2205
  %7 = zext i8 %6 to i64, !dbg !2205
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2206
  call void @llvm.dbg.value(metadata i32* %8, metadata !1034, metadata !DIExpression()), !dbg !2203
  %9 = and i8 %2, 31, !dbg !2207
  %10 = zext i8 %9 to i32, !dbg !2207
  call void @llvm.dbg.value(metadata i32 %10, metadata !1036, metadata !DIExpression()), !dbg !2203
  %11 = load i32, i32* %8, align 4, !dbg !2208, !tbaa !757
  %12 = lshr i32 %11, %10, !dbg !2209
  %13 = and i32 %12, 1, !dbg !2210
  call void @llvm.dbg.value(metadata i32 %13, metadata !1037, metadata !DIExpression()), !dbg !2203
  %14 = xor i32 %13, 1, !dbg !2211
  %15 = shl i32 %14, %10, !dbg !2212
  %16 = xor i32 %15, %11, !dbg !2213
  store i32 %16, i32* %8, align 4, !dbg !2213, !tbaa !757
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2214
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2215
  ret i8* %17, !dbg !2216
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2217 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2221, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i8 %1, metadata !2222, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i8* %0, metadata !2194, metadata !DIExpression()) #24, !dbg !2224
  call void @llvm.dbg.value(metadata i64 -1, metadata !2195, metadata !DIExpression()) #24, !dbg !2224
  call void @llvm.dbg.value(metadata i8 %1, metadata !2196, metadata !DIExpression()) #24, !dbg !2224
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2226
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2226
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2197, metadata !DIExpression()) #24, !dbg !2227
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #24, !dbg !2228, !tbaa.struct !2202
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1029, metadata !DIExpression()) #24, !dbg !2229
  call void @llvm.dbg.value(metadata i8 %1, metadata !1030, metadata !DIExpression()) #24, !dbg !2229
  call void @llvm.dbg.value(metadata i32 1, metadata !1031, metadata !DIExpression()) #24, !dbg !2229
  call void @llvm.dbg.value(metadata i8 %1, metadata !1032, metadata !DIExpression()) #24, !dbg !2229
  %5 = lshr i8 %1, 5, !dbg !2231
  %6 = zext i8 %5 to i64, !dbg !2231
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2232
  call void @llvm.dbg.value(metadata i32* %7, metadata !1034, metadata !DIExpression()) #24, !dbg !2229
  %8 = and i8 %1, 31, !dbg !2233
  %9 = zext i8 %8 to i32, !dbg !2233
  call void @llvm.dbg.value(metadata i32 %9, metadata !1036, metadata !DIExpression()) #24, !dbg !2229
  %10 = load i32, i32* %7, align 4, !dbg !2234, !tbaa !757
  %11 = lshr i32 %10, %9, !dbg !2235
  %12 = and i32 %11, 1, !dbg !2236
  call void @llvm.dbg.value(metadata i32 %12, metadata !1037, metadata !DIExpression()) #24, !dbg !2229
  %13 = xor i32 %12, 1, !dbg !2237
  %14 = shl i32 %13, %9, !dbg !2238
  %15 = xor i32 %14, %10, !dbg !2239
  store i32 %15, i32* %7, align 4, !dbg !2239, !tbaa !757
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #24, !dbg !2240
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2241
  ret i8* %16, !dbg !2242
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2243 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2245, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i8* %0, metadata !2221, metadata !DIExpression()) #24, !dbg !2247
  call void @llvm.dbg.value(metadata i8 58, metadata !2222, metadata !DIExpression()) #24, !dbg !2247
  call void @llvm.dbg.value(metadata i8* %0, metadata !2194, metadata !DIExpression()) #24, !dbg !2249
  call void @llvm.dbg.value(metadata i64 -1, metadata !2195, metadata !DIExpression()) #24, !dbg !2249
  call void @llvm.dbg.value(metadata i8 58, metadata !2196, metadata !DIExpression()) #24, !dbg !2249
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2251
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #24, !dbg !2251
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2197, metadata !DIExpression()) #24, !dbg !2252
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #24, !dbg !2253, !tbaa.struct !2202
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1029, metadata !DIExpression()) #24, !dbg !2254
  call void @llvm.dbg.value(metadata i8 58, metadata !1030, metadata !DIExpression()) #24, !dbg !2254
  call void @llvm.dbg.value(metadata i32 1, metadata !1031, metadata !DIExpression()) #24, !dbg !2254
  call void @llvm.dbg.value(metadata i8 58, metadata !1032, metadata !DIExpression()) #24, !dbg !2254
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2256
  call void @llvm.dbg.value(metadata i32* %4, metadata !1034, metadata !DIExpression()) #24, !dbg !2254
  call void @llvm.dbg.value(metadata i32 26, metadata !1036, metadata !DIExpression()) #24, !dbg !2254
  %5 = load i32, i32* %4, align 4, !dbg !2257, !tbaa !757
  call void @llvm.dbg.value(metadata i32 %5, metadata !1037, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #24, !dbg !2254
  %6 = or i32 %5, 67108864, !dbg !2258
  store i32 %6, i32* %4, align 4, !dbg !2258, !tbaa !757
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #24, !dbg !2259
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #24, !dbg !2260
  ret i8* %7, !dbg !2261
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2262 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2264, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %1, metadata !2265, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i8* %0, metadata !2194, metadata !DIExpression()) #24, !dbg !2267
  call void @llvm.dbg.value(metadata i64 %1, metadata !2195, metadata !DIExpression()) #24, !dbg !2267
  call void @llvm.dbg.value(metadata i8 58, metadata !2196, metadata !DIExpression()) #24, !dbg !2267
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2269
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2269
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2197, metadata !DIExpression()) #24, !dbg !2270
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #24, !dbg !2271, !tbaa.struct !2202
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1029, metadata !DIExpression()) #24, !dbg !2272
  call void @llvm.dbg.value(metadata i8 58, metadata !1030, metadata !DIExpression()) #24, !dbg !2272
  call void @llvm.dbg.value(metadata i32 1, metadata !1031, metadata !DIExpression()) #24, !dbg !2272
  call void @llvm.dbg.value(metadata i8 58, metadata !1032, metadata !DIExpression()) #24, !dbg !2272
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2274
  call void @llvm.dbg.value(metadata i32* %5, metadata !1034, metadata !DIExpression()) #24, !dbg !2272
  call void @llvm.dbg.value(metadata i32 26, metadata !1036, metadata !DIExpression()) #24, !dbg !2272
  %6 = load i32, i32* %5, align 4, !dbg !2275, !tbaa !757
  call void @llvm.dbg.value(metadata i32 %6, metadata !1037, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #24, !dbg !2272
  %7 = or i32 %6, 67108864, !dbg !2276
  store i32 %7, i32* %5, align 4, !dbg !2276, !tbaa !757
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #24, !dbg !2277
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2278
  ret i8* %8, !dbg !2279
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2280 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2097, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2286
  call void @llvm.dbg.value(metadata i32 %0, metadata !2282, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i32 %1, metadata !2283, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i8* %2, metadata !2284, metadata !DIExpression()), !dbg !2288
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2289
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2289
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2285, metadata !DIExpression()), !dbg !2290
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2291
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2291
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2292), !dbg !2291
  call void @llvm.dbg.value(metadata i32 %1, metadata !2092, metadata !DIExpression()) #24, !dbg !2295
  call void @llvm.dbg.value(metadata i32 0, metadata !2097, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2295
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2286, !alias.scope !2292
  %8 = icmp eq i32 %1, 10, !dbg !2296
  br i1 %8, label %9, label %10, !dbg !2297

9:                                                ; preds = %3
  tail call void @abort() #26, !dbg !2298, !noalias !2292
  unreachable, !dbg !2298

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2097, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2295
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2291
  store i32 %1, i32* %11, align 8, !dbg !2291, !tbaa.struct !2202
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2291
  %13 = bitcast i32* %12 to i8*, !dbg !2291
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2291, !tbaa.struct !2299
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2291
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1029, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 58, metadata !1030, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i32 1, metadata !1031, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 58, metadata !1032, metadata !DIExpression()), !dbg !2300
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2302
  call void @llvm.dbg.value(metadata i32* %14, metadata !1034, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i32 26, metadata !1036, metadata !DIExpression()), !dbg !2300
  %15 = load i32, i32* %14, align 4, !dbg !2303, !tbaa !757
  call void @llvm.dbg.value(metadata i32 %15, metadata !1037, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2300
  %16 = or i32 %15, 67108864, !dbg !2304
  store i32 %16, i32* %14, align 4, !dbg !2304, !tbaa !757
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2305
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2306
  ret i8* %17, !dbg !2307
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2308 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2312, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %1, metadata !2313, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %2, metadata !2314, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %3, metadata !2315, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i32 %0, metadata !2317, metadata !DIExpression()) #24, !dbg !2327
  call void @llvm.dbg.value(metadata i8* %1, metadata !2322, metadata !DIExpression()) #24, !dbg !2327
  call void @llvm.dbg.value(metadata i8* %2, metadata !2323, metadata !DIExpression()) #24, !dbg !2327
  call void @llvm.dbg.value(metadata i8* %3, metadata !2324, metadata !DIExpression()) #24, !dbg !2327
  call void @llvm.dbg.value(metadata i64 -1, metadata !2325, metadata !DIExpression()) #24, !dbg !2327
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2329
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2329
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2326, metadata !DIExpression()) #24, !dbg !2330
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #24, !dbg !2331, !tbaa.struct !2202
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1070, metadata !DIExpression()) #24, !dbg !2332
  call void @llvm.dbg.value(metadata i8* %1, metadata !1071, metadata !DIExpression()) #24, !dbg !2332
  call void @llvm.dbg.value(metadata i8* %2, metadata !1072, metadata !DIExpression()) #24, !dbg !2332
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1070, metadata !DIExpression()) #24, !dbg !2332
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2334
  store i32 10, i32* %7, align 8, !dbg !2335, !tbaa !1011
  %8 = icmp ne i8* %1, null, !dbg !2336
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2337
  br i1 %10, label %12, label %11, !dbg !2337

11:                                               ; preds = %4
  tail call void @abort() #26, !dbg !2338
  unreachable, !dbg !2338

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2339
  store i8* %1, i8** %13, align 8, !dbg !2340, !tbaa !1085
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2341
  store i8* %2, i8** %14, align 8, !dbg !2342, !tbaa !1088
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #24, !dbg !2343
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2344
  ret i8* %15, !dbg !2345
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2318 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2317, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i8* %1, metadata !2322, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i8* %2, metadata !2323, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i8* %3, metadata !2324, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i64 %4, metadata !2325, metadata !DIExpression()), !dbg !2346
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2347
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #24, !dbg !2347
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2326, metadata !DIExpression()), !dbg !2348
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2349, !tbaa.struct !2202
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1070, metadata !DIExpression()) #24, !dbg !2350
  call void @llvm.dbg.value(metadata i8* %1, metadata !1071, metadata !DIExpression()) #24, !dbg !2350
  call void @llvm.dbg.value(metadata i8* %2, metadata !1072, metadata !DIExpression()) #24, !dbg !2350
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1070, metadata !DIExpression()) #24, !dbg !2350
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2352
  store i32 10, i32* %8, align 8, !dbg !2353, !tbaa !1011
  %9 = icmp ne i8* %1, null, !dbg !2354
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2355
  br i1 %11, label %13, label %12, !dbg !2355

12:                                               ; preds = %5
  tail call void @abort() #26, !dbg !2356
  unreachable, !dbg !2356

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2357
  store i8* %1, i8** %14, align 8, !dbg !2358, !tbaa !1085
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2359
  store i8* %2, i8** %15, align 8, !dbg !2360, !tbaa !1088
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2361
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #24, !dbg !2362
  ret i8* %16, !dbg !2363
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2364 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2368, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %1, metadata !2369, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %2, metadata !2370, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i32 0, metadata !2312, metadata !DIExpression()) #24, !dbg !2372
  call void @llvm.dbg.value(metadata i8* %0, metadata !2313, metadata !DIExpression()) #24, !dbg !2372
  call void @llvm.dbg.value(metadata i8* %1, metadata !2314, metadata !DIExpression()) #24, !dbg !2372
  call void @llvm.dbg.value(metadata i8* %2, metadata !2315, metadata !DIExpression()) #24, !dbg !2372
  call void @llvm.dbg.value(metadata i32 0, metadata !2317, metadata !DIExpression()) #24, !dbg !2374
  call void @llvm.dbg.value(metadata i8* %0, metadata !2322, metadata !DIExpression()) #24, !dbg !2374
  call void @llvm.dbg.value(metadata i8* %1, metadata !2323, metadata !DIExpression()) #24, !dbg !2374
  call void @llvm.dbg.value(metadata i8* %2, metadata !2324, metadata !DIExpression()) #24, !dbg !2374
  call void @llvm.dbg.value(metadata i64 -1, metadata !2325, metadata !DIExpression()) #24, !dbg !2374
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2376
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2376
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2326, metadata !DIExpression()) #24, !dbg !2377
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #24, !dbg !2378, !tbaa.struct !2202
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1070, metadata !DIExpression()) #24, !dbg !2379
  call void @llvm.dbg.value(metadata i8* %0, metadata !1071, metadata !DIExpression()) #24, !dbg !2379
  call void @llvm.dbg.value(metadata i8* %1, metadata !1072, metadata !DIExpression()) #24, !dbg !2379
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1070, metadata !DIExpression()) #24, !dbg !2379
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2381
  store i32 10, i32* %6, align 8, !dbg !2382, !tbaa !1011
  %7 = icmp ne i8* %0, null, !dbg !2383
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2384
  br i1 %9, label %11, label %10, !dbg !2384

10:                                               ; preds = %3
  tail call void @abort() #26, !dbg !2385
  unreachable, !dbg !2385

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2386
  store i8* %0, i8** %12, align 8, !dbg !2387, !tbaa !1085
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2388
  store i8* %1, i8** %13, align 8, !dbg !2389, !tbaa !1088
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #24, !dbg !2390
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2391
  ret i8* %14, !dbg !2392
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2393 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2397, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i8* %1, metadata !2398, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i8* %2, metadata !2399, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i64 %3, metadata !2400, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i32 0, metadata !2317, metadata !DIExpression()) #24, !dbg !2402
  call void @llvm.dbg.value(metadata i8* %0, metadata !2322, metadata !DIExpression()) #24, !dbg !2402
  call void @llvm.dbg.value(metadata i8* %1, metadata !2323, metadata !DIExpression()) #24, !dbg !2402
  call void @llvm.dbg.value(metadata i8* %2, metadata !2324, metadata !DIExpression()) #24, !dbg !2402
  call void @llvm.dbg.value(metadata i64 %3, metadata !2325, metadata !DIExpression()) #24, !dbg !2402
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2404
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2404
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2326, metadata !DIExpression()) #24, !dbg !2405
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #24, !dbg !2406, !tbaa.struct !2202
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1070, metadata !DIExpression()) #24, !dbg !2407
  call void @llvm.dbg.value(metadata i8* %0, metadata !1071, metadata !DIExpression()) #24, !dbg !2407
  call void @llvm.dbg.value(metadata i8* %1, metadata !1072, metadata !DIExpression()) #24, !dbg !2407
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1070, metadata !DIExpression()) #24, !dbg !2407
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2409
  store i32 10, i32* %7, align 8, !dbg !2410, !tbaa !1011
  %8 = icmp ne i8* %0, null, !dbg !2411
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2412
  br i1 %10, label %12, label %11, !dbg !2412

11:                                               ; preds = %4
  tail call void @abort() #26, !dbg !2413
  unreachable, !dbg !2413

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2414
  store i8* %0, i8** %13, align 8, !dbg !2415, !tbaa !1085
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2416
  store i8* %1, i8** %14, align 8, !dbg !2417, !tbaa !1088
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #24, !dbg !2418
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2419
  ret i8* %15, !dbg !2420
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2421 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2425, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata i8* %1, metadata !2426, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata i64 %2, metadata !2427, metadata !DIExpression()), !dbg !2428
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2429
  ret i8* %4, !dbg !2430
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2431 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2435, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i64 %1, metadata !2436, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i32 0, metadata !2425, metadata !DIExpression()) #24, !dbg !2438
  call void @llvm.dbg.value(metadata i8* %0, metadata !2426, metadata !DIExpression()) #24, !dbg !2438
  call void @llvm.dbg.value(metadata i64 %1, metadata !2427, metadata !DIExpression()) #24, !dbg !2438
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #24, !dbg !2440
  ret i8* %3, !dbg !2441
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2442 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2446, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %1, metadata !2447, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32 %0, metadata !2425, metadata !DIExpression()) #24, !dbg !2449
  call void @llvm.dbg.value(metadata i8* %1, metadata !2426, metadata !DIExpression()) #24, !dbg !2449
  call void @llvm.dbg.value(metadata i64 -1, metadata !2427, metadata !DIExpression()) #24, !dbg !2449
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #24, !dbg !2451
  ret i8* %3, !dbg !2452
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2453 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2457, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i32 0, metadata !2446, metadata !DIExpression()) #24, !dbg !2459
  call void @llvm.dbg.value(metadata i8* %0, metadata !2447, metadata !DIExpression()) #24, !dbg !2459
  call void @llvm.dbg.value(metadata i32 0, metadata !2425, metadata !DIExpression()) #24, !dbg !2461
  call void @llvm.dbg.value(metadata i8* %0, metadata !2426, metadata !DIExpression()) #24, !dbg !2461
  call void @llvm.dbg.value(metadata i64 -1, metadata !2427, metadata !DIExpression()) #24, !dbg !2461
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #24, !dbg !2463
  ret i8* %2, !dbg !2464
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2465 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2505, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8* %1, metadata !2506, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8* %2, metadata !2507, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8* %3, metadata !2508, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8** %4, metadata !2509, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i64 %5, metadata !2510, metadata !DIExpression()), !dbg !2511
  %7 = icmp eq i8* %1, null, !dbg !2512
  br i1 %7, label %10, label %8, !dbg !2514

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #24, !dbg !2515
  br label %12, !dbg !2515

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.71, i64 0, i64 0), i8* %2, i8* %3) #24, !dbg !2516
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.72, i64 0, i64 0), i32 5) #24, !dbg !2517
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #24, !dbg !2517
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.73, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2518
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.74, i64 0, i64 0), i32 5) #24, !dbg !2519
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.75, i64 0, i64 0)) #24, !dbg !2519
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.73, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2520
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
  ], !dbg !2521

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.76, i64 0, i64 0), i32 5) #24, !dbg !2522
  %21 = load i8*, i8** %4, align 8, !dbg !2522, !tbaa !595
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #24, !dbg !2522
  br label %147, !dbg !2524

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.77, i64 0, i64 0), i32 5) #24, !dbg !2525
  %25 = load i8*, i8** %4, align 8, !dbg !2525, !tbaa !595
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2525
  %27 = load i8*, i8** %26, align 8, !dbg !2525, !tbaa !595
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #24, !dbg !2525
  br label %147, !dbg !2526

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.78, i64 0, i64 0), i32 5) #24, !dbg !2527
  %31 = load i8*, i8** %4, align 8, !dbg !2527, !tbaa !595
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2527
  %33 = load i8*, i8** %32, align 8, !dbg !2527, !tbaa !595
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2527
  %35 = load i8*, i8** %34, align 8, !dbg !2527, !tbaa !595
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #24, !dbg !2527
  br label %147, !dbg !2528

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.79, i64 0, i64 0), i32 5) #24, !dbg !2529
  %39 = load i8*, i8** %4, align 8, !dbg !2529, !tbaa !595
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2529
  %41 = load i8*, i8** %40, align 8, !dbg !2529, !tbaa !595
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2529
  %43 = load i8*, i8** %42, align 8, !dbg !2529, !tbaa !595
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2529
  %45 = load i8*, i8** %44, align 8, !dbg !2529, !tbaa !595
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #24, !dbg !2529
  br label %147, !dbg !2530

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.80, i64 0, i64 0), i32 5) #24, !dbg !2531
  %49 = load i8*, i8** %4, align 8, !dbg !2531, !tbaa !595
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2531
  %51 = load i8*, i8** %50, align 8, !dbg !2531, !tbaa !595
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2531
  %53 = load i8*, i8** %52, align 8, !dbg !2531, !tbaa !595
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2531
  %55 = load i8*, i8** %54, align 8, !dbg !2531, !tbaa !595
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2531
  %57 = load i8*, i8** %56, align 8, !dbg !2531, !tbaa !595
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #24, !dbg !2531
  br label %147, !dbg !2532

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.81, i64 0, i64 0), i32 5) #24, !dbg !2533
  %61 = load i8*, i8** %4, align 8, !dbg !2533, !tbaa !595
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2533
  %63 = load i8*, i8** %62, align 8, !dbg !2533, !tbaa !595
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2533
  %65 = load i8*, i8** %64, align 8, !dbg !2533, !tbaa !595
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2533
  %67 = load i8*, i8** %66, align 8, !dbg !2533, !tbaa !595
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2533
  %69 = load i8*, i8** %68, align 8, !dbg !2533, !tbaa !595
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2533
  %71 = load i8*, i8** %70, align 8, !dbg !2533, !tbaa !595
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #24, !dbg !2533
  br label %147, !dbg !2534

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.82, i64 0, i64 0), i32 5) #24, !dbg !2535
  %75 = load i8*, i8** %4, align 8, !dbg !2535, !tbaa !595
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2535
  %77 = load i8*, i8** %76, align 8, !dbg !2535, !tbaa !595
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2535
  %79 = load i8*, i8** %78, align 8, !dbg !2535, !tbaa !595
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2535
  %81 = load i8*, i8** %80, align 8, !dbg !2535, !tbaa !595
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2535
  %83 = load i8*, i8** %82, align 8, !dbg !2535, !tbaa !595
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2535
  %85 = load i8*, i8** %84, align 8, !dbg !2535, !tbaa !595
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2535
  %87 = load i8*, i8** %86, align 8, !dbg !2535, !tbaa !595
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #24, !dbg !2535
  br label %147, !dbg !2536

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.83, i64 0, i64 0), i32 5) #24, !dbg !2537
  %91 = load i8*, i8** %4, align 8, !dbg !2537, !tbaa !595
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2537
  %93 = load i8*, i8** %92, align 8, !dbg !2537, !tbaa !595
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2537
  %95 = load i8*, i8** %94, align 8, !dbg !2537, !tbaa !595
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2537
  %97 = load i8*, i8** %96, align 8, !dbg !2537, !tbaa !595
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2537
  %99 = load i8*, i8** %98, align 8, !dbg !2537, !tbaa !595
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2537
  %101 = load i8*, i8** %100, align 8, !dbg !2537, !tbaa !595
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2537
  %103 = load i8*, i8** %102, align 8, !dbg !2537, !tbaa !595
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2537
  %105 = load i8*, i8** %104, align 8, !dbg !2537, !tbaa !595
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #24, !dbg !2537
  br label %147, !dbg !2538

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.84, i64 0, i64 0), i32 5) #24, !dbg !2539
  %109 = load i8*, i8** %4, align 8, !dbg !2539, !tbaa !595
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2539
  %111 = load i8*, i8** %110, align 8, !dbg !2539, !tbaa !595
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2539
  %113 = load i8*, i8** %112, align 8, !dbg !2539, !tbaa !595
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2539
  %115 = load i8*, i8** %114, align 8, !dbg !2539, !tbaa !595
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2539
  %117 = load i8*, i8** %116, align 8, !dbg !2539, !tbaa !595
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2539
  %119 = load i8*, i8** %118, align 8, !dbg !2539, !tbaa !595
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2539
  %121 = load i8*, i8** %120, align 8, !dbg !2539, !tbaa !595
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2539
  %123 = load i8*, i8** %122, align 8, !dbg !2539, !tbaa !595
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2539
  %125 = load i8*, i8** %124, align 8, !dbg !2539, !tbaa !595
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #24, !dbg !2539
  br label %147, !dbg !2540

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.85, i64 0, i64 0), i32 5) #24, !dbg !2541
  %129 = load i8*, i8** %4, align 8, !dbg !2541, !tbaa !595
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2541
  %131 = load i8*, i8** %130, align 8, !dbg !2541, !tbaa !595
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2541
  %133 = load i8*, i8** %132, align 8, !dbg !2541, !tbaa !595
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2541
  %135 = load i8*, i8** %134, align 8, !dbg !2541, !tbaa !595
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2541
  %137 = load i8*, i8** %136, align 8, !dbg !2541, !tbaa !595
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2541
  %139 = load i8*, i8** %138, align 8, !dbg !2541, !tbaa !595
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2541
  %141 = load i8*, i8** %140, align 8, !dbg !2541, !tbaa !595
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2541
  %143 = load i8*, i8** %142, align 8, !dbg !2541, !tbaa !595
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2541
  %145 = load i8*, i8** %144, align 8, !dbg !2541, !tbaa !595
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #24, !dbg !2541
  br label %147, !dbg !2542

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2543
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !2544 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2548, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8* %1, metadata !2549, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8* %2, metadata !2550, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8* %3, metadata !2551, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8** %4, metadata !2552, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i64 0, metadata !2553, metadata !DIExpression()), !dbg !2554
  br label %6, !dbg !2555

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2557
  call void @llvm.dbg.value(metadata i64 %7, metadata !2553, metadata !DIExpression()), !dbg !2554
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2558
  %9 = load i8*, i8** %8, align 8, !dbg !2558, !tbaa !595
  %10 = icmp eq i8* %9, null, !dbg !2560
  %11 = add i64 %7, 1, !dbg !2561
  call void @llvm.dbg.value(metadata i64 %11, metadata !2553, metadata !DIExpression()), !dbg !2554
  br i1 %10, label %12, label %6, !dbg !2560, !llvm.loop !2562

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2564
  ret void, !dbg !2565
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !2566 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2577, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8* %1, metadata !2578, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8* %2, metadata !2579, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8* %3, metadata !2580, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2581, metadata !DIExpression()), !dbg !2585
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2586
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #24, !dbg !2586
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2583, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i64 0, metadata !2582, metadata !DIExpression()), !dbg !2585
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !2582, metadata !DIExpression()), !dbg !2585
  %11 = load i32, i32* %8, align 8, !dbg !2588
  %12 = icmp ult i32 %11, 41, !dbg !2588
  br i1 %12, label %13, label %18, !dbg !2588

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2588
  %15 = zext i32 %11 to i64, !dbg !2588
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2588
  %17 = add nuw nsw i32 %11, 8, !dbg !2588
  store i32 %17, i32* %8, align 8, !dbg !2588
  br label %21, !dbg !2588

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2588
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2588
  store i8* %20, i8** %9, align 8, !dbg !2588
  br label %21, !dbg !2588

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2588
  %25 = load i8*, i8** %24, align 8, !dbg !2588
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2591
  store i8* %25, i8** %26, align 16, !dbg !2592, !tbaa !595
  %27 = icmp eq i8* %25, null, !dbg !2593
  br i1 %27, label %30, label %28, !dbg !2594

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2582, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 1, metadata !2582, metadata !DIExpression()), !dbg !2585
  %29 = icmp ult i32 %22, 41, !dbg !2588
  br i1 %29, label %35, label %32, !dbg !2588

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2595
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2596
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #24, !dbg !2597
  ret void, !dbg !2597

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2588
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2588
  store i8* %34, i8** %9, align 8, !dbg !2588
  br label %40, !dbg !2588

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2588
  %37 = zext i32 %22 to i64, !dbg !2588
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2588
  %39 = add nuw nsw i32 %22, 8, !dbg !2588
  store i32 %39, i32* %8, align 8, !dbg !2588
  br label %40, !dbg !2588

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2588
  %44 = load i8*, i8** %43, align 8, !dbg !2588
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2591
  store i8* %44, i8** %45, align 8, !dbg !2592, !tbaa !595
  %46 = icmp eq i8* %44, null, !dbg !2593
  br i1 %46, label %30, label %47, !dbg !2594

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2582, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 2, metadata !2582, metadata !DIExpression()), !dbg !2585
  %48 = icmp ult i32 %41, 41, !dbg !2588
  br i1 %48, label %52, label %49, !dbg !2588

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2588
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2588
  store i8* %51, i8** %9, align 8, !dbg !2588
  br label %57, !dbg !2588

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2588
  %54 = zext i32 %41 to i64, !dbg !2588
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2588
  %56 = add nuw nsw i32 %41, 8, !dbg !2588
  store i32 %56, i32* %8, align 8, !dbg !2588
  br label %57, !dbg !2588

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2588
  %61 = load i8*, i8** %60, align 8, !dbg !2588
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2591
  store i8* %61, i8** %62, align 16, !dbg !2592, !tbaa !595
  %63 = icmp eq i8* %61, null, !dbg !2593
  br i1 %63, label %30, label %64, !dbg !2594

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2582, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 3, metadata !2582, metadata !DIExpression()), !dbg !2585
  %65 = icmp ult i32 %58, 41, !dbg !2588
  br i1 %65, label %69, label %66, !dbg !2588

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2588
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2588
  store i8* %68, i8** %9, align 8, !dbg !2588
  br label %74, !dbg !2588

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2588
  %71 = zext i32 %58 to i64, !dbg !2588
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2588
  %73 = add nuw nsw i32 %58, 8, !dbg !2588
  store i32 %73, i32* %8, align 8, !dbg !2588
  br label %74, !dbg !2588

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2588
  %78 = load i8*, i8** %77, align 8, !dbg !2588
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2591
  store i8* %78, i8** %79, align 8, !dbg !2592, !tbaa !595
  %80 = icmp eq i8* %78, null, !dbg !2593
  br i1 %80, label %30, label %81, !dbg !2594

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2582, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 4, metadata !2582, metadata !DIExpression()), !dbg !2585
  %82 = icmp ult i32 %75, 41, !dbg !2588
  br i1 %82, label %86, label %83, !dbg !2588

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2588
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2588
  store i8* %85, i8** %9, align 8, !dbg !2588
  br label %91, !dbg !2588

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2588
  %88 = zext i32 %75 to i64, !dbg !2588
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2588
  %90 = add nuw nsw i32 %75, 8, !dbg !2588
  store i32 %90, i32* %8, align 8, !dbg !2588
  br label %91, !dbg !2588

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2588
  %95 = load i8*, i8** %94, align 8, !dbg !2588
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2591
  store i8* %95, i8** %96, align 16, !dbg !2592, !tbaa !595
  %97 = icmp eq i8* %95, null, !dbg !2593
  br i1 %97, label %30, label %98, !dbg !2594

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2582, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 5, metadata !2582, metadata !DIExpression()), !dbg !2585
  %99 = icmp ult i32 %92, 41, !dbg !2588
  br i1 %99, label %103, label %100, !dbg !2588

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2588
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2588
  store i8* %102, i8** %9, align 8, !dbg !2588
  br label %108, !dbg !2588

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2588
  %105 = zext i32 %92 to i64, !dbg !2588
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2588
  %107 = add nuw nsw i32 %92, 8, !dbg !2588
  store i32 %107, i32* %8, align 8, !dbg !2588
  br label %108, !dbg !2588

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2588
  %111 = load i8*, i8** %110, align 8, !dbg !2588
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2591
  store i8* %111, i8** %112, align 8, !dbg !2592, !tbaa !595
  %113 = icmp eq i8* %111, null, !dbg !2593
  br i1 %113, label %30, label %114, !dbg !2594

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2582, metadata !DIExpression()), !dbg !2585
  %115 = load i8*, i8** %9, align 8, !dbg !2588
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2588
  store i8* %116, i8** %9, align 8, !dbg !2588
  %117 = bitcast i8* %115 to i8**, !dbg !2588
  %118 = load i8*, i8** %117, align 8, !dbg !2588
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2591
  store i8* %118, i8** %119, align 16, !dbg !2592, !tbaa !595
  %120 = icmp eq i8* %118, null, !dbg !2593
  br i1 %120, label %30, label %121, !dbg !2594

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2582, metadata !DIExpression()), !dbg !2585
  %122 = load i8*, i8** %9, align 8, !dbg !2588
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2588
  store i8* %123, i8** %9, align 8, !dbg !2588
  %124 = bitcast i8* %122 to i8**, !dbg !2588
  %125 = load i8*, i8** %124, align 8, !dbg !2588
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2591
  store i8* %125, i8** %126, align 8, !dbg !2592, !tbaa !595
  %127 = icmp eq i8* %125, null, !dbg !2593
  br i1 %127, label %30, label %128, !dbg !2594

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2582, metadata !DIExpression()), !dbg !2585
  %129 = load i8*, i8** %9, align 8, !dbg !2588
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2588
  store i8* %130, i8** %9, align 8, !dbg !2588
  %131 = bitcast i8* %129 to i8**, !dbg !2588
  %132 = load i8*, i8** %131, align 8, !dbg !2588
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2591
  store i8* %132, i8** %133, align 16, !dbg !2592, !tbaa !595
  %134 = icmp eq i8* %132, null, !dbg !2593
  br i1 %134, label %30, label %135, !dbg !2594

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2582, metadata !DIExpression()), !dbg !2585
  %136 = load i8*, i8** %9, align 8, !dbg !2588
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2588
  store i8* %137, i8** %9, align 8, !dbg !2588
  %138 = bitcast i8* %136 to i8**, !dbg !2588
  %139 = load i8*, i8** %138, align 8, !dbg !2588
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2591
  store i8* %139, i8** %140, align 8, !dbg !2592, !tbaa !595
  %141 = icmp eq i8* %139, null, !dbg !2593
  %142 = select i1 %141, i64 9, i64 10, !dbg !2594
  br label %30, !dbg !2594
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !2598 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2602, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i8* %1, metadata !2603, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i8* %2, metadata !2604, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i8* %3, metadata !2605, metadata !DIExpression()), !dbg !2611
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2612
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #24, !dbg !2612
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2606, metadata !DIExpression()), !dbg !2613
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2614
  call void @llvm.va_start(i8* nonnull %6), !dbg !2614
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2615
  call void @llvm.va_end(i8* nonnull %6), !dbg !2616
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #24, !dbg !2617
  ret void, !dbg !2617
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !2618 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2619, !tbaa !595
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.73, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2619
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.88, i64 0, i64 0), i32 5) #24, !dbg !2620
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.89, i64 0, i64 0)) #24, !dbg !2620
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.90, i64 0, i64 0), i32 5) #24, !dbg !2621
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.91, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.92, i64 0, i64 0)) #24, !dbg !2621
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.93, i64 0, i64 0), i32 5) #24, !dbg !2622
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.94, i64 0, i64 0)) #24, !dbg !2622
  ret void, !dbg !2623
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #21 !dbg !2624 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2628, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %1, metadata !2629, metadata !DIExpression()), !dbg !2630
  %3 = udiv i64 9223372036854775807, %1, !dbg !2631
  %4 = icmp ult i64 %3, %0, !dbg !2631
  br i1 %4, label %5, label %6, !dbg !2633

5:                                                ; preds = %2
  tail call void @xalloc_die() #26, !dbg !2634
  unreachable, !dbg !2634

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2635
  call void @llvm.dbg.value(metadata i64 %7, metadata !2636, metadata !DIExpression()) #24, !dbg !2642
  %8 = tail call noalias i8* @malloc(i64 %7) #24, !dbg !2644
  call void @llvm.dbg.value(metadata i8* %8, metadata !2641, metadata !DIExpression()) #24, !dbg !2642
  %9 = icmp eq i8* %8, null, !dbg !2645
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !2647
  br i1 %11, label %12, label %13, !dbg !2647

12:                                               ; preds = %6
  tail call void @xalloc_die() #26, !dbg !2648
  unreachable, !dbg !2648

13:                                               ; preds = %6
  ret i8* %8, !dbg !2649
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !2637 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2636, metadata !DIExpression()), !dbg !2650
  %2 = tail call noalias i8* @malloc(i64 %0) #24, !dbg !2651
  call void @llvm.dbg.value(metadata i8* %2, metadata !2641, metadata !DIExpression()), !dbg !2650
  %3 = icmp eq i8* %2, null, !dbg !2652
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2653
  br i1 %5, label %6, label %7, !dbg !2653

6:                                                ; preds = %1
  tail call void @xalloc_die() #26, !dbg !2654
  unreachable, !dbg !2654

7:                                                ; preds = %1
  ret i8* %2, !dbg !2655
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #21 !dbg !2656 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2660, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i64 %1, metadata !2661, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i64 %2, metadata !2662, metadata !DIExpression()), !dbg !2663
  %4 = udiv i64 9223372036854775807, %2, !dbg !2664
  %5 = icmp ult i64 %4, %1, !dbg !2664
  br i1 %5, label %6, label %7, !dbg !2666

6:                                                ; preds = %3
  tail call void @xalloc_die() #26, !dbg !2667
  unreachable, !dbg !2667

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2668
  call void @llvm.dbg.value(metadata i8* %0, metadata !2669, metadata !DIExpression()) #24, !dbg !2675
  call void @llvm.dbg.value(metadata i64 %8, metadata !2674, metadata !DIExpression()) #24, !dbg !2675
  %9 = icmp eq i64 %8, 0, !dbg !2677
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !2679
  br i1 %11, label %12, label %13, !dbg !2679

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #24, !dbg !2680
  br label %19, !dbg !2682

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #24, !dbg !2683
  call void @llvm.dbg.value(metadata i8* %14, metadata !2669, metadata !DIExpression()) #24, !dbg !2675
  %15 = icmp eq i8* %14, null, !dbg !2684
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !2686
  br i1 %17, label %18, label %19, !dbg !2686

18:                                               ; preds = %13
  tail call void @xalloc_die() #26, !dbg !2687
  unreachable, !dbg !2687

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2675
  ret i8* %20, !dbg !2688
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2670 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2669, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %1, metadata !2674, metadata !DIExpression()), !dbg !2689
  %3 = icmp eq i64 %1, 0, !dbg !2690
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !2691
  br i1 %5, label %6, label %7, !dbg !2691

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #24, !dbg !2692
  br label %13, !dbg !2693

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #24, !dbg !2694
  call void @llvm.dbg.value(metadata i8* %8, metadata !2669, metadata !DIExpression()), !dbg !2689
  %9 = icmp eq i8* %8, null, !dbg !2695
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !2696
  br i1 %11, label %12, label %13, !dbg !2696

12:                                               ; preds = %7
  tail call void @xalloc_die() #26, !dbg !2697
  unreachable, !dbg !2697

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2689
  ret i8* %14, !dbg !2698
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #21 !dbg !158 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !163, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i64* %1, metadata !164, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i64 %2, metadata !165, metadata !DIExpression()), !dbg !2699
  %4 = load i64, i64* %1, align 8, !dbg !2700, !tbaa !1911
  call void @llvm.dbg.value(metadata i64 %4, metadata !166, metadata !DIExpression()), !dbg !2699
  %5 = icmp eq i8* %0, null, !dbg !2701
  br i1 %5, label %6, label %20, !dbg !2703

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2704
  br i1 %7, label %8, label %13, !dbg !2707

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2708
  call void @llvm.dbg.value(metadata i64 %9, metadata !166, metadata !DIExpression()), !dbg !2699
  %10 = icmp ugt i64 %2, 128, !dbg !2710
  %11 = zext i1 %10 to i64, !dbg !2710
  %12 = add nuw nsw i64 %9, %11, !dbg !2711
  call void @llvm.dbg.value(metadata i64 %12, metadata !166, metadata !DIExpression()), !dbg !2699
  br label %13, !dbg !2712

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2699
  call void @llvm.dbg.value(metadata i64 %14, metadata !166, metadata !DIExpression()), !dbg !2699
  %15 = udiv i64 9223372036854775807, %2, !dbg !2713
  %16 = icmp ult i64 %15, %14, !dbg !2713
  br i1 %16, label %19, label %17, !dbg !2715

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !166, metadata !DIExpression()), !dbg !2699
  store i64 %14, i64* %1, align 8, !dbg !2716, !tbaa !1911
  %18 = mul i64 %14, %2, !dbg !2717
  call void @llvm.dbg.value(metadata i8* %0, metadata !2669, metadata !DIExpression()) #24, !dbg !2718
  call void @llvm.dbg.value(metadata i64 %28, metadata !2674, metadata !DIExpression()) #24, !dbg !2718
  br label %31, !dbg !2720

19:                                               ; preds = %13
  tail call void @xalloc_die() #26, !dbg !2721
  unreachable, !dbg !2721

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !2722
  %22 = icmp ugt i64 %21, %4, !dbg !2725
  br i1 %22, label %24, label %23, !dbg !2726

23:                                               ; preds = %20
  tail call void @xalloc_die() #26, !dbg !2727
  unreachable, !dbg !2727

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !2728
  %26 = add nuw i64 %4, 1, !dbg !2729
  %27 = add i64 %26, %25, !dbg !2730
  call void @llvm.dbg.value(metadata i64 %27, metadata !166, metadata !DIExpression()), !dbg !2699
  store i64 %27, i64* %1, align 8, !dbg !2716, !tbaa !1911
  %28 = mul i64 %27, %2, !dbg !2717
  call void @llvm.dbg.value(metadata i8* %0, metadata !2669, metadata !DIExpression()) #24, !dbg !2718
  call void @llvm.dbg.value(metadata i64 %28, metadata !2674, metadata !DIExpression()) #24, !dbg !2718
  %29 = icmp eq i64 %28, 0, !dbg !2731
  br i1 %29, label %30, label %31, !dbg !2720

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #24, !dbg !2732
  br label %38, !dbg !2733

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #24, !dbg !2734
  call void @llvm.dbg.value(metadata i8* %33, metadata !2669, metadata !DIExpression()) #24, !dbg !2718
  %34 = icmp eq i8* %33, null, !dbg !2735
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !2736
  br i1 %36, label %37, label %38, !dbg !2736

37:                                               ; preds = %31
  tail call void @xalloc_die() #26, !dbg !2737
  unreachable, !dbg !2737

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !2718
  ret i8* %39, !dbg !2738
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #21 !dbg !2739 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2741, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata i64 %0, metadata !2636, metadata !DIExpression()) #24, !dbg !2743
  %2 = tail call noalias i8* @malloc(i64 %0) #24, !dbg !2745
  call void @llvm.dbg.value(metadata i8* %2, metadata !2641, metadata !DIExpression()) #24, !dbg !2743
  %3 = icmp eq i8* %2, null, !dbg !2746
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2747
  br i1 %5, label %6, label %7, !dbg !2747

6:                                                ; preds = %1
  tail call void @xalloc_die() #26, !dbg !2748
  unreachable, !dbg !2748

7:                                                ; preds = %1
  ret i8* %2, !dbg !2749
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !2750 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2754, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i64* %1, metadata !2755, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %0, metadata !163, metadata !DIExpression()) #24, !dbg !2757
  call void @llvm.dbg.value(metadata i64* %1, metadata !164, metadata !DIExpression()) #24, !dbg !2757
  call void @llvm.dbg.value(metadata i64 1, metadata !165, metadata !DIExpression()) #24, !dbg !2757
  %3 = load i64, i64* %1, align 8, !dbg !2759, !tbaa !1911
  call void @llvm.dbg.value(metadata i64 %3, metadata !166, metadata !DIExpression()) #24, !dbg !2757
  %4 = icmp eq i8* %0, null, !dbg !2760
  br i1 %4, label %5, label %10, !dbg !2761

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2762
  br i1 %6, label %17, label %7, !dbg !2763

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !166, metadata !DIExpression()) #24, !dbg !2757
  %8 = icmp slt i64 %3, 0, !dbg !2764
  br i1 %8, label %9, label %17, !dbg !2765

9:                                                ; preds = %7
  tail call void @xalloc_die() #26, !dbg !2766
  unreachable, !dbg !2766

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !2767
  br i1 %11, label %13, label %12, !dbg !2768

12:                                               ; preds = %10
  tail call void @xalloc_die() #26, !dbg !2769
  unreachable, !dbg !2769

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !2770
  %15 = add nuw nsw i64 %3, 1, !dbg !2771
  %16 = add nuw nsw i64 %15, %14, !dbg !2772
  call void @llvm.dbg.value(metadata i64 %16, metadata !166, metadata !DIExpression()) #24, !dbg !2757
  call void @llvm.dbg.value(metadata i8* %0, metadata !2669, metadata !DIExpression()) #24, !dbg !2773
  call void @llvm.dbg.value(metadata i64 %16, metadata !2674, metadata !DIExpression()) #24, !dbg !2773
  br label %17, !dbg !2775

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !2776
  store i64 %18, i64* %1, align 8, !dbg !2776, !tbaa !1911
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #24, !dbg !2777
  call void @llvm.dbg.value(metadata i8* %19, metadata !2669, metadata !DIExpression()) #24, !dbg !2773
  %20 = icmp eq i8* %19, null, !dbg !2778
  br i1 %20, label %21, label %22, !dbg !2779

21:                                               ; preds = %17
  tail call void @xalloc_die() #26, !dbg !2780
  unreachable, !dbg !2780

22:                                               ; preds = %17
  ret i8* %19, !dbg !2781
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !2782 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2784, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i64 %0, metadata !2786, metadata !DIExpression()) #24, !dbg !2791
  call void @llvm.dbg.value(metadata i64 1, metadata !2789, metadata !DIExpression()) #24, !dbg !2791
  %2 = icmp slt i64 %0, 0, !dbg !2793
  br i1 %2, label %6, label %3, !dbg !2795

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #24, !dbg !2796
  call void @llvm.dbg.value(metadata i8* %4, metadata !2790, metadata !DIExpression()) #24, !dbg !2791
  %5 = icmp eq i8* %4, null, !dbg !2797
  br i1 %5, label %6, label %7, !dbg !2798

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #26, !dbg !2799
  unreachable, !dbg !2799

7:                                                ; preds = %3
  ret i8* %4, !dbg !2800
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !2787 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2786, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata i64 %1, metadata !2789, metadata !DIExpression()), !dbg !2801
  %3 = udiv i64 9223372036854775807, %1, !dbg !2802
  %4 = icmp ult i64 %3, %0, !dbg !2802
  br i1 %4, label %8, label %5, !dbg !2803

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #24, !dbg !2804
  call void @llvm.dbg.value(metadata i8* %6, metadata !2790, metadata !DIExpression()), !dbg !2801
  %7 = icmp eq i8* %6, null, !dbg !2805
  br i1 %7, label %8, label %9, !dbg !2806

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #26, !dbg !2807
  unreachable, !dbg !2807

9:                                                ; preds = %5
  ret i8* %6, !dbg !2808
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2809 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2815, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i64 %1, metadata !2816, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i64 %1, metadata !2636, metadata !DIExpression()) #24, !dbg !2818
  %3 = tail call noalias i8* @malloc(i64 %1) #24, !dbg !2820
  call void @llvm.dbg.value(metadata i8* %3, metadata !2641, metadata !DIExpression()) #24, !dbg !2818
  %4 = icmp eq i8* %3, null, !dbg !2821
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !2822
  br i1 %6, label %7, label %8, !dbg !2822

7:                                                ; preds = %2
  tail call void @xalloc_die() #26, !dbg !2823
  unreachable, !dbg !2823

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2824, metadata !DIExpression()) #24, !dbg !2833
  call void @llvm.dbg.value(metadata i8* %0, metadata !2831, metadata !DIExpression()) #24, !dbg !2833
  call void @llvm.dbg.value(metadata i64 %1, metadata !2832, metadata !DIExpression()) #24, !dbg !2833
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #24, !dbg !2835
  ret i8* %3, !dbg !2836
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !2837 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2839, metadata !DIExpression()), !dbg !2840
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #25, !dbg !2841
  %3 = add i64 %2, 1, !dbg !2842
  call void @llvm.dbg.value(metadata i8* %0, metadata !2815, metadata !DIExpression()) #24, !dbg !2843
  call void @llvm.dbg.value(metadata i64 %3, metadata !2816, metadata !DIExpression()) #24, !dbg !2843
  call void @llvm.dbg.value(metadata i64 %3, metadata !2636, metadata !DIExpression()) #24, !dbg !2845
  %4 = tail call noalias i8* @malloc(i64 %3) #24, !dbg !2847
  call void @llvm.dbg.value(metadata i8* %4, metadata !2641, metadata !DIExpression()) #24, !dbg !2845
  %5 = icmp eq i8* %4, null, !dbg !2848
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !2849
  br i1 %7, label %8, label %9, !dbg !2849

8:                                                ; preds = %1
  tail call void @xalloc_die() #26, !dbg !2850
  unreachable, !dbg !2850

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !2824, metadata !DIExpression()) #24, !dbg !2851
  call void @llvm.dbg.value(metadata i8* %0, metadata !2831, metadata !DIExpression()) #24, !dbg !2851
  call void @llvm.dbg.value(metadata i64 %3, metadata !2832, metadata !DIExpression()) #24, !dbg !2851
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #24, !dbg !2853
  ret i8* %4, !dbg !2854
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !2855 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !2856, !tbaa !757
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.105, i64 0, i64 0), i32 5) #24, !dbg !2857
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.106, i64 0, i64 0), i8* %2) #24, !dbg !2858
  tail call void @abort() #26, !dbg !2859
  unreachable, !dbg !2859
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #23 !dbg !2860 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2862, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i64 %1, metadata !2863, metadata !DIExpression()), !dbg !2868
  %3 = icmp eq i64 %0, 0, !dbg !2869
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !2870
  br i1 %5, label %11, label %6, !dbg !2870

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !2865, metadata !DIExpression()), !dbg !2871
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !2872
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !2872
  br i1 %8, label %9, label %11, !dbg !2874

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #28, !dbg !2875
  store i32 12, i32* %10, align 4, !dbg !2877, !tbaa !757
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !2862, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i64 %12, metadata !2863, metadata !DIExpression()), !dbg !2868
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #24, !dbg !2878
  call void @llvm.dbg.value(metadata i8* %14, metadata !2864, metadata !DIExpression()), !dbg !2868
  br label %15, !dbg !2879

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !2868
  ret i8* %16, !dbg !2880
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !2881 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !2897, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i8* %1, metadata !2898, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 %2, metadata !2899, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !2900, metadata !DIExpression()), !dbg !2906
  %6 = bitcast i32* %5 to i8*, !dbg !2907
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #24, !dbg !2907
  %7 = icmp eq i32* %0, null, !dbg !2908
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !2910
  call void @llvm.dbg.value(metadata i32* %8, metadata !2897, metadata !DIExpression()), !dbg !2906
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #24, !dbg !2911
  call void @llvm.dbg.value(metadata i64 %9, metadata !2901, metadata !DIExpression()), !dbg !2906
  %10 = icmp ugt i64 %9, -3, !dbg !2912
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !2913
  br i1 %12, label %13, label %18, !dbg !2913

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #24, !dbg !2914
  br i1 %14, label %18, label %15, !dbg !2915

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !2916, !tbaa !1211
  call void @llvm.dbg.value(metadata i8 %16, metadata !2903, metadata !DIExpression()), !dbg !2917
  %17 = zext i8 %16 to i32, !dbg !2918
  store i32 %17, i32* %8, align 4, !dbg !2919, !tbaa !757
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !2906
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #24, !dbg !2920
  ret i64 %19, !dbg !2920
}

; Function Attrs: nounwind
declare !dbg !2921 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !2925 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2963, metadata !DIExpression()), !dbg !2968
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #24, !dbg !2969
  call void @llvm.dbg.value(metadata i1 undef, metadata !2964, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2968
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2970, metadata !DIExpression()), !dbg !2974
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !2976
  %4 = load i32, i32* %3, align 8, !dbg !2976, !tbaa !2977
  %5 = and i32 %4, 32, !dbg !2979
  %6 = icmp eq i32 %5, 0, !dbg !2979
  call void @llvm.dbg.value(metadata i1 %6, metadata !2966, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2968
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #24, !dbg !2980
  %8 = icmp eq i32 %7, 0, !dbg !2981
  call void @llvm.dbg.value(metadata i1 %8, metadata !2967, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2968
  br i1 %6, label %9, label %19, !dbg !2982

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !2984
  call void @llvm.dbg.value(metadata i1 %10, metadata !2964, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2968
  %11 = or i1 %10, %8, !dbg !2985
  %12 = xor i1 %8, true, !dbg !2985
  %13 = sext i1 %12 to i32, !dbg !2985
  br i1 %11, label %22, label %14, !dbg !2985

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #28, !dbg !2986
  %16 = load i32, i32* %15, align 4, !dbg !2986, !tbaa !757
  %17 = icmp ne i32 %16, 9, !dbg !2987
  %18 = sext i1 %17 to i32, !dbg !2988
  br label %22, !dbg !2988

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !2989

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #28, !dbg !2991
  store i32 0, i32* %21, align 4, !dbg !2993, !tbaa !757
  br label %22, !dbg !2991

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !2968
  ret i32 %23, !dbg !2994
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !2995 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2999, metadata !DIExpression()), !dbg !3004
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3005
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #24, !dbg !3005
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3000, metadata !DIExpression()), !dbg !3006
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #24, !dbg !3007
  %5 = icmp eq i32 %4, 0, !dbg !3007
  br i1 %5, label %6, label %13, !dbg !3009

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3010
  %8 = load i16, i16* %7, align 16, !dbg !3010
  %9 = icmp eq i16 %8, 67, !dbg !3010
  br i1 %9, label %13, label %10, !dbg !3011

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.115, i64 0, i64 0), i64 6), !dbg !3012
  %12 = icmp ne i32 %11, 0, !dbg !3013
  br label %13, !dbg !3011

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3004
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #24, !dbg !3014
  ret i1 %14, !dbg !3014
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3015 {
  %1 = tail call i8* @nl_langinfo(i32 14) #24, !dbg !3020
  call void @llvm.dbg.value(metadata i8* %1, metadata !3019, metadata !DIExpression()), !dbg !3021
  %2 = icmp eq i8* %1, null, !dbg !3022
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.118, i64 0, i64 0), i8* %1, !dbg !3024
  call void @llvm.dbg.value(metadata i8* %3, metadata !3019, metadata !DIExpression()), !dbg !3021
  %4 = load i8, i8* %3, align 1, !dbg !3025, !tbaa !1211
  %5 = icmp eq i8 %4, 0, !dbg !3029
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.119, i64 0, i64 0), i8* %3, !dbg !3030
  call void @llvm.dbg.value(metadata i8* %6, metadata !3019, metadata !DIExpression()), !dbg !3021
  ret i8* %6, !dbg !3031
}

; Function Attrs: nounwind
declare !dbg !3032 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3035 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3039, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i8* %1, metadata !3040, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i64 %2, metadata !3041, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i32 %0, metadata !3043, metadata !DIExpression()) #24, !dbg !3052
  call void @llvm.dbg.value(metadata i8* %1, metadata !3046, metadata !DIExpression()) #24, !dbg !3052
  call void @llvm.dbg.value(metadata i64 %2, metadata !3047, metadata !DIExpression()) #24, !dbg !3052
  call void @llvm.dbg.value(metadata i32 %0, metadata !3054, metadata !DIExpression()) #24, !dbg !3060
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #24, !dbg !3062
  call void @llvm.dbg.value(metadata i8* %4, metadata !3059, metadata !DIExpression()) #24, !dbg !3060
  call void @llvm.dbg.value(metadata i8* %4, metadata !3048, metadata !DIExpression()) #24, !dbg !3052
  %5 = icmp eq i8* %4, null, !dbg !3063
  br i1 %5, label %6, label %9, !dbg !3064

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3065
  br i1 %7, label %19, label %8, !dbg !3068

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3069, !tbaa !1211
  br label %19, !dbg !3070

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #25, !dbg !3071
  call void @llvm.dbg.value(metadata i64 %10, metadata !3049, metadata !DIExpression()) #24, !dbg !3072
  %11 = icmp ult i64 %10, %2, !dbg !3073
  br i1 %11, label %12, label %14, !dbg !3075

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3076
  call void @llvm.dbg.value(metadata i8* %1, metadata !3078, metadata !DIExpression()) #24, !dbg !3083
  call void @llvm.dbg.value(metadata i8* %4, metadata !3081, metadata !DIExpression()) #24, !dbg !3083
  call void @llvm.dbg.value(metadata i64 %13, metadata !3082, metadata !DIExpression()) #24, !dbg !3083
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #24, !dbg !3085
  br label %19, !dbg !3086

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3087
  br i1 %15, label %19, label %16, !dbg !3090

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3091
  call void @llvm.dbg.value(metadata i8* %1, metadata !3078, metadata !DIExpression()) #24, !dbg !3093
  call void @llvm.dbg.value(metadata i8* %4, metadata !3081, metadata !DIExpression()) #24, !dbg !3093
  call void @llvm.dbg.value(metadata i64 %17, metadata !3082, metadata !DIExpression()) #24, !dbg !3093
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #24, !dbg !3095
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3096
  store i8 0, i8* %18, align 1, !dbg !3097, !tbaa !1211
  br label %19, !dbg !3098

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3099
  ret i32 %20, !dbg !3100
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3101 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3103, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i32 %0, metadata !3054, metadata !DIExpression()) #24, !dbg !3105
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #24, !dbg !3107
  call void @llvm.dbg.value(metadata i8* %2, metadata !3059, metadata !DIExpression()) #24, !dbg !3105
  ret i8* %2, !dbg !3108
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3109 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3147, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i32 0, metadata !3148, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i32 0, metadata !3150, metadata !DIExpression()), !dbg !3151
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !3152
  call void @llvm.dbg.value(metadata i32 %2, metadata !3149, metadata !DIExpression()), !dbg !3151
  %3 = icmp slt i32 %2, 0, !dbg !3153
  br i1 %3, label %4, label %6, !dbg !3155

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3156
  br label %24, !dbg !3157

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #24, !dbg !3158
  %8 = icmp eq i32 %7, 0, !dbg !3158
  br i1 %8, label %13, label %9, !dbg !3160

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !3161
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #24, !dbg !3162
  %12 = icmp eq i64 %11, -1, !dbg !3163
  br i1 %12, label %16, label %13, !dbg !3164

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #24, !dbg !3165
  %15 = icmp eq i32 %14, 0, !dbg !3165
  br i1 %15, label %16, label %18, !dbg !3166

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3148, metadata !DIExpression()), !dbg !3151
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3167
  call void @llvm.dbg.value(metadata i32 %21, metadata !3150, metadata !DIExpression()), !dbg !3151
  br label %24, !dbg !3168

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #28, !dbg !3169
  %20 = load i32, i32* %19, align 4, !dbg !3169, !tbaa !757
  call void @llvm.dbg.value(metadata i32 %20, metadata !3148, metadata !DIExpression()), !dbg !3151
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3167
  call void @llvm.dbg.value(metadata i32 %21, metadata !3150, metadata !DIExpression()), !dbg !3151
  %22 = icmp eq i32 %20, 0, !dbg !3170
  br i1 %22, label %24, label %23, !dbg !3168

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3172, !tbaa !757
  call void @llvm.dbg.value(metadata i32 -1, metadata !3150, metadata !DIExpression()), !dbg !3151
  br label %24, !dbg !3174

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3151
  ret i32 %25, !dbg !3175
}

; Function Attrs: nofree nounwind
declare !dbg !3176 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3179 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3180 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3183 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3221, metadata !DIExpression()), !dbg !3222
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3223
  br i1 %2, label %6, label %3, !dbg !3225

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #24, !dbg !3226
  %5 = icmp eq i32 %4, 0, !dbg !3226
  br i1 %5, label %6, label %8, !dbg !3227

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3228
  br label %17, !dbg !3229

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3230, metadata !DIExpression()) #24, !dbg !3235
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3237
  %10 = load i32, i32* %9, align 8, !dbg !3237, !tbaa !2977
  %11 = and i32 %10, 256, !dbg !3239
  %12 = icmp eq i32 %11, 0, !dbg !3239
  br i1 %12, label %15, label %13, !dbg !3240

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #24, !dbg !3241
  br label %15, !dbg !3241

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3242
  br label %17, !dbg !3243

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3222
  ret i32 %18, !dbg !3244
}

; Function Attrs: nofree nounwind
declare !dbg !3245 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3248 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3287, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i64 %1, metadata !3288, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i32 %2, metadata !3289, metadata !DIExpression()), !dbg !3293
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3294
  %5 = load i8*, i8** %4, align 8, !dbg !3294, !tbaa !3295
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3296
  %7 = load i8*, i8** %6, align 8, !dbg !3296, !tbaa !3297
  %8 = icmp eq i8* %5, %7, !dbg !3298
  br i1 %8, label %9, label %28, !dbg !3299

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3300
  %11 = load i8*, i8** %10, align 8, !dbg !3300, !tbaa !3301
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3302
  %13 = load i8*, i8** %12, align 8, !dbg !3302, !tbaa !3303
  %14 = icmp eq i8* %11, %13, !dbg !3304
  br i1 %14, label %15, label %28, !dbg !3305

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3306
  %17 = load i8*, i8** %16, align 8, !dbg !3306, !tbaa !3307
  %18 = icmp eq i8* %17, null, !dbg !3308
  br i1 %18, label %19, label %28, !dbg !3309

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !3310
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #24, !dbg !3311
  call void @llvm.dbg.value(metadata i64 %21, metadata !3290, metadata !DIExpression()), !dbg !3312
  %22 = icmp eq i64 %21, -1, !dbg !3313
  br i1 %22, label %30, label %23, !dbg !3315

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3316
  %25 = load i32, i32* %24, align 8, !dbg !3317, !tbaa !2977
  %26 = and i32 %25, -17, !dbg !3317
  store i32 %26, i32* %24, align 8, !dbg !3317, !tbaa !2977
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3318
  store i64 %21, i64* %27, align 8, !dbg !3319, !tbaa !3320
  br label %30, !dbg !3321

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3322
  br label %30, !dbg !3323

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3293
  ret i32 %31, !dbg !3324
}

; Function Attrs: nofree nounwind
declare !dbg !3325 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

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
attributes #12 = { nofree nosync nounwind willreturn }
attributes #13 = { nofree nounwind }
attributes #14 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #20 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #21 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #24 = { nounwind }
attributes #25 = { nounwind readonly willreturn }
attributes #26 = { noreturn nounwind }
attributes #27 = { noreturn }
attributes #28 = { nounwind readnone willreturn }
attributes #29 = { cold }

!llvm.dbg.cu = !{!143, !2, !11, !19, !26, !43, !51, !146, !137, !153, !170, !172, !174, !177, !179, !181, !570, !572, !574, !576}
!llvm.ident = !{!578, !578, !578, !578, !578, !578, !578, !578, !578, !578, !578, !578, !578, !578, !578, !578, !578, !578, !578, !578}
!llvm.module.flags = !{!579, !580, !581, !582, !583}

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
!143 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !145, splitDebugInlining: false, nameTableKind: None)
!144 = !DIFile(filename: "src/whoami.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!145 = !{!6, !46, !93}
!146 = distinct !DICompileUnit(language: DW_LANG_C99, file: !147, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148, retainedTypes: !152, splitDebugInlining: false, nameTableKind: None)
!147 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!148 = !{!149}
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !147, line: 40, baseType: !56, size: 32, elements: !150)
!150 = !{!151}
!151 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!152 = !{!46}
!153 = distinct !DICompileUnit(language: DW_LANG_C99, file: !154, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !155, retainedTypes: !169, splitDebugInlining: false, nameTableKind: None)
!154 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!155 = !{!156}
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !158, file: !157, line: 186, baseType: !56, size: 32, elements: !167)
!157 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!158 = distinct !DISubprogram(name: "x2nrealloc", scope: !157, file: !157, line: 174, type: !159, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !162)
!159 = !DISubroutineType(types: !160)
!160 = !{!46, !46, !161, !91}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!162 = !{!163, !164, !165, !166}
!163 = !DILocalVariable(name: "p", arg: 1, scope: !158, file: !157, line: 174, type: !46)
!164 = !DILocalVariable(name: "pn", arg: 2, scope: !158, file: !157, line: 174, type: !161)
!165 = !DILocalVariable(name: "s", arg: 3, scope: !158, file: !157, line: 174, type: !91)
!166 = !DILocalVariable(name: "n", scope: !158, file: !157, line: 176, type: !91)
!167 = !{!168}
!168 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!169 = !{!91, !47, !46}
!170 = distinct !DICompileUnit(language: DW_LANG_C99, file: !171, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!171 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!172 = distinct !DICompileUnit(language: DW_LANG_C99, file: !173, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !152, splitDebugInlining: false, nameTableKind: None)
!173 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!174 = distinct !DICompileUnit(language: DW_LANG_C99, file: !175, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !176, splitDebugInlining: false, nameTableKind: None)
!175 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!176 = !{!91}
!177 = distinct !DICompileUnit(language: DW_LANG_C99, file: !178, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!178 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!179 = distinct !DICompileUnit(language: DW_LANG_C99, file: !180, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!180 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!181 = distinct !DICompileUnit(language: DW_LANG_C99, file: !182, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !183, retainedTypes: !152, splitDebugInlining: false, nameTableKind: None)
!182 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!183 = !{!184}
!184 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !185, line: 41, baseType: !56, size: 32, elements: !186)
!185 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!186 = !{!187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569}
!187 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!188 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!189 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!190 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!191 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!192 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!193 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!194 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!195 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!196 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!197 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!198 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!199 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!200 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!201 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!202 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!203 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!204 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!205 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!206 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!207 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!208 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!209 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!210 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!211 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!212 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!213 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!214 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!215 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!216 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!217 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!218 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!219 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!220 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!221 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!222 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!223 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!224 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!225 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!226 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!227 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!228 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!229 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!230 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!231 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!232 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!233 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!234 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!235 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!236 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!237 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!238 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!239 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!240 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!241 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!242 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!243 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!244 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!245 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!246 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!247 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!248 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!249 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!250 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!251 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!252 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!253 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!254 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!255 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!256 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!257 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!258 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!259 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!260 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!261 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!262 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!263 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!264 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!265 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!266 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!267 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!268 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!269 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!270 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!271 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!272 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!273 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!274 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!295 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!298 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!299 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!300 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!301 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!302 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!303 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!304 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!305 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!306 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!307 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!308 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!309 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!382 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!455 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!456 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!457 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!458 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!459 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!460 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!461 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!462 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!463 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!464 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!465 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!466 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!467 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!468 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!469 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!471 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!472 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!473 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!474 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!475 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!476 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!502 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!503 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!504 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!505 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!506 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!511 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!512 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!513 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!514 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!570 = distinct !DICompileUnit(language: DW_LANG_C99, file: !571, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !152, splitDebugInlining: false, nameTableKind: None)
!571 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!572 = distinct !DICompileUnit(language: DW_LANG_C99, file: !573, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!573 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!574 = distinct !DICompileUnit(language: DW_LANG_C99, file: !575, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !152, splitDebugInlining: false, nameTableKind: None)
!575 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!576 = distinct !DICompileUnit(language: DW_LANG_C99, file: !577, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !152, splitDebugInlining: false, nameTableKind: None)
!577 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!578 = !{!"clang version 12.0.1"}
!579 = !{i32 7, !"Dwarf Version", i32 4}
!580 = !{i32 2, !"Debug Info Version", i32 3}
!581 = !{i32 1, !"wchar_size", i32 4}
!582 = !{i32 7, !"PIC Level", i32 2}
!583 = !{i32 7, !"PIE Level", i32 2}
!584 = distinct !DISubprogram(name: "usage", scope: !144, file: !144, line: 38, type: !585, scopeLine: 39, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !587)
!585 = !DISubroutineType(types: !586)
!586 = !{null, !23}
!587 = !{!588}
!588 = !DILocalVariable(name: "status", arg: 1, scope: !584, file: !144, line: 38, type: !23)
!589 = !DILocation(line: 0, scope: !584)
!590 = !DILocation(line: 40, column: 14, scope: !591)
!591 = distinct !DILexicalBlock(scope: !584, file: !144, line: 40, column: 7)
!592 = !DILocation(line: 40, column: 7, scope: !584)
!593 = !DILocation(line: 41, column: 5, scope: !594)
!594 = distinct !DILexicalBlock(scope: !591, file: !144, line: 41, column: 5)
!595 = !{!596, !596, i64 0}
!596 = !{!"any pointer", !597, i64 0}
!597 = !{!"omnipotent char", !598, i64 0}
!598 = !{!"Simple C/C++ TBAA"}
!599 = !DILocation(line: 44, column: 7, scope: !600)
!600 = distinct !DILexicalBlock(scope: !591, file: !144, line: 43, column: 5)
!601 = !DILocation(line: 45, column: 7, scope: !600)
!602 = !DILocation(line: 50, column: 7, scope: !600)
!603 = !DILocation(line: 51, column: 7, scope: !600)
!604 = !DILocalVariable(name: "program", arg: 1, scope: !605, file: !606, line: 634, type: !6)
!605 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !606, file: !606, line: 634, type: !607, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !609)
!606 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!607 = !DISubroutineType(types: !608)
!608 = !{null, !6}
!609 = !{!604, !610, !619, !620, !622}
!610 = !DILocalVariable(name: "infomap", scope: !605, file: !606, line: 636, type: !611)
!611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 896, elements: !617)
!612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !613)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !605, file: !606, line: 636, size: 128, elements: !614)
!614 = !{!615, !616}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !613, file: !606, line: 636, baseType: !6, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !613, file: !606, line: 636, baseType: !6, size: 64, offset: 64)
!617 = !{!618}
!618 = !DISubrange(count: 7)
!619 = !DILocalVariable(name: "node", scope: !605, file: !606, line: 646, type: !6)
!620 = !DILocalVariable(name: "map_prog", scope: !605, file: !606, line: 647, type: !621)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!622 = !DILocalVariable(name: "lc_messages", scope: !605, file: !606, line: 659, type: !6)
!623 = !DILocation(line: 0, scope: !605, inlinedAt: !624)
!624 = distinct !DILocation(line: 52, column: 7, scope: !600)
!625 = !DILocation(line: 636, column: 3, scope: !605, inlinedAt: !624)
!626 = !DILocation(line: 636, column: 67, scope: !605, inlinedAt: !624)
!627 = !DILocation(line: 647, column: 36, scope: !605, inlinedAt: !624)
!628 = !DILocation(line: 649, column: 3, scope: !605, inlinedAt: !624)
!629 = !DILocation(line: 649, column: 33, scope: !605, inlinedAt: !624)
!630 = !DILocation(line: 650, column: 13, scope: !605, inlinedAt: !624)
!631 = !DILocation(line: 649, column: 20, scope: !605, inlinedAt: !624)
!632 = !{!633, !596, i64 0}
!633 = !{!"infomap", !596, i64 0, !596, i64 8}
!634 = !DILocation(line: 649, column: 10, scope: !605, inlinedAt: !624)
!635 = !DILocation(line: 649, column: 28, scope: !605, inlinedAt: !624)
!636 = distinct !{!636, !628, !630, !637}
!637 = !{!"llvm.loop.mustprogress"}
!638 = !DILocation(line: 652, column: 17, scope: !639, inlinedAt: !624)
!639 = distinct !DILexicalBlock(scope: !605, file: !606, line: 652, column: 7)
!640 = !{!633, !596, i64 8}
!641 = !DILocation(line: 652, column: 7, scope: !639, inlinedAt: !624)
!642 = !DILocation(line: 652, column: 7, scope: !605, inlinedAt: !624)
!643 = !DILocation(line: 655, column: 3, scope: !605, inlinedAt: !624)
!644 = !DILocation(line: 659, column: 29, scope: !605, inlinedAt: !624)
!645 = !DILocation(line: 660, column: 7, scope: !646, inlinedAt: !624)
!646 = distinct !DILexicalBlock(scope: !605, file: !606, line: 660, column: 7)
!647 = !DILocation(line: 660, column: 19, scope: !646, inlinedAt: !624)
!648 = !DILocation(line: 660, column: 22, scope: !646, inlinedAt: !624)
!649 = !DILocation(line: 660, column: 7, scope: !605, inlinedAt: !624)
!650 = !DILocation(line: 666, column: 7, scope: !651, inlinedAt: !624)
!651 = distinct !DILexicalBlock(scope: !646, file: !606, line: 661, column: 5)
!652 = !DILocation(line: 668, column: 5, scope: !651, inlinedAt: !624)
!653 = !DILocation(line: 669, column: 3, scope: !605, inlinedAt: !624)
!654 = !DILocation(line: 671, column: 3, scope: !605, inlinedAt: !624)
!655 = !DILocation(line: 673, column: 1, scope: !605, inlinedAt: !624)
!656 = !DILocation(line: 54, column: 3, scope: !584)
!657 = !DISubprogram(name: "dcgettext", scope: !658, file: !658, line: 51, type: !659, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!658 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!659 = !DISubroutineType(types: !660)
!660 = !{!47, !6, !6, !23}
!661 = !DISubprogram(name: "fputs_unlocked", scope: !662, file: !662, line: 667, type: !663, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!662 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!663 = !DISubroutineType(types: !664)
!664 = !{!23, !6, !665}
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !667, line: 49, size: 1728, elements: !668)
!667 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!668 = !{!669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !684, !685, !686, !687, !691, !692, !694, !698, !701, !703, !706, !709, !710, !711, !712, !713}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !666, file: !667, line: 51, baseType: !23, size: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !666, file: !667, line: 54, baseType: !47, size: 64, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !666, file: !667, line: 55, baseType: !47, size: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !666, file: !667, line: 56, baseType: !47, size: 64, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !666, file: !667, line: 57, baseType: !47, size: 64, offset: 256)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !666, file: !667, line: 58, baseType: !47, size: 64, offset: 320)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !666, file: !667, line: 59, baseType: !47, size: 64, offset: 384)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !666, file: !667, line: 60, baseType: !47, size: 64, offset: 448)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !666, file: !667, line: 61, baseType: !47, size: 64, offset: 512)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !666, file: !667, line: 64, baseType: !47, size: 64, offset: 576)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !666, file: !667, line: 65, baseType: !47, size: 64, offset: 640)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !666, file: !667, line: 66, baseType: !47, size: 64, offset: 704)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !666, file: !667, line: 68, baseType: !682, size: 64, offset: 768)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !667, line: 36, flags: DIFlagFwdDecl)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !666, file: !667, line: 70, baseType: !665, size: 64, offset: 832)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !666, file: !667, line: 72, baseType: !23, size: 32, offset: 896)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !666, file: !667, line: 73, baseType: !23, size: 32, offset: 928)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !666, file: !667, line: 74, baseType: !688, size: 64, offset: 960)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !689, line: 152, baseType: !690)
!689 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!690 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !666, file: !667, line: 77, baseType: !90, size: 16, offset: 1024)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !666, file: !667, line: 78, baseType: !693, size: 8, offset: 1040)
!693 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !666, file: !667, line: 79, baseType: !695, size: 8, offset: 1048)
!695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !696)
!696 = !{!697}
!697 = !DISubrange(count: 1)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !666, file: !667, line: 81, baseType: !699, size: 64, offset: 1088)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !667, line: 43, baseType: null)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !666, file: !667, line: 89, baseType: !702, size: 64, offset: 1152)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !689, line: 153, baseType: !690)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !666, file: !667, line: 91, baseType: !704, size: 64, offset: 1216)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !667, line: 37, flags: DIFlagFwdDecl)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !666, file: !667, line: 92, baseType: !707, size: 64, offset: 1280)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !667, line: 38, flags: DIFlagFwdDecl)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !666, file: !667, line: 93, baseType: !665, size: 64, offset: 1344)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !666, file: !667, line: 94, baseType: !46, size: 64, offset: 1408)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !666, file: !667, line: 95, baseType: !91, size: 64, offset: 1472)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !666, file: !667, line: 96, baseType: !23, size: 32, offset: 1536)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !666, file: !667, line: 98, baseType: !714, size: 160, offset: 1568)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !715)
!715 = !{!716}
!716 = !DISubrange(count: 20)
!717 = !DISubprogram(name: "setlocale", scope: !718, file: !718, line: 122, type: !719, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!718 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!719 = !DISubroutineType(types: !720)
!720 = !{!47, !23, !6}
!721 = distinct !DISubprogram(name: "main", scope: !144, file: !144, line: 58, type: !722, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !725)
!722 = !DISubroutineType(types: !723)
!723 = !{!23, !23, !724}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!725 = !{!726, !727, !728, !742, !745}
!726 = !DILocalVariable(name: "argc", arg: 1, scope: !721, file: !144, line: 58, type: !23)
!727 = !DILocalVariable(name: "argv", arg: 2, scope: !721, file: !144, line: 58, type: !724)
!728 = !DILocalVariable(name: "pw", scope: !721, file: !144, line: 60, type: !729)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !731, line: 49, size: 384, elements: !732)
!731 = !DIFile(filename: "/usr/include/pwd.h", directory: "")
!732 = !{!733, !734, !735, !737, !739, !740, !741}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !730, file: !731, line: 51, baseType: !47, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !730, file: !731, line: 52, baseType: !47, size: 64, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !730, file: !731, line: 54, baseType: !736, size: 32, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !689, line: 146, baseType: !56)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !730, file: !731, line: 55, baseType: !738, size: 32, offset: 160)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !689, line: 147, baseType: !56)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !730, file: !731, line: 56, baseType: !47, size: 64, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !730, file: !731, line: 57, baseType: !47, size: 64, offset: 256)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !730, file: !731, line: 58, baseType: !47, size: 64, offset: 320)
!742 = !DILocalVariable(name: "uid", scope: !721, file: !144, line: 61, type: !743)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !744, line: 79, baseType: !736)
!744 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!745 = !DILocalVariable(name: "NO_UID", scope: !721, file: !144, line: 62, type: !743)
!746 = !DILocation(line: 0, scope: !721)
!747 = !DILocation(line: 65, column: 21, scope: !721)
!748 = !DILocation(line: 65, column: 3, scope: !721)
!749 = !DILocation(line: 66, column: 3, scope: !721)
!750 = !DILocation(line: 67, column: 3, scope: !721)
!751 = !DILocation(line: 68, column: 3, scope: !721)
!752 = !DILocation(line: 70, column: 3, scope: !721)
!753 = !DILocation(line: 73, column: 36, scope: !721)
!754 = !DILocation(line: 72, column: 3, scope: !721)
!755 = !DILocation(line: 76, column: 7, scope: !756)
!756 = distinct !DILexicalBlock(scope: !721, file: !144, line: 76, column: 7)
!757 = !{!758, !758, i64 0}
!758 = !{!"int", !597, i64 0}
!759 = !DILocation(line: 76, column: 14, scope: !756)
!760 = !DILocation(line: 76, column: 7, scope: !721)
!761 = !DILocation(line: 78, column: 20, scope: !762)
!762 = distinct !DILexicalBlock(scope: !756, file: !144, line: 77, column: 5)
!763 = !DILocation(line: 78, column: 55, scope: !762)
!764 = !DILocation(line: 78, column: 50, scope: !762)
!765 = !DILocation(line: 78, column: 43, scope: !762)
!766 = !DILocation(line: 78, column: 7, scope: !762)
!767 = !DILocation(line: 79, column: 7, scope: !762)
!768 = !DILocation(line: 82, column: 3, scope: !721)
!769 = !DILocation(line: 82, column: 9, scope: !721)
!770 = !DILocation(line: 83, column: 9, scope: !721)
!771 = !DILocation(line: 84, column: 13, scope: !721)
!772 = !DILocation(line: 84, column: 23, scope: !721)
!773 = !DILocation(line: 84, column: 26, scope: !721)
!774 = !DILocation(line: 84, column: 9, scope: !721)
!775 = !DILocation(line: 84, column: 41, scope: !721)
!776 = !DILocation(line: 85, column: 8, scope: !777)
!777 = distinct !DILexicalBlock(scope: !721, file: !144, line: 85, column: 7)
!778 = !DILocation(line: 85, column: 7, scope: !721)
!779 = !DILocation(line: 86, column: 5, scope: !777)
!780 = !DILocation(line: 88, column: 13, scope: !721)
!781 = !{!782, !596, i64 0}
!782 = !{!"passwd", !596, i64 0, !596, i64 8, !758, i64 16, !758, i64 20, !596, i64 24, !596, i64 32, !596, i64 40}
!783 = !DILocation(line: 88, column: 3, scope: !721)
!784 = !DILocation(line: 89, column: 3, scope: !721)
!785 = !DISubprogram(name: "bindtextdomain", scope: !658, file: !658, line: 86, type: !786, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!786 = !DISubroutineType(types: !787)
!787 = !{!47, !6, !6}
!788 = !DISubprogram(name: "textdomain", scope: !658, file: !658, line: 82, type: !789, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!789 = !DISubroutineType(types: !790)
!790 = !{!47, !6}
!791 = !DISubprogram(name: "atexit", scope: !792, file: !792, line: 595, type: !793, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!792 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!793 = !DISubroutineType(types: !794)
!794 = !{!23, !795}
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{null}
!798 = !DISubprogram(name: "error", scope: !799, file: !799, line: 52, type: !800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!799 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!800 = !DISubroutineType(types: !801)
!801 = !{null, !23, !23, !6, null}
!802 = !DISubprogram(name: "geteuid", scope: !803, file: !803, line: 690, type: !804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!803 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!804 = !DISubroutineType(types: !805)
!805 = !{!56}
!806 = !DISubprogram(name: "getpwuid", scope: !731, file: !731, line: 110, type: !807, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!807 = !DISubroutineType(types: !808)
!808 = !{!729, !56}
!809 = !DISubprogram(name: "puts", scope: !662, file: !662, line: 637, type: !810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!810 = !DISubroutineType(types: !811)
!811 = !{!23, !6}
!812 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !12, file: !12, line: 51, type: !607, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !813)
!813 = !{!814}
!814 = !DILocalVariable(name: "file", arg: 1, scope: !812, file: !12, line: 51, type: !6)
!815 = !DILocation(line: 0, scope: !812)
!816 = !DILocation(line: 53, column: 13, scope: !812)
!817 = !DILocation(line: 54, column: 1, scope: !812)
!818 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !12, file: !12, line: 88, type: !819, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !821)
!819 = !DISubroutineType(types: !820)
!820 = !{null, !16}
!821 = !{!822}
!822 = !DILocalVariable(name: "ignore", arg: 1, scope: !818, file: !12, line: 88, type: !16)
!823 = !DILocation(line: 0, scope: !818)
!824 = !DILocation(line: 90, column: 16, scope: !818)
!825 = !{!826, !826, i64 0}
!826 = !{!"_Bool", !597, i64 0}
!827 = !DILocation(line: 91, column: 1, scope: !818)
!828 = distinct !DISubprogram(name: "close_stdout", scope: !12, file: !12, line: 117, type: !796, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !829)
!829 = !{!830}
!830 = !DILocalVariable(name: "write_error", scope: !831, file: !12, line: 122, type: !6)
!831 = distinct !DILexicalBlock(scope: !832, file: !12, line: 121, column: 5)
!832 = distinct !DILexicalBlock(scope: !828, file: !12, line: 119, column: 7)
!833 = !DILocation(line: 119, column: 21, scope: !832)
!834 = !DILocation(line: 119, column: 7, scope: !832)
!835 = !DILocation(line: 119, column: 29, scope: !832)
!836 = !DILocation(line: 120, column: 7, scope: !832)
!837 = !DILocation(line: 120, column: 12, scope: !832)
!838 = !{i8 0, i8 2}
!839 = !DILocation(line: 120, column: 25, scope: !832)
!840 = !DILocation(line: 120, column: 28, scope: !832)
!841 = !DILocation(line: 120, column: 34, scope: !832)
!842 = !DILocation(line: 119, column: 7, scope: !828)
!843 = !DILocation(line: 122, column: 33, scope: !831)
!844 = !DILocation(line: 0, scope: !831)
!845 = !DILocation(line: 123, column: 11, scope: !846)
!846 = distinct !DILexicalBlock(scope: !831, file: !12, line: 123, column: 11)
!847 = !DILocation(line: 0, scope: !846)
!848 = !DILocation(line: 123, column: 11, scope: !831)
!849 = !DILocation(line: 124, column: 36, scope: !846)
!850 = !DILocation(line: 124, column: 9, scope: !846)
!851 = !DILocation(line: 127, column: 9, scope: !846)
!852 = !DILocation(line: 129, column: 14, scope: !831)
!853 = !DILocation(line: 129, column: 7, scope: !831)
!854 = !DILocation(line: 134, column: 42, scope: !855)
!855 = distinct !DILexicalBlock(scope: !828, file: !12, line: 134, column: 7)
!856 = !DILocation(line: 134, column: 28, scope: !855)
!857 = !DILocation(line: 134, column: 50, scope: !855)
!858 = !DILocation(line: 134, column: 7, scope: !828)
!859 = !DILocation(line: 135, column: 12, scope: !855)
!860 = !DILocation(line: 135, column: 5, scope: !855)
!861 = !DILocation(line: 136, column: 1, scope: !828)
!862 = distinct !DISubprogram(name: "parse_long_options", scope: !27, file: !27, line: 45, type: !863, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !866)
!863 = !DISubroutineType(types: !864)
!864 = !{null, !23, !724, !6, !6, !6, !865, null}
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!866 = !{!867, !868, !869, !870, !871, !872, !873, !874, !875}
!867 = !DILocalVariable(name: "argc", arg: 1, scope: !862, file: !27, line: 45, type: !23)
!868 = !DILocalVariable(name: "argv", arg: 2, scope: !862, file: !27, line: 46, type: !724)
!869 = !DILocalVariable(name: "command_name", arg: 3, scope: !862, file: !27, line: 47, type: !6)
!870 = !DILocalVariable(name: "package", arg: 4, scope: !862, file: !27, line: 48, type: !6)
!871 = !DILocalVariable(name: "version", arg: 5, scope: !862, file: !27, line: 49, type: !6)
!872 = !DILocalVariable(name: "usage_func", arg: 6, scope: !862, file: !27, line: 50, type: !865)
!873 = !DILocalVariable(name: "c", scope: !862, file: !27, line: 53, type: !23)
!874 = !DILocalVariable(name: "saved_opterr", scope: !862, file: !27, line: 54, type: !23)
!875 = !DILocalVariable(name: "authors", scope: !876, file: !27, line: 72, type: !880)
!876 = distinct !DILexicalBlock(scope: !877, file: !27, line: 71, column: 11)
!877 = distinct !DILexicalBlock(scope: !878, file: !27, line: 65, column: 9)
!878 = distinct !DILexicalBlock(scope: !879, file: !27, line: 63, column: 5)
!879 = distinct !DILexicalBlock(scope: !862, file: !27, line: 61, column: 7)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !662, line: 52, baseType: !881)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !882, line: 32, baseType: !883)
!882 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !27, baseType: !884)
!884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !885, size: 192, elements: !696)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !886)
!886 = !{!887, !888, !889, !890}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !885, file: !27, line: 72, baseType: !56, size: 32)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !885, file: !27, line: 72, baseType: !56, size: 32, offset: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !885, file: !27, line: 72, baseType: !46, size: 64, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !885, file: !27, line: 72, baseType: !46, size: 64, offset: 128)
!891 = !DILocation(line: 0, scope: !862)
!892 = !DILocation(line: 56, column: 18, scope: !862)
!893 = !DILocation(line: 59, column: 10, scope: !862)
!894 = !DILocation(line: 61, column: 12, scope: !879)
!895 = !DILocation(line: 62, column: 7, scope: !879)
!896 = !DILocation(line: 62, column: 15, scope: !879)
!897 = !DILocation(line: 61, column: 7, scope: !862)
!898 = !DILocation(line: 67, column: 11, scope: !877)
!899 = !DILocation(line: 68, column: 11, scope: !877)
!900 = !DILocation(line: 72, column: 13, scope: !876)
!901 = !DILocation(line: 72, column: 21, scope: !876)
!902 = !DILocation(line: 73, column: 13, scope: !876)
!903 = !DILocation(line: 74, column: 29, scope: !876)
!904 = !DILocation(line: 74, column: 13, scope: !876)
!905 = !DILocation(line: 75, column: 13, scope: !876)
!906 = !DILocation(line: 85, column: 10, scope: !862)
!907 = !DILocation(line: 89, column: 10, scope: !862)
!908 = !DILocation(line: 90, column: 1, scope: !862)
!909 = !DISubprogram(name: "getopt_long", scope: !32, file: !32, line: 66, type: !910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!910 = !DISubroutineType(types: !911)
!911 = !{!23, !23, !912, !6, !914, !37}
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!915 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !27, file: !27, line: 98, type: !916, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !918)
!916 = !DISubroutineType(types: !917)
!917 = !{null, !23, !724, !6, !6, !6, !16, !865, null}
!918 = !{!919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929}
!919 = !DILocalVariable(name: "argc", arg: 1, scope: !915, file: !27, line: 98, type: !23)
!920 = !DILocalVariable(name: "argv", arg: 2, scope: !915, file: !27, line: 99, type: !724)
!921 = !DILocalVariable(name: "command_name", arg: 3, scope: !915, file: !27, line: 100, type: !6)
!922 = !DILocalVariable(name: "package", arg: 4, scope: !915, file: !27, line: 101, type: !6)
!923 = !DILocalVariable(name: "version", arg: 5, scope: !915, file: !27, line: 102, type: !6)
!924 = !DILocalVariable(name: "scan_all", arg: 6, scope: !915, file: !27, line: 103, type: !16)
!925 = !DILocalVariable(name: "usage_func", arg: 7, scope: !915, file: !27, line: 104, type: !865)
!926 = !DILocalVariable(name: "c", scope: !915, file: !27, line: 107, type: !23)
!927 = !DILocalVariable(name: "saved_opterr", scope: !915, file: !27, line: 108, type: !23)
!928 = !DILocalVariable(name: "optstring", scope: !915, file: !27, line: 113, type: !6)
!929 = !DILocalVariable(name: "authors", scope: !930, file: !27, line: 125, type: !880)
!930 = distinct !DILexicalBlock(scope: !931, file: !27, line: 124, column: 11)
!931 = distinct !DILexicalBlock(scope: !932, file: !27, line: 118, column: 9)
!932 = distinct !DILexicalBlock(scope: !933, file: !27, line: 116, column: 5)
!933 = distinct !DILexicalBlock(scope: !915, file: !27, line: 115, column: 7)
!934 = !DILocation(line: 0, scope: !915)
!935 = !DILocation(line: 108, column: 22, scope: !915)
!936 = !DILocation(line: 111, column: 10, scope: !915)
!937 = !DILocation(line: 113, column: 27, scope: !915)
!938 = !DILocation(line: 115, column: 12, scope: !933)
!939 = !DILocation(line: 115, column: 7, scope: !915)
!940 = !DILocation(line: 125, column: 13, scope: !930)
!941 = !DILocation(line: 125, column: 21, scope: !930)
!942 = !DILocation(line: 126, column: 13, scope: !930)
!943 = !DILocation(line: 127, column: 29, scope: !930)
!944 = !DILocation(line: 127, column: 13, scope: !930)
!945 = !DILocation(line: 128, column: 13, scope: !930)
!946 = !DILocation(line: 132, column: 26, scope: !931)
!947 = !DILocation(line: 133, column: 11, scope: !931)
!948 = !DILocation(line: 0, scope: !931)
!949 = !DILocation(line: 138, column: 10, scope: !915)
!950 = !DILocation(line: 139, column: 1, scope: !915)
!951 = distinct !DISubprogram(name: "set_program_name", scope: !44, file: !44, line: 39, type: !607, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !43, retainedNodes: !952)
!952 = !{!953, !954, !955}
!953 = !DILocalVariable(name: "argv0", arg: 1, scope: !951, file: !44, line: 39, type: !6)
!954 = !DILocalVariable(name: "slash", scope: !951, file: !44, line: 46, type: !6)
!955 = !DILocalVariable(name: "base", scope: !951, file: !44, line: 47, type: !6)
!956 = !DILocation(line: 0, scope: !951)
!957 = !DILocation(line: 51, column: 13, scope: !958)
!958 = distinct !DILexicalBlock(scope: !951, file: !44, line: 51, column: 7)
!959 = !DILocation(line: 51, column: 7, scope: !951)
!960 = !DILocation(line: 55, column: 14, scope: !961)
!961 = distinct !DILexicalBlock(scope: !958, file: !44, line: 52, column: 5)
!962 = !DILocation(line: 54, column: 7, scope: !961)
!963 = !DILocation(line: 56, column: 7, scope: !961)
!964 = !DILocation(line: 59, column: 11, scope: !951)
!965 = !DILocation(line: 60, column: 17, scope: !951)
!966 = !DILocation(line: 60, column: 11, scope: !951)
!967 = !DILocation(line: 61, column: 12, scope: !968)
!968 = distinct !DILexicalBlock(scope: !951, file: !44, line: 61, column: 7)
!969 = !DILocation(line: 61, column: 20, scope: !968)
!970 = !DILocation(line: 61, column: 25, scope: !968)
!971 = !DILocation(line: 61, column: 42, scope: !968)
!972 = !DILocation(line: 61, column: 28, scope: !968)
!973 = !DILocation(line: 61, column: 61, scope: !968)
!974 = !DILocation(line: 61, column: 7, scope: !951)
!975 = !DILocation(line: 64, column: 11, scope: !976)
!976 = distinct !DILexicalBlock(scope: !977, file: !44, line: 64, column: 11)
!977 = distinct !DILexicalBlock(scope: !968, file: !44, line: 62, column: 5)
!978 = !DILocation(line: 64, column: 36, scope: !976)
!979 = !DILocation(line: 64, column: 11, scope: !977)
!980 = !DILocation(line: 66, column: 24, scope: !981)
!981 = distinct !DILexicalBlock(scope: !976, file: !44, line: 65, column: 9)
!982 = !DILocation(line: 70, column: 41, scope: !981)
!983 = !DILocation(line: 72, column: 9, scope: !981)
!984 = !DILocation(line: 84, column: 16, scope: !951)
!985 = !DILocation(line: 90, column: 27, scope: !951)
!986 = !DILocation(line: 92, column: 1, scope: !951)
!987 = distinct !DISubprogram(name: "clone_quoting_options", scope: !52, file: !52, line: 122, type: !988, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !991)
!988 = !DISubroutineType(types: !989)
!989 = !{!990, !990}
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!991 = !{!992, !993, !994}
!992 = !DILocalVariable(name: "o", arg: 1, scope: !987, file: !52, line: 122, type: !990)
!993 = !DILocalVariable(name: "e", scope: !987, file: !52, line: 124, type: !23)
!994 = !DILocalVariable(name: "p", scope: !987, file: !52, line: 125, type: !990)
!995 = !DILocation(line: 0, scope: !987)
!996 = !DILocation(line: 124, column: 11, scope: !987)
!997 = !DILocation(line: 125, column: 40, scope: !987)
!998 = !DILocation(line: 125, column: 31, scope: !987)
!999 = !DILocation(line: 127, column: 9, scope: !987)
!1000 = !DILocation(line: 128, column: 3, scope: !987)
!1001 = distinct !DISubprogram(name: "get_quoting_style", scope: !52, file: !52, line: 133, type: !1002, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1006)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!54, !1004}
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!1006 = !{!1007}
!1007 = !DILocalVariable(name: "o", arg: 1, scope: !1001, file: !52, line: 133, type: !1004)
!1008 = !DILocation(line: 0, scope: !1001)
!1009 = !DILocation(line: 135, column: 11, scope: !1001)
!1010 = !DILocation(line: 135, column: 46, scope: !1001)
!1011 = !{!1012, !597, i64 0}
!1012 = !{!"quoting_options", !597, i64 0, !758, i64 4, !597, i64 8, !596, i64 40, !596, i64 48}
!1013 = !DILocation(line: 135, column: 3, scope: !1001)
!1014 = distinct !DISubprogram(name: "set_quoting_style", scope: !52, file: !52, line: 141, type: !1015, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1017)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{null, !990, !54}
!1017 = !{!1018, !1019}
!1018 = !DILocalVariable(name: "o", arg: 1, scope: !1014, file: !52, line: 141, type: !990)
!1019 = !DILocalVariable(name: "s", arg: 2, scope: !1014, file: !52, line: 141, type: !54)
!1020 = !DILocation(line: 0, scope: !1014)
!1021 = !DILocation(line: 143, column: 4, scope: !1014)
!1022 = !DILocation(line: 143, column: 39, scope: !1014)
!1023 = !DILocation(line: 143, column: 45, scope: !1014)
!1024 = !DILocation(line: 144, column: 1, scope: !1014)
!1025 = distinct !DISubprogram(name: "set_char_quoting", scope: !52, file: !52, line: 152, type: !1026, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1028)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!23, !990, !8, !23}
!1028 = !{!1029, !1030, !1031, !1032, !1034, !1036, !1037}
!1029 = !DILocalVariable(name: "o", arg: 1, scope: !1025, file: !52, line: 152, type: !990)
!1030 = !DILocalVariable(name: "c", arg: 2, scope: !1025, file: !52, line: 152, type: !8)
!1031 = !DILocalVariable(name: "i", arg: 3, scope: !1025, file: !52, line: 152, type: !23)
!1032 = !DILocalVariable(name: "uc", scope: !1025, file: !52, line: 154, type: !1033)
!1033 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1034 = !DILocalVariable(name: "p", scope: !1025, file: !52, line: 155, type: !1035)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!1036 = !DILocalVariable(name: "shift", scope: !1025, file: !52, line: 157, type: !23)
!1037 = !DILocalVariable(name: "r", scope: !1025, file: !52, line: 158, type: !23)
!1038 = !DILocation(line: 0, scope: !1025)
!1039 = !DILocation(line: 156, column: 6, scope: !1025)
!1040 = !DILocation(line: 156, column: 62, scope: !1025)
!1041 = !DILocation(line: 156, column: 57, scope: !1025)
!1042 = !DILocation(line: 157, column: 15, scope: !1025)
!1043 = !DILocation(line: 158, column: 12, scope: !1025)
!1044 = !DILocation(line: 158, column: 15, scope: !1025)
!1045 = !DILocation(line: 158, column: 25, scope: !1025)
!1046 = !DILocation(line: 159, column: 13, scope: !1025)
!1047 = !DILocation(line: 159, column: 18, scope: !1025)
!1048 = !DILocation(line: 159, column: 23, scope: !1025)
!1049 = !DILocation(line: 159, column: 6, scope: !1025)
!1050 = !DILocation(line: 160, column: 3, scope: !1025)
!1051 = distinct !DISubprogram(name: "set_quoting_flags", scope: !52, file: !52, line: 168, type: !1052, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1054)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!23, !990, !23}
!1054 = !{!1055, !1056, !1057}
!1055 = !DILocalVariable(name: "o", arg: 1, scope: !1051, file: !52, line: 168, type: !990)
!1056 = !DILocalVariable(name: "i", arg: 2, scope: !1051, file: !52, line: 168, type: !23)
!1057 = !DILocalVariable(name: "r", scope: !1051, file: !52, line: 170, type: !23)
!1058 = !DILocation(line: 0, scope: !1051)
!1059 = !DILocation(line: 171, column: 8, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1051, file: !52, line: 171, column: 7)
!1061 = !DILocation(line: 171, column: 7, scope: !1051)
!1062 = !DILocation(line: 173, column: 10, scope: !1051)
!1063 = !{!1012, !758, i64 4}
!1064 = !DILocation(line: 174, column: 12, scope: !1051)
!1065 = !DILocation(line: 175, column: 3, scope: !1051)
!1066 = distinct !DISubprogram(name: "set_custom_quoting", scope: !52, file: !52, line: 179, type: !1067, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1069)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{null, !990, !6, !6}
!1069 = !{!1070, !1071, !1072}
!1070 = !DILocalVariable(name: "o", arg: 1, scope: !1066, file: !52, line: 179, type: !990)
!1071 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1066, file: !52, line: 180, type: !6)
!1072 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1066, file: !52, line: 180, type: !6)
!1073 = !DILocation(line: 0, scope: !1066)
!1074 = !DILocation(line: 182, column: 8, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1066, file: !52, line: 182, column: 7)
!1076 = !DILocation(line: 182, column: 7, scope: !1066)
!1077 = !DILocation(line: 184, column: 6, scope: !1066)
!1078 = !DILocation(line: 184, column: 12, scope: !1066)
!1079 = !DILocation(line: 185, column: 8, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1066, file: !52, line: 185, column: 7)
!1081 = !DILocation(line: 185, column: 19, scope: !1080)
!1082 = !DILocation(line: 186, column: 5, scope: !1080)
!1083 = !DILocation(line: 187, column: 6, scope: !1066)
!1084 = !DILocation(line: 187, column: 17, scope: !1066)
!1085 = !{!1012, !596, i64 40}
!1086 = !DILocation(line: 188, column: 6, scope: !1066)
!1087 = !DILocation(line: 188, column: 18, scope: !1066)
!1088 = !{!1012, !596, i64 48}
!1089 = !DILocation(line: 189, column: 1, scope: !1066)
!1090 = distinct !DISubprogram(name: "quotearg_buffer", scope: !52, file: !52, line: 784, type: !1091, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1093)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!91, !47, !91, !6, !91, !1004}
!1093 = !{!1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101}
!1094 = !DILocalVariable(name: "buffer", arg: 1, scope: !1090, file: !52, line: 784, type: !47)
!1095 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1090, file: !52, line: 784, type: !91)
!1096 = !DILocalVariable(name: "arg", arg: 3, scope: !1090, file: !52, line: 785, type: !6)
!1097 = !DILocalVariable(name: "argsize", arg: 4, scope: !1090, file: !52, line: 785, type: !91)
!1098 = !DILocalVariable(name: "o", arg: 5, scope: !1090, file: !52, line: 786, type: !1004)
!1099 = !DILocalVariable(name: "p", scope: !1090, file: !52, line: 788, type: !1004)
!1100 = !DILocalVariable(name: "e", scope: !1090, file: !52, line: 789, type: !23)
!1101 = !DILocalVariable(name: "r", scope: !1090, file: !52, line: 790, type: !91)
!1102 = !DILocation(line: 0, scope: !1090)
!1103 = !DILocation(line: 788, column: 37, scope: !1090)
!1104 = !DILocation(line: 789, column: 11, scope: !1090)
!1105 = !DILocation(line: 791, column: 43, scope: !1090)
!1106 = !DILocation(line: 791, column: 53, scope: !1090)
!1107 = !DILocation(line: 791, column: 60, scope: !1090)
!1108 = !DILocation(line: 792, column: 43, scope: !1090)
!1109 = !DILocation(line: 792, column: 58, scope: !1090)
!1110 = !DILocation(line: 790, column: 14, scope: !1090)
!1111 = !DILocation(line: 793, column: 9, scope: !1090)
!1112 = !DILocation(line: 794, column: 3, scope: !1090)
!1113 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !52, file: !52, line: 256, type: !1114, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1118)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!91, !47, !91, !6, !91, !54, !23, !1116, !6, !6}
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!1118 = !{!1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1143, !1144, !1145, !1146, !1147, !1150, !1151, !1169, !1172, !1173, !1180, !1183, !1184, !1185, !1186, !1187, !1188}
!1119 = !DILocalVariable(name: "buffer", arg: 1, scope: !1113, file: !52, line: 256, type: !47)
!1120 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1113, file: !52, line: 256, type: !91)
!1121 = !DILocalVariable(name: "arg", arg: 3, scope: !1113, file: !52, line: 257, type: !6)
!1122 = !DILocalVariable(name: "argsize", arg: 4, scope: !1113, file: !52, line: 257, type: !91)
!1123 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1113, file: !52, line: 258, type: !54)
!1124 = !DILocalVariable(name: "flags", arg: 6, scope: !1113, file: !52, line: 258, type: !23)
!1125 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1113, file: !52, line: 259, type: !1116)
!1126 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1113, file: !52, line: 260, type: !6)
!1127 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1113, file: !52, line: 261, type: !6)
!1128 = !DILocalVariable(name: "i", scope: !1113, file: !52, line: 263, type: !91)
!1129 = !DILocalVariable(name: "len", scope: !1113, file: !52, line: 264, type: !91)
!1130 = !DILocalVariable(name: "orig_buffersize", scope: !1113, file: !52, line: 265, type: !91)
!1131 = !DILocalVariable(name: "quote_string", scope: !1113, file: !52, line: 266, type: !6)
!1132 = !DILocalVariable(name: "quote_string_len", scope: !1113, file: !52, line: 267, type: !91)
!1133 = !DILocalVariable(name: "backslash_escapes", scope: !1113, file: !52, line: 268, type: !16)
!1134 = !DILocalVariable(name: "unibyte_locale", scope: !1113, file: !52, line: 269, type: !16)
!1135 = !DILocalVariable(name: "elide_outer_quotes", scope: !1113, file: !52, line: 270, type: !16)
!1136 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1113, file: !52, line: 271, type: !16)
!1137 = !DILocalVariable(name: "encountered_single_quote", scope: !1113, file: !52, line: 272, type: !16)
!1138 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1113, file: !52, line: 273, type: !16)
!1139 = !DILocalVariable(name: "c", scope: !1140, file: !52, line: 402, type: !1033)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !52, line: 401, column: 5)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !52, line: 400, column: 3)
!1142 = distinct !DILexicalBlock(scope: !1113, file: !52, line: 400, column: 3)
!1143 = !DILocalVariable(name: "esc", scope: !1140, file: !52, line: 403, type: !1033)
!1144 = !DILocalVariable(name: "is_right_quote", scope: !1140, file: !52, line: 404, type: !16)
!1145 = !DILocalVariable(name: "escaping", scope: !1140, file: !52, line: 405, type: !16)
!1146 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1140, file: !52, line: 406, type: !16)
!1147 = !DILocalVariable(name: "m", scope: !1148, file: !52, line: 610, type: !91)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !52, line: 608, column: 11)
!1149 = distinct !DILexicalBlock(scope: !1140, file: !52, line: 426, column: 9)
!1150 = !DILocalVariable(name: "printable", scope: !1148, file: !52, line: 612, type: !16)
!1151 = !DILocalVariable(name: "mbstate", scope: !1152, file: !52, line: 621, type: !1154)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !52, line: 620, column: 15)
!1153 = distinct !DILexicalBlock(scope: !1148, file: !52, line: 614, column: 17)
!1154 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1155, line: 6, baseType: !1156)
!1155 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1157, line: 21, baseType: !1158)
!1157 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1157, line: 13, size: 64, elements: !1159)
!1159 = !{!1160, !1161}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1158, file: !1157, line: 15, baseType: !23, size: 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1158, file: !1157, line: 20, baseType: !1162, size: 32, offset: 32)
!1162 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1158, file: !1157, line: 16, size: 32, elements: !1163)
!1163 = !{!1164, !1165}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1162, file: !1157, line: 18, baseType: !56, size: 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1162, file: !1157, line: 19, baseType: !1166, size: 32)
!1166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !1167)
!1167 = !{!1168}
!1168 = !DISubrange(count: 4)
!1169 = !DILocalVariable(name: "w", scope: !1170, file: !52, line: 631, type: !1171)
!1170 = distinct !DILexicalBlock(scope: !1152, file: !52, line: 630, column: 19)
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !92, line: 74, baseType: !23)
!1172 = !DILocalVariable(name: "bytes", scope: !1170, file: !52, line: 632, type: !91)
!1173 = !DILocalVariable(name: "j", scope: !1174, file: !52, line: 657, type: !91)
!1174 = distinct !DILexicalBlock(scope: !1175, file: !52, line: 656, column: 27)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !52, line: 654, column: 29)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !52, line: 649, column: 23)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !52, line: 641, column: 30)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !52, line: 636, column: 30)
!1179 = distinct !DILexicalBlock(scope: !1170, file: !52, line: 634, column: 25)
!1180 = !DILocalVariable(name: "ilim", scope: !1181, file: !52, line: 684, type: !91)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !52, line: 681, column: 15)
!1182 = distinct !DILexicalBlock(scope: !1148, file: !52, line: 680, column: 17)
!1183 = !DILabel(scope: !1113, name: "process_input", file: !52, line: 314)
!1184 = !DILabel(scope: !1149, name: "c_and_shell_escape", file: !52, line: 512)
!1185 = !DILabel(scope: !1149, name: "c_escape", file: !52, line: 517)
!1186 = !DILabel(scope: !1140, name: "store_escape", file: !52, line: 719)
!1187 = !DILabel(scope: !1140, name: "store_c", file: !52, line: 722)
!1188 = !DILabel(scope: !1113, name: "force_outer_quoting_style", file: !52, line: 763)
!1189 = !DILocation(line: 0, scope: !1113)
!1190 = !DILocation(line: 269, column: 25, scope: !1113)
!1191 = !DILocation(line: 269, column: 36, scope: !1113)
!1192 = !DILocation(line: 270, column: 8, scope: !1113)
!1193 = !DILocation(line: 273, column: 3, scope: !1113)
!1194 = !DILocation(line: 265, column: 10, scope: !1113)
!1195 = !DILocation(line: 266, column: 15, scope: !1113)
!1196 = !DILocation(line: 267, column: 10, scope: !1113)
!1197 = !DILocation(line: 268, column: 8, scope: !1113)
!1198 = !DILocation(line: 271, column: 8, scope: !1113)
!1199 = !DILocation(line: 272, column: 8, scope: !1113)
!1200 = !DILocation(line: 273, column: 8, scope: !1113)
!1201 = !DILocation(line: 314, column: 2, scope: !1113)
!1202 = !DILocation(line: 316, column: 3, scope: !1113)
!1203 = !DILocation(line: 323, column: 11, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1113, file: !52, line: 317, column: 5)
!1205 = !DILocation(line: 323, column: 12, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1204, file: !52, line: 323, column: 11)
!1207 = !DILocation(line: 324, column: 9, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !52, line: 324, column: 9)
!1209 = distinct !DILexicalBlock(scope: !1206, file: !52, line: 324, column: 9)
!1210 = !DILocation(line: 324, column: 9, scope: !1209)
!1211 = !{!597, !597, i64 0}
!1212 = !DILocation(line: 362, column: 26, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !52, line: 340, column: 11)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !52, line: 339, column: 13)
!1215 = distinct !DILexicalBlock(scope: !1204, file: !52, line: 338, column: 7)
!1216 = !DILocation(line: 363, column: 27, scope: !1213)
!1217 = !DILocation(line: 364, column: 11, scope: !1213)
!1218 = !DILocation(line: 365, column: 14, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1215, file: !52, line: 365, column: 13)
!1220 = !DILocation(line: 365, column: 13, scope: !1215)
!1221 = !DILocation(line: 366, column: 43, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !52, line: 366, column: 11)
!1223 = distinct !DILexicalBlock(scope: !1219, file: !52, line: 366, column: 11)
!1224 = !DILocation(line: 366, column: 11, scope: !1223)
!1225 = !DILocation(line: 367, column: 13, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !52, line: 367, column: 13)
!1227 = distinct !DILexicalBlock(scope: !1222, file: !52, line: 367, column: 13)
!1228 = !DILocation(line: 367, column: 13, scope: !1227)
!1229 = !DILocation(line: 366, column: 70, scope: !1222)
!1230 = distinct !{!1230, !1224, !1231, !637}
!1231 = !DILocation(line: 367, column: 13, scope: !1223)
!1232 = !DILocation(line: 264, column: 10, scope: !1113)
!1233 = !DILocation(line: 370, column: 28, scope: !1215)
!1234 = !DILocation(line: 372, column: 7, scope: !1204)
!1235 = !DILocation(line: 376, column: 7, scope: !1204)
!1236 = !DILocation(line: 379, column: 7, scope: !1204)
!1237 = !DILocation(line: 381, column: 12, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1204, file: !52, line: 381, column: 11)
!1239 = !DILocation(line: 381, column: 11, scope: !1204)
!1240 = !DILocation(line: 386, column: 12, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1204, file: !52, line: 386, column: 11)
!1242 = !DILocation(line: 386, column: 11, scope: !1204)
!1243 = !DILocation(line: 387, column: 9, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !52, line: 387, column: 9)
!1245 = distinct !DILexicalBlock(scope: !1241, file: !52, line: 387, column: 9)
!1246 = !DILocation(line: 387, column: 9, scope: !1245)
!1247 = !DILocation(line: 394, column: 7, scope: !1204)
!1248 = !DILocation(line: 397, column: 7, scope: !1204)
!1249 = !DILocation(line: 400, column: 8, scope: !1142)
!1250 = !DILocation(line: 0, scope: !1142)
!1251 = !DILocation(line: 400, column: 27, scope: !1141)
!1252 = !DILocation(line: 400, column: 19, scope: !1141)
!1253 = !DILocation(line: 400, column: 41, scope: !1141)
!1254 = !DILocation(line: 400, column: 48, scope: !1141)
!1255 = !DILocation(line: 400, column: 3, scope: !1142)
!1256 = !DILocation(line: 400, column: 60, scope: !1141)
!1257 = !DILocation(line: 0, scope: !1140)
!1258 = !DILocation(line: 409, column: 11, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1140, file: !52, line: 408, column: 11)
!1260 = !DILocation(line: 411, column: 17, scope: !1259)
!1261 = !DILocation(line: 412, column: 39, scope: !1259)
!1262 = !DILocation(line: 416, column: 32, scope: !1259)
!1263 = !DILocation(line: 412, column: 19, scope: !1259)
!1264 = !DILocation(line: 412, column: 15, scope: !1259)
!1265 = !DILocation(line: 417, column: 11, scope: !1259)
!1266 = !DILocation(line: 417, column: 26, scope: !1259)
!1267 = !DILocation(line: 417, column: 14, scope: !1259)
!1268 = !DILocation(line: 417, column: 63, scope: !1259)
!1269 = !DILocation(line: 408, column: 11, scope: !1140)
!1270 = !DILocation(line: 424, column: 11, scope: !1140)
!1271 = !DILocation(line: 425, column: 7, scope: !1140)
!1272 = !DILocation(line: 428, column: 15, scope: !1149)
!1273 = !DILocation(line: 430, column: 15, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !52, line: 430, column: 15)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !52, line: 429, column: 13)
!1276 = distinct !DILexicalBlock(scope: !1149, file: !52, line: 428, column: 15)
!1277 = !DILocation(line: 430, column: 15, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1274, file: !52, line: 430, column: 15)
!1279 = !DILocation(line: 430, column: 15, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !52, line: 430, column: 15)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !52, line: 430, column: 15)
!1282 = distinct !DILexicalBlock(scope: !1278, file: !52, line: 430, column: 15)
!1283 = !DILocation(line: 430, column: 15, scope: !1281)
!1284 = !DILocation(line: 430, column: 15, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !52, line: 430, column: 15)
!1286 = distinct !DILexicalBlock(scope: !1282, file: !52, line: 430, column: 15)
!1287 = !DILocation(line: 430, column: 15, scope: !1286)
!1288 = !DILocation(line: 430, column: 15, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !52, line: 430, column: 15)
!1290 = distinct !DILexicalBlock(scope: !1282, file: !52, line: 430, column: 15)
!1291 = !DILocation(line: 430, column: 15, scope: !1290)
!1292 = !DILocation(line: 430, column: 15, scope: !1282)
!1293 = !DILocation(line: 430, column: 15, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !52, line: 430, column: 15)
!1295 = distinct !DILexicalBlock(scope: !1274, file: !52, line: 430, column: 15)
!1296 = !DILocation(line: 430, column: 15, scope: !1295)
!1297 = !DILocation(line: 438, column: 19, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1275, file: !52, line: 437, column: 19)
!1299 = !DILocation(line: 438, column: 48, scope: !1298)
!1300 = !DILocation(line: 438, column: 59, scope: !1298)
!1301 = !DILocation(line: 440, column: 19, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !52, line: 440, column: 19)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !52, line: 440, column: 19)
!1304 = distinct !DILexicalBlock(scope: !1298, file: !52, line: 439, column: 17)
!1305 = !DILocation(line: 440, column: 19, scope: !1303)
!1306 = !DILocation(line: 441, column: 19, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !52, line: 441, column: 19)
!1308 = distinct !DILexicalBlock(scope: !1304, file: !52, line: 441, column: 19)
!1309 = !DILocation(line: 441, column: 19, scope: !1308)
!1310 = !DILocation(line: 442, column: 17, scope: !1304)
!1311 = !DILocation(line: 449, column: 20, scope: !1276)
!1312 = !DILocation(line: 454, column: 11, scope: !1149)
!1313 = !DILocation(line: 457, column: 19, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1149, file: !52, line: 455, column: 13)
!1315 = !DILocation(line: 463, column: 19, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1314, file: !52, line: 462, column: 19)
!1317 = !DILocation(line: 463, column: 47, scope: !1316)
!1318 = !DILocation(line: 463, column: 41, scope: !1316)
!1319 = !DILocation(line: 463, column: 52, scope: !1316)
!1320 = !DILocation(line: 462, column: 19, scope: !1314)
!1321 = !DILocation(line: 464, column: 25, scope: !1316)
!1322 = !DILocation(line: 464, column: 17, scope: !1316)
!1323 = !DILocation(line: 471, column: 25, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1316, file: !52, line: 465, column: 19)
!1325 = !DILocation(line: 475, column: 21, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !52, line: 475, column: 21)
!1327 = distinct !DILexicalBlock(scope: !1324, file: !52, line: 475, column: 21)
!1328 = !DILocation(line: 475, column: 21, scope: !1327)
!1329 = !DILocation(line: 476, column: 21, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !52, line: 476, column: 21)
!1331 = distinct !DILexicalBlock(scope: !1324, file: !52, line: 476, column: 21)
!1332 = !DILocation(line: 476, column: 21, scope: !1331)
!1333 = !DILocation(line: 477, column: 21, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !52, line: 477, column: 21)
!1335 = distinct !DILexicalBlock(scope: !1324, file: !52, line: 477, column: 21)
!1336 = !DILocation(line: 477, column: 21, scope: !1335)
!1337 = !DILocation(line: 478, column: 21, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !52, line: 478, column: 21)
!1339 = distinct !DILexicalBlock(scope: !1324, file: !52, line: 478, column: 21)
!1340 = !DILocation(line: 478, column: 21, scope: !1339)
!1341 = !DILocation(line: 479, column: 21, scope: !1324)
!1342 = !DILocation(line: 492, column: 31, scope: !1149)
!1343 = !DILocation(line: 493, column: 31, scope: !1149)
!1344 = !DILocation(line: 495, column: 31, scope: !1149)
!1345 = !DILocation(line: 496, column: 31, scope: !1149)
!1346 = !DILocation(line: 497, column: 31, scope: !1149)
!1347 = !DILocation(line: 500, column: 15, scope: !1149)
!1348 = !DILocation(line: 502, column: 19, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !52, line: 501, column: 13)
!1350 = distinct !DILexicalBlock(scope: !1149, file: !52, line: 500, column: 15)
!1351 = !DILocation(line: 509, column: 33, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1149, file: !52, line: 509, column: 15)
!1353 = !DILocation(line: 0, scope: !1149)
!1354 = !DILocation(line: 512, column: 9, scope: !1149)
!1355 = !DILocation(line: 514, column: 15, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1149, file: !52, line: 513, column: 15)
!1357 = !DILocation(line: 517, column: 9, scope: !1149)
!1358 = !DILocation(line: 518, column: 15, scope: !1149)
!1359 = !DILocation(line: 526, column: 15, scope: !1149)
!1360 = !DILocation(line: 526, column: 40, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1149, file: !52, line: 526, column: 15)
!1362 = !DILocation(line: 526, column: 47, scope: !1361)
!1363 = !DILocation(line: 526, column: 18, scope: !1361)
!1364 = !DILocation(line: 530, column: 17, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1149, file: !52, line: 530, column: 15)
!1366 = !DILocation(line: 530, column: 15, scope: !1149)
!1367 = !DILocation(line: 535, column: 11, scope: !1149)
!1368 = !DILocation(line: 549, column: 15, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1149, file: !52, line: 548, column: 15)
!1370 = !DILocation(line: 556, column: 15, scope: !1149)
!1371 = !DILocation(line: 558, column: 19, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !52, line: 557, column: 13)
!1373 = distinct !DILexicalBlock(scope: !1149, file: !52, line: 556, column: 15)
!1374 = !DILocation(line: 561, column: 19, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1372, file: !52, line: 561, column: 19)
!1376 = !DILocation(line: 561, column: 30, scope: !1375)
!1377 = !DILocation(line: 570, column: 15, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !52, line: 570, column: 15)
!1379 = distinct !DILexicalBlock(scope: !1372, file: !52, line: 570, column: 15)
!1380 = !DILocation(line: 570, column: 15, scope: !1379)
!1381 = !DILocation(line: 571, column: 15, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !52, line: 571, column: 15)
!1383 = distinct !DILexicalBlock(scope: !1372, file: !52, line: 571, column: 15)
!1384 = !DILocation(line: 571, column: 15, scope: !1383)
!1385 = !DILocation(line: 572, column: 15, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !52, line: 572, column: 15)
!1387 = distinct !DILexicalBlock(scope: !1372, file: !52, line: 572, column: 15)
!1388 = !DILocation(line: 572, column: 15, scope: !1387)
!1389 = !DILocation(line: 574, column: 13, scope: !1372)
!1390 = !DILocation(line: 614, column: 17, scope: !1148)
!1391 = !DILocation(line: 0, scope: !1148)
!1392 = !DILocation(line: 617, column: 29, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1153, file: !52, line: 615, column: 15)
!1394 = !{!1395, !1395, i64 0}
!1395 = !{!"short", !597, i64 0}
!1396 = !DILocation(line: 617, column: 27, scope: !1393)
!1397 = !DILocation(line: 678, column: 40, scope: !1148)
!1398 = !DILocation(line: 680, column: 23, scope: !1182)
!1399 = !DILocation(line: 621, column: 17, scope: !1152)
!1400 = !DILocation(line: 621, column: 27, scope: !1152)
!1401 = !DILocalVariable(name: "__dest", arg: 1, scope: !1402, file: !1403, line: 57, type: !46)
!1402 = distinct !DISubprogram(name: "memset", scope: !1403, file: !1403, line: 57, type: !1404, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1406)
!1403 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!46, !46, !23, !91}
!1406 = !{!1401, !1407, !1408}
!1407 = !DILocalVariable(name: "__ch", arg: 2, scope: !1402, file: !1403, line: 57, type: !23)
!1408 = !DILocalVariable(name: "__len", arg: 3, scope: !1402, file: !1403, line: 57, type: !91)
!1409 = !DILocation(line: 0, scope: !1402, inlinedAt: !1410)
!1410 = distinct !DILocation(line: 622, column: 17, scope: !1152)
!1411 = !DILocation(line: 59, column: 10, scope: !1402, inlinedAt: !1410)
!1412 = !DILocation(line: 626, column: 29, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1152, file: !52, line: 626, column: 21)
!1414 = !DILocation(line: 626, column: 21, scope: !1152)
!1415 = !DILocation(line: 627, column: 29, scope: !1413)
!1416 = !DILocation(line: 627, column: 19, scope: !1413)
!1417 = !DILocation(line: 629, column: 17, scope: !1152)
!1418 = !DILocation(line: 624, column: 19, scope: !1152)
!1419 = !DILocation(line: 625, column: 27, scope: !1152)
!1420 = !DILocation(line: 631, column: 21, scope: !1170)
!1421 = !DILocation(line: 632, column: 56, scope: !1170)
!1422 = !DILocation(line: 632, column: 50, scope: !1170)
!1423 = !DILocation(line: 633, column: 53, scope: !1170)
!1424 = !DILocation(line: 0, scope: !1170)
!1425 = !DILocation(line: 632, column: 36, scope: !1170)
!1426 = !DILocation(line: 634, column: 25, scope: !1170)
!1427 = !DILocation(line: 644, column: 38, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1177, file: !52, line: 642, column: 23)
!1429 = !DILocation(line: 644, column: 48, scope: !1428)
!1430 = !DILocation(line: 644, column: 25, scope: !1428)
!1431 = !DILocation(line: 644, column: 51, scope: !1428)
!1432 = !DILocation(line: 645, column: 28, scope: !1428)
!1433 = !DILocation(line: 644, column: 34, scope: !1428)
!1434 = distinct !{!1434, !1430, !1432, !637}
!1435 = !DILocation(line: 655, column: 29, scope: !1175)
!1436 = !DILocation(line: 0, scope: !1174)
!1437 = !DILocation(line: 659, column: 49, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !52, line: 658, column: 29)
!1439 = distinct !DILexicalBlock(scope: !1174, file: !52, line: 658, column: 29)
!1440 = !DILocation(line: 659, column: 39, scope: !1438)
!1441 = !DILocation(line: 659, column: 31, scope: !1438)
!1442 = !DILocation(line: 658, column: 53, scope: !1438)
!1443 = !DILocation(line: 658, column: 43, scope: !1438)
!1444 = !DILocation(line: 658, column: 29, scope: !1439)
!1445 = distinct !{!1445, !1444, !1446, !637}
!1446 = !DILocation(line: 667, column: 33, scope: !1439)
!1447 = !DILocation(line: 674, column: 19, scope: !1152)
!1448 = !DILocation(line: 670, column: 41, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1176, file: !52, line: 670, column: 29)
!1450 = !DILocation(line: 670, column: 31, scope: !1449)
!1451 = !DILocation(line: 670, column: 29, scope: !1176)
!1452 = !DILocation(line: 672, column: 27, scope: !1176)
!1453 = !DILocation(line: 675, column: 26, scope: !1152)
!1454 = !DILocation(line: 675, column: 24, scope: !1152)
!1455 = !DILocation(line: 674, column: 19, scope: !1170)
!1456 = distinct !{!1456, !1417, !1457, !637}
!1457 = !DILocation(line: 675, column: 44, scope: !1152)
!1458 = !DILocation(line: 676, column: 15, scope: !1153)
!1459 = !DILocation(line: 680, column: 19, scope: !1182)
!1460 = !DILocation(line: 680, column: 45, scope: !1182)
!1461 = !DILocation(line: 684, column: 33, scope: !1181)
!1462 = !DILocation(line: 0, scope: !1181)
!1463 = !DILocation(line: 686, column: 17, scope: !1181)
!1464 = !DILocation(line: 405, column: 12, scope: !1140)
!1465 = !DILocation(line: 688, column: 43, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !52, line: 688, column: 25)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !52, line: 687, column: 19)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !52, line: 686, column: 17)
!1469 = distinct !DILexicalBlock(scope: !1181, file: !52, line: 686, column: 17)
!1470 = !DILocation(line: 690, column: 25, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !52, line: 690, column: 25)
!1472 = distinct !DILexicalBlock(scope: !1466, file: !52, line: 689, column: 23)
!1473 = !DILocation(line: 690, column: 25, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1471, file: !52, line: 690, column: 25)
!1475 = !DILocation(line: 690, column: 25, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !52, line: 690, column: 25)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !52, line: 690, column: 25)
!1478 = distinct !DILexicalBlock(scope: !1474, file: !52, line: 690, column: 25)
!1479 = !DILocation(line: 690, column: 25, scope: !1477)
!1480 = !DILocation(line: 690, column: 25, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !52, line: 690, column: 25)
!1482 = distinct !DILexicalBlock(scope: !1478, file: !52, line: 690, column: 25)
!1483 = !DILocation(line: 690, column: 25, scope: !1482)
!1484 = !DILocation(line: 690, column: 25, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !52, line: 690, column: 25)
!1486 = distinct !DILexicalBlock(scope: !1478, file: !52, line: 690, column: 25)
!1487 = !DILocation(line: 690, column: 25, scope: !1486)
!1488 = !DILocation(line: 690, column: 25, scope: !1478)
!1489 = !DILocation(line: 690, column: 25, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !52, line: 690, column: 25)
!1491 = distinct !DILexicalBlock(scope: !1471, file: !52, line: 690, column: 25)
!1492 = !DILocation(line: 690, column: 25, scope: !1491)
!1493 = !DILocation(line: 691, column: 25, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !52, line: 691, column: 25)
!1495 = distinct !DILexicalBlock(scope: !1472, file: !52, line: 691, column: 25)
!1496 = !DILocation(line: 691, column: 25, scope: !1495)
!1497 = !DILocation(line: 692, column: 25, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !52, line: 692, column: 25)
!1499 = distinct !DILexicalBlock(scope: !1472, file: !52, line: 692, column: 25)
!1500 = !DILocation(line: 692, column: 25, scope: !1499)
!1501 = !DILocation(line: 693, column: 38, scope: !1472)
!1502 = !DILocation(line: 693, column: 33, scope: !1472)
!1503 = !DILocation(line: 694, column: 23, scope: !1472)
!1504 = !DILocation(line: 695, column: 30, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1466, file: !52, line: 695, column: 30)
!1506 = !DILocation(line: 695, column: 30, scope: !1466)
!1507 = !DILocation(line: 697, column: 25, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !52, line: 697, column: 25)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !52, line: 697, column: 25)
!1510 = distinct !DILexicalBlock(scope: !1505, file: !52, line: 696, column: 23)
!1511 = !DILocation(line: 697, column: 25, scope: !1509)
!1512 = !DILocation(line: 699, column: 23, scope: !1510)
!1513 = !DILocation(line: 700, column: 35, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1467, file: !52, line: 700, column: 25)
!1515 = !DILocation(line: 700, column: 30, scope: !1514)
!1516 = !DILocation(line: 700, column: 25, scope: !1467)
!1517 = !DILocation(line: 702, column: 21, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !52, line: 702, column: 21)
!1519 = distinct !DILexicalBlock(scope: !1467, file: !52, line: 702, column: 21)
!1520 = !DILocation(line: 702, column: 21, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !52, line: 702, column: 21)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !52, line: 702, column: 21)
!1523 = distinct !DILexicalBlock(scope: !1518, file: !52, line: 702, column: 21)
!1524 = !DILocation(line: 702, column: 21, scope: !1522)
!1525 = !DILocation(line: 702, column: 21, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !52, line: 702, column: 21)
!1527 = distinct !DILexicalBlock(scope: !1523, file: !52, line: 702, column: 21)
!1528 = !DILocation(line: 702, column: 21, scope: !1527)
!1529 = !DILocation(line: 702, column: 21, scope: !1523)
!1530 = !DILocation(line: 0, scope: !1467)
!1531 = !DILocation(line: 703, column: 21, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !52, line: 703, column: 21)
!1533 = distinct !DILexicalBlock(scope: !1467, file: !52, line: 703, column: 21)
!1534 = !DILocation(line: 703, column: 21, scope: !1533)
!1535 = !DILocation(line: 704, column: 25, scope: !1467)
!1536 = !DILocation(line: 686, column: 17, scope: !1468)
!1537 = distinct !{!1537, !1538, !1539}
!1538 = !DILocation(line: 686, column: 17, scope: !1469)
!1539 = !DILocation(line: 705, column: 19, scope: !1469)
!1540 = !DILocation(line: 416, column: 30, scope: !1259)
!1541 = !DILocation(line: 712, column: 34, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1140, file: !52, line: 712, column: 11)
!1543 = !DILocation(line: 715, column: 35, scope: !1542)
!1544 = !DILocation(line: 715, column: 17, scope: !1542)
!1545 = !DILocation(line: 715, column: 47, scope: !1542)
!1546 = !DILocation(line: 715, column: 65, scope: !1542)
!1547 = !DILocation(line: 716, column: 11, scope: !1542)
!1548 = !DILocation(line: 712, column: 11, scope: !1140)
!1549 = !DILocation(line: 400, column: 10, scope: !1142)
!1550 = !DILocation(line: 719, column: 5, scope: !1140)
!1551 = !DILocation(line: 720, column: 7, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1140, file: !52, line: 720, column: 7)
!1553 = !DILocation(line: 720, column: 7, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1552, file: !52, line: 720, column: 7)
!1555 = !DILocation(line: 720, column: 7, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !52, line: 720, column: 7)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !52, line: 720, column: 7)
!1558 = distinct !DILexicalBlock(scope: !1554, file: !52, line: 720, column: 7)
!1559 = !DILocation(line: 720, column: 7, scope: !1557)
!1560 = !DILocation(line: 720, column: 7, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !52, line: 720, column: 7)
!1562 = distinct !DILexicalBlock(scope: !1558, file: !52, line: 720, column: 7)
!1563 = !DILocation(line: 720, column: 7, scope: !1562)
!1564 = !DILocation(line: 720, column: 7, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !52, line: 720, column: 7)
!1566 = distinct !DILexicalBlock(scope: !1558, file: !52, line: 720, column: 7)
!1567 = !DILocation(line: 720, column: 7, scope: !1566)
!1568 = !DILocation(line: 720, column: 7, scope: !1558)
!1569 = !DILocation(line: 720, column: 7, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !52, line: 720, column: 7)
!1571 = distinct !DILexicalBlock(scope: !1552, file: !52, line: 720, column: 7)
!1572 = !DILocation(line: 720, column: 7, scope: !1571)
!1573 = !DILocation(line: 722, column: 5, scope: !1140)
!1574 = !DILocation(line: 723, column: 7, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !52, line: 723, column: 7)
!1576 = distinct !DILexicalBlock(scope: !1140, file: !52, line: 723, column: 7)
!1577 = !DILocation(line: 424, column: 9, scope: !1140)
!1578 = !DILocation(line: 723, column: 7, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !52, line: 723, column: 7)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !52, line: 723, column: 7)
!1581 = distinct !DILexicalBlock(scope: !1575, file: !52, line: 723, column: 7)
!1582 = !DILocation(line: 723, column: 7, scope: !1580)
!1583 = !DILocation(line: 723, column: 7, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !52, line: 723, column: 7)
!1585 = distinct !DILexicalBlock(scope: !1581, file: !52, line: 723, column: 7)
!1586 = !DILocation(line: 723, column: 7, scope: !1585)
!1587 = !DILocation(line: 723, column: 7, scope: !1581)
!1588 = !DILocation(line: 724, column: 7, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !52, line: 724, column: 7)
!1590 = distinct !DILexicalBlock(scope: !1140, file: !52, line: 724, column: 7)
!1591 = !DILocation(line: 724, column: 7, scope: !1590)
!1592 = !DILocation(line: 726, column: 13, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1140, file: !52, line: 726, column: 11)
!1594 = !DILocation(line: 726, column: 11, scope: !1140)
!1595 = !DILocation(line: 728, column: 5, scope: !1141)
!1596 = !DILocation(line: 400, column: 75, scope: !1141)
!1597 = !DILocation(line: 400, column: 3, scope: !1141)
!1598 = distinct !{!1598, !1255, !1599, !637}
!1599 = !DILocation(line: 728, column: 5, scope: !1142)
!1600 = !DILocation(line: 730, column: 11, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1113, file: !52, line: 730, column: 7)
!1602 = !DILocation(line: 730, column: 16, scope: !1601)
!1603 = !DILocation(line: 738, column: 51, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1113, file: !52, line: 738, column: 7)
!1605 = !DILocation(line: 741, column: 11, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !52, line: 741, column: 11)
!1607 = distinct !DILexicalBlock(scope: !1604, file: !52, line: 740, column: 5)
!1608 = !DILocation(line: 741, column: 11, scope: !1607)
!1609 = !DILocation(line: 742, column: 16, scope: !1606)
!1610 = !DILocation(line: 742, column: 9, scope: !1606)
!1611 = !DILocation(line: 746, column: 18, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1606, file: !52, line: 746, column: 16)
!1613 = !DILocation(line: 746, column: 29, scope: !1612)
!1614 = !DILocation(line: 755, column: 7, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1113, file: !52, line: 755, column: 7)
!1616 = !DILocation(line: 755, column: 20, scope: !1615)
!1617 = !DILocation(line: 756, column: 12, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !52, line: 756, column: 5)
!1619 = distinct !DILexicalBlock(scope: !1615, file: !52, line: 756, column: 5)
!1620 = !DILocation(line: 756, column: 5, scope: !1619)
!1621 = !DILocation(line: 757, column: 7, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !52, line: 757, column: 7)
!1623 = distinct !DILexicalBlock(scope: !1618, file: !52, line: 757, column: 7)
!1624 = !DILocation(line: 757, column: 7, scope: !1623)
!1625 = !DILocation(line: 756, column: 39, scope: !1618)
!1626 = distinct !{!1626, !1620, !1627, !637}
!1627 = !DILocation(line: 757, column: 7, scope: !1619)
!1628 = !DILocation(line: 759, column: 11, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1113, file: !52, line: 759, column: 7)
!1630 = !DILocation(line: 759, column: 7, scope: !1113)
!1631 = !DILocation(line: 760, column: 5, scope: !1629)
!1632 = !DILocation(line: 760, column: 17, scope: !1629)
!1633 = !DILocation(line: 763, column: 2, scope: !1113)
!1634 = !DILocation(line: 766, column: 51, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1113, file: !52, line: 766, column: 7)
!1636 = !DILocation(line: 766, column: 21, scope: !1635)
!1637 = !DILocation(line: 770, column: 42, scope: !1113)
!1638 = !DILocation(line: 768, column: 10, scope: !1113)
!1639 = !DILocation(line: 768, column: 3, scope: !1113)
!1640 = !DILocation(line: 772, column: 1, scope: !1113)
!1641 = distinct !DISubprogram(name: "gettext_quote", scope: !52, file: !52, line: 207, type: !1642, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1644)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!6, !6, !54}
!1644 = !{!1645, !1646, !1647, !1648}
!1645 = !DILocalVariable(name: "msgid", arg: 1, scope: !1641, file: !52, line: 207, type: !6)
!1646 = !DILocalVariable(name: "s", arg: 2, scope: !1641, file: !52, line: 207, type: !54)
!1647 = !DILocalVariable(name: "translation", scope: !1641, file: !52, line: 209, type: !6)
!1648 = !DILocalVariable(name: "locale_code", scope: !1641, file: !52, line: 210, type: !6)
!1649 = !DILocation(line: 0, scope: !1641)
!1650 = !DILocation(line: 209, column: 29, scope: !1641)
!1651 = !DILocation(line: 212, column: 19, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1641, file: !52, line: 212, column: 7)
!1653 = !DILocation(line: 212, column: 7, scope: !1641)
!1654 = !DILocation(line: 233, column: 17, scope: !1641)
!1655 = !DILocalVariable(name: "s1", arg: 1, scope: !1656, file: !1657, line: 160, type: !6)
!1656 = distinct !DISubprogram(name: "strcaseeq0", scope: !1657, file: !1657, line: 160, type: !1658, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1660)
!1657 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1660 = !{!1655, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670}
!1661 = !DILocalVariable(name: "s2", arg: 2, scope: !1656, file: !1657, line: 160, type: !6)
!1662 = !DILocalVariable(name: "s20", arg: 3, scope: !1656, file: !1657, line: 160, type: !8)
!1663 = !DILocalVariable(name: "s21", arg: 4, scope: !1656, file: !1657, line: 160, type: !8)
!1664 = !DILocalVariable(name: "s22", arg: 5, scope: !1656, file: !1657, line: 160, type: !8)
!1665 = !DILocalVariable(name: "s23", arg: 6, scope: !1656, file: !1657, line: 160, type: !8)
!1666 = !DILocalVariable(name: "s24", arg: 7, scope: !1656, file: !1657, line: 160, type: !8)
!1667 = !DILocalVariable(name: "s25", arg: 8, scope: !1656, file: !1657, line: 160, type: !8)
!1668 = !DILocalVariable(name: "s26", arg: 9, scope: !1656, file: !1657, line: 160, type: !8)
!1669 = !DILocalVariable(name: "s27", arg: 10, scope: !1656, file: !1657, line: 160, type: !8)
!1670 = !DILocalVariable(name: "s28", arg: 11, scope: !1656, file: !1657, line: 160, type: !8)
!1671 = !DILocation(line: 0, scope: !1656, inlinedAt: !1672)
!1672 = distinct !DILocation(line: 234, column: 7, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1641, file: !52, line: 234, column: 7)
!1674 = !DILocation(line: 162, column: 7, scope: !1675, inlinedAt: !1672)
!1675 = distinct !DILexicalBlock(scope: !1656, file: !1657, line: 162, column: 7)
!1676 = !DILocalVariable(name: "s1", arg: 1, scope: !1677, file: !1657, line: 146, type: !6)
!1677 = distinct !DISubprogram(name: "strcaseeq1", scope: !1657, file: !1657, line: 146, type: !1678, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1680)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1680 = !{!1676, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689}
!1681 = !DILocalVariable(name: "s2", arg: 2, scope: !1677, file: !1657, line: 146, type: !6)
!1682 = !DILocalVariable(name: "s21", arg: 3, scope: !1677, file: !1657, line: 146, type: !8)
!1683 = !DILocalVariable(name: "s22", arg: 4, scope: !1677, file: !1657, line: 146, type: !8)
!1684 = !DILocalVariable(name: "s23", arg: 5, scope: !1677, file: !1657, line: 146, type: !8)
!1685 = !DILocalVariable(name: "s24", arg: 6, scope: !1677, file: !1657, line: 146, type: !8)
!1686 = !DILocalVariable(name: "s25", arg: 7, scope: !1677, file: !1657, line: 146, type: !8)
!1687 = !DILocalVariable(name: "s26", arg: 8, scope: !1677, file: !1657, line: 146, type: !8)
!1688 = !DILocalVariable(name: "s27", arg: 9, scope: !1677, file: !1657, line: 146, type: !8)
!1689 = !DILocalVariable(name: "s28", arg: 10, scope: !1677, file: !1657, line: 146, type: !8)
!1690 = !DILocation(line: 0, scope: !1677, inlinedAt: !1691)
!1691 = distinct !DILocation(line: 167, column: 16, scope: !1692, inlinedAt: !1672)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !1657, line: 164, column: 11)
!1693 = distinct !DILexicalBlock(scope: !1675, file: !1657, line: 163, column: 5)
!1694 = !DILocation(line: 148, column: 7, scope: !1695, inlinedAt: !1691)
!1695 = distinct !DILexicalBlock(scope: !1677, file: !1657, line: 148, column: 7)
!1696 = !DILocalVariable(name: "s1", arg: 1, scope: !1697, file: !1657, line: 132, type: !6)
!1697 = distinct !DISubprogram(name: "strcaseeq2", scope: !1657, file: !1657, line: 132, type: !1698, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1700)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1700 = !{!1696, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708}
!1701 = !DILocalVariable(name: "s2", arg: 2, scope: !1697, file: !1657, line: 132, type: !6)
!1702 = !DILocalVariable(name: "s22", arg: 3, scope: !1697, file: !1657, line: 132, type: !8)
!1703 = !DILocalVariable(name: "s23", arg: 4, scope: !1697, file: !1657, line: 132, type: !8)
!1704 = !DILocalVariable(name: "s24", arg: 5, scope: !1697, file: !1657, line: 132, type: !8)
!1705 = !DILocalVariable(name: "s25", arg: 6, scope: !1697, file: !1657, line: 132, type: !8)
!1706 = !DILocalVariable(name: "s26", arg: 7, scope: !1697, file: !1657, line: 132, type: !8)
!1707 = !DILocalVariable(name: "s27", arg: 8, scope: !1697, file: !1657, line: 132, type: !8)
!1708 = !DILocalVariable(name: "s28", arg: 9, scope: !1697, file: !1657, line: 132, type: !8)
!1709 = !DILocation(line: 0, scope: !1697, inlinedAt: !1710)
!1710 = distinct !DILocation(line: 153, column: 16, scope: !1711, inlinedAt: !1691)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !1657, line: 150, column: 11)
!1712 = distinct !DILexicalBlock(scope: !1695, file: !1657, line: 149, column: 5)
!1713 = !DILocation(line: 134, column: 7, scope: !1714, inlinedAt: !1710)
!1714 = distinct !DILexicalBlock(scope: !1697, file: !1657, line: 134, column: 7)
!1715 = !DILocalVariable(name: "s1", arg: 1, scope: !1716, file: !1657, line: 118, type: !6)
!1716 = distinct !DISubprogram(name: "strcaseeq3", scope: !1657, file: !1657, line: 118, type: !1717, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1719)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8}
!1719 = !{!1715, !1720, !1721, !1722, !1723, !1724, !1725, !1726}
!1720 = !DILocalVariable(name: "s2", arg: 2, scope: !1716, file: !1657, line: 118, type: !6)
!1721 = !DILocalVariable(name: "s23", arg: 3, scope: !1716, file: !1657, line: 118, type: !8)
!1722 = !DILocalVariable(name: "s24", arg: 4, scope: !1716, file: !1657, line: 118, type: !8)
!1723 = !DILocalVariable(name: "s25", arg: 5, scope: !1716, file: !1657, line: 118, type: !8)
!1724 = !DILocalVariable(name: "s26", arg: 6, scope: !1716, file: !1657, line: 118, type: !8)
!1725 = !DILocalVariable(name: "s27", arg: 7, scope: !1716, file: !1657, line: 118, type: !8)
!1726 = !DILocalVariable(name: "s28", arg: 8, scope: !1716, file: !1657, line: 118, type: !8)
!1727 = !DILocation(line: 0, scope: !1716, inlinedAt: !1728)
!1728 = distinct !DILocation(line: 139, column: 16, scope: !1729, inlinedAt: !1710)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !1657, line: 136, column: 11)
!1730 = distinct !DILexicalBlock(scope: !1714, file: !1657, line: 135, column: 5)
!1731 = !DILocation(line: 120, column: 7, scope: !1732, inlinedAt: !1728)
!1732 = distinct !DILexicalBlock(scope: !1716, file: !1657, line: 120, column: 7)
!1733 = !DILocation(line: 120, column: 7, scope: !1716, inlinedAt: !1728)
!1734 = !DILocalVariable(name: "s1", arg: 1, scope: !1735, file: !1657, line: 104, type: !6)
!1735 = distinct !DISubprogram(name: "strcaseeq4", scope: !1657, file: !1657, line: 104, type: !1736, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1738)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!23, !6, !6, !8, !8, !8, !8, !8}
!1738 = !{!1734, !1739, !1740, !1741, !1742, !1743, !1744}
!1739 = !DILocalVariable(name: "s2", arg: 2, scope: !1735, file: !1657, line: 104, type: !6)
!1740 = !DILocalVariable(name: "s24", arg: 3, scope: !1735, file: !1657, line: 104, type: !8)
!1741 = !DILocalVariable(name: "s25", arg: 4, scope: !1735, file: !1657, line: 104, type: !8)
!1742 = !DILocalVariable(name: "s26", arg: 5, scope: !1735, file: !1657, line: 104, type: !8)
!1743 = !DILocalVariable(name: "s27", arg: 6, scope: !1735, file: !1657, line: 104, type: !8)
!1744 = !DILocalVariable(name: "s28", arg: 7, scope: !1735, file: !1657, line: 104, type: !8)
!1745 = !DILocation(line: 0, scope: !1735, inlinedAt: !1746)
!1746 = distinct !DILocation(line: 125, column: 16, scope: !1747, inlinedAt: !1728)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !1657, line: 122, column: 11)
!1748 = distinct !DILexicalBlock(scope: !1732, file: !1657, line: 121, column: 5)
!1749 = !DILocation(line: 106, column: 7, scope: !1750, inlinedAt: !1746)
!1750 = distinct !DILexicalBlock(scope: !1735, file: !1657, line: 106, column: 7)
!1751 = !DILocation(line: 106, column: 7, scope: !1735, inlinedAt: !1746)
!1752 = !DILocalVariable(name: "s1", arg: 1, scope: !1753, file: !1657, line: 90, type: !6)
!1753 = distinct !DISubprogram(name: "strcaseeq5", scope: !1657, file: !1657, line: 90, type: !1754, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1756)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!23, !6, !6, !8, !8, !8, !8}
!1756 = !{!1752, !1757, !1758, !1759, !1760, !1761}
!1757 = !DILocalVariable(name: "s2", arg: 2, scope: !1753, file: !1657, line: 90, type: !6)
!1758 = !DILocalVariable(name: "s25", arg: 3, scope: !1753, file: !1657, line: 90, type: !8)
!1759 = !DILocalVariable(name: "s26", arg: 4, scope: !1753, file: !1657, line: 90, type: !8)
!1760 = !DILocalVariable(name: "s27", arg: 5, scope: !1753, file: !1657, line: 90, type: !8)
!1761 = !DILocalVariable(name: "s28", arg: 6, scope: !1753, file: !1657, line: 90, type: !8)
!1762 = !DILocation(line: 0, scope: !1753, inlinedAt: !1763)
!1763 = distinct !DILocation(line: 111, column: 16, scope: !1764, inlinedAt: !1746)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !1657, line: 108, column: 11)
!1765 = distinct !DILexicalBlock(scope: !1750, file: !1657, line: 107, column: 5)
!1766 = !DILocation(line: 92, column: 7, scope: !1767, inlinedAt: !1763)
!1767 = distinct !DILexicalBlock(scope: !1753, file: !1657, line: 92, column: 7)
!1768 = !DILocation(line: 92, column: 7, scope: !1753, inlinedAt: !1763)
!1769 = !DILocation(line: 235, column: 12, scope: !1673)
!1770 = !DILocation(line: 235, column: 21, scope: !1673)
!1771 = !DILocation(line: 235, column: 5, scope: !1673)
!1772 = !DILocation(line: 0, scope: !1677, inlinedAt: !1773)
!1773 = distinct !DILocation(line: 167, column: 16, scope: !1692, inlinedAt: !1774)
!1774 = distinct !DILocation(line: 236, column: 7, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1641, file: !52, line: 236, column: 7)
!1776 = !DILocation(line: 148, column: 7, scope: !1695, inlinedAt: !1773)
!1777 = !DILocation(line: 0, scope: !1697, inlinedAt: !1778)
!1778 = distinct !DILocation(line: 153, column: 16, scope: !1711, inlinedAt: !1773)
!1779 = !DILocation(line: 134, column: 7, scope: !1714, inlinedAt: !1778)
!1780 = !DILocation(line: 134, column: 7, scope: !1697, inlinedAt: !1778)
!1781 = !DILocation(line: 0, scope: !1716, inlinedAt: !1782)
!1782 = distinct !DILocation(line: 139, column: 16, scope: !1729, inlinedAt: !1778)
!1783 = !DILocation(line: 120, column: 7, scope: !1732, inlinedAt: !1782)
!1784 = !DILocation(line: 120, column: 7, scope: !1716, inlinedAt: !1782)
!1785 = !DILocation(line: 0, scope: !1735, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 125, column: 16, scope: !1747, inlinedAt: !1782)
!1787 = !DILocation(line: 106, column: 7, scope: !1750, inlinedAt: !1786)
!1788 = !DILocation(line: 106, column: 7, scope: !1735, inlinedAt: !1786)
!1789 = !DILocation(line: 0, scope: !1753, inlinedAt: !1790)
!1790 = distinct !DILocation(line: 111, column: 16, scope: !1764, inlinedAt: !1786)
!1791 = !DILocation(line: 92, column: 7, scope: !1767, inlinedAt: !1790)
!1792 = !DILocation(line: 92, column: 7, scope: !1753, inlinedAt: !1790)
!1793 = !DILocalVariable(name: "s1", arg: 1, scope: !1794, file: !1657, line: 76, type: !6)
!1794 = distinct !DISubprogram(name: "strcaseeq6", scope: !1657, file: !1657, line: 76, type: !1795, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1797)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!23, !6, !6, !8, !8, !8}
!1797 = !{!1793, !1798, !1799, !1800, !1801}
!1798 = !DILocalVariable(name: "s2", arg: 2, scope: !1794, file: !1657, line: 76, type: !6)
!1799 = !DILocalVariable(name: "s26", arg: 3, scope: !1794, file: !1657, line: 76, type: !8)
!1800 = !DILocalVariable(name: "s27", arg: 4, scope: !1794, file: !1657, line: 76, type: !8)
!1801 = !DILocalVariable(name: "s28", arg: 5, scope: !1794, file: !1657, line: 76, type: !8)
!1802 = !DILocation(line: 0, scope: !1794, inlinedAt: !1803)
!1803 = distinct !DILocation(line: 97, column: 16, scope: !1804, inlinedAt: !1790)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !1657, line: 94, column: 11)
!1805 = distinct !DILexicalBlock(scope: !1767, file: !1657, line: 93, column: 5)
!1806 = !DILocation(line: 78, column: 7, scope: !1807, inlinedAt: !1803)
!1807 = distinct !DILexicalBlock(scope: !1794, file: !1657, line: 78, column: 7)
!1808 = !DILocation(line: 78, column: 7, scope: !1794, inlinedAt: !1803)
!1809 = !DILocalVariable(name: "s1", arg: 1, scope: !1810, file: !1657, line: 62, type: !6)
!1810 = distinct !DISubprogram(name: "strcaseeq7", scope: !1657, file: !1657, line: 62, type: !1811, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1813)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!23, !6, !6, !8, !8}
!1813 = !{!1809, !1814, !1815, !1816}
!1814 = !DILocalVariable(name: "s2", arg: 2, scope: !1810, file: !1657, line: 62, type: !6)
!1815 = !DILocalVariable(name: "s27", arg: 3, scope: !1810, file: !1657, line: 62, type: !8)
!1816 = !DILocalVariable(name: "s28", arg: 4, scope: !1810, file: !1657, line: 62, type: !8)
!1817 = !DILocation(line: 0, scope: !1810, inlinedAt: !1818)
!1818 = distinct !DILocation(line: 83, column: 16, scope: !1819, inlinedAt: !1803)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !1657, line: 80, column: 11)
!1820 = distinct !DILexicalBlock(scope: !1807, file: !1657, line: 79, column: 5)
!1821 = !DILocation(line: 64, column: 7, scope: !1822, inlinedAt: !1818)
!1822 = distinct !DILexicalBlock(scope: !1810, file: !1657, line: 64, column: 7)
!1823 = !DILocation(line: 236, column: 7, scope: !1641)
!1824 = !DILocation(line: 237, column: 12, scope: !1775)
!1825 = !DILocation(line: 237, column: 21, scope: !1775)
!1826 = !DILocation(line: 237, column: 5, scope: !1775)
!1827 = !DILocation(line: 239, column: 13, scope: !1641)
!1828 = !DILocation(line: 239, column: 11, scope: !1641)
!1829 = !DILocation(line: 239, column: 3, scope: !1641)
!1830 = !DILocation(line: 240, column: 1, scope: !1641)
!1831 = !DISubprogram(name: "iswprint", scope: !1832, file: !1832, line: 120, type: !1833, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1832 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!23, !56}
!1835 = !DISubprogram(name: "mbsinit", scope: !1836, file: !1836, line: 292, type: !1837, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1836 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!23, !1839}
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1158)
!1841 = distinct !DISubprogram(name: "quotearg_alloc", scope: !52, file: !52, line: 799, type: !1842, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1844)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!47, !6, !91, !1004}
!1844 = !{!1845, !1846, !1847}
!1845 = !DILocalVariable(name: "arg", arg: 1, scope: !1841, file: !52, line: 799, type: !6)
!1846 = !DILocalVariable(name: "argsize", arg: 2, scope: !1841, file: !52, line: 799, type: !91)
!1847 = !DILocalVariable(name: "o", arg: 3, scope: !1841, file: !52, line: 800, type: !1004)
!1848 = !DILocation(line: 0, scope: !1841)
!1849 = !DILocalVariable(name: "arg", arg: 1, scope: !1850, file: !52, line: 812, type: !6)
!1850 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !52, file: !52, line: 812, type: !1851, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1853)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!47, !6, !91, !161, !1004}
!1853 = !{!1849, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861}
!1854 = !DILocalVariable(name: "argsize", arg: 2, scope: !1850, file: !52, line: 812, type: !91)
!1855 = !DILocalVariable(name: "size", arg: 3, scope: !1850, file: !52, line: 812, type: !161)
!1856 = !DILocalVariable(name: "o", arg: 4, scope: !1850, file: !52, line: 813, type: !1004)
!1857 = !DILocalVariable(name: "p", scope: !1850, file: !52, line: 815, type: !1004)
!1858 = !DILocalVariable(name: "e", scope: !1850, file: !52, line: 816, type: !23)
!1859 = !DILocalVariable(name: "flags", scope: !1850, file: !52, line: 818, type: !23)
!1860 = !DILocalVariable(name: "bufsize", scope: !1850, file: !52, line: 819, type: !91)
!1861 = !DILocalVariable(name: "buf", scope: !1850, file: !52, line: 823, type: !47)
!1862 = !DILocation(line: 0, scope: !1850, inlinedAt: !1863)
!1863 = distinct !DILocation(line: 802, column: 10, scope: !1841)
!1864 = !DILocation(line: 815, column: 37, scope: !1850, inlinedAt: !1863)
!1865 = !DILocation(line: 816, column: 11, scope: !1850, inlinedAt: !1863)
!1866 = !DILocation(line: 818, column: 18, scope: !1850, inlinedAt: !1863)
!1867 = !DILocation(line: 818, column: 24, scope: !1850, inlinedAt: !1863)
!1868 = !DILocation(line: 819, column: 69, scope: !1850, inlinedAt: !1863)
!1869 = !DILocation(line: 820, column: 53, scope: !1850, inlinedAt: !1863)
!1870 = !DILocation(line: 821, column: 49, scope: !1850, inlinedAt: !1863)
!1871 = !DILocation(line: 822, column: 49, scope: !1850, inlinedAt: !1863)
!1872 = !DILocation(line: 819, column: 20, scope: !1850, inlinedAt: !1863)
!1873 = !DILocation(line: 822, column: 62, scope: !1850, inlinedAt: !1863)
!1874 = !DILocalVariable(name: "n", arg: 1, scope: !1875, file: !157, line: 216, type: !91)
!1875 = distinct !DISubprogram(name: "xcharalloc", scope: !157, file: !157, line: 216, type: !1876, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1878)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!47, !91}
!1878 = !{!1874}
!1879 = !DILocation(line: 0, scope: !1875, inlinedAt: !1880)
!1880 = distinct !DILocation(line: 823, column: 15, scope: !1850, inlinedAt: !1863)
!1881 = !DILocation(line: 218, column: 10, scope: !1875, inlinedAt: !1880)
!1882 = !DILocation(line: 824, column: 60, scope: !1850, inlinedAt: !1863)
!1883 = !DILocation(line: 826, column: 32, scope: !1850, inlinedAt: !1863)
!1884 = !DILocation(line: 826, column: 47, scope: !1850, inlinedAt: !1863)
!1885 = !DILocation(line: 824, column: 3, scope: !1850, inlinedAt: !1863)
!1886 = !DILocation(line: 827, column: 9, scope: !1850, inlinedAt: !1863)
!1887 = !DILocation(line: 802, column: 3, scope: !1841)
!1888 = !DILocation(line: 0, scope: !1850)
!1889 = !DILocation(line: 815, column: 37, scope: !1850)
!1890 = !DILocation(line: 816, column: 11, scope: !1850)
!1891 = !DILocation(line: 818, column: 18, scope: !1850)
!1892 = !DILocation(line: 818, column: 27, scope: !1850)
!1893 = !DILocation(line: 818, column: 24, scope: !1850)
!1894 = !DILocation(line: 819, column: 69, scope: !1850)
!1895 = !DILocation(line: 820, column: 53, scope: !1850)
!1896 = !DILocation(line: 821, column: 49, scope: !1850)
!1897 = !DILocation(line: 822, column: 49, scope: !1850)
!1898 = !DILocation(line: 819, column: 20, scope: !1850)
!1899 = !DILocation(line: 822, column: 62, scope: !1850)
!1900 = !DILocation(line: 0, scope: !1875, inlinedAt: !1901)
!1901 = distinct !DILocation(line: 823, column: 15, scope: !1850)
!1902 = !DILocation(line: 218, column: 10, scope: !1875, inlinedAt: !1901)
!1903 = !DILocation(line: 824, column: 60, scope: !1850)
!1904 = !DILocation(line: 826, column: 32, scope: !1850)
!1905 = !DILocation(line: 826, column: 47, scope: !1850)
!1906 = !DILocation(line: 824, column: 3, scope: !1850)
!1907 = !DILocation(line: 827, column: 9, scope: !1850)
!1908 = !DILocation(line: 828, column: 7, scope: !1850)
!1909 = !DILocation(line: 829, column: 11, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1850, file: !52, line: 828, column: 7)
!1911 = !{!1912, !1912, i64 0}
!1912 = !{!"long", !597, i64 0}
!1913 = !DILocation(line: 829, column: 5, scope: !1910)
!1914 = !DILocation(line: 830, column: 3, scope: !1850)
!1915 = distinct !DISubprogram(name: "quotearg_free", scope: !52, file: !52, line: 848, type: !796, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1916)
!1916 = !{!1917, !1918}
!1917 = !DILocalVariable(name: "sv", scope: !1915, file: !52, line: 850, type: !122)
!1918 = !DILocalVariable(name: "i", scope: !1915, file: !52, line: 851, type: !23)
!1919 = !DILocation(line: 850, column: 24, scope: !1915)
!1920 = !DILocation(line: 0, scope: !1915)
!1921 = !DILocation(line: 852, column: 19, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !52, line: 852, column: 3)
!1923 = distinct !DILexicalBlock(scope: !1915, file: !52, line: 852, column: 3)
!1924 = !DILocation(line: 852, column: 17, scope: !1922)
!1925 = !DILocation(line: 852, column: 3, scope: !1923)
!1926 = !DILocation(line: 853, column: 17, scope: !1922)
!1927 = !{!1928, !596, i64 8}
!1928 = !{!"slotvec", !1912, i64 0, !596, i64 8}
!1929 = !DILocation(line: 853, column: 5, scope: !1922)
!1930 = !DILocation(line: 852, column: 28, scope: !1922)
!1931 = distinct !{!1931, !1925, !1932, !637}
!1932 = !DILocation(line: 853, column: 20, scope: !1923)
!1933 = !DILocation(line: 854, column: 13, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1915, file: !52, line: 854, column: 7)
!1935 = !DILocation(line: 854, column: 17, scope: !1934)
!1936 = !DILocation(line: 854, column: 7, scope: !1915)
!1937 = !DILocation(line: 856, column: 7, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1934, file: !52, line: 855, column: 5)
!1939 = !DILocation(line: 857, column: 21, scope: !1938)
!1940 = !{!1928, !1912, i64 0}
!1941 = !DILocation(line: 858, column: 20, scope: !1938)
!1942 = !DILocation(line: 859, column: 5, scope: !1938)
!1943 = !DILocation(line: 860, column: 10, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1915, file: !52, line: 860, column: 7)
!1945 = !DILocation(line: 860, column: 7, scope: !1915)
!1946 = !DILocation(line: 862, column: 13, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1944, file: !52, line: 861, column: 5)
!1948 = !DILocation(line: 862, column: 7, scope: !1947)
!1949 = !DILocation(line: 863, column: 15, scope: !1947)
!1950 = !DILocation(line: 864, column: 5, scope: !1947)
!1951 = !DILocation(line: 865, column: 10, scope: !1915)
!1952 = !DILocation(line: 866, column: 1, scope: !1915)
!1953 = distinct !DISubprogram(name: "quotearg_n", scope: !52, file: !52, line: 931, type: !719, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1954)
!1954 = !{!1955, !1956}
!1955 = !DILocalVariable(name: "n", arg: 1, scope: !1953, file: !52, line: 931, type: !23)
!1956 = !DILocalVariable(name: "arg", arg: 2, scope: !1953, file: !52, line: 931, type: !6)
!1957 = !DILocation(line: 0, scope: !1953)
!1958 = !DILocation(line: 933, column: 10, scope: !1953)
!1959 = !DILocation(line: 933, column: 3, scope: !1953)
!1960 = distinct !DISubprogram(name: "quotearg_n_options", scope: !52, file: !52, line: 877, type: !1961, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1963)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!47, !23, !6, !91, !1004}
!1963 = !{!1964, !1965, !1966, !1967, !1968, !1969, !1970, !1973, !1974, !1976, !1977, !1978}
!1964 = !DILocalVariable(name: "n", arg: 1, scope: !1960, file: !52, line: 877, type: !23)
!1965 = !DILocalVariable(name: "arg", arg: 2, scope: !1960, file: !52, line: 877, type: !6)
!1966 = !DILocalVariable(name: "argsize", arg: 3, scope: !1960, file: !52, line: 877, type: !91)
!1967 = !DILocalVariable(name: "options", arg: 4, scope: !1960, file: !52, line: 878, type: !1004)
!1968 = !DILocalVariable(name: "e", scope: !1960, file: !52, line: 880, type: !23)
!1969 = !DILocalVariable(name: "sv", scope: !1960, file: !52, line: 882, type: !122)
!1970 = !DILocalVariable(name: "preallocated", scope: !1971, file: !52, line: 889, type: !16)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !52, line: 888, column: 5)
!1972 = distinct !DILexicalBlock(scope: !1960, file: !52, line: 887, column: 7)
!1973 = !DILocalVariable(name: "nmax", scope: !1971, file: !52, line: 890, type: !23)
!1974 = !DILocalVariable(name: "size", scope: !1975, file: !52, line: 903, type: !91)
!1975 = distinct !DILexicalBlock(scope: !1960, file: !52, line: 902, column: 3)
!1976 = !DILocalVariable(name: "val", scope: !1975, file: !52, line: 904, type: !47)
!1977 = !DILocalVariable(name: "flags", scope: !1975, file: !52, line: 906, type: !23)
!1978 = !DILocalVariable(name: "qsize", scope: !1975, file: !52, line: 907, type: !91)
!1979 = !DILocation(line: 0, scope: !1960)
!1980 = !DILocation(line: 880, column: 11, scope: !1960)
!1981 = !DILocation(line: 882, column: 24, scope: !1960)
!1982 = !DILocation(line: 884, column: 9, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1960, file: !52, line: 884, column: 7)
!1984 = !DILocation(line: 884, column: 7, scope: !1960)
!1985 = !DILocation(line: 885, column: 5, scope: !1983)
!1986 = !DILocation(line: 887, column: 7, scope: !1972)
!1987 = !DILocation(line: 887, column: 14, scope: !1972)
!1988 = !DILocation(line: 887, column: 7, scope: !1960)
!1989 = !DILocation(line: 889, column: 31, scope: !1971)
!1990 = !DILocation(line: 0, scope: !1971)
!1991 = !DILocation(line: 892, column: 16, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1971, file: !52, line: 892, column: 11)
!1993 = !DILocation(line: 892, column: 11, scope: !1971)
!1994 = !DILocation(line: 893, column: 9, scope: !1992)
!1995 = !DILocation(line: 895, column: 32, scope: !1971)
!1996 = !DILocation(line: 895, column: 61, scope: !1971)
!1997 = !DILocation(line: 895, column: 66, scope: !1971)
!1998 = !DILocation(line: 895, column: 22, scope: !1971)
!1999 = !DILocation(line: 895, column: 15, scope: !1971)
!2000 = !DILocation(line: 896, column: 11, scope: !1971)
!2001 = !DILocation(line: 897, column: 15, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1971, file: !52, line: 896, column: 11)
!2003 = !{i64 0, i64 8, !1911, i64 8, i64 8, !595}
!2004 = !DILocation(line: 897, column: 9, scope: !2002)
!2005 = !DILocation(line: 898, column: 20, scope: !1971)
!2006 = !DILocation(line: 898, column: 18, scope: !1971)
!2007 = !DILocation(line: 898, column: 15, scope: !1971)
!2008 = !DILocation(line: 898, column: 38, scope: !1971)
!2009 = !DILocation(line: 898, column: 31, scope: !1971)
!2010 = !DILocation(line: 898, column: 48, scope: !1971)
!2011 = !DILocation(line: 0, scope: !1402, inlinedAt: !2012)
!2012 = distinct !DILocation(line: 898, column: 7, scope: !1971)
!2013 = !DILocation(line: 59, column: 10, scope: !1402, inlinedAt: !2012)
!2014 = !DILocation(line: 899, column: 14, scope: !1971)
!2015 = !DILocation(line: 900, column: 5, scope: !1971)
!2016 = !DILocation(line: 903, column: 19, scope: !1975)
!2017 = !DILocation(line: 903, column: 25, scope: !1975)
!2018 = !DILocation(line: 0, scope: !1975)
!2019 = !DILocation(line: 904, column: 23, scope: !1975)
!2020 = !DILocation(line: 906, column: 26, scope: !1975)
!2021 = !DILocation(line: 906, column: 32, scope: !1975)
!2022 = !DILocation(line: 908, column: 55, scope: !1975)
!2023 = !DILocation(line: 909, column: 46, scope: !1975)
!2024 = !DILocation(line: 910, column: 55, scope: !1975)
!2025 = !DILocation(line: 911, column: 55, scope: !1975)
!2026 = !DILocation(line: 907, column: 20, scope: !1975)
!2027 = !DILocation(line: 913, column: 14, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !1975, file: !52, line: 913, column: 9)
!2029 = !DILocation(line: 913, column: 9, scope: !1975)
!2030 = !DILocation(line: 915, column: 35, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2028, file: !52, line: 914, column: 7)
!2032 = !DILocation(line: 915, column: 20, scope: !2031)
!2033 = !DILocation(line: 916, column: 17, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2031, file: !52, line: 916, column: 13)
!2035 = !DILocation(line: 916, column: 13, scope: !2031)
!2036 = !DILocation(line: 917, column: 11, scope: !2034)
!2037 = !DILocation(line: 0, scope: !1875, inlinedAt: !2038)
!2038 = distinct !DILocation(line: 918, column: 27, scope: !2031)
!2039 = !DILocation(line: 218, column: 10, scope: !1875, inlinedAt: !2038)
!2040 = !DILocation(line: 918, column: 19, scope: !2031)
!2041 = !DILocation(line: 919, column: 69, scope: !2031)
!2042 = !DILocation(line: 921, column: 44, scope: !2031)
!2043 = !DILocation(line: 922, column: 44, scope: !2031)
!2044 = !DILocation(line: 919, column: 9, scope: !2031)
!2045 = !DILocation(line: 923, column: 7, scope: !2031)
!2046 = !DILocation(line: 925, column: 11, scope: !1975)
!2047 = !DILocation(line: 926, column: 5, scope: !1975)
!2048 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !52, file: !52, line: 937, type: !2049, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2051)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!47, !23, !6, !91}
!2051 = !{!2052, !2053, !2054}
!2052 = !DILocalVariable(name: "n", arg: 1, scope: !2048, file: !52, line: 937, type: !23)
!2053 = !DILocalVariable(name: "arg", arg: 2, scope: !2048, file: !52, line: 937, type: !6)
!2054 = !DILocalVariable(name: "argsize", arg: 3, scope: !2048, file: !52, line: 937, type: !91)
!2055 = !DILocation(line: 0, scope: !2048)
!2056 = !DILocation(line: 939, column: 10, scope: !2048)
!2057 = !DILocation(line: 939, column: 3, scope: !2048)
!2058 = distinct !DISubprogram(name: "quotearg", scope: !52, file: !52, line: 943, type: !789, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2059)
!2059 = !{!2060}
!2060 = !DILocalVariable(name: "arg", arg: 1, scope: !2058, file: !52, line: 943, type: !6)
!2061 = !DILocation(line: 0, scope: !2058)
!2062 = !DILocation(line: 0, scope: !1953, inlinedAt: !2063)
!2063 = distinct !DILocation(line: 945, column: 10, scope: !2058)
!2064 = !DILocation(line: 933, column: 10, scope: !1953, inlinedAt: !2063)
!2065 = !DILocation(line: 945, column: 3, scope: !2058)
!2066 = distinct !DISubprogram(name: "quotearg_mem", scope: !52, file: !52, line: 949, type: !2067, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2069)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!47, !6, !91}
!2069 = !{!2070, !2071}
!2070 = !DILocalVariable(name: "arg", arg: 1, scope: !2066, file: !52, line: 949, type: !6)
!2071 = !DILocalVariable(name: "argsize", arg: 2, scope: !2066, file: !52, line: 949, type: !91)
!2072 = !DILocation(line: 0, scope: !2066)
!2073 = !DILocation(line: 0, scope: !2048, inlinedAt: !2074)
!2074 = distinct !DILocation(line: 951, column: 10, scope: !2066)
!2075 = !DILocation(line: 939, column: 10, scope: !2048, inlinedAt: !2074)
!2076 = !DILocation(line: 951, column: 3, scope: !2066)
!2077 = distinct !DISubprogram(name: "quotearg_n_style", scope: !52, file: !52, line: 955, type: !2078, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2080)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!47, !23, !54, !6}
!2080 = !{!2081, !2082, !2083, !2084}
!2081 = !DILocalVariable(name: "n", arg: 1, scope: !2077, file: !52, line: 955, type: !23)
!2082 = !DILocalVariable(name: "s", arg: 2, scope: !2077, file: !52, line: 955, type: !54)
!2083 = !DILocalVariable(name: "arg", arg: 3, scope: !2077, file: !52, line: 955, type: !6)
!2084 = !DILocalVariable(name: "o", scope: !2077, file: !52, line: 957, type: !1005)
!2085 = !DILocation(line: 0, scope: !2077)
!2086 = !DILocation(line: 957, column: 3, scope: !2077)
!2087 = !DILocation(line: 957, column: 32, scope: !2077)
!2088 = !{!2089}
!2089 = distinct !{!2089, !2090, !"quoting_options_from_style: argument 0"}
!2090 = distinct !{!2090, !"quoting_options_from_style"}
!2091 = !DILocation(line: 957, column: 36, scope: !2077)
!2092 = !DILocalVariable(name: "style", arg: 1, scope: !2093, file: !52, line: 193, type: !54)
!2093 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !52, file: !52, line: 193, type: !2094, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2096)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!103, !54}
!2096 = !{!2092, !2097}
!2097 = !DILocalVariable(name: "o", scope: !2093, file: !52, line: 195, type: !103)
!2098 = !DILocation(line: 0, scope: !2093, inlinedAt: !2099)
!2099 = distinct !DILocation(line: 957, column: 36, scope: !2077)
!2100 = !DILocation(line: 195, column: 26, scope: !2093, inlinedAt: !2099)
!2101 = !DILocation(line: 196, column: 13, scope: !2102, inlinedAt: !2099)
!2102 = distinct !DILexicalBlock(scope: !2093, file: !52, line: 196, column: 7)
!2103 = !DILocation(line: 196, column: 7, scope: !2093, inlinedAt: !2099)
!2104 = !DILocation(line: 197, column: 5, scope: !2102, inlinedAt: !2099)
!2105 = !DILocation(line: 198, column: 5, scope: !2093, inlinedAt: !2099)
!2106 = !DILocation(line: 198, column: 11, scope: !2093, inlinedAt: !2099)
!2107 = !DILocation(line: 958, column: 10, scope: !2077)
!2108 = !DILocation(line: 959, column: 1, scope: !2077)
!2109 = !DILocation(line: 958, column: 3, scope: !2077)
!2110 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !52, file: !52, line: 962, type: !2111, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2113)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!47, !23, !54, !6, !91}
!2113 = !{!2114, !2115, !2116, !2117, !2118}
!2114 = !DILocalVariable(name: "n", arg: 1, scope: !2110, file: !52, line: 962, type: !23)
!2115 = !DILocalVariable(name: "s", arg: 2, scope: !2110, file: !52, line: 962, type: !54)
!2116 = !DILocalVariable(name: "arg", arg: 3, scope: !2110, file: !52, line: 963, type: !6)
!2117 = !DILocalVariable(name: "argsize", arg: 4, scope: !2110, file: !52, line: 963, type: !91)
!2118 = !DILocalVariable(name: "o", scope: !2110, file: !52, line: 965, type: !1005)
!2119 = !DILocation(line: 0, scope: !2110)
!2120 = !DILocation(line: 965, column: 3, scope: !2110)
!2121 = !DILocation(line: 965, column: 32, scope: !2110)
!2122 = !{!2123}
!2123 = distinct !{!2123, !2124, !"quoting_options_from_style: argument 0"}
!2124 = distinct !{!2124, !"quoting_options_from_style"}
!2125 = !DILocation(line: 965, column: 36, scope: !2110)
!2126 = !DILocation(line: 0, scope: !2093, inlinedAt: !2127)
!2127 = distinct !DILocation(line: 965, column: 36, scope: !2110)
!2128 = !DILocation(line: 195, column: 26, scope: !2093, inlinedAt: !2127)
!2129 = !DILocation(line: 196, column: 13, scope: !2102, inlinedAt: !2127)
!2130 = !DILocation(line: 196, column: 7, scope: !2093, inlinedAt: !2127)
!2131 = !DILocation(line: 197, column: 5, scope: !2102, inlinedAt: !2127)
!2132 = !DILocation(line: 198, column: 5, scope: !2093, inlinedAt: !2127)
!2133 = !DILocation(line: 198, column: 11, scope: !2093, inlinedAt: !2127)
!2134 = !DILocation(line: 966, column: 10, scope: !2110)
!2135 = !DILocation(line: 967, column: 1, scope: !2110)
!2136 = !DILocation(line: 966, column: 3, scope: !2110)
!2137 = distinct !DISubprogram(name: "quotearg_style", scope: !52, file: !52, line: 970, type: !2138, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2140)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!47, !54, !6}
!2140 = !{!2141, !2142}
!2141 = !DILocalVariable(name: "s", arg: 1, scope: !2137, file: !52, line: 970, type: !54)
!2142 = !DILocalVariable(name: "arg", arg: 2, scope: !2137, file: !52, line: 970, type: !6)
!2143 = !DILocation(line: 0, scope: !2137)
!2144 = !DILocation(line: 0, scope: !2077, inlinedAt: !2145)
!2145 = distinct !DILocation(line: 972, column: 10, scope: !2137)
!2146 = !DILocation(line: 957, column: 3, scope: !2077, inlinedAt: !2145)
!2147 = !DILocation(line: 957, column: 32, scope: !2077, inlinedAt: !2145)
!2148 = !{!2149}
!2149 = distinct !{!2149, !2150, !"quoting_options_from_style: argument 0"}
!2150 = distinct !{!2150, !"quoting_options_from_style"}
!2151 = !DILocation(line: 957, column: 36, scope: !2077, inlinedAt: !2145)
!2152 = !DILocation(line: 0, scope: !2093, inlinedAt: !2153)
!2153 = distinct !DILocation(line: 957, column: 36, scope: !2077, inlinedAt: !2145)
!2154 = !DILocation(line: 195, column: 26, scope: !2093, inlinedAt: !2153)
!2155 = !DILocation(line: 196, column: 13, scope: !2102, inlinedAt: !2153)
!2156 = !DILocation(line: 196, column: 7, scope: !2093, inlinedAt: !2153)
!2157 = !DILocation(line: 197, column: 5, scope: !2102, inlinedAt: !2153)
!2158 = !DILocation(line: 198, column: 5, scope: !2093, inlinedAt: !2153)
!2159 = !DILocation(line: 198, column: 11, scope: !2093, inlinedAt: !2153)
!2160 = !DILocation(line: 958, column: 10, scope: !2077, inlinedAt: !2145)
!2161 = !DILocation(line: 959, column: 1, scope: !2077, inlinedAt: !2145)
!2162 = !DILocation(line: 972, column: 3, scope: !2137)
!2163 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !52, file: !52, line: 976, type: !2164, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2166)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!47, !54, !6, !91}
!2166 = !{!2167, !2168, !2169}
!2167 = !DILocalVariable(name: "s", arg: 1, scope: !2163, file: !52, line: 976, type: !54)
!2168 = !DILocalVariable(name: "arg", arg: 2, scope: !2163, file: !52, line: 976, type: !6)
!2169 = !DILocalVariable(name: "argsize", arg: 3, scope: !2163, file: !52, line: 976, type: !91)
!2170 = !DILocation(line: 0, scope: !2163)
!2171 = !DILocation(line: 0, scope: !2110, inlinedAt: !2172)
!2172 = distinct !DILocation(line: 978, column: 10, scope: !2163)
!2173 = !DILocation(line: 965, column: 3, scope: !2110, inlinedAt: !2172)
!2174 = !DILocation(line: 965, column: 32, scope: !2110, inlinedAt: !2172)
!2175 = !{!2176}
!2176 = distinct !{!2176, !2177, !"quoting_options_from_style: argument 0"}
!2177 = distinct !{!2177, !"quoting_options_from_style"}
!2178 = !DILocation(line: 965, column: 36, scope: !2110, inlinedAt: !2172)
!2179 = !DILocation(line: 0, scope: !2093, inlinedAt: !2180)
!2180 = distinct !DILocation(line: 965, column: 36, scope: !2110, inlinedAt: !2172)
!2181 = !DILocation(line: 195, column: 26, scope: !2093, inlinedAt: !2180)
!2182 = !DILocation(line: 196, column: 13, scope: !2102, inlinedAt: !2180)
!2183 = !DILocation(line: 196, column: 7, scope: !2093, inlinedAt: !2180)
!2184 = !DILocation(line: 197, column: 5, scope: !2102, inlinedAt: !2180)
!2185 = !DILocation(line: 198, column: 5, scope: !2093, inlinedAt: !2180)
!2186 = !DILocation(line: 198, column: 11, scope: !2093, inlinedAt: !2180)
!2187 = !DILocation(line: 966, column: 10, scope: !2110, inlinedAt: !2172)
!2188 = !DILocation(line: 967, column: 1, scope: !2110, inlinedAt: !2172)
!2189 = !DILocation(line: 978, column: 3, scope: !2163)
!2190 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !52, file: !52, line: 982, type: !2191, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2193)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!47, !6, !91, !8}
!2193 = !{!2194, !2195, !2196, !2197}
!2194 = !DILocalVariable(name: "arg", arg: 1, scope: !2190, file: !52, line: 982, type: !6)
!2195 = !DILocalVariable(name: "argsize", arg: 2, scope: !2190, file: !52, line: 982, type: !91)
!2196 = !DILocalVariable(name: "ch", arg: 3, scope: !2190, file: !52, line: 982, type: !8)
!2197 = !DILocalVariable(name: "options", scope: !2190, file: !52, line: 984, type: !103)
!2198 = !DILocation(line: 0, scope: !2190)
!2199 = !DILocation(line: 984, column: 3, scope: !2190)
!2200 = !DILocation(line: 984, column: 26, scope: !2190)
!2201 = !DILocation(line: 985, column: 13, scope: !2190)
!2202 = !{i64 0, i64 4, !1211, i64 4, i64 4, !757, i64 8, i64 32, !1211, i64 40, i64 8, !595, i64 48, i64 8, !595}
!2203 = !DILocation(line: 0, scope: !1025, inlinedAt: !2204)
!2204 = distinct !DILocation(line: 986, column: 3, scope: !2190)
!2205 = !DILocation(line: 156, column: 62, scope: !1025, inlinedAt: !2204)
!2206 = !DILocation(line: 156, column: 57, scope: !1025, inlinedAt: !2204)
!2207 = !DILocation(line: 157, column: 15, scope: !1025, inlinedAt: !2204)
!2208 = !DILocation(line: 158, column: 12, scope: !1025, inlinedAt: !2204)
!2209 = !DILocation(line: 158, column: 15, scope: !1025, inlinedAt: !2204)
!2210 = !DILocation(line: 158, column: 25, scope: !1025, inlinedAt: !2204)
!2211 = !DILocation(line: 159, column: 18, scope: !1025, inlinedAt: !2204)
!2212 = !DILocation(line: 159, column: 23, scope: !1025, inlinedAt: !2204)
!2213 = !DILocation(line: 159, column: 6, scope: !1025, inlinedAt: !2204)
!2214 = !DILocation(line: 987, column: 10, scope: !2190)
!2215 = !DILocation(line: 988, column: 1, scope: !2190)
!2216 = !DILocation(line: 987, column: 3, scope: !2190)
!2217 = distinct !DISubprogram(name: "quotearg_char", scope: !52, file: !52, line: 991, type: !2218, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2220)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!47, !6, !8}
!2220 = !{!2221, !2222}
!2221 = !DILocalVariable(name: "arg", arg: 1, scope: !2217, file: !52, line: 991, type: !6)
!2222 = !DILocalVariable(name: "ch", arg: 2, scope: !2217, file: !52, line: 991, type: !8)
!2223 = !DILocation(line: 0, scope: !2217)
!2224 = !DILocation(line: 0, scope: !2190, inlinedAt: !2225)
!2225 = distinct !DILocation(line: 993, column: 10, scope: !2217)
!2226 = !DILocation(line: 984, column: 3, scope: !2190, inlinedAt: !2225)
!2227 = !DILocation(line: 984, column: 26, scope: !2190, inlinedAt: !2225)
!2228 = !DILocation(line: 985, column: 13, scope: !2190, inlinedAt: !2225)
!2229 = !DILocation(line: 0, scope: !1025, inlinedAt: !2230)
!2230 = distinct !DILocation(line: 986, column: 3, scope: !2190, inlinedAt: !2225)
!2231 = !DILocation(line: 156, column: 62, scope: !1025, inlinedAt: !2230)
!2232 = !DILocation(line: 156, column: 57, scope: !1025, inlinedAt: !2230)
!2233 = !DILocation(line: 157, column: 15, scope: !1025, inlinedAt: !2230)
!2234 = !DILocation(line: 158, column: 12, scope: !1025, inlinedAt: !2230)
!2235 = !DILocation(line: 158, column: 15, scope: !1025, inlinedAt: !2230)
!2236 = !DILocation(line: 158, column: 25, scope: !1025, inlinedAt: !2230)
!2237 = !DILocation(line: 159, column: 18, scope: !1025, inlinedAt: !2230)
!2238 = !DILocation(line: 159, column: 23, scope: !1025, inlinedAt: !2230)
!2239 = !DILocation(line: 159, column: 6, scope: !1025, inlinedAt: !2230)
!2240 = !DILocation(line: 987, column: 10, scope: !2190, inlinedAt: !2225)
!2241 = !DILocation(line: 988, column: 1, scope: !2190, inlinedAt: !2225)
!2242 = !DILocation(line: 993, column: 3, scope: !2217)
!2243 = distinct !DISubprogram(name: "quotearg_colon", scope: !52, file: !52, line: 997, type: !789, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2244)
!2244 = !{!2245}
!2245 = !DILocalVariable(name: "arg", arg: 1, scope: !2243, file: !52, line: 997, type: !6)
!2246 = !DILocation(line: 0, scope: !2243)
!2247 = !DILocation(line: 0, scope: !2217, inlinedAt: !2248)
!2248 = distinct !DILocation(line: 999, column: 10, scope: !2243)
!2249 = !DILocation(line: 0, scope: !2190, inlinedAt: !2250)
!2250 = distinct !DILocation(line: 993, column: 10, scope: !2217, inlinedAt: !2248)
!2251 = !DILocation(line: 984, column: 3, scope: !2190, inlinedAt: !2250)
!2252 = !DILocation(line: 984, column: 26, scope: !2190, inlinedAt: !2250)
!2253 = !DILocation(line: 985, column: 13, scope: !2190, inlinedAt: !2250)
!2254 = !DILocation(line: 0, scope: !1025, inlinedAt: !2255)
!2255 = distinct !DILocation(line: 986, column: 3, scope: !2190, inlinedAt: !2250)
!2256 = !DILocation(line: 156, column: 57, scope: !1025, inlinedAt: !2255)
!2257 = !DILocation(line: 158, column: 12, scope: !1025, inlinedAt: !2255)
!2258 = !DILocation(line: 159, column: 6, scope: !1025, inlinedAt: !2255)
!2259 = !DILocation(line: 987, column: 10, scope: !2190, inlinedAt: !2250)
!2260 = !DILocation(line: 988, column: 1, scope: !2190, inlinedAt: !2250)
!2261 = !DILocation(line: 999, column: 3, scope: !2243)
!2262 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !52, file: !52, line: 1003, type: !2067, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2263)
!2263 = !{!2264, !2265}
!2264 = !DILocalVariable(name: "arg", arg: 1, scope: !2262, file: !52, line: 1003, type: !6)
!2265 = !DILocalVariable(name: "argsize", arg: 2, scope: !2262, file: !52, line: 1003, type: !91)
!2266 = !DILocation(line: 0, scope: !2262)
!2267 = !DILocation(line: 0, scope: !2190, inlinedAt: !2268)
!2268 = distinct !DILocation(line: 1005, column: 10, scope: !2262)
!2269 = !DILocation(line: 984, column: 3, scope: !2190, inlinedAt: !2268)
!2270 = !DILocation(line: 984, column: 26, scope: !2190, inlinedAt: !2268)
!2271 = !DILocation(line: 985, column: 13, scope: !2190, inlinedAt: !2268)
!2272 = !DILocation(line: 0, scope: !1025, inlinedAt: !2273)
!2273 = distinct !DILocation(line: 986, column: 3, scope: !2190, inlinedAt: !2268)
!2274 = !DILocation(line: 156, column: 57, scope: !1025, inlinedAt: !2273)
!2275 = !DILocation(line: 158, column: 12, scope: !1025, inlinedAt: !2273)
!2276 = !DILocation(line: 159, column: 6, scope: !1025, inlinedAt: !2273)
!2277 = !DILocation(line: 987, column: 10, scope: !2190, inlinedAt: !2268)
!2278 = !DILocation(line: 988, column: 1, scope: !2190, inlinedAt: !2268)
!2279 = !DILocation(line: 1005, column: 3, scope: !2262)
!2280 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !52, file: !52, line: 1009, type: !2078, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2281)
!2281 = !{!2282, !2283, !2284, !2285}
!2282 = !DILocalVariable(name: "n", arg: 1, scope: !2280, file: !52, line: 1009, type: !23)
!2283 = !DILocalVariable(name: "s", arg: 2, scope: !2280, file: !52, line: 1009, type: !54)
!2284 = !DILocalVariable(name: "arg", arg: 3, scope: !2280, file: !52, line: 1009, type: !6)
!2285 = !DILocalVariable(name: "options", scope: !2280, file: !52, line: 1011, type: !103)
!2286 = !DILocation(line: 195, column: 26, scope: !2093, inlinedAt: !2287)
!2287 = distinct !DILocation(line: 1012, column: 13, scope: !2280)
!2288 = !DILocation(line: 0, scope: !2280)
!2289 = !DILocation(line: 1011, column: 3, scope: !2280)
!2290 = !DILocation(line: 1011, column: 26, scope: !2280)
!2291 = !DILocation(line: 1012, column: 13, scope: !2280)
!2292 = !{!2293}
!2293 = distinct !{!2293, !2294, !"quoting_options_from_style: argument 0"}
!2294 = distinct !{!2294, !"quoting_options_from_style"}
!2295 = !DILocation(line: 0, scope: !2093, inlinedAt: !2287)
!2296 = !DILocation(line: 196, column: 13, scope: !2102, inlinedAt: !2287)
!2297 = !DILocation(line: 196, column: 7, scope: !2093, inlinedAt: !2287)
!2298 = !DILocation(line: 197, column: 5, scope: !2102, inlinedAt: !2287)
!2299 = !{i64 0, i64 4, !757, i64 4, i64 32, !1211, i64 36, i64 8, !595, i64 44, i64 8, !595}
!2300 = !DILocation(line: 0, scope: !1025, inlinedAt: !2301)
!2301 = distinct !DILocation(line: 1013, column: 3, scope: !2280)
!2302 = !DILocation(line: 156, column: 57, scope: !1025, inlinedAt: !2301)
!2303 = !DILocation(line: 158, column: 12, scope: !1025, inlinedAt: !2301)
!2304 = !DILocation(line: 159, column: 6, scope: !1025, inlinedAt: !2301)
!2305 = !DILocation(line: 1014, column: 10, scope: !2280)
!2306 = !DILocation(line: 1015, column: 1, scope: !2280)
!2307 = !DILocation(line: 1014, column: 3, scope: !2280)
!2308 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !52, file: !52, line: 1018, type: !2309, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2311)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!47, !23, !6, !6, !6}
!2311 = !{!2312, !2313, !2314, !2315}
!2312 = !DILocalVariable(name: "n", arg: 1, scope: !2308, file: !52, line: 1018, type: !23)
!2313 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2308, file: !52, line: 1018, type: !6)
!2314 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2308, file: !52, line: 1019, type: !6)
!2315 = !DILocalVariable(name: "arg", arg: 4, scope: !2308, file: !52, line: 1019, type: !6)
!2316 = !DILocation(line: 0, scope: !2308)
!2317 = !DILocalVariable(name: "n", arg: 1, scope: !2318, file: !52, line: 1026, type: !23)
!2318 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !52, file: !52, line: 1026, type: !2319, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2321)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!47, !23, !6, !6, !6, !91}
!2321 = !{!2317, !2322, !2323, !2324, !2325, !2326}
!2322 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2318, file: !52, line: 1026, type: !6)
!2323 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2318, file: !52, line: 1027, type: !6)
!2324 = !DILocalVariable(name: "arg", arg: 4, scope: !2318, file: !52, line: 1028, type: !6)
!2325 = !DILocalVariable(name: "argsize", arg: 5, scope: !2318, file: !52, line: 1028, type: !91)
!2326 = !DILocalVariable(name: "o", scope: !2318, file: !52, line: 1030, type: !103)
!2327 = !DILocation(line: 0, scope: !2318, inlinedAt: !2328)
!2328 = distinct !DILocation(line: 1021, column: 10, scope: !2308)
!2329 = !DILocation(line: 1030, column: 3, scope: !2318, inlinedAt: !2328)
!2330 = !DILocation(line: 1030, column: 26, scope: !2318, inlinedAt: !2328)
!2331 = !DILocation(line: 1030, column: 30, scope: !2318, inlinedAt: !2328)
!2332 = !DILocation(line: 0, scope: !1066, inlinedAt: !2333)
!2333 = distinct !DILocation(line: 1031, column: 3, scope: !2318, inlinedAt: !2328)
!2334 = !DILocation(line: 184, column: 6, scope: !1066, inlinedAt: !2333)
!2335 = !DILocation(line: 184, column: 12, scope: !1066, inlinedAt: !2333)
!2336 = !DILocation(line: 185, column: 8, scope: !1080, inlinedAt: !2333)
!2337 = !DILocation(line: 185, column: 19, scope: !1080, inlinedAt: !2333)
!2338 = !DILocation(line: 186, column: 5, scope: !1080, inlinedAt: !2333)
!2339 = !DILocation(line: 187, column: 6, scope: !1066, inlinedAt: !2333)
!2340 = !DILocation(line: 187, column: 17, scope: !1066, inlinedAt: !2333)
!2341 = !DILocation(line: 188, column: 6, scope: !1066, inlinedAt: !2333)
!2342 = !DILocation(line: 188, column: 18, scope: !1066, inlinedAt: !2333)
!2343 = !DILocation(line: 1032, column: 10, scope: !2318, inlinedAt: !2328)
!2344 = !DILocation(line: 1033, column: 1, scope: !2318, inlinedAt: !2328)
!2345 = !DILocation(line: 1021, column: 3, scope: !2308)
!2346 = !DILocation(line: 0, scope: !2318)
!2347 = !DILocation(line: 1030, column: 3, scope: !2318)
!2348 = !DILocation(line: 1030, column: 26, scope: !2318)
!2349 = !DILocation(line: 1030, column: 30, scope: !2318)
!2350 = !DILocation(line: 0, scope: !1066, inlinedAt: !2351)
!2351 = distinct !DILocation(line: 1031, column: 3, scope: !2318)
!2352 = !DILocation(line: 184, column: 6, scope: !1066, inlinedAt: !2351)
!2353 = !DILocation(line: 184, column: 12, scope: !1066, inlinedAt: !2351)
!2354 = !DILocation(line: 185, column: 8, scope: !1080, inlinedAt: !2351)
!2355 = !DILocation(line: 185, column: 19, scope: !1080, inlinedAt: !2351)
!2356 = !DILocation(line: 186, column: 5, scope: !1080, inlinedAt: !2351)
!2357 = !DILocation(line: 187, column: 6, scope: !1066, inlinedAt: !2351)
!2358 = !DILocation(line: 187, column: 17, scope: !1066, inlinedAt: !2351)
!2359 = !DILocation(line: 188, column: 6, scope: !1066, inlinedAt: !2351)
!2360 = !DILocation(line: 188, column: 18, scope: !1066, inlinedAt: !2351)
!2361 = !DILocation(line: 1032, column: 10, scope: !2318)
!2362 = !DILocation(line: 1033, column: 1, scope: !2318)
!2363 = !DILocation(line: 1032, column: 3, scope: !2318)
!2364 = distinct !DISubprogram(name: "quotearg_custom", scope: !52, file: !52, line: 1036, type: !2365, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2367)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!47, !6, !6, !6}
!2367 = !{!2368, !2369, !2370}
!2368 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2364, file: !52, line: 1036, type: !6)
!2369 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2364, file: !52, line: 1036, type: !6)
!2370 = !DILocalVariable(name: "arg", arg: 3, scope: !2364, file: !52, line: 1037, type: !6)
!2371 = !DILocation(line: 0, scope: !2364)
!2372 = !DILocation(line: 0, scope: !2308, inlinedAt: !2373)
!2373 = distinct !DILocation(line: 1039, column: 10, scope: !2364)
!2374 = !DILocation(line: 0, scope: !2318, inlinedAt: !2375)
!2375 = distinct !DILocation(line: 1021, column: 10, scope: !2308, inlinedAt: !2373)
!2376 = !DILocation(line: 1030, column: 3, scope: !2318, inlinedAt: !2375)
!2377 = !DILocation(line: 1030, column: 26, scope: !2318, inlinedAt: !2375)
!2378 = !DILocation(line: 1030, column: 30, scope: !2318, inlinedAt: !2375)
!2379 = !DILocation(line: 0, scope: !1066, inlinedAt: !2380)
!2380 = distinct !DILocation(line: 1031, column: 3, scope: !2318, inlinedAt: !2375)
!2381 = !DILocation(line: 184, column: 6, scope: !1066, inlinedAt: !2380)
!2382 = !DILocation(line: 184, column: 12, scope: !1066, inlinedAt: !2380)
!2383 = !DILocation(line: 185, column: 8, scope: !1080, inlinedAt: !2380)
!2384 = !DILocation(line: 185, column: 19, scope: !1080, inlinedAt: !2380)
!2385 = !DILocation(line: 186, column: 5, scope: !1080, inlinedAt: !2380)
!2386 = !DILocation(line: 187, column: 6, scope: !1066, inlinedAt: !2380)
!2387 = !DILocation(line: 187, column: 17, scope: !1066, inlinedAt: !2380)
!2388 = !DILocation(line: 188, column: 6, scope: !1066, inlinedAt: !2380)
!2389 = !DILocation(line: 188, column: 18, scope: !1066, inlinedAt: !2380)
!2390 = !DILocation(line: 1032, column: 10, scope: !2318, inlinedAt: !2375)
!2391 = !DILocation(line: 1033, column: 1, scope: !2318, inlinedAt: !2375)
!2392 = !DILocation(line: 1039, column: 3, scope: !2364)
!2393 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !52, file: !52, line: 1043, type: !2394, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2396)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!47, !6, !6, !6, !91}
!2396 = !{!2397, !2398, !2399, !2400}
!2397 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2393, file: !52, line: 1043, type: !6)
!2398 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2393, file: !52, line: 1043, type: !6)
!2399 = !DILocalVariable(name: "arg", arg: 3, scope: !2393, file: !52, line: 1044, type: !6)
!2400 = !DILocalVariable(name: "argsize", arg: 4, scope: !2393, file: !52, line: 1044, type: !91)
!2401 = !DILocation(line: 0, scope: !2393)
!2402 = !DILocation(line: 0, scope: !2318, inlinedAt: !2403)
!2403 = distinct !DILocation(line: 1046, column: 10, scope: !2393)
!2404 = !DILocation(line: 1030, column: 3, scope: !2318, inlinedAt: !2403)
!2405 = !DILocation(line: 1030, column: 26, scope: !2318, inlinedAt: !2403)
!2406 = !DILocation(line: 1030, column: 30, scope: !2318, inlinedAt: !2403)
!2407 = !DILocation(line: 0, scope: !1066, inlinedAt: !2408)
!2408 = distinct !DILocation(line: 1031, column: 3, scope: !2318, inlinedAt: !2403)
!2409 = !DILocation(line: 184, column: 6, scope: !1066, inlinedAt: !2408)
!2410 = !DILocation(line: 184, column: 12, scope: !1066, inlinedAt: !2408)
!2411 = !DILocation(line: 185, column: 8, scope: !1080, inlinedAt: !2408)
!2412 = !DILocation(line: 185, column: 19, scope: !1080, inlinedAt: !2408)
!2413 = !DILocation(line: 186, column: 5, scope: !1080, inlinedAt: !2408)
!2414 = !DILocation(line: 187, column: 6, scope: !1066, inlinedAt: !2408)
!2415 = !DILocation(line: 187, column: 17, scope: !1066, inlinedAt: !2408)
!2416 = !DILocation(line: 188, column: 6, scope: !1066, inlinedAt: !2408)
!2417 = !DILocation(line: 188, column: 18, scope: !1066, inlinedAt: !2408)
!2418 = !DILocation(line: 1032, column: 10, scope: !2318, inlinedAt: !2403)
!2419 = !DILocation(line: 1033, column: 1, scope: !2318, inlinedAt: !2403)
!2420 = !DILocation(line: 1046, column: 3, scope: !2393)
!2421 = distinct !DISubprogram(name: "quote_n_mem", scope: !52, file: !52, line: 1061, type: !2422, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2424)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!6, !23, !6, !91}
!2424 = !{!2425, !2426, !2427}
!2425 = !DILocalVariable(name: "n", arg: 1, scope: !2421, file: !52, line: 1061, type: !23)
!2426 = !DILocalVariable(name: "arg", arg: 2, scope: !2421, file: !52, line: 1061, type: !6)
!2427 = !DILocalVariable(name: "argsize", arg: 3, scope: !2421, file: !52, line: 1061, type: !91)
!2428 = !DILocation(line: 0, scope: !2421)
!2429 = !DILocation(line: 1063, column: 10, scope: !2421)
!2430 = !DILocation(line: 1063, column: 3, scope: !2421)
!2431 = distinct !DISubprogram(name: "quote_mem", scope: !52, file: !52, line: 1067, type: !2432, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2434)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!6, !6, !91}
!2434 = !{!2435, !2436}
!2435 = !DILocalVariable(name: "arg", arg: 1, scope: !2431, file: !52, line: 1067, type: !6)
!2436 = !DILocalVariable(name: "argsize", arg: 2, scope: !2431, file: !52, line: 1067, type: !91)
!2437 = !DILocation(line: 0, scope: !2431)
!2438 = !DILocation(line: 0, scope: !2421, inlinedAt: !2439)
!2439 = distinct !DILocation(line: 1069, column: 10, scope: !2431)
!2440 = !DILocation(line: 1063, column: 10, scope: !2421, inlinedAt: !2439)
!2441 = !DILocation(line: 1069, column: 3, scope: !2431)
!2442 = distinct !DISubprogram(name: "quote_n", scope: !52, file: !52, line: 1073, type: !2443, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2445)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!6, !23, !6}
!2445 = !{!2446, !2447}
!2446 = !DILocalVariable(name: "n", arg: 1, scope: !2442, file: !52, line: 1073, type: !23)
!2447 = !DILocalVariable(name: "arg", arg: 2, scope: !2442, file: !52, line: 1073, type: !6)
!2448 = !DILocation(line: 0, scope: !2442)
!2449 = !DILocation(line: 0, scope: !2421, inlinedAt: !2450)
!2450 = distinct !DILocation(line: 1075, column: 10, scope: !2442)
!2451 = !DILocation(line: 1063, column: 10, scope: !2421, inlinedAt: !2450)
!2452 = !DILocation(line: 1075, column: 3, scope: !2442)
!2453 = distinct !DISubprogram(name: "quote", scope: !52, file: !52, line: 1079, type: !2454, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2456)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!6, !6}
!2456 = !{!2457}
!2457 = !DILocalVariable(name: "arg", arg: 1, scope: !2453, file: !52, line: 1079, type: !6)
!2458 = !DILocation(line: 0, scope: !2453)
!2459 = !DILocation(line: 0, scope: !2442, inlinedAt: !2460)
!2460 = distinct !DILocation(line: 1081, column: 10, scope: !2453)
!2461 = !DILocation(line: 0, scope: !2421, inlinedAt: !2462)
!2462 = distinct !DILocation(line: 1075, column: 10, scope: !2442, inlinedAt: !2460)
!2463 = !DILocation(line: 1063, column: 10, scope: !2421, inlinedAt: !2462)
!2464 = !DILocation(line: 1081, column: 3, scope: !2453)
!2465 = distinct !DISubprogram(name: "version_etc_arn", scope: !147, file: !147, line: 61, type: !2466, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !146, retainedNodes: !2504)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{null, !2468, !6, !6, !6, !2503, !91}
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2470, line: 7, baseType: !2471)
!2470 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !667, line: 49, size: 1728, elements: !2472)
!2472 = !{!2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2471, file: !667, line: 51, baseType: !23, size: 32)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2471, file: !667, line: 54, baseType: !47, size: 64, offset: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2471, file: !667, line: 55, baseType: !47, size: 64, offset: 128)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2471, file: !667, line: 56, baseType: !47, size: 64, offset: 192)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2471, file: !667, line: 57, baseType: !47, size: 64, offset: 256)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2471, file: !667, line: 58, baseType: !47, size: 64, offset: 320)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2471, file: !667, line: 59, baseType: !47, size: 64, offset: 384)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2471, file: !667, line: 60, baseType: !47, size: 64, offset: 448)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2471, file: !667, line: 61, baseType: !47, size: 64, offset: 512)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2471, file: !667, line: 64, baseType: !47, size: 64, offset: 576)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2471, file: !667, line: 65, baseType: !47, size: 64, offset: 640)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2471, file: !667, line: 66, baseType: !47, size: 64, offset: 704)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2471, file: !667, line: 68, baseType: !682, size: 64, offset: 768)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2471, file: !667, line: 70, baseType: !2487, size: 64, offset: 832)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2471, file: !667, line: 72, baseType: !23, size: 32, offset: 896)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2471, file: !667, line: 73, baseType: !23, size: 32, offset: 928)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2471, file: !667, line: 74, baseType: !688, size: 64, offset: 960)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2471, file: !667, line: 77, baseType: !90, size: 16, offset: 1024)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2471, file: !667, line: 78, baseType: !693, size: 8, offset: 1040)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2471, file: !667, line: 79, baseType: !695, size: 8, offset: 1048)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2471, file: !667, line: 81, baseType: !699, size: 64, offset: 1088)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2471, file: !667, line: 89, baseType: !702, size: 64, offset: 1152)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2471, file: !667, line: 91, baseType: !704, size: 64, offset: 1216)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2471, file: !667, line: 92, baseType: !707, size: 64, offset: 1280)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2471, file: !667, line: 93, baseType: !2487, size: 64, offset: 1344)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2471, file: !667, line: 94, baseType: !46, size: 64, offset: 1408)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2471, file: !667, line: 95, baseType: !91, size: 64, offset: 1472)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2471, file: !667, line: 96, baseType: !23, size: 32, offset: 1536)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2471, file: !667, line: 98, baseType: !714, size: 160, offset: 1568)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!2504 = !{!2505, !2506, !2507, !2508, !2509, !2510}
!2505 = !DILocalVariable(name: "stream", arg: 1, scope: !2465, file: !147, line: 61, type: !2468)
!2506 = !DILocalVariable(name: "command_name", arg: 2, scope: !2465, file: !147, line: 62, type: !6)
!2507 = !DILocalVariable(name: "package", arg: 3, scope: !2465, file: !147, line: 62, type: !6)
!2508 = !DILocalVariable(name: "version", arg: 4, scope: !2465, file: !147, line: 63, type: !6)
!2509 = !DILocalVariable(name: "authors", arg: 5, scope: !2465, file: !147, line: 64, type: !2503)
!2510 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2465, file: !147, line: 64, type: !91)
!2511 = !DILocation(line: 0, scope: !2465)
!2512 = !DILocation(line: 66, column: 7, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2465, file: !147, line: 66, column: 7)
!2514 = !DILocation(line: 66, column: 7, scope: !2465)
!2515 = !DILocation(line: 67, column: 5, scope: !2513)
!2516 = !DILocation(line: 69, column: 5, scope: !2513)
!2517 = !DILocation(line: 83, column: 3, scope: !2465)
!2518 = !DILocation(line: 85, column: 3, scope: !2465)
!2519 = !DILocation(line: 88, column: 3, scope: !2465)
!2520 = !DILocation(line: 95, column: 3, scope: !2465)
!2521 = !DILocation(line: 97, column: 3, scope: !2465)
!2522 = !DILocation(line: 105, column: 7, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2465, file: !147, line: 98, column: 5)
!2524 = !DILocation(line: 106, column: 7, scope: !2523)
!2525 = !DILocation(line: 109, column: 7, scope: !2523)
!2526 = !DILocation(line: 110, column: 7, scope: !2523)
!2527 = !DILocation(line: 113, column: 7, scope: !2523)
!2528 = !DILocation(line: 115, column: 7, scope: !2523)
!2529 = !DILocation(line: 120, column: 7, scope: !2523)
!2530 = !DILocation(line: 122, column: 7, scope: !2523)
!2531 = !DILocation(line: 127, column: 7, scope: !2523)
!2532 = !DILocation(line: 129, column: 7, scope: !2523)
!2533 = !DILocation(line: 134, column: 7, scope: !2523)
!2534 = !DILocation(line: 137, column: 7, scope: !2523)
!2535 = !DILocation(line: 142, column: 7, scope: !2523)
!2536 = !DILocation(line: 145, column: 7, scope: !2523)
!2537 = !DILocation(line: 150, column: 7, scope: !2523)
!2538 = !DILocation(line: 154, column: 7, scope: !2523)
!2539 = !DILocation(line: 159, column: 7, scope: !2523)
!2540 = !DILocation(line: 163, column: 7, scope: !2523)
!2541 = !DILocation(line: 170, column: 7, scope: !2523)
!2542 = !DILocation(line: 174, column: 7, scope: !2523)
!2543 = !DILocation(line: 176, column: 1, scope: !2465)
!2544 = distinct !DISubprogram(name: "version_etc_ar", scope: !147, file: !147, line: 183, type: !2545, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !146, retainedNodes: !2547)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{null, !2468, !6, !6, !6, !2503}
!2547 = !{!2548, !2549, !2550, !2551, !2552, !2553}
!2548 = !DILocalVariable(name: "stream", arg: 1, scope: !2544, file: !147, line: 183, type: !2468)
!2549 = !DILocalVariable(name: "command_name", arg: 2, scope: !2544, file: !147, line: 184, type: !6)
!2550 = !DILocalVariable(name: "package", arg: 3, scope: !2544, file: !147, line: 184, type: !6)
!2551 = !DILocalVariable(name: "version", arg: 4, scope: !2544, file: !147, line: 185, type: !6)
!2552 = !DILocalVariable(name: "authors", arg: 5, scope: !2544, file: !147, line: 185, type: !2503)
!2553 = !DILocalVariable(name: "n_authors", scope: !2544, file: !147, line: 187, type: !91)
!2554 = !DILocation(line: 0, scope: !2544)
!2555 = !DILocation(line: 189, column: 8, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2544, file: !147, line: 189, column: 3)
!2557 = !DILocation(line: 0, scope: !2556)
!2558 = !DILocation(line: 189, column: 23, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2556, file: !147, line: 189, column: 3)
!2560 = !DILocation(line: 189, column: 3, scope: !2556)
!2561 = !DILocation(line: 189, column: 52, scope: !2559)
!2562 = distinct !{!2562, !2560, !2563, !637}
!2563 = !DILocation(line: 190, column: 5, scope: !2556)
!2564 = !DILocation(line: 191, column: 3, scope: !2544)
!2565 = !DILocation(line: 192, column: 1, scope: !2544)
!2566 = distinct !DISubprogram(name: "version_etc_va", scope: !147, file: !147, line: 199, type: !2567, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !146, retainedNodes: !2576)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{null, !2468, !6, !6, !6, !2569}
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2571)
!2571 = !{!2572, !2573, !2574, !2575}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2570, file: !147, line: 192, baseType: !56, size: 32)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2570, file: !147, line: 192, baseType: !56, size: 32, offset: 32)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2570, file: !147, line: 192, baseType: !46, size: 64, offset: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2570, file: !147, line: 192, baseType: !46, size: 64, offset: 128)
!2576 = !{!2577, !2578, !2579, !2580, !2581, !2582, !2583}
!2577 = !DILocalVariable(name: "stream", arg: 1, scope: !2566, file: !147, line: 199, type: !2468)
!2578 = !DILocalVariable(name: "command_name", arg: 2, scope: !2566, file: !147, line: 200, type: !6)
!2579 = !DILocalVariable(name: "package", arg: 3, scope: !2566, file: !147, line: 200, type: !6)
!2580 = !DILocalVariable(name: "version", arg: 4, scope: !2566, file: !147, line: 201, type: !6)
!2581 = !DILocalVariable(name: "authors", arg: 5, scope: !2566, file: !147, line: 201, type: !2569)
!2582 = !DILocalVariable(name: "n_authors", scope: !2566, file: !147, line: 203, type: !91)
!2583 = !DILocalVariable(name: "authtab", scope: !2566, file: !147, line: 204, type: !2584)
!2584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !99)
!2585 = !DILocation(line: 0, scope: !2566)
!2586 = !DILocation(line: 204, column: 3, scope: !2566)
!2587 = !DILocation(line: 204, column: 15, scope: !2566)
!2588 = !DILocation(line: 208, column: 35, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2590, file: !147, line: 206, column: 3)
!2590 = distinct !DILexicalBlock(scope: !2566, file: !147, line: 206, column: 3)
!2591 = !DILocation(line: 208, column: 14, scope: !2589)
!2592 = !DILocation(line: 208, column: 33, scope: !2589)
!2593 = !DILocation(line: 208, column: 67, scope: !2589)
!2594 = !DILocation(line: 206, column: 3, scope: !2590)
!2595 = !DILocation(line: 0, scope: !2590)
!2596 = !DILocation(line: 211, column: 3, scope: !2566)
!2597 = !DILocation(line: 213, column: 1, scope: !2566)
!2598 = distinct !DISubprogram(name: "version_etc", scope: !147, file: !147, line: 230, type: !2599, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !146, retainedNodes: !2601)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{null, !2468, !6, !6, !6, null}
!2601 = !{!2602, !2603, !2604, !2605, !2606}
!2602 = !DILocalVariable(name: "stream", arg: 1, scope: !2598, file: !147, line: 230, type: !2468)
!2603 = !DILocalVariable(name: "command_name", arg: 2, scope: !2598, file: !147, line: 231, type: !6)
!2604 = !DILocalVariable(name: "package", arg: 3, scope: !2598, file: !147, line: 231, type: !6)
!2605 = !DILocalVariable(name: "version", arg: 4, scope: !2598, file: !147, line: 232, type: !6)
!2606 = !DILocalVariable(name: "authors", scope: !2598, file: !147, line: 234, type: !2607)
!2607 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !662, line: 52, baseType: !2608)
!2608 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !882, line: 32, baseType: !2609)
!2609 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !147, baseType: !2610)
!2610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2570, size: 192, elements: !696)
!2611 = !DILocation(line: 0, scope: !2598)
!2612 = !DILocation(line: 234, column: 3, scope: !2598)
!2613 = !DILocation(line: 234, column: 11, scope: !2598)
!2614 = !DILocation(line: 236, column: 3, scope: !2598)
!2615 = !DILocation(line: 237, column: 3, scope: !2598)
!2616 = !DILocation(line: 238, column: 3, scope: !2598)
!2617 = !DILocation(line: 239, column: 1, scope: !2598)
!2618 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !147, file: !147, line: 242, type: !796, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !146, retainedNodes: !4)
!2619 = !DILocation(line: 244, column: 3, scope: !2618)
!2620 = !DILocation(line: 249, column: 3, scope: !2618)
!2621 = !DILocation(line: 255, column: 3, scope: !2618)
!2622 = !DILocation(line: 260, column: 3, scope: !2618)
!2623 = !DILocation(line: 262, column: 1, scope: !2618)
!2624 = distinct !DISubprogram(name: "xnmalloc", scope: !157, file: !157, line: 99, type: !2625, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !2627)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!46, !91, !91}
!2627 = !{!2628, !2629}
!2628 = !DILocalVariable(name: "n", arg: 1, scope: !2624, file: !157, line: 99, type: !91)
!2629 = !DILocalVariable(name: "s", arg: 2, scope: !2624, file: !157, line: 99, type: !91)
!2630 = !DILocation(line: 0, scope: !2624)
!2631 = !DILocation(line: 101, column: 7, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2624, file: !157, line: 101, column: 7)
!2633 = !DILocation(line: 101, column: 7, scope: !2624)
!2634 = !DILocation(line: 102, column: 5, scope: !2632)
!2635 = !DILocation(line: 103, column: 21, scope: !2624)
!2636 = !DILocalVariable(name: "n", arg: 1, scope: !2637, file: !154, line: 39, type: !91)
!2637 = distinct !DISubprogram(name: "xmalloc", scope: !154, file: !154, line: 39, type: !2638, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !2640)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!46, !91}
!2640 = !{!2636, !2641}
!2641 = !DILocalVariable(name: "p", scope: !2637, file: !154, line: 41, type: !46)
!2642 = !DILocation(line: 0, scope: !2637, inlinedAt: !2643)
!2643 = distinct !DILocation(line: 103, column: 10, scope: !2624)
!2644 = !DILocation(line: 41, column: 13, scope: !2637, inlinedAt: !2643)
!2645 = !DILocation(line: 42, column: 8, scope: !2646, inlinedAt: !2643)
!2646 = distinct !DILexicalBlock(scope: !2637, file: !154, line: 42, column: 7)
!2647 = !DILocation(line: 42, column: 10, scope: !2646, inlinedAt: !2643)
!2648 = !DILocation(line: 43, column: 5, scope: !2646, inlinedAt: !2643)
!2649 = !DILocation(line: 103, column: 3, scope: !2624)
!2650 = !DILocation(line: 0, scope: !2637)
!2651 = !DILocation(line: 41, column: 13, scope: !2637)
!2652 = !DILocation(line: 42, column: 8, scope: !2646)
!2653 = !DILocation(line: 42, column: 10, scope: !2646)
!2654 = !DILocation(line: 43, column: 5, scope: !2646)
!2655 = !DILocation(line: 44, column: 3, scope: !2637)
!2656 = distinct !DISubprogram(name: "xnrealloc", scope: !157, file: !157, line: 112, type: !2657, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !2659)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!46, !46, !91, !91}
!2659 = !{!2660, !2661, !2662}
!2660 = !DILocalVariable(name: "p", arg: 1, scope: !2656, file: !157, line: 112, type: !46)
!2661 = !DILocalVariable(name: "n", arg: 2, scope: !2656, file: !157, line: 112, type: !91)
!2662 = !DILocalVariable(name: "s", arg: 3, scope: !2656, file: !157, line: 112, type: !91)
!2663 = !DILocation(line: 0, scope: !2656)
!2664 = !DILocation(line: 114, column: 7, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2656, file: !157, line: 114, column: 7)
!2666 = !DILocation(line: 114, column: 7, scope: !2656)
!2667 = !DILocation(line: 115, column: 5, scope: !2665)
!2668 = !DILocation(line: 116, column: 25, scope: !2656)
!2669 = !DILocalVariable(name: "p", arg: 1, scope: !2670, file: !154, line: 51, type: !46)
!2670 = distinct !DISubprogram(name: "xrealloc", scope: !154, file: !154, line: 51, type: !2671, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !2673)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{!46, !46, !91}
!2673 = !{!2669, !2674}
!2674 = !DILocalVariable(name: "n", arg: 2, scope: !2670, file: !154, line: 51, type: !91)
!2675 = !DILocation(line: 0, scope: !2670, inlinedAt: !2676)
!2676 = distinct !DILocation(line: 116, column: 10, scope: !2656)
!2677 = !DILocation(line: 53, column: 8, scope: !2678, inlinedAt: !2676)
!2678 = distinct !DILexicalBlock(scope: !2670, file: !154, line: 53, column: 7)
!2679 = !DILocation(line: 53, column: 10, scope: !2678, inlinedAt: !2676)
!2680 = !DILocation(line: 57, column: 7, scope: !2681, inlinedAt: !2676)
!2681 = distinct !DILexicalBlock(scope: !2678, file: !154, line: 54, column: 5)
!2682 = !DILocation(line: 58, column: 7, scope: !2681, inlinedAt: !2676)
!2683 = !DILocation(line: 61, column: 7, scope: !2670, inlinedAt: !2676)
!2684 = !DILocation(line: 62, column: 8, scope: !2685, inlinedAt: !2676)
!2685 = distinct !DILexicalBlock(scope: !2670, file: !154, line: 62, column: 7)
!2686 = !DILocation(line: 62, column: 10, scope: !2685, inlinedAt: !2676)
!2687 = !DILocation(line: 63, column: 5, scope: !2685, inlinedAt: !2676)
!2688 = !DILocation(line: 116, column: 3, scope: !2656)
!2689 = !DILocation(line: 0, scope: !2670)
!2690 = !DILocation(line: 53, column: 8, scope: !2678)
!2691 = !DILocation(line: 53, column: 10, scope: !2678)
!2692 = !DILocation(line: 57, column: 7, scope: !2681)
!2693 = !DILocation(line: 58, column: 7, scope: !2681)
!2694 = !DILocation(line: 61, column: 7, scope: !2670)
!2695 = !DILocation(line: 62, column: 8, scope: !2685)
!2696 = !DILocation(line: 62, column: 10, scope: !2685)
!2697 = !DILocation(line: 63, column: 5, scope: !2685)
!2698 = !DILocation(line: 65, column: 1, scope: !2670)
!2699 = !DILocation(line: 0, scope: !158)
!2700 = !DILocation(line: 176, column: 14, scope: !158)
!2701 = !DILocation(line: 178, column: 9, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !158, file: !157, line: 178, column: 7)
!2703 = !DILocation(line: 178, column: 7, scope: !158)
!2704 = !DILocation(line: 180, column: 13, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !157, line: 180, column: 11)
!2706 = distinct !DILexicalBlock(scope: !2702, file: !157, line: 179, column: 5)
!2707 = !DILocation(line: 180, column: 11, scope: !2706)
!2708 = !DILocation(line: 188, column: 30, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2705, file: !157, line: 181, column: 9)
!2710 = !DILocation(line: 189, column: 16, scope: !2709)
!2711 = !DILocation(line: 189, column: 13, scope: !2709)
!2712 = !DILocation(line: 190, column: 9, scope: !2709)
!2713 = !DILocation(line: 191, column: 11, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2706, file: !157, line: 191, column: 11)
!2715 = !DILocation(line: 191, column: 11, scope: !2706)
!2716 = !DILocation(line: 206, column: 7, scope: !158)
!2717 = !DILocation(line: 207, column: 25, scope: !158)
!2718 = !DILocation(line: 0, scope: !2670, inlinedAt: !2719)
!2719 = distinct !DILocation(line: 207, column: 10, scope: !158)
!2720 = !DILocation(line: 53, column: 10, scope: !2678, inlinedAt: !2719)
!2721 = !DILocation(line: 192, column: 9, scope: !2714)
!2722 = !DILocation(line: 200, column: 69, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2724, file: !157, line: 200, column: 11)
!2724 = distinct !DILexicalBlock(scope: !2702, file: !157, line: 195, column: 5)
!2725 = !DILocation(line: 201, column: 11, scope: !2723)
!2726 = !DILocation(line: 200, column: 11, scope: !2724)
!2727 = !DILocation(line: 202, column: 9, scope: !2723)
!2728 = !DILocation(line: 203, column: 14, scope: !2724)
!2729 = !DILocation(line: 203, column: 18, scope: !2724)
!2730 = !DILocation(line: 203, column: 9, scope: !2724)
!2731 = !DILocation(line: 53, column: 8, scope: !2678, inlinedAt: !2719)
!2732 = !DILocation(line: 57, column: 7, scope: !2681, inlinedAt: !2719)
!2733 = !DILocation(line: 58, column: 7, scope: !2681, inlinedAt: !2719)
!2734 = !DILocation(line: 61, column: 7, scope: !2670, inlinedAt: !2719)
!2735 = !DILocation(line: 62, column: 8, scope: !2685, inlinedAt: !2719)
!2736 = !DILocation(line: 62, column: 10, scope: !2685, inlinedAt: !2719)
!2737 = !DILocation(line: 63, column: 5, scope: !2685, inlinedAt: !2719)
!2738 = !DILocation(line: 207, column: 3, scope: !158)
!2739 = distinct !DISubprogram(name: "xcharalloc", scope: !157, file: !157, line: 216, type: !1876, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !2740)
!2740 = !{!2741}
!2741 = !DILocalVariable(name: "n", arg: 1, scope: !2739, file: !157, line: 216, type: !91)
!2742 = !DILocation(line: 0, scope: !2739)
!2743 = !DILocation(line: 0, scope: !2637, inlinedAt: !2744)
!2744 = distinct !DILocation(line: 218, column: 10, scope: !2739)
!2745 = !DILocation(line: 41, column: 13, scope: !2637, inlinedAt: !2744)
!2746 = !DILocation(line: 42, column: 8, scope: !2646, inlinedAt: !2744)
!2747 = !DILocation(line: 42, column: 10, scope: !2646, inlinedAt: !2744)
!2748 = !DILocation(line: 43, column: 5, scope: !2646, inlinedAt: !2744)
!2749 = !DILocation(line: 218, column: 3, scope: !2739)
!2750 = distinct !DISubprogram(name: "x2realloc", scope: !154, file: !154, line: 74, type: !2751, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !2753)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!46, !46, !161}
!2753 = !{!2754, !2755}
!2754 = !DILocalVariable(name: "p", arg: 1, scope: !2750, file: !154, line: 74, type: !46)
!2755 = !DILocalVariable(name: "pn", arg: 2, scope: !2750, file: !154, line: 74, type: !161)
!2756 = !DILocation(line: 0, scope: !2750)
!2757 = !DILocation(line: 0, scope: !158, inlinedAt: !2758)
!2758 = distinct !DILocation(line: 76, column: 10, scope: !2750)
!2759 = !DILocation(line: 176, column: 14, scope: !158, inlinedAt: !2758)
!2760 = !DILocation(line: 178, column: 9, scope: !2702, inlinedAt: !2758)
!2761 = !DILocation(line: 178, column: 7, scope: !158, inlinedAt: !2758)
!2762 = !DILocation(line: 180, column: 13, scope: !2705, inlinedAt: !2758)
!2763 = !DILocation(line: 180, column: 11, scope: !2706, inlinedAt: !2758)
!2764 = !DILocation(line: 191, column: 11, scope: !2714, inlinedAt: !2758)
!2765 = !DILocation(line: 191, column: 11, scope: !2706, inlinedAt: !2758)
!2766 = !DILocation(line: 192, column: 9, scope: !2714, inlinedAt: !2758)
!2767 = !DILocation(line: 201, column: 11, scope: !2723, inlinedAt: !2758)
!2768 = !DILocation(line: 200, column: 11, scope: !2724, inlinedAt: !2758)
!2769 = !DILocation(line: 202, column: 9, scope: !2723, inlinedAt: !2758)
!2770 = !DILocation(line: 203, column: 14, scope: !2724, inlinedAt: !2758)
!2771 = !DILocation(line: 203, column: 18, scope: !2724, inlinedAt: !2758)
!2772 = !DILocation(line: 203, column: 9, scope: !2724, inlinedAt: !2758)
!2773 = !DILocation(line: 0, scope: !2670, inlinedAt: !2774)
!2774 = distinct !DILocation(line: 207, column: 10, scope: !158, inlinedAt: !2758)
!2775 = !DILocation(line: 53, column: 10, scope: !2678, inlinedAt: !2774)
!2776 = !DILocation(line: 206, column: 7, scope: !158, inlinedAt: !2758)
!2777 = !DILocation(line: 61, column: 7, scope: !2670, inlinedAt: !2774)
!2778 = !DILocation(line: 62, column: 8, scope: !2685, inlinedAt: !2774)
!2779 = !DILocation(line: 62, column: 10, scope: !2685, inlinedAt: !2774)
!2780 = !DILocation(line: 63, column: 5, scope: !2685, inlinedAt: !2774)
!2781 = !DILocation(line: 76, column: 3, scope: !2750)
!2782 = distinct !DISubprogram(name: "xzalloc", scope: !154, file: !154, line: 84, type: !2638, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !2783)
!2783 = !{!2784}
!2784 = !DILocalVariable(name: "n", arg: 1, scope: !2782, file: !154, line: 84, type: !91)
!2785 = !DILocation(line: 0, scope: !2782)
!2786 = !DILocalVariable(name: "n", arg: 1, scope: !2787, file: !154, line: 93, type: !91)
!2787 = distinct !DISubprogram(name: "xcalloc", scope: !154, file: !154, line: 93, type: !2625, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !2788)
!2788 = !{!2786, !2789, !2790}
!2789 = !DILocalVariable(name: "s", arg: 2, scope: !2787, file: !154, line: 93, type: !91)
!2790 = !DILocalVariable(name: "p", scope: !2787, file: !154, line: 95, type: !46)
!2791 = !DILocation(line: 0, scope: !2787, inlinedAt: !2792)
!2792 = distinct !DILocation(line: 86, column: 10, scope: !2782)
!2793 = !DILocation(line: 100, column: 7, scope: !2794, inlinedAt: !2792)
!2794 = distinct !DILexicalBlock(scope: !2787, file: !154, line: 100, column: 7)
!2795 = !DILocation(line: 101, column: 7, scope: !2794, inlinedAt: !2792)
!2796 = !DILocation(line: 101, column: 18, scope: !2794, inlinedAt: !2792)
!2797 = !DILocation(line: 101, column: 16, scope: !2794, inlinedAt: !2792)
!2798 = !DILocation(line: 100, column: 7, scope: !2787, inlinedAt: !2792)
!2799 = !DILocation(line: 102, column: 5, scope: !2794, inlinedAt: !2792)
!2800 = !DILocation(line: 86, column: 3, scope: !2782)
!2801 = !DILocation(line: 0, scope: !2787)
!2802 = !DILocation(line: 100, column: 7, scope: !2794)
!2803 = !DILocation(line: 101, column: 7, scope: !2794)
!2804 = !DILocation(line: 101, column: 18, scope: !2794)
!2805 = !DILocation(line: 101, column: 16, scope: !2794)
!2806 = !DILocation(line: 100, column: 7, scope: !2787)
!2807 = !DILocation(line: 102, column: 5, scope: !2794)
!2808 = !DILocation(line: 103, column: 3, scope: !2787)
!2809 = distinct !DISubprogram(name: "xmemdup", scope: !154, file: !154, line: 111, type: !2810, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !2814)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!46, !2812, !91}
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2814 = !{!2815, !2816}
!2815 = !DILocalVariable(name: "p", arg: 1, scope: !2809, file: !154, line: 111, type: !2812)
!2816 = !DILocalVariable(name: "s", arg: 2, scope: !2809, file: !154, line: 111, type: !91)
!2817 = !DILocation(line: 0, scope: !2809)
!2818 = !DILocation(line: 0, scope: !2637, inlinedAt: !2819)
!2819 = distinct !DILocation(line: 113, column: 18, scope: !2809)
!2820 = !DILocation(line: 41, column: 13, scope: !2637, inlinedAt: !2819)
!2821 = !DILocation(line: 42, column: 8, scope: !2646, inlinedAt: !2819)
!2822 = !DILocation(line: 42, column: 10, scope: !2646, inlinedAt: !2819)
!2823 = !DILocation(line: 43, column: 5, scope: !2646, inlinedAt: !2819)
!2824 = !DILocalVariable(name: "__dest", arg: 1, scope: !2825, file: !1403, line: 26, type: !2828)
!2825 = distinct !DISubprogram(name: "memcpy", scope: !1403, file: !1403, line: 26, type: !2826, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !2830)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{!46, !2828, !2829, !91}
!2828 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !46)
!2829 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2812)
!2830 = !{!2824, !2831, !2832}
!2831 = !DILocalVariable(name: "__src", arg: 2, scope: !2825, file: !1403, line: 26, type: !2829)
!2832 = !DILocalVariable(name: "__len", arg: 3, scope: !2825, file: !1403, line: 26, type: !91)
!2833 = !DILocation(line: 0, scope: !2825, inlinedAt: !2834)
!2834 = distinct !DILocation(line: 113, column: 10, scope: !2809)
!2835 = !DILocation(line: 29, column: 10, scope: !2825, inlinedAt: !2834)
!2836 = !DILocation(line: 113, column: 3, scope: !2809)
!2837 = distinct !DISubprogram(name: "xstrdup", scope: !154, file: !154, line: 119, type: !789, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !2838)
!2838 = !{!2839}
!2839 = !DILocalVariable(name: "string", arg: 1, scope: !2837, file: !154, line: 119, type: !6)
!2840 = !DILocation(line: 0, scope: !2837)
!2841 = !DILocation(line: 121, column: 27, scope: !2837)
!2842 = !DILocation(line: 121, column: 43, scope: !2837)
!2843 = !DILocation(line: 0, scope: !2809, inlinedAt: !2844)
!2844 = distinct !DILocation(line: 121, column: 10, scope: !2837)
!2845 = !DILocation(line: 0, scope: !2637, inlinedAt: !2846)
!2846 = distinct !DILocation(line: 113, column: 18, scope: !2809, inlinedAt: !2844)
!2847 = !DILocation(line: 41, column: 13, scope: !2637, inlinedAt: !2846)
!2848 = !DILocation(line: 42, column: 8, scope: !2646, inlinedAt: !2846)
!2849 = !DILocation(line: 42, column: 10, scope: !2646, inlinedAt: !2846)
!2850 = !DILocation(line: 43, column: 5, scope: !2646, inlinedAt: !2846)
!2851 = !DILocation(line: 0, scope: !2825, inlinedAt: !2852)
!2852 = distinct !DILocation(line: 113, column: 10, scope: !2809, inlinedAt: !2844)
!2853 = !DILocation(line: 29, column: 10, scope: !2825, inlinedAt: !2852)
!2854 = !DILocation(line: 121, column: 3, scope: !2837)
!2855 = distinct !DISubprogram(name: "xalloc_die", scope: !171, file: !171, line: 32, type: !796, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !170, retainedNodes: !4)
!2856 = !DILocation(line: 34, column: 10, scope: !2855)
!2857 = !DILocation(line: 34, column: 33, scope: !2855)
!2858 = !DILocation(line: 34, column: 3, scope: !2855)
!2859 = !DILocation(line: 40, column: 3, scope: !2855)
!2860 = distinct !DISubprogram(name: "rpl_calloc", scope: !173, file: !173, line: 42, type: !2625, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !2861)
!2861 = !{!2862, !2863, !2864, !2865}
!2862 = !DILocalVariable(name: "n", arg: 1, scope: !2860, file: !173, line: 42, type: !91)
!2863 = !DILocalVariable(name: "s", arg: 2, scope: !2860, file: !173, line: 42, type: !91)
!2864 = !DILocalVariable(name: "result", scope: !2860, file: !173, line: 44, type: !46)
!2865 = !DILocalVariable(name: "bytes", scope: !2866, file: !173, line: 56, type: !91)
!2866 = distinct !DILexicalBlock(scope: !2867, file: !173, line: 53, column: 5)
!2867 = distinct !DILexicalBlock(scope: !2860, file: !173, line: 47, column: 7)
!2868 = !DILocation(line: 0, scope: !2860)
!2869 = !DILocation(line: 47, column: 9, scope: !2867)
!2870 = !DILocation(line: 47, column: 14, scope: !2867)
!2871 = !DILocation(line: 0, scope: !2866)
!2872 = !DILocation(line: 57, column: 21, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2866, file: !173, line: 57, column: 11)
!2874 = !DILocation(line: 57, column: 11, scope: !2866)
!2875 = !DILocation(line: 59, column: 11, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2873, file: !173, line: 58, column: 9)
!2877 = !DILocation(line: 59, column: 17, scope: !2876)
!2878 = !DILocation(line: 65, column: 12, scope: !2860)
!2879 = !DILocation(line: 72, column: 3, scope: !2860)
!2880 = !DILocation(line: 73, column: 1, scope: !2860)
!2881 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !175, file: !175, line: 86, type: !2882, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !174, retainedNodes: !2896)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!91, !2884, !6, !91, !2885}
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1155, line: 6, baseType: !2887)
!2887 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1157, line: 21, baseType: !2888)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1157, line: 13, size: 64, elements: !2889)
!2889 = !{!2890, !2891}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2888, file: !1157, line: 15, baseType: !23, size: 32)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2888, file: !1157, line: 20, baseType: !2892, size: 32, offset: 32)
!2892 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2888, file: !1157, line: 16, size: 32, elements: !2893)
!2893 = !{!2894, !2895}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2892, file: !1157, line: 18, baseType: !56, size: 32)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2892, file: !1157, line: 19, baseType: !1166, size: 32)
!2896 = !{!2897, !2898, !2899, !2900, !2901, !2902, !2903}
!2897 = !DILocalVariable(name: "pwc", arg: 1, scope: !2881, file: !175, line: 86, type: !2884)
!2898 = !DILocalVariable(name: "s", arg: 2, scope: !2881, file: !175, line: 86, type: !6)
!2899 = !DILocalVariable(name: "n", arg: 3, scope: !2881, file: !175, line: 86, type: !91)
!2900 = !DILocalVariable(name: "ps", arg: 4, scope: !2881, file: !175, line: 86, type: !2885)
!2901 = !DILocalVariable(name: "ret", scope: !2881, file: !175, line: 88, type: !91)
!2902 = !DILocalVariable(name: "wc", scope: !2881, file: !175, line: 89, type: !1171)
!2903 = !DILocalVariable(name: "uc", scope: !2904, file: !175, line: 156, type: !1033)
!2904 = distinct !DILexicalBlock(scope: !2905, file: !175, line: 155, column: 5)
!2905 = distinct !DILexicalBlock(scope: !2881, file: !175, line: 154, column: 7)
!2906 = !DILocation(line: 0, scope: !2881)
!2907 = !DILocation(line: 89, column: 3, scope: !2881)
!2908 = !DILocation(line: 105, column: 9, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2881, file: !175, line: 105, column: 7)
!2910 = !DILocation(line: 105, column: 7, scope: !2881)
!2911 = !DILocation(line: 145, column: 9, scope: !2881)
!2912 = !DILocation(line: 154, column: 19, scope: !2905)
!2913 = !DILocation(line: 154, column: 26, scope: !2905)
!2914 = !DILocation(line: 154, column: 41, scope: !2905)
!2915 = !DILocation(line: 154, column: 7, scope: !2881)
!2916 = !DILocation(line: 156, column: 26, scope: !2904)
!2917 = !DILocation(line: 0, scope: !2904)
!2918 = !DILocation(line: 157, column: 14, scope: !2904)
!2919 = !DILocation(line: 157, column: 12, scope: !2904)
!2920 = !DILocation(line: 163, column: 1, scope: !2881)
!2921 = !DISubprogram(name: "mbrtowc", scope: !1836, file: !1836, line: 296, type: !2922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2922 = !DISubroutineType(types: !2923)
!2923 = !{!93, !37, !6, !93, !2924}
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2925 = distinct !DISubprogram(name: "close_stream", scope: !178, file: !178, line: 56, type: !2926, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !177, retainedNodes: !2962)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!23, !2928}
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2470, line: 7, baseType: !2930)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !667, line: 49, size: 1728, elements: !2931)
!2931 = !{!2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2930, file: !667, line: 51, baseType: !23, size: 32)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2930, file: !667, line: 54, baseType: !47, size: 64, offset: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2930, file: !667, line: 55, baseType: !47, size: 64, offset: 128)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2930, file: !667, line: 56, baseType: !47, size: 64, offset: 192)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2930, file: !667, line: 57, baseType: !47, size: 64, offset: 256)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2930, file: !667, line: 58, baseType: !47, size: 64, offset: 320)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2930, file: !667, line: 59, baseType: !47, size: 64, offset: 384)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2930, file: !667, line: 60, baseType: !47, size: 64, offset: 448)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2930, file: !667, line: 61, baseType: !47, size: 64, offset: 512)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2930, file: !667, line: 64, baseType: !47, size: 64, offset: 576)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2930, file: !667, line: 65, baseType: !47, size: 64, offset: 640)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2930, file: !667, line: 66, baseType: !47, size: 64, offset: 704)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2930, file: !667, line: 68, baseType: !682, size: 64, offset: 768)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2930, file: !667, line: 70, baseType: !2946, size: 64, offset: 832)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2930, file: !667, line: 72, baseType: !23, size: 32, offset: 896)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2930, file: !667, line: 73, baseType: !23, size: 32, offset: 928)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2930, file: !667, line: 74, baseType: !688, size: 64, offset: 960)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2930, file: !667, line: 77, baseType: !90, size: 16, offset: 1024)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2930, file: !667, line: 78, baseType: !693, size: 8, offset: 1040)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2930, file: !667, line: 79, baseType: !695, size: 8, offset: 1048)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2930, file: !667, line: 81, baseType: !699, size: 64, offset: 1088)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2930, file: !667, line: 89, baseType: !702, size: 64, offset: 1152)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2930, file: !667, line: 91, baseType: !704, size: 64, offset: 1216)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2930, file: !667, line: 92, baseType: !707, size: 64, offset: 1280)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2930, file: !667, line: 93, baseType: !2946, size: 64, offset: 1344)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2930, file: !667, line: 94, baseType: !46, size: 64, offset: 1408)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2930, file: !667, line: 95, baseType: !91, size: 64, offset: 1472)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2930, file: !667, line: 96, baseType: !23, size: 32, offset: 1536)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2930, file: !667, line: 98, baseType: !714, size: 160, offset: 1568)
!2962 = !{!2963, !2964, !2966, !2967}
!2963 = !DILocalVariable(name: "stream", arg: 1, scope: !2925, file: !178, line: 56, type: !2928)
!2964 = !DILocalVariable(name: "some_pending", scope: !2925, file: !178, line: 58, type: !2965)
!2965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!2966 = !DILocalVariable(name: "prev_fail", scope: !2925, file: !178, line: 59, type: !2965)
!2967 = !DILocalVariable(name: "fclose_fail", scope: !2925, file: !178, line: 60, type: !2965)
!2968 = !DILocation(line: 0, scope: !2925)
!2969 = !DILocation(line: 58, column: 30, scope: !2925)
!2970 = !DILocalVariable(name: "__stream", arg: 1, scope: !2971, file: !2972, line: 135, type: !2928)
!2971 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2972, file: !2972, line: 135, type: !2926, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !177, retainedNodes: !2973)
!2972 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!2973 = !{!2970}
!2974 = !DILocation(line: 0, scope: !2971, inlinedAt: !2975)
!2975 = distinct !DILocation(line: 59, column: 27, scope: !2925)
!2976 = !DILocation(line: 137, column: 10, scope: !2971, inlinedAt: !2975)
!2977 = !{!2978, !758, i64 0}
!2978 = !{!"_IO_FILE", !758, i64 0, !596, i64 8, !596, i64 16, !596, i64 24, !596, i64 32, !596, i64 40, !596, i64 48, !596, i64 56, !596, i64 64, !596, i64 72, !596, i64 80, !596, i64 88, !596, i64 96, !596, i64 104, !758, i64 112, !758, i64 116, !1912, i64 120, !1395, i64 128, !597, i64 130, !597, i64 131, !596, i64 136, !1912, i64 144, !596, i64 152, !596, i64 160, !596, i64 168, !596, i64 176, !1912, i64 184, !758, i64 192, !597, i64 196}
!2979 = !DILocation(line: 59, column: 43, scope: !2925)
!2980 = !DILocation(line: 60, column: 29, scope: !2925)
!2981 = !DILocation(line: 60, column: 45, scope: !2925)
!2982 = !DILocation(line: 70, column: 17, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2925, file: !178, line: 70, column: 7)
!2984 = !DILocation(line: 58, column: 50, scope: !2925)
!2985 = !DILocation(line: 70, column: 33, scope: !2983)
!2986 = !DILocation(line: 70, column: 53, scope: !2983)
!2987 = !DILocation(line: 70, column: 59, scope: !2983)
!2988 = !DILocation(line: 70, column: 7, scope: !2925)
!2989 = !DILocation(line: 72, column: 11, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2983, file: !178, line: 71, column: 5)
!2991 = !DILocation(line: 73, column: 9, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2990, file: !178, line: 72, column: 11)
!2993 = !DILocation(line: 73, column: 15, scope: !2992)
!2994 = !DILocation(line: 78, column: 1, scope: !2925)
!2995 = distinct !DISubprogram(name: "hard_locale", scope: !180, file: !180, line: 27, type: !2996, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !179, retainedNodes: !2998)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!16, !23}
!2998 = !{!2999, !3000}
!2999 = !DILocalVariable(name: "category", arg: 1, scope: !2995, file: !180, line: 27, type: !23)
!3000 = !DILocalVariable(name: "locale", scope: !2995, file: !180, line: 29, type: !3001)
!3001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !3002)
!3002 = !{!3003}
!3003 = !DISubrange(count: 257)
!3004 = !DILocation(line: 0, scope: !2995)
!3005 = !DILocation(line: 29, column: 3, scope: !2995)
!3006 = !DILocation(line: 29, column: 8, scope: !2995)
!3007 = !DILocation(line: 31, column: 7, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !2995, file: !180, line: 31, column: 7)
!3009 = !DILocation(line: 31, column: 7, scope: !2995)
!3010 = !DILocation(line: 34, column: 12, scope: !2995)
!3011 = !DILocation(line: 34, column: 38, scope: !2995)
!3012 = !DILocation(line: 34, column: 41, scope: !2995)
!3013 = !DILocation(line: 34, column: 66, scope: !2995)
!3014 = !DILocation(line: 35, column: 1, scope: !2995)
!3015 = distinct !DISubprogram(name: "locale_charset", scope: !182, file: !182, line: 831, type: !3016, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3018)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{!6}
!3018 = !{!3019}
!3019 = !DILocalVariable(name: "codeset", scope: !3015, file: !182, line: 833, type: !6)
!3020 = !DILocation(line: 847, column: 13, scope: !3015)
!3021 = !DILocation(line: 0, scope: !3015)
!3022 = !DILocation(line: 911, column: 15, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3015, file: !182, line: 911, column: 7)
!3024 = !DILocation(line: 911, column: 7, scope: !3015)
!3025 = !DILocation(line: 1070, column: 13, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !3027, file: !182, line: 1070, column: 13)
!3027 = distinct !DILexicalBlock(scope: !3028, file: !182, line: 1060, column: 7)
!3028 = distinct !DILexicalBlock(scope: !3015, file: !182, line: 1019, column: 3)
!3029 = !DILocation(line: 1070, column: 24, scope: !3026)
!3030 = !DILocation(line: 1070, column: 13, scope: !3027)
!3031 = !DILocation(line: 1158, column: 3, scope: !3015)
!3032 = !DISubprogram(name: "nl_langinfo", scope: !185, file: !185, line: 661, type: !3033, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!47, !23}
!3035 = distinct !DISubprogram(name: "setlocale_null_r", scope: !571, file: !571, line: 269, type: !3036, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3038)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!23, !23, !47, !91}
!3038 = !{!3039, !3040, !3041}
!3039 = !DILocalVariable(name: "category", arg: 1, scope: !3035, file: !571, line: 269, type: !23)
!3040 = !DILocalVariable(name: "buf", arg: 2, scope: !3035, file: !571, line: 269, type: !47)
!3041 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3035, file: !571, line: 269, type: !91)
!3042 = !DILocation(line: 0, scope: !3035)
!3043 = !DILocalVariable(name: "category", arg: 1, scope: !3044, file: !571, line: 91, type: !23)
!3044 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !571, file: !571, line: 91, type: !3036, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3045)
!3045 = !{!3043, !3046, !3047, !3048, !3049}
!3046 = !DILocalVariable(name: "buf", arg: 2, scope: !3044, file: !571, line: 91, type: !47)
!3047 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3044, file: !571, line: 91, type: !91)
!3048 = !DILocalVariable(name: "result", scope: !3044, file: !571, line: 140, type: !6)
!3049 = !DILocalVariable(name: "length", scope: !3050, file: !571, line: 154, type: !91)
!3050 = distinct !DILexicalBlock(scope: !3051, file: !571, line: 153, column: 5)
!3051 = distinct !DILexicalBlock(scope: !3044, file: !571, line: 142, column: 7)
!3052 = !DILocation(line: 0, scope: !3044, inlinedAt: !3053)
!3053 = distinct !DILocation(line: 274, column: 10, scope: !3035)
!3054 = !DILocalVariable(name: "category", arg: 1, scope: !3055, file: !571, line: 60, type: !23)
!3055 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !571, file: !571, line: 60, type: !3056, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3058)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!6, !23}
!3058 = !{!3054, !3059}
!3059 = !DILocalVariable(name: "result", scope: !3055, file: !571, line: 62, type: !6)
!3060 = !DILocation(line: 0, scope: !3055, inlinedAt: !3061)
!3061 = distinct !DILocation(line: 140, column: 24, scope: !3044, inlinedAt: !3053)
!3062 = !DILocation(line: 62, column: 24, scope: !3055, inlinedAt: !3061)
!3063 = !DILocation(line: 142, column: 14, scope: !3051, inlinedAt: !3053)
!3064 = !DILocation(line: 142, column: 7, scope: !3044, inlinedAt: !3053)
!3065 = !DILocation(line: 145, column: 19, scope: !3066, inlinedAt: !3053)
!3066 = distinct !DILexicalBlock(scope: !3067, file: !571, line: 145, column: 11)
!3067 = distinct !DILexicalBlock(scope: !3051, file: !571, line: 143, column: 5)
!3068 = !DILocation(line: 145, column: 11, scope: !3067, inlinedAt: !3053)
!3069 = !DILocation(line: 149, column: 16, scope: !3066, inlinedAt: !3053)
!3070 = !DILocation(line: 149, column: 9, scope: !3066, inlinedAt: !3053)
!3071 = !DILocation(line: 154, column: 23, scope: !3050, inlinedAt: !3053)
!3072 = !DILocation(line: 0, scope: !3050, inlinedAt: !3053)
!3073 = !DILocation(line: 155, column: 18, scope: !3074, inlinedAt: !3053)
!3074 = distinct !DILexicalBlock(scope: !3050, file: !571, line: 155, column: 11)
!3075 = !DILocation(line: 155, column: 11, scope: !3050, inlinedAt: !3053)
!3076 = !DILocation(line: 157, column: 39, scope: !3077, inlinedAt: !3053)
!3077 = distinct !DILexicalBlock(scope: !3074, file: !571, line: 156, column: 9)
!3078 = !DILocalVariable(name: "__dest", arg: 1, scope: !3079, file: !1403, line: 26, type: !2828)
!3079 = distinct !DISubprogram(name: "memcpy", scope: !1403, file: !1403, line: 26, type: !2826, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3080)
!3080 = !{!3078, !3081, !3082}
!3081 = !DILocalVariable(name: "__src", arg: 2, scope: !3079, file: !1403, line: 26, type: !2829)
!3082 = !DILocalVariable(name: "__len", arg: 3, scope: !3079, file: !1403, line: 26, type: !91)
!3083 = !DILocation(line: 0, scope: !3079, inlinedAt: !3084)
!3084 = distinct !DILocation(line: 157, column: 11, scope: !3077, inlinedAt: !3053)
!3085 = !DILocation(line: 29, column: 10, scope: !3079, inlinedAt: !3084)
!3086 = !DILocation(line: 158, column: 11, scope: !3077, inlinedAt: !3053)
!3087 = !DILocation(line: 162, column: 23, scope: !3088, inlinedAt: !3053)
!3088 = distinct !DILexicalBlock(scope: !3089, file: !571, line: 162, column: 15)
!3089 = distinct !DILexicalBlock(scope: !3074, file: !571, line: 161, column: 9)
!3090 = !DILocation(line: 162, column: 15, scope: !3089, inlinedAt: !3053)
!3091 = !DILocation(line: 167, column: 44, scope: !3092, inlinedAt: !3053)
!3092 = distinct !DILexicalBlock(scope: !3088, file: !571, line: 163, column: 13)
!3093 = !DILocation(line: 0, scope: !3079, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 167, column: 15, scope: !3092, inlinedAt: !3053)
!3095 = !DILocation(line: 29, column: 10, scope: !3079, inlinedAt: !3094)
!3096 = !DILocation(line: 168, column: 15, scope: !3092, inlinedAt: !3053)
!3097 = !DILocation(line: 168, column: 32, scope: !3092, inlinedAt: !3053)
!3098 = !DILocation(line: 169, column: 13, scope: !3092, inlinedAt: !3053)
!3099 = !DILocation(line: 0, scope: !3051, inlinedAt: !3053)
!3100 = !DILocation(line: 274, column: 3, scope: !3035)
!3101 = distinct !DISubprogram(name: "setlocale_null", scope: !571, file: !571, line: 301, type: !3056, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3102)
!3102 = !{!3103}
!3103 = !DILocalVariable(name: "category", arg: 1, scope: !3101, file: !571, line: 301, type: !23)
!3104 = !DILocation(line: 0, scope: !3101)
!3105 = !DILocation(line: 0, scope: !3055, inlinedAt: !3106)
!3106 = distinct !DILocation(line: 304, column: 10, scope: !3101)
!3107 = !DILocation(line: 62, column: 24, scope: !3055, inlinedAt: !3106)
!3108 = !DILocation(line: 304, column: 3, scope: !3101)
!3109 = distinct !DISubprogram(name: "rpl_fclose", scope: !573, file: !573, line: 58, type: !3110, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3146)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!23, !3112}
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2470, line: 7, baseType: !3114)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !667, line: 49, size: 1728, elements: !3115)
!3115 = !{!3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3114, file: !667, line: 51, baseType: !23, size: 32)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3114, file: !667, line: 54, baseType: !47, size: 64, offset: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3114, file: !667, line: 55, baseType: !47, size: 64, offset: 128)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3114, file: !667, line: 56, baseType: !47, size: 64, offset: 192)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3114, file: !667, line: 57, baseType: !47, size: 64, offset: 256)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3114, file: !667, line: 58, baseType: !47, size: 64, offset: 320)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3114, file: !667, line: 59, baseType: !47, size: 64, offset: 384)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3114, file: !667, line: 60, baseType: !47, size: 64, offset: 448)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3114, file: !667, line: 61, baseType: !47, size: 64, offset: 512)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3114, file: !667, line: 64, baseType: !47, size: 64, offset: 576)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3114, file: !667, line: 65, baseType: !47, size: 64, offset: 640)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3114, file: !667, line: 66, baseType: !47, size: 64, offset: 704)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3114, file: !667, line: 68, baseType: !682, size: 64, offset: 768)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3114, file: !667, line: 70, baseType: !3130, size: 64, offset: 832)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3114, file: !667, line: 72, baseType: !23, size: 32, offset: 896)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3114, file: !667, line: 73, baseType: !23, size: 32, offset: 928)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3114, file: !667, line: 74, baseType: !688, size: 64, offset: 960)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3114, file: !667, line: 77, baseType: !90, size: 16, offset: 1024)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3114, file: !667, line: 78, baseType: !693, size: 8, offset: 1040)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3114, file: !667, line: 79, baseType: !695, size: 8, offset: 1048)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3114, file: !667, line: 81, baseType: !699, size: 64, offset: 1088)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3114, file: !667, line: 89, baseType: !702, size: 64, offset: 1152)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3114, file: !667, line: 91, baseType: !704, size: 64, offset: 1216)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3114, file: !667, line: 92, baseType: !707, size: 64, offset: 1280)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3114, file: !667, line: 93, baseType: !3130, size: 64, offset: 1344)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3114, file: !667, line: 94, baseType: !46, size: 64, offset: 1408)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3114, file: !667, line: 95, baseType: !91, size: 64, offset: 1472)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3114, file: !667, line: 96, baseType: !23, size: 32, offset: 1536)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3114, file: !667, line: 98, baseType: !714, size: 160, offset: 1568)
!3146 = !{!3147, !3148, !3149, !3150}
!3147 = !DILocalVariable(name: "fp", arg: 1, scope: !3109, file: !573, line: 58, type: !3112)
!3148 = !DILocalVariable(name: "saved_errno", scope: !3109, file: !573, line: 60, type: !23)
!3149 = !DILocalVariable(name: "fd", scope: !3109, file: !573, line: 61, type: !23)
!3150 = !DILocalVariable(name: "result", scope: !3109, file: !573, line: 62, type: !23)
!3151 = !DILocation(line: 0, scope: !3109)
!3152 = !DILocation(line: 65, column: 8, scope: !3109)
!3153 = !DILocation(line: 66, column: 10, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3109, file: !573, line: 66, column: 7)
!3155 = !DILocation(line: 66, column: 7, scope: !3109)
!3156 = !DILocation(line: 67, column: 12, scope: !3154)
!3157 = !DILocation(line: 67, column: 5, scope: !3154)
!3158 = !DILocation(line: 72, column: 9, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3109, file: !573, line: 72, column: 7)
!3160 = !DILocation(line: 72, column: 23, scope: !3159)
!3161 = !DILocation(line: 72, column: 33, scope: !3159)
!3162 = !DILocation(line: 72, column: 26, scope: !3159)
!3163 = !DILocation(line: 72, column: 59, scope: !3159)
!3164 = !DILocation(line: 73, column: 7, scope: !3159)
!3165 = !DILocation(line: 73, column: 10, scope: !3159)
!3166 = !DILocation(line: 72, column: 7, scope: !3109)
!3167 = !DILocation(line: 100, column: 12, scope: !3109)
!3168 = !DILocation(line: 105, column: 7, scope: !3109)
!3169 = !DILocation(line: 74, column: 19, scope: !3159)
!3170 = !DILocation(line: 105, column: 19, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3109, file: !573, line: 105, column: 7)
!3172 = !DILocation(line: 107, column: 13, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3171, file: !573, line: 106, column: 5)
!3174 = !DILocation(line: 109, column: 5, scope: !3173)
!3175 = !DILocation(line: 112, column: 1, scope: !3109)
!3176 = !DISubprogram(name: "fileno", scope: !662, file: !662, line: 785, type: !3177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!23, !3130}
!3179 = !DISubprogram(name: "fclose", scope: !662, file: !662, line: 213, type: !3177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3180 = !DISubprogram(name: "lseek", scope: !803, file: !803, line: 334, type: !3181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!690, !23, !690, !23}
!3183 = distinct !DISubprogram(name: "rpl_fflush", scope: !575, file: !575, line: 129, type: !3184, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !574, retainedNodes: !3220)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!23, !3186}
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2470, line: 7, baseType: !3188)
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !667, line: 49, size: 1728, elements: !3189)
!3189 = !{!3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3188, file: !667, line: 51, baseType: !23, size: 32)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3188, file: !667, line: 54, baseType: !47, size: 64, offset: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3188, file: !667, line: 55, baseType: !47, size: 64, offset: 128)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3188, file: !667, line: 56, baseType: !47, size: 64, offset: 192)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3188, file: !667, line: 57, baseType: !47, size: 64, offset: 256)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3188, file: !667, line: 58, baseType: !47, size: 64, offset: 320)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3188, file: !667, line: 59, baseType: !47, size: 64, offset: 384)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3188, file: !667, line: 60, baseType: !47, size: 64, offset: 448)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3188, file: !667, line: 61, baseType: !47, size: 64, offset: 512)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3188, file: !667, line: 64, baseType: !47, size: 64, offset: 576)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3188, file: !667, line: 65, baseType: !47, size: 64, offset: 640)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3188, file: !667, line: 66, baseType: !47, size: 64, offset: 704)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3188, file: !667, line: 68, baseType: !682, size: 64, offset: 768)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3188, file: !667, line: 70, baseType: !3204, size: 64, offset: 832)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3188, file: !667, line: 72, baseType: !23, size: 32, offset: 896)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3188, file: !667, line: 73, baseType: !23, size: 32, offset: 928)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3188, file: !667, line: 74, baseType: !688, size: 64, offset: 960)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3188, file: !667, line: 77, baseType: !90, size: 16, offset: 1024)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3188, file: !667, line: 78, baseType: !693, size: 8, offset: 1040)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3188, file: !667, line: 79, baseType: !695, size: 8, offset: 1048)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3188, file: !667, line: 81, baseType: !699, size: 64, offset: 1088)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3188, file: !667, line: 89, baseType: !702, size: 64, offset: 1152)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3188, file: !667, line: 91, baseType: !704, size: 64, offset: 1216)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3188, file: !667, line: 92, baseType: !707, size: 64, offset: 1280)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3188, file: !667, line: 93, baseType: !3204, size: 64, offset: 1344)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3188, file: !667, line: 94, baseType: !46, size: 64, offset: 1408)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3188, file: !667, line: 95, baseType: !91, size: 64, offset: 1472)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3188, file: !667, line: 96, baseType: !23, size: 32, offset: 1536)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3188, file: !667, line: 98, baseType: !714, size: 160, offset: 1568)
!3220 = !{!3221}
!3221 = !DILocalVariable(name: "stream", arg: 1, scope: !3183, file: !575, line: 129, type: !3186)
!3222 = !DILocation(line: 0, scope: !3183)
!3223 = !DILocation(line: 150, column: 14, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3183, file: !575, line: 150, column: 7)
!3225 = !DILocation(line: 150, column: 22, scope: !3224)
!3226 = !DILocation(line: 150, column: 27, scope: !3224)
!3227 = !DILocation(line: 150, column: 7, scope: !3183)
!3228 = !DILocation(line: 151, column: 12, scope: !3224)
!3229 = !DILocation(line: 151, column: 5, scope: !3224)
!3230 = !DILocalVariable(name: "fp", arg: 1, scope: !3231, file: !575, line: 41, type: !3186)
!3231 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !575, file: !575, line: 41, type: !3232, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !574, retainedNodes: !3234)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{null, !3186}
!3234 = !{!3230}
!3235 = !DILocation(line: 0, scope: !3231, inlinedAt: !3236)
!3236 = distinct !DILocation(line: 156, column: 3, scope: !3183)
!3237 = !DILocation(line: 43, column: 11, scope: !3238, inlinedAt: !3236)
!3238 = distinct !DILexicalBlock(scope: !3231, file: !575, line: 43, column: 7)
!3239 = !DILocation(line: 43, column: 18, scope: !3238, inlinedAt: !3236)
!3240 = !DILocation(line: 43, column: 7, scope: !3231, inlinedAt: !3236)
!3241 = !DILocation(line: 45, column: 5, scope: !3238, inlinedAt: !3236)
!3242 = !DILocation(line: 158, column: 10, scope: !3183)
!3243 = !DILocation(line: 158, column: 3, scope: !3183)
!3244 = !DILocation(line: 235, column: 1, scope: !3183)
!3245 = !DISubprogram(name: "fflush", scope: !662, file: !662, line: 218, type: !3246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!23, !3204}
!3248 = distinct !DISubprogram(name: "rpl_fseeko", scope: !577, file: !577, line: 28, type: !3249, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !576, retainedNodes: !3286)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!23, !3251, !3285, !23}
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2470, line: 7, baseType: !3253)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !667, line: 49, size: 1728, elements: !3254)
!3254 = !{!3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3253, file: !667, line: 51, baseType: !23, size: 32)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3253, file: !667, line: 54, baseType: !47, size: 64, offset: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3253, file: !667, line: 55, baseType: !47, size: 64, offset: 128)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3253, file: !667, line: 56, baseType: !47, size: 64, offset: 192)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3253, file: !667, line: 57, baseType: !47, size: 64, offset: 256)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3253, file: !667, line: 58, baseType: !47, size: 64, offset: 320)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3253, file: !667, line: 59, baseType: !47, size: 64, offset: 384)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3253, file: !667, line: 60, baseType: !47, size: 64, offset: 448)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3253, file: !667, line: 61, baseType: !47, size: 64, offset: 512)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3253, file: !667, line: 64, baseType: !47, size: 64, offset: 576)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3253, file: !667, line: 65, baseType: !47, size: 64, offset: 640)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3253, file: !667, line: 66, baseType: !47, size: 64, offset: 704)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3253, file: !667, line: 68, baseType: !682, size: 64, offset: 768)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3253, file: !667, line: 70, baseType: !3269, size: 64, offset: 832)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3253, file: !667, line: 72, baseType: !23, size: 32, offset: 896)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3253, file: !667, line: 73, baseType: !23, size: 32, offset: 928)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3253, file: !667, line: 74, baseType: !688, size: 64, offset: 960)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3253, file: !667, line: 77, baseType: !90, size: 16, offset: 1024)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3253, file: !667, line: 78, baseType: !693, size: 8, offset: 1040)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3253, file: !667, line: 79, baseType: !695, size: 8, offset: 1048)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3253, file: !667, line: 81, baseType: !699, size: 64, offset: 1088)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3253, file: !667, line: 89, baseType: !702, size: 64, offset: 1152)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3253, file: !667, line: 91, baseType: !704, size: 64, offset: 1216)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3253, file: !667, line: 92, baseType: !707, size: 64, offset: 1280)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3253, file: !667, line: 93, baseType: !3269, size: 64, offset: 1344)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3253, file: !667, line: 94, baseType: !46, size: 64, offset: 1408)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3253, file: !667, line: 95, baseType: !91, size: 64, offset: 1472)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3253, file: !667, line: 96, baseType: !23, size: 32, offset: 1536)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3253, file: !667, line: 98, baseType: !714, size: 160, offset: 1568)
!3285 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !662, line: 63, baseType: !688)
!3286 = !{!3287, !3288, !3289, !3290}
!3287 = !DILocalVariable(name: "fp", arg: 1, scope: !3248, file: !577, line: 28, type: !3251)
!3288 = !DILocalVariable(name: "offset", arg: 2, scope: !3248, file: !577, line: 28, type: !3285)
!3289 = !DILocalVariable(name: "whence", arg: 3, scope: !3248, file: !577, line: 28, type: !23)
!3290 = !DILocalVariable(name: "pos", scope: !3291, file: !577, line: 117, type: !3285)
!3291 = distinct !DILexicalBlock(scope: !3292, file: !577, line: 113, column: 5)
!3292 = distinct !DILexicalBlock(scope: !3248, file: !577, line: 52, column: 7)
!3293 = !DILocation(line: 0, scope: !3248)
!3294 = !DILocation(line: 52, column: 11, scope: !3292)
!3295 = !{!2978, !596, i64 16}
!3296 = !DILocation(line: 52, column: 31, scope: !3292)
!3297 = !{!2978, !596, i64 8}
!3298 = !DILocation(line: 52, column: 24, scope: !3292)
!3299 = !DILocation(line: 53, column: 7, scope: !3292)
!3300 = !DILocation(line: 53, column: 14, scope: !3292)
!3301 = !{!2978, !596, i64 40}
!3302 = !DILocation(line: 53, column: 35, scope: !3292)
!3303 = !{!2978, !596, i64 32}
!3304 = !DILocation(line: 53, column: 28, scope: !3292)
!3305 = !DILocation(line: 54, column: 7, scope: !3292)
!3306 = !DILocation(line: 54, column: 14, scope: !3292)
!3307 = !{!2978, !596, i64 72}
!3308 = !DILocation(line: 54, column: 28, scope: !3292)
!3309 = !DILocation(line: 52, column: 7, scope: !3248)
!3310 = !DILocation(line: 117, column: 26, scope: !3291)
!3311 = !DILocation(line: 117, column: 19, scope: !3291)
!3312 = !DILocation(line: 0, scope: !3291)
!3313 = !DILocation(line: 118, column: 15, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3291, file: !577, line: 118, column: 11)
!3315 = !DILocation(line: 118, column: 11, scope: !3291)
!3316 = !DILocation(line: 129, column: 11, scope: !3291)
!3317 = !DILocation(line: 129, column: 18, scope: !3291)
!3318 = !DILocation(line: 130, column: 11, scope: !3291)
!3319 = !DILocation(line: 130, column: 19, scope: !3291)
!3320 = !{!2978, !1912, i64 144}
!3321 = !DILocation(line: 161, column: 7, scope: !3291)
!3322 = !DILocation(line: 163, column: 10, scope: !3248)
!3323 = !DILocation(line: 163, column: 3, scope: !3248)
!3324 = !DILocation(line: 164, column: 1, scope: !3248)
!3325 = !DISubprogram(name: "fseeko", scope: !662, file: !662, line: 712, type: !3326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!23, !3269, !690, !23}
