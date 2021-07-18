; ModuleID = 'coreutils-8.32/src/hostid.bc'
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [89 x i8] c"Usage: %s [OPTION]\0APrint the numeric identifier (in hexadecimal) for the current host.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"hostid\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.12 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.23 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.25 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%08x\0A\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), align 8, !dbg !0
@.str.27 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !9
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !14
@.str.30 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.31 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.32 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !17
@opterr = external local_unnamed_addr global i32, align 4
@.str.35 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.36, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.37, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !24
@.str.2.36 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.37 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1.40 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !41
@.str.45 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.46 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.47 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.49, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.50, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.51, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.52, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.53, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.54, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.55, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.56, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.57, i32 0, i32 0), i8* null], align 16, !dbg !49
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !95
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !101
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !113
@.str.11.58 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.59 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.60 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.61 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.62 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.63 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.64 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !120
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !127
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !115
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !129
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !135
@.str.1.104 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.114 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.117 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.118 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

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
  br label %55, !dbg !593

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i32 5) #24, !dbg !599
  %11 = load i8*, i8** @program_name, align 8, !dbg !599, !tbaa !595
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #24, !dbg !599
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 5) #24, !dbg !601
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !601, !tbaa !595
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !601
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 5) #24, !dbg !602
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !602, !tbaa !595
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !602
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), metadata !603, metadata !DIExpression()) #24, !dbg !622
  %19 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !624
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %19) #24, !dbg !624
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !609, metadata !DIExpression()) #24, !dbg !625
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %19, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #24, !dbg !625
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), metadata !618, metadata !DIExpression()) #24, !dbg !622
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !619, metadata !DIExpression()) #24, !dbg !622
  %20 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !626
  call void @llvm.dbg.value(metadata %struct.infomap* %20, metadata !619, metadata !DIExpression()) #24, !dbg !622
  br label %21, !dbg !627

21:                                               ; preds = %26, %9
  %22 = phi i8* [ %29, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), %9 ]
  %23 = phi %struct.infomap* [ %27, %26 ], [ %20, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %23, metadata !619, metadata !DIExpression()) #24, !dbg !622
  %24 = tail call i32 @strcmp(i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* nonnull %22) #25, !dbg !628
  %25 = icmp eq i32 %24, 0, !dbg !628
  br i1 %25, label %31, label %26, !dbg !627

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %23, i64 1, !dbg !629
  call void @llvm.dbg.value(metadata %struct.infomap* %27, metadata !619, metadata !DIExpression()) #24, !dbg !622
  %28 = getelementptr inbounds %struct.infomap, %struct.infomap* %27, i64 0, i32 0, !dbg !630
  %29 = load i8*, i8** %28, align 8, !dbg !630, !tbaa !631
  %30 = icmp eq i8* %29, null, !dbg !633
  br i1 %30, label %31, label %21, !dbg !634, !llvm.loop !635

31:                                               ; preds = %26, %21
  %32 = phi %struct.infomap* [ %23, %21 ], [ %27, %26 ]
  %33 = getelementptr inbounds %struct.infomap, %struct.infomap* %32, i64 0, i32 1, !dbg !637
  %34 = load i8*, i8** %33, align 8, !dbg !637, !tbaa !639
  %35 = icmp eq i8* %34, null, !dbg !640
  %36 = select i1 %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %34, !dbg !641
  call void @llvm.dbg.value(metadata i8* %36, metadata !618, metadata !DIExpression()) #24, !dbg !622
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i32 5) #24, !dbg !642
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0)) #24, !dbg !642
  %39 = tail call i8* @setlocale(i32 5, i8* null) #24, !dbg !643
  call void @llvm.dbg.value(metadata i8* %39, metadata !621, metadata !DIExpression()) #24, !dbg !622
  %40 = icmp eq i8* %39, null, !dbg !644
  br i1 %40, label %48, label %41, !dbg !646

41:                                               ; preds = %31
  %42 = tail call i32 @strncmp(i8* nonnull %39, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i64 3) #25, !dbg !647
  %43 = icmp eq i32 %42, 0, !dbg !647
  br i1 %43, label %48, label %44, !dbg !648

44:                                               ; preds = %41
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.23, i64 0, i64 0), i32 5) #24, !dbg !649
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !649, !tbaa !595
  %47 = tail call i32 @fputs_unlocked(i8* %45, %struct._IO_FILE* %46) #24, !dbg !649
  br label %48, !dbg !651

48:                                               ; preds = %31, %41, %44
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0), i32 5) #24, !dbg !652
  %50 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %49, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #24, !dbg !652
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.25, i64 0, i64 0), i32 5) #24, !dbg !653
  %52 = icmp eq i8* %36, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), !dbg !653
  %53 = select i1 %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), !dbg !653
  %54 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %51, i8* %36, i8* %53) #24, !dbg !653
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %19) #24, !dbg !654
  br label %55

55:                                               ; preds = %48, %4
  tail call void @exit(i32 %0) #26, !dbg !655
  unreachable, !dbg !655
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !656 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !660 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !716 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !720 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !725, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata i8** %1, metadata !726, metadata !DIExpression()), !dbg !728
  %3 = load i8*, i8** %1, align 8, !dbg !729, !tbaa !595
  tail call void @set_program_name(i8* %3) #24, !dbg !730
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)) #24, !dbg !731
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0)) #24, !dbg !732
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #24, !dbg !733
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #24, !dbg !734
  %8 = load i8*, i8** @Version, align 8, !dbg !735, !tbaa !595
  tail call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %8, i1 zeroext true, void (i32)* nonnull @usage, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* null) #24, !dbg !736
  %9 = load i32, i32* @optind, align 4, !dbg !737, !tbaa !739
  %10 = icmp slt i32 %9, %0, !dbg !741
  br i1 %10, label %11, label %18, !dbg !742

11:                                               ; preds = %2
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 5) #24, !dbg !743
  %13 = load i32, i32* @optind, align 4, !dbg !745, !tbaa !739
  %14 = sext i32 %13 to i64, !dbg !746
  %15 = getelementptr inbounds i8*, i8** %1, i64 %14, !dbg !746
  %16 = load i8*, i8** %15, align 8, !dbg !746, !tbaa !595
  %17 = tail call i8* @quote(i8* %16) #24, !dbg !747
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %12, i8* %17) #24, !dbg !748
  tail call void @usage(i32 1) #27, !dbg !749
  unreachable, !dbg !749

18:                                               ; preds = %2
  %19 = tail call i64 @gethostid() #24, !dbg !750
  %20 = trunc i64 %19 to i32, !dbg !750
  call void @llvm.dbg.value(metadata i32 %20, metadata !727, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata i32 %20, metadata !727, metadata !DIExpression()), !dbg !728
  %21 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %20) #24, !dbg !751
  ret i32 0, !dbg !752
}

; Function Attrs: nounwind
declare !dbg !753 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !756 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !759 i32 @atexit(void ()*) local_unnamed_addr #2

declare !dbg !766 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

declare !dbg !770 i64 @gethostid() local_unnamed_addr #3

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #9 !dbg !774 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !776, metadata !DIExpression()), !dbg !777
  store i8* %0, i8** @file_name, align 8, !dbg !778, !tbaa !595
  ret void, !dbg !779
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #9 !dbg !780 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !784, metadata !DIExpression()), !dbg !785
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !786, !tbaa !787
  ret void, !dbg !789
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !790 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !795, !tbaa !595
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #24, !dbg !796
  %3 = icmp eq i32 %2, 0, !dbg !797
  br i1 %3, label %22, label %4, !dbg !798

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !799, !tbaa !787, !range !800
  %6 = icmp eq i8 %5, 0, !dbg !799
  br i1 %6, label %11, label %7, !dbg !801

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #28, !dbg !802
  %9 = load i32, i32* %8, align 4, !dbg !802, !tbaa !739
  %10 = icmp eq i32 %9, 32, !dbg !803
  br i1 %10, label %22, label %11, !dbg !804

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i32 5) #24, !dbg !805
  call void @llvm.dbg.value(metadata i8* %12, metadata !792, metadata !DIExpression()), !dbg !806
  %13 = load i8*, i8** @file_name, align 8, !dbg !807, !tbaa !595
  %14 = icmp eq i8* %13, null, !dbg !807
  %15 = tail call i32* @__errno_location() #28, !dbg !809
  %16 = load i32, i32* %15, align 4, !dbg !809, !tbaa !739
  br i1 %14, label %19, label %17, !dbg !810

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #24, !dbg !811
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.31, i64 0, i64 0), i8* %18, i8* %12) #24, !dbg !812
  br label %20, !dbg !812

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.32, i64 0, i64 0), i8* %12) #24, !dbg !813
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !814, !tbaa !739
  tail call void @_exit(i32 %21) #26, !dbg !815
  unreachable, !dbg !815

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !816, !tbaa !595
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #24, !dbg !818
  %25 = icmp eq i32 %24, 0, !dbg !819
  br i1 %25, label %28, label %26, !dbg !820

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !821, !tbaa !739
  tail call void @_exit(i32 %27) #26, !dbg !822
  unreachable, !dbg !822

28:                                               ; preds = %22
  ret void, !dbg !823
}

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_long_options(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, void (i32)* nocapture %5, ...) local_unnamed_addr #8 !dbg !824 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !829, metadata !DIExpression()), !dbg !853
  call void @llvm.dbg.value(metadata i8** %1, metadata !830, metadata !DIExpression()), !dbg !853
  call void @llvm.dbg.value(metadata i8* %2, metadata !831, metadata !DIExpression()), !dbg !853
  call void @llvm.dbg.value(metadata i8* %3, metadata !832, metadata !DIExpression()), !dbg !853
  call void @llvm.dbg.value(metadata i8* %4, metadata !833, metadata !DIExpression()), !dbg !853
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !834, metadata !DIExpression()), !dbg !853
  %8 = load i32, i32* @opterr, align 4, !dbg !854, !tbaa !739
  call void @llvm.dbg.value(metadata i32 %8, metadata !836, metadata !DIExpression()), !dbg !853
  store i32 0, i32* @opterr, align 4, !dbg !855, !tbaa !739
  %9 = icmp eq i32 %0, 2, !dbg !856
  br i1 %9, label %10, label %17, !dbg !857

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #24, !dbg !858
  call void @llvm.dbg.value(metadata i32 %11, metadata !835, metadata !DIExpression()), !dbg !853
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !859

12:                                               ; preds = %10
  tail call void %5(i32 0) #24, !dbg !860
  br label %17, !dbg !861

13:                                               ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !862
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #24, !dbg !862
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !837, metadata !DIExpression()), !dbg !863
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !864
  call void @llvm.va_start(i8* nonnull %14), !dbg !864
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !865, !tbaa !595
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #24, !dbg !866
  call void @exit(i32 0) #26, !dbg !867
  unreachable, !dbg !867

17:                                               ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !868, !tbaa !739
  store i32 0, i32* @optind, align 4, !dbg !869, !tbaa !739
  ret void, !dbg !870
}

; Function Attrs: nounwind
declare !dbg !871 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_gnu_standard_options_only(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, i1 zeroext %5, void (i32)* nocapture %6, ...) local_unnamed_addr #8 !dbg !877 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !881, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i8** %1, metadata !882, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i8* %2, metadata !883, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i8* %3, metadata !884, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i8* %4, metadata !885, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i1 %5, metadata !886, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !896
  call void @llvm.dbg.value(metadata void (i32)* %6, metadata !887, metadata !DIExpression()), !dbg !896
  %9 = load i32, i32* @opterr, align 4, !dbg !897, !tbaa !739
  call void @llvm.dbg.value(metadata i32 %9, metadata !889, metadata !DIExpression()), !dbg !896
  store i32 1, i32* @opterr, align 4, !dbg !898, !tbaa !739
  %10 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.40, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), !dbg !899
  call void @llvm.dbg.value(metadata i8* %10, metadata !890, metadata !DIExpression()), !dbg !896
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* %10, %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #24, !dbg !900
  call void @llvm.dbg.value(metadata i32 %11, metadata !888, metadata !DIExpression()), !dbg !896
  switch i32 %11, label %16 [
    i32 -1, label %20
    i32 104, label %18
    i32 118, label %12
  ], !dbg !901

12:                                               ; preds = %7
  %13 = bitcast [1 x %struct.__va_list_tag]* %8 to i8*, !dbg !902
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #24, !dbg !902
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %8, metadata !891, metadata !DIExpression()), !dbg !903
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !904
  call void @llvm.va_start(i8* nonnull %13), !dbg !904
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !905, !tbaa !595
  call void @version_etc_va(%struct._IO_FILE* %15, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %14) #24, !dbg !906
  call void @exit(i32 0) #26, !dbg !907
  unreachable, !dbg !907

16:                                               ; preds = %7
  %17 = load volatile i32, i32* @exit_failure, align 4, !dbg !908, !tbaa !739
  br label %18, !dbg !909

18:                                               ; preds = %7, %16
  %19 = phi i32 [ %17, %16 ], [ 0, %7 ]
  tail call void %6(i32 %19) #24, !dbg !910
  br label %20, !dbg !911

20:                                               ; preds = %18, %7
  store i32 %9, i32* @opterr, align 4, !dbg !911, !tbaa !739
  ret void, !dbg !912
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !913 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !915, metadata !DIExpression()), !dbg !918
  %2 = icmp eq i8* %0, null, !dbg !919
  br i1 %2, label %3, label %6, !dbg !921

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !922, !tbaa !595
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.45, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #29, !dbg !924
  tail call void @abort() #26, !dbg !925
  unreachable, !dbg !925

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #25, !dbg !926
  call void @llvm.dbg.value(metadata i8* %7, metadata !916, metadata !DIExpression()), !dbg !918
  %8 = icmp eq i8* %7, null, !dbg !927
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !928
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !928
  call void @llvm.dbg.value(metadata i8* %10, metadata !917, metadata !DIExpression()), !dbg !918
  %11 = ptrtoint i8* %10 to i64, !dbg !929
  %12 = ptrtoint i8* %0 to i64, !dbg !929
  %13 = sub i64 %11, %12, !dbg !929
  %14 = icmp sgt i64 %13, 6, !dbg !931
  br i1 %14, label %15, label %24, !dbg !932

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !933
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.46, i64 0, i64 0), i64 7) #25, !dbg !934
  %18 = icmp eq i32 %17, 0, !dbg !935
  br i1 %18, label %19, label %24, !dbg !936

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !915, metadata !DIExpression()), !dbg !918
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.47, i64 0, i64 0), i64 3) #25, !dbg !937
  %21 = icmp eq i32 %20, 0, !dbg !940
  br i1 %21, label %22, label %24, !dbg !941

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !942
  call void @llvm.dbg.value(metadata i8* %23, metadata !915, metadata !DIExpression()), !dbg !918
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !944, !tbaa !595
  br label %24, !dbg !945

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !915, metadata !DIExpression()), !dbg !918
  store i8* %25, i8** @program_name, align 8, !dbg !946, !tbaa !595
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !947, !tbaa !595
  ret void, !dbg !948
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #13

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !949 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !954, metadata !DIExpression()), !dbg !957
  %2 = tail call i32* @__errno_location() #28, !dbg !958
  %3 = load i32, i32* %2, align 4, !dbg !958, !tbaa !739
  call void @llvm.dbg.value(metadata i32 %3, metadata !955, metadata !DIExpression()), !dbg !957
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !959
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !959
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !959
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #24, !dbg !960
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !960
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !956, metadata !DIExpression()), !dbg !957
  store i32 %3, i32* %2, align 4, !dbg !961, !tbaa !739
  ret %struct.quoting_options* %8, !dbg !962
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #14 !dbg !963 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !969, metadata !DIExpression()), !dbg !970
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !971
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !971
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !972
  %5 = load i32, i32* %4, align 8, !dbg !972, !tbaa !973
  ret i32 %5, !dbg !975
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #9 !dbg !976 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !980, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i32 %1, metadata !981, metadata !DIExpression()), !dbg !982
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !983
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !983
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !984
  store i32 %1, i32* %5, align 8, !dbg !985, !tbaa !973
  ret void, !dbg !986
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #15 !dbg !987 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !991, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i8 %1, metadata !992, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i32 %2, metadata !993, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i8 %1, metadata !994, metadata !DIExpression()), !dbg !1000
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1001
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1001
  %6 = lshr i8 %1, 5, !dbg !1002
  %7 = zext i8 %6 to i64, !dbg !1002
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1003
  call void @llvm.dbg.value(metadata i32* %8, metadata !996, metadata !DIExpression()), !dbg !1000
  %9 = and i8 %1, 31, !dbg !1004
  %10 = zext i8 %9 to i32, !dbg !1004
  call void @llvm.dbg.value(metadata i32 %10, metadata !998, metadata !DIExpression()), !dbg !1000
  %11 = load i32, i32* %8, align 4, !dbg !1005, !tbaa !739
  %12 = lshr i32 %11, %10, !dbg !1006
  %13 = and i32 %12, 1, !dbg !1007
  call void @llvm.dbg.value(metadata i32 %13, metadata !999, metadata !DIExpression()), !dbg !1000
  %14 = and i32 %2, 1, !dbg !1008
  %15 = xor i32 %13, %14, !dbg !1009
  %16 = shl i32 %15, %10, !dbg !1010
  %17 = xor i32 %16, %11, !dbg !1011
  store i32 %17, i32* %8, align 4, !dbg !1011, !tbaa !739
  ret i32 %13, !dbg !1012
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #15 !dbg !1013 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1017, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata i32 %1, metadata !1018, metadata !DIExpression()), !dbg !1020
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1021
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1023
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1017, metadata !DIExpression()), !dbg !1020
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1024
  %6 = load i32, i32* %5, align 4, !dbg !1024, !tbaa !1025
  call void @llvm.dbg.value(metadata i32 %6, metadata !1019, metadata !DIExpression()), !dbg !1020
  store i32 %1, i32* %5, align 4, !dbg !1026, !tbaa !1025
  ret i32 %6, !dbg !1027
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1028 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1032, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8* %1, metadata !1033, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8* %2, metadata !1034, metadata !DIExpression()), !dbg !1035
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1036
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1038
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1032, metadata !DIExpression()), !dbg !1035
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1039
  store i32 10, i32* %6, align 8, !dbg !1040, !tbaa !973
  %7 = icmp ne i8* %1, null, !dbg !1041
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1043
  br i1 %9, label %11, label %10, !dbg !1043

10:                                               ; preds = %3
  tail call void @abort() #26, !dbg !1044
  unreachable, !dbg !1044

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1045
  store i8* %1, i8** %12, align 8, !dbg !1046, !tbaa !1047
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1048
  store i8* %2, i8** %13, align 8, !dbg !1049, !tbaa !1050
  ret void, !dbg !1051
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1052 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1056, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata i64 %1, metadata !1057, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata i8* %2, metadata !1058, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata i64 %3, metadata !1059, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1060, metadata !DIExpression()), !dbg !1064
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1065
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1065
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1061, metadata !DIExpression()), !dbg !1064
  %8 = tail call i32* @__errno_location() #28, !dbg !1066
  %9 = load i32, i32* %8, align 4, !dbg !1066, !tbaa !739
  call void @llvm.dbg.value(metadata i32 %9, metadata !1062, metadata !DIExpression()), !dbg !1064
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1067
  %11 = load i32, i32* %10, align 8, !dbg !1067, !tbaa !973
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1068
  %13 = load i32, i32* %12, align 4, !dbg !1068, !tbaa !1025
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1069
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1070
  %16 = load i8*, i8** %15, align 8, !dbg !1070, !tbaa !1047
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1071
  %18 = load i8*, i8** %17, align 8, !dbg !1071, !tbaa !1050
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1072
  call void @llvm.dbg.value(metadata i64 %19, metadata !1063, metadata !DIExpression()), !dbg !1064
  store i32 %9, i32* %8, align 4, !dbg !1073, !tbaa !739
  ret i64 %19, !dbg !1074
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1075 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1081, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %1, metadata !1082, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8* %2, metadata !1083, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %3, metadata !1084, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i32 %4, metadata !1085, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i32 %5, metadata !1086, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i32* %6, metadata !1087, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8* %7, metadata !1088, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8* %8, metadata !1089, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 0, metadata !1091, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 0, metadata !1092, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8* null, metadata !1093, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 0, metadata !1094, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 0, metadata !1095, metadata !DIExpression()), !dbg !1151
  %13 = tail call i64 @__ctype_get_mb_cur_max() #24, !dbg !1152
  %14 = icmp eq i64 %13, 1, !dbg !1153
  call void @llvm.dbg.value(metadata i1 %14, metadata !1096, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1151
  %15 = lshr i32 %5, 1, !dbg !1154
  %16 = trunc i32 %15 to i8, !dbg !1154
  %17 = and i8 %16, 1, !dbg !1154
  call void @llvm.dbg.value(metadata i8 %17, metadata !1097, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 0, metadata !1098, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 0, metadata !1099, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 1, metadata !1100, metadata !DIExpression()), !dbg !1151
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1155

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1156
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1157
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1158
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1159
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1151
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1160
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1161
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1162
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1082, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 %38, metadata !1100, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 %37, metadata !1099, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 %36, metadata !1098, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 %35, metadata !1097, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %34, metadata !1084, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 %33, metadata !1095, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %32, metadata !1094, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8* %31, metadata !1093, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %30, metadata !1092, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 0, metadata !1091, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8* %29, metadata !1089, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8* %28, metadata !1088, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i32 %27, metadata !1085, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.label(metadata !1145), !dbg !1163
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
  ], !dbg !1164

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1097, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i32 5, metadata !1085, metadata !DIExpression()), !dbg !1151
  br label %92, !dbg !1165

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1097, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i32 5, metadata !1085, metadata !DIExpression()), !dbg !1151
  %42 = and i8 %35, 1, !dbg !1167
  %43 = icmp eq i8 %42, 0, !dbg !1167
  br i1 %43, label %44, label %92, !dbg !1165

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1169
  br i1 %45, label %92, label %46, !dbg !1172

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1169, !tbaa !1173
  br label %92, !dbg !1169

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.58, i64 0, i64 0), i32 %27), !dbg !1174
  call void @llvm.dbg.value(metadata i8* %48, metadata !1088, metadata !DIExpression()), !dbg !1151
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), i32 %27), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %49, metadata !1089, metadata !DIExpression()), !dbg !1151
  br label %50, !dbg !1179

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1089, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8* %51, metadata !1088, metadata !DIExpression()), !dbg !1151
  %53 = and i8 %35, 1, !dbg !1180
  %54 = icmp eq i8 %53, 0, !dbg !1180
  br i1 %54, label %55, label %70, !dbg !1182

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1093, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 0, metadata !1091, metadata !DIExpression()), !dbg !1151
  %56 = load i8, i8* %51, align 1, !dbg !1183, !tbaa !1173
  %57 = icmp eq i8 %56, 0, !dbg !1186
  br i1 %57, label %70, label %58, !dbg !1186

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1093, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %61, metadata !1091, metadata !DIExpression()), !dbg !1151
  %62 = icmp ult i64 %61, %39, !dbg !1187
  br i1 %62, label %63, label %65, !dbg !1190

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1187
  store i8 %59, i8* %64, align 1, !dbg !1187, !tbaa !1173
  br label %65, !dbg !1187

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1190
  call void @llvm.dbg.value(metadata i64 %66, metadata !1091, metadata !DIExpression()), !dbg !1151
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1191
  call void @llvm.dbg.value(metadata i8* %67, metadata !1093, metadata !DIExpression()), !dbg !1151
  %68 = load i8, i8* %67, align 1, !dbg !1183, !tbaa !1173
  %69 = icmp eq i8 %68, 0, !dbg !1186
  br i1 %69, label %70, label %58, !dbg !1186, !llvm.loop !1192

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1194
  call void @llvm.dbg.value(metadata i64 %71, metadata !1091, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 1, metadata !1095, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8* %52, metadata !1093, metadata !DIExpression()), !dbg !1151
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #25, !dbg !1195
  call void @llvm.dbg.value(metadata i64 %72, metadata !1094, metadata !DIExpression()), !dbg !1151
  br label %92, !dbg !1196

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1095, metadata !DIExpression()), !dbg !1151
  br label %74, !dbg !1197

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1151
  call void @llvm.dbg.value(metadata i8 %75, metadata !1095, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 1, metadata !1097, metadata !DIExpression()), !dbg !1151
  br label %76, !dbg !1198

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1159
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1151
  call void @llvm.dbg.value(metadata i8 %78, metadata !1097, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 %77, metadata !1095, metadata !DIExpression()), !dbg !1151
  %79 = and i8 %78, 1, !dbg !1199
  %80 = icmp eq i8 %79, 0, !dbg !1199
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1201
  br label %82, !dbg !1201

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1151
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1154
  call void @llvm.dbg.value(metadata i8 %84, metadata !1097, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 %83, metadata !1095, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i32 2, metadata !1085, metadata !DIExpression()), !dbg !1151
  %85 = and i8 %84, 1, !dbg !1202
  %86 = icmp eq i8 %85, 0, !dbg !1202
  br i1 %86, label %87, label %92, !dbg !1204

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1205
  br i1 %88, label %92, label %89, !dbg !1208

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1205, !tbaa !1173
  br label %92, !dbg !1205

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1097, metadata !DIExpression()), !dbg !1151
  br label %92, !dbg !1209

91:                                               ; preds = %26
  call void @abort() #26, !dbg !1210
  unreachable, !dbg !1210

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1194
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %40 ], !dbg !1151
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1151
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1151
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1151
  call void @llvm.dbg.value(metadata i8 %100, metadata !1097, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 %99, metadata !1095, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %98, metadata !1094, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8* %97, metadata !1093, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %96, metadata !1091, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8* %95, metadata !1089, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8* %94, metadata !1088, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i32 %93, metadata !1085, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 0, metadata !1090, metadata !DIExpression()), !dbg !1151
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
  br label %121, !dbg !1211

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1212
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1194
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1156
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1160
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1161
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1162
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1082, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 %128, metadata !1100, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 %127, metadata !1099, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 %126, metadata !1098, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %125, metadata !1084, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %124, metadata !1092, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %123, metadata !1091, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %122, metadata !1090, metadata !DIExpression()), !dbg !1151
  %130 = icmp eq i64 %125, -1, !dbg !1213
  br i1 %130, label %131, label %135, !dbg !1214

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1215
  %133 = load i8, i8* %132, align 1, !dbg !1215, !tbaa !1173
  %134 = icmp eq i8 %133, 0, !dbg !1216
  br i1 %134, label %587, label %137, !dbg !1217

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1218
  br i1 %136, label %587, label %137, !dbg !1217

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1106, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8 0, metadata !1107, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8 0, metadata !1108, metadata !DIExpression()), !dbg !1219
  br i1 %106, label %138, label %153, !dbg !1220

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1222
  %140 = and i1 %107, %130, !dbg !1223
  br i1 %140, label %141, label %143, !dbg !1223

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #25, !dbg !1224
  call void @llvm.dbg.value(metadata i64 %142, metadata !1084, metadata !DIExpression()), !dbg !1151
  br label %143, !dbg !1225

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1225
  call void @llvm.dbg.value(metadata i64 %144, metadata !1084, metadata !DIExpression()), !dbg !1151
  %145 = icmp ugt i64 %139, %144, !dbg !1226
  br i1 %145, label %153, label %146, !dbg !1227

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1228
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1229
  %149 = icmp ne i32 %148, 0, !dbg !1230
  %150 = or i1 %149, %109, !dbg !1231
  %151 = xor i1 %149, true, !dbg !1231
  %152 = zext i1 %151 to i8, !dbg !1231
  br i1 %150, label %153, label %646, !dbg !1231

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1219
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1219
  call void @llvm.dbg.value(metadata i8 %156, metadata !1106, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i64 %154, metadata !1084, metadata !DIExpression()), !dbg !1151
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1232
  %158 = load i8, i8* %157, align 1, !dbg !1232, !tbaa !1173
  call void @llvm.dbg.value(metadata i8 %158, metadata !1101, metadata !DIExpression()), !dbg !1219
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
  ], !dbg !1233

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1234

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1235

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1107, metadata !DIExpression()), !dbg !1219
  %162 = and i8 %126, 1, !dbg !1239
  %163 = icmp eq i8 %162, 0, !dbg !1239
  %164 = and i1 %110, %163, !dbg !1239
  br i1 %164, label %165, label %181, !dbg !1239

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1241
  br i1 %166, label %167, label %169, !dbg !1245

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1241
  store i8 39, i8* %168, align 1, !dbg !1241, !tbaa !1173
  br label %169, !dbg !1241

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1245
  call void @llvm.dbg.value(metadata i64 %170, metadata !1091, metadata !DIExpression()), !dbg !1151
  %171 = icmp ult i64 %170, %129, !dbg !1246
  br i1 %171, label %172, label %174, !dbg !1249

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1246
  store i8 36, i8* %173, align 1, !dbg !1246, !tbaa !1173
  br label %174, !dbg !1246

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1249
  call void @llvm.dbg.value(metadata i64 %175, metadata !1091, metadata !DIExpression()), !dbg !1151
  %176 = icmp ult i64 %175, %129, !dbg !1250
  br i1 %176, label %177, label %179, !dbg !1253

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1250
  store i8 39, i8* %178, align 1, !dbg !1250, !tbaa !1173
  br label %179, !dbg !1250

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1253
  call void @llvm.dbg.value(metadata i64 %180, metadata !1091, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 1, metadata !1098, metadata !DIExpression()), !dbg !1151
  br label %181, !dbg !1254

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1151
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1151
  call void @llvm.dbg.value(metadata i8 %183, metadata !1098, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %182, metadata !1091, metadata !DIExpression()), !dbg !1151
  %184 = icmp ult i64 %182, %129, !dbg !1255
  br i1 %184, label %185, label %187, !dbg !1258

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1255
  store i8 92, i8* %186, align 1, !dbg !1255, !tbaa !1173
  br label %187, !dbg !1255

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1258
  call void @llvm.dbg.value(metadata i64 %188, metadata !1091, metadata !DIExpression()), !dbg !1151
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1259
  br i1 %191, label %192, label %473, !dbg !1259

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1261
  %194 = load i8, i8* %193, align 1, !dbg !1261, !tbaa !1173
  %195 = add i8 %194, -48, !dbg !1262
  %196 = icmp ult i8 %195, 10, !dbg !1262
  br i1 %196, label %197, label %473, !dbg !1262

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1263
  br i1 %198, label %199, label %201, !dbg !1267

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1263
  store i8 48, i8* %200, align 1, !dbg !1263, !tbaa !1173
  br label %201, !dbg !1263

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1267
  call void @llvm.dbg.value(metadata i64 %202, metadata !1091, metadata !DIExpression()), !dbg !1151
  %203 = icmp ult i64 %202, %129, !dbg !1268
  br i1 %203, label %204, label %206, !dbg !1271

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1268
  store i8 48, i8* %205, align 1, !dbg !1268, !tbaa !1173
  br label %206, !dbg !1268

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1271
  call void @llvm.dbg.value(metadata i64 %207, metadata !1091, metadata !DIExpression()), !dbg !1151
  br label %473, !dbg !1272

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1273

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1274

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1275

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1277
  br i1 %214, label %215, label %473, !dbg !1277

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1279
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1280
  %218 = load i8, i8* %217, align 1, !dbg !1280, !tbaa !1173
  %219 = icmp eq i8 %218, 63, !dbg !1281
  br i1 %219, label %220, label %473, !dbg !1282

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1283
  %222 = load i8, i8* %221, align 1, !dbg !1283, !tbaa !1173
  %223 = sext i8 %222 to i32, !dbg !1283
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
  ], !dbg !1284

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1285

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1101, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i64 undef, metadata !1090, metadata !DIExpression()), !dbg !1151
  %226 = icmp ult i64 %123, %129, !dbg !1287
  br i1 %226, label %227, label %229, !dbg !1290

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1287
  store i8 63, i8* %228, align 1, !dbg !1287, !tbaa !1173
  br label %229, !dbg !1287

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !1290
  call void @llvm.dbg.value(metadata i64 %230, metadata !1091, metadata !DIExpression()), !dbg !1151
  %231 = icmp ult i64 %230, %129, !dbg !1291
  br i1 %231, label %232, label %234, !dbg !1294

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1291
  store i8 34, i8* %233, align 1, !dbg !1291, !tbaa !1173
  br label %234, !dbg !1291

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !1294
  call void @llvm.dbg.value(metadata i64 %235, metadata !1091, metadata !DIExpression()), !dbg !1151
  %236 = icmp ult i64 %235, %129, !dbg !1295
  br i1 %236, label %237, label %239, !dbg !1298

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1295
  store i8 34, i8* %238, align 1, !dbg !1295, !tbaa !1173
  br label %239, !dbg !1295

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !1298
  call void @llvm.dbg.value(metadata i64 %240, metadata !1091, metadata !DIExpression()), !dbg !1151
  %241 = icmp ult i64 %240, %129, !dbg !1299
  br i1 %241, label %242, label %244, !dbg !1302

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1299
  store i8 63, i8* %243, align 1, !dbg !1299, !tbaa !1173
  br label %244, !dbg !1299

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !1302
  call void @llvm.dbg.value(metadata i64 %245, metadata !1091, metadata !DIExpression()), !dbg !1151
  br label %473, !dbg !1303

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1105, metadata !DIExpression()), !dbg !1219
  br label %256, !dbg !1304

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1105, metadata !DIExpression()), !dbg !1219
  br label %256, !dbg !1305

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1105, metadata !DIExpression()), !dbg !1219
  br label %254, !dbg !1306

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1105, metadata !DIExpression()), !dbg !1219
  br label %254, !dbg !1307

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1105, metadata !DIExpression()), !dbg !1219
  br label %256, !dbg !1308

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1105, metadata !DIExpression()), !dbg !1219
  br i1 %110, label %252, label %253, !dbg !1309

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !1310

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !1313

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !1315
  call void @llvm.dbg.value(metadata i8 %255, metadata !1105, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.label(metadata !1146), !dbg !1316
  br i1 %111, label %256, label %631, !dbg !1317

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !1315
  call void @llvm.dbg.value(metadata i8 %257, metadata !1105, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.label(metadata !1147), !dbg !1319
  br i1 %102, label %495, label %473, !dbg !1320

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1321

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1322, !tbaa !1173
  %261 = icmp eq i8 %260, 0, !dbg !1324
  br i1 %261, label %262, label %473, !dbg !1325

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !1326
  br i1 %263, label %264, label %473, !dbg !1328

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1108, metadata !DIExpression()), !dbg !1219
  br label %265, !dbg !1329

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1219
  call void @llvm.dbg.value(metadata i8 %266, metadata !1108, metadata !DIExpression()), !dbg !1219
  br i1 %111, label %473, label %631, !dbg !1330

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1099, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 1, metadata !1108, metadata !DIExpression()), !dbg !1219
  br i1 %110, label %268, label %473, !dbg !1332

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !1333

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !1336
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !1338
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !1338
  %274 = select i1 %272, i64 %129, i64 0, !dbg !1338
  call void @llvm.dbg.value(metadata i64 %274, metadata !1082, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %273, metadata !1092, metadata !DIExpression()), !dbg !1151
  %275 = icmp ult i64 %123, %274, !dbg !1339
  br i1 %275, label %276, label %278, !dbg !1342

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1339
  store i8 39, i8* %277, align 1, !dbg !1339, !tbaa !1173
  br label %278, !dbg !1339

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !1342
  call void @llvm.dbg.value(metadata i64 %279, metadata !1091, metadata !DIExpression()), !dbg !1151
  %280 = icmp ult i64 %279, %274, !dbg !1343
  br i1 %280, label %281, label %283, !dbg !1346

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1343
  store i8 92, i8* %282, align 1, !dbg !1343, !tbaa !1173
  br label %283, !dbg !1343

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !1346
  call void @llvm.dbg.value(metadata i64 %284, metadata !1091, metadata !DIExpression()), !dbg !1151
  %285 = icmp ult i64 %284, %274, !dbg !1347
  br i1 %285, label %286, label %288, !dbg !1350

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1347
  store i8 39, i8* %287, align 1, !dbg !1347, !tbaa !1173
  br label %288, !dbg !1347

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !1350
  call void @llvm.dbg.value(metadata i64 %289, metadata !1091, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 0, metadata !1098, metadata !DIExpression()), !dbg !1151
  br label %473, !dbg !1351

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !1352

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1109, metadata !DIExpression()), !dbg !1353
  %292 = tail call i16** @__ctype_b_loc() #28, !dbg !1354
  %293 = load i16*, i16** %292, align 8, !dbg !1354, !tbaa !595
  %294 = zext i8 %158 to i64, !dbg !1354
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1354
  %296 = load i16, i16* %295, align 2, !dbg !1354, !tbaa !1356
  %297 = lshr i16 %296, 14, !dbg !1358
  %298 = trunc i16 %297 to i8, !dbg !1358
  %299 = and i8 %298, 1, !dbg !1358
  call void @llvm.dbg.value(metadata i8 %354, metadata !1112, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata i64 %355, metadata !1109, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata i64 %306, metadata !1084, metadata !DIExpression()), !dbg !1151
  %300 = icmp eq i8 %299, 0, !dbg !1359
  call void @llvm.dbg.value(metadata i1 %357, metadata !1108, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1219
  br label %359, !dbg !1360

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #24, !dbg !1361
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1113, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i8* %23, metadata !1363, metadata !DIExpression()) #24, !dbg !1371
  call void @llvm.dbg.value(metadata i32 0, metadata !1369, metadata !DIExpression()) #24, !dbg !1371
  call void @llvm.dbg.value(metadata i64 8, metadata !1370, metadata !DIExpression()) #24, !dbg !1371
  store i64 0, i64* %10, align 8, !dbg !1373
  call void @llvm.dbg.value(metadata i64 0, metadata !1109, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata i8 1, metadata !1112, metadata !DIExpression()), !dbg !1353
  %302 = icmp eq i64 %154, -1, !dbg !1374
  br i1 %302, label %303, label %305, !dbg !1376

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #25, !dbg !1377
  call void @llvm.dbg.value(metadata i64 %304, metadata !1084, metadata !DIExpression()), !dbg !1151
  br label %305, !dbg !1378

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1219
  call void @llvm.dbg.value(metadata i64 %306, metadata !1084, metadata !DIExpression()), !dbg !1151
  br label %307, !dbg !1379

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !1380
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !1381
  call void @llvm.dbg.value(metadata i8 %309, metadata !1112, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata i64 %308, metadata !1109, metadata !DIExpression()), !dbg !1353
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1382
  %310 = add i64 %308, %122, !dbg !1383
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !1384
  %312 = sub i64 %306, %310, !dbg !1385
  call void @llvm.dbg.value(metadata i32* %12, metadata !1131, metadata !DIExpression(DW_OP_deref)), !dbg !1386
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #24, !dbg !1387
  call void @llvm.dbg.value(metadata i64 %313, metadata !1134, metadata !DIExpression()), !dbg !1386
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !1388

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1109, metadata !DIExpression()), !dbg !1353
  %315 = icmp ugt i64 %306, %310, !dbg !1389
  br i1 %315, label %316, label %341, !dbg !1391

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !1392
  br label %318, !dbg !1392

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1109, metadata !DIExpression()), !dbg !1353
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !1393
  %322 = load i8, i8* %321, align 1, !dbg !1393, !tbaa !1173
  %323 = icmp eq i8 %322, 0, !dbg !1391
  br i1 %323, label %341, label %324, !dbg !1392

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !1394
  call void @llvm.dbg.value(metadata i64 %325, metadata !1109, metadata !DIExpression()), !dbg !1353
  %326 = add i64 %325, %122, !dbg !1395
  %327 = icmp ult i64 %326, %306, !dbg !1389
  br i1 %327, label %318, label %341, !dbg !1391, !llvm.loop !1396

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !1397
  call void @llvm.dbg.value(metadata i64 1, metadata !1135, metadata !DIExpression()), !dbg !1398
  br i1 %330, label %331, label %344, !dbg !1397

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1135, metadata !DIExpression()), !dbg !1398
  %333 = add i64 %332, %310, !dbg !1399
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !1402
  %335 = load i8, i8* %334, align 1, !dbg !1402, !tbaa !1173
  %336 = sext i8 %335 to i32, !dbg !1402
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !1403

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !1404
  call void @llvm.dbg.value(metadata i64 %338, metadata !1135, metadata !DIExpression()), !dbg !1398
  %339 = icmp eq i64 %338, %313, !dbg !1405
  br i1 %339, label %344, label %331, !dbg !1406, !llvm.loop !1407

340:                                              ; preds = %307
  br label %341, !dbg !1409

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1112, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata i64 undef, metadata !1109, metadata !DIExpression()), !dbg !1353
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1409
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !1410, !tbaa !739
  call void @llvm.dbg.value(metadata i32 %345, metadata !1131, metadata !DIExpression()), !dbg !1386
  %346 = call i32 @iswprint(i32 %345) #24, !dbg !1412
  %347 = icmp eq i32 %346, 0, !dbg !1412
  %348 = select i1 %347, i8 0, i8 %309, !dbg !1413
  call void @llvm.dbg.value(metadata i8 %348, metadata !1112, metadata !DIExpression()), !dbg !1353
  %349 = add i64 %313, %308, !dbg !1414
  call void @llvm.dbg.value(metadata i64 %349, metadata !1109, metadata !DIExpression()), !dbg !1353
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1409
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #25, !dbg !1415
  %351 = icmp eq i32 %350, 0, !dbg !1416
  br i1 %351, label %307, label %353, !dbg !1417, !llvm.loop !1418

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1112, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata i64 undef, metadata !1109, metadata !DIExpression()), !dbg !1353
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1409
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #24, !dbg !1420
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #24, !dbg !1420
  call void @llvm.dbg.value(metadata i8 %354, metadata !1112, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata i64 %355, metadata !1109, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata i64 %306, metadata !1084, metadata !DIExpression()), !dbg !1151
  %356 = and i8 %354, 1, !dbg !1359
  %357 = icmp eq i8 %356, 0, !dbg !1359
  call void @llvm.dbg.value(metadata i1 %357, metadata !1108, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1219
  %358 = icmp ugt i64 %355, 1, !dbg !1421
  br i1 %358, label %367, label %359, !dbg !1360

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !1422
  br i1 %364, label %367, label %365, !dbg !1422

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1219
  call void @llvm.dbg.value(metadata i8 %472, metadata !1108, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8 %441, metadata !1107, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8 %440, metadata !1106, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8 %439, metadata !1101, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8 %438, metadata !1098, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %371, metadata !1084, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %437, metadata !1091, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %375, metadata !1090, metadata !DIExpression()), !dbg !1151
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !1423
  call void @llvm.dbg.value(metadata i64 %372, metadata !1142, metadata !DIExpression()), !dbg !1424
  %373 = and i1 %102, %368
  br label %374, !dbg !1425

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1212
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1151
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1160
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1219
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1219
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !1426
  call void @llvm.dbg.value(metadata i8 %380, metadata !1107, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8 %379, metadata !1106, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8 %378, metadata !1101, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8 %377, metadata !1098, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %376, metadata !1091, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %375, metadata !1090, metadata !DIExpression()), !dbg !1151
  br i1 %373, label %381, label %427, !dbg !1427

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !1432

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1107, metadata !DIExpression()), !dbg !1219
  %383 = and i8 %377, 1, !dbg !1435
  %384 = icmp eq i8 %383, 0, !dbg !1435
  %385 = and i1 %110, %384, !dbg !1435
  br i1 %385, label %386, label %402, !dbg !1435

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !1437
  br i1 %387, label %388, label %390, !dbg !1441

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1437
  store i8 39, i8* %389, align 1, !dbg !1437, !tbaa !1173
  br label %390, !dbg !1437

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !1441
  call void @llvm.dbg.value(metadata i64 %391, metadata !1091, metadata !DIExpression()), !dbg !1151
  %392 = icmp ult i64 %391, %129, !dbg !1442
  br i1 %392, label %393, label %395, !dbg !1445

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !1442
  store i8 36, i8* %394, align 1, !dbg !1442, !tbaa !1173
  br label %395, !dbg !1442

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !1445
  call void @llvm.dbg.value(metadata i64 %396, metadata !1091, metadata !DIExpression()), !dbg !1151
  %397 = icmp ult i64 %396, %129, !dbg !1446
  br i1 %397, label %398, label %400, !dbg !1449

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1446
  store i8 39, i8* %399, align 1, !dbg !1446, !tbaa !1173
  br label %400, !dbg !1446

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !1449
  call void @llvm.dbg.value(metadata i64 %401, metadata !1091, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 1, metadata !1098, metadata !DIExpression()), !dbg !1151
  br label %402, !dbg !1450

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1151
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1151
  call void @llvm.dbg.value(metadata i8 %404, metadata !1098, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %403, metadata !1091, metadata !DIExpression()), !dbg !1151
  %405 = icmp ult i64 %403, %129, !dbg !1451
  br i1 %405, label %406, label %408, !dbg !1454

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1451
  store i8 92, i8* %407, align 1, !dbg !1451, !tbaa !1173
  br label %408, !dbg !1451

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !1454
  call void @llvm.dbg.value(metadata i64 %409, metadata !1091, metadata !DIExpression()), !dbg !1151
  %410 = icmp ult i64 %409, %129, !dbg !1455
  br i1 %410, label %411, label %415, !dbg !1458

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !1455
  %413 = or i8 %412, 48, !dbg !1455
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !1455
  store i8 %413, i8* %414, align 1, !dbg !1455, !tbaa !1173
  br label %415, !dbg !1455

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !1458
  call void @llvm.dbg.value(metadata i64 %416, metadata !1091, metadata !DIExpression()), !dbg !1151
  %417 = icmp ult i64 %416, %129, !dbg !1459
  br i1 %417, label %418, label %423, !dbg !1462

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !1459
  %420 = and i8 %419, 7, !dbg !1459
  %421 = or i8 %420, 48, !dbg !1459
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !1459
  store i8 %421, i8* %422, align 1, !dbg !1459, !tbaa !1173
  br label %423, !dbg !1459

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !1462
  call void @llvm.dbg.value(metadata i64 %424, metadata !1091, metadata !DIExpression()), !dbg !1151
  %425 = and i8 %378, 7, !dbg !1463
  %426 = or i8 %425, 48, !dbg !1464
  call void @llvm.dbg.value(metadata i8 %426, metadata !1101, metadata !DIExpression()), !dbg !1219
  br label %436, !dbg !1465

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !1466
  %429 = icmp eq i8 %428, 0, !dbg !1466
  br i1 %429, label %436, label %430, !dbg !1468

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !1469
  br i1 %431, label %432, label %434, !dbg !1473

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1469
  store i8 92, i8* %433, align 1, !dbg !1469, !tbaa !1173
  br label %434, !dbg !1469

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !1473
  call void @llvm.dbg.value(metadata i64 %435, metadata !1091, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 0, metadata !1106, metadata !DIExpression()), !dbg !1219
  br label %436, !dbg !1474

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1151
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1160
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1219
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1219
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1219
  call void @llvm.dbg.value(metadata i8 %441, metadata !1107, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8 %440, metadata !1106, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8 %439, metadata !1101, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8 %438, metadata !1098, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %437, metadata !1091, metadata !DIExpression()), !dbg !1151
  %442 = add i64 %375, 1, !dbg !1475
  %443 = icmp ugt i64 %372, %442, !dbg !1477
  br i1 %443, label %444, label %471, !dbg !1478

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !1479
  %446 = icmp ne i8 %445, 0, !dbg !1479
  %447 = and i8 %441, 1, !dbg !1479
  %448 = icmp eq i8 %447, 0, !dbg !1479
  %449 = and i1 %446, %448, !dbg !1479
  br i1 %449, label %450, label %461, !dbg !1479

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !1482
  br i1 %451, label %452, label %454, !dbg !1486

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !1482
  store i8 39, i8* %453, align 1, !dbg !1482, !tbaa !1173
  br label %454, !dbg !1482

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !1486
  call void @llvm.dbg.value(metadata i64 %455, metadata !1091, metadata !DIExpression()), !dbg !1151
  %456 = icmp ult i64 %455, %129, !dbg !1487
  br i1 %456, label %457, label %459, !dbg !1490

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !1487
  store i8 39, i8* %458, align 1, !dbg !1487, !tbaa !1173
  br label %459, !dbg !1487

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !1490
  call void @llvm.dbg.value(metadata i64 %460, metadata !1091, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 0, metadata !1098, metadata !DIExpression()), !dbg !1151
  br label %461, !dbg !1491

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !1492
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1151
  call void @llvm.dbg.value(metadata i8 %463, metadata !1098, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %462, metadata !1091, metadata !DIExpression()), !dbg !1151
  %464 = icmp ult i64 %462, %129, !dbg !1493
  br i1 %464, label %465, label %467, !dbg !1496

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !1493
  store i8 %439, i8* %466, align 1, !dbg !1493, !tbaa !1173
  br label %467, !dbg !1493

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !1496
  call void @llvm.dbg.value(metadata i64 %468, metadata !1091, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %442, metadata !1090, metadata !DIExpression()), !dbg !1151
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !1497
  %470 = load i8, i8* %469, align 1, !dbg !1497, !tbaa !1173
  call void @llvm.dbg.value(metadata i8 %470, metadata !1101, metadata !DIExpression()), !dbg !1219
  br label %374, !dbg !1498, !llvm.loop !1499

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1219
  call void @llvm.dbg.value(metadata i8 %472, metadata !1108, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8 %441, metadata !1107, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8 %440, metadata !1106, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8 %439, metadata !1101, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8 %438, metadata !1098, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %371, metadata !1084, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %437, metadata !1091, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %375, metadata !1090, metadata !DIExpression()), !dbg !1151
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1212
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1151
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1156
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !1502
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1151
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1151
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1219
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1219
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1219
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1082, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 %482, metadata !1108, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8 %481, metadata !1107, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8 %156, metadata !1106, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8 %480, metadata !1101, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8 %479, metadata !1099, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 %478, metadata !1098, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %477, metadata !1084, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %476, metadata !1092, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %475, metadata !1091, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %474, metadata !1090, metadata !DIExpression()), !dbg !1151
  br i1 %116, label %494, label %484, !dbg !1503

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !1505
  %486 = zext i8 %485 to i64, !dbg !1505
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !1506
  %488 = load i32, i32* %487, align 4, !dbg !1506, !tbaa !739
  %489 = and i8 %480, 31, !dbg !1507
  %490 = zext i8 %489 to i32, !dbg !1507
  %491 = shl nuw i32 1, %490, !dbg !1508
  %492 = and i32 %488, %491, !dbg !1508
  %493 = icmp eq i32 %492, 0, !dbg !1508
  br i1 %493, label %494, label %495, !dbg !1509

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !1510

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !1511
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1151
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1156
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !1502
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1160
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1161
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1219
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1219
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1082, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 %503, metadata !1108, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8 %502, metadata !1101, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8 %501, metadata !1099, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 %500, metadata !1098, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %499, metadata !1084, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %498, metadata !1092, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %497, metadata !1091, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %496, metadata !1090, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.label(metadata !1148), !dbg !1512
  br i1 %109, label %505, label %635, !dbg !1513

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1107, metadata !DIExpression()), !dbg !1219
  %506 = and i8 %500, 1, !dbg !1515
  %507 = icmp eq i8 %506, 0, !dbg !1515
  %508 = and i1 %110, %507, !dbg !1515
  br i1 %508, label %509, label %525, !dbg !1515

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !1517
  br i1 %510, label %511, label %513, !dbg !1521

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !1517
  store i8 39, i8* %512, align 1, !dbg !1517, !tbaa !1173
  br label %513, !dbg !1517

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !1521
  call void @llvm.dbg.value(metadata i64 %514, metadata !1091, metadata !DIExpression()), !dbg !1151
  %515 = icmp ult i64 %514, %504, !dbg !1522
  br i1 %515, label %516, label %518, !dbg !1525

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !1522
  store i8 36, i8* %517, align 1, !dbg !1522, !tbaa !1173
  br label %518, !dbg !1522

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !1525
  call void @llvm.dbg.value(metadata i64 %519, metadata !1091, metadata !DIExpression()), !dbg !1151
  %520 = icmp ult i64 %519, %504, !dbg !1526
  br i1 %520, label %521, label %523, !dbg !1529

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1526
  store i8 39, i8* %522, align 1, !dbg !1526, !tbaa !1173
  br label %523, !dbg !1526

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !1529
  call void @llvm.dbg.value(metadata i64 %524, metadata !1091, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 1, metadata !1098, metadata !DIExpression()), !dbg !1151
  br label %525, !dbg !1530

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1219
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1151
  call void @llvm.dbg.value(metadata i8 %527, metadata !1098, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %526, metadata !1091, metadata !DIExpression()), !dbg !1151
  %528 = icmp ult i64 %526, %504, !dbg !1531
  br i1 %528, label %529, label %531, !dbg !1534

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1531
  store i8 92, i8* %530, align 1, !dbg !1531, !tbaa !1173
  br label %531, !dbg !1531

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !1534
  call void @llvm.dbg.value(metadata i64 %543, metadata !1082, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 %542, metadata !1108, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8 %541, metadata !1107, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8 %540, metadata !1101, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8 %539, metadata !1099, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 %538, metadata !1098, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %537, metadata !1084, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %536, metadata !1092, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %535, metadata !1091, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %534, metadata !1090, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.label(metadata !1149), !dbg !1535
  br label %560, !dbg !1536

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !1511
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1151
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1156
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !1502
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1160
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1161
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !1539
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1219
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1219
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1082, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 %542, metadata !1108, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8 %541, metadata !1107, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8 %540, metadata !1101, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8 %539, metadata !1099, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 %538, metadata !1098, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %537, metadata !1084, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %536, metadata !1092, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %535, metadata !1091, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %534, metadata !1090, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.label(metadata !1149), !dbg !1535
  %544 = and i8 %538, 1, !dbg !1536
  %545 = icmp ne i8 %544, 0, !dbg !1536
  %546 = and i8 %541, 1, !dbg !1536
  %547 = icmp eq i8 %546, 0, !dbg !1536
  %548 = and i1 %545, %547, !dbg !1536
  br i1 %548, label %549, label %560, !dbg !1536

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !1540
  br i1 %550, label %551, label %553, !dbg !1544

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !1540
  store i8 39, i8* %552, align 1, !dbg !1540, !tbaa !1173
  br label %553, !dbg !1540

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !1544
  call void @llvm.dbg.value(metadata i64 %554, metadata !1091, metadata !DIExpression()), !dbg !1151
  %555 = icmp ult i64 %554, %543, !dbg !1545
  br i1 %555, label %556, label %558, !dbg !1548

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !1545
  store i8 39, i8* %557, align 1, !dbg !1545, !tbaa !1173
  br label %558, !dbg !1545

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !1548
  call void @llvm.dbg.value(metadata i64 %559, metadata !1091, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 0, metadata !1098, metadata !DIExpression()), !dbg !1151
  br label %560, !dbg !1549

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1219
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1151
  call void @llvm.dbg.value(metadata i8 %569, metadata !1098, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %568, metadata !1091, metadata !DIExpression()), !dbg !1151
  %570 = icmp ult i64 %568, %561, !dbg !1550
  br i1 %570, label %571, label %573, !dbg !1553

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !1550
  store i8 %563, i8* %572, align 1, !dbg !1550, !tbaa !1173
  br label %573, !dbg !1550

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !1553
  call void @llvm.dbg.value(metadata i64 %574, metadata !1091, metadata !DIExpression()), !dbg !1151
  %575 = icmp eq i8 %562, 0, !dbg !1554
  %576 = select i1 %575, i8 0, i8 %128, !dbg !1556
  call void @llvm.dbg.value(metadata i8 %576, metadata !1100, metadata !DIExpression()), !dbg !1151
  br label %577, !dbg !1557

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !1511
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1151
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1156
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !1502
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1160
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1151
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1162
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1082, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 %584, metadata !1100, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 %583, metadata !1099, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 %582, metadata !1098, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %581, metadata !1084, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %580, metadata !1092, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %579, metadata !1091, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %578, metadata !1090, metadata !DIExpression()), !dbg !1151
  %586 = add i64 %578, 1, !dbg !1558
  call void @llvm.dbg.value(metadata i64 %586, metadata !1090, metadata !DIExpression()), !dbg !1151
  br label %121, !dbg !1559, !llvm.loop !1560

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !1562
  %590 = and i1 %110, %589, !dbg !1564
  %591 = xor i1 %590, true, !dbg !1564
  %592 = or i1 %109, %591, !dbg !1564
  br i1 %592, label %593, label %635, !dbg !1564

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !1565
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !1565
  br i1 %597, label %598, label %607, !dbg !1565

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !1567
  %600 = icmp eq i8 %599, 0, !dbg !1567
  br i1 %600, label %603, label %601, !dbg !1570

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !1571
  br label %652, !dbg !1572

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !1573
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !1575
  br i1 %606, label %26, label %607, !dbg !1575

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !1576
  %610 = and i1 %609, %608, !dbg !1578
  br i1 %610, label %611, label %626, !dbg !1578

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1093, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %123, metadata !1091, metadata !DIExpression()), !dbg !1151
  %612 = load i8, i8* %97, align 1, !dbg !1579, !tbaa !1173
  %613 = icmp eq i8 %612, 0, !dbg !1582
  br i1 %613, label %626, label %614, !dbg !1582

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1093, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %617, metadata !1091, metadata !DIExpression()), !dbg !1151
  %618 = icmp ult i64 %617, %129, !dbg !1583
  br i1 %618, label %619, label %621, !dbg !1586

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !1583
  store i8 %615, i8* %620, align 1, !dbg !1583, !tbaa !1173
  br label %621, !dbg !1583

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !1586
  call void @llvm.dbg.value(metadata i64 %622, metadata !1091, metadata !DIExpression()), !dbg !1151
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !1587
  call void @llvm.dbg.value(metadata i8* %623, metadata !1093, metadata !DIExpression()), !dbg !1151
  %624 = load i8, i8* %623, align 1, !dbg !1579, !tbaa !1173
  %625 = icmp eq i8 %624, 0, !dbg !1582
  br i1 %625, label %626, label %614, !dbg !1582, !llvm.loop !1588

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1194
  call void @llvm.dbg.value(metadata i64 %627, metadata !1091, metadata !DIExpression()), !dbg !1151
  %628 = icmp ult i64 %627, %129, !dbg !1590
  br i1 %628, label %629, label %652, !dbg !1592

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !1593
  store i8 0, i8* %630, align 1, !dbg !1594, !tbaa !1173
  br label %652, !dbg !1593

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1082, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %637, metadata !1084, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.label(metadata !1150), !dbg !1595
  %633 = icmp eq i8 %101, 0, !dbg !1596
  %634 = select i1 %633, i32 2, i32 4, !dbg !1596
  br label %642, !dbg !1596

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1082, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %637, metadata !1084, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.label(metadata !1150), !dbg !1595
  %639 = icmp eq i32 %93, 2, !dbg !1598
  %640 = icmp eq i8 %636, 0, !dbg !1596
  %641 = select i1 %640, i32 2, i32 4, !dbg !1596
  br i1 %639, label %642, label %646, !dbg !1596

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !1596

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1085, metadata !DIExpression()), !dbg !1151
  %650 = and i32 %5, -3, !dbg !1599
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !1600
  br label %652, !dbg !1601

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !1602
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !1603 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1607, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i32 %1, metadata !1608, metadata !DIExpression()), !dbg !1611
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #24, !dbg !1612
  call void @llvm.dbg.value(metadata i8* %3, metadata !1609, metadata !DIExpression()), !dbg !1611
  %4 = icmp eq i8* %3, %0, !dbg !1613
  br i1 %4, label %5, label %72, !dbg !1615

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #24, !dbg !1616
  call void @llvm.dbg.value(metadata i8* %6, metadata !1610, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8* %6, metadata !1617, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata i8* undef, metadata !1623, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata i8 85, metadata !1624, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata i8 84, metadata !1625, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata i8 70, metadata !1626, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata i8 45, metadata !1627, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata i8 56, metadata !1628, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata i8 0, metadata !1629, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata i8 0, metadata !1630, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata i8 0, metadata !1631, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata i8 0, metadata !1632, metadata !DIExpression()), !dbg !1633
  %7 = load i8, i8* %6, align 1, !dbg !1636, !tbaa !1173
  %8 = and i8 %7, -33, !dbg !1636
  %9 = sext i8 %8 to i32, !dbg !1636
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !1636

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1638, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i8* undef, metadata !1643, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i8 84, metadata !1644, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i8 70, metadata !1645, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i8 45, metadata !1646, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i8 56, metadata !1647, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i8 0, metadata !1648, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i8 0, metadata !1649, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i8 0, metadata !1650, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i8 0, metadata !1651, metadata !DIExpression()), !dbg !1652
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1656
  %12 = load i8, i8* %11, align 1, !dbg !1656, !tbaa !1173
  %13 = and i8 %12, -33, !dbg !1656
  %14 = icmp eq i8 %13, 84, !dbg !1656
  br i1 %14, label %15, label %69, !dbg !1656

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !1658, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i8* undef, metadata !1663, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i8 70, metadata !1664, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i8 45, metadata !1665, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i8 56, metadata !1666, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i8 0, metadata !1667, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i8 0, metadata !1668, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i8 0, metadata !1669, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i8 0, metadata !1670, metadata !DIExpression()), !dbg !1671
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1675
  %17 = load i8, i8* %16, align 1, !dbg !1675, !tbaa !1173
  %18 = and i8 %17, -33, !dbg !1675
  %19 = icmp eq i8 %18, 70, !dbg !1675
  br i1 %19, label %20, label %69, !dbg !1675

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !1677, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8* undef, metadata !1682, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8 45, metadata !1683, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8 56, metadata !1684, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8 0, metadata !1685, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8 0, metadata !1686, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8 0, metadata !1687, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8 0, metadata !1688, metadata !DIExpression()), !dbg !1689
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1693
  %22 = load i8, i8* %21, align 1, !dbg !1693, !tbaa !1173
  %23 = icmp eq i8 %22, 45, !dbg !1693
  br i1 %23, label %24, label %69, !dbg !1695

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !1696, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8* undef, metadata !1701, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 56, metadata !1702, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 0, metadata !1703, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 0, metadata !1704, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 0, metadata !1705, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 0, metadata !1706, metadata !DIExpression()), !dbg !1707
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1711
  %26 = load i8, i8* %25, align 1, !dbg !1711, !tbaa !1173
  %27 = icmp eq i8 %26, 56, !dbg !1711
  br i1 %27, label %28, label %69, !dbg !1713

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !1714, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i8* undef, metadata !1719, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i8 0, metadata !1720, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i8 0, metadata !1721, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i8 0, metadata !1722, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i8 0, metadata !1723, metadata !DIExpression()), !dbg !1724
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1728
  %30 = load i8, i8* %29, align 1, !dbg !1728, !tbaa !1173
  %31 = icmp eq i8 %30, 0, !dbg !1728
  br i1 %31, label %32, label %69, !dbg !1730

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !1731, !tbaa !1173
  %34 = icmp eq i8 %33, 96, !dbg !1732
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.61, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.62, i64 0, i64 0), !dbg !1731
  br label %72, !dbg !1733

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1638, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8* undef, metadata !1643, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 66, metadata !1644, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 49, metadata !1645, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 56, metadata !1646, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 48, metadata !1647, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 51, metadata !1648, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 48, metadata !1649, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 0, metadata !1650, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 0, metadata !1651, metadata !DIExpression()), !dbg !1734
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1738
  %38 = load i8, i8* %37, align 1, !dbg !1738, !tbaa !1173
  %39 = and i8 %38, -33, !dbg !1738
  %40 = icmp eq i8 %39, 66, !dbg !1738
  br i1 %40, label %41, label %69, !dbg !1738

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !1658, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8* undef, metadata !1663, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8 49, metadata !1664, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8 56, metadata !1665, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8 48, metadata !1666, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8 51, metadata !1667, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8 48, metadata !1668, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8 0, metadata !1669, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8 0, metadata !1670, metadata !DIExpression()), !dbg !1739
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1741
  %43 = load i8, i8* %42, align 1, !dbg !1741, !tbaa !1173
  %44 = icmp eq i8 %43, 49, !dbg !1741
  br i1 %44, label %45, label %69, !dbg !1742

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !1677, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8* undef, metadata !1682, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 56, metadata !1683, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 48, metadata !1684, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 51, metadata !1685, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 48, metadata !1686, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 0, metadata !1687, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 0, metadata !1688, metadata !DIExpression()), !dbg !1743
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1745
  %47 = load i8, i8* %46, align 1, !dbg !1745, !tbaa !1173
  %48 = icmp eq i8 %47, 56, !dbg !1745
  br i1 %48, label %49, label %69, !dbg !1746

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* undef, metadata !1701, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 48, metadata !1702, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 51, metadata !1703, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 48, metadata !1704, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 0, metadata !1705, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 0, metadata !1706, metadata !DIExpression()), !dbg !1747
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1749
  %51 = load i8, i8* %50, align 1, !dbg !1749, !tbaa !1173
  %52 = icmp eq i8 %51, 48, !dbg !1749
  br i1 %52, label %53, label %69, !dbg !1750

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !1714, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8* undef, metadata !1719, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 51, metadata !1720, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 48, metadata !1721, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 0, metadata !1722, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 0, metadata !1723, metadata !DIExpression()), !dbg !1751
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1753
  %55 = load i8, i8* %54, align 1, !dbg !1753, !tbaa !1173
  %56 = icmp eq i8 %55, 51, !dbg !1753
  br i1 %56, label %57, label %69, !dbg !1754

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !1755, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i8* undef, metadata !1760, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i8 48, metadata !1761, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i8 0, metadata !1762, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i8 0, metadata !1763, metadata !DIExpression()), !dbg !1764
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1768
  %59 = load i8, i8* %58, align 1, !dbg !1768, !tbaa !1173
  %60 = icmp eq i8 %59, 48, !dbg !1768
  br i1 %60, label %61, label %69, !dbg !1770

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !1771, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8* undef, metadata !1776, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8 0, metadata !1777, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8 0, metadata !1778, metadata !DIExpression()), !dbg !1779
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1783
  %63 = load i8, i8* %62, align 1, !dbg !1783, !tbaa !1173
  %64 = icmp eq i8 %63, 0, !dbg !1783
  br i1 %64, label %65, label %69, !dbg !1785

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !1786, !tbaa !1173
  %67 = icmp eq i8 %66, 96, !dbg !1787
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.63, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.64, i64 0, i64 0), !dbg !1786
  br label %72, !dbg !1788

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !1789
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), !dbg !1790
  br label %72, !dbg !1791

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !1611
  ret i8* %73, !dbg !1792
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #16

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !1793 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !1797 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !1803 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1807, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %1, metadata !1808, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1809, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8* %0, metadata !1811, metadata !DIExpression()) #24, !dbg !1824
  call void @llvm.dbg.value(metadata i64 %1, metadata !1816, metadata !DIExpression()) #24, !dbg !1824
  call void @llvm.dbg.value(metadata i64* null, metadata !1817, metadata !DIExpression()) #24, !dbg !1824
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1818, metadata !DIExpression()) #24, !dbg !1824
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1826
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1826
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1819, metadata !DIExpression()) #24, !dbg !1824
  %6 = tail call i32* @__errno_location() #28, !dbg !1827
  %7 = load i32, i32* %6, align 4, !dbg !1827, !tbaa !739
  call void @llvm.dbg.value(metadata i32 %7, metadata !1820, metadata !DIExpression()) #24, !dbg !1824
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1828
  %9 = load i32, i32* %8, align 4, !dbg !1828, !tbaa !1025
  %10 = or i32 %9, 1, !dbg !1829
  call void @llvm.dbg.value(metadata i32 %10, metadata !1821, metadata !DIExpression()) #24, !dbg !1824
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1830
  %12 = load i32, i32* %11, align 8, !dbg !1830, !tbaa !973
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1831
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1832
  %15 = load i8*, i8** %14, align 8, !dbg !1832, !tbaa !1047
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1833
  %17 = load i8*, i8** %16, align 8, !dbg !1833, !tbaa !1050
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #24, !dbg !1834
  %19 = add i64 %18, 1, !dbg !1835
  call void @llvm.dbg.value(metadata i64 %19, metadata !1822, metadata !DIExpression()) #24, !dbg !1824
  call void @llvm.dbg.value(metadata i64 %19, metadata !1836, metadata !DIExpression()) #24, !dbg !1841
  %20 = tail call noalias i8* @xmalloc(i64 %19) #24, !dbg !1843
  call void @llvm.dbg.value(metadata i8* %20, metadata !1823, metadata !DIExpression()) #24, !dbg !1824
  %21 = load i32, i32* %11, align 8, !dbg !1844, !tbaa !973
  %22 = load i8*, i8** %14, align 8, !dbg !1845, !tbaa !1047
  %23 = load i8*, i8** %16, align 8, !dbg !1846, !tbaa !1050
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #24, !dbg !1847
  store i32 %7, i32* %6, align 4, !dbg !1848, !tbaa !739
  ret i8* %20, !dbg !1849
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !1812 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1811, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i64 %1, metadata !1816, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i64* %2, metadata !1817, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1818, metadata !DIExpression()), !dbg !1850
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1851
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1851
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1819, metadata !DIExpression()), !dbg !1850
  %7 = tail call i32* @__errno_location() #28, !dbg !1852
  %8 = load i32, i32* %7, align 4, !dbg !1852, !tbaa !739
  call void @llvm.dbg.value(metadata i32 %8, metadata !1820, metadata !DIExpression()), !dbg !1850
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1853
  %10 = load i32, i32* %9, align 4, !dbg !1853, !tbaa !1025
  %11 = icmp eq i64* %2, null, !dbg !1854
  %12 = zext i1 %11 to i32, !dbg !1854
  %13 = or i32 %10, %12, !dbg !1855
  call void @llvm.dbg.value(metadata i32 %13, metadata !1821, metadata !DIExpression()), !dbg !1850
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1856
  %15 = load i32, i32* %14, align 8, !dbg !1856, !tbaa !973
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1857
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1858
  %18 = load i8*, i8** %17, align 8, !dbg !1858, !tbaa !1047
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1859
  %20 = load i8*, i8** %19, align 8, !dbg !1859, !tbaa !1050
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !1860
  %22 = add i64 %21, 1, !dbg !1861
  call void @llvm.dbg.value(metadata i64 %22, metadata !1822, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i64 %22, metadata !1836, metadata !DIExpression()) #24, !dbg !1862
  %23 = tail call noalias i8* @xmalloc(i64 %22) #24, !dbg !1864
  call void @llvm.dbg.value(metadata i8* %23, metadata !1823, metadata !DIExpression()), !dbg !1850
  %24 = load i32, i32* %14, align 8, !dbg !1865, !tbaa !973
  %25 = load i8*, i8** %17, align 8, !dbg !1866, !tbaa !1047
  %26 = load i8*, i8** %19, align 8, !dbg !1867, !tbaa !1050
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !1868
  store i32 %8, i32* %7, align 4, !dbg !1869, !tbaa !739
  br i1 %11, label %29, label %28, !dbg !1870

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !1871, !tbaa !1873
  br label %29, !dbg !1875

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !1876
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !1877 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1881, !tbaa !595
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !1879, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i32 1, metadata !1880, metadata !DIExpression()), !dbg !1882
  %2 = load i32, i32* @nslots, align 4, !dbg !1883, !tbaa !739
  %3 = icmp sgt i32 %2, 1, !dbg !1886
  br i1 %3, label %4, label %12, !dbg !1887

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !1886
  br label %6, !dbg !1887

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !1880, metadata !DIExpression()), !dbg !1882
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !1888
  %9 = load i8*, i8** %8, align 8, !dbg !1888, !tbaa !1889
  tail call void @free(i8* %9) #24, !dbg !1891
  %10 = add nuw nsw i64 %7, 1, !dbg !1892
  call void @llvm.dbg.value(metadata i64 %10, metadata !1880, metadata !DIExpression()), !dbg !1882
  %11 = icmp eq i64 %10, %5, !dbg !1886
  br i1 %11, label %12, label %6, !dbg !1887, !llvm.loop !1893

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1895
  %14 = load i8*, i8** %13, align 8, !dbg !1895, !tbaa !1889
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1897
  br i1 %15, label %17, label %16, !dbg !1898

16:                                               ; preds = %12
  tail call void @free(i8* %14) #24, !dbg !1899
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1901, !tbaa !1902
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1903, !tbaa !1889
  br label %17, !dbg !1904

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1905
  br i1 %18, label %21, label %19, !dbg !1907

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !1908
  tail call void @free(i8* %20) #24, !dbg !1910
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1911, !tbaa !595
  br label %21, !dbg !1912

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !1913, !tbaa !739
  ret void, !dbg !1914
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !1915 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1917, metadata !DIExpression()), !dbg !1919
  call void @llvm.dbg.value(metadata i8* %1, metadata !1918, metadata !DIExpression()), !dbg !1919
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1920
  ret i8* %3, !dbg !1921
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !1922 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1926, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8* %1, metadata !1927, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %2, metadata !1928, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1929, metadata !DIExpression()), !dbg !1941
  %5 = tail call i32* @__errno_location() #28, !dbg !1942
  %6 = load i32, i32* %5, align 4, !dbg !1942, !tbaa !739
  call void @llvm.dbg.value(metadata i32 %6, metadata !1930, metadata !DIExpression()), !dbg !1941
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1943, !tbaa !595
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !1931, metadata !DIExpression()), !dbg !1941
  %8 = icmp slt i32 %0, 0, !dbg !1944
  br i1 %8, label %9, label %10, !dbg !1946

9:                                                ; preds = %4
  tail call void @abort() #26, !dbg !1947
  unreachable, !dbg !1947

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !1948, !tbaa !739
  %12 = icmp sgt i32 %11, %0, !dbg !1949
  br i1 %12, label %34, label %13, !dbg !1950

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !1951
  call void @llvm.dbg.value(metadata i1 %14, metadata !1932, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1952
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !1935, metadata !DIExpression()), !dbg !1952
  %15 = icmp eq i32 %0, 2147483647, !dbg !1953
  br i1 %15, label %16, label %17, !dbg !1955

16:                                               ; preds = %13
  tail call void @xalloc_die() #26, !dbg !1956
  unreachable, !dbg !1956

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !1957
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !1957
  %20 = add nuw nsw i32 %0, 1, !dbg !1958
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !1959
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #24, !dbg !1960
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !1960
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !1931, metadata !DIExpression()), !dbg !1941
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !1961, !tbaa !595
  br i1 %14, label %25, label %26, !dbg !1962

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !1963, !tbaa.struct !1965
  br label %26, !dbg !1966

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !1967, !tbaa !739
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !1968
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !1969
  %31 = sub nsw i32 %20, %27, !dbg !1970
  %32 = sext i32 %31 to i64, !dbg !1971
  %33 = shl nsw i64 %32, 4, !dbg !1972
  call void @llvm.dbg.value(metadata i8* %30, metadata !1363, metadata !DIExpression()) #24, !dbg !1973
  call void @llvm.dbg.value(metadata i32 0, metadata !1369, metadata !DIExpression()) #24, !dbg !1973
  call void @llvm.dbg.value(metadata i64 %33, metadata !1370, metadata !DIExpression()) #24, !dbg !1973
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #24, !dbg !1975
  store i32 %20, i32* @nslots, align 4, !dbg !1976, !tbaa !739
  br label %34, !dbg !1977

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !1941
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !1931, metadata !DIExpression()), !dbg !1941
  %36 = zext i32 %0 to i64, !dbg !1978
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !1979
  %38 = load i64, i64* %37, align 8, !dbg !1979, !tbaa !1902
  call void @llvm.dbg.value(metadata i64 %38, metadata !1936, metadata !DIExpression()), !dbg !1980
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !1981
  %40 = load i8*, i8** %39, align 8, !dbg !1981, !tbaa !1889
  call void @llvm.dbg.value(metadata i8* %40, metadata !1938, metadata !DIExpression()), !dbg !1980
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !1982
  %42 = load i32, i32* %41, align 4, !dbg !1982, !tbaa !1025
  %43 = or i32 %42, 1, !dbg !1983
  call void @llvm.dbg.value(metadata i32 %43, metadata !1939, metadata !DIExpression()), !dbg !1980
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1984
  %45 = load i32, i32* %44, align 8, !dbg !1984, !tbaa !973
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !1985
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !1986
  %48 = load i8*, i8** %47, align 8, !dbg !1986, !tbaa !1047
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !1987
  %50 = load i8*, i8** %49, align 8, !dbg !1987, !tbaa !1050
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !1988
  call void @llvm.dbg.value(metadata i64 %51, metadata !1940, metadata !DIExpression()), !dbg !1980
  %52 = icmp ugt i64 %38, %51, !dbg !1989
  br i1 %52, label %63, label %53, !dbg !1991

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !1992
  call void @llvm.dbg.value(metadata i64 %54, metadata !1936, metadata !DIExpression()), !dbg !1980
  store i64 %54, i64* %37, align 8, !dbg !1994, !tbaa !1902
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1995
  br i1 %55, label %57, label %56, !dbg !1997

56:                                               ; preds = %53
  tail call void @free(i8* %40) #24, !dbg !1998
  br label %57, !dbg !1998

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !1836, metadata !DIExpression()) #24, !dbg !1999
  %58 = tail call noalias i8* @xmalloc(i64 %54) #24, !dbg !2001
  call void @llvm.dbg.value(metadata i8* %58, metadata !1938, metadata !DIExpression()), !dbg !1980
  store i8* %58, i8** %39, align 8, !dbg !2002, !tbaa !1889
  %59 = load i32, i32* %44, align 8, !dbg !2003, !tbaa !973
  %60 = load i8*, i8** %47, align 8, !dbg !2004, !tbaa !1047
  %61 = load i8*, i8** %49, align 8, !dbg !2005, !tbaa !1050
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2006
  br label %63, !dbg !2007

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !1980
  call void @llvm.dbg.value(metadata i8* %64, metadata !1938, metadata !DIExpression()), !dbg !1980
  store i32 %6, i32* %5, align 4, !dbg !2008, !tbaa !739
  ret i8* %64, !dbg !2009
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2010 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2014, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i8* %1, metadata !2015, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i64 %2, metadata !2016, metadata !DIExpression()), !dbg !2017
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2018
  ret i8* %4, !dbg !2019
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2020 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2022, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i32 0, metadata !1917, metadata !DIExpression()) #24, !dbg !2024
  call void @llvm.dbg.value(metadata i8* %0, metadata !1918, metadata !DIExpression()) #24, !dbg !2024
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #24, !dbg !2026
  ret i8* %2, !dbg !2027
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2028 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2032, metadata !DIExpression()), !dbg !2034
  call void @llvm.dbg.value(metadata i64 %1, metadata !2033, metadata !DIExpression()), !dbg !2034
  call void @llvm.dbg.value(metadata i32 0, metadata !2014, metadata !DIExpression()) #24, !dbg !2035
  call void @llvm.dbg.value(metadata i8* %0, metadata !2015, metadata !DIExpression()) #24, !dbg !2035
  call void @llvm.dbg.value(metadata i64 %1, metadata !2016, metadata !DIExpression()) #24, !dbg !2035
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #24, !dbg !2037
  ret i8* %3, !dbg !2038
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2039 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2043, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata i32 %1, metadata !2044, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata i8* %2, metadata !2045, metadata !DIExpression()), !dbg !2047
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2048
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2048
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2046, metadata !DIExpression()), !dbg !2049
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2050), !dbg !2053
  call void @llvm.dbg.value(metadata i32 %1, metadata !2054, metadata !DIExpression()) #24, !dbg !2060
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2059, metadata !DIExpression()) #24, !dbg !2062
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #24, !dbg !2062, !alias.scope !2050
  %6 = icmp eq i32 %1, 10, !dbg !2063
  br i1 %6, label %7, label %8, !dbg !2065

7:                                                ; preds = %3
  tail call void @abort() #26, !dbg !2066, !noalias !2050
  unreachable, !dbg !2066

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2067
  store i32 %1, i32* %9, align 8, !dbg !2068, !tbaa !973, !alias.scope !2050
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2069
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2070
  ret i8* %10, !dbg !2071
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2072 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2076, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i32 %1, metadata !2077, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %2, metadata !2078, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i64 %3, metadata !2079, metadata !DIExpression()), !dbg !2081
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2082
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2082
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2080, metadata !DIExpression()), !dbg !2083
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2084), !dbg !2087
  call void @llvm.dbg.value(metadata i32 %1, metadata !2054, metadata !DIExpression()) #24, !dbg !2088
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2059, metadata !DIExpression()) #24, !dbg !2090
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #24, !dbg !2090, !alias.scope !2084
  %7 = icmp eq i32 %1, 10, !dbg !2091
  br i1 %7, label %8, label %9, !dbg !2092

8:                                                ; preds = %4
  tail call void @abort() #26, !dbg !2093, !noalias !2084
  unreachable, !dbg !2093

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2094
  store i32 %1, i32* %10, align 8, !dbg !2095, !tbaa !973, !alias.scope !2084
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2096
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2097
  ret i8* %11, !dbg !2098
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2099 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2103, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %1, metadata !2104, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i32 0, metadata !2043, metadata !DIExpression()) #24, !dbg !2106
  call void @llvm.dbg.value(metadata i32 %0, metadata !2044, metadata !DIExpression()) #24, !dbg !2106
  call void @llvm.dbg.value(metadata i8* %1, metadata !2045, metadata !DIExpression()) #24, !dbg !2106
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2108
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2108
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2046, metadata !DIExpression()) #24, !dbg !2109
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2110) #24, !dbg !2113
  call void @llvm.dbg.value(metadata i32 %0, metadata !2054, metadata !DIExpression()) #24, !dbg !2114
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2059, metadata !DIExpression()) #24, !dbg !2116
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #24, !dbg !2116, !alias.scope !2110
  %5 = icmp eq i32 %0, 10, !dbg !2117
  br i1 %5, label %6, label %7, !dbg !2118

6:                                                ; preds = %2
  tail call void @abort() #26, !dbg !2119, !noalias !2110
  unreachable, !dbg !2119

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2120
  store i32 %0, i32* %8, align 8, !dbg !2121, !tbaa !973, !alias.scope !2110
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #24, !dbg !2122
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2123
  ret i8* %9, !dbg !2124
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2125 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2129, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i8* %1, metadata !2130, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i64 %2, metadata !2131, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i32 0, metadata !2076, metadata !DIExpression()) #24, !dbg !2133
  call void @llvm.dbg.value(metadata i32 %0, metadata !2077, metadata !DIExpression()) #24, !dbg !2133
  call void @llvm.dbg.value(metadata i8* %1, metadata !2078, metadata !DIExpression()) #24, !dbg !2133
  call void @llvm.dbg.value(metadata i64 %2, metadata !2079, metadata !DIExpression()) #24, !dbg !2133
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2135
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2135
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2080, metadata !DIExpression()) #24, !dbg !2136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2137) #24, !dbg !2140
  call void @llvm.dbg.value(metadata i32 %0, metadata !2054, metadata !DIExpression()) #24, !dbg !2141
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2059, metadata !DIExpression()) #24, !dbg !2143
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #24, !dbg !2143, !alias.scope !2137
  %6 = icmp eq i32 %0, 10, !dbg !2144
  br i1 %6, label %7, label %8, !dbg !2145

7:                                                ; preds = %3
  tail call void @abort() #26, !dbg !2146, !noalias !2137
  unreachable, !dbg !2146

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2147
  store i32 %0, i32* %9, align 8, !dbg !2148, !tbaa !973, !alias.scope !2137
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #24, !dbg !2149
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2150
  ret i8* %10, !dbg !2151
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2152 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2156, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i64 %1, metadata !2157, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i8 %2, metadata !2158, metadata !DIExpression()), !dbg !2160
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2161
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2161
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2159, metadata !DIExpression()), !dbg !2162
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2163, !tbaa.struct !2164
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !991, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i8 %2, metadata !992, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i32 1, metadata !993, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i8 %2, metadata !994, metadata !DIExpression()), !dbg !2165
  %6 = lshr i8 %2, 5, !dbg !2167
  %7 = zext i8 %6 to i64, !dbg !2167
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2168
  call void @llvm.dbg.value(metadata i32* %8, metadata !996, metadata !DIExpression()), !dbg !2165
  %9 = and i8 %2, 31, !dbg !2169
  %10 = zext i8 %9 to i32, !dbg !2169
  call void @llvm.dbg.value(metadata i32 %10, metadata !998, metadata !DIExpression()), !dbg !2165
  %11 = load i32, i32* %8, align 4, !dbg !2170, !tbaa !739
  %12 = lshr i32 %11, %10, !dbg !2171
  %13 = and i32 %12, 1, !dbg !2172
  call void @llvm.dbg.value(metadata i32 %13, metadata !999, metadata !DIExpression()), !dbg !2165
  %14 = xor i32 %13, 1, !dbg !2173
  %15 = shl i32 %14, %10, !dbg !2174
  %16 = xor i32 %15, %11, !dbg !2175
  store i32 %16, i32* %8, align 4, !dbg !2175, !tbaa !739
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2176
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2177
  ret i8* %17, !dbg !2178
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2179 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2183, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i8 %1, metadata !2184, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i8* %0, metadata !2156, metadata !DIExpression()) #24, !dbg !2186
  call void @llvm.dbg.value(metadata i64 -1, metadata !2157, metadata !DIExpression()) #24, !dbg !2186
  call void @llvm.dbg.value(metadata i8 %1, metadata !2158, metadata !DIExpression()) #24, !dbg !2186
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2188
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2188
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2159, metadata !DIExpression()) #24, !dbg !2189
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #24, !dbg !2190, !tbaa.struct !2164
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !991, metadata !DIExpression()) #24, !dbg !2191
  call void @llvm.dbg.value(metadata i8 %1, metadata !992, metadata !DIExpression()) #24, !dbg !2191
  call void @llvm.dbg.value(metadata i32 1, metadata !993, metadata !DIExpression()) #24, !dbg !2191
  call void @llvm.dbg.value(metadata i8 %1, metadata !994, metadata !DIExpression()) #24, !dbg !2191
  %5 = lshr i8 %1, 5, !dbg !2193
  %6 = zext i8 %5 to i64, !dbg !2193
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2194
  call void @llvm.dbg.value(metadata i32* %7, metadata !996, metadata !DIExpression()) #24, !dbg !2191
  %8 = and i8 %1, 31, !dbg !2195
  %9 = zext i8 %8 to i32, !dbg !2195
  call void @llvm.dbg.value(metadata i32 %9, metadata !998, metadata !DIExpression()) #24, !dbg !2191
  %10 = load i32, i32* %7, align 4, !dbg !2196, !tbaa !739
  %11 = lshr i32 %10, %9, !dbg !2197
  %12 = and i32 %11, 1, !dbg !2198
  call void @llvm.dbg.value(metadata i32 %12, metadata !999, metadata !DIExpression()) #24, !dbg !2191
  %13 = xor i32 %12, 1, !dbg !2199
  %14 = shl i32 %13, %9, !dbg !2200
  %15 = xor i32 %14, %10, !dbg !2201
  store i32 %15, i32* %7, align 4, !dbg !2201, !tbaa !739
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #24, !dbg !2202
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2203
  ret i8* %16, !dbg !2204
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2205 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2207, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata i8* %0, metadata !2183, metadata !DIExpression()) #24, !dbg !2209
  call void @llvm.dbg.value(metadata i8 58, metadata !2184, metadata !DIExpression()) #24, !dbg !2209
  call void @llvm.dbg.value(metadata i8* %0, metadata !2156, metadata !DIExpression()) #24, !dbg !2211
  call void @llvm.dbg.value(metadata i64 -1, metadata !2157, metadata !DIExpression()) #24, !dbg !2211
  call void @llvm.dbg.value(metadata i8 58, metadata !2158, metadata !DIExpression()) #24, !dbg !2211
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2213
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #24, !dbg !2213
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2159, metadata !DIExpression()) #24, !dbg !2214
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #24, !dbg !2215, !tbaa.struct !2164
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !991, metadata !DIExpression()) #24, !dbg !2216
  call void @llvm.dbg.value(metadata i8 58, metadata !992, metadata !DIExpression()) #24, !dbg !2216
  call void @llvm.dbg.value(metadata i32 1, metadata !993, metadata !DIExpression()) #24, !dbg !2216
  call void @llvm.dbg.value(metadata i8 58, metadata !994, metadata !DIExpression()) #24, !dbg !2216
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2218
  call void @llvm.dbg.value(metadata i32* %4, metadata !996, metadata !DIExpression()) #24, !dbg !2216
  call void @llvm.dbg.value(metadata i32 26, metadata !998, metadata !DIExpression()) #24, !dbg !2216
  %5 = load i32, i32* %4, align 4, !dbg !2219, !tbaa !739
  call void @llvm.dbg.value(metadata i32 %5, metadata !999, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #24, !dbg !2216
  %6 = or i32 %5, 67108864, !dbg !2220
  store i32 %6, i32* %4, align 4, !dbg !2220, !tbaa !739
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #24, !dbg !2221
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #24, !dbg !2222
  ret i8* %7, !dbg !2223
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2224 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2226, metadata !DIExpression()), !dbg !2228
  call void @llvm.dbg.value(metadata i64 %1, metadata !2227, metadata !DIExpression()), !dbg !2228
  call void @llvm.dbg.value(metadata i8* %0, metadata !2156, metadata !DIExpression()) #24, !dbg !2229
  call void @llvm.dbg.value(metadata i64 %1, metadata !2157, metadata !DIExpression()) #24, !dbg !2229
  call void @llvm.dbg.value(metadata i8 58, metadata !2158, metadata !DIExpression()) #24, !dbg !2229
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2231
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2231
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2159, metadata !DIExpression()) #24, !dbg !2232
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #24, !dbg !2233, !tbaa.struct !2164
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !991, metadata !DIExpression()) #24, !dbg !2234
  call void @llvm.dbg.value(metadata i8 58, metadata !992, metadata !DIExpression()) #24, !dbg !2234
  call void @llvm.dbg.value(metadata i32 1, metadata !993, metadata !DIExpression()) #24, !dbg !2234
  call void @llvm.dbg.value(metadata i8 58, metadata !994, metadata !DIExpression()) #24, !dbg !2234
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2236
  call void @llvm.dbg.value(metadata i32* %5, metadata !996, metadata !DIExpression()) #24, !dbg !2234
  call void @llvm.dbg.value(metadata i32 26, metadata !998, metadata !DIExpression()) #24, !dbg !2234
  %6 = load i32, i32* %5, align 4, !dbg !2237, !tbaa !739
  call void @llvm.dbg.value(metadata i32 %6, metadata !999, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #24, !dbg !2234
  %7 = or i32 %6, 67108864, !dbg !2238
  store i32 %7, i32* %5, align 4, !dbg !2238, !tbaa !739
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #24, !dbg !2239
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2240
  ret i8* %8, !dbg !2241
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2242 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2059, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2248
  call void @llvm.dbg.value(metadata i32 %0, metadata !2244, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i32 %1, metadata !2245, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i8* %2, metadata !2246, metadata !DIExpression()), !dbg !2250
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2251
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2251
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2247, metadata !DIExpression()), !dbg !2252
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2253
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2253
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2254), !dbg !2253
  call void @llvm.dbg.value(metadata i32 %1, metadata !2054, metadata !DIExpression()) #24, !dbg !2257
  call void @llvm.dbg.value(metadata i32 0, metadata !2059, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2257
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2248, !alias.scope !2254
  %8 = icmp eq i32 %1, 10, !dbg !2258
  br i1 %8, label %9, label %10, !dbg !2259

9:                                                ; preds = %3
  tail call void @abort() #26, !dbg !2260, !noalias !2254
  unreachable, !dbg !2260

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2059, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2257
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2253
  store i32 %1, i32* %11, align 8, !dbg !2253, !tbaa.struct !2164
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2253
  %13 = bitcast i32* %12 to i8*, !dbg !2253
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2253, !tbaa.struct !2261
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2253
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !991, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata i8 58, metadata !992, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata i32 1, metadata !993, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata i8 58, metadata !994, metadata !DIExpression()), !dbg !2262
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2264
  call void @llvm.dbg.value(metadata i32* %14, metadata !996, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata i32 26, metadata !998, metadata !DIExpression()), !dbg !2262
  %15 = load i32, i32* %14, align 4, !dbg !2265, !tbaa !739
  call void @llvm.dbg.value(metadata i32 %15, metadata !999, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2262
  %16 = or i32 %15, 67108864, !dbg !2266
  store i32 %16, i32* %14, align 4, !dbg !2266, !tbaa !739
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2267
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2268
  ret i8* %17, !dbg !2269
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2270 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2274, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i8* %1, metadata !2275, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i8* %2, metadata !2276, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i8* %3, metadata !2277, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i32 %0, metadata !2279, metadata !DIExpression()) #24, !dbg !2289
  call void @llvm.dbg.value(metadata i8* %1, metadata !2284, metadata !DIExpression()) #24, !dbg !2289
  call void @llvm.dbg.value(metadata i8* %2, metadata !2285, metadata !DIExpression()) #24, !dbg !2289
  call void @llvm.dbg.value(metadata i8* %3, metadata !2286, metadata !DIExpression()) #24, !dbg !2289
  call void @llvm.dbg.value(metadata i64 -1, metadata !2287, metadata !DIExpression()) #24, !dbg !2289
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2291
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2291
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2288, metadata !DIExpression()) #24, !dbg !2292
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #24, !dbg !2293, !tbaa.struct !2164
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1032, metadata !DIExpression()) #24, !dbg !2294
  call void @llvm.dbg.value(metadata i8* %1, metadata !1033, metadata !DIExpression()) #24, !dbg !2294
  call void @llvm.dbg.value(metadata i8* %2, metadata !1034, metadata !DIExpression()) #24, !dbg !2294
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1032, metadata !DIExpression()) #24, !dbg !2294
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2296
  store i32 10, i32* %7, align 8, !dbg !2297, !tbaa !973
  %8 = icmp ne i8* %1, null, !dbg !2298
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2299
  br i1 %10, label %12, label %11, !dbg !2299

11:                                               ; preds = %4
  tail call void @abort() #26, !dbg !2300
  unreachable, !dbg !2300

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2301
  store i8* %1, i8** %13, align 8, !dbg !2302, !tbaa !1047
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2303
  store i8* %2, i8** %14, align 8, !dbg !2304, !tbaa !1050
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #24, !dbg !2305
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2306
  ret i8* %15, !dbg !2307
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2280 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2279, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8* %1, metadata !2284, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8* %2, metadata !2285, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8* %3, metadata !2286, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i64 %4, metadata !2287, metadata !DIExpression()), !dbg !2308
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2309
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #24, !dbg !2309
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2288, metadata !DIExpression()), !dbg !2310
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2311, !tbaa.struct !2164
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1032, metadata !DIExpression()) #24, !dbg !2312
  call void @llvm.dbg.value(metadata i8* %1, metadata !1033, metadata !DIExpression()) #24, !dbg !2312
  call void @llvm.dbg.value(metadata i8* %2, metadata !1034, metadata !DIExpression()) #24, !dbg !2312
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1032, metadata !DIExpression()) #24, !dbg !2312
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2314
  store i32 10, i32* %8, align 8, !dbg !2315, !tbaa !973
  %9 = icmp ne i8* %1, null, !dbg !2316
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2317
  br i1 %11, label %13, label %12, !dbg !2317

12:                                               ; preds = %5
  tail call void @abort() #26, !dbg !2318
  unreachable, !dbg !2318

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2319
  store i8* %1, i8** %14, align 8, !dbg !2320, !tbaa !1047
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2321
  store i8* %2, i8** %15, align 8, !dbg !2322, !tbaa !1050
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2323
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #24, !dbg !2324
  ret i8* %16, !dbg !2325
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2326 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2330, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata i8* %1, metadata !2331, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata i8* %2, metadata !2332, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata i32 0, metadata !2274, metadata !DIExpression()) #24, !dbg !2334
  call void @llvm.dbg.value(metadata i8* %0, metadata !2275, metadata !DIExpression()) #24, !dbg !2334
  call void @llvm.dbg.value(metadata i8* %1, metadata !2276, metadata !DIExpression()) #24, !dbg !2334
  call void @llvm.dbg.value(metadata i8* %2, metadata !2277, metadata !DIExpression()) #24, !dbg !2334
  call void @llvm.dbg.value(metadata i32 0, metadata !2279, metadata !DIExpression()) #24, !dbg !2336
  call void @llvm.dbg.value(metadata i8* %0, metadata !2284, metadata !DIExpression()) #24, !dbg !2336
  call void @llvm.dbg.value(metadata i8* %1, metadata !2285, metadata !DIExpression()) #24, !dbg !2336
  call void @llvm.dbg.value(metadata i8* %2, metadata !2286, metadata !DIExpression()) #24, !dbg !2336
  call void @llvm.dbg.value(metadata i64 -1, metadata !2287, metadata !DIExpression()) #24, !dbg !2336
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2338
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2338
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2288, metadata !DIExpression()) #24, !dbg !2339
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #24, !dbg !2340, !tbaa.struct !2164
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1032, metadata !DIExpression()) #24, !dbg !2341
  call void @llvm.dbg.value(metadata i8* %0, metadata !1033, metadata !DIExpression()) #24, !dbg !2341
  call void @llvm.dbg.value(metadata i8* %1, metadata !1034, metadata !DIExpression()) #24, !dbg !2341
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1032, metadata !DIExpression()) #24, !dbg !2341
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2343
  store i32 10, i32* %6, align 8, !dbg !2344, !tbaa !973
  %7 = icmp ne i8* %0, null, !dbg !2345
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2346
  br i1 %9, label %11, label %10, !dbg !2346

10:                                               ; preds = %3
  tail call void @abort() #26, !dbg !2347
  unreachable, !dbg !2347

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2348
  store i8* %0, i8** %12, align 8, !dbg !2349, !tbaa !1047
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2350
  store i8* %1, i8** %13, align 8, !dbg !2351, !tbaa !1050
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #24, !dbg !2352
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2353
  ret i8* %14, !dbg !2354
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2355 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2359, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8* %1, metadata !2360, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8* %2, metadata !2361, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i64 %3, metadata !2362, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i32 0, metadata !2279, metadata !DIExpression()) #24, !dbg !2364
  call void @llvm.dbg.value(metadata i8* %0, metadata !2284, metadata !DIExpression()) #24, !dbg !2364
  call void @llvm.dbg.value(metadata i8* %1, metadata !2285, metadata !DIExpression()) #24, !dbg !2364
  call void @llvm.dbg.value(metadata i8* %2, metadata !2286, metadata !DIExpression()) #24, !dbg !2364
  call void @llvm.dbg.value(metadata i64 %3, metadata !2287, metadata !DIExpression()) #24, !dbg !2364
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2366
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2366
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2288, metadata !DIExpression()) #24, !dbg !2367
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #24, !dbg !2368, !tbaa.struct !2164
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1032, metadata !DIExpression()) #24, !dbg !2369
  call void @llvm.dbg.value(metadata i8* %0, metadata !1033, metadata !DIExpression()) #24, !dbg !2369
  call void @llvm.dbg.value(metadata i8* %1, metadata !1034, metadata !DIExpression()) #24, !dbg !2369
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1032, metadata !DIExpression()) #24, !dbg !2369
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2371
  store i32 10, i32* %7, align 8, !dbg !2372, !tbaa !973
  %8 = icmp ne i8* %0, null, !dbg !2373
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2374
  br i1 %10, label %12, label %11, !dbg !2374

11:                                               ; preds = %4
  tail call void @abort() #26, !dbg !2375
  unreachable, !dbg !2375

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2376
  store i8* %0, i8** %13, align 8, !dbg !2377, !tbaa !1047
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2378
  store i8* %1, i8** %14, align 8, !dbg !2379, !tbaa !1050
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #24, !dbg !2380
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2381
  ret i8* %15, !dbg !2382
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2383 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2387, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8* %1, metadata !2388, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i64 %2, metadata !2389, metadata !DIExpression()), !dbg !2390
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2391
  ret i8* %4, !dbg !2392
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2393 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2397, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i64 %1, metadata !2398, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i32 0, metadata !2387, metadata !DIExpression()) #24, !dbg !2400
  call void @llvm.dbg.value(metadata i8* %0, metadata !2388, metadata !DIExpression()) #24, !dbg !2400
  call void @llvm.dbg.value(metadata i64 %1, metadata !2389, metadata !DIExpression()) #24, !dbg !2400
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #24, !dbg !2402
  ret i8* %3, !dbg !2403
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2404 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2408, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i8* %1, metadata !2409, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i32 %0, metadata !2387, metadata !DIExpression()) #24, !dbg !2411
  call void @llvm.dbg.value(metadata i8* %1, metadata !2388, metadata !DIExpression()) #24, !dbg !2411
  call void @llvm.dbg.value(metadata i64 -1, metadata !2389, metadata !DIExpression()) #24, !dbg !2411
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #24, !dbg !2413
  ret i8* %3, !dbg !2414
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2415 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2419, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i32 0, metadata !2408, metadata !DIExpression()) #24, !dbg !2421
  call void @llvm.dbg.value(metadata i8* %0, metadata !2409, metadata !DIExpression()) #24, !dbg !2421
  call void @llvm.dbg.value(metadata i32 0, metadata !2387, metadata !DIExpression()) #24, !dbg !2423
  call void @llvm.dbg.value(metadata i8* %0, metadata !2388, metadata !DIExpression()) #24, !dbg !2423
  call void @llvm.dbg.value(metadata i64 -1, metadata !2389, metadata !DIExpression()) #24, !dbg !2423
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #24, !dbg !2425
  ret i8* %2, !dbg !2426
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2427 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2467, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i8* %1, metadata !2468, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i8* %2, metadata !2469, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i8* %3, metadata !2470, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i8** %4, metadata !2471, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i64 %5, metadata !2472, metadata !DIExpression()), !dbg !2473
  %7 = icmp eq i8* %1, null, !dbg !2474
  br i1 %7, label %10, label %8, !dbg !2476

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.69, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #24, !dbg !2477
  br label %12, !dbg !2477

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.70, i64 0, i64 0), i8* %2, i8* %3) #24, !dbg !2478
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.71, i64 0, i64 0), i32 5) #24, !dbg !2479
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #24, !dbg !2479
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.72, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2480
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.73, i64 0, i64 0), i32 5) #24, !dbg !2481
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.74, i64 0, i64 0)) #24, !dbg !2481
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.72, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2482
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
  ], !dbg !2483

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.75, i64 0, i64 0), i32 5) #24, !dbg !2484
  %21 = load i8*, i8** %4, align 8, !dbg !2484, !tbaa !595
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #24, !dbg !2484
  br label %147, !dbg !2486

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.76, i64 0, i64 0), i32 5) #24, !dbg !2487
  %25 = load i8*, i8** %4, align 8, !dbg !2487, !tbaa !595
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2487
  %27 = load i8*, i8** %26, align 8, !dbg !2487, !tbaa !595
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #24, !dbg !2487
  br label %147, !dbg !2488

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.77, i64 0, i64 0), i32 5) #24, !dbg !2489
  %31 = load i8*, i8** %4, align 8, !dbg !2489, !tbaa !595
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2489
  %33 = load i8*, i8** %32, align 8, !dbg !2489, !tbaa !595
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2489
  %35 = load i8*, i8** %34, align 8, !dbg !2489, !tbaa !595
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #24, !dbg !2489
  br label %147, !dbg !2490

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.78, i64 0, i64 0), i32 5) #24, !dbg !2491
  %39 = load i8*, i8** %4, align 8, !dbg !2491, !tbaa !595
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2491
  %41 = load i8*, i8** %40, align 8, !dbg !2491, !tbaa !595
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2491
  %43 = load i8*, i8** %42, align 8, !dbg !2491, !tbaa !595
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2491
  %45 = load i8*, i8** %44, align 8, !dbg !2491, !tbaa !595
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #24, !dbg !2491
  br label %147, !dbg !2492

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.79, i64 0, i64 0), i32 5) #24, !dbg !2493
  %49 = load i8*, i8** %4, align 8, !dbg !2493, !tbaa !595
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2493
  %51 = load i8*, i8** %50, align 8, !dbg !2493, !tbaa !595
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2493
  %53 = load i8*, i8** %52, align 8, !dbg !2493, !tbaa !595
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2493
  %55 = load i8*, i8** %54, align 8, !dbg !2493, !tbaa !595
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2493
  %57 = load i8*, i8** %56, align 8, !dbg !2493, !tbaa !595
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #24, !dbg !2493
  br label %147, !dbg !2494

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.80, i64 0, i64 0), i32 5) #24, !dbg !2495
  %61 = load i8*, i8** %4, align 8, !dbg !2495, !tbaa !595
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2495
  %63 = load i8*, i8** %62, align 8, !dbg !2495, !tbaa !595
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2495
  %65 = load i8*, i8** %64, align 8, !dbg !2495, !tbaa !595
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2495
  %67 = load i8*, i8** %66, align 8, !dbg !2495, !tbaa !595
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2495
  %69 = load i8*, i8** %68, align 8, !dbg !2495, !tbaa !595
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2495
  %71 = load i8*, i8** %70, align 8, !dbg !2495, !tbaa !595
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #24, !dbg !2495
  br label %147, !dbg !2496

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.81, i64 0, i64 0), i32 5) #24, !dbg !2497
  %75 = load i8*, i8** %4, align 8, !dbg !2497, !tbaa !595
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2497
  %77 = load i8*, i8** %76, align 8, !dbg !2497, !tbaa !595
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2497
  %79 = load i8*, i8** %78, align 8, !dbg !2497, !tbaa !595
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2497
  %81 = load i8*, i8** %80, align 8, !dbg !2497, !tbaa !595
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2497
  %83 = load i8*, i8** %82, align 8, !dbg !2497, !tbaa !595
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2497
  %85 = load i8*, i8** %84, align 8, !dbg !2497, !tbaa !595
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2497
  %87 = load i8*, i8** %86, align 8, !dbg !2497, !tbaa !595
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #24, !dbg !2497
  br label %147, !dbg !2498

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.82, i64 0, i64 0), i32 5) #24, !dbg !2499
  %91 = load i8*, i8** %4, align 8, !dbg !2499, !tbaa !595
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2499
  %93 = load i8*, i8** %92, align 8, !dbg !2499, !tbaa !595
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2499
  %95 = load i8*, i8** %94, align 8, !dbg !2499, !tbaa !595
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2499
  %97 = load i8*, i8** %96, align 8, !dbg !2499, !tbaa !595
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2499
  %99 = load i8*, i8** %98, align 8, !dbg !2499, !tbaa !595
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2499
  %101 = load i8*, i8** %100, align 8, !dbg !2499, !tbaa !595
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2499
  %103 = load i8*, i8** %102, align 8, !dbg !2499, !tbaa !595
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2499
  %105 = load i8*, i8** %104, align 8, !dbg !2499, !tbaa !595
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #24, !dbg !2499
  br label %147, !dbg !2500

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.83, i64 0, i64 0), i32 5) #24, !dbg !2501
  %109 = load i8*, i8** %4, align 8, !dbg !2501, !tbaa !595
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2501
  %111 = load i8*, i8** %110, align 8, !dbg !2501, !tbaa !595
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2501
  %113 = load i8*, i8** %112, align 8, !dbg !2501, !tbaa !595
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2501
  %115 = load i8*, i8** %114, align 8, !dbg !2501, !tbaa !595
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2501
  %117 = load i8*, i8** %116, align 8, !dbg !2501, !tbaa !595
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2501
  %119 = load i8*, i8** %118, align 8, !dbg !2501, !tbaa !595
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2501
  %121 = load i8*, i8** %120, align 8, !dbg !2501, !tbaa !595
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2501
  %123 = load i8*, i8** %122, align 8, !dbg !2501, !tbaa !595
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2501
  %125 = load i8*, i8** %124, align 8, !dbg !2501, !tbaa !595
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #24, !dbg !2501
  br label %147, !dbg !2502

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.84, i64 0, i64 0), i32 5) #24, !dbg !2503
  %129 = load i8*, i8** %4, align 8, !dbg !2503, !tbaa !595
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2503
  %131 = load i8*, i8** %130, align 8, !dbg !2503, !tbaa !595
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2503
  %133 = load i8*, i8** %132, align 8, !dbg !2503, !tbaa !595
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2503
  %135 = load i8*, i8** %134, align 8, !dbg !2503, !tbaa !595
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2503
  %137 = load i8*, i8** %136, align 8, !dbg !2503, !tbaa !595
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2503
  %139 = load i8*, i8** %138, align 8, !dbg !2503, !tbaa !595
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2503
  %141 = load i8*, i8** %140, align 8, !dbg !2503, !tbaa !595
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2503
  %143 = load i8*, i8** %142, align 8, !dbg !2503, !tbaa !595
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2503
  %145 = load i8*, i8** %144, align 8, !dbg !2503, !tbaa !595
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #24, !dbg !2503
  br label %147, !dbg !2504

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2505
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !2506 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2510, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i8* %1, metadata !2511, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i8* %2, metadata !2512, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i8* %3, metadata !2513, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i8** %4, metadata !2514, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i64 0, metadata !2515, metadata !DIExpression()), !dbg !2516
  br label %6, !dbg !2517

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2519
  call void @llvm.dbg.value(metadata i64 %7, metadata !2515, metadata !DIExpression()), !dbg !2516
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2520
  %9 = load i8*, i8** %8, align 8, !dbg !2520, !tbaa !595
  %10 = icmp eq i8* %9, null, !dbg !2522
  %11 = add i64 %7, 1, !dbg !2523
  call void @llvm.dbg.value(metadata i64 %11, metadata !2515, metadata !DIExpression()), !dbg !2516
  br i1 %10, label %12, label %6, !dbg !2522, !llvm.loop !2524

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2526
  ret void, !dbg !2527
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !2528 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2539, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i8* %1, metadata !2540, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i8* %2, metadata !2541, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i8* %3, metadata !2542, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2543, metadata !DIExpression()), !dbg !2547
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2548
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #24, !dbg !2548
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2545, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i64 0, metadata !2544, metadata !DIExpression()), !dbg !2547
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !2544, metadata !DIExpression()), !dbg !2547
  %11 = load i32, i32* %8, align 8, !dbg !2550
  %12 = icmp ult i32 %11, 41, !dbg !2550
  br i1 %12, label %13, label %18, !dbg !2550

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2550
  %15 = zext i32 %11 to i64, !dbg !2550
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2550
  %17 = add nuw nsw i32 %11, 8, !dbg !2550
  store i32 %17, i32* %8, align 8, !dbg !2550
  br label %21, !dbg !2550

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2550
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2550
  store i8* %20, i8** %9, align 8, !dbg !2550
  br label %21, !dbg !2550

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2550
  %25 = load i8*, i8** %24, align 8, !dbg !2550
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2553
  store i8* %25, i8** %26, align 16, !dbg !2554, !tbaa !595
  %27 = icmp eq i8* %25, null, !dbg !2555
  br i1 %27, label %30, label %28, !dbg !2556

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2544, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i64 1, metadata !2544, metadata !DIExpression()), !dbg !2547
  %29 = icmp ult i32 %22, 41, !dbg !2550
  br i1 %29, label %35, label %32, !dbg !2550

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2557
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2558
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #24, !dbg !2559
  ret void, !dbg !2559

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2550
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2550
  store i8* %34, i8** %9, align 8, !dbg !2550
  br label %40, !dbg !2550

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2550
  %37 = zext i32 %22 to i64, !dbg !2550
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2550
  %39 = add nuw nsw i32 %22, 8, !dbg !2550
  store i32 %39, i32* %8, align 8, !dbg !2550
  br label %40, !dbg !2550

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2550
  %44 = load i8*, i8** %43, align 8, !dbg !2550
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2553
  store i8* %44, i8** %45, align 8, !dbg !2554, !tbaa !595
  %46 = icmp eq i8* %44, null, !dbg !2555
  br i1 %46, label %30, label %47, !dbg !2556

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2544, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i64 2, metadata !2544, metadata !DIExpression()), !dbg !2547
  %48 = icmp ult i32 %41, 41, !dbg !2550
  br i1 %48, label %52, label %49, !dbg !2550

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2550
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2550
  store i8* %51, i8** %9, align 8, !dbg !2550
  br label %57, !dbg !2550

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2550
  %54 = zext i32 %41 to i64, !dbg !2550
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2550
  %56 = add nuw nsw i32 %41, 8, !dbg !2550
  store i32 %56, i32* %8, align 8, !dbg !2550
  br label %57, !dbg !2550

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2550
  %61 = load i8*, i8** %60, align 8, !dbg !2550
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2553
  store i8* %61, i8** %62, align 16, !dbg !2554, !tbaa !595
  %63 = icmp eq i8* %61, null, !dbg !2555
  br i1 %63, label %30, label %64, !dbg !2556

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2544, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i64 3, metadata !2544, metadata !DIExpression()), !dbg !2547
  %65 = icmp ult i32 %58, 41, !dbg !2550
  br i1 %65, label %69, label %66, !dbg !2550

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2550
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2550
  store i8* %68, i8** %9, align 8, !dbg !2550
  br label %74, !dbg !2550

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2550
  %71 = zext i32 %58 to i64, !dbg !2550
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2550
  %73 = add nuw nsw i32 %58, 8, !dbg !2550
  store i32 %73, i32* %8, align 8, !dbg !2550
  br label %74, !dbg !2550

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2550
  %78 = load i8*, i8** %77, align 8, !dbg !2550
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2553
  store i8* %78, i8** %79, align 8, !dbg !2554, !tbaa !595
  %80 = icmp eq i8* %78, null, !dbg !2555
  br i1 %80, label %30, label %81, !dbg !2556

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2544, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i64 4, metadata !2544, metadata !DIExpression()), !dbg !2547
  %82 = icmp ult i32 %75, 41, !dbg !2550
  br i1 %82, label %86, label %83, !dbg !2550

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2550
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2550
  store i8* %85, i8** %9, align 8, !dbg !2550
  br label %91, !dbg !2550

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2550
  %88 = zext i32 %75 to i64, !dbg !2550
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2550
  %90 = add nuw nsw i32 %75, 8, !dbg !2550
  store i32 %90, i32* %8, align 8, !dbg !2550
  br label %91, !dbg !2550

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2550
  %95 = load i8*, i8** %94, align 8, !dbg !2550
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2553
  store i8* %95, i8** %96, align 16, !dbg !2554, !tbaa !595
  %97 = icmp eq i8* %95, null, !dbg !2555
  br i1 %97, label %30, label %98, !dbg !2556

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2544, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i64 5, metadata !2544, metadata !DIExpression()), !dbg !2547
  %99 = icmp ult i32 %92, 41, !dbg !2550
  br i1 %99, label %103, label %100, !dbg !2550

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2550
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2550
  store i8* %102, i8** %9, align 8, !dbg !2550
  br label %108, !dbg !2550

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2550
  %105 = zext i32 %92 to i64, !dbg !2550
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2550
  %107 = add nuw nsw i32 %92, 8, !dbg !2550
  store i32 %107, i32* %8, align 8, !dbg !2550
  br label %108, !dbg !2550

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2550
  %111 = load i8*, i8** %110, align 8, !dbg !2550
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2553
  store i8* %111, i8** %112, align 8, !dbg !2554, !tbaa !595
  %113 = icmp eq i8* %111, null, !dbg !2555
  br i1 %113, label %30, label %114, !dbg !2556

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2544, metadata !DIExpression()), !dbg !2547
  %115 = load i8*, i8** %9, align 8, !dbg !2550
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2550
  store i8* %116, i8** %9, align 8, !dbg !2550
  %117 = bitcast i8* %115 to i8**, !dbg !2550
  %118 = load i8*, i8** %117, align 8, !dbg !2550
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2553
  store i8* %118, i8** %119, align 16, !dbg !2554, !tbaa !595
  %120 = icmp eq i8* %118, null, !dbg !2555
  br i1 %120, label %30, label %121, !dbg !2556

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2544, metadata !DIExpression()), !dbg !2547
  %122 = load i8*, i8** %9, align 8, !dbg !2550
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2550
  store i8* %123, i8** %9, align 8, !dbg !2550
  %124 = bitcast i8* %122 to i8**, !dbg !2550
  %125 = load i8*, i8** %124, align 8, !dbg !2550
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2553
  store i8* %125, i8** %126, align 8, !dbg !2554, !tbaa !595
  %127 = icmp eq i8* %125, null, !dbg !2555
  br i1 %127, label %30, label %128, !dbg !2556

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2544, metadata !DIExpression()), !dbg !2547
  %129 = load i8*, i8** %9, align 8, !dbg !2550
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2550
  store i8* %130, i8** %9, align 8, !dbg !2550
  %131 = bitcast i8* %129 to i8**, !dbg !2550
  %132 = load i8*, i8** %131, align 8, !dbg !2550
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2553
  store i8* %132, i8** %133, align 16, !dbg !2554, !tbaa !595
  %134 = icmp eq i8* %132, null, !dbg !2555
  br i1 %134, label %30, label %135, !dbg !2556

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2544, metadata !DIExpression()), !dbg !2547
  %136 = load i8*, i8** %9, align 8, !dbg !2550
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2550
  store i8* %137, i8** %9, align 8, !dbg !2550
  %138 = bitcast i8* %136 to i8**, !dbg !2550
  %139 = load i8*, i8** %138, align 8, !dbg !2550
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2553
  store i8* %139, i8** %140, align 8, !dbg !2554, !tbaa !595
  %141 = icmp eq i8* %139, null, !dbg !2555
  %142 = select i1 %141, i64 9, i64 10, !dbg !2556
  br label %30, !dbg !2556
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !2560 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2564, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8* %1, metadata !2565, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8* %2, metadata !2566, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8* %3, metadata !2567, metadata !DIExpression()), !dbg !2573
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2574
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #24, !dbg !2574
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2568, metadata !DIExpression()), !dbg !2575
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2576
  call void @llvm.va_start(i8* nonnull %6), !dbg !2576
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2577
  call void @llvm.va_end(i8* nonnull %6), !dbg !2578
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #24, !dbg !2579
  ret void, !dbg !2579
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !2580 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2581, !tbaa !595
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.72, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2581
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.87, i64 0, i64 0), i32 5) #24, !dbg !2582
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.88, i64 0, i64 0)) #24, !dbg !2582
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.89, i64 0, i64 0), i32 5) #24, !dbg !2583
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.90, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.91, i64 0, i64 0)) #24, !dbg !2583
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.92, i64 0, i64 0), i32 5) #24, !dbg !2584
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.93, i64 0, i64 0)) #24, !dbg !2584
  ret void, !dbg !2585
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #21 !dbg !2586 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2590, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i64 %1, metadata !2591, metadata !DIExpression()), !dbg !2592
  %3 = udiv i64 9223372036854775807, %1, !dbg !2593
  %4 = icmp ult i64 %3, %0, !dbg !2593
  br i1 %4, label %5, label %6, !dbg !2595

5:                                                ; preds = %2
  tail call void @xalloc_die() #26, !dbg !2596
  unreachable, !dbg !2596

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2597
  call void @llvm.dbg.value(metadata i64 %7, metadata !2598, metadata !DIExpression()) #24, !dbg !2604
  %8 = tail call noalias i8* @malloc(i64 %7) #24, !dbg !2606
  call void @llvm.dbg.value(metadata i8* %8, metadata !2603, metadata !DIExpression()) #24, !dbg !2604
  %9 = icmp eq i8* %8, null, !dbg !2607
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !2609
  br i1 %11, label %12, label %13, !dbg !2609

12:                                               ; preds = %6
  tail call void @xalloc_die() #26, !dbg !2610
  unreachable, !dbg !2610

13:                                               ; preds = %6
  ret i8* %8, !dbg !2611
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !2599 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2598, metadata !DIExpression()), !dbg !2612
  %2 = tail call noalias i8* @malloc(i64 %0) #24, !dbg !2613
  call void @llvm.dbg.value(metadata i8* %2, metadata !2603, metadata !DIExpression()), !dbg !2612
  %3 = icmp eq i8* %2, null, !dbg !2614
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2615
  br i1 %5, label %6, label %7, !dbg !2615

6:                                                ; preds = %1
  tail call void @xalloc_die() #26, !dbg !2616
  unreachable, !dbg !2616

7:                                                ; preds = %1
  ret i8* %2, !dbg !2617
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #21 !dbg !2618 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2622, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i64 %1, metadata !2623, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i64 %2, metadata !2624, metadata !DIExpression()), !dbg !2625
  %4 = udiv i64 9223372036854775807, %2, !dbg !2626
  %5 = icmp ult i64 %4, %1, !dbg !2626
  br i1 %5, label %6, label %7, !dbg !2628

6:                                                ; preds = %3
  tail call void @xalloc_die() #26, !dbg !2629
  unreachable, !dbg !2629

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2630
  call void @llvm.dbg.value(metadata i8* %0, metadata !2631, metadata !DIExpression()) #24, !dbg !2637
  call void @llvm.dbg.value(metadata i64 %8, metadata !2636, metadata !DIExpression()) #24, !dbg !2637
  %9 = icmp eq i64 %8, 0, !dbg !2639
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !2641
  br i1 %11, label %12, label %13, !dbg !2641

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #24, !dbg !2642
  br label %19, !dbg !2644

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #24, !dbg !2645
  call void @llvm.dbg.value(metadata i8* %14, metadata !2631, metadata !DIExpression()) #24, !dbg !2637
  %15 = icmp eq i8* %14, null, !dbg !2646
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !2648
  br i1 %17, label %18, label %19, !dbg !2648

18:                                               ; preds = %13
  tail call void @xalloc_die() #26, !dbg !2649
  unreachable, !dbg !2649

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2637
  ret i8* %20, !dbg !2650
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2632 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2631, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i64 %1, metadata !2636, metadata !DIExpression()), !dbg !2651
  %3 = icmp eq i64 %1, 0, !dbg !2652
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !2653
  br i1 %5, label %6, label %7, !dbg !2653

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #24, !dbg !2654
  br label %13, !dbg !2655

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #24, !dbg !2656
  call void @llvm.dbg.value(metadata i8* %8, metadata !2631, metadata !DIExpression()), !dbg !2651
  %9 = icmp eq i8* %8, null, !dbg !2657
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !2658
  br i1 %11, label %12, label %13, !dbg !2658

12:                                               ; preds = %7
  tail call void @xalloc_die() #26, !dbg !2659
  unreachable, !dbg !2659

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2651
  ret i8* %14, !dbg !2660
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #21 !dbg !158 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !163, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i64* %1, metadata !164, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i64 %2, metadata !165, metadata !DIExpression()), !dbg !2661
  %4 = load i64, i64* %1, align 8, !dbg !2662, !tbaa !1873
  call void @llvm.dbg.value(metadata i64 %4, metadata !166, metadata !DIExpression()), !dbg !2661
  %5 = icmp eq i8* %0, null, !dbg !2663
  br i1 %5, label %6, label %20, !dbg !2665

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2666
  br i1 %7, label %8, label %13, !dbg !2669

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2670
  call void @llvm.dbg.value(metadata i64 %9, metadata !166, metadata !DIExpression()), !dbg !2661
  %10 = icmp ugt i64 %2, 128, !dbg !2672
  %11 = zext i1 %10 to i64, !dbg !2672
  %12 = add nuw nsw i64 %9, %11, !dbg !2673
  call void @llvm.dbg.value(metadata i64 %12, metadata !166, metadata !DIExpression()), !dbg !2661
  br label %13, !dbg !2674

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2661
  call void @llvm.dbg.value(metadata i64 %14, metadata !166, metadata !DIExpression()), !dbg !2661
  %15 = udiv i64 9223372036854775807, %2, !dbg !2675
  %16 = icmp ult i64 %15, %14, !dbg !2675
  br i1 %16, label %19, label %17, !dbg !2677

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !166, metadata !DIExpression()), !dbg !2661
  store i64 %14, i64* %1, align 8, !dbg !2678, !tbaa !1873
  %18 = mul i64 %14, %2, !dbg !2679
  call void @llvm.dbg.value(metadata i8* %0, metadata !2631, metadata !DIExpression()) #24, !dbg !2680
  call void @llvm.dbg.value(metadata i64 %28, metadata !2636, metadata !DIExpression()) #24, !dbg !2680
  br label %31, !dbg !2682

19:                                               ; preds = %13
  tail call void @xalloc_die() #26, !dbg !2683
  unreachable, !dbg !2683

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !2684
  %22 = icmp ugt i64 %21, %4, !dbg !2687
  br i1 %22, label %24, label %23, !dbg !2688

23:                                               ; preds = %20
  tail call void @xalloc_die() #26, !dbg !2689
  unreachable, !dbg !2689

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !2690
  %26 = add nuw i64 %4, 1, !dbg !2691
  %27 = add i64 %26, %25, !dbg !2692
  call void @llvm.dbg.value(metadata i64 %27, metadata !166, metadata !DIExpression()), !dbg !2661
  store i64 %27, i64* %1, align 8, !dbg !2678, !tbaa !1873
  %28 = mul i64 %27, %2, !dbg !2679
  call void @llvm.dbg.value(metadata i8* %0, metadata !2631, metadata !DIExpression()) #24, !dbg !2680
  call void @llvm.dbg.value(metadata i64 %28, metadata !2636, metadata !DIExpression()) #24, !dbg !2680
  %29 = icmp eq i64 %28, 0, !dbg !2693
  br i1 %29, label %30, label %31, !dbg !2682

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #24, !dbg !2694
  br label %38, !dbg !2695

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #24, !dbg !2696
  call void @llvm.dbg.value(metadata i8* %33, metadata !2631, metadata !DIExpression()) #24, !dbg !2680
  %34 = icmp eq i8* %33, null, !dbg !2697
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !2698
  br i1 %36, label %37, label %38, !dbg !2698

37:                                               ; preds = %31
  tail call void @xalloc_die() #26, !dbg !2699
  unreachable, !dbg !2699

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !2680
  ret i8* %39, !dbg !2700
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #21 !dbg !2701 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2703, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i64 %0, metadata !2598, metadata !DIExpression()) #24, !dbg !2705
  %2 = tail call noalias i8* @malloc(i64 %0) #24, !dbg !2707
  call void @llvm.dbg.value(metadata i8* %2, metadata !2603, metadata !DIExpression()) #24, !dbg !2705
  %3 = icmp eq i8* %2, null, !dbg !2708
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2709
  br i1 %5, label %6, label %7, !dbg !2709

6:                                                ; preds = %1
  tail call void @xalloc_die() #26, !dbg !2710
  unreachable, !dbg !2710

7:                                                ; preds = %1
  ret i8* %2, !dbg !2711
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !2712 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2716, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i64* %1, metadata !2717, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i8* %0, metadata !163, metadata !DIExpression()) #24, !dbg !2719
  call void @llvm.dbg.value(metadata i64* %1, metadata !164, metadata !DIExpression()) #24, !dbg !2719
  call void @llvm.dbg.value(metadata i64 1, metadata !165, metadata !DIExpression()) #24, !dbg !2719
  %3 = load i64, i64* %1, align 8, !dbg !2721, !tbaa !1873
  call void @llvm.dbg.value(metadata i64 %3, metadata !166, metadata !DIExpression()) #24, !dbg !2719
  %4 = icmp eq i8* %0, null, !dbg !2722
  br i1 %4, label %5, label %10, !dbg !2723

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2724
  br i1 %6, label %17, label %7, !dbg !2725

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !166, metadata !DIExpression()) #24, !dbg !2719
  %8 = icmp slt i64 %3, 0, !dbg !2726
  br i1 %8, label %9, label %17, !dbg !2727

9:                                                ; preds = %7
  tail call void @xalloc_die() #26, !dbg !2728
  unreachable, !dbg !2728

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !2729
  br i1 %11, label %13, label %12, !dbg !2730

12:                                               ; preds = %10
  tail call void @xalloc_die() #26, !dbg !2731
  unreachable, !dbg !2731

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !2732
  %15 = add nuw nsw i64 %3, 1, !dbg !2733
  %16 = add nuw nsw i64 %15, %14, !dbg !2734
  call void @llvm.dbg.value(metadata i64 %16, metadata !166, metadata !DIExpression()) #24, !dbg !2719
  call void @llvm.dbg.value(metadata i8* %0, metadata !2631, metadata !DIExpression()) #24, !dbg !2735
  call void @llvm.dbg.value(metadata i64 %16, metadata !2636, metadata !DIExpression()) #24, !dbg !2735
  br label %17, !dbg !2737

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !2738
  store i64 %18, i64* %1, align 8, !dbg !2738, !tbaa !1873
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #24, !dbg !2739
  call void @llvm.dbg.value(metadata i8* %19, metadata !2631, metadata !DIExpression()) #24, !dbg !2735
  %20 = icmp eq i8* %19, null, !dbg !2740
  br i1 %20, label %21, label %22, !dbg !2741

21:                                               ; preds = %17
  tail call void @xalloc_die() #26, !dbg !2742
  unreachable, !dbg !2742

22:                                               ; preds = %17
  ret i8* %19, !dbg !2743
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !2744 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2746, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i64 %0, metadata !2748, metadata !DIExpression()) #24, !dbg !2753
  call void @llvm.dbg.value(metadata i64 1, metadata !2751, metadata !DIExpression()) #24, !dbg !2753
  %2 = icmp slt i64 %0, 0, !dbg !2755
  br i1 %2, label %6, label %3, !dbg !2757

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #24, !dbg !2758
  call void @llvm.dbg.value(metadata i8* %4, metadata !2752, metadata !DIExpression()) #24, !dbg !2753
  %5 = icmp eq i8* %4, null, !dbg !2759
  br i1 %5, label %6, label %7, !dbg !2760

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #26, !dbg !2761
  unreachable, !dbg !2761

7:                                                ; preds = %3
  ret i8* %4, !dbg !2762
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !2749 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2748, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata i64 %1, metadata !2751, metadata !DIExpression()), !dbg !2763
  %3 = udiv i64 9223372036854775807, %1, !dbg !2764
  %4 = icmp ult i64 %3, %0, !dbg !2764
  br i1 %4, label %8, label %5, !dbg !2765

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #24, !dbg !2766
  call void @llvm.dbg.value(metadata i8* %6, metadata !2752, metadata !DIExpression()), !dbg !2763
  %7 = icmp eq i8* %6, null, !dbg !2767
  br i1 %7, label %8, label %9, !dbg !2768

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #26, !dbg !2769
  unreachable, !dbg !2769

9:                                                ; preds = %5
  ret i8* %6, !dbg !2770
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2771 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2777, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata i64 %1, metadata !2778, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata i64 %1, metadata !2598, metadata !DIExpression()) #24, !dbg !2780
  %3 = tail call noalias i8* @malloc(i64 %1) #24, !dbg !2782
  call void @llvm.dbg.value(metadata i8* %3, metadata !2603, metadata !DIExpression()) #24, !dbg !2780
  %4 = icmp eq i8* %3, null, !dbg !2783
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !2784
  br i1 %6, label %7, label %8, !dbg !2784

7:                                                ; preds = %2
  tail call void @xalloc_die() #26, !dbg !2785
  unreachable, !dbg !2785

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2786, metadata !DIExpression()) #24, !dbg !2795
  call void @llvm.dbg.value(metadata i8* %0, metadata !2793, metadata !DIExpression()) #24, !dbg !2795
  call void @llvm.dbg.value(metadata i64 %1, metadata !2794, metadata !DIExpression()) #24, !dbg !2795
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #24, !dbg !2797
  ret i8* %3, !dbg !2798
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !2799 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2801, metadata !DIExpression()), !dbg !2802
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #25, !dbg !2803
  %3 = add i64 %2, 1, !dbg !2804
  call void @llvm.dbg.value(metadata i8* %0, metadata !2777, metadata !DIExpression()) #24, !dbg !2805
  call void @llvm.dbg.value(metadata i64 %3, metadata !2778, metadata !DIExpression()) #24, !dbg !2805
  call void @llvm.dbg.value(metadata i64 %3, metadata !2598, metadata !DIExpression()) #24, !dbg !2807
  %4 = tail call noalias i8* @malloc(i64 %3) #24, !dbg !2809
  call void @llvm.dbg.value(metadata i8* %4, metadata !2603, metadata !DIExpression()) #24, !dbg !2807
  %5 = icmp eq i8* %4, null, !dbg !2810
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !2811
  br i1 %7, label %8, label %9, !dbg !2811

8:                                                ; preds = %1
  tail call void @xalloc_die() #26, !dbg !2812
  unreachable, !dbg !2812

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !2786, metadata !DIExpression()) #24, !dbg !2813
  call void @llvm.dbg.value(metadata i8* %0, metadata !2793, metadata !DIExpression()) #24, !dbg !2813
  call void @llvm.dbg.value(metadata i64 %3, metadata !2794, metadata !DIExpression()) #24, !dbg !2813
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #24, !dbg !2815
  ret i8* %4, !dbg !2816
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !2817 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !2818, !tbaa !739
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.104, i64 0, i64 0), i32 5) #24, !dbg !2819
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i64 0, i64 0), i8* %2) #24, !dbg !2820
  tail call void @abort() #26, !dbg !2821
  unreachable, !dbg !2821
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #23 !dbg !2822 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2824, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata i64 %1, metadata !2825, metadata !DIExpression()), !dbg !2830
  %3 = icmp eq i64 %0, 0, !dbg !2831
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !2832
  br i1 %5, label %11, label %6, !dbg !2832

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !2827, metadata !DIExpression()), !dbg !2833
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !2834
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !2834
  br i1 %8, label %9, label %11, !dbg !2836

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #28, !dbg !2837
  store i32 12, i32* %10, align 4, !dbg !2839, !tbaa !739
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !2824, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata i64 %12, metadata !2825, metadata !DIExpression()), !dbg !2830
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #24, !dbg !2840
  call void @llvm.dbg.value(metadata i8* %14, metadata !2826, metadata !DIExpression()), !dbg !2830
  br label %15, !dbg !2841

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !2830
  ret i8* %16, !dbg !2842
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !2843 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !2859, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i8* %1, metadata !2860, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i64 %2, metadata !2861, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !2862, metadata !DIExpression()), !dbg !2868
  %6 = bitcast i32* %5 to i8*, !dbg !2869
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #24, !dbg !2869
  %7 = icmp eq i32* %0, null, !dbg !2870
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !2872
  call void @llvm.dbg.value(metadata i32* %8, metadata !2859, metadata !DIExpression()), !dbg !2868
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #24, !dbg !2873
  call void @llvm.dbg.value(metadata i64 %9, metadata !2863, metadata !DIExpression()), !dbg !2868
  %10 = icmp ugt i64 %9, -3, !dbg !2874
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !2875
  br i1 %12, label %13, label %18, !dbg !2875

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #24, !dbg !2876
  br i1 %14, label %18, label %15, !dbg !2877

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !2878, !tbaa !1173
  call void @llvm.dbg.value(metadata i8 %16, metadata !2865, metadata !DIExpression()), !dbg !2879
  %17 = zext i8 %16 to i32, !dbg !2880
  store i32 %17, i32* %8, align 4, !dbg !2881, !tbaa !739
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !2868
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #24, !dbg !2882
  ret i64 %19, !dbg !2882
}

; Function Attrs: nounwind
declare !dbg !2883 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !2887 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2925, metadata !DIExpression()), !dbg !2930
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #24, !dbg !2931
  call void @llvm.dbg.value(metadata i1 undef, metadata !2926, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2930
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2932, metadata !DIExpression()), !dbg !2936
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !2938
  %4 = load i32, i32* %3, align 8, !dbg !2938, !tbaa !2939
  %5 = and i32 %4, 32, !dbg !2941
  %6 = icmp eq i32 %5, 0, !dbg !2941
  call void @llvm.dbg.value(metadata i1 %6, metadata !2928, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2930
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #24, !dbg !2942
  %8 = icmp eq i32 %7, 0, !dbg !2943
  call void @llvm.dbg.value(metadata i1 %8, metadata !2929, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2930
  br i1 %6, label %9, label %19, !dbg !2944

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !2946
  call void @llvm.dbg.value(metadata i1 %10, metadata !2926, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2930
  %11 = or i1 %10, %8, !dbg !2947
  %12 = xor i1 %8, true, !dbg !2947
  %13 = sext i1 %12 to i32, !dbg !2947
  br i1 %11, label %22, label %14, !dbg !2947

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #28, !dbg !2948
  %16 = load i32, i32* %15, align 4, !dbg !2948, !tbaa !739
  %17 = icmp ne i32 %16, 9, !dbg !2949
  %18 = sext i1 %17 to i32, !dbg !2950
  br label %22, !dbg !2950

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !2951

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #28, !dbg !2953
  store i32 0, i32* %21, align 4, !dbg !2955, !tbaa !739
  br label %22, !dbg !2953

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !2930
  ret i32 %23, !dbg !2956
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !2957 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2961, metadata !DIExpression()), !dbg !2966
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !2967
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #24, !dbg !2967
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !2962, metadata !DIExpression()), !dbg !2968
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #24, !dbg !2969
  %5 = icmp eq i32 %4, 0, !dbg !2969
  br i1 %5, label %6, label %13, !dbg !2971

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !2972
  %8 = load i16, i16* %7, align 16, !dbg !2972
  %9 = icmp eq i16 %8, 67, !dbg !2972
  br i1 %9, label %13, label %10, !dbg !2973

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.114, i64 0, i64 0), i64 6), !dbg !2974
  %12 = icmp ne i32 %11, 0, !dbg !2975
  br label %13, !dbg !2973

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !2966
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #24, !dbg !2976
  ret i1 %14, !dbg !2976
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !2977 {
  %1 = tail call i8* @nl_langinfo(i32 14) #24, !dbg !2982
  call void @llvm.dbg.value(metadata i8* %1, metadata !2981, metadata !DIExpression()), !dbg !2983
  %2 = icmp eq i8* %1, null, !dbg !2984
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.117, i64 0, i64 0), i8* %1, !dbg !2986
  call void @llvm.dbg.value(metadata i8* %3, metadata !2981, metadata !DIExpression()), !dbg !2983
  %4 = load i8, i8* %3, align 1, !dbg !2987, !tbaa !1173
  %5 = icmp eq i8 %4, 0, !dbg !2991
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.118, i64 0, i64 0), i8* %3, !dbg !2992
  call void @llvm.dbg.value(metadata i8* %6, metadata !2981, metadata !DIExpression()), !dbg !2983
  ret i8* %6, !dbg !2993
}

; Function Attrs: nounwind
declare !dbg !2994 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !2997 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3001, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i8* %1, metadata !3002, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i64 %2, metadata !3003, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i32 %0, metadata !3005, metadata !DIExpression()) #24, !dbg !3014
  call void @llvm.dbg.value(metadata i8* %1, metadata !3008, metadata !DIExpression()) #24, !dbg !3014
  call void @llvm.dbg.value(metadata i64 %2, metadata !3009, metadata !DIExpression()) #24, !dbg !3014
  call void @llvm.dbg.value(metadata i32 %0, metadata !3016, metadata !DIExpression()) #24, !dbg !3022
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #24, !dbg !3024
  call void @llvm.dbg.value(metadata i8* %4, metadata !3021, metadata !DIExpression()) #24, !dbg !3022
  call void @llvm.dbg.value(metadata i8* %4, metadata !3010, metadata !DIExpression()) #24, !dbg !3014
  %5 = icmp eq i8* %4, null, !dbg !3025
  br i1 %5, label %6, label %9, !dbg !3026

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3027
  br i1 %7, label %19, label %8, !dbg !3030

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3031, !tbaa !1173
  br label %19, !dbg !3032

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #25, !dbg !3033
  call void @llvm.dbg.value(metadata i64 %10, metadata !3011, metadata !DIExpression()) #24, !dbg !3034
  %11 = icmp ult i64 %10, %2, !dbg !3035
  br i1 %11, label %12, label %14, !dbg !3037

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3038
  call void @llvm.dbg.value(metadata i8* %1, metadata !3040, metadata !DIExpression()) #24, !dbg !3045
  call void @llvm.dbg.value(metadata i8* %4, metadata !3043, metadata !DIExpression()) #24, !dbg !3045
  call void @llvm.dbg.value(metadata i64 %13, metadata !3044, metadata !DIExpression()) #24, !dbg !3045
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #24, !dbg !3047
  br label %19, !dbg !3048

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3049
  br i1 %15, label %19, label %16, !dbg !3052

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3053
  call void @llvm.dbg.value(metadata i8* %1, metadata !3040, metadata !DIExpression()) #24, !dbg !3055
  call void @llvm.dbg.value(metadata i8* %4, metadata !3043, metadata !DIExpression()) #24, !dbg !3055
  call void @llvm.dbg.value(metadata i64 %17, metadata !3044, metadata !DIExpression()) #24, !dbg !3055
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #24, !dbg !3057
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3058
  store i8 0, i8* %18, align 1, !dbg !3059, !tbaa !1173
  br label %19, !dbg !3060

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3061
  ret i32 %20, !dbg !3062
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3063 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3065, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i32 %0, metadata !3016, metadata !DIExpression()) #24, !dbg !3067
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #24, !dbg !3069
  call void @llvm.dbg.value(metadata i8* %2, metadata !3021, metadata !DIExpression()) #24, !dbg !3067
  ret i8* %2, !dbg !3070
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3071 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3109, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i32 0, metadata !3110, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i32 0, metadata !3112, metadata !DIExpression()), !dbg !3113
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !3114
  call void @llvm.dbg.value(metadata i32 %2, metadata !3111, metadata !DIExpression()), !dbg !3113
  %3 = icmp slt i32 %2, 0, !dbg !3115
  br i1 %3, label %4, label %6, !dbg !3117

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3118
  br label %24, !dbg !3119

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #24, !dbg !3120
  %8 = icmp eq i32 %7, 0, !dbg !3120
  br i1 %8, label %13, label %9, !dbg !3122

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !3123
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #24, !dbg !3124
  %12 = icmp eq i64 %11, -1, !dbg !3125
  br i1 %12, label %16, label %13, !dbg !3126

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #24, !dbg !3127
  %15 = icmp eq i32 %14, 0, !dbg !3127
  br i1 %15, label %16, label %18, !dbg !3128

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3110, metadata !DIExpression()), !dbg !3113
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3129
  call void @llvm.dbg.value(metadata i32 %21, metadata !3112, metadata !DIExpression()), !dbg !3113
  br label %24, !dbg !3130

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #28, !dbg !3131
  %20 = load i32, i32* %19, align 4, !dbg !3131, !tbaa !739
  call void @llvm.dbg.value(metadata i32 %20, metadata !3110, metadata !DIExpression()), !dbg !3113
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3129
  call void @llvm.dbg.value(metadata i32 %21, metadata !3112, metadata !DIExpression()), !dbg !3113
  %22 = icmp eq i32 %20, 0, !dbg !3132
  br i1 %22, label %24, label %23, !dbg !3130

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3134, !tbaa !739
  call void @llvm.dbg.value(metadata i32 -1, metadata !3112, metadata !DIExpression()), !dbg !3113
  br label %24, !dbg !3136

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3113
  ret i32 %25, !dbg !3137
}

; Function Attrs: nofree nounwind
declare !dbg !3138 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3141 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3142 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3145 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3183, metadata !DIExpression()), !dbg !3184
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3185
  br i1 %2, label %6, label %3, !dbg !3187

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #24, !dbg !3188
  %5 = icmp eq i32 %4, 0, !dbg !3188
  br i1 %5, label %6, label %8, !dbg !3189

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3190
  br label %17, !dbg !3191

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3192, metadata !DIExpression()) #24, !dbg !3197
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3199
  %10 = load i32, i32* %9, align 8, !dbg !3199, !tbaa !2939
  %11 = and i32 %10, 256, !dbg !3201
  %12 = icmp eq i32 %11, 0, !dbg !3201
  br i1 %12, label %15, label %13, !dbg !3202

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #24, !dbg !3203
  br label %15, !dbg !3203

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3204
  br label %17, !dbg !3205

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3184
  ret i32 %18, !dbg !3206
}

; Function Attrs: nofree nounwind
declare !dbg !3207 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3210 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3249, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i64 %1, metadata !3250, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i32 %2, metadata !3251, metadata !DIExpression()), !dbg !3255
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3256
  %5 = load i8*, i8** %4, align 8, !dbg !3256, !tbaa !3257
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3258
  %7 = load i8*, i8** %6, align 8, !dbg !3258, !tbaa !3259
  %8 = icmp eq i8* %5, %7, !dbg !3260
  br i1 %8, label %9, label %28, !dbg !3261

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3262
  %11 = load i8*, i8** %10, align 8, !dbg !3262, !tbaa !3263
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3264
  %13 = load i8*, i8** %12, align 8, !dbg !3264, !tbaa !3265
  %14 = icmp eq i8* %11, %13, !dbg !3266
  br i1 %14, label %15, label %28, !dbg !3267

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3268
  %17 = load i8*, i8** %16, align 8, !dbg !3268, !tbaa !3269
  %18 = icmp eq i8* %17, null, !dbg !3270
  br i1 %18, label %19, label %28, !dbg !3271

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !3272
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #24, !dbg !3273
  call void @llvm.dbg.value(metadata i64 %21, metadata !3252, metadata !DIExpression()), !dbg !3274
  %22 = icmp eq i64 %21, -1, !dbg !3275
  br i1 %22, label %30, label %23, !dbg !3277

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3278
  %25 = load i32, i32* %24, align 8, !dbg !3279, !tbaa !2939
  %26 = and i32 %25, -17, !dbg !3279
  store i32 %26, i32* %24, align 8, !dbg !3279, !tbaa !2939
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3280
  store i64 %21, i64* %27, align 8, !dbg !3281, !tbaa !3282
  br label %30, !dbg !3283

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3284
  br label %30, !dbg !3285

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3255
  ret i32 %31, !dbg !3286
}

; Function Attrs: nofree nounwind
declare !dbg !3287 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

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
!144 = !DIFile(filename: "src/hostid.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!145 = !{!6, !46}
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
!584 = distinct !DISubprogram(name: "usage", scope: !144, file: !144, line: 35, type: !585, scopeLine: 36, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !587)
!585 = !DISubroutineType(types: !586)
!586 = !{null, !23}
!587 = !{!588}
!588 = !DILocalVariable(name: "status", arg: 1, scope: !584, file: !144, line: 35, type: !23)
!589 = !DILocation(line: 0, scope: !584)
!590 = !DILocation(line: 37, column: 14, scope: !591)
!591 = distinct !DILexicalBlock(scope: !584, file: !144, line: 37, column: 7)
!592 = !DILocation(line: 37, column: 7, scope: !584)
!593 = !DILocation(line: 38, column: 5, scope: !594)
!594 = distinct !DILexicalBlock(scope: !591, file: !144, line: 38, column: 5)
!595 = !{!596, !596, i64 0}
!596 = !{!"any pointer", !597, i64 0}
!597 = !{!"omnipotent char", !598, i64 0}
!598 = !{!"Simple C/C++ TBAA"}
!599 = !DILocation(line: 41, column: 7, scope: !600)
!600 = distinct !DILexicalBlock(scope: !591, file: !144, line: 40, column: 5)
!601 = !DILocation(line: 46, column: 7, scope: !600)
!602 = !DILocation(line: 47, column: 7, scope: !600)
!603 = !DILocalVariable(name: "program", arg: 1, scope: !604, file: !605, line: 634, type: !6)
!604 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !605, file: !605, line: 634, type: !606, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !608)
!605 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!606 = !DISubroutineType(types: !607)
!607 = !{null, !6}
!608 = !{!603, !609, !618, !619, !621}
!609 = !DILocalVariable(name: "infomap", scope: !604, file: !605, line: 636, type: !610)
!610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !611, size: 896, elements: !616)
!611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !612)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !604, file: !605, line: 636, size: 128, elements: !613)
!613 = !{!614, !615}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !612, file: !605, line: 636, baseType: !6, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !612, file: !605, line: 636, baseType: !6, size: 64, offset: 64)
!616 = !{!617}
!617 = !DISubrange(count: 7)
!618 = !DILocalVariable(name: "node", scope: !604, file: !605, line: 646, type: !6)
!619 = !DILocalVariable(name: "map_prog", scope: !604, file: !605, line: 647, type: !620)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!621 = !DILocalVariable(name: "lc_messages", scope: !604, file: !605, line: 659, type: !6)
!622 = !DILocation(line: 0, scope: !604, inlinedAt: !623)
!623 = distinct !DILocation(line: 48, column: 7, scope: !600)
!624 = !DILocation(line: 636, column: 3, scope: !604, inlinedAt: !623)
!625 = !DILocation(line: 636, column: 67, scope: !604, inlinedAt: !623)
!626 = !DILocation(line: 647, column: 36, scope: !604, inlinedAt: !623)
!627 = !DILocation(line: 649, column: 3, scope: !604, inlinedAt: !623)
!628 = !DILocation(line: 649, column: 33, scope: !604, inlinedAt: !623)
!629 = !DILocation(line: 650, column: 13, scope: !604, inlinedAt: !623)
!630 = !DILocation(line: 649, column: 20, scope: !604, inlinedAt: !623)
!631 = !{!632, !596, i64 0}
!632 = !{!"infomap", !596, i64 0, !596, i64 8}
!633 = !DILocation(line: 649, column: 10, scope: !604, inlinedAt: !623)
!634 = !DILocation(line: 649, column: 28, scope: !604, inlinedAt: !623)
!635 = distinct !{!635, !627, !629, !636}
!636 = !{!"llvm.loop.mustprogress"}
!637 = !DILocation(line: 652, column: 17, scope: !638, inlinedAt: !623)
!638 = distinct !DILexicalBlock(scope: !604, file: !605, line: 652, column: 7)
!639 = !{!632, !596, i64 8}
!640 = !DILocation(line: 652, column: 7, scope: !638, inlinedAt: !623)
!641 = !DILocation(line: 652, column: 7, scope: !604, inlinedAt: !623)
!642 = !DILocation(line: 655, column: 3, scope: !604, inlinedAt: !623)
!643 = !DILocation(line: 659, column: 29, scope: !604, inlinedAt: !623)
!644 = !DILocation(line: 660, column: 7, scope: !645, inlinedAt: !623)
!645 = distinct !DILexicalBlock(scope: !604, file: !605, line: 660, column: 7)
!646 = !DILocation(line: 660, column: 19, scope: !645, inlinedAt: !623)
!647 = !DILocation(line: 660, column: 22, scope: !645, inlinedAt: !623)
!648 = !DILocation(line: 660, column: 7, scope: !604, inlinedAt: !623)
!649 = !DILocation(line: 666, column: 7, scope: !650, inlinedAt: !623)
!650 = distinct !DILexicalBlock(scope: !645, file: !605, line: 661, column: 5)
!651 = !DILocation(line: 668, column: 5, scope: !650, inlinedAt: !623)
!652 = !DILocation(line: 669, column: 3, scope: !604, inlinedAt: !623)
!653 = !DILocation(line: 671, column: 3, scope: !604, inlinedAt: !623)
!654 = !DILocation(line: 673, column: 1, scope: !604, inlinedAt: !623)
!655 = !DILocation(line: 50, column: 3, scope: !584)
!656 = !DISubprogram(name: "dcgettext", scope: !657, file: !657, line: 51, type: !658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!657 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!658 = !DISubroutineType(types: !659)
!659 = !{!47, !6, !6, !23}
!660 = !DISubprogram(name: "fputs_unlocked", scope: !661, file: !661, line: 667, type: !662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!661 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!662 = !DISubroutineType(types: !663)
!663 = !{!23, !6, !664}
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !666, line: 49, size: 1728, elements: !667)
!666 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!667 = !{!668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !683, !684, !685, !686, !690, !691, !693, !697, !700, !702, !705, !708, !709, !710, !711, !712}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !665, file: !666, line: 51, baseType: !23, size: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !665, file: !666, line: 54, baseType: !47, size: 64, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !665, file: !666, line: 55, baseType: !47, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !665, file: !666, line: 56, baseType: !47, size: 64, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !665, file: !666, line: 57, baseType: !47, size: 64, offset: 256)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !665, file: !666, line: 58, baseType: !47, size: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !665, file: !666, line: 59, baseType: !47, size: 64, offset: 384)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !665, file: !666, line: 60, baseType: !47, size: 64, offset: 448)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !665, file: !666, line: 61, baseType: !47, size: 64, offset: 512)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !665, file: !666, line: 64, baseType: !47, size: 64, offset: 576)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !665, file: !666, line: 65, baseType: !47, size: 64, offset: 640)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !665, file: !666, line: 66, baseType: !47, size: 64, offset: 704)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !665, file: !666, line: 68, baseType: !681, size: 64, offset: 768)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !666, line: 36, flags: DIFlagFwdDecl)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !665, file: !666, line: 70, baseType: !664, size: 64, offset: 832)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !665, file: !666, line: 72, baseType: !23, size: 32, offset: 896)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !665, file: !666, line: 73, baseType: !23, size: 32, offset: 928)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !665, file: !666, line: 74, baseType: !687, size: 64, offset: 960)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !688, line: 152, baseType: !689)
!688 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!689 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !665, file: !666, line: 77, baseType: !90, size: 16, offset: 1024)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !665, file: !666, line: 78, baseType: !692, size: 8, offset: 1040)
!692 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !665, file: !666, line: 79, baseType: !694, size: 8, offset: 1048)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !695)
!695 = !{!696}
!696 = !DISubrange(count: 1)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !665, file: !666, line: 81, baseType: !698, size: 64, offset: 1088)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !666, line: 43, baseType: null)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !665, file: !666, line: 89, baseType: !701, size: 64, offset: 1152)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !688, line: 153, baseType: !689)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !665, file: !666, line: 91, baseType: !703, size: 64, offset: 1216)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !666, line: 37, flags: DIFlagFwdDecl)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !665, file: !666, line: 92, baseType: !706, size: 64, offset: 1280)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !666, line: 38, flags: DIFlagFwdDecl)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !665, file: !666, line: 93, baseType: !664, size: 64, offset: 1344)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !665, file: !666, line: 94, baseType: !46, size: 64, offset: 1408)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !665, file: !666, line: 95, baseType: !91, size: 64, offset: 1472)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !665, file: !666, line: 96, baseType: !23, size: 32, offset: 1536)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !665, file: !666, line: 98, baseType: !713, size: 160, offset: 1568)
!713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !714)
!714 = !{!715}
!715 = !DISubrange(count: 20)
!716 = !DISubprogram(name: "setlocale", scope: !717, file: !717, line: 122, type: !718, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!717 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!718 = !DISubroutineType(types: !719)
!719 = !{!47, !23, !6}
!720 = distinct !DISubprogram(name: "main", scope: !144, file: !144, line: 54, type: !721, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !724)
!721 = !DISubroutineType(types: !722)
!722 = !{!23, !23, !723}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!724 = !{!725, !726, !727}
!725 = !DILocalVariable(name: "argc", arg: 1, scope: !720, file: !144, line: 54, type: !23)
!726 = !DILocalVariable(name: "argv", arg: 2, scope: !720, file: !144, line: 54, type: !723)
!727 = !DILocalVariable(name: "id", scope: !720, file: !144, line: 56, type: !56)
!728 = !DILocation(line: 0, scope: !720)
!729 = !DILocation(line: 59, column: 21, scope: !720)
!730 = !DILocation(line: 59, column: 3, scope: !720)
!731 = !DILocation(line: 60, column: 3, scope: !720)
!732 = !DILocation(line: 61, column: 3, scope: !720)
!733 = !DILocation(line: 62, column: 3, scope: !720)
!734 = !DILocation(line: 64, column: 3, scope: !720)
!735 = !DILocation(line: 67, column: 36, scope: !720)
!736 = !DILocation(line: 66, column: 3, scope: !720)
!737 = !DILocation(line: 70, column: 7, scope: !738)
!738 = distinct !DILexicalBlock(scope: !720, file: !144, line: 70, column: 7)
!739 = !{!740, !740, i64 0}
!740 = !{!"int", !597, i64 0}
!741 = !DILocation(line: 70, column: 14, scope: !738)
!742 = !DILocation(line: 70, column: 7, scope: !720)
!743 = !DILocation(line: 72, column: 20, scope: !744)
!744 = distinct !DILexicalBlock(scope: !738, file: !144, line: 71, column: 5)
!745 = !DILocation(line: 72, column: 55, scope: !744)
!746 = !DILocation(line: 72, column: 50, scope: !744)
!747 = !DILocation(line: 72, column: 43, scope: !744)
!748 = !DILocation(line: 72, column: 7, scope: !744)
!749 = !DILocation(line: 73, column: 7, scope: !744)
!750 = !DILocation(line: 76, column: 8, scope: !720)
!751 = !DILocation(line: 83, column: 3, scope: !720)
!752 = !DILocation(line: 85, column: 3, scope: !720)
!753 = !DISubprogram(name: "bindtextdomain", scope: !657, file: !657, line: 86, type: !754, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!754 = !DISubroutineType(types: !755)
!755 = !{!47, !6, !6}
!756 = !DISubprogram(name: "textdomain", scope: !657, file: !657, line: 82, type: !757, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!757 = !DISubroutineType(types: !758)
!758 = !{!47, !6}
!759 = !DISubprogram(name: "atexit", scope: !760, file: !760, line: 595, type: !761, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!760 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!761 = !DISubroutineType(types: !762)
!762 = !{!23, !763}
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{null}
!766 = !DISubprogram(name: "error", scope: !767, file: !767, line: 52, type: !768, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!767 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!768 = !DISubroutineType(types: !769)
!769 = !{null, !23, !23, !6, null}
!770 = !DISubprogram(name: "gethostid", scope: !771, file: !771, line: 981, type: !772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!771 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!772 = !DISubroutineType(types: !773)
!773 = !{!689}
!774 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !12, file: !12, line: 51, type: !606, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !775)
!775 = !{!776}
!776 = !DILocalVariable(name: "file", arg: 1, scope: !774, file: !12, line: 51, type: !6)
!777 = !DILocation(line: 0, scope: !774)
!778 = !DILocation(line: 53, column: 13, scope: !774)
!779 = !DILocation(line: 54, column: 1, scope: !774)
!780 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !12, file: !12, line: 88, type: !781, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !783)
!781 = !DISubroutineType(types: !782)
!782 = !{null, !16}
!783 = !{!784}
!784 = !DILocalVariable(name: "ignore", arg: 1, scope: !780, file: !12, line: 88, type: !16)
!785 = !DILocation(line: 0, scope: !780)
!786 = !DILocation(line: 90, column: 16, scope: !780)
!787 = !{!788, !788, i64 0}
!788 = !{!"_Bool", !597, i64 0}
!789 = !DILocation(line: 91, column: 1, scope: !780)
!790 = distinct !DISubprogram(name: "close_stdout", scope: !12, file: !12, line: 117, type: !764, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !791)
!791 = !{!792}
!792 = !DILocalVariable(name: "write_error", scope: !793, file: !12, line: 122, type: !6)
!793 = distinct !DILexicalBlock(scope: !794, file: !12, line: 121, column: 5)
!794 = distinct !DILexicalBlock(scope: !790, file: !12, line: 119, column: 7)
!795 = !DILocation(line: 119, column: 21, scope: !794)
!796 = !DILocation(line: 119, column: 7, scope: !794)
!797 = !DILocation(line: 119, column: 29, scope: !794)
!798 = !DILocation(line: 120, column: 7, scope: !794)
!799 = !DILocation(line: 120, column: 12, scope: !794)
!800 = !{i8 0, i8 2}
!801 = !DILocation(line: 120, column: 25, scope: !794)
!802 = !DILocation(line: 120, column: 28, scope: !794)
!803 = !DILocation(line: 120, column: 34, scope: !794)
!804 = !DILocation(line: 119, column: 7, scope: !790)
!805 = !DILocation(line: 122, column: 33, scope: !793)
!806 = !DILocation(line: 0, scope: !793)
!807 = !DILocation(line: 123, column: 11, scope: !808)
!808 = distinct !DILexicalBlock(scope: !793, file: !12, line: 123, column: 11)
!809 = !DILocation(line: 0, scope: !808)
!810 = !DILocation(line: 123, column: 11, scope: !793)
!811 = !DILocation(line: 124, column: 36, scope: !808)
!812 = !DILocation(line: 124, column: 9, scope: !808)
!813 = !DILocation(line: 127, column: 9, scope: !808)
!814 = !DILocation(line: 129, column: 14, scope: !793)
!815 = !DILocation(line: 129, column: 7, scope: !793)
!816 = !DILocation(line: 134, column: 42, scope: !817)
!817 = distinct !DILexicalBlock(scope: !790, file: !12, line: 134, column: 7)
!818 = !DILocation(line: 134, column: 28, scope: !817)
!819 = !DILocation(line: 134, column: 50, scope: !817)
!820 = !DILocation(line: 134, column: 7, scope: !790)
!821 = !DILocation(line: 135, column: 12, scope: !817)
!822 = !DILocation(line: 135, column: 5, scope: !817)
!823 = !DILocation(line: 136, column: 1, scope: !790)
!824 = distinct !DISubprogram(name: "parse_long_options", scope: !27, file: !27, line: 45, type: !825, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !828)
!825 = !DISubroutineType(types: !826)
!826 = !{null, !23, !723, !6, !6, !6, !827, null}
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!828 = !{!829, !830, !831, !832, !833, !834, !835, !836, !837}
!829 = !DILocalVariable(name: "argc", arg: 1, scope: !824, file: !27, line: 45, type: !23)
!830 = !DILocalVariable(name: "argv", arg: 2, scope: !824, file: !27, line: 46, type: !723)
!831 = !DILocalVariable(name: "command_name", arg: 3, scope: !824, file: !27, line: 47, type: !6)
!832 = !DILocalVariable(name: "package", arg: 4, scope: !824, file: !27, line: 48, type: !6)
!833 = !DILocalVariable(name: "version", arg: 5, scope: !824, file: !27, line: 49, type: !6)
!834 = !DILocalVariable(name: "usage_func", arg: 6, scope: !824, file: !27, line: 50, type: !827)
!835 = !DILocalVariable(name: "c", scope: !824, file: !27, line: 53, type: !23)
!836 = !DILocalVariable(name: "saved_opterr", scope: !824, file: !27, line: 54, type: !23)
!837 = !DILocalVariable(name: "authors", scope: !838, file: !27, line: 72, type: !842)
!838 = distinct !DILexicalBlock(scope: !839, file: !27, line: 71, column: 11)
!839 = distinct !DILexicalBlock(scope: !840, file: !27, line: 65, column: 9)
!840 = distinct !DILexicalBlock(scope: !841, file: !27, line: 63, column: 5)
!841 = distinct !DILexicalBlock(scope: !824, file: !27, line: 61, column: 7)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !661, line: 52, baseType: !843)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !844, line: 32, baseType: !845)
!844 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !27, baseType: !846)
!846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !847, size: 192, elements: !695)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !848)
!848 = !{!849, !850, !851, !852}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !847, file: !27, line: 72, baseType: !56, size: 32)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !847, file: !27, line: 72, baseType: !56, size: 32, offset: 32)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !847, file: !27, line: 72, baseType: !46, size: 64, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !847, file: !27, line: 72, baseType: !46, size: 64, offset: 128)
!853 = !DILocation(line: 0, scope: !824)
!854 = !DILocation(line: 56, column: 18, scope: !824)
!855 = !DILocation(line: 59, column: 10, scope: !824)
!856 = !DILocation(line: 61, column: 12, scope: !841)
!857 = !DILocation(line: 62, column: 7, scope: !841)
!858 = !DILocation(line: 62, column: 15, scope: !841)
!859 = !DILocation(line: 61, column: 7, scope: !824)
!860 = !DILocation(line: 67, column: 11, scope: !839)
!861 = !DILocation(line: 68, column: 11, scope: !839)
!862 = !DILocation(line: 72, column: 13, scope: !838)
!863 = !DILocation(line: 72, column: 21, scope: !838)
!864 = !DILocation(line: 73, column: 13, scope: !838)
!865 = !DILocation(line: 74, column: 29, scope: !838)
!866 = !DILocation(line: 74, column: 13, scope: !838)
!867 = !DILocation(line: 75, column: 13, scope: !838)
!868 = !DILocation(line: 85, column: 10, scope: !824)
!869 = !DILocation(line: 89, column: 10, scope: !824)
!870 = !DILocation(line: 90, column: 1, scope: !824)
!871 = !DISubprogram(name: "getopt_long", scope: !32, file: !32, line: 66, type: !872, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!872 = !DISubroutineType(types: !873)
!873 = !{!23, !23, !874, !6, !876, !37}
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!877 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !27, file: !27, line: 98, type: !878, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !880)
!878 = !DISubroutineType(types: !879)
!879 = !{null, !23, !723, !6, !6, !6, !16, !827, null}
!880 = !{!881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891}
!881 = !DILocalVariable(name: "argc", arg: 1, scope: !877, file: !27, line: 98, type: !23)
!882 = !DILocalVariable(name: "argv", arg: 2, scope: !877, file: !27, line: 99, type: !723)
!883 = !DILocalVariable(name: "command_name", arg: 3, scope: !877, file: !27, line: 100, type: !6)
!884 = !DILocalVariable(name: "package", arg: 4, scope: !877, file: !27, line: 101, type: !6)
!885 = !DILocalVariable(name: "version", arg: 5, scope: !877, file: !27, line: 102, type: !6)
!886 = !DILocalVariable(name: "scan_all", arg: 6, scope: !877, file: !27, line: 103, type: !16)
!887 = !DILocalVariable(name: "usage_func", arg: 7, scope: !877, file: !27, line: 104, type: !827)
!888 = !DILocalVariable(name: "c", scope: !877, file: !27, line: 107, type: !23)
!889 = !DILocalVariable(name: "saved_opterr", scope: !877, file: !27, line: 108, type: !23)
!890 = !DILocalVariable(name: "optstring", scope: !877, file: !27, line: 113, type: !6)
!891 = !DILocalVariable(name: "authors", scope: !892, file: !27, line: 125, type: !842)
!892 = distinct !DILexicalBlock(scope: !893, file: !27, line: 124, column: 11)
!893 = distinct !DILexicalBlock(scope: !894, file: !27, line: 118, column: 9)
!894 = distinct !DILexicalBlock(scope: !895, file: !27, line: 116, column: 5)
!895 = distinct !DILexicalBlock(scope: !877, file: !27, line: 115, column: 7)
!896 = !DILocation(line: 0, scope: !877)
!897 = !DILocation(line: 108, column: 22, scope: !877)
!898 = !DILocation(line: 111, column: 10, scope: !877)
!899 = !DILocation(line: 113, column: 27, scope: !877)
!900 = !DILocation(line: 115, column: 12, scope: !895)
!901 = !DILocation(line: 115, column: 7, scope: !877)
!902 = !DILocation(line: 125, column: 13, scope: !892)
!903 = !DILocation(line: 125, column: 21, scope: !892)
!904 = !DILocation(line: 126, column: 13, scope: !892)
!905 = !DILocation(line: 127, column: 29, scope: !892)
!906 = !DILocation(line: 127, column: 13, scope: !892)
!907 = !DILocation(line: 128, column: 13, scope: !892)
!908 = !DILocation(line: 132, column: 26, scope: !893)
!909 = !DILocation(line: 133, column: 11, scope: !893)
!910 = !DILocation(line: 0, scope: !893)
!911 = !DILocation(line: 138, column: 10, scope: !877)
!912 = !DILocation(line: 139, column: 1, scope: !877)
!913 = distinct !DISubprogram(name: "set_program_name", scope: !44, file: !44, line: 39, type: !606, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !43, retainedNodes: !914)
!914 = !{!915, !916, !917}
!915 = !DILocalVariable(name: "argv0", arg: 1, scope: !913, file: !44, line: 39, type: !6)
!916 = !DILocalVariable(name: "slash", scope: !913, file: !44, line: 46, type: !6)
!917 = !DILocalVariable(name: "base", scope: !913, file: !44, line: 47, type: !6)
!918 = !DILocation(line: 0, scope: !913)
!919 = !DILocation(line: 51, column: 13, scope: !920)
!920 = distinct !DILexicalBlock(scope: !913, file: !44, line: 51, column: 7)
!921 = !DILocation(line: 51, column: 7, scope: !913)
!922 = !DILocation(line: 55, column: 14, scope: !923)
!923 = distinct !DILexicalBlock(scope: !920, file: !44, line: 52, column: 5)
!924 = !DILocation(line: 54, column: 7, scope: !923)
!925 = !DILocation(line: 56, column: 7, scope: !923)
!926 = !DILocation(line: 59, column: 11, scope: !913)
!927 = !DILocation(line: 60, column: 17, scope: !913)
!928 = !DILocation(line: 60, column: 11, scope: !913)
!929 = !DILocation(line: 61, column: 12, scope: !930)
!930 = distinct !DILexicalBlock(scope: !913, file: !44, line: 61, column: 7)
!931 = !DILocation(line: 61, column: 20, scope: !930)
!932 = !DILocation(line: 61, column: 25, scope: !930)
!933 = !DILocation(line: 61, column: 42, scope: !930)
!934 = !DILocation(line: 61, column: 28, scope: !930)
!935 = !DILocation(line: 61, column: 61, scope: !930)
!936 = !DILocation(line: 61, column: 7, scope: !913)
!937 = !DILocation(line: 64, column: 11, scope: !938)
!938 = distinct !DILexicalBlock(scope: !939, file: !44, line: 64, column: 11)
!939 = distinct !DILexicalBlock(scope: !930, file: !44, line: 62, column: 5)
!940 = !DILocation(line: 64, column: 36, scope: !938)
!941 = !DILocation(line: 64, column: 11, scope: !939)
!942 = !DILocation(line: 66, column: 24, scope: !943)
!943 = distinct !DILexicalBlock(scope: !938, file: !44, line: 65, column: 9)
!944 = !DILocation(line: 70, column: 41, scope: !943)
!945 = !DILocation(line: 72, column: 9, scope: !943)
!946 = !DILocation(line: 84, column: 16, scope: !913)
!947 = !DILocation(line: 90, column: 27, scope: !913)
!948 = !DILocation(line: 92, column: 1, scope: !913)
!949 = distinct !DISubprogram(name: "clone_quoting_options", scope: !52, file: !52, line: 122, type: !950, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !953)
!950 = !DISubroutineType(types: !951)
!951 = !{!952, !952}
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!953 = !{!954, !955, !956}
!954 = !DILocalVariable(name: "o", arg: 1, scope: !949, file: !52, line: 122, type: !952)
!955 = !DILocalVariable(name: "e", scope: !949, file: !52, line: 124, type: !23)
!956 = !DILocalVariable(name: "p", scope: !949, file: !52, line: 125, type: !952)
!957 = !DILocation(line: 0, scope: !949)
!958 = !DILocation(line: 124, column: 11, scope: !949)
!959 = !DILocation(line: 125, column: 40, scope: !949)
!960 = !DILocation(line: 125, column: 31, scope: !949)
!961 = !DILocation(line: 127, column: 9, scope: !949)
!962 = !DILocation(line: 128, column: 3, scope: !949)
!963 = distinct !DISubprogram(name: "get_quoting_style", scope: !52, file: !52, line: 133, type: !964, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !968)
!964 = !DISubroutineType(types: !965)
!965 = !{!54, !966}
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!968 = !{!969}
!969 = !DILocalVariable(name: "o", arg: 1, scope: !963, file: !52, line: 133, type: !966)
!970 = !DILocation(line: 0, scope: !963)
!971 = !DILocation(line: 135, column: 11, scope: !963)
!972 = !DILocation(line: 135, column: 46, scope: !963)
!973 = !{!974, !597, i64 0}
!974 = !{!"quoting_options", !597, i64 0, !740, i64 4, !597, i64 8, !596, i64 40, !596, i64 48}
!975 = !DILocation(line: 135, column: 3, scope: !963)
!976 = distinct !DISubprogram(name: "set_quoting_style", scope: !52, file: !52, line: 141, type: !977, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !979)
!977 = !DISubroutineType(types: !978)
!978 = !{null, !952, !54}
!979 = !{!980, !981}
!980 = !DILocalVariable(name: "o", arg: 1, scope: !976, file: !52, line: 141, type: !952)
!981 = !DILocalVariable(name: "s", arg: 2, scope: !976, file: !52, line: 141, type: !54)
!982 = !DILocation(line: 0, scope: !976)
!983 = !DILocation(line: 143, column: 4, scope: !976)
!984 = !DILocation(line: 143, column: 39, scope: !976)
!985 = !DILocation(line: 143, column: 45, scope: !976)
!986 = !DILocation(line: 144, column: 1, scope: !976)
!987 = distinct !DISubprogram(name: "set_char_quoting", scope: !52, file: !52, line: 152, type: !988, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !990)
!988 = !DISubroutineType(types: !989)
!989 = !{!23, !952, !8, !23}
!990 = !{!991, !992, !993, !994, !996, !998, !999}
!991 = !DILocalVariable(name: "o", arg: 1, scope: !987, file: !52, line: 152, type: !952)
!992 = !DILocalVariable(name: "c", arg: 2, scope: !987, file: !52, line: 152, type: !8)
!993 = !DILocalVariable(name: "i", arg: 3, scope: !987, file: !52, line: 152, type: !23)
!994 = !DILocalVariable(name: "uc", scope: !987, file: !52, line: 154, type: !995)
!995 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!996 = !DILocalVariable(name: "p", scope: !987, file: !52, line: 155, type: !997)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!998 = !DILocalVariable(name: "shift", scope: !987, file: !52, line: 157, type: !23)
!999 = !DILocalVariable(name: "r", scope: !987, file: !52, line: 158, type: !23)
!1000 = !DILocation(line: 0, scope: !987)
!1001 = !DILocation(line: 156, column: 6, scope: !987)
!1002 = !DILocation(line: 156, column: 62, scope: !987)
!1003 = !DILocation(line: 156, column: 57, scope: !987)
!1004 = !DILocation(line: 157, column: 15, scope: !987)
!1005 = !DILocation(line: 158, column: 12, scope: !987)
!1006 = !DILocation(line: 158, column: 15, scope: !987)
!1007 = !DILocation(line: 158, column: 25, scope: !987)
!1008 = !DILocation(line: 159, column: 13, scope: !987)
!1009 = !DILocation(line: 159, column: 18, scope: !987)
!1010 = !DILocation(line: 159, column: 23, scope: !987)
!1011 = !DILocation(line: 159, column: 6, scope: !987)
!1012 = !DILocation(line: 160, column: 3, scope: !987)
!1013 = distinct !DISubprogram(name: "set_quoting_flags", scope: !52, file: !52, line: 168, type: !1014, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1016)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!23, !952, !23}
!1016 = !{!1017, !1018, !1019}
!1017 = !DILocalVariable(name: "o", arg: 1, scope: !1013, file: !52, line: 168, type: !952)
!1018 = !DILocalVariable(name: "i", arg: 2, scope: !1013, file: !52, line: 168, type: !23)
!1019 = !DILocalVariable(name: "r", scope: !1013, file: !52, line: 170, type: !23)
!1020 = !DILocation(line: 0, scope: !1013)
!1021 = !DILocation(line: 171, column: 8, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1013, file: !52, line: 171, column: 7)
!1023 = !DILocation(line: 171, column: 7, scope: !1013)
!1024 = !DILocation(line: 173, column: 10, scope: !1013)
!1025 = !{!974, !740, i64 4}
!1026 = !DILocation(line: 174, column: 12, scope: !1013)
!1027 = !DILocation(line: 175, column: 3, scope: !1013)
!1028 = distinct !DISubprogram(name: "set_custom_quoting", scope: !52, file: !52, line: 179, type: !1029, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1031)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{null, !952, !6, !6}
!1031 = !{!1032, !1033, !1034}
!1032 = !DILocalVariable(name: "o", arg: 1, scope: !1028, file: !52, line: 179, type: !952)
!1033 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1028, file: !52, line: 180, type: !6)
!1034 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1028, file: !52, line: 180, type: !6)
!1035 = !DILocation(line: 0, scope: !1028)
!1036 = !DILocation(line: 182, column: 8, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1028, file: !52, line: 182, column: 7)
!1038 = !DILocation(line: 182, column: 7, scope: !1028)
!1039 = !DILocation(line: 184, column: 6, scope: !1028)
!1040 = !DILocation(line: 184, column: 12, scope: !1028)
!1041 = !DILocation(line: 185, column: 8, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1028, file: !52, line: 185, column: 7)
!1043 = !DILocation(line: 185, column: 19, scope: !1042)
!1044 = !DILocation(line: 186, column: 5, scope: !1042)
!1045 = !DILocation(line: 187, column: 6, scope: !1028)
!1046 = !DILocation(line: 187, column: 17, scope: !1028)
!1047 = !{!974, !596, i64 40}
!1048 = !DILocation(line: 188, column: 6, scope: !1028)
!1049 = !DILocation(line: 188, column: 18, scope: !1028)
!1050 = !{!974, !596, i64 48}
!1051 = !DILocation(line: 189, column: 1, scope: !1028)
!1052 = distinct !DISubprogram(name: "quotearg_buffer", scope: !52, file: !52, line: 784, type: !1053, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1055)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!91, !47, !91, !6, !91, !966}
!1055 = !{!1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063}
!1056 = !DILocalVariable(name: "buffer", arg: 1, scope: !1052, file: !52, line: 784, type: !47)
!1057 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1052, file: !52, line: 784, type: !91)
!1058 = !DILocalVariable(name: "arg", arg: 3, scope: !1052, file: !52, line: 785, type: !6)
!1059 = !DILocalVariable(name: "argsize", arg: 4, scope: !1052, file: !52, line: 785, type: !91)
!1060 = !DILocalVariable(name: "o", arg: 5, scope: !1052, file: !52, line: 786, type: !966)
!1061 = !DILocalVariable(name: "p", scope: !1052, file: !52, line: 788, type: !966)
!1062 = !DILocalVariable(name: "e", scope: !1052, file: !52, line: 789, type: !23)
!1063 = !DILocalVariable(name: "r", scope: !1052, file: !52, line: 790, type: !91)
!1064 = !DILocation(line: 0, scope: !1052)
!1065 = !DILocation(line: 788, column: 37, scope: !1052)
!1066 = !DILocation(line: 789, column: 11, scope: !1052)
!1067 = !DILocation(line: 791, column: 43, scope: !1052)
!1068 = !DILocation(line: 791, column: 53, scope: !1052)
!1069 = !DILocation(line: 791, column: 60, scope: !1052)
!1070 = !DILocation(line: 792, column: 43, scope: !1052)
!1071 = !DILocation(line: 792, column: 58, scope: !1052)
!1072 = !DILocation(line: 790, column: 14, scope: !1052)
!1073 = !DILocation(line: 793, column: 9, scope: !1052)
!1074 = !DILocation(line: 794, column: 3, scope: !1052)
!1075 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !52, file: !52, line: 256, type: !1076, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1080)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!91, !47, !91, !6, !91, !54, !23, !1078, !6, !6}
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!1080 = !{!1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1105, !1106, !1107, !1108, !1109, !1112, !1113, !1131, !1134, !1135, !1142, !1145, !1146, !1147, !1148, !1149, !1150}
!1081 = !DILocalVariable(name: "buffer", arg: 1, scope: !1075, file: !52, line: 256, type: !47)
!1082 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1075, file: !52, line: 256, type: !91)
!1083 = !DILocalVariable(name: "arg", arg: 3, scope: !1075, file: !52, line: 257, type: !6)
!1084 = !DILocalVariable(name: "argsize", arg: 4, scope: !1075, file: !52, line: 257, type: !91)
!1085 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1075, file: !52, line: 258, type: !54)
!1086 = !DILocalVariable(name: "flags", arg: 6, scope: !1075, file: !52, line: 258, type: !23)
!1087 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1075, file: !52, line: 259, type: !1078)
!1088 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1075, file: !52, line: 260, type: !6)
!1089 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1075, file: !52, line: 261, type: !6)
!1090 = !DILocalVariable(name: "i", scope: !1075, file: !52, line: 263, type: !91)
!1091 = !DILocalVariable(name: "len", scope: !1075, file: !52, line: 264, type: !91)
!1092 = !DILocalVariable(name: "orig_buffersize", scope: !1075, file: !52, line: 265, type: !91)
!1093 = !DILocalVariable(name: "quote_string", scope: !1075, file: !52, line: 266, type: !6)
!1094 = !DILocalVariable(name: "quote_string_len", scope: !1075, file: !52, line: 267, type: !91)
!1095 = !DILocalVariable(name: "backslash_escapes", scope: !1075, file: !52, line: 268, type: !16)
!1096 = !DILocalVariable(name: "unibyte_locale", scope: !1075, file: !52, line: 269, type: !16)
!1097 = !DILocalVariable(name: "elide_outer_quotes", scope: !1075, file: !52, line: 270, type: !16)
!1098 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1075, file: !52, line: 271, type: !16)
!1099 = !DILocalVariable(name: "encountered_single_quote", scope: !1075, file: !52, line: 272, type: !16)
!1100 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1075, file: !52, line: 273, type: !16)
!1101 = !DILocalVariable(name: "c", scope: !1102, file: !52, line: 402, type: !995)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !52, line: 401, column: 5)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !52, line: 400, column: 3)
!1104 = distinct !DILexicalBlock(scope: !1075, file: !52, line: 400, column: 3)
!1105 = !DILocalVariable(name: "esc", scope: !1102, file: !52, line: 403, type: !995)
!1106 = !DILocalVariable(name: "is_right_quote", scope: !1102, file: !52, line: 404, type: !16)
!1107 = !DILocalVariable(name: "escaping", scope: !1102, file: !52, line: 405, type: !16)
!1108 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1102, file: !52, line: 406, type: !16)
!1109 = !DILocalVariable(name: "m", scope: !1110, file: !52, line: 610, type: !91)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !52, line: 608, column: 11)
!1111 = distinct !DILexicalBlock(scope: !1102, file: !52, line: 426, column: 9)
!1112 = !DILocalVariable(name: "printable", scope: !1110, file: !52, line: 612, type: !16)
!1113 = !DILocalVariable(name: "mbstate", scope: !1114, file: !52, line: 621, type: !1116)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !52, line: 620, column: 15)
!1115 = distinct !DILexicalBlock(scope: !1110, file: !52, line: 614, column: 17)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1117, line: 6, baseType: !1118)
!1117 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1119, line: 21, baseType: !1120)
!1119 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1119, line: 13, size: 64, elements: !1121)
!1121 = !{!1122, !1123}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1120, file: !1119, line: 15, baseType: !23, size: 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1120, file: !1119, line: 20, baseType: !1124, size: 32, offset: 32)
!1124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1120, file: !1119, line: 16, size: 32, elements: !1125)
!1125 = !{!1126, !1127}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1124, file: !1119, line: 18, baseType: !56, size: 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1124, file: !1119, line: 19, baseType: !1128, size: 32)
!1128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !1129)
!1129 = !{!1130}
!1130 = !DISubrange(count: 4)
!1131 = !DILocalVariable(name: "w", scope: !1132, file: !52, line: 631, type: !1133)
!1132 = distinct !DILexicalBlock(scope: !1114, file: !52, line: 630, column: 19)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !92, line: 74, baseType: !23)
!1134 = !DILocalVariable(name: "bytes", scope: !1132, file: !52, line: 632, type: !91)
!1135 = !DILocalVariable(name: "j", scope: !1136, file: !52, line: 657, type: !91)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !52, line: 656, column: 27)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !52, line: 654, column: 29)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !52, line: 649, column: 23)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !52, line: 641, column: 30)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !52, line: 636, column: 30)
!1141 = distinct !DILexicalBlock(scope: !1132, file: !52, line: 634, column: 25)
!1142 = !DILocalVariable(name: "ilim", scope: !1143, file: !52, line: 684, type: !91)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !52, line: 681, column: 15)
!1144 = distinct !DILexicalBlock(scope: !1110, file: !52, line: 680, column: 17)
!1145 = !DILabel(scope: !1075, name: "process_input", file: !52, line: 314)
!1146 = !DILabel(scope: !1111, name: "c_and_shell_escape", file: !52, line: 512)
!1147 = !DILabel(scope: !1111, name: "c_escape", file: !52, line: 517)
!1148 = !DILabel(scope: !1102, name: "store_escape", file: !52, line: 719)
!1149 = !DILabel(scope: !1102, name: "store_c", file: !52, line: 722)
!1150 = !DILabel(scope: !1075, name: "force_outer_quoting_style", file: !52, line: 763)
!1151 = !DILocation(line: 0, scope: !1075)
!1152 = !DILocation(line: 269, column: 25, scope: !1075)
!1153 = !DILocation(line: 269, column: 36, scope: !1075)
!1154 = !DILocation(line: 270, column: 8, scope: !1075)
!1155 = !DILocation(line: 273, column: 3, scope: !1075)
!1156 = !DILocation(line: 265, column: 10, scope: !1075)
!1157 = !DILocation(line: 266, column: 15, scope: !1075)
!1158 = !DILocation(line: 267, column: 10, scope: !1075)
!1159 = !DILocation(line: 268, column: 8, scope: !1075)
!1160 = !DILocation(line: 271, column: 8, scope: !1075)
!1161 = !DILocation(line: 272, column: 8, scope: !1075)
!1162 = !DILocation(line: 273, column: 8, scope: !1075)
!1163 = !DILocation(line: 314, column: 2, scope: !1075)
!1164 = !DILocation(line: 316, column: 3, scope: !1075)
!1165 = !DILocation(line: 323, column: 11, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1075, file: !52, line: 317, column: 5)
!1167 = !DILocation(line: 323, column: 12, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1166, file: !52, line: 323, column: 11)
!1169 = !DILocation(line: 324, column: 9, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !52, line: 324, column: 9)
!1171 = distinct !DILexicalBlock(scope: !1168, file: !52, line: 324, column: 9)
!1172 = !DILocation(line: 324, column: 9, scope: !1171)
!1173 = !{!597, !597, i64 0}
!1174 = !DILocation(line: 362, column: 26, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !52, line: 340, column: 11)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !52, line: 339, column: 13)
!1177 = distinct !DILexicalBlock(scope: !1166, file: !52, line: 338, column: 7)
!1178 = !DILocation(line: 363, column: 27, scope: !1175)
!1179 = !DILocation(line: 364, column: 11, scope: !1175)
!1180 = !DILocation(line: 365, column: 14, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1177, file: !52, line: 365, column: 13)
!1182 = !DILocation(line: 365, column: 13, scope: !1177)
!1183 = !DILocation(line: 366, column: 43, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !52, line: 366, column: 11)
!1185 = distinct !DILexicalBlock(scope: !1181, file: !52, line: 366, column: 11)
!1186 = !DILocation(line: 366, column: 11, scope: !1185)
!1187 = !DILocation(line: 367, column: 13, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !52, line: 367, column: 13)
!1189 = distinct !DILexicalBlock(scope: !1184, file: !52, line: 367, column: 13)
!1190 = !DILocation(line: 367, column: 13, scope: !1189)
!1191 = !DILocation(line: 366, column: 70, scope: !1184)
!1192 = distinct !{!1192, !1186, !1193, !636}
!1193 = !DILocation(line: 367, column: 13, scope: !1185)
!1194 = !DILocation(line: 264, column: 10, scope: !1075)
!1195 = !DILocation(line: 370, column: 28, scope: !1177)
!1196 = !DILocation(line: 372, column: 7, scope: !1166)
!1197 = !DILocation(line: 376, column: 7, scope: !1166)
!1198 = !DILocation(line: 379, column: 7, scope: !1166)
!1199 = !DILocation(line: 381, column: 12, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1166, file: !52, line: 381, column: 11)
!1201 = !DILocation(line: 381, column: 11, scope: !1166)
!1202 = !DILocation(line: 386, column: 12, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1166, file: !52, line: 386, column: 11)
!1204 = !DILocation(line: 386, column: 11, scope: !1166)
!1205 = !DILocation(line: 387, column: 9, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !52, line: 387, column: 9)
!1207 = distinct !DILexicalBlock(scope: !1203, file: !52, line: 387, column: 9)
!1208 = !DILocation(line: 387, column: 9, scope: !1207)
!1209 = !DILocation(line: 394, column: 7, scope: !1166)
!1210 = !DILocation(line: 397, column: 7, scope: !1166)
!1211 = !DILocation(line: 400, column: 8, scope: !1104)
!1212 = !DILocation(line: 0, scope: !1104)
!1213 = !DILocation(line: 400, column: 27, scope: !1103)
!1214 = !DILocation(line: 400, column: 19, scope: !1103)
!1215 = !DILocation(line: 400, column: 41, scope: !1103)
!1216 = !DILocation(line: 400, column: 48, scope: !1103)
!1217 = !DILocation(line: 400, column: 3, scope: !1104)
!1218 = !DILocation(line: 400, column: 60, scope: !1103)
!1219 = !DILocation(line: 0, scope: !1102)
!1220 = !DILocation(line: 409, column: 11, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1102, file: !52, line: 408, column: 11)
!1222 = !DILocation(line: 411, column: 17, scope: !1221)
!1223 = !DILocation(line: 412, column: 39, scope: !1221)
!1224 = !DILocation(line: 416, column: 32, scope: !1221)
!1225 = !DILocation(line: 412, column: 19, scope: !1221)
!1226 = !DILocation(line: 412, column: 15, scope: !1221)
!1227 = !DILocation(line: 417, column: 11, scope: !1221)
!1228 = !DILocation(line: 417, column: 26, scope: !1221)
!1229 = !DILocation(line: 417, column: 14, scope: !1221)
!1230 = !DILocation(line: 417, column: 63, scope: !1221)
!1231 = !DILocation(line: 408, column: 11, scope: !1102)
!1232 = !DILocation(line: 424, column: 11, scope: !1102)
!1233 = !DILocation(line: 425, column: 7, scope: !1102)
!1234 = !DILocation(line: 428, column: 15, scope: !1111)
!1235 = !DILocation(line: 430, column: 15, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !52, line: 430, column: 15)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !52, line: 429, column: 13)
!1238 = distinct !DILexicalBlock(scope: !1111, file: !52, line: 428, column: 15)
!1239 = !DILocation(line: 430, column: 15, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1236, file: !52, line: 430, column: 15)
!1241 = !DILocation(line: 430, column: 15, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !52, line: 430, column: 15)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !52, line: 430, column: 15)
!1244 = distinct !DILexicalBlock(scope: !1240, file: !52, line: 430, column: 15)
!1245 = !DILocation(line: 430, column: 15, scope: !1243)
!1246 = !DILocation(line: 430, column: 15, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !52, line: 430, column: 15)
!1248 = distinct !DILexicalBlock(scope: !1244, file: !52, line: 430, column: 15)
!1249 = !DILocation(line: 430, column: 15, scope: !1248)
!1250 = !DILocation(line: 430, column: 15, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !52, line: 430, column: 15)
!1252 = distinct !DILexicalBlock(scope: !1244, file: !52, line: 430, column: 15)
!1253 = !DILocation(line: 430, column: 15, scope: !1252)
!1254 = !DILocation(line: 430, column: 15, scope: !1244)
!1255 = !DILocation(line: 430, column: 15, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !52, line: 430, column: 15)
!1257 = distinct !DILexicalBlock(scope: !1236, file: !52, line: 430, column: 15)
!1258 = !DILocation(line: 430, column: 15, scope: !1257)
!1259 = !DILocation(line: 438, column: 19, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1237, file: !52, line: 437, column: 19)
!1261 = !DILocation(line: 438, column: 48, scope: !1260)
!1262 = !DILocation(line: 438, column: 59, scope: !1260)
!1263 = !DILocation(line: 440, column: 19, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !52, line: 440, column: 19)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !52, line: 440, column: 19)
!1266 = distinct !DILexicalBlock(scope: !1260, file: !52, line: 439, column: 17)
!1267 = !DILocation(line: 440, column: 19, scope: !1265)
!1268 = !DILocation(line: 441, column: 19, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !52, line: 441, column: 19)
!1270 = distinct !DILexicalBlock(scope: !1266, file: !52, line: 441, column: 19)
!1271 = !DILocation(line: 441, column: 19, scope: !1270)
!1272 = !DILocation(line: 442, column: 17, scope: !1266)
!1273 = !DILocation(line: 449, column: 20, scope: !1238)
!1274 = !DILocation(line: 454, column: 11, scope: !1111)
!1275 = !DILocation(line: 457, column: 19, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1111, file: !52, line: 455, column: 13)
!1277 = !DILocation(line: 463, column: 19, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1276, file: !52, line: 462, column: 19)
!1279 = !DILocation(line: 463, column: 47, scope: !1278)
!1280 = !DILocation(line: 463, column: 41, scope: !1278)
!1281 = !DILocation(line: 463, column: 52, scope: !1278)
!1282 = !DILocation(line: 462, column: 19, scope: !1276)
!1283 = !DILocation(line: 464, column: 25, scope: !1278)
!1284 = !DILocation(line: 464, column: 17, scope: !1278)
!1285 = !DILocation(line: 471, column: 25, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1278, file: !52, line: 465, column: 19)
!1287 = !DILocation(line: 475, column: 21, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !52, line: 475, column: 21)
!1289 = distinct !DILexicalBlock(scope: !1286, file: !52, line: 475, column: 21)
!1290 = !DILocation(line: 475, column: 21, scope: !1289)
!1291 = !DILocation(line: 476, column: 21, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !52, line: 476, column: 21)
!1293 = distinct !DILexicalBlock(scope: !1286, file: !52, line: 476, column: 21)
!1294 = !DILocation(line: 476, column: 21, scope: !1293)
!1295 = !DILocation(line: 477, column: 21, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !52, line: 477, column: 21)
!1297 = distinct !DILexicalBlock(scope: !1286, file: !52, line: 477, column: 21)
!1298 = !DILocation(line: 477, column: 21, scope: !1297)
!1299 = !DILocation(line: 478, column: 21, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !52, line: 478, column: 21)
!1301 = distinct !DILexicalBlock(scope: !1286, file: !52, line: 478, column: 21)
!1302 = !DILocation(line: 478, column: 21, scope: !1301)
!1303 = !DILocation(line: 479, column: 21, scope: !1286)
!1304 = !DILocation(line: 492, column: 31, scope: !1111)
!1305 = !DILocation(line: 493, column: 31, scope: !1111)
!1306 = !DILocation(line: 495, column: 31, scope: !1111)
!1307 = !DILocation(line: 496, column: 31, scope: !1111)
!1308 = !DILocation(line: 497, column: 31, scope: !1111)
!1309 = !DILocation(line: 500, column: 15, scope: !1111)
!1310 = !DILocation(line: 502, column: 19, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !52, line: 501, column: 13)
!1312 = distinct !DILexicalBlock(scope: !1111, file: !52, line: 500, column: 15)
!1313 = !DILocation(line: 509, column: 33, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1111, file: !52, line: 509, column: 15)
!1315 = !DILocation(line: 0, scope: !1111)
!1316 = !DILocation(line: 512, column: 9, scope: !1111)
!1317 = !DILocation(line: 514, column: 15, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1111, file: !52, line: 513, column: 15)
!1319 = !DILocation(line: 517, column: 9, scope: !1111)
!1320 = !DILocation(line: 518, column: 15, scope: !1111)
!1321 = !DILocation(line: 526, column: 15, scope: !1111)
!1322 = !DILocation(line: 526, column: 40, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1111, file: !52, line: 526, column: 15)
!1324 = !DILocation(line: 526, column: 47, scope: !1323)
!1325 = !DILocation(line: 526, column: 18, scope: !1323)
!1326 = !DILocation(line: 530, column: 17, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1111, file: !52, line: 530, column: 15)
!1328 = !DILocation(line: 530, column: 15, scope: !1111)
!1329 = !DILocation(line: 535, column: 11, scope: !1111)
!1330 = !DILocation(line: 549, column: 15, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1111, file: !52, line: 548, column: 15)
!1332 = !DILocation(line: 556, column: 15, scope: !1111)
!1333 = !DILocation(line: 558, column: 19, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !52, line: 557, column: 13)
!1335 = distinct !DILexicalBlock(scope: !1111, file: !52, line: 556, column: 15)
!1336 = !DILocation(line: 561, column: 19, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1334, file: !52, line: 561, column: 19)
!1338 = !DILocation(line: 561, column: 30, scope: !1337)
!1339 = !DILocation(line: 570, column: 15, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !52, line: 570, column: 15)
!1341 = distinct !DILexicalBlock(scope: !1334, file: !52, line: 570, column: 15)
!1342 = !DILocation(line: 570, column: 15, scope: !1341)
!1343 = !DILocation(line: 571, column: 15, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !52, line: 571, column: 15)
!1345 = distinct !DILexicalBlock(scope: !1334, file: !52, line: 571, column: 15)
!1346 = !DILocation(line: 571, column: 15, scope: !1345)
!1347 = !DILocation(line: 572, column: 15, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !52, line: 572, column: 15)
!1349 = distinct !DILexicalBlock(scope: !1334, file: !52, line: 572, column: 15)
!1350 = !DILocation(line: 572, column: 15, scope: !1349)
!1351 = !DILocation(line: 574, column: 13, scope: !1334)
!1352 = !DILocation(line: 614, column: 17, scope: !1110)
!1353 = !DILocation(line: 0, scope: !1110)
!1354 = !DILocation(line: 617, column: 29, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1115, file: !52, line: 615, column: 15)
!1356 = !{!1357, !1357, i64 0}
!1357 = !{!"short", !597, i64 0}
!1358 = !DILocation(line: 617, column: 27, scope: !1355)
!1359 = !DILocation(line: 678, column: 40, scope: !1110)
!1360 = !DILocation(line: 680, column: 23, scope: !1144)
!1361 = !DILocation(line: 621, column: 17, scope: !1114)
!1362 = !DILocation(line: 621, column: 27, scope: !1114)
!1363 = !DILocalVariable(name: "__dest", arg: 1, scope: !1364, file: !1365, line: 57, type: !46)
!1364 = distinct !DISubprogram(name: "memset", scope: !1365, file: !1365, line: 57, type: !1366, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1368)
!1365 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!46, !46, !23, !91}
!1368 = !{!1363, !1369, !1370}
!1369 = !DILocalVariable(name: "__ch", arg: 2, scope: !1364, file: !1365, line: 57, type: !23)
!1370 = !DILocalVariable(name: "__len", arg: 3, scope: !1364, file: !1365, line: 57, type: !91)
!1371 = !DILocation(line: 0, scope: !1364, inlinedAt: !1372)
!1372 = distinct !DILocation(line: 622, column: 17, scope: !1114)
!1373 = !DILocation(line: 59, column: 10, scope: !1364, inlinedAt: !1372)
!1374 = !DILocation(line: 626, column: 29, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1114, file: !52, line: 626, column: 21)
!1376 = !DILocation(line: 626, column: 21, scope: !1114)
!1377 = !DILocation(line: 627, column: 29, scope: !1375)
!1378 = !DILocation(line: 627, column: 19, scope: !1375)
!1379 = !DILocation(line: 629, column: 17, scope: !1114)
!1380 = !DILocation(line: 624, column: 19, scope: !1114)
!1381 = !DILocation(line: 625, column: 27, scope: !1114)
!1382 = !DILocation(line: 631, column: 21, scope: !1132)
!1383 = !DILocation(line: 632, column: 56, scope: !1132)
!1384 = !DILocation(line: 632, column: 50, scope: !1132)
!1385 = !DILocation(line: 633, column: 53, scope: !1132)
!1386 = !DILocation(line: 0, scope: !1132)
!1387 = !DILocation(line: 632, column: 36, scope: !1132)
!1388 = !DILocation(line: 634, column: 25, scope: !1132)
!1389 = !DILocation(line: 644, column: 38, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1139, file: !52, line: 642, column: 23)
!1391 = !DILocation(line: 644, column: 48, scope: !1390)
!1392 = !DILocation(line: 644, column: 25, scope: !1390)
!1393 = !DILocation(line: 644, column: 51, scope: !1390)
!1394 = !DILocation(line: 645, column: 28, scope: !1390)
!1395 = !DILocation(line: 644, column: 34, scope: !1390)
!1396 = distinct !{!1396, !1392, !1394, !636}
!1397 = !DILocation(line: 655, column: 29, scope: !1137)
!1398 = !DILocation(line: 0, scope: !1136)
!1399 = !DILocation(line: 659, column: 49, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !52, line: 658, column: 29)
!1401 = distinct !DILexicalBlock(scope: !1136, file: !52, line: 658, column: 29)
!1402 = !DILocation(line: 659, column: 39, scope: !1400)
!1403 = !DILocation(line: 659, column: 31, scope: !1400)
!1404 = !DILocation(line: 658, column: 53, scope: !1400)
!1405 = !DILocation(line: 658, column: 43, scope: !1400)
!1406 = !DILocation(line: 658, column: 29, scope: !1401)
!1407 = distinct !{!1407, !1406, !1408, !636}
!1408 = !DILocation(line: 667, column: 33, scope: !1401)
!1409 = !DILocation(line: 674, column: 19, scope: !1114)
!1410 = !DILocation(line: 670, column: 41, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1138, file: !52, line: 670, column: 29)
!1412 = !DILocation(line: 670, column: 31, scope: !1411)
!1413 = !DILocation(line: 670, column: 29, scope: !1138)
!1414 = !DILocation(line: 672, column: 27, scope: !1138)
!1415 = !DILocation(line: 675, column: 26, scope: !1114)
!1416 = !DILocation(line: 675, column: 24, scope: !1114)
!1417 = !DILocation(line: 674, column: 19, scope: !1132)
!1418 = distinct !{!1418, !1379, !1419, !636}
!1419 = !DILocation(line: 675, column: 44, scope: !1114)
!1420 = !DILocation(line: 676, column: 15, scope: !1115)
!1421 = !DILocation(line: 680, column: 19, scope: !1144)
!1422 = !DILocation(line: 680, column: 45, scope: !1144)
!1423 = !DILocation(line: 684, column: 33, scope: !1143)
!1424 = !DILocation(line: 0, scope: !1143)
!1425 = !DILocation(line: 686, column: 17, scope: !1143)
!1426 = !DILocation(line: 405, column: 12, scope: !1102)
!1427 = !DILocation(line: 688, column: 43, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !52, line: 688, column: 25)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !52, line: 687, column: 19)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !52, line: 686, column: 17)
!1431 = distinct !DILexicalBlock(scope: !1143, file: !52, line: 686, column: 17)
!1432 = !DILocation(line: 690, column: 25, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !52, line: 690, column: 25)
!1434 = distinct !DILexicalBlock(scope: !1428, file: !52, line: 689, column: 23)
!1435 = !DILocation(line: 690, column: 25, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1433, file: !52, line: 690, column: 25)
!1437 = !DILocation(line: 690, column: 25, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !52, line: 690, column: 25)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !52, line: 690, column: 25)
!1440 = distinct !DILexicalBlock(scope: !1436, file: !52, line: 690, column: 25)
!1441 = !DILocation(line: 690, column: 25, scope: !1439)
!1442 = !DILocation(line: 690, column: 25, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !52, line: 690, column: 25)
!1444 = distinct !DILexicalBlock(scope: !1440, file: !52, line: 690, column: 25)
!1445 = !DILocation(line: 690, column: 25, scope: !1444)
!1446 = !DILocation(line: 690, column: 25, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !52, line: 690, column: 25)
!1448 = distinct !DILexicalBlock(scope: !1440, file: !52, line: 690, column: 25)
!1449 = !DILocation(line: 690, column: 25, scope: !1448)
!1450 = !DILocation(line: 690, column: 25, scope: !1440)
!1451 = !DILocation(line: 690, column: 25, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !52, line: 690, column: 25)
!1453 = distinct !DILexicalBlock(scope: !1433, file: !52, line: 690, column: 25)
!1454 = !DILocation(line: 690, column: 25, scope: !1453)
!1455 = !DILocation(line: 691, column: 25, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !52, line: 691, column: 25)
!1457 = distinct !DILexicalBlock(scope: !1434, file: !52, line: 691, column: 25)
!1458 = !DILocation(line: 691, column: 25, scope: !1457)
!1459 = !DILocation(line: 692, column: 25, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !52, line: 692, column: 25)
!1461 = distinct !DILexicalBlock(scope: !1434, file: !52, line: 692, column: 25)
!1462 = !DILocation(line: 692, column: 25, scope: !1461)
!1463 = !DILocation(line: 693, column: 38, scope: !1434)
!1464 = !DILocation(line: 693, column: 33, scope: !1434)
!1465 = !DILocation(line: 694, column: 23, scope: !1434)
!1466 = !DILocation(line: 695, column: 30, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1428, file: !52, line: 695, column: 30)
!1468 = !DILocation(line: 695, column: 30, scope: !1428)
!1469 = !DILocation(line: 697, column: 25, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !52, line: 697, column: 25)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !52, line: 697, column: 25)
!1472 = distinct !DILexicalBlock(scope: !1467, file: !52, line: 696, column: 23)
!1473 = !DILocation(line: 697, column: 25, scope: !1471)
!1474 = !DILocation(line: 699, column: 23, scope: !1472)
!1475 = !DILocation(line: 700, column: 35, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1429, file: !52, line: 700, column: 25)
!1477 = !DILocation(line: 700, column: 30, scope: !1476)
!1478 = !DILocation(line: 700, column: 25, scope: !1429)
!1479 = !DILocation(line: 702, column: 21, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !52, line: 702, column: 21)
!1481 = distinct !DILexicalBlock(scope: !1429, file: !52, line: 702, column: 21)
!1482 = !DILocation(line: 702, column: 21, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !52, line: 702, column: 21)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !52, line: 702, column: 21)
!1485 = distinct !DILexicalBlock(scope: !1480, file: !52, line: 702, column: 21)
!1486 = !DILocation(line: 702, column: 21, scope: !1484)
!1487 = !DILocation(line: 702, column: 21, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !52, line: 702, column: 21)
!1489 = distinct !DILexicalBlock(scope: !1485, file: !52, line: 702, column: 21)
!1490 = !DILocation(line: 702, column: 21, scope: !1489)
!1491 = !DILocation(line: 702, column: 21, scope: !1485)
!1492 = !DILocation(line: 0, scope: !1429)
!1493 = !DILocation(line: 703, column: 21, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !52, line: 703, column: 21)
!1495 = distinct !DILexicalBlock(scope: !1429, file: !52, line: 703, column: 21)
!1496 = !DILocation(line: 703, column: 21, scope: !1495)
!1497 = !DILocation(line: 704, column: 25, scope: !1429)
!1498 = !DILocation(line: 686, column: 17, scope: !1430)
!1499 = distinct !{!1499, !1500, !1501}
!1500 = !DILocation(line: 686, column: 17, scope: !1431)
!1501 = !DILocation(line: 705, column: 19, scope: !1431)
!1502 = !DILocation(line: 416, column: 30, scope: !1221)
!1503 = !DILocation(line: 712, column: 34, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1102, file: !52, line: 712, column: 11)
!1505 = !DILocation(line: 715, column: 35, scope: !1504)
!1506 = !DILocation(line: 715, column: 17, scope: !1504)
!1507 = !DILocation(line: 715, column: 47, scope: !1504)
!1508 = !DILocation(line: 715, column: 65, scope: !1504)
!1509 = !DILocation(line: 716, column: 11, scope: !1504)
!1510 = !DILocation(line: 712, column: 11, scope: !1102)
!1511 = !DILocation(line: 400, column: 10, scope: !1104)
!1512 = !DILocation(line: 719, column: 5, scope: !1102)
!1513 = !DILocation(line: 720, column: 7, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1102, file: !52, line: 720, column: 7)
!1515 = !DILocation(line: 720, column: 7, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1514, file: !52, line: 720, column: 7)
!1517 = !DILocation(line: 720, column: 7, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !52, line: 720, column: 7)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !52, line: 720, column: 7)
!1520 = distinct !DILexicalBlock(scope: !1516, file: !52, line: 720, column: 7)
!1521 = !DILocation(line: 720, column: 7, scope: !1519)
!1522 = !DILocation(line: 720, column: 7, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !52, line: 720, column: 7)
!1524 = distinct !DILexicalBlock(scope: !1520, file: !52, line: 720, column: 7)
!1525 = !DILocation(line: 720, column: 7, scope: !1524)
!1526 = !DILocation(line: 720, column: 7, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !52, line: 720, column: 7)
!1528 = distinct !DILexicalBlock(scope: !1520, file: !52, line: 720, column: 7)
!1529 = !DILocation(line: 720, column: 7, scope: !1528)
!1530 = !DILocation(line: 720, column: 7, scope: !1520)
!1531 = !DILocation(line: 720, column: 7, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !52, line: 720, column: 7)
!1533 = distinct !DILexicalBlock(scope: !1514, file: !52, line: 720, column: 7)
!1534 = !DILocation(line: 720, column: 7, scope: !1533)
!1535 = !DILocation(line: 722, column: 5, scope: !1102)
!1536 = !DILocation(line: 723, column: 7, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !52, line: 723, column: 7)
!1538 = distinct !DILexicalBlock(scope: !1102, file: !52, line: 723, column: 7)
!1539 = !DILocation(line: 424, column: 9, scope: !1102)
!1540 = !DILocation(line: 723, column: 7, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !52, line: 723, column: 7)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !52, line: 723, column: 7)
!1543 = distinct !DILexicalBlock(scope: !1537, file: !52, line: 723, column: 7)
!1544 = !DILocation(line: 723, column: 7, scope: !1542)
!1545 = !DILocation(line: 723, column: 7, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !52, line: 723, column: 7)
!1547 = distinct !DILexicalBlock(scope: !1543, file: !52, line: 723, column: 7)
!1548 = !DILocation(line: 723, column: 7, scope: !1547)
!1549 = !DILocation(line: 723, column: 7, scope: !1543)
!1550 = !DILocation(line: 724, column: 7, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !52, line: 724, column: 7)
!1552 = distinct !DILexicalBlock(scope: !1102, file: !52, line: 724, column: 7)
!1553 = !DILocation(line: 724, column: 7, scope: !1552)
!1554 = !DILocation(line: 726, column: 13, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1102, file: !52, line: 726, column: 11)
!1556 = !DILocation(line: 726, column: 11, scope: !1102)
!1557 = !DILocation(line: 728, column: 5, scope: !1103)
!1558 = !DILocation(line: 400, column: 75, scope: !1103)
!1559 = !DILocation(line: 400, column: 3, scope: !1103)
!1560 = distinct !{!1560, !1217, !1561, !636}
!1561 = !DILocation(line: 728, column: 5, scope: !1104)
!1562 = !DILocation(line: 730, column: 11, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1075, file: !52, line: 730, column: 7)
!1564 = !DILocation(line: 730, column: 16, scope: !1563)
!1565 = !DILocation(line: 738, column: 51, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1075, file: !52, line: 738, column: 7)
!1567 = !DILocation(line: 741, column: 11, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !52, line: 741, column: 11)
!1569 = distinct !DILexicalBlock(scope: !1566, file: !52, line: 740, column: 5)
!1570 = !DILocation(line: 741, column: 11, scope: !1569)
!1571 = !DILocation(line: 742, column: 16, scope: !1568)
!1572 = !DILocation(line: 742, column: 9, scope: !1568)
!1573 = !DILocation(line: 746, column: 18, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1568, file: !52, line: 746, column: 16)
!1575 = !DILocation(line: 746, column: 29, scope: !1574)
!1576 = !DILocation(line: 755, column: 7, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1075, file: !52, line: 755, column: 7)
!1578 = !DILocation(line: 755, column: 20, scope: !1577)
!1579 = !DILocation(line: 756, column: 12, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !52, line: 756, column: 5)
!1581 = distinct !DILexicalBlock(scope: !1577, file: !52, line: 756, column: 5)
!1582 = !DILocation(line: 756, column: 5, scope: !1581)
!1583 = !DILocation(line: 757, column: 7, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !52, line: 757, column: 7)
!1585 = distinct !DILexicalBlock(scope: !1580, file: !52, line: 757, column: 7)
!1586 = !DILocation(line: 757, column: 7, scope: !1585)
!1587 = !DILocation(line: 756, column: 39, scope: !1580)
!1588 = distinct !{!1588, !1582, !1589, !636}
!1589 = !DILocation(line: 757, column: 7, scope: !1581)
!1590 = !DILocation(line: 759, column: 11, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1075, file: !52, line: 759, column: 7)
!1592 = !DILocation(line: 759, column: 7, scope: !1075)
!1593 = !DILocation(line: 760, column: 5, scope: !1591)
!1594 = !DILocation(line: 760, column: 17, scope: !1591)
!1595 = !DILocation(line: 763, column: 2, scope: !1075)
!1596 = !DILocation(line: 766, column: 51, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1075, file: !52, line: 766, column: 7)
!1598 = !DILocation(line: 766, column: 21, scope: !1597)
!1599 = !DILocation(line: 770, column: 42, scope: !1075)
!1600 = !DILocation(line: 768, column: 10, scope: !1075)
!1601 = !DILocation(line: 768, column: 3, scope: !1075)
!1602 = !DILocation(line: 772, column: 1, scope: !1075)
!1603 = distinct !DISubprogram(name: "gettext_quote", scope: !52, file: !52, line: 207, type: !1604, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1606)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!6, !6, !54}
!1606 = !{!1607, !1608, !1609, !1610}
!1607 = !DILocalVariable(name: "msgid", arg: 1, scope: !1603, file: !52, line: 207, type: !6)
!1608 = !DILocalVariable(name: "s", arg: 2, scope: !1603, file: !52, line: 207, type: !54)
!1609 = !DILocalVariable(name: "translation", scope: !1603, file: !52, line: 209, type: !6)
!1610 = !DILocalVariable(name: "locale_code", scope: !1603, file: !52, line: 210, type: !6)
!1611 = !DILocation(line: 0, scope: !1603)
!1612 = !DILocation(line: 209, column: 29, scope: !1603)
!1613 = !DILocation(line: 212, column: 19, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1603, file: !52, line: 212, column: 7)
!1615 = !DILocation(line: 212, column: 7, scope: !1603)
!1616 = !DILocation(line: 233, column: 17, scope: !1603)
!1617 = !DILocalVariable(name: "s1", arg: 1, scope: !1618, file: !1619, line: 160, type: !6)
!1618 = distinct !DISubprogram(name: "strcaseeq0", scope: !1619, file: !1619, line: 160, type: !1620, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1622)
!1619 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1622 = !{!1617, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632}
!1623 = !DILocalVariable(name: "s2", arg: 2, scope: !1618, file: !1619, line: 160, type: !6)
!1624 = !DILocalVariable(name: "s20", arg: 3, scope: !1618, file: !1619, line: 160, type: !8)
!1625 = !DILocalVariable(name: "s21", arg: 4, scope: !1618, file: !1619, line: 160, type: !8)
!1626 = !DILocalVariable(name: "s22", arg: 5, scope: !1618, file: !1619, line: 160, type: !8)
!1627 = !DILocalVariable(name: "s23", arg: 6, scope: !1618, file: !1619, line: 160, type: !8)
!1628 = !DILocalVariable(name: "s24", arg: 7, scope: !1618, file: !1619, line: 160, type: !8)
!1629 = !DILocalVariable(name: "s25", arg: 8, scope: !1618, file: !1619, line: 160, type: !8)
!1630 = !DILocalVariable(name: "s26", arg: 9, scope: !1618, file: !1619, line: 160, type: !8)
!1631 = !DILocalVariable(name: "s27", arg: 10, scope: !1618, file: !1619, line: 160, type: !8)
!1632 = !DILocalVariable(name: "s28", arg: 11, scope: !1618, file: !1619, line: 160, type: !8)
!1633 = !DILocation(line: 0, scope: !1618, inlinedAt: !1634)
!1634 = distinct !DILocation(line: 234, column: 7, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1603, file: !52, line: 234, column: 7)
!1636 = !DILocation(line: 162, column: 7, scope: !1637, inlinedAt: !1634)
!1637 = distinct !DILexicalBlock(scope: !1618, file: !1619, line: 162, column: 7)
!1638 = !DILocalVariable(name: "s1", arg: 1, scope: !1639, file: !1619, line: 146, type: !6)
!1639 = distinct !DISubprogram(name: "strcaseeq1", scope: !1619, file: !1619, line: 146, type: !1640, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1642)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1642 = !{!1638, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651}
!1643 = !DILocalVariable(name: "s2", arg: 2, scope: !1639, file: !1619, line: 146, type: !6)
!1644 = !DILocalVariable(name: "s21", arg: 3, scope: !1639, file: !1619, line: 146, type: !8)
!1645 = !DILocalVariable(name: "s22", arg: 4, scope: !1639, file: !1619, line: 146, type: !8)
!1646 = !DILocalVariable(name: "s23", arg: 5, scope: !1639, file: !1619, line: 146, type: !8)
!1647 = !DILocalVariable(name: "s24", arg: 6, scope: !1639, file: !1619, line: 146, type: !8)
!1648 = !DILocalVariable(name: "s25", arg: 7, scope: !1639, file: !1619, line: 146, type: !8)
!1649 = !DILocalVariable(name: "s26", arg: 8, scope: !1639, file: !1619, line: 146, type: !8)
!1650 = !DILocalVariable(name: "s27", arg: 9, scope: !1639, file: !1619, line: 146, type: !8)
!1651 = !DILocalVariable(name: "s28", arg: 10, scope: !1639, file: !1619, line: 146, type: !8)
!1652 = !DILocation(line: 0, scope: !1639, inlinedAt: !1653)
!1653 = distinct !DILocation(line: 167, column: 16, scope: !1654, inlinedAt: !1634)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !1619, line: 164, column: 11)
!1655 = distinct !DILexicalBlock(scope: !1637, file: !1619, line: 163, column: 5)
!1656 = !DILocation(line: 148, column: 7, scope: !1657, inlinedAt: !1653)
!1657 = distinct !DILexicalBlock(scope: !1639, file: !1619, line: 148, column: 7)
!1658 = !DILocalVariable(name: "s1", arg: 1, scope: !1659, file: !1619, line: 132, type: !6)
!1659 = distinct !DISubprogram(name: "strcaseeq2", scope: !1619, file: !1619, line: 132, type: !1660, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1662)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1662 = !{!1658, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670}
!1663 = !DILocalVariable(name: "s2", arg: 2, scope: !1659, file: !1619, line: 132, type: !6)
!1664 = !DILocalVariable(name: "s22", arg: 3, scope: !1659, file: !1619, line: 132, type: !8)
!1665 = !DILocalVariable(name: "s23", arg: 4, scope: !1659, file: !1619, line: 132, type: !8)
!1666 = !DILocalVariable(name: "s24", arg: 5, scope: !1659, file: !1619, line: 132, type: !8)
!1667 = !DILocalVariable(name: "s25", arg: 6, scope: !1659, file: !1619, line: 132, type: !8)
!1668 = !DILocalVariable(name: "s26", arg: 7, scope: !1659, file: !1619, line: 132, type: !8)
!1669 = !DILocalVariable(name: "s27", arg: 8, scope: !1659, file: !1619, line: 132, type: !8)
!1670 = !DILocalVariable(name: "s28", arg: 9, scope: !1659, file: !1619, line: 132, type: !8)
!1671 = !DILocation(line: 0, scope: !1659, inlinedAt: !1672)
!1672 = distinct !DILocation(line: 153, column: 16, scope: !1673, inlinedAt: !1653)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !1619, line: 150, column: 11)
!1674 = distinct !DILexicalBlock(scope: !1657, file: !1619, line: 149, column: 5)
!1675 = !DILocation(line: 134, column: 7, scope: !1676, inlinedAt: !1672)
!1676 = distinct !DILexicalBlock(scope: !1659, file: !1619, line: 134, column: 7)
!1677 = !DILocalVariable(name: "s1", arg: 1, scope: !1678, file: !1619, line: 118, type: !6)
!1678 = distinct !DISubprogram(name: "strcaseeq3", scope: !1619, file: !1619, line: 118, type: !1679, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1681)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8}
!1681 = !{!1677, !1682, !1683, !1684, !1685, !1686, !1687, !1688}
!1682 = !DILocalVariable(name: "s2", arg: 2, scope: !1678, file: !1619, line: 118, type: !6)
!1683 = !DILocalVariable(name: "s23", arg: 3, scope: !1678, file: !1619, line: 118, type: !8)
!1684 = !DILocalVariable(name: "s24", arg: 4, scope: !1678, file: !1619, line: 118, type: !8)
!1685 = !DILocalVariable(name: "s25", arg: 5, scope: !1678, file: !1619, line: 118, type: !8)
!1686 = !DILocalVariable(name: "s26", arg: 6, scope: !1678, file: !1619, line: 118, type: !8)
!1687 = !DILocalVariable(name: "s27", arg: 7, scope: !1678, file: !1619, line: 118, type: !8)
!1688 = !DILocalVariable(name: "s28", arg: 8, scope: !1678, file: !1619, line: 118, type: !8)
!1689 = !DILocation(line: 0, scope: !1678, inlinedAt: !1690)
!1690 = distinct !DILocation(line: 139, column: 16, scope: !1691, inlinedAt: !1672)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !1619, line: 136, column: 11)
!1692 = distinct !DILexicalBlock(scope: !1676, file: !1619, line: 135, column: 5)
!1693 = !DILocation(line: 120, column: 7, scope: !1694, inlinedAt: !1690)
!1694 = distinct !DILexicalBlock(scope: !1678, file: !1619, line: 120, column: 7)
!1695 = !DILocation(line: 120, column: 7, scope: !1678, inlinedAt: !1690)
!1696 = !DILocalVariable(name: "s1", arg: 1, scope: !1697, file: !1619, line: 104, type: !6)
!1697 = distinct !DISubprogram(name: "strcaseeq4", scope: !1619, file: !1619, line: 104, type: !1698, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1700)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!23, !6, !6, !8, !8, !8, !8, !8}
!1700 = !{!1696, !1701, !1702, !1703, !1704, !1705, !1706}
!1701 = !DILocalVariable(name: "s2", arg: 2, scope: !1697, file: !1619, line: 104, type: !6)
!1702 = !DILocalVariable(name: "s24", arg: 3, scope: !1697, file: !1619, line: 104, type: !8)
!1703 = !DILocalVariable(name: "s25", arg: 4, scope: !1697, file: !1619, line: 104, type: !8)
!1704 = !DILocalVariable(name: "s26", arg: 5, scope: !1697, file: !1619, line: 104, type: !8)
!1705 = !DILocalVariable(name: "s27", arg: 6, scope: !1697, file: !1619, line: 104, type: !8)
!1706 = !DILocalVariable(name: "s28", arg: 7, scope: !1697, file: !1619, line: 104, type: !8)
!1707 = !DILocation(line: 0, scope: !1697, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 125, column: 16, scope: !1709, inlinedAt: !1690)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !1619, line: 122, column: 11)
!1710 = distinct !DILexicalBlock(scope: !1694, file: !1619, line: 121, column: 5)
!1711 = !DILocation(line: 106, column: 7, scope: !1712, inlinedAt: !1708)
!1712 = distinct !DILexicalBlock(scope: !1697, file: !1619, line: 106, column: 7)
!1713 = !DILocation(line: 106, column: 7, scope: !1697, inlinedAt: !1708)
!1714 = !DILocalVariable(name: "s1", arg: 1, scope: !1715, file: !1619, line: 90, type: !6)
!1715 = distinct !DISubprogram(name: "strcaseeq5", scope: !1619, file: !1619, line: 90, type: !1716, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1718)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!23, !6, !6, !8, !8, !8, !8}
!1718 = !{!1714, !1719, !1720, !1721, !1722, !1723}
!1719 = !DILocalVariable(name: "s2", arg: 2, scope: !1715, file: !1619, line: 90, type: !6)
!1720 = !DILocalVariable(name: "s25", arg: 3, scope: !1715, file: !1619, line: 90, type: !8)
!1721 = !DILocalVariable(name: "s26", arg: 4, scope: !1715, file: !1619, line: 90, type: !8)
!1722 = !DILocalVariable(name: "s27", arg: 5, scope: !1715, file: !1619, line: 90, type: !8)
!1723 = !DILocalVariable(name: "s28", arg: 6, scope: !1715, file: !1619, line: 90, type: !8)
!1724 = !DILocation(line: 0, scope: !1715, inlinedAt: !1725)
!1725 = distinct !DILocation(line: 111, column: 16, scope: !1726, inlinedAt: !1708)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !1619, line: 108, column: 11)
!1727 = distinct !DILexicalBlock(scope: !1712, file: !1619, line: 107, column: 5)
!1728 = !DILocation(line: 92, column: 7, scope: !1729, inlinedAt: !1725)
!1729 = distinct !DILexicalBlock(scope: !1715, file: !1619, line: 92, column: 7)
!1730 = !DILocation(line: 92, column: 7, scope: !1715, inlinedAt: !1725)
!1731 = !DILocation(line: 235, column: 12, scope: !1635)
!1732 = !DILocation(line: 235, column: 21, scope: !1635)
!1733 = !DILocation(line: 235, column: 5, scope: !1635)
!1734 = !DILocation(line: 0, scope: !1639, inlinedAt: !1735)
!1735 = distinct !DILocation(line: 167, column: 16, scope: !1654, inlinedAt: !1736)
!1736 = distinct !DILocation(line: 236, column: 7, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1603, file: !52, line: 236, column: 7)
!1738 = !DILocation(line: 148, column: 7, scope: !1657, inlinedAt: !1735)
!1739 = !DILocation(line: 0, scope: !1659, inlinedAt: !1740)
!1740 = distinct !DILocation(line: 153, column: 16, scope: !1673, inlinedAt: !1735)
!1741 = !DILocation(line: 134, column: 7, scope: !1676, inlinedAt: !1740)
!1742 = !DILocation(line: 134, column: 7, scope: !1659, inlinedAt: !1740)
!1743 = !DILocation(line: 0, scope: !1678, inlinedAt: !1744)
!1744 = distinct !DILocation(line: 139, column: 16, scope: !1691, inlinedAt: !1740)
!1745 = !DILocation(line: 120, column: 7, scope: !1694, inlinedAt: !1744)
!1746 = !DILocation(line: 120, column: 7, scope: !1678, inlinedAt: !1744)
!1747 = !DILocation(line: 0, scope: !1697, inlinedAt: !1748)
!1748 = distinct !DILocation(line: 125, column: 16, scope: !1709, inlinedAt: !1744)
!1749 = !DILocation(line: 106, column: 7, scope: !1712, inlinedAt: !1748)
!1750 = !DILocation(line: 106, column: 7, scope: !1697, inlinedAt: !1748)
!1751 = !DILocation(line: 0, scope: !1715, inlinedAt: !1752)
!1752 = distinct !DILocation(line: 111, column: 16, scope: !1726, inlinedAt: !1748)
!1753 = !DILocation(line: 92, column: 7, scope: !1729, inlinedAt: !1752)
!1754 = !DILocation(line: 92, column: 7, scope: !1715, inlinedAt: !1752)
!1755 = !DILocalVariable(name: "s1", arg: 1, scope: !1756, file: !1619, line: 76, type: !6)
!1756 = distinct !DISubprogram(name: "strcaseeq6", scope: !1619, file: !1619, line: 76, type: !1757, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1759)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!23, !6, !6, !8, !8, !8}
!1759 = !{!1755, !1760, !1761, !1762, !1763}
!1760 = !DILocalVariable(name: "s2", arg: 2, scope: !1756, file: !1619, line: 76, type: !6)
!1761 = !DILocalVariable(name: "s26", arg: 3, scope: !1756, file: !1619, line: 76, type: !8)
!1762 = !DILocalVariable(name: "s27", arg: 4, scope: !1756, file: !1619, line: 76, type: !8)
!1763 = !DILocalVariable(name: "s28", arg: 5, scope: !1756, file: !1619, line: 76, type: !8)
!1764 = !DILocation(line: 0, scope: !1756, inlinedAt: !1765)
!1765 = distinct !DILocation(line: 97, column: 16, scope: !1766, inlinedAt: !1752)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !1619, line: 94, column: 11)
!1767 = distinct !DILexicalBlock(scope: !1729, file: !1619, line: 93, column: 5)
!1768 = !DILocation(line: 78, column: 7, scope: !1769, inlinedAt: !1765)
!1769 = distinct !DILexicalBlock(scope: !1756, file: !1619, line: 78, column: 7)
!1770 = !DILocation(line: 78, column: 7, scope: !1756, inlinedAt: !1765)
!1771 = !DILocalVariable(name: "s1", arg: 1, scope: !1772, file: !1619, line: 62, type: !6)
!1772 = distinct !DISubprogram(name: "strcaseeq7", scope: !1619, file: !1619, line: 62, type: !1773, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1775)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!23, !6, !6, !8, !8}
!1775 = !{!1771, !1776, !1777, !1778}
!1776 = !DILocalVariable(name: "s2", arg: 2, scope: !1772, file: !1619, line: 62, type: !6)
!1777 = !DILocalVariable(name: "s27", arg: 3, scope: !1772, file: !1619, line: 62, type: !8)
!1778 = !DILocalVariable(name: "s28", arg: 4, scope: !1772, file: !1619, line: 62, type: !8)
!1779 = !DILocation(line: 0, scope: !1772, inlinedAt: !1780)
!1780 = distinct !DILocation(line: 83, column: 16, scope: !1781, inlinedAt: !1765)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !1619, line: 80, column: 11)
!1782 = distinct !DILexicalBlock(scope: !1769, file: !1619, line: 79, column: 5)
!1783 = !DILocation(line: 64, column: 7, scope: !1784, inlinedAt: !1780)
!1784 = distinct !DILexicalBlock(scope: !1772, file: !1619, line: 64, column: 7)
!1785 = !DILocation(line: 236, column: 7, scope: !1603)
!1786 = !DILocation(line: 237, column: 12, scope: !1737)
!1787 = !DILocation(line: 237, column: 21, scope: !1737)
!1788 = !DILocation(line: 237, column: 5, scope: !1737)
!1789 = !DILocation(line: 239, column: 13, scope: !1603)
!1790 = !DILocation(line: 239, column: 11, scope: !1603)
!1791 = !DILocation(line: 239, column: 3, scope: !1603)
!1792 = !DILocation(line: 240, column: 1, scope: !1603)
!1793 = !DISubprogram(name: "iswprint", scope: !1794, file: !1794, line: 120, type: !1795, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1794 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!23, !56}
!1797 = !DISubprogram(name: "mbsinit", scope: !1798, file: !1798, line: 292, type: !1799, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1798 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!23, !1801}
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1120)
!1803 = distinct !DISubprogram(name: "quotearg_alloc", scope: !52, file: !52, line: 799, type: !1804, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1806)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!47, !6, !91, !966}
!1806 = !{!1807, !1808, !1809}
!1807 = !DILocalVariable(name: "arg", arg: 1, scope: !1803, file: !52, line: 799, type: !6)
!1808 = !DILocalVariable(name: "argsize", arg: 2, scope: !1803, file: !52, line: 799, type: !91)
!1809 = !DILocalVariable(name: "o", arg: 3, scope: !1803, file: !52, line: 800, type: !966)
!1810 = !DILocation(line: 0, scope: !1803)
!1811 = !DILocalVariable(name: "arg", arg: 1, scope: !1812, file: !52, line: 812, type: !6)
!1812 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !52, file: !52, line: 812, type: !1813, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1815)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{!47, !6, !91, !161, !966}
!1815 = !{!1811, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823}
!1816 = !DILocalVariable(name: "argsize", arg: 2, scope: !1812, file: !52, line: 812, type: !91)
!1817 = !DILocalVariable(name: "size", arg: 3, scope: !1812, file: !52, line: 812, type: !161)
!1818 = !DILocalVariable(name: "o", arg: 4, scope: !1812, file: !52, line: 813, type: !966)
!1819 = !DILocalVariable(name: "p", scope: !1812, file: !52, line: 815, type: !966)
!1820 = !DILocalVariable(name: "e", scope: !1812, file: !52, line: 816, type: !23)
!1821 = !DILocalVariable(name: "flags", scope: !1812, file: !52, line: 818, type: !23)
!1822 = !DILocalVariable(name: "bufsize", scope: !1812, file: !52, line: 819, type: !91)
!1823 = !DILocalVariable(name: "buf", scope: !1812, file: !52, line: 823, type: !47)
!1824 = !DILocation(line: 0, scope: !1812, inlinedAt: !1825)
!1825 = distinct !DILocation(line: 802, column: 10, scope: !1803)
!1826 = !DILocation(line: 815, column: 37, scope: !1812, inlinedAt: !1825)
!1827 = !DILocation(line: 816, column: 11, scope: !1812, inlinedAt: !1825)
!1828 = !DILocation(line: 818, column: 18, scope: !1812, inlinedAt: !1825)
!1829 = !DILocation(line: 818, column: 24, scope: !1812, inlinedAt: !1825)
!1830 = !DILocation(line: 819, column: 69, scope: !1812, inlinedAt: !1825)
!1831 = !DILocation(line: 820, column: 53, scope: !1812, inlinedAt: !1825)
!1832 = !DILocation(line: 821, column: 49, scope: !1812, inlinedAt: !1825)
!1833 = !DILocation(line: 822, column: 49, scope: !1812, inlinedAt: !1825)
!1834 = !DILocation(line: 819, column: 20, scope: !1812, inlinedAt: !1825)
!1835 = !DILocation(line: 822, column: 62, scope: !1812, inlinedAt: !1825)
!1836 = !DILocalVariable(name: "n", arg: 1, scope: !1837, file: !157, line: 216, type: !91)
!1837 = distinct !DISubprogram(name: "xcharalloc", scope: !157, file: !157, line: 216, type: !1838, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1840)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!47, !91}
!1840 = !{!1836}
!1841 = !DILocation(line: 0, scope: !1837, inlinedAt: !1842)
!1842 = distinct !DILocation(line: 823, column: 15, scope: !1812, inlinedAt: !1825)
!1843 = !DILocation(line: 218, column: 10, scope: !1837, inlinedAt: !1842)
!1844 = !DILocation(line: 824, column: 60, scope: !1812, inlinedAt: !1825)
!1845 = !DILocation(line: 826, column: 32, scope: !1812, inlinedAt: !1825)
!1846 = !DILocation(line: 826, column: 47, scope: !1812, inlinedAt: !1825)
!1847 = !DILocation(line: 824, column: 3, scope: !1812, inlinedAt: !1825)
!1848 = !DILocation(line: 827, column: 9, scope: !1812, inlinedAt: !1825)
!1849 = !DILocation(line: 802, column: 3, scope: !1803)
!1850 = !DILocation(line: 0, scope: !1812)
!1851 = !DILocation(line: 815, column: 37, scope: !1812)
!1852 = !DILocation(line: 816, column: 11, scope: !1812)
!1853 = !DILocation(line: 818, column: 18, scope: !1812)
!1854 = !DILocation(line: 818, column: 27, scope: !1812)
!1855 = !DILocation(line: 818, column: 24, scope: !1812)
!1856 = !DILocation(line: 819, column: 69, scope: !1812)
!1857 = !DILocation(line: 820, column: 53, scope: !1812)
!1858 = !DILocation(line: 821, column: 49, scope: !1812)
!1859 = !DILocation(line: 822, column: 49, scope: !1812)
!1860 = !DILocation(line: 819, column: 20, scope: !1812)
!1861 = !DILocation(line: 822, column: 62, scope: !1812)
!1862 = !DILocation(line: 0, scope: !1837, inlinedAt: !1863)
!1863 = distinct !DILocation(line: 823, column: 15, scope: !1812)
!1864 = !DILocation(line: 218, column: 10, scope: !1837, inlinedAt: !1863)
!1865 = !DILocation(line: 824, column: 60, scope: !1812)
!1866 = !DILocation(line: 826, column: 32, scope: !1812)
!1867 = !DILocation(line: 826, column: 47, scope: !1812)
!1868 = !DILocation(line: 824, column: 3, scope: !1812)
!1869 = !DILocation(line: 827, column: 9, scope: !1812)
!1870 = !DILocation(line: 828, column: 7, scope: !1812)
!1871 = !DILocation(line: 829, column: 11, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1812, file: !52, line: 828, column: 7)
!1873 = !{!1874, !1874, i64 0}
!1874 = !{!"long", !597, i64 0}
!1875 = !DILocation(line: 829, column: 5, scope: !1872)
!1876 = !DILocation(line: 830, column: 3, scope: !1812)
!1877 = distinct !DISubprogram(name: "quotearg_free", scope: !52, file: !52, line: 848, type: !764, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1878)
!1878 = !{!1879, !1880}
!1879 = !DILocalVariable(name: "sv", scope: !1877, file: !52, line: 850, type: !122)
!1880 = !DILocalVariable(name: "i", scope: !1877, file: !52, line: 851, type: !23)
!1881 = !DILocation(line: 850, column: 24, scope: !1877)
!1882 = !DILocation(line: 0, scope: !1877)
!1883 = !DILocation(line: 852, column: 19, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !52, line: 852, column: 3)
!1885 = distinct !DILexicalBlock(scope: !1877, file: !52, line: 852, column: 3)
!1886 = !DILocation(line: 852, column: 17, scope: !1884)
!1887 = !DILocation(line: 852, column: 3, scope: !1885)
!1888 = !DILocation(line: 853, column: 17, scope: !1884)
!1889 = !{!1890, !596, i64 8}
!1890 = !{!"slotvec", !1874, i64 0, !596, i64 8}
!1891 = !DILocation(line: 853, column: 5, scope: !1884)
!1892 = !DILocation(line: 852, column: 28, scope: !1884)
!1893 = distinct !{!1893, !1887, !1894, !636}
!1894 = !DILocation(line: 853, column: 20, scope: !1885)
!1895 = !DILocation(line: 854, column: 13, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1877, file: !52, line: 854, column: 7)
!1897 = !DILocation(line: 854, column: 17, scope: !1896)
!1898 = !DILocation(line: 854, column: 7, scope: !1877)
!1899 = !DILocation(line: 856, column: 7, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1896, file: !52, line: 855, column: 5)
!1901 = !DILocation(line: 857, column: 21, scope: !1900)
!1902 = !{!1890, !1874, i64 0}
!1903 = !DILocation(line: 858, column: 20, scope: !1900)
!1904 = !DILocation(line: 859, column: 5, scope: !1900)
!1905 = !DILocation(line: 860, column: 10, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1877, file: !52, line: 860, column: 7)
!1907 = !DILocation(line: 860, column: 7, scope: !1877)
!1908 = !DILocation(line: 862, column: 13, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1906, file: !52, line: 861, column: 5)
!1910 = !DILocation(line: 862, column: 7, scope: !1909)
!1911 = !DILocation(line: 863, column: 15, scope: !1909)
!1912 = !DILocation(line: 864, column: 5, scope: !1909)
!1913 = !DILocation(line: 865, column: 10, scope: !1877)
!1914 = !DILocation(line: 866, column: 1, scope: !1877)
!1915 = distinct !DISubprogram(name: "quotearg_n", scope: !52, file: !52, line: 931, type: !718, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1916)
!1916 = !{!1917, !1918}
!1917 = !DILocalVariable(name: "n", arg: 1, scope: !1915, file: !52, line: 931, type: !23)
!1918 = !DILocalVariable(name: "arg", arg: 2, scope: !1915, file: !52, line: 931, type: !6)
!1919 = !DILocation(line: 0, scope: !1915)
!1920 = !DILocation(line: 933, column: 10, scope: !1915)
!1921 = !DILocation(line: 933, column: 3, scope: !1915)
!1922 = distinct !DISubprogram(name: "quotearg_n_options", scope: !52, file: !52, line: 877, type: !1923, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1925)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!47, !23, !6, !91, !966}
!1925 = !{!1926, !1927, !1928, !1929, !1930, !1931, !1932, !1935, !1936, !1938, !1939, !1940}
!1926 = !DILocalVariable(name: "n", arg: 1, scope: !1922, file: !52, line: 877, type: !23)
!1927 = !DILocalVariable(name: "arg", arg: 2, scope: !1922, file: !52, line: 877, type: !6)
!1928 = !DILocalVariable(name: "argsize", arg: 3, scope: !1922, file: !52, line: 877, type: !91)
!1929 = !DILocalVariable(name: "options", arg: 4, scope: !1922, file: !52, line: 878, type: !966)
!1930 = !DILocalVariable(name: "e", scope: !1922, file: !52, line: 880, type: !23)
!1931 = !DILocalVariable(name: "sv", scope: !1922, file: !52, line: 882, type: !122)
!1932 = !DILocalVariable(name: "preallocated", scope: !1933, file: !52, line: 889, type: !16)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !52, line: 888, column: 5)
!1934 = distinct !DILexicalBlock(scope: !1922, file: !52, line: 887, column: 7)
!1935 = !DILocalVariable(name: "nmax", scope: !1933, file: !52, line: 890, type: !23)
!1936 = !DILocalVariable(name: "size", scope: !1937, file: !52, line: 903, type: !91)
!1937 = distinct !DILexicalBlock(scope: !1922, file: !52, line: 902, column: 3)
!1938 = !DILocalVariable(name: "val", scope: !1937, file: !52, line: 904, type: !47)
!1939 = !DILocalVariable(name: "flags", scope: !1937, file: !52, line: 906, type: !23)
!1940 = !DILocalVariable(name: "qsize", scope: !1937, file: !52, line: 907, type: !91)
!1941 = !DILocation(line: 0, scope: !1922)
!1942 = !DILocation(line: 880, column: 11, scope: !1922)
!1943 = !DILocation(line: 882, column: 24, scope: !1922)
!1944 = !DILocation(line: 884, column: 9, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1922, file: !52, line: 884, column: 7)
!1946 = !DILocation(line: 884, column: 7, scope: !1922)
!1947 = !DILocation(line: 885, column: 5, scope: !1945)
!1948 = !DILocation(line: 887, column: 7, scope: !1934)
!1949 = !DILocation(line: 887, column: 14, scope: !1934)
!1950 = !DILocation(line: 887, column: 7, scope: !1922)
!1951 = !DILocation(line: 889, column: 31, scope: !1933)
!1952 = !DILocation(line: 0, scope: !1933)
!1953 = !DILocation(line: 892, column: 16, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1933, file: !52, line: 892, column: 11)
!1955 = !DILocation(line: 892, column: 11, scope: !1933)
!1956 = !DILocation(line: 893, column: 9, scope: !1954)
!1957 = !DILocation(line: 895, column: 32, scope: !1933)
!1958 = !DILocation(line: 895, column: 61, scope: !1933)
!1959 = !DILocation(line: 895, column: 66, scope: !1933)
!1960 = !DILocation(line: 895, column: 22, scope: !1933)
!1961 = !DILocation(line: 895, column: 15, scope: !1933)
!1962 = !DILocation(line: 896, column: 11, scope: !1933)
!1963 = !DILocation(line: 897, column: 15, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1933, file: !52, line: 896, column: 11)
!1965 = !{i64 0, i64 8, !1873, i64 8, i64 8, !595}
!1966 = !DILocation(line: 897, column: 9, scope: !1964)
!1967 = !DILocation(line: 898, column: 20, scope: !1933)
!1968 = !DILocation(line: 898, column: 18, scope: !1933)
!1969 = !DILocation(line: 898, column: 15, scope: !1933)
!1970 = !DILocation(line: 898, column: 38, scope: !1933)
!1971 = !DILocation(line: 898, column: 31, scope: !1933)
!1972 = !DILocation(line: 898, column: 48, scope: !1933)
!1973 = !DILocation(line: 0, scope: !1364, inlinedAt: !1974)
!1974 = distinct !DILocation(line: 898, column: 7, scope: !1933)
!1975 = !DILocation(line: 59, column: 10, scope: !1364, inlinedAt: !1974)
!1976 = !DILocation(line: 899, column: 14, scope: !1933)
!1977 = !DILocation(line: 900, column: 5, scope: !1933)
!1978 = !DILocation(line: 903, column: 19, scope: !1937)
!1979 = !DILocation(line: 903, column: 25, scope: !1937)
!1980 = !DILocation(line: 0, scope: !1937)
!1981 = !DILocation(line: 904, column: 23, scope: !1937)
!1982 = !DILocation(line: 906, column: 26, scope: !1937)
!1983 = !DILocation(line: 906, column: 32, scope: !1937)
!1984 = !DILocation(line: 908, column: 55, scope: !1937)
!1985 = !DILocation(line: 909, column: 46, scope: !1937)
!1986 = !DILocation(line: 910, column: 55, scope: !1937)
!1987 = !DILocation(line: 911, column: 55, scope: !1937)
!1988 = !DILocation(line: 907, column: 20, scope: !1937)
!1989 = !DILocation(line: 913, column: 14, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1937, file: !52, line: 913, column: 9)
!1991 = !DILocation(line: 913, column: 9, scope: !1937)
!1992 = !DILocation(line: 915, column: 35, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1990, file: !52, line: 914, column: 7)
!1994 = !DILocation(line: 915, column: 20, scope: !1993)
!1995 = !DILocation(line: 916, column: 17, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1993, file: !52, line: 916, column: 13)
!1997 = !DILocation(line: 916, column: 13, scope: !1993)
!1998 = !DILocation(line: 917, column: 11, scope: !1996)
!1999 = !DILocation(line: 0, scope: !1837, inlinedAt: !2000)
!2000 = distinct !DILocation(line: 918, column: 27, scope: !1993)
!2001 = !DILocation(line: 218, column: 10, scope: !1837, inlinedAt: !2000)
!2002 = !DILocation(line: 918, column: 19, scope: !1993)
!2003 = !DILocation(line: 919, column: 69, scope: !1993)
!2004 = !DILocation(line: 921, column: 44, scope: !1993)
!2005 = !DILocation(line: 922, column: 44, scope: !1993)
!2006 = !DILocation(line: 919, column: 9, scope: !1993)
!2007 = !DILocation(line: 923, column: 7, scope: !1993)
!2008 = !DILocation(line: 925, column: 11, scope: !1937)
!2009 = !DILocation(line: 926, column: 5, scope: !1937)
!2010 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !52, file: !52, line: 937, type: !2011, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2013)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!47, !23, !6, !91}
!2013 = !{!2014, !2015, !2016}
!2014 = !DILocalVariable(name: "n", arg: 1, scope: !2010, file: !52, line: 937, type: !23)
!2015 = !DILocalVariable(name: "arg", arg: 2, scope: !2010, file: !52, line: 937, type: !6)
!2016 = !DILocalVariable(name: "argsize", arg: 3, scope: !2010, file: !52, line: 937, type: !91)
!2017 = !DILocation(line: 0, scope: !2010)
!2018 = !DILocation(line: 939, column: 10, scope: !2010)
!2019 = !DILocation(line: 939, column: 3, scope: !2010)
!2020 = distinct !DISubprogram(name: "quotearg", scope: !52, file: !52, line: 943, type: !757, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2021)
!2021 = !{!2022}
!2022 = !DILocalVariable(name: "arg", arg: 1, scope: !2020, file: !52, line: 943, type: !6)
!2023 = !DILocation(line: 0, scope: !2020)
!2024 = !DILocation(line: 0, scope: !1915, inlinedAt: !2025)
!2025 = distinct !DILocation(line: 945, column: 10, scope: !2020)
!2026 = !DILocation(line: 933, column: 10, scope: !1915, inlinedAt: !2025)
!2027 = !DILocation(line: 945, column: 3, scope: !2020)
!2028 = distinct !DISubprogram(name: "quotearg_mem", scope: !52, file: !52, line: 949, type: !2029, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2031)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!47, !6, !91}
!2031 = !{!2032, !2033}
!2032 = !DILocalVariable(name: "arg", arg: 1, scope: !2028, file: !52, line: 949, type: !6)
!2033 = !DILocalVariable(name: "argsize", arg: 2, scope: !2028, file: !52, line: 949, type: !91)
!2034 = !DILocation(line: 0, scope: !2028)
!2035 = !DILocation(line: 0, scope: !2010, inlinedAt: !2036)
!2036 = distinct !DILocation(line: 951, column: 10, scope: !2028)
!2037 = !DILocation(line: 939, column: 10, scope: !2010, inlinedAt: !2036)
!2038 = !DILocation(line: 951, column: 3, scope: !2028)
!2039 = distinct !DISubprogram(name: "quotearg_n_style", scope: !52, file: !52, line: 955, type: !2040, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2042)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!47, !23, !54, !6}
!2042 = !{!2043, !2044, !2045, !2046}
!2043 = !DILocalVariable(name: "n", arg: 1, scope: !2039, file: !52, line: 955, type: !23)
!2044 = !DILocalVariable(name: "s", arg: 2, scope: !2039, file: !52, line: 955, type: !54)
!2045 = !DILocalVariable(name: "arg", arg: 3, scope: !2039, file: !52, line: 955, type: !6)
!2046 = !DILocalVariable(name: "o", scope: !2039, file: !52, line: 957, type: !967)
!2047 = !DILocation(line: 0, scope: !2039)
!2048 = !DILocation(line: 957, column: 3, scope: !2039)
!2049 = !DILocation(line: 957, column: 32, scope: !2039)
!2050 = !{!2051}
!2051 = distinct !{!2051, !2052, !"quoting_options_from_style: argument 0"}
!2052 = distinct !{!2052, !"quoting_options_from_style"}
!2053 = !DILocation(line: 957, column: 36, scope: !2039)
!2054 = !DILocalVariable(name: "style", arg: 1, scope: !2055, file: !52, line: 193, type: !54)
!2055 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !52, file: !52, line: 193, type: !2056, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2058)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!103, !54}
!2058 = !{!2054, !2059}
!2059 = !DILocalVariable(name: "o", scope: !2055, file: !52, line: 195, type: !103)
!2060 = !DILocation(line: 0, scope: !2055, inlinedAt: !2061)
!2061 = distinct !DILocation(line: 957, column: 36, scope: !2039)
!2062 = !DILocation(line: 195, column: 26, scope: !2055, inlinedAt: !2061)
!2063 = !DILocation(line: 196, column: 13, scope: !2064, inlinedAt: !2061)
!2064 = distinct !DILexicalBlock(scope: !2055, file: !52, line: 196, column: 7)
!2065 = !DILocation(line: 196, column: 7, scope: !2055, inlinedAt: !2061)
!2066 = !DILocation(line: 197, column: 5, scope: !2064, inlinedAt: !2061)
!2067 = !DILocation(line: 198, column: 5, scope: !2055, inlinedAt: !2061)
!2068 = !DILocation(line: 198, column: 11, scope: !2055, inlinedAt: !2061)
!2069 = !DILocation(line: 958, column: 10, scope: !2039)
!2070 = !DILocation(line: 959, column: 1, scope: !2039)
!2071 = !DILocation(line: 958, column: 3, scope: !2039)
!2072 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !52, file: !52, line: 962, type: !2073, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2075)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!47, !23, !54, !6, !91}
!2075 = !{!2076, !2077, !2078, !2079, !2080}
!2076 = !DILocalVariable(name: "n", arg: 1, scope: !2072, file: !52, line: 962, type: !23)
!2077 = !DILocalVariable(name: "s", arg: 2, scope: !2072, file: !52, line: 962, type: !54)
!2078 = !DILocalVariable(name: "arg", arg: 3, scope: !2072, file: !52, line: 963, type: !6)
!2079 = !DILocalVariable(name: "argsize", arg: 4, scope: !2072, file: !52, line: 963, type: !91)
!2080 = !DILocalVariable(name: "o", scope: !2072, file: !52, line: 965, type: !967)
!2081 = !DILocation(line: 0, scope: !2072)
!2082 = !DILocation(line: 965, column: 3, scope: !2072)
!2083 = !DILocation(line: 965, column: 32, scope: !2072)
!2084 = !{!2085}
!2085 = distinct !{!2085, !2086, !"quoting_options_from_style: argument 0"}
!2086 = distinct !{!2086, !"quoting_options_from_style"}
!2087 = !DILocation(line: 965, column: 36, scope: !2072)
!2088 = !DILocation(line: 0, scope: !2055, inlinedAt: !2089)
!2089 = distinct !DILocation(line: 965, column: 36, scope: !2072)
!2090 = !DILocation(line: 195, column: 26, scope: !2055, inlinedAt: !2089)
!2091 = !DILocation(line: 196, column: 13, scope: !2064, inlinedAt: !2089)
!2092 = !DILocation(line: 196, column: 7, scope: !2055, inlinedAt: !2089)
!2093 = !DILocation(line: 197, column: 5, scope: !2064, inlinedAt: !2089)
!2094 = !DILocation(line: 198, column: 5, scope: !2055, inlinedAt: !2089)
!2095 = !DILocation(line: 198, column: 11, scope: !2055, inlinedAt: !2089)
!2096 = !DILocation(line: 966, column: 10, scope: !2072)
!2097 = !DILocation(line: 967, column: 1, scope: !2072)
!2098 = !DILocation(line: 966, column: 3, scope: !2072)
!2099 = distinct !DISubprogram(name: "quotearg_style", scope: !52, file: !52, line: 970, type: !2100, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2102)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!47, !54, !6}
!2102 = !{!2103, !2104}
!2103 = !DILocalVariable(name: "s", arg: 1, scope: !2099, file: !52, line: 970, type: !54)
!2104 = !DILocalVariable(name: "arg", arg: 2, scope: !2099, file: !52, line: 970, type: !6)
!2105 = !DILocation(line: 0, scope: !2099)
!2106 = !DILocation(line: 0, scope: !2039, inlinedAt: !2107)
!2107 = distinct !DILocation(line: 972, column: 10, scope: !2099)
!2108 = !DILocation(line: 957, column: 3, scope: !2039, inlinedAt: !2107)
!2109 = !DILocation(line: 957, column: 32, scope: !2039, inlinedAt: !2107)
!2110 = !{!2111}
!2111 = distinct !{!2111, !2112, !"quoting_options_from_style: argument 0"}
!2112 = distinct !{!2112, !"quoting_options_from_style"}
!2113 = !DILocation(line: 957, column: 36, scope: !2039, inlinedAt: !2107)
!2114 = !DILocation(line: 0, scope: !2055, inlinedAt: !2115)
!2115 = distinct !DILocation(line: 957, column: 36, scope: !2039, inlinedAt: !2107)
!2116 = !DILocation(line: 195, column: 26, scope: !2055, inlinedAt: !2115)
!2117 = !DILocation(line: 196, column: 13, scope: !2064, inlinedAt: !2115)
!2118 = !DILocation(line: 196, column: 7, scope: !2055, inlinedAt: !2115)
!2119 = !DILocation(line: 197, column: 5, scope: !2064, inlinedAt: !2115)
!2120 = !DILocation(line: 198, column: 5, scope: !2055, inlinedAt: !2115)
!2121 = !DILocation(line: 198, column: 11, scope: !2055, inlinedAt: !2115)
!2122 = !DILocation(line: 958, column: 10, scope: !2039, inlinedAt: !2107)
!2123 = !DILocation(line: 959, column: 1, scope: !2039, inlinedAt: !2107)
!2124 = !DILocation(line: 972, column: 3, scope: !2099)
!2125 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !52, file: !52, line: 976, type: !2126, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2128)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!47, !54, !6, !91}
!2128 = !{!2129, !2130, !2131}
!2129 = !DILocalVariable(name: "s", arg: 1, scope: !2125, file: !52, line: 976, type: !54)
!2130 = !DILocalVariable(name: "arg", arg: 2, scope: !2125, file: !52, line: 976, type: !6)
!2131 = !DILocalVariable(name: "argsize", arg: 3, scope: !2125, file: !52, line: 976, type: !91)
!2132 = !DILocation(line: 0, scope: !2125)
!2133 = !DILocation(line: 0, scope: !2072, inlinedAt: !2134)
!2134 = distinct !DILocation(line: 978, column: 10, scope: !2125)
!2135 = !DILocation(line: 965, column: 3, scope: !2072, inlinedAt: !2134)
!2136 = !DILocation(line: 965, column: 32, scope: !2072, inlinedAt: !2134)
!2137 = !{!2138}
!2138 = distinct !{!2138, !2139, !"quoting_options_from_style: argument 0"}
!2139 = distinct !{!2139, !"quoting_options_from_style"}
!2140 = !DILocation(line: 965, column: 36, scope: !2072, inlinedAt: !2134)
!2141 = !DILocation(line: 0, scope: !2055, inlinedAt: !2142)
!2142 = distinct !DILocation(line: 965, column: 36, scope: !2072, inlinedAt: !2134)
!2143 = !DILocation(line: 195, column: 26, scope: !2055, inlinedAt: !2142)
!2144 = !DILocation(line: 196, column: 13, scope: !2064, inlinedAt: !2142)
!2145 = !DILocation(line: 196, column: 7, scope: !2055, inlinedAt: !2142)
!2146 = !DILocation(line: 197, column: 5, scope: !2064, inlinedAt: !2142)
!2147 = !DILocation(line: 198, column: 5, scope: !2055, inlinedAt: !2142)
!2148 = !DILocation(line: 198, column: 11, scope: !2055, inlinedAt: !2142)
!2149 = !DILocation(line: 966, column: 10, scope: !2072, inlinedAt: !2134)
!2150 = !DILocation(line: 967, column: 1, scope: !2072, inlinedAt: !2134)
!2151 = !DILocation(line: 978, column: 3, scope: !2125)
!2152 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !52, file: !52, line: 982, type: !2153, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2155)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!47, !6, !91, !8}
!2155 = !{!2156, !2157, !2158, !2159}
!2156 = !DILocalVariable(name: "arg", arg: 1, scope: !2152, file: !52, line: 982, type: !6)
!2157 = !DILocalVariable(name: "argsize", arg: 2, scope: !2152, file: !52, line: 982, type: !91)
!2158 = !DILocalVariable(name: "ch", arg: 3, scope: !2152, file: !52, line: 982, type: !8)
!2159 = !DILocalVariable(name: "options", scope: !2152, file: !52, line: 984, type: !103)
!2160 = !DILocation(line: 0, scope: !2152)
!2161 = !DILocation(line: 984, column: 3, scope: !2152)
!2162 = !DILocation(line: 984, column: 26, scope: !2152)
!2163 = !DILocation(line: 985, column: 13, scope: !2152)
!2164 = !{i64 0, i64 4, !1173, i64 4, i64 4, !739, i64 8, i64 32, !1173, i64 40, i64 8, !595, i64 48, i64 8, !595}
!2165 = !DILocation(line: 0, scope: !987, inlinedAt: !2166)
!2166 = distinct !DILocation(line: 986, column: 3, scope: !2152)
!2167 = !DILocation(line: 156, column: 62, scope: !987, inlinedAt: !2166)
!2168 = !DILocation(line: 156, column: 57, scope: !987, inlinedAt: !2166)
!2169 = !DILocation(line: 157, column: 15, scope: !987, inlinedAt: !2166)
!2170 = !DILocation(line: 158, column: 12, scope: !987, inlinedAt: !2166)
!2171 = !DILocation(line: 158, column: 15, scope: !987, inlinedAt: !2166)
!2172 = !DILocation(line: 158, column: 25, scope: !987, inlinedAt: !2166)
!2173 = !DILocation(line: 159, column: 18, scope: !987, inlinedAt: !2166)
!2174 = !DILocation(line: 159, column: 23, scope: !987, inlinedAt: !2166)
!2175 = !DILocation(line: 159, column: 6, scope: !987, inlinedAt: !2166)
!2176 = !DILocation(line: 987, column: 10, scope: !2152)
!2177 = !DILocation(line: 988, column: 1, scope: !2152)
!2178 = !DILocation(line: 987, column: 3, scope: !2152)
!2179 = distinct !DISubprogram(name: "quotearg_char", scope: !52, file: !52, line: 991, type: !2180, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2182)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!47, !6, !8}
!2182 = !{!2183, !2184}
!2183 = !DILocalVariable(name: "arg", arg: 1, scope: !2179, file: !52, line: 991, type: !6)
!2184 = !DILocalVariable(name: "ch", arg: 2, scope: !2179, file: !52, line: 991, type: !8)
!2185 = !DILocation(line: 0, scope: !2179)
!2186 = !DILocation(line: 0, scope: !2152, inlinedAt: !2187)
!2187 = distinct !DILocation(line: 993, column: 10, scope: !2179)
!2188 = !DILocation(line: 984, column: 3, scope: !2152, inlinedAt: !2187)
!2189 = !DILocation(line: 984, column: 26, scope: !2152, inlinedAt: !2187)
!2190 = !DILocation(line: 985, column: 13, scope: !2152, inlinedAt: !2187)
!2191 = !DILocation(line: 0, scope: !987, inlinedAt: !2192)
!2192 = distinct !DILocation(line: 986, column: 3, scope: !2152, inlinedAt: !2187)
!2193 = !DILocation(line: 156, column: 62, scope: !987, inlinedAt: !2192)
!2194 = !DILocation(line: 156, column: 57, scope: !987, inlinedAt: !2192)
!2195 = !DILocation(line: 157, column: 15, scope: !987, inlinedAt: !2192)
!2196 = !DILocation(line: 158, column: 12, scope: !987, inlinedAt: !2192)
!2197 = !DILocation(line: 158, column: 15, scope: !987, inlinedAt: !2192)
!2198 = !DILocation(line: 158, column: 25, scope: !987, inlinedAt: !2192)
!2199 = !DILocation(line: 159, column: 18, scope: !987, inlinedAt: !2192)
!2200 = !DILocation(line: 159, column: 23, scope: !987, inlinedAt: !2192)
!2201 = !DILocation(line: 159, column: 6, scope: !987, inlinedAt: !2192)
!2202 = !DILocation(line: 987, column: 10, scope: !2152, inlinedAt: !2187)
!2203 = !DILocation(line: 988, column: 1, scope: !2152, inlinedAt: !2187)
!2204 = !DILocation(line: 993, column: 3, scope: !2179)
!2205 = distinct !DISubprogram(name: "quotearg_colon", scope: !52, file: !52, line: 997, type: !757, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2206)
!2206 = !{!2207}
!2207 = !DILocalVariable(name: "arg", arg: 1, scope: !2205, file: !52, line: 997, type: !6)
!2208 = !DILocation(line: 0, scope: !2205)
!2209 = !DILocation(line: 0, scope: !2179, inlinedAt: !2210)
!2210 = distinct !DILocation(line: 999, column: 10, scope: !2205)
!2211 = !DILocation(line: 0, scope: !2152, inlinedAt: !2212)
!2212 = distinct !DILocation(line: 993, column: 10, scope: !2179, inlinedAt: !2210)
!2213 = !DILocation(line: 984, column: 3, scope: !2152, inlinedAt: !2212)
!2214 = !DILocation(line: 984, column: 26, scope: !2152, inlinedAt: !2212)
!2215 = !DILocation(line: 985, column: 13, scope: !2152, inlinedAt: !2212)
!2216 = !DILocation(line: 0, scope: !987, inlinedAt: !2217)
!2217 = distinct !DILocation(line: 986, column: 3, scope: !2152, inlinedAt: !2212)
!2218 = !DILocation(line: 156, column: 57, scope: !987, inlinedAt: !2217)
!2219 = !DILocation(line: 158, column: 12, scope: !987, inlinedAt: !2217)
!2220 = !DILocation(line: 159, column: 6, scope: !987, inlinedAt: !2217)
!2221 = !DILocation(line: 987, column: 10, scope: !2152, inlinedAt: !2212)
!2222 = !DILocation(line: 988, column: 1, scope: !2152, inlinedAt: !2212)
!2223 = !DILocation(line: 999, column: 3, scope: !2205)
!2224 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !52, file: !52, line: 1003, type: !2029, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2225)
!2225 = !{!2226, !2227}
!2226 = !DILocalVariable(name: "arg", arg: 1, scope: !2224, file: !52, line: 1003, type: !6)
!2227 = !DILocalVariable(name: "argsize", arg: 2, scope: !2224, file: !52, line: 1003, type: !91)
!2228 = !DILocation(line: 0, scope: !2224)
!2229 = !DILocation(line: 0, scope: !2152, inlinedAt: !2230)
!2230 = distinct !DILocation(line: 1005, column: 10, scope: !2224)
!2231 = !DILocation(line: 984, column: 3, scope: !2152, inlinedAt: !2230)
!2232 = !DILocation(line: 984, column: 26, scope: !2152, inlinedAt: !2230)
!2233 = !DILocation(line: 985, column: 13, scope: !2152, inlinedAt: !2230)
!2234 = !DILocation(line: 0, scope: !987, inlinedAt: !2235)
!2235 = distinct !DILocation(line: 986, column: 3, scope: !2152, inlinedAt: !2230)
!2236 = !DILocation(line: 156, column: 57, scope: !987, inlinedAt: !2235)
!2237 = !DILocation(line: 158, column: 12, scope: !987, inlinedAt: !2235)
!2238 = !DILocation(line: 159, column: 6, scope: !987, inlinedAt: !2235)
!2239 = !DILocation(line: 987, column: 10, scope: !2152, inlinedAt: !2230)
!2240 = !DILocation(line: 988, column: 1, scope: !2152, inlinedAt: !2230)
!2241 = !DILocation(line: 1005, column: 3, scope: !2224)
!2242 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !52, file: !52, line: 1009, type: !2040, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2243)
!2243 = !{!2244, !2245, !2246, !2247}
!2244 = !DILocalVariable(name: "n", arg: 1, scope: !2242, file: !52, line: 1009, type: !23)
!2245 = !DILocalVariable(name: "s", arg: 2, scope: !2242, file: !52, line: 1009, type: !54)
!2246 = !DILocalVariable(name: "arg", arg: 3, scope: !2242, file: !52, line: 1009, type: !6)
!2247 = !DILocalVariable(name: "options", scope: !2242, file: !52, line: 1011, type: !103)
!2248 = !DILocation(line: 195, column: 26, scope: !2055, inlinedAt: !2249)
!2249 = distinct !DILocation(line: 1012, column: 13, scope: !2242)
!2250 = !DILocation(line: 0, scope: !2242)
!2251 = !DILocation(line: 1011, column: 3, scope: !2242)
!2252 = !DILocation(line: 1011, column: 26, scope: !2242)
!2253 = !DILocation(line: 1012, column: 13, scope: !2242)
!2254 = !{!2255}
!2255 = distinct !{!2255, !2256, !"quoting_options_from_style: argument 0"}
!2256 = distinct !{!2256, !"quoting_options_from_style"}
!2257 = !DILocation(line: 0, scope: !2055, inlinedAt: !2249)
!2258 = !DILocation(line: 196, column: 13, scope: !2064, inlinedAt: !2249)
!2259 = !DILocation(line: 196, column: 7, scope: !2055, inlinedAt: !2249)
!2260 = !DILocation(line: 197, column: 5, scope: !2064, inlinedAt: !2249)
!2261 = !{i64 0, i64 4, !739, i64 4, i64 32, !1173, i64 36, i64 8, !595, i64 44, i64 8, !595}
!2262 = !DILocation(line: 0, scope: !987, inlinedAt: !2263)
!2263 = distinct !DILocation(line: 1013, column: 3, scope: !2242)
!2264 = !DILocation(line: 156, column: 57, scope: !987, inlinedAt: !2263)
!2265 = !DILocation(line: 158, column: 12, scope: !987, inlinedAt: !2263)
!2266 = !DILocation(line: 159, column: 6, scope: !987, inlinedAt: !2263)
!2267 = !DILocation(line: 1014, column: 10, scope: !2242)
!2268 = !DILocation(line: 1015, column: 1, scope: !2242)
!2269 = !DILocation(line: 1014, column: 3, scope: !2242)
!2270 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !52, file: !52, line: 1018, type: !2271, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2273)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!47, !23, !6, !6, !6}
!2273 = !{!2274, !2275, !2276, !2277}
!2274 = !DILocalVariable(name: "n", arg: 1, scope: !2270, file: !52, line: 1018, type: !23)
!2275 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2270, file: !52, line: 1018, type: !6)
!2276 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2270, file: !52, line: 1019, type: !6)
!2277 = !DILocalVariable(name: "arg", arg: 4, scope: !2270, file: !52, line: 1019, type: !6)
!2278 = !DILocation(line: 0, scope: !2270)
!2279 = !DILocalVariable(name: "n", arg: 1, scope: !2280, file: !52, line: 1026, type: !23)
!2280 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !52, file: !52, line: 1026, type: !2281, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2283)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!47, !23, !6, !6, !6, !91}
!2283 = !{!2279, !2284, !2285, !2286, !2287, !2288}
!2284 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2280, file: !52, line: 1026, type: !6)
!2285 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2280, file: !52, line: 1027, type: !6)
!2286 = !DILocalVariable(name: "arg", arg: 4, scope: !2280, file: !52, line: 1028, type: !6)
!2287 = !DILocalVariable(name: "argsize", arg: 5, scope: !2280, file: !52, line: 1028, type: !91)
!2288 = !DILocalVariable(name: "o", scope: !2280, file: !52, line: 1030, type: !103)
!2289 = !DILocation(line: 0, scope: !2280, inlinedAt: !2290)
!2290 = distinct !DILocation(line: 1021, column: 10, scope: !2270)
!2291 = !DILocation(line: 1030, column: 3, scope: !2280, inlinedAt: !2290)
!2292 = !DILocation(line: 1030, column: 26, scope: !2280, inlinedAt: !2290)
!2293 = !DILocation(line: 1030, column: 30, scope: !2280, inlinedAt: !2290)
!2294 = !DILocation(line: 0, scope: !1028, inlinedAt: !2295)
!2295 = distinct !DILocation(line: 1031, column: 3, scope: !2280, inlinedAt: !2290)
!2296 = !DILocation(line: 184, column: 6, scope: !1028, inlinedAt: !2295)
!2297 = !DILocation(line: 184, column: 12, scope: !1028, inlinedAt: !2295)
!2298 = !DILocation(line: 185, column: 8, scope: !1042, inlinedAt: !2295)
!2299 = !DILocation(line: 185, column: 19, scope: !1042, inlinedAt: !2295)
!2300 = !DILocation(line: 186, column: 5, scope: !1042, inlinedAt: !2295)
!2301 = !DILocation(line: 187, column: 6, scope: !1028, inlinedAt: !2295)
!2302 = !DILocation(line: 187, column: 17, scope: !1028, inlinedAt: !2295)
!2303 = !DILocation(line: 188, column: 6, scope: !1028, inlinedAt: !2295)
!2304 = !DILocation(line: 188, column: 18, scope: !1028, inlinedAt: !2295)
!2305 = !DILocation(line: 1032, column: 10, scope: !2280, inlinedAt: !2290)
!2306 = !DILocation(line: 1033, column: 1, scope: !2280, inlinedAt: !2290)
!2307 = !DILocation(line: 1021, column: 3, scope: !2270)
!2308 = !DILocation(line: 0, scope: !2280)
!2309 = !DILocation(line: 1030, column: 3, scope: !2280)
!2310 = !DILocation(line: 1030, column: 26, scope: !2280)
!2311 = !DILocation(line: 1030, column: 30, scope: !2280)
!2312 = !DILocation(line: 0, scope: !1028, inlinedAt: !2313)
!2313 = distinct !DILocation(line: 1031, column: 3, scope: !2280)
!2314 = !DILocation(line: 184, column: 6, scope: !1028, inlinedAt: !2313)
!2315 = !DILocation(line: 184, column: 12, scope: !1028, inlinedAt: !2313)
!2316 = !DILocation(line: 185, column: 8, scope: !1042, inlinedAt: !2313)
!2317 = !DILocation(line: 185, column: 19, scope: !1042, inlinedAt: !2313)
!2318 = !DILocation(line: 186, column: 5, scope: !1042, inlinedAt: !2313)
!2319 = !DILocation(line: 187, column: 6, scope: !1028, inlinedAt: !2313)
!2320 = !DILocation(line: 187, column: 17, scope: !1028, inlinedAt: !2313)
!2321 = !DILocation(line: 188, column: 6, scope: !1028, inlinedAt: !2313)
!2322 = !DILocation(line: 188, column: 18, scope: !1028, inlinedAt: !2313)
!2323 = !DILocation(line: 1032, column: 10, scope: !2280)
!2324 = !DILocation(line: 1033, column: 1, scope: !2280)
!2325 = !DILocation(line: 1032, column: 3, scope: !2280)
!2326 = distinct !DISubprogram(name: "quotearg_custom", scope: !52, file: !52, line: 1036, type: !2327, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2329)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!47, !6, !6, !6}
!2329 = !{!2330, !2331, !2332}
!2330 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2326, file: !52, line: 1036, type: !6)
!2331 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2326, file: !52, line: 1036, type: !6)
!2332 = !DILocalVariable(name: "arg", arg: 3, scope: !2326, file: !52, line: 1037, type: !6)
!2333 = !DILocation(line: 0, scope: !2326)
!2334 = !DILocation(line: 0, scope: !2270, inlinedAt: !2335)
!2335 = distinct !DILocation(line: 1039, column: 10, scope: !2326)
!2336 = !DILocation(line: 0, scope: !2280, inlinedAt: !2337)
!2337 = distinct !DILocation(line: 1021, column: 10, scope: !2270, inlinedAt: !2335)
!2338 = !DILocation(line: 1030, column: 3, scope: !2280, inlinedAt: !2337)
!2339 = !DILocation(line: 1030, column: 26, scope: !2280, inlinedAt: !2337)
!2340 = !DILocation(line: 1030, column: 30, scope: !2280, inlinedAt: !2337)
!2341 = !DILocation(line: 0, scope: !1028, inlinedAt: !2342)
!2342 = distinct !DILocation(line: 1031, column: 3, scope: !2280, inlinedAt: !2337)
!2343 = !DILocation(line: 184, column: 6, scope: !1028, inlinedAt: !2342)
!2344 = !DILocation(line: 184, column: 12, scope: !1028, inlinedAt: !2342)
!2345 = !DILocation(line: 185, column: 8, scope: !1042, inlinedAt: !2342)
!2346 = !DILocation(line: 185, column: 19, scope: !1042, inlinedAt: !2342)
!2347 = !DILocation(line: 186, column: 5, scope: !1042, inlinedAt: !2342)
!2348 = !DILocation(line: 187, column: 6, scope: !1028, inlinedAt: !2342)
!2349 = !DILocation(line: 187, column: 17, scope: !1028, inlinedAt: !2342)
!2350 = !DILocation(line: 188, column: 6, scope: !1028, inlinedAt: !2342)
!2351 = !DILocation(line: 188, column: 18, scope: !1028, inlinedAt: !2342)
!2352 = !DILocation(line: 1032, column: 10, scope: !2280, inlinedAt: !2337)
!2353 = !DILocation(line: 1033, column: 1, scope: !2280, inlinedAt: !2337)
!2354 = !DILocation(line: 1039, column: 3, scope: !2326)
!2355 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !52, file: !52, line: 1043, type: !2356, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2358)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!47, !6, !6, !6, !91}
!2358 = !{!2359, !2360, !2361, !2362}
!2359 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2355, file: !52, line: 1043, type: !6)
!2360 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2355, file: !52, line: 1043, type: !6)
!2361 = !DILocalVariable(name: "arg", arg: 3, scope: !2355, file: !52, line: 1044, type: !6)
!2362 = !DILocalVariable(name: "argsize", arg: 4, scope: !2355, file: !52, line: 1044, type: !91)
!2363 = !DILocation(line: 0, scope: !2355)
!2364 = !DILocation(line: 0, scope: !2280, inlinedAt: !2365)
!2365 = distinct !DILocation(line: 1046, column: 10, scope: !2355)
!2366 = !DILocation(line: 1030, column: 3, scope: !2280, inlinedAt: !2365)
!2367 = !DILocation(line: 1030, column: 26, scope: !2280, inlinedAt: !2365)
!2368 = !DILocation(line: 1030, column: 30, scope: !2280, inlinedAt: !2365)
!2369 = !DILocation(line: 0, scope: !1028, inlinedAt: !2370)
!2370 = distinct !DILocation(line: 1031, column: 3, scope: !2280, inlinedAt: !2365)
!2371 = !DILocation(line: 184, column: 6, scope: !1028, inlinedAt: !2370)
!2372 = !DILocation(line: 184, column: 12, scope: !1028, inlinedAt: !2370)
!2373 = !DILocation(line: 185, column: 8, scope: !1042, inlinedAt: !2370)
!2374 = !DILocation(line: 185, column: 19, scope: !1042, inlinedAt: !2370)
!2375 = !DILocation(line: 186, column: 5, scope: !1042, inlinedAt: !2370)
!2376 = !DILocation(line: 187, column: 6, scope: !1028, inlinedAt: !2370)
!2377 = !DILocation(line: 187, column: 17, scope: !1028, inlinedAt: !2370)
!2378 = !DILocation(line: 188, column: 6, scope: !1028, inlinedAt: !2370)
!2379 = !DILocation(line: 188, column: 18, scope: !1028, inlinedAt: !2370)
!2380 = !DILocation(line: 1032, column: 10, scope: !2280, inlinedAt: !2365)
!2381 = !DILocation(line: 1033, column: 1, scope: !2280, inlinedAt: !2365)
!2382 = !DILocation(line: 1046, column: 3, scope: !2355)
!2383 = distinct !DISubprogram(name: "quote_n_mem", scope: !52, file: !52, line: 1061, type: !2384, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2386)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!6, !23, !6, !91}
!2386 = !{!2387, !2388, !2389}
!2387 = !DILocalVariable(name: "n", arg: 1, scope: !2383, file: !52, line: 1061, type: !23)
!2388 = !DILocalVariable(name: "arg", arg: 2, scope: !2383, file: !52, line: 1061, type: !6)
!2389 = !DILocalVariable(name: "argsize", arg: 3, scope: !2383, file: !52, line: 1061, type: !91)
!2390 = !DILocation(line: 0, scope: !2383)
!2391 = !DILocation(line: 1063, column: 10, scope: !2383)
!2392 = !DILocation(line: 1063, column: 3, scope: !2383)
!2393 = distinct !DISubprogram(name: "quote_mem", scope: !52, file: !52, line: 1067, type: !2394, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2396)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!6, !6, !91}
!2396 = !{!2397, !2398}
!2397 = !DILocalVariable(name: "arg", arg: 1, scope: !2393, file: !52, line: 1067, type: !6)
!2398 = !DILocalVariable(name: "argsize", arg: 2, scope: !2393, file: !52, line: 1067, type: !91)
!2399 = !DILocation(line: 0, scope: !2393)
!2400 = !DILocation(line: 0, scope: !2383, inlinedAt: !2401)
!2401 = distinct !DILocation(line: 1069, column: 10, scope: !2393)
!2402 = !DILocation(line: 1063, column: 10, scope: !2383, inlinedAt: !2401)
!2403 = !DILocation(line: 1069, column: 3, scope: !2393)
!2404 = distinct !DISubprogram(name: "quote_n", scope: !52, file: !52, line: 1073, type: !2405, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2407)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!6, !23, !6}
!2407 = !{!2408, !2409}
!2408 = !DILocalVariable(name: "n", arg: 1, scope: !2404, file: !52, line: 1073, type: !23)
!2409 = !DILocalVariable(name: "arg", arg: 2, scope: !2404, file: !52, line: 1073, type: !6)
!2410 = !DILocation(line: 0, scope: !2404)
!2411 = !DILocation(line: 0, scope: !2383, inlinedAt: !2412)
!2412 = distinct !DILocation(line: 1075, column: 10, scope: !2404)
!2413 = !DILocation(line: 1063, column: 10, scope: !2383, inlinedAt: !2412)
!2414 = !DILocation(line: 1075, column: 3, scope: !2404)
!2415 = distinct !DISubprogram(name: "quote", scope: !52, file: !52, line: 1079, type: !2416, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2418)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!6, !6}
!2418 = !{!2419}
!2419 = !DILocalVariable(name: "arg", arg: 1, scope: !2415, file: !52, line: 1079, type: !6)
!2420 = !DILocation(line: 0, scope: !2415)
!2421 = !DILocation(line: 0, scope: !2404, inlinedAt: !2422)
!2422 = distinct !DILocation(line: 1081, column: 10, scope: !2415)
!2423 = !DILocation(line: 0, scope: !2383, inlinedAt: !2424)
!2424 = distinct !DILocation(line: 1075, column: 10, scope: !2404, inlinedAt: !2422)
!2425 = !DILocation(line: 1063, column: 10, scope: !2383, inlinedAt: !2424)
!2426 = !DILocation(line: 1081, column: 3, scope: !2415)
!2427 = distinct !DISubprogram(name: "version_etc_arn", scope: !147, file: !147, line: 61, type: !2428, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !146, retainedNodes: !2466)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{null, !2430, !6, !6, !6, !2465, !91}
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2432, line: 7, baseType: !2433)
!2432 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !666, line: 49, size: 1728, elements: !2434)
!2434 = !{!2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2433, file: !666, line: 51, baseType: !23, size: 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2433, file: !666, line: 54, baseType: !47, size: 64, offset: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2433, file: !666, line: 55, baseType: !47, size: 64, offset: 128)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2433, file: !666, line: 56, baseType: !47, size: 64, offset: 192)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2433, file: !666, line: 57, baseType: !47, size: 64, offset: 256)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2433, file: !666, line: 58, baseType: !47, size: 64, offset: 320)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2433, file: !666, line: 59, baseType: !47, size: 64, offset: 384)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2433, file: !666, line: 60, baseType: !47, size: 64, offset: 448)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2433, file: !666, line: 61, baseType: !47, size: 64, offset: 512)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2433, file: !666, line: 64, baseType: !47, size: 64, offset: 576)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2433, file: !666, line: 65, baseType: !47, size: 64, offset: 640)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2433, file: !666, line: 66, baseType: !47, size: 64, offset: 704)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2433, file: !666, line: 68, baseType: !681, size: 64, offset: 768)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2433, file: !666, line: 70, baseType: !2449, size: 64, offset: 832)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2433, file: !666, line: 72, baseType: !23, size: 32, offset: 896)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2433, file: !666, line: 73, baseType: !23, size: 32, offset: 928)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2433, file: !666, line: 74, baseType: !687, size: 64, offset: 960)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2433, file: !666, line: 77, baseType: !90, size: 16, offset: 1024)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2433, file: !666, line: 78, baseType: !692, size: 8, offset: 1040)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2433, file: !666, line: 79, baseType: !694, size: 8, offset: 1048)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2433, file: !666, line: 81, baseType: !698, size: 64, offset: 1088)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2433, file: !666, line: 89, baseType: !701, size: 64, offset: 1152)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2433, file: !666, line: 91, baseType: !703, size: 64, offset: 1216)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2433, file: !666, line: 92, baseType: !706, size: 64, offset: 1280)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2433, file: !666, line: 93, baseType: !2449, size: 64, offset: 1344)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2433, file: !666, line: 94, baseType: !46, size: 64, offset: 1408)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2433, file: !666, line: 95, baseType: !91, size: 64, offset: 1472)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2433, file: !666, line: 96, baseType: !23, size: 32, offset: 1536)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2433, file: !666, line: 98, baseType: !713, size: 160, offset: 1568)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!2466 = !{!2467, !2468, !2469, !2470, !2471, !2472}
!2467 = !DILocalVariable(name: "stream", arg: 1, scope: !2427, file: !147, line: 61, type: !2430)
!2468 = !DILocalVariable(name: "command_name", arg: 2, scope: !2427, file: !147, line: 62, type: !6)
!2469 = !DILocalVariable(name: "package", arg: 3, scope: !2427, file: !147, line: 62, type: !6)
!2470 = !DILocalVariable(name: "version", arg: 4, scope: !2427, file: !147, line: 63, type: !6)
!2471 = !DILocalVariable(name: "authors", arg: 5, scope: !2427, file: !147, line: 64, type: !2465)
!2472 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2427, file: !147, line: 64, type: !91)
!2473 = !DILocation(line: 0, scope: !2427)
!2474 = !DILocation(line: 66, column: 7, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2427, file: !147, line: 66, column: 7)
!2476 = !DILocation(line: 66, column: 7, scope: !2427)
!2477 = !DILocation(line: 67, column: 5, scope: !2475)
!2478 = !DILocation(line: 69, column: 5, scope: !2475)
!2479 = !DILocation(line: 83, column: 3, scope: !2427)
!2480 = !DILocation(line: 85, column: 3, scope: !2427)
!2481 = !DILocation(line: 88, column: 3, scope: !2427)
!2482 = !DILocation(line: 95, column: 3, scope: !2427)
!2483 = !DILocation(line: 97, column: 3, scope: !2427)
!2484 = !DILocation(line: 105, column: 7, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2427, file: !147, line: 98, column: 5)
!2486 = !DILocation(line: 106, column: 7, scope: !2485)
!2487 = !DILocation(line: 109, column: 7, scope: !2485)
!2488 = !DILocation(line: 110, column: 7, scope: !2485)
!2489 = !DILocation(line: 113, column: 7, scope: !2485)
!2490 = !DILocation(line: 115, column: 7, scope: !2485)
!2491 = !DILocation(line: 120, column: 7, scope: !2485)
!2492 = !DILocation(line: 122, column: 7, scope: !2485)
!2493 = !DILocation(line: 127, column: 7, scope: !2485)
!2494 = !DILocation(line: 129, column: 7, scope: !2485)
!2495 = !DILocation(line: 134, column: 7, scope: !2485)
!2496 = !DILocation(line: 137, column: 7, scope: !2485)
!2497 = !DILocation(line: 142, column: 7, scope: !2485)
!2498 = !DILocation(line: 145, column: 7, scope: !2485)
!2499 = !DILocation(line: 150, column: 7, scope: !2485)
!2500 = !DILocation(line: 154, column: 7, scope: !2485)
!2501 = !DILocation(line: 159, column: 7, scope: !2485)
!2502 = !DILocation(line: 163, column: 7, scope: !2485)
!2503 = !DILocation(line: 170, column: 7, scope: !2485)
!2504 = !DILocation(line: 174, column: 7, scope: !2485)
!2505 = !DILocation(line: 176, column: 1, scope: !2427)
!2506 = distinct !DISubprogram(name: "version_etc_ar", scope: !147, file: !147, line: 183, type: !2507, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !146, retainedNodes: !2509)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{null, !2430, !6, !6, !6, !2465}
!2509 = !{!2510, !2511, !2512, !2513, !2514, !2515}
!2510 = !DILocalVariable(name: "stream", arg: 1, scope: !2506, file: !147, line: 183, type: !2430)
!2511 = !DILocalVariable(name: "command_name", arg: 2, scope: !2506, file: !147, line: 184, type: !6)
!2512 = !DILocalVariable(name: "package", arg: 3, scope: !2506, file: !147, line: 184, type: !6)
!2513 = !DILocalVariable(name: "version", arg: 4, scope: !2506, file: !147, line: 185, type: !6)
!2514 = !DILocalVariable(name: "authors", arg: 5, scope: !2506, file: !147, line: 185, type: !2465)
!2515 = !DILocalVariable(name: "n_authors", scope: !2506, file: !147, line: 187, type: !91)
!2516 = !DILocation(line: 0, scope: !2506)
!2517 = !DILocation(line: 189, column: 8, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2506, file: !147, line: 189, column: 3)
!2519 = !DILocation(line: 0, scope: !2518)
!2520 = !DILocation(line: 189, column: 23, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2518, file: !147, line: 189, column: 3)
!2522 = !DILocation(line: 189, column: 3, scope: !2518)
!2523 = !DILocation(line: 189, column: 52, scope: !2521)
!2524 = distinct !{!2524, !2522, !2525, !636}
!2525 = !DILocation(line: 190, column: 5, scope: !2518)
!2526 = !DILocation(line: 191, column: 3, scope: !2506)
!2527 = !DILocation(line: 192, column: 1, scope: !2506)
!2528 = distinct !DISubprogram(name: "version_etc_va", scope: !147, file: !147, line: 199, type: !2529, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !146, retainedNodes: !2538)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{null, !2430, !6, !6, !6, !2531}
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2533)
!2533 = !{!2534, !2535, !2536, !2537}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2532, file: !147, line: 192, baseType: !56, size: 32)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2532, file: !147, line: 192, baseType: !56, size: 32, offset: 32)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2532, file: !147, line: 192, baseType: !46, size: 64, offset: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2532, file: !147, line: 192, baseType: !46, size: 64, offset: 128)
!2538 = !{!2539, !2540, !2541, !2542, !2543, !2544, !2545}
!2539 = !DILocalVariable(name: "stream", arg: 1, scope: !2528, file: !147, line: 199, type: !2430)
!2540 = !DILocalVariable(name: "command_name", arg: 2, scope: !2528, file: !147, line: 200, type: !6)
!2541 = !DILocalVariable(name: "package", arg: 3, scope: !2528, file: !147, line: 200, type: !6)
!2542 = !DILocalVariable(name: "version", arg: 4, scope: !2528, file: !147, line: 201, type: !6)
!2543 = !DILocalVariable(name: "authors", arg: 5, scope: !2528, file: !147, line: 201, type: !2531)
!2544 = !DILocalVariable(name: "n_authors", scope: !2528, file: !147, line: 203, type: !91)
!2545 = !DILocalVariable(name: "authtab", scope: !2528, file: !147, line: 204, type: !2546)
!2546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !99)
!2547 = !DILocation(line: 0, scope: !2528)
!2548 = !DILocation(line: 204, column: 3, scope: !2528)
!2549 = !DILocation(line: 204, column: 15, scope: !2528)
!2550 = !DILocation(line: 208, column: 35, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2552, file: !147, line: 206, column: 3)
!2552 = distinct !DILexicalBlock(scope: !2528, file: !147, line: 206, column: 3)
!2553 = !DILocation(line: 208, column: 14, scope: !2551)
!2554 = !DILocation(line: 208, column: 33, scope: !2551)
!2555 = !DILocation(line: 208, column: 67, scope: !2551)
!2556 = !DILocation(line: 206, column: 3, scope: !2552)
!2557 = !DILocation(line: 0, scope: !2552)
!2558 = !DILocation(line: 211, column: 3, scope: !2528)
!2559 = !DILocation(line: 213, column: 1, scope: !2528)
!2560 = distinct !DISubprogram(name: "version_etc", scope: !147, file: !147, line: 230, type: !2561, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !146, retainedNodes: !2563)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{null, !2430, !6, !6, !6, null}
!2563 = !{!2564, !2565, !2566, !2567, !2568}
!2564 = !DILocalVariable(name: "stream", arg: 1, scope: !2560, file: !147, line: 230, type: !2430)
!2565 = !DILocalVariable(name: "command_name", arg: 2, scope: !2560, file: !147, line: 231, type: !6)
!2566 = !DILocalVariable(name: "package", arg: 3, scope: !2560, file: !147, line: 231, type: !6)
!2567 = !DILocalVariable(name: "version", arg: 4, scope: !2560, file: !147, line: 232, type: !6)
!2568 = !DILocalVariable(name: "authors", scope: !2560, file: !147, line: 234, type: !2569)
!2569 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !661, line: 52, baseType: !2570)
!2570 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !844, line: 32, baseType: !2571)
!2571 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !147, baseType: !2572)
!2572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2532, size: 192, elements: !695)
!2573 = !DILocation(line: 0, scope: !2560)
!2574 = !DILocation(line: 234, column: 3, scope: !2560)
!2575 = !DILocation(line: 234, column: 11, scope: !2560)
!2576 = !DILocation(line: 236, column: 3, scope: !2560)
!2577 = !DILocation(line: 237, column: 3, scope: !2560)
!2578 = !DILocation(line: 238, column: 3, scope: !2560)
!2579 = !DILocation(line: 239, column: 1, scope: !2560)
!2580 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !147, file: !147, line: 242, type: !764, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !146, retainedNodes: !4)
!2581 = !DILocation(line: 244, column: 3, scope: !2580)
!2582 = !DILocation(line: 249, column: 3, scope: !2580)
!2583 = !DILocation(line: 255, column: 3, scope: !2580)
!2584 = !DILocation(line: 260, column: 3, scope: !2580)
!2585 = !DILocation(line: 262, column: 1, scope: !2580)
!2586 = distinct !DISubprogram(name: "xnmalloc", scope: !157, file: !157, line: 99, type: !2587, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !2589)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!46, !91, !91}
!2589 = !{!2590, !2591}
!2590 = !DILocalVariable(name: "n", arg: 1, scope: !2586, file: !157, line: 99, type: !91)
!2591 = !DILocalVariable(name: "s", arg: 2, scope: !2586, file: !157, line: 99, type: !91)
!2592 = !DILocation(line: 0, scope: !2586)
!2593 = !DILocation(line: 101, column: 7, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2586, file: !157, line: 101, column: 7)
!2595 = !DILocation(line: 101, column: 7, scope: !2586)
!2596 = !DILocation(line: 102, column: 5, scope: !2594)
!2597 = !DILocation(line: 103, column: 21, scope: !2586)
!2598 = !DILocalVariable(name: "n", arg: 1, scope: !2599, file: !154, line: 39, type: !91)
!2599 = distinct !DISubprogram(name: "xmalloc", scope: !154, file: !154, line: 39, type: !2600, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !2602)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!46, !91}
!2602 = !{!2598, !2603}
!2603 = !DILocalVariable(name: "p", scope: !2599, file: !154, line: 41, type: !46)
!2604 = !DILocation(line: 0, scope: !2599, inlinedAt: !2605)
!2605 = distinct !DILocation(line: 103, column: 10, scope: !2586)
!2606 = !DILocation(line: 41, column: 13, scope: !2599, inlinedAt: !2605)
!2607 = !DILocation(line: 42, column: 8, scope: !2608, inlinedAt: !2605)
!2608 = distinct !DILexicalBlock(scope: !2599, file: !154, line: 42, column: 7)
!2609 = !DILocation(line: 42, column: 10, scope: !2608, inlinedAt: !2605)
!2610 = !DILocation(line: 43, column: 5, scope: !2608, inlinedAt: !2605)
!2611 = !DILocation(line: 103, column: 3, scope: !2586)
!2612 = !DILocation(line: 0, scope: !2599)
!2613 = !DILocation(line: 41, column: 13, scope: !2599)
!2614 = !DILocation(line: 42, column: 8, scope: !2608)
!2615 = !DILocation(line: 42, column: 10, scope: !2608)
!2616 = !DILocation(line: 43, column: 5, scope: !2608)
!2617 = !DILocation(line: 44, column: 3, scope: !2599)
!2618 = distinct !DISubprogram(name: "xnrealloc", scope: !157, file: !157, line: 112, type: !2619, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !2621)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!46, !46, !91, !91}
!2621 = !{!2622, !2623, !2624}
!2622 = !DILocalVariable(name: "p", arg: 1, scope: !2618, file: !157, line: 112, type: !46)
!2623 = !DILocalVariable(name: "n", arg: 2, scope: !2618, file: !157, line: 112, type: !91)
!2624 = !DILocalVariable(name: "s", arg: 3, scope: !2618, file: !157, line: 112, type: !91)
!2625 = !DILocation(line: 0, scope: !2618)
!2626 = !DILocation(line: 114, column: 7, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2618, file: !157, line: 114, column: 7)
!2628 = !DILocation(line: 114, column: 7, scope: !2618)
!2629 = !DILocation(line: 115, column: 5, scope: !2627)
!2630 = !DILocation(line: 116, column: 25, scope: !2618)
!2631 = !DILocalVariable(name: "p", arg: 1, scope: !2632, file: !154, line: 51, type: !46)
!2632 = distinct !DISubprogram(name: "xrealloc", scope: !154, file: !154, line: 51, type: !2633, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !2635)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{!46, !46, !91}
!2635 = !{!2631, !2636}
!2636 = !DILocalVariable(name: "n", arg: 2, scope: !2632, file: !154, line: 51, type: !91)
!2637 = !DILocation(line: 0, scope: !2632, inlinedAt: !2638)
!2638 = distinct !DILocation(line: 116, column: 10, scope: !2618)
!2639 = !DILocation(line: 53, column: 8, scope: !2640, inlinedAt: !2638)
!2640 = distinct !DILexicalBlock(scope: !2632, file: !154, line: 53, column: 7)
!2641 = !DILocation(line: 53, column: 10, scope: !2640, inlinedAt: !2638)
!2642 = !DILocation(line: 57, column: 7, scope: !2643, inlinedAt: !2638)
!2643 = distinct !DILexicalBlock(scope: !2640, file: !154, line: 54, column: 5)
!2644 = !DILocation(line: 58, column: 7, scope: !2643, inlinedAt: !2638)
!2645 = !DILocation(line: 61, column: 7, scope: !2632, inlinedAt: !2638)
!2646 = !DILocation(line: 62, column: 8, scope: !2647, inlinedAt: !2638)
!2647 = distinct !DILexicalBlock(scope: !2632, file: !154, line: 62, column: 7)
!2648 = !DILocation(line: 62, column: 10, scope: !2647, inlinedAt: !2638)
!2649 = !DILocation(line: 63, column: 5, scope: !2647, inlinedAt: !2638)
!2650 = !DILocation(line: 116, column: 3, scope: !2618)
!2651 = !DILocation(line: 0, scope: !2632)
!2652 = !DILocation(line: 53, column: 8, scope: !2640)
!2653 = !DILocation(line: 53, column: 10, scope: !2640)
!2654 = !DILocation(line: 57, column: 7, scope: !2643)
!2655 = !DILocation(line: 58, column: 7, scope: !2643)
!2656 = !DILocation(line: 61, column: 7, scope: !2632)
!2657 = !DILocation(line: 62, column: 8, scope: !2647)
!2658 = !DILocation(line: 62, column: 10, scope: !2647)
!2659 = !DILocation(line: 63, column: 5, scope: !2647)
!2660 = !DILocation(line: 65, column: 1, scope: !2632)
!2661 = !DILocation(line: 0, scope: !158)
!2662 = !DILocation(line: 176, column: 14, scope: !158)
!2663 = !DILocation(line: 178, column: 9, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !158, file: !157, line: 178, column: 7)
!2665 = !DILocation(line: 178, column: 7, scope: !158)
!2666 = !DILocation(line: 180, column: 13, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !157, line: 180, column: 11)
!2668 = distinct !DILexicalBlock(scope: !2664, file: !157, line: 179, column: 5)
!2669 = !DILocation(line: 180, column: 11, scope: !2668)
!2670 = !DILocation(line: 188, column: 30, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2667, file: !157, line: 181, column: 9)
!2672 = !DILocation(line: 189, column: 16, scope: !2671)
!2673 = !DILocation(line: 189, column: 13, scope: !2671)
!2674 = !DILocation(line: 190, column: 9, scope: !2671)
!2675 = !DILocation(line: 191, column: 11, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2668, file: !157, line: 191, column: 11)
!2677 = !DILocation(line: 191, column: 11, scope: !2668)
!2678 = !DILocation(line: 206, column: 7, scope: !158)
!2679 = !DILocation(line: 207, column: 25, scope: !158)
!2680 = !DILocation(line: 0, scope: !2632, inlinedAt: !2681)
!2681 = distinct !DILocation(line: 207, column: 10, scope: !158)
!2682 = !DILocation(line: 53, column: 10, scope: !2640, inlinedAt: !2681)
!2683 = !DILocation(line: 192, column: 9, scope: !2676)
!2684 = !DILocation(line: 200, column: 69, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !157, line: 200, column: 11)
!2686 = distinct !DILexicalBlock(scope: !2664, file: !157, line: 195, column: 5)
!2687 = !DILocation(line: 201, column: 11, scope: !2685)
!2688 = !DILocation(line: 200, column: 11, scope: !2686)
!2689 = !DILocation(line: 202, column: 9, scope: !2685)
!2690 = !DILocation(line: 203, column: 14, scope: !2686)
!2691 = !DILocation(line: 203, column: 18, scope: !2686)
!2692 = !DILocation(line: 203, column: 9, scope: !2686)
!2693 = !DILocation(line: 53, column: 8, scope: !2640, inlinedAt: !2681)
!2694 = !DILocation(line: 57, column: 7, scope: !2643, inlinedAt: !2681)
!2695 = !DILocation(line: 58, column: 7, scope: !2643, inlinedAt: !2681)
!2696 = !DILocation(line: 61, column: 7, scope: !2632, inlinedAt: !2681)
!2697 = !DILocation(line: 62, column: 8, scope: !2647, inlinedAt: !2681)
!2698 = !DILocation(line: 62, column: 10, scope: !2647, inlinedAt: !2681)
!2699 = !DILocation(line: 63, column: 5, scope: !2647, inlinedAt: !2681)
!2700 = !DILocation(line: 207, column: 3, scope: !158)
!2701 = distinct !DISubprogram(name: "xcharalloc", scope: !157, file: !157, line: 216, type: !1838, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !2702)
!2702 = !{!2703}
!2703 = !DILocalVariable(name: "n", arg: 1, scope: !2701, file: !157, line: 216, type: !91)
!2704 = !DILocation(line: 0, scope: !2701)
!2705 = !DILocation(line: 0, scope: !2599, inlinedAt: !2706)
!2706 = distinct !DILocation(line: 218, column: 10, scope: !2701)
!2707 = !DILocation(line: 41, column: 13, scope: !2599, inlinedAt: !2706)
!2708 = !DILocation(line: 42, column: 8, scope: !2608, inlinedAt: !2706)
!2709 = !DILocation(line: 42, column: 10, scope: !2608, inlinedAt: !2706)
!2710 = !DILocation(line: 43, column: 5, scope: !2608, inlinedAt: !2706)
!2711 = !DILocation(line: 218, column: 3, scope: !2701)
!2712 = distinct !DISubprogram(name: "x2realloc", scope: !154, file: !154, line: 74, type: !2713, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !2715)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!46, !46, !161}
!2715 = !{!2716, !2717}
!2716 = !DILocalVariable(name: "p", arg: 1, scope: !2712, file: !154, line: 74, type: !46)
!2717 = !DILocalVariable(name: "pn", arg: 2, scope: !2712, file: !154, line: 74, type: !161)
!2718 = !DILocation(line: 0, scope: !2712)
!2719 = !DILocation(line: 0, scope: !158, inlinedAt: !2720)
!2720 = distinct !DILocation(line: 76, column: 10, scope: !2712)
!2721 = !DILocation(line: 176, column: 14, scope: !158, inlinedAt: !2720)
!2722 = !DILocation(line: 178, column: 9, scope: !2664, inlinedAt: !2720)
!2723 = !DILocation(line: 178, column: 7, scope: !158, inlinedAt: !2720)
!2724 = !DILocation(line: 180, column: 13, scope: !2667, inlinedAt: !2720)
!2725 = !DILocation(line: 180, column: 11, scope: !2668, inlinedAt: !2720)
!2726 = !DILocation(line: 191, column: 11, scope: !2676, inlinedAt: !2720)
!2727 = !DILocation(line: 191, column: 11, scope: !2668, inlinedAt: !2720)
!2728 = !DILocation(line: 192, column: 9, scope: !2676, inlinedAt: !2720)
!2729 = !DILocation(line: 201, column: 11, scope: !2685, inlinedAt: !2720)
!2730 = !DILocation(line: 200, column: 11, scope: !2686, inlinedAt: !2720)
!2731 = !DILocation(line: 202, column: 9, scope: !2685, inlinedAt: !2720)
!2732 = !DILocation(line: 203, column: 14, scope: !2686, inlinedAt: !2720)
!2733 = !DILocation(line: 203, column: 18, scope: !2686, inlinedAt: !2720)
!2734 = !DILocation(line: 203, column: 9, scope: !2686, inlinedAt: !2720)
!2735 = !DILocation(line: 0, scope: !2632, inlinedAt: !2736)
!2736 = distinct !DILocation(line: 207, column: 10, scope: !158, inlinedAt: !2720)
!2737 = !DILocation(line: 53, column: 10, scope: !2640, inlinedAt: !2736)
!2738 = !DILocation(line: 206, column: 7, scope: !158, inlinedAt: !2720)
!2739 = !DILocation(line: 61, column: 7, scope: !2632, inlinedAt: !2736)
!2740 = !DILocation(line: 62, column: 8, scope: !2647, inlinedAt: !2736)
!2741 = !DILocation(line: 62, column: 10, scope: !2647, inlinedAt: !2736)
!2742 = !DILocation(line: 63, column: 5, scope: !2647, inlinedAt: !2736)
!2743 = !DILocation(line: 76, column: 3, scope: !2712)
!2744 = distinct !DISubprogram(name: "xzalloc", scope: !154, file: !154, line: 84, type: !2600, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !2745)
!2745 = !{!2746}
!2746 = !DILocalVariable(name: "n", arg: 1, scope: !2744, file: !154, line: 84, type: !91)
!2747 = !DILocation(line: 0, scope: !2744)
!2748 = !DILocalVariable(name: "n", arg: 1, scope: !2749, file: !154, line: 93, type: !91)
!2749 = distinct !DISubprogram(name: "xcalloc", scope: !154, file: !154, line: 93, type: !2587, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !2750)
!2750 = !{!2748, !2751, !2752}
!2751 = !DILocalVariable(name: "s", arg: 2, scope: !2749, file: !154, line: 93, type: !91)
!2752 = !DILocalVariable(name: "p", scope: !2749, file: !154, line: 95, type: !46)
!2753 = !DILocation(line: 0, scope: !2749, inlinedAt: !2754)
!2754 = distinct !DILocation(line: 86, column: 10, scope: !2744)
!2755 = !DILocation(line: 100, column: 7, scope: !2756, inlinedAt: !2754)
!2756 = distinct !DILexicalBlock(scope: !2749, file: !154, line: 100, column: 7)
!2757 = !DILocation(line: 101, column: 7, scope: !2756, inlinedAt: !2754)
!2758 = !DILocation(line: 101, column: 18, scope: !2756, inlinedAt: !2754)
!2759 = !DILocation(line: 101, column: 16, scope: !2756, inlinedAt: !2754)
!2760 = !DILocation(line: 100, column: 7, scope: !2749, inlinedAt: !2754)
!2761 = !DILocation(line: 102, column: 5, scope: !2756, inlinedAt: !2754)
!2762 = !DILocation(line: 86, column: 3, scope: !2744)
!2763 = !DILocation(line: 0, scope: !2749)
!2764 = !DILocation(line: 100, column: 7, scope: !2756)
!2765 = !DILocation(line: 101, column: 7, scope: !2756)
!2766 = !DILocation(line: 101, column: 18, scope: !2756)
!2767 = !DILocation(line: 101, column: 16, scope: !2756)
!2768 = !DILocation(line: 100, column: 7, scope: !2749)
!2769 = !DILocation(line: 102, column: 5, scope: !2756)
!2770 = !DILocation(line: 103, column: 3, scope: !2749)
!2771 = distinct !DISubprogram(name: "xmemdup", scope: !154, file: !154, line: 111, type: !2772, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !2776)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!46, !2774, !91}
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2776 = !{!2777, !2778}
!2777 = !DILocalVariable(name: "p", arg: 1, scope: !2771, file: !154, line: 111, type: !2774)
!2778 = !DILocalVariable(name: "s", arg: 2, scope: !2771, file: !154, line: 111, type: !91)
!2779 = !DILocation(line: 0, scope: !2771)
!2780 = !DILocation(line: 0, scope: !2599, inlinedAt: !2781)
!2781 = distinct !DILocation(line: 113, column: 18, scope: !2771)
!2782 = !DILocation(line: 41, column: 13, scope: !2599, inlinedAt: !2781)
!2783 = !DILocation(line: 42, column: 8, scope: !2608, inlinedAt: !2781)
!2784 = !DILocation(line: 42, column: 10, scope: !2608, inlinedAt: !2781)
!2785 = !DILocation(line: 43, column: 5, scope: !2608, inlinedAt: !2781)
!2786 = !DILocalVariable(name: "__dest", arg: 1, scope: !2787, file: !1365, line: 26, type: !2790)
!2787 = distinct !DISubprogram(name: "memcpy", scope: !1365, file: !1365, line: 26, type: !2788, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !2792)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!46, !2790, !2791, !91}
!2790 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !46)
!2791 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2774)
!2792 = !{!2786, !2793, !2794}
!2793 = !DILocalVariable(name: "__src", arg: 2, scope: !2787, file: !1365, line: 26, type: !2791)
!2794 = !DILocalVariable(name: "__len", arg: 3, scope: !2787, file: !1365, line: 26, type: !91)
!2795 = !DILocation(line: 0, scope: !2787, inlinedAt: !2796)
!2796 = distinct !DILocation(line: 113, column: 10, scope: !2771)
!2797 = !DILocation(line: 29, column: 10, scope: !2787, inlinedAt: !2796)
!2798 = !DILocation(line: 113, column: 3, scope: !2771)
!2799 = distinct !DISubprogram(name: "xstrdup", scope: !154, file: !154, line: 119, type: !757, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !2800)
!2800 = !{!2801}
!2801 = !DILocalVariable(name: "string", arg: 1, scope: !2799, file: !154, line: 119, type: !6)
!2802 = !DILocation(line: 0, scope: !2799)
!2803 = !DILocation(line: 121, column: 27, scope: !2799)
!2804 = !DILocation(line: 121, column: 43, scope: !2799)
!2805 = !DILocation(line: 0, scope: !2771, inlinedAt: !2806)
!2806 = distinct !DILocation(line: 121, column: 10, scope: !2799)
!2807 = !DILocation(line: 0, scope: !2599, inlinedAt: !2808)
!2808 = distinct !DILocation(line: 113, column: 18, scope: !2771, inlinedAt: !2806)
!2809 = !DILocation(line: 41, column: 13, scope: !2599, inlinedAt: !2808)
!2810 = !DILocation(line: 42, column: 8, scope: !2608, inlinedAt: !2808)
!2811 = !DILocation(line: 42, column: 10, scope: !2608, inlinedAt: !2808)
!2812 = !DILocation(line: 43, column: 5, scope: !2608, inlinedAt: !2808)
!2813 = !DILocation(line: 0, scope: !2787, inlinedAt: !2814)
!2814 = distinct !DILocation(line: 113, column: 10, scope: !2771, inlinedAt: !2806)
!2815 = !DILocation(line: 29, column: 10, scope: !2787, inlinedAt: !2814)
!2816 = !DILocation(line: 121, column: 3, scope: !2799)
!2817 = distinct !DISubprogram(name: "xalloc_die", scope: !171, file: !171, line: 32, type: !764, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !170, retainedNodes: !4)
!2818 = !DILocation(line: 34, column: 10, scope: !2817)
!2819 = !DILocation(line: 34, column: 33, scope: !2817)
!2820 = !DILocation(line: 34, column: 3, scope: !2817)
!2821 = !DILocation(line: 40, column: 3, scope: !2817)
!2822 = distinct !DISubprogram(name: "rpl_calloc", scope: !173, file: !173, line: 42, type: !2587, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !2823)
!2823 = !{!2824, !2825, !2826, !2827}
!2824 = !DILocalVariable(name: "n", arg: 1, scope: !2822, file: !173, line: 42, type: !91)
!2825 = !DILocalVariable(name: "s", arg: 2, scope: !2822, file: !173, line: 42, type: !91)
!2826 = !DILocalVariable(name: "result", scope: !2822, file: !173, line: 44, type: !46)
!2827 = !DILocalVariable(name: "bytes", scope: !2828, file: !173, line: 56, type: !91)
!2828 = distinct !DILexicalBlock(scope: !2829, file: !173, line: 53, column: 5)
!2829 = distinct !DILexicalBlock(scope: !2822, file: !173, line: 47, column: 7)
!2830 = !DILocation(line: 0, scope: !2822)
!2831 = !DILocation(line: 47, column: 9, scope: !2829)
!2832 = !DILocation(line: 47, column: 14, scope: !2829)
!2833 = !DILocation(line: 0, scope: !2828)
!2834 = !DILocation(line: 57, column: 21, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2828, file: !173, line: 57, column: 11)
!2836 = !DILocation(line: 57, column: 11, scope: !2828)
!2837 = !DILocation(line: 59, column: 11, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2835, file: !173, line: 58, column: 9)
!2839 = !DILocation(line: 59, column: 17, scope: !2838)
!2840 = !DILocation(line: 65, column: 12, scope: !2822)
!2841 = !DILocation(line: 72, column: 3, scope: !2822)
!2842 = !DILocation(line: 73, column: 1, scope: !2822)
!2843 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !175, file: !175, line: 86, type: !2844, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !174, retainedNodes: !2858)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!91, !2846, !6, !91, !2847}
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1117, line: 6, baseType: !2849)
!2849 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1119, line: 21, baseType: !2850)
!2850 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1119, line: 13, size: 64, elements: !2851)
!2851 = !{!2852, !2853}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2850, file: !1119, line: 15, baseType: !23, size: 32)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2850, file: !1119, line: 20, baseType: !2854, size: 32, offset: 32)
!2854 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2850, file: !1119, line: 16, size: 32, elements: !2855)
!2855 = !{!2856, !2857}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2854, file: !1119, line: 18, baseType: !56, size: 32)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2854, file: !1119, line: 19, baseType: !1128, size: 32)
!2858 = !{!2859, !2860, !2861, !2862, !2863, !2864, !2865}
!2859 = !DILocalVariable(name: "pwc", arg: 1, scope: !2843, file: !175, line: 86, type: !2846)
!2860 = !DILocalVariable(name: "s", arg: 2, scope: !2843, file: !175, line: 86, type: !6)
!2861 = !DILocalVariable(name: "n", arg: 3, scope: !2843, file: !175, line: 86, type: !91)
!2862 = !DILocalVariable(name: "ps", arg: 4, scope: !2843, file: !175, line: 86, type: !2847)
!2863 = !DILocalVariable(name: "ret", scope: !2843, file: !175, line: 88, type: !91)
!2864 = !DILocalVariable(name: "wc", scope: !2843, file: !175, line: 89, type: !1133)
!2865 = !DILocalVariable(name: "uc", scope: !2866, file: !175, line: 156, type: !995)
!2866 = distinct !DILexicalBlock(scope: !2867, file: !175, line: 155, column: 5)
!2867 = distinct !DILexicalBlock(scope: !2843, file: !175, line: 154, column: 7)
!2868 = !DILocation(line: 0, scope: !2843)
!2869 = !DILocation(line: 89, column: 3, scope: !2843)
!2870 = !DILocation(line: 105, column: 9, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2843, file: !175, line: 105, column: 7)
!2872 = !DILocation(line: 105, column: 7, scope: !2843)
!2873 = !DILocation(line: 145, column: 9, scope: !2843)
!2874 = !DILocation(line: 154, column: 19, scope: !2867)
!2875 = !DILocation(line: 154, column: 26, scope: !2867)
!2876 = !DILocation(line: 154, column: 41, scope: !2867)
!2877 = !DILocation(line: 154, column: 7, scope: !2843)
!2878 = !DILocation(line: 156, column: 26, scope: !2866)
!2879 = !DILocation(line: 0, scope: !2866)
!2880 = !DILocation(line: 157, column: 14, scope: !2866)
!2881 = !DILocation(line: 157, column: 12, scope: !2866)
!2882 = !DILocation(line: 163, column: 1, scope: !2843)
!2883 = !DISubprogram(name: "mbrtowc", scope: !1798, file: !1798, line: 296, type: !2884, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!93, !37, !6, !93, !2886}
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2887 = distinct !DISubprogram(name: "close_stream", scope: !178, file: !178, line: 56, type: !2888, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !177, retainedNodes: !2924)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!23, !2890}
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2432, line: 7, baseType: !2892)
!2892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !666, line: 49, size: 1728, elements: !2893)
!2893 = !{!2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2892, file: !666, line: 51, baseType: !23, size: 32)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2892, file: !666, line: 54, baseType: !47, size: 64, offset: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2892, file: !666, line: 55, baseType: !47, size: 64, offset: 128)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2892, file: !666, line: 56, baseType: !47, size: 64, offset: 192)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2892, file: !666, line: 57, baseType: !47, size: 64, offset: 256)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2892, file: !666, line: 58, baseType: !47, size: 64, offset: 320)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2892, file: !666, line: 59, baseType: !47, size: 64, offset: 384)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2892, file: !666, line: 60, baseType: !47, size: 64, offset: 448)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2892, file: !666, line: 61, baseType: !47, size: 64, offset: 512)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2892, file: !666, line: 64, baseType: !47, size: 64, offset: 576)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2892, file: !666, line: 65, baseType: !47, size: 64, offset: 640)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2892, file: !666, line: 66, baseType: !47, size: 64, offset: 704)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2892, file: !666, line: 68, baseType: !681, size: 64, offset: 768)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2892, file: !666, line: 70, baseType: !2908, size: 64, offset: 832)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2892, file: !666, line: 72, baseType: !23, size: 32, offset: 896)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2892, file: !666, line: 73, baseType: !23, size: 32, offset: 928)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2892, file: !666, line: 74, baseType: !687, size: 64, offset: 960)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2892, file: !666, line: 77, baseType: !90, size: 16, offset: 1024)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2892, file: !666, line: 78, baseType: !692, size: 8, offset: 1040)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2892, file: !666, line: 79, baseType: !694, size: 8, offset: 1048)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2892, file: !666, line: 81, baseType: !698, size: 64, offset: 1088)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2892, file: !666, line: 89, baseType: !701, size: 64, offset: 1152)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2892, file: !666, line: 91, baseType: !703, size: 64, offset: 1216)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2892, file: !666, line: 92, baseType: !706, size: 64, offset: 1280)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2892, file: !666, line: 93, baseType: !2908, size: 64, offset: 1344)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2892, file: !666, line: 94, baseType: !46, size: 64, offset: 1408)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2892, file: !666, line: 95, baseType: !91, size: 64, offset: 1472)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2892, file: !666, line: 96, baseType: !23, size: 32, offset: 1536)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2892, file: !666, line: 98, baseType: !713, size: 160, offset: 1568)
!2924 = !{!2925, !2926, !2928, !2929}
!2925 = !DILocalVariable(name: "stream", arg: 1, scope: !2887, file: !178, line: 56, type: !2890)
!2926 = !DILocalVariable(name: "some_pending", scope: !2887, file: !178, line: 58, type: !2927)
!2927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!2928 = !DILocalVariable(name: "prev_fail", scope: !2887, file: !178, line: 59, type: !2927)
!2929 = !DILocalVariable(name: "fclose_fail", scope: !2887, file: !178, line: 60, type: !2927)
!2930 = !DILocation(line: 0, scope: !2887)
!2931 = !DILocation(line: 58, column: 30, scope: !2887)
!2932 = !DILocalVariable(name: "__stream", arg: 1, scope: !2933, file: !2934, line: 135, type: !2890)
!2933 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2934, file: !2934, line: 135, type: !2888, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !177, retainedNodes: !2935)
!2934 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!2935 = !{!2932}
!2936 = !DILocation(line: 0, scope: !2933, inlinedAt: !2937)
!2937 = distinct !DILocation(line: 59, column: 27, scope: !2887)
!2938 = !DILocation(line: 137, column: 10, scope: !2933, inlinedAt: !2937)
!2939 = !{!2940, !740, i64 0}
!2940 = !{!"_IO_FILE", !740, i64 0, !596, i64 8, !596, i64 16, !596, i64 24, !596, i64 32, !596, i64 40, !596, i64 48, !596, i64 56, !596, i64 64, !596, i64 72, !596, i64 80, !596, i64 88, !596, i64 96, !596, i64 104, !740, i64 112, !740, i64 116, !1874, i64 120, !1357, i64 128, !597, i64 130, !597, i64 131, !596, i64 136, !1874, i64 144, !596, i64 152, !596, i64 160, !596, i64 168, !596, i64 176, !1874, i64 184, !740, i64 192, !597, i64 196}
!2941 = !DILocation(line: 59, column: 43, scope: !2887)
!2942 = !DILocation(line: 60, column: 29, scope: !2887)
!2943 = !DILocation(line: 60, column: 45, scope: !2887)
!2944 = !DILocation(line: 70, column: 17, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2887, file: !178, line: 70, column: 7)
!2946 = !DILocation(line: 58, column: 50, scope: !2887)
!2947 = !DILocation(line: 70, column: 33, scope: !2945)
!2948 = !DILocation(line: 70, column: 53, scope: !2945)
!2949 = !DILocation(line: 70, column: 59, scope: !2945)
!2950 = !DILocation(line: 70, column: 7, scope: !2887)
!2951 = !DILocation(line: 72, column: 11, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2945, file: !178, line: 71, column: 5)
!2953 = !DILocation(line: 73, column: 9, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2952, file: !178, line: 72, column: 11)
!2955 = !DILocation(line: 73, column: 15, scope: !2954)
!2956 = !DILocation(line: 78, column: 1, scope: !2887)
!2957 = distinct !DISubprogram(name: "hard_locale", scope: !180, file: !180, line: 27, type: !2958, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !179, retainedNodes: !2960)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!16, !23}
!2960 = !{!2961, !2962}
!2961 = !DILocalVariable(name: "category", arg: 1, scope: !2957, file: !180, line: 27, type: !23)
!2962 = !DILocalVariable(name: "locale", scope: !2957, file: !180, line: 29, type: !2963)
!2963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !2964)
!2964 = !{!2965}
!2965 = !DISubrange(count: 257)
!2966 = !DILocation(line: 0, scope: !2957)
!2967 = !DILocation(line: 29, column: 3, scope: !2957)
!2968 = !DILocation(line: 29, column: 8, scope: !2957)
!2969 = !DILocation(line: 31, column: 7, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2957, file: !180, line: 31, column: 7)
!2971 = !DILocation(line: 31, column: 7, scope: !2957)
!2972 = !DILocation(line: 34, column: 12, scope: !2957)
!2973 = !DILocation(line: 34, column: 38, scope: !2957)
!2974 = !DILocation(line: 34, column: 41, scope: !2957)
!2975 = !DILocation(line: 34, column: 66, scope: !2957)
!2976 = !DILocation(line: 35, column: 1, scope: !2957)
!2977 = distinct !DISubprogram(name: "locale_charset", scope: !182, file: !182, line: 831, type: !2978, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2980)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!6}
!2980 = !{!2981}
!2981 = !DILocalVariable(name: "codeset", scope: !2977, file: !182, line: 833, type: !6)
!2982 = !DILocation(line: 847, column: 13, scope: !2977)
!2983 = !DILocation(line: 0, scope: !2977)
!2984 = !DILocation(line: 911, column: 15, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2977, file: !182, line: 911, column: 7)
!2986 = !DILocation(line: 911, column: 7, scope: !2977)
!2987 = !DILocation(line: 1070, column: 13, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2989, file: !182, line: 1070, column: 13)
!2989 = distinct !DILexicalBlock(scope: !2990, file: !182, line: 1060, column: 7)
!2990 = distinct !DILexicalBlock(scope: !2977, file: !182, line: 1019, column: 3)
!2991 = !DILocation(line: 1070, column: 24, scope: !2988)
!2992 = !DILocation(line: 1070, column: 13, scope: !2989)
!2993 = !DILocation(line: 1158, column: 3, scope: !2977)
!2994 = !DISubprogram(name: "nl_langinfo", scope: !185, file: !185, line: 661, type: !2995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!47, !23}
!2997 = distinct !DISubprogram(name: "setlocale_null_r", scope: !571, file: !571, line: 269, type: !2998, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3000)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!23, !23, !47, !91}
!3000 = !{!3001, !3002, !3003}
!3001 = !DILocalVariable(name: "category", arg: 1, scope: !2997, file: !571, line: 269, type: !23)
!3002 = !DILocalVariable(name: "buf", arg: 2, scope: !2997, file: !571, line: 269, type: !47)
!3003 = !DILocalVariable(name: "bufsize", arg: 3, scope: !2997, file: !571, line: 269, type: !91)
!3004 = !DILocation(line: 0, scope: !2997)
!3005 = !DILocalVariable(name: "category", arg: 1, scope: !3006, file: !571, line: 91, type: !23)
!3006 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !571, file: !571, line: 91, type: !2998, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3007)
!3007 = !{!3005, !3008, !3009, !3010, !3011}
!3008 = !DILocalVariable(name: "buf", arg: 2, scope: !3006, file: !571, line: 91, type: !47)
!3009 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3006, file: !571, line: 91, type: !91)
!3010 = !DILocalVariable(name: "result", scope: !3006, file: !571, line: 140, type: !6)
!3011 = !DILocalVariable(name: "length", scope: !3012, file: !571, line: 154, type: !91)
!3012 = distinct !DILexicalBlock(scope: !3013, file: !571, line: 153, column: 5)
!3013 = distinct !DILexicalBlock(scope: !3006, file: !571, line: 142, column: 7)
!3014 = !DILocation(line: 0, scope: !3006, inlinedAt: !3015)
!3015 = distinct !DILocation(line: 274, column: 10, scope: !2997)
!3016 = !DILocalVariable(name: "category", arg: 1, scope: !3017, file: !571, line: 60, type: !23)
!3017 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !571, file: !571, line: 60, type: !3018, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3020)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!6, !23}
!3020 = !{!3016, !3021}
!3021 = !DILocalVariable(name: "result", scope: !3017, file: !571, line: 62, type: !6)
!3022 = !DILocation(line: 0, scope: !3017, inlinedAt: !3023)
!3023 = distinct !DILocation(line: 140, column: 24, scope: !3006, inlinedAt: !3015)
!3024 = !DILocation(line: 62, column: 24, scope: !3017, inlinedAt: !3023)
!3025 = !DILocation(line: 142, column: 14, scope: !3013, inlinedAt: !3015)
!3026 = !DILocation(line: 142, column: 7, scope: !3006, inlinedAt: !3015)
!3027 = !DILocation(line: 145, column: 19, scope: !3028, inlinedAt: !3015)
!3028 = distinct !DILexicalBlock(scope: !3029, file: !571, line: 145, column: 11)
!3029 = distinct !DILexicalBlock(scope: !3013, file: !571, line: 143, column: 5)
!3030 = !DILocation(line: 145, column: 11, scope: !3029, inlinedAt: !3015)
!3031 = !DILocation(line: 149, column: 16, scope: !3028, inlinedAt: !3015)
!3032 = !DILocation(line: 149, column: 9, scope: !3028, inlinedAt: !3015)
!3033 = !DILocation(line: 154, column: 23, scope: !3012, inlinedAt: !3015)
!3034 = !DILocation(line: 0, scope: !3012, inlinedAt: !3015)
!3035 = !DILocation(line: 155, column: 18, scope: !3036, inlinedAt: !3015)
!3036 = distinct !DILexicalBlock(scope: !3012, file: !571, line: 155, column: 11)
!3037 = !DILocation(line: 155, column: 11, scope: !3012, inlinedAt: !3015)
!3038 = !DILocation(line: 157, column: 39, scope: !3039, inlinedAt: !3015)
!3039 = distinct !DILexicalBlock(scope: !3036, file: !571, line: 156, column: 9)
!3040 = !DILocalVariable(name: "__dest", arg: 1, scope: !3041, file: !1365, line: 26, type: !2790)
!3041 = distinct !DISubprogram(name: "memcpy", scope: !1365, file: !1365, line: 26, type: !2788, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3042)
!3042 = !{!3040, !3043, !3044}
!3043 = !DILocalVariable(name: "__src", arg: 2, scope: !3041, file: !1365, line: 26, type: !2791)
!3044 = !DILocalVariable(name: "__len", arg: 3, scope: !3041, file: !1365, line: 26, type: !91)
!3045 = !DILocation(line: 0, scope: !3041, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 157, column: 11, scope: !3039, inlinedAt: !3015)
!3047 = !DILocation(line: 29, column: 10, scope: !3041, inlinedAt: !3046)
!3048 = !DILocation(line: 158, column: 11, scope: !3039, inlinedAt: !3015)
!3049 = !DILocation(line: 162, column: 23, scope: !3050, inlinedAt: !3015)
!3050 = distinct !DILexicalBlock(scope: !3051, file: !571, line: 162, column: 15)
!3051 = distinct !DILexicalBlock(scope: !3036, file: !571, line: 161, column: 9)
!3052 = !DILocation(line: 162, column: 15, scope: !3051, inlinedAt: !3015)
!3053 = !DILocation(line: 167, column: 44, scope: !3054, inlinedAt: !3015)
!3054 = distinct !DILexicalBlock(scope: !3050, file: !571, line: 163, column: 13)
!3055 = !DILocation(line: 0, scope: !3041, inlinedAt: !3056)
!3056 = distinct !DILocation(line: 167, column: 15, scope: !3054, inlinedAt: !3015)
!3057 = !DILocation(line: 29, column: 10, scope: !3041, inlinedAt: !3056)
!3058 = !DILocation(line: 168, column: 15, scope: !3054, inlinedAt: !3015)
!3059 = !DILocation(line: 168, column: 32, scope: !3054, inlinedAt: !3015)
!3060 = !DILocation(line: 169, column: 13, scope: !3054, inlinedAt: !3015)
!3061 = !DILocation(line: 0, scope: !3013, inlinedAt: !3015)
!3062 = !DILocation(line: 274, column: 3, scope: !2997)
!3063 = distinct !DISubprogram(name: "setlocale_null", scope: !571, file: !571, line: 301, type: !3018, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3064)
!3064 = !{!3065}
!3065 = !DILocalVariable(name: "category", arg: 1, scope: !3063, file: !571, line: 301, type: !23)
!3066 = !DILocation(line: 0, scope: !3063)
!3067 = !DILocation(line: 0, scope: !3017, inlinedAt: !3068)
!3068 = distinct !DILocation(line: 304, column: 10, scope: !3063)
!3069 = !DILocation(line: 62, column: 24, scope: !3017, inlinedAt: !3068)
!3070 = !DILocation(line: 304, column: 3, scope: !3063)
!3071 = distinct !DISubprogram(name: "rpl_fclose", scope: !573, file: !573, line: 58, type: !3072, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3108)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!23, !3074}
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2432, line: 7, baseType: !3076)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !666, line: 49, size: 1728, elements: !3077)
!3077 = !{!3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3076, file: !666, line: 51, baseType: !23, size: 32)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3076, file: !666, line: 54, baseType: !47, size: 64, offset: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3076, file: !666, line: 55, baseType: !47, size: 64, offset: 128)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3076, file: !666, line: 56, baseType: !47, size: 64, offset: 192)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3076, file: !666, line: 57, baseType: !47, size: 64, offset: 256)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3076, file: !666, line: 58, baseType: !47, size: 64, offset: 320)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3076, file: !666, line: 59, baseType: !47, size: 64, offset: 384)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3076, file: !666, line: 60, baseType: !47, size: 64, offset: 448)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3076, file: !666, line: 61, baseType: !47, size: 64, offset: 512)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3076, file: !666, line: 64, baseType: !47, size: 64, offset: 576)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3076, file: !666, line: 65, baseType: !47, size: 64, offset: 640)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3076, file: !666, line: 66, baseType: !47, size: 64, offset: 704)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3076, file: !666, line: 68, baseType: !681, size: 64, offset: 768)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3076, file: !666, line: 70, baseType: !3092, size: 64, offset: 832)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3076, file: !666, line: 72, baseType: !23, size: 32, offset: 896)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3076, file: !666, line: 73, baseType: !23, size: 32, offset: 928)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3076, file: !666, line: 74, baseType: !687, size: 64, offset: 960)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3076, file: !666, line: 77, baseType: !90, size: 16, offset: 1024)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3076, file: !666, line: 78, baseType: !692, size: 8, offset: 1040)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3076, file: !666, line: 79, baseType: !694, size: 8, offset: 1048)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3076, file: !666, line: 81, baseType: !698, size: 64, offset: 1088)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3076, file: !666, line: 89, baseType: !701, size: 64, offset: 1152)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3076, file: !666, line: 91, baseType: !703, size: 64, offset: 1216)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3076, file: !666, line: 92, baseType: !706, size: 64, offset: 1280)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3076, file: !666, line: 93, baseType: !3092, size: 64, offset: 1344)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3076, file: !666, line: 94, baseType: !46, size: 64, offset: 1408)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3076, file: !666, line: 95, baseType: !91, size: 64, offset: 1472)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3076, file: !666, line: 96, baseType: !23, size: 32, offset: 1536)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3076, file: !666, line: 98, baseType: !713, size: 160, offset: 1568)
!3108 = !{!3109, !3110, !3111, !3112}
!3109 = !DILocalVariable(name: "fp", arg: 1, scope: !3071, file: !573, line: 58, type: !3074)
!3110 = !DILocalVariable(name: "saved_errno", scope: !3071, file: !573, line: 60, type: !23)
!3111 = !DILocalVariable(name: "fd", scope: !3071, file: !573, line: 61, type: !23)
!3112 = !DILocalVariable(name: "result", scope: !3071, file: !573, line: 62, type: !23)
!3113 = !DILocation(line: 0, scope: !3071)
!3114 = !DILocation(line: 65, column: 8, scope: !3071)
!3115 = !DILocation(line: 66, column: 10, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3071, file: !573, line: 66, column: 7)
!3117 = !DILocation(line: 66, column: 7, scope: !3071)
!3118 = !DILocation(line: 67, column: 12, scope: !3116)
!3119 = !DILocation(line: 67, column: 5, scope: !3116)
!3120 = !DILocation(line: 72, column: 9, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3071, file: !573, line: 72, column: 7)
!3122 = !DILocation(line: 72, column: 23, scope: !3121)
!3123 = !DILocation(line: 72, column: 33, scope: !3121)
!3124 = !DILocation(line: 72, column: 26, scope: !3121)
!3125 = !DILocation(line: 72, column: 59, scope: !3121)
!3126 = !DILocation(line: 73, column: 7, scope: !3121)
!3127 = !DILocation(line: 73, column: 10, scope: !3121)
!3128 = !DILocation(line: 72, column: 7, scope: !3071)
!3129 = !DILocation(line: 100, column: 12, scope: !3071)
!3130 = !DILocation(line: 105, column: 7, scope: !3071)
!3131 = !DILocation(line: 74, column: 19, scope: !3121)
!3132 = !DILocation(line: 105, column: 19, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3071, file: !573, line: 105, column: 7)
!3134 = !DILocation(line: 107, column: 13, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3133, file: !573, line: 106, column: 5)
!3136 = !DILocation(line: 109, column: 5, scope: !3135)
!3137 = !DILocation(line: 112, column: 1, scope: !3071)
!3138 = !DISubprogram(name: "fileno", scope: !661, file: !661, line: 785, type: !3139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!23, !3092}
!3141 = !DISubprogram(name: "fclose", scope: !661, file: !661, line: 213, type: !3139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3142 = !DISubprogram(name: "lseek", scope: !771, file: !771, line: 334, type: !3143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!689, !23, !689, !23}
!3145 = distinct !DISubprogram(name: "rpl_fflush", scope: !575, file: !575, line: 129, type: !3146, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !574, retainedNodes: !3182)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!23, !3148}
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2432, line: 7, baseType: !3150)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !666, line: 49, size: 1728, elements: !3151)
!3151 = !{!3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3150, file: !666, line: 51, baseType: !23, size: 32)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3150, file: !666, line: 54, baseType: !47, size: 64, offset: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3150, file: !666, line: 55, baseType: !47, size: 64, offset: 128)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3150, file: !666, line: 56, baseType: !47, size: 64, offset: 192)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3150, file: !666, line: 57, baseType: !47, size: 64, offset: 256)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3150, file: !666, line: 58, baseType: !47, size: 64, offset: 320)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3150, file: !666, line: 59, baseType: !47, size: 64, offset: 384)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3150, file: !666, line: 60, baseType: !47, size: 64, offset: 448)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3150, file: !666, line: 61, baseType: !47, size: 64, offset: 512)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3150, file: !666, line: 64, baseType: !47, size: 64, offset: 576)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3150, file: !666, line: 65, baseType: !47, size: 64, offset: 640)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3150, file: !666, line: 66, baseType: !47, size: 64, offset: 704)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3150, file: !666, line: 68, baseType: !681, size: 64, offset: 768)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3150, file: !666, line: 70, baseType: !3166, size: 64, offset: 832)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3150, file: !666, line: 72, baseType: !23, size: 32, offset: 896)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3150, file: !666, line: 73, baseType: !23, size: 32, offset: 928)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3150, file: !666, line: 74, baseType: !687, size: 64, offset: 960)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3150, file: !666, line: 77, baseType: !90, size: 16, offset: 1024)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3150, file: !666, line: 78, baseType: !692, size: 8, offset: 1040)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3150, file: !666, line: 79, baseType: !694, size: 8, offset: 1048)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3150, file: !666, line: 81, baseType: !698, size: 64, offset: 1088)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3150, file: !666, line: 89, baseType: !701, size: 64, offset: 1152)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3150, file: !666, line: 91, baseType: !703, size: 64, offset: 1216)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3150, file: !666, line: 92, baseType: !706, size: 64, offset: 1280)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3150, file: !666, line: 93, baseType: !3166, size: 64, offset: 1344)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3150, file: !666, line: 94, baseType: !46, size: 64, offset: 1408)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3150, file: !666, line: 95, baseType: !91, size: 64, offset: 1472)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3150, file: !666, line: 96, baseType: !23, size: 32, offset: 1536)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3150, file: !666, line: 98, baseType: !713, size: 160, offset: 1568)
!3182 = !{!3183}
!3183 = !DILocalVariable(name: "stream", arg: 1, scope: !3145, file: !575, line: 129, type: !3148)
!3184 = !DILocation(line: 0, scope: !3145)
!3185 = !DILocation(line: 150, column: 14, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3145, file: !575, line: 150, column: 7)
!3187 = !DILocation(line: 150, column: 22, scope: !3186)
!3188 = !DILocation(line: 150, column: 27, scope: !3186)
!3189 = !DILocation(line: 150, column: 7, scope: !3145)
!3190 = !DILocation(line: 151, column: 12, scope: !3186)
!3191 = !DILocation(line: 151, column: 5, scope: !3186)
!3192 = !DILocalVariable(name: "fp", arg: 1, scope: !3193, file: !575, line: 41, type: !3148)
!3193 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !575, file: !575, line: 41, type: !3194, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !574, retainedNodes: !3196)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{null, !3148}
!3196 = !{!3192}
!3197 = !DILocation(line: 0, scope: !3193, inlinedAt: !3198)
!3198 = distinct !DILocation(line: 156, column: 3, scope: !3145)
!3199 = !DILocation(line: 43, column: 11, scope: !3200, inlinedAt: !3198)
!3200 = distinct !DILexicalBlock(scope: !3193, file: !575, line: 43, column: 7)
!3201 = !DILocation(line: 43, column: 18, scope: !3200, inlinedAt: !3198)
!3202 = !DILocation(line: 43, column: 7, scope: !3193, inlinedAt: !3198)
!3203 = !DILocation(line: 45, column: 5, scope: !3200, inlinedAt: !3198)
!3204 = !DILocation(line: 158, column: 10, scope: !3145)
!3205 = !DILocation(line: 158, column: 3, scope: !3145)
!3206 = !DILocation(line: 235, column: 1, scope: !3145)
!3207 = !DISubprogram(name: "fflush", scope: !661, file: !661, line: 218, type: !3208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!23, !3166}
!3210 = distinct !DISubprogram(name: "rpl_fseeko", scope: !577, file: !577, line: 28, type: !3211, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !576, retainedNodes: !3248)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!23, !3213, !3247, !23}
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2432, line: 7, baseType: !3215)
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !666, line: 49, size: 1728, elements: !3216)
!3216 = !{!3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3215, file: !666, line: 51, baseType: !23, size: 32)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3215, file: !666, line: 54, baseType: !47, size: 64, offset: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3215, file: !666, line: 55, baseType: !47, size: 64, offset: 128)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3215, file: !666, line: 56, baseType: !47, size: 64, offset: 192)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3215, file: !666, line: 57, baseType: !47, size: 64, offset: 256)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3215, file: !666, line: 58, baseType: !47, size: 64, offset: 320)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3215, file: !666, line: 59, baseType: !47, size: 64, offset: 384)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3215, file: !666, line: 60, baseType: !47, size: 64, offset: 448)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3215, file: !666, line: 61, baseType: !47, size: 64, offset: 512)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3215, file: !666, line: 64, baseType: !47, size: 64, offset: 576)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3215, file: !666, line: 65, baseType: !47, size: 64, offset: 640)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3215, file: !666, line: 66, baseType: !47, size: 64, offset: 704)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3215, file: !666, line: 68, baseType: !681, size: 64, offset: 768)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3215, file: !666, line: 70, baseType: !3231, size: 64, offset: 832)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3215, file: !666, line: 72, baseType: !23, size: 32, offset: 896)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3215, file: !666, line: 73, baseType: !23, size: 32, offset: 928)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3215, file: !666, line: 74, baseType: !687, size: 64, offset: 960)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3215, file: !666, line: 77, baseType: !90, size: 16, offset: 1024)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3215, file: !666, line: 78, baseType: !692, size: 8, offset: 1040)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3215, file: !666, line: 79, baseType: !694, size: 8, offset: 1048)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3215, file: !666, line: 81, baseType: !698, size: 64, offset: 1088)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3215, file: !666, line: 89, baseType: !701, size: 64, offset: 1152)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3215, file: !666, line: 91, baseType: !703, size: 64, offset: 1216)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3215, file: !666, line: 92, baseType: !706, size: 64, offset: 1280)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3215, file: !666, line: 93, baseType: !3231, size: 64, offset: 1344)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3215, file: !666, line: 94, baseType: !46, size: 64, offset: 1408)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3215, file: !666, line: 95, baseType: !91, size: 64, offset: 1472)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3215, file: !666, line: 96, baseType: !23, size: 32, offset: 1536)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3215, file: !666, line: 98, baseType: !713, size: 160, offset: 1568)
!3247 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !661, line: 63, baseType: !687)
!3248 = !{!3249, !3250, !3251, !3252}
!3249 = !DILocalVariable(name: "fp", arg: 1, scope: !3210, file: !577, line: 28, type: !3213)
!3250 = !DILocalVariable(name: "offset", arg: 2, scope: !3210, file: !577, line: 28, type: !3247)
!3251 = !DILocalVariable(name: "whence", arg: 3, scope: !3210, file: !577, line: 28, type: !23)
!3252 = !DILocalVariable(name: "pos", scope: !3253, file: !577, line: 117, type: !3247)
!3253 = distinct !DILexicalBlock(scope: !3254, file: !577, line: 113, column: 5)
!3254 = distinct !DILexicalBlock(scope: !3210, file: !577, line: 52, column: 7)
!3255 = !DILocation(line: 0, scope: !3210)
!3256 = !DILocation(line: 52, column: 11, scope: !3254)
!3257 = !{!2940, !596, i64 16}
!3258 = !DILocation(line: 52, column: 31, scope: !3254)
!3259 = !{!2940, !596, i64 8}
!3260 = !DILocation(line: 52, column: 24, scope: !3254)
!3261 = !DILocation(line: 53, column: 7, scope: !3254)
!3262 = !DILocation(line: 53, column: 14, scope: !3254)
!3263 = !{!2940, !596, i64 40}
!3264 = !DILocation(line: 53, column: 35, scope: !3254)
!3265 = !{!2940, !596, i64 32}
!3266 = !DILocation(line: 53, column: 28, scope: !3254)
!3267 = !DILocation(line: 54, column: 7, scope: !3254)
!3268 = !DILocation(line: 54, column: 14, scope: !3254)
!3269 = !{!2940, !596, i64 72}
!3270 = !DILocation(line: 54, column: 28, scope: !3254)
!3271 = !DILocation(line: 52, column: 7, scope: !3210)
!3272 = !DILocation(line: 117, column: 26, scope: !3253)
!3273 = !DILocation(line: 117, column: 19, scope: !3253)
!3274 = !DILocation(line: 0, scope: !3253)
!3275 = !DILocation(line: 118, column: 15, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3253, file: !577, line: 118, column: 11)
!3277 = !DILocation(line: 118, column: 11, scope: !3253)
!3278 = !DILocation(line: 129, column: 11, scope: !3253)
!3279 = !DILocation(line: 129, column: 18, scope: !3253)
!3280 = !DILocation(line: 130, column: 11, scope: !3253)
!3281 = !DILocation(line: 130, column: 19, scope: !3253)
!3282 = !{!2940, !1874, i64 144}
!3283 = !DILocation(line: 161, column: 7, scope: !3253)
!3284 = !DILocation(line: 163, column: 10, scope: !3210)
!3285 = !DILocation(line: 163, column: 3, scope: !3210)
!3286 = !DILocation(line: 164, column: 1, scope: !3210)
!3287 = !DISubprogram(name: "fseeko", scope: !661, file: !661, line: 712, type: !3288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{!23, !3231, !689, !23}
