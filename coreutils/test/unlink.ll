; ModuleID = 'coreutils-8.32/src/unlink.bc'
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
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s FILE\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Call the unlink function to remove the specified FILE.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"unlink\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.14 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
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
@.str.10 = private unnamed_addr constant [14 x i8] c"Michael Stone\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"cannot unlink %s\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), align 8, !dbg !0
@.str.29 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !9
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !14
@.str.32 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.33 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.34 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !17
@opterr = external local_unnamed_addr global i32, align 4
@.str.37 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.38, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.39, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !24
@.str.2.38 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.39 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1.42 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !41
@.str.47 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.48 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.49 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.51, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.52, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.53, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.54, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.55, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.56, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.57, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.58, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.59, i32 0, i32 0), i8* null], align 16, !dbg !49
@.str.50 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.51 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.52 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.53 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.54 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.55 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.56 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.57 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.58 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.59 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !95
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !101
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !113
@.str.11.60 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.61 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.62 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.63 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.64 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.65 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.66 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
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
@.str.1.118 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.121 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.122 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) #0 !dbg !585 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !589, metadata !DIExpression()), !dbg !590
  %3 = icmp eq i32 %0, 0, !dbg !591
  br i1 %3, label %9, label %4, !dbg !593

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !594, !tbaa !596
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #24, !dbg !594
  %7 = load i8*, i8** @program_name, align 8, !dbg !594, !tbaa !596
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #24, !dbg !594
  br label %58, !dbg !594

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #24, !dbg !600
  %11 = load i8*, i8** @program_name, align 8, !dbg !600, !tbaa !596
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11) #24, !dbg !600
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 5) #24, !dbg !602
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !602, !tbaa !596
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !602
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #24, !dbg !603
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !603, !tbaa !596
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !603
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #24, !dbg !604
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !604, !tbaa !596
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !604
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), metadata !605, metadata !DIExpression()) #24, !dbg !624
  %22 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !626
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %22) #24, !dbg !626
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !611, metadata !DIExpression()) #24, !dbg !627
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %22, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #24, !dbg !627
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), metadata !620, metadata !DIExpression()) #24, !dbg !624
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !621, metadata !DIExpression()) #24, !dbg !624
  %23 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !628
  call void @llvm.dbg.value(metadata %struct.infomap* %23, metadata !621, metadata !DIExpression()) #24, !dbg !624
  br label %24, !dbg !629

24:                                               ; preds = %29, %9
  %25 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), %9 ]
  %26 = phi %struct.infomap* [ %30, %29 ], [ %23, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !621, metadata !DIExpression()) #24, !dbg !624
  %27 = tail call i32 @strcmp(i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull %25) #25, !dbg !630
  %28 = icmp eq i32 %27, 0, !dbg !630
  br i1 %28, label %34, label %29, !dbg !629

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i64 1, !dbg !631
  call void @llvm.dbg.value(metadata %struct.infomap* %30, metadata !621, metadata !DIExpression()) #24, !dbg !624
  %31 = getelementptr inbounds %struct.infomap, %struct.infomap* %30, i64 0, i32 0, !dbg !632
  %32 = load i8*, i8** %31, align 8, !dbg !632, !tbaa !633
  %33 = icmp eq i8* %32, null, !dbg !635
  br i1 %33, label %34, label %24, !dbg !636, !llvm.loop !637

34:                                               ; preds = %29, %24
  %35 = phi %struct.infomap* [ %26, %24 ], [ %30, %29 ]
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 0, i32 1, !dbg !639
  %37 = load i8*, i8** %36, align 8, !dbg !639, !tbaa !641
  %38 = icmp eq i8* %37, null, !dbg !642
  %39 = select i1 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %37, !dbg !643
  call void @llvm.dbg.value(metadata i8* %39, metadata !620, metadata !DIExpression()) #24, !dbg !624
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 5) #24, !dbg !644
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0)) #24, !dbg !644
  %42 = tail call i8* @setlocale(i32 5, i8* null) #24, !dbg !645
  call void @llvm.dbg.value(metadata i8* %42, metadata !623, metadata !DIExpression()) #24, !dbg !624
  %43 = icmp eq i8* %42, null, !dbg !646
  br i1 %43, label %51, label %44, !dbg !648

44:                                               ; preds = %34
  %45 = tail call i32 @strncmp(i8* nonnull %42, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #25, !dbg !649
  %46 = icmp eq i32 %45, 0, !dbg !649
  br i1 %46, label %51, label %47, !dbg !650

47:                                               ; preds = %44
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.25, i64 0, i64 0), i32 5) #24, !dbg !651
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !651, !tbaa !596
  %50 = tail call i32 @fputs_unlocked(i8* %48, %struct._IO_FILE* %49) #24, !dbg !651
  br label %51, !dbg !653

51:                                               ; preds = %34, %44, %47
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0), i32 5) #24, !dbg !654
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #24, !dbg !654
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i32 5) #24, !dbg !655
  %55 = icmp eq i8* %39, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), !dbg !655
  %56 = select i1 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !655
  %57 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %54, i8* %39, i8* %56) #24, !dbg !655
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %22) #24, !dbg !656
  br label %58

58:                                               ; preds = %51, %4
  tail call void @exit(i32 %0) #26, !dbg !657
  unreachable, !dbg !657
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !658 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !662 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !718 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !722 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !727, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.value(metadata i8** %1, metadata !728, metadata !DIExpression()), !dbg !729
  %3 = load i8*, i8** %1, align 8, !dbg !730, !tbaa !596
  tail call void @set_program_name(i8* %3) #24, !dbg !731
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #24, !dbg !732
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #24, !dbg !733
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #24, !dbg !734
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #24, !dbg !735
  %8 = load i8*, i8** @Version, align 8, !dbg !736, !tbaa !596
  tail call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %8, i1 zeroext true, void (i32)* nonnull @usage, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* null) #24, !dbg !737
  %9 = load i32, i32* @optind, align 4, !dbg !738, !tbaa !740
  %10 = icmp slt i32 %9, %0, !dbg !742
  br i1 %10, label %13, label %11, !dbg !743

11:                                               ; preds = %2
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 5) #24, !dbg !744
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %12) #24, !dbg !746
  tail call void @usage(i32 1) #27, !dbg !747
  unreachable, !dbg !747

13:                                               ; preds = %2
  %14 = add nsw i32 %9, 1, !dbg !748
  %15 = icmp slt i32 %14, %0, !dbg !749
  br i1 %15, label %16, label %24, !dbg !751

16:                                               ; preds = %13
  %17 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 5) #24, !dbg !752
  %18 = load i32, i32* @optind, align 4, !dbg !754, !tbaa !740
  %19 = add nsw i32 %18, 1, !dbg !755
  %20 = sext i32 %19 to i64, !dbg !756
  %21 = getelementptr inbounds i8*, i8** %1, i64 %20, !dbg !756
  %22 = load i8*, i8** %21, align 8, !dbg !756, !tbaa !596
  %23 = tail call i8* @quote(i8* %22) #24, !dbg !757
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %17, i8* %23) #24, !dbg !758
  tail call void @usage(i32 1) #27, !dbg !759
  unreachable, !dbg !759

24:                                               ; preds = %13
  %25 = sext i32 %9 to i64, !dbg !760
  %26 = getelementptr inbounds i8*, i8** %1, i64 %25, !dbg !760
  %27 = load i8*, i8** %26, align 8, !dbg !760, !tbaa !596
  %28 = tail call i32 @unlink(i8* %27) #24, !dbg !762
  %29 = icmp eq i32 %28, 0, !dbg !763
  br i1 %29, label %39, label %30, !dbg !764

30:                                               ; preds = %24
  %31 = tail call i32* @__errno_location() #28, !dbg !765
  %32 = load i32, i32* %31, align 4, !dbg !765, !tbaa !740
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 5) #24, !dbg !765
  %34 = load i32, i32* @optind, align 4, !dbg !765, !tbaa !740
  %35 = sext i32 %34 to i64, !dbg !765
  %36 = getelementptr inbounds i8*, i8** %1, i64 %35, !dbg !765
  %37 = load i8*, i8** %36, align 8, !dbg !765, !tbaa !596
  %38 = tail call i8* @quotearg_style(i32 4, i8* %37) #24, !dbg !765
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %32, i8* %33, i8* %38) #24, !dbg !765
  unreachable, !dbg !765

39:                                               ; preds = %24
  ret i32 0, !dbg !766
}

; Function Attrs: nounwind
declare !dbg !767 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !770 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !773 i32 @atexit(void ()*) local_unnamed_addr #2

declare !dbg !780 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !784 noundef i32 @unlink(i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #10 !dbg !788 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !790, metadata !DIExpression()), !dbg !791
  store i8* %0, i8** @file_name, align 8, !dbg !792, !tbaa !596
  ret void, !dbg !793
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #10 !dbg !794 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !798, metadata !DIExpression()), !dbg !799
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !800, !tbaa !801
  ret void, !dbg !803
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !804 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !809, !tbaa !596
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #24, !dbg !810
  %3 = icmp eq i32 %2, 0, !dbg !811
  br i1 %3, label %22, label %4, !dbg !812

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !813, !tbaa !801, !range !814
  %6 = icmp eq i8 %5, 0, !dbg !813
  br i1 %6, label %11, label %7, !dbg !815

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #28, !dbg !816
  %9 = load i32, i32* %8, align 4, !dbg !816, !tbaa !740
  %10 = icmp eq i32 %9, 32, !dbg !817
  br i1 %10, label %22, label %11, !dbg !818

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i32 5) #24, !dbg !819
  call void @llvm.dbg.value(metadata i8* %12, metadata !806, metadata !DIExpression()), !dbg !820
  %13 = load i8*, i8** @file_name, align 8, !dbg !821, !tbaa !596
  %14 = icmp eq i8* %13, null, !dbg !821
  %15 = tail call i32* @__errno_location() #28, !dbg !823
  %16 = load i32, i32* %15, align 4, !dbg !823, !tbaa !740
  br i1 %14, label %19, label %17, !dbg !824

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #24, !dbg !825
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.33, i64 0, i64 0), i8* %18, i8* %12) #24, !dbg !826
  br label %20, !dbg !826

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.34, i64 0, i64 0), i8* %12) #24, !dbg !827
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !828, !tbaa !740
  tail call void @_exit(i32 %21) #26, !dbg !829
  unreachable, !dbg !829

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !830, !tbaa !596
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #24, !dbg !832
  %25 = icmp eq i32 %24, 0, !dbg !833
  br i1 %25, label %28, label %26, !dbg !834

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !835, !tbaa !740
  tail call void @_exit(i32 %27) #26, !dbg !836
  unreachable, !dbg !836

28:                                               ; preds = %22
  ret void, !dbg !837
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_long_options(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, void (i32)* nocapture %5, ...) local_unnamed_addr #8 !dbg !838 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !843, metadata !DIExpression()), !dbg !867
  call void @llvm.dbg.value(metadata i8** %1, metadata !844, metadata !DIExpression()), !dbg !867
  call void @llvm.dbg.value(metadata i8* %2, metadata !845, metadata !DIExpression()), !dbg !867
  call void @llvm.dbg.value(metadata i8* %3, metadata !846, metadata !DIExpression()), !dbg !867
  call void @llvm.dbg.value(metadata i8* %4, metadata !847, metadata !DIExpression()), !dbg !867
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !848, metadata !DIExpression()), !dbg !867
  %8 = load i32, i32* @opterr, align 4, !dbg !868, !tbaa !740
  call void @llvm.dbg.value(metadata i32 %8, metadata !850, metadata !DIExpression()), !dbg !867
  store i32 0, i32* @opterr, align 4, !dbg !869, !tbaa !740
  %9 = icmp eq i32 %0, 2, !dbg !870
  br i1 %9, label %10, label %17, !dbg !871

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #24, !dbg !872
  call void @llvm.dbg.value(metadata i32 %11, metadata !849, metadata !DIExpression()), !dbg !867
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !873

12:                                               ; preds = %10
  tail call void %5(i32 0) #24, !dbg !874
  br label %17, !dbg !875

13:                                               ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !876
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #24, !dbg !876
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !851, metadata !DIExpression()), !dbg !877
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !878
  call void @llvm.va_start(i8* nonnull %14), !dbg !878
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !879, !tbaa !596
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #24, !dbg !880
  call void @exit(i32 0) #26, !dbg !881
  unreachable, !dbg !881

17:                                               ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !882, !tbaa !740
  store i32 0, i32* @optind, align 4, !dbg !883, !tbaa !740
  ret void, !dbg !884
}

; Function Attrs: nounwind
declare !dbg !885 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_gnu_standard_options_only(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, i1 zeroext %5, void (i32)* nocapture %6, ...) local_unnamed_addr #8 !dbg !891 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !895, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata i8** %1, metadata !896, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata i8* %2, metadata !897, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata i8* %3, metadata !898, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata i8* %4, metadata !899, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata i1 %5, metadata !900, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !910
  call void @llvm.dbg.value(metadata void (i32)* %6, metadata !901, metadata !DIExpression()), !dbg !910
  %9 = load i32, i32* @opterr, align 4, !dbg !911, !tbaa !740
  call void @llvm.dbg.value(metadata i32 %9, metadata !903, metadata !DIExpression()), !dbg !910
  store i32 1, i32* @opterr, align 4, !dbg !912, !tbaa !740
  %10 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.42, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0), !dbg !913
  call void @llvm.dbg.value(metadata i8* %10, metadata !904, metadata !DIExpression()), !dbg !910
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* %10, %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #24, !dbg !914
  call void @llvm.dbg.value(metadata i32 %11, metadata !902, metadata !DIExpression()), !dbg !910
  switch i32 %11, label %16 [
    i32 -1, label %20
    i32 104, label %18
    i32 118, label %12
  ], !dbg !915

12:                                               ; preds = %7
  %13 = bitcast [1 x %struct.__va_list_tag]* %8 to i8*, !dbg !916
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #24, !dbg !916
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %8, metadata !905, metadata !DIExpression()), !dbg !917
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !918
  call void @llvm.va_start(i8* nonnull %13), !dbg !918
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !919, !tbaa !596
  call void @version_etc_va(%struct._IO_FILE* %15, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %14) #24, !dbg !920
  call void @exit(i32 0) #26, !dbg !921
  unreachable, !dbg !921

16:                                               ; preds = %7
  %17 = load volatile i32, i32* @exit_failure, align 4, !dbg !922, !tbaa !740
  br label %18, !dbg !923

18:                                               ; preds = %7, %16
  %19 = phi i32 [ %17, %16 ], [ 0, %7 ]
  tail call void %6(i32 %19) #24, !dbg !924
  br label %20, !dbg !925

20:                                               ; preds = %18, %7
  store i32 %9, i32* @opterr, align 4, !dbg !925, !tbaa !740
  ret void, !dbg !926
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !927 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !929, metadata !DIExpression()), !dbg !932
  %2 = icmp eq i8* %0, null, !dbg !933
  br i1 %2, label %3, label %6, !dbg !935

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !936, !tbaa !596
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.47, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #29, !dbg !938
  tail call void @abort() #26, !dbg !939
  unreachable, !dbg !939

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #25, !dbg !940
  call void @llvm.dbg.value(metadata i8* %7, metadata !930, metadata !DIExpression()), !dbg !932
  %8 = icmp eq i8* %7, null, !dbg !941
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !942
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !942
  call void @llvm.dbg.value(metadata i8* %10, metadata !931, metadata !DIExpression()), !dbg !932
  %11 = ptrtoint i8* %10 to i64, !dbg !943
  %12 = ptrtoint i8* %0 to i64, !dbg !943
  %13 = sub i64 %11, %12, !dbg !943
  %14 = icmp sgt i64 %13, 6, !dbg !945
  br i1 %14, label %15, label %24, !dbg !946

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !947
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.48, i64 0, i64 0), i64 7) #25, !dbg !948
  %18 = icmp eq i32 %17, 0, !dbg !949
  br i1 %18, label %19, label %24, !dbg !950

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !929, metadata !DIExpression()), !dbg !932
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.49, i64 0, i64 0), i64 3) #25, !dbg !951
  %21 = icmp eq i32 %20, 0, !dbg !954
  br i1 %21, label %22, label %24, !dbg !955

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !956
  call void @llvm.dbg.value(metadata i8* %23, metadata !929, metadata !DIExpression()), !dbg !932
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !958, !tbaa !596
  br label %24, !dbg !959

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !929, metadata !DIExpression()), !dbg !932
  store i8* %25, i8** @program_name, align 8, !dbg !960, !tbaa !596
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !961, !tbaa !596
  ret void, !dbg !962
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #13

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !963 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !968, metadata !DIExpression()), !dbg !971
  %2 = tail call i32* @__errno_location() #28, !dbg !972
  %3 = load i32, i32* %2, align 4, !dbg !972, !tbaa !740
  call void @llvm.dbg.value(metadata i32 %3, metadata !969, metadata !DIExpression()), !dbg !971
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !973
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !973
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !973
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #24, !dbg !974
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !974
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !970, metadata !DIExpression()), !dbg !971
  store i32 %3, i32* %2, align 4, !dbg !975, !tbaa !740
  ret %struct.quoting_options* %8, !dbg !976
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #14 !dbg !977 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !983, metadata !DIExpression()), !dbg !984
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !985
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !985
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !986
  %5 = load i32, i32* %4, align 8, !dbg !986, !tbaa !987
  ret i32 %5, !dbg !989
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !990 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !994, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata i32 %1, metadata !995, metadata !DIExpression()), !dbg !996
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !997
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !997
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !998
  store i32 %1, i32* %5, align 8, !dbg !999, !tbaa !987
  ret void, !dbg !1000
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #15 !dbg !1001 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1005, metadata !DIExpression()), !dbg !1014
  call void @llvm.dbg.value(metadata i8 %1, metadata !1006, metadata !DIExpression()), !dbg !1014
  call void @llvm.dbg.value(metadata i32 %2, metadata !1007, metadata !DIExpression()), !dbg !1014
  call void @llvm.dbg.value(metadata i8 %1, metadata !1008, metadata !DIExpression()), !dbg !1014
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1015
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1015
  %6 = lshr i8 %1, 5, !dbg !1016
  %7 = zext i8 %6 to i64, !dbg !1016
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1017
  call void @llvm.dbg.value(metadata i32* %8, metadata !1010, metadata !DIExpression()), !dbg !1014
  %9 = and i8 %1, 31, !dbg !1018
  %10 = zext i8 %9 to i32, !dbg !1018
  call void @llvm.dbg.value(metadata i32 %10, metadata !1012, metadata !DIExpression()), !dbg !1014
  %11 = load i32, i32* %8, align 4, !dbg !1019, !tbaa !740
  %12 = lshr i32 %11, %10, !dbg !1020
  %13 = and i32 %12, 1, !dbg !1021
  call void @llvm.dbg.value(metadata i32 %13, metadata !1013, metadata !DIExpression()), !dbg !1014
  %14 = and i32 %2, 1, !dbg !1022
  %15 = xor i32 %13, %14, !dbg !1023
  %16 = shl i32 %15, %10, !dbg !1024
  %17 = xor i32 %16, %11, !dbg !1025
  store i32 %17, i32* %8, align 4, !dbg !1025, !tbaa !740
  ret i32 %13, !dbg !1026
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #15 !dbg !1027 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1031, metadata !DIExpression()), !dbg !1034
  call void @llvm.dbg.value(metadata i32 %1, metadata !1032, metadata !DIExpression()), !dbg !1034
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1035
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1037
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1031, metadata !DIExpression()), !dbg !1034
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1038
  %6 = load i32, i32* %5, align 4, !dbg !1038, !tbaa !1039
  call void @llvm.dbg.value(metadata i32 %6, metadata !1033, metadata !DIExpression()), !dbg !1034
  store i32 %1, i32* %5, align 4, !dbg !1040, !tbaa !1039
  ret i32 %6, !dbg !1041
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1042 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1046, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i8* %1, metadata !1047, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i8* %2, metadata !1048, metadata !DIExpression()), !dbg !1049
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1050
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1052
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1046, metadata !DIExpression()), !dbg !1049
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1053
  store i32 10, i32* %6, align 8, !dbg !1054, !tbaa !987
  %7 = icmp ne i8* %1, null, !dbg !1055
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1057
  br i1 %9, label %11, label %10, !dbg !1057

10:                                               ; preds = %3
  tail call void @abort() #26, !dbg !1058
  unreachable, !dbg !1058

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1059
  store i8* %1, i8** %12, align 8, !dbg !1060, !tbaa !1061
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1062
  store i8* %2, i8** %13, align 8, !dbg !1063, !tbaa !1064
  ret void, !dbg !1065
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1066 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1070, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata i64 %1, metadata !1071, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata i8* %2, metadata !1072, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata i64 %3, metadata !1073, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1074, metadata !DIExpression()), !dbg !1078
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1079
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1079
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1075, metadata !DIExpression()), !dbg !1078
  %8 = tail call i32* @__errno_location() #28, !dbg !1080
  %9 = load i32, i32* %8, align 4, !dbg !1080, !tbaa !740
  call void @llvm.dbg.value(metadata i32 %9, metadata !1076, metadata !DIExpression()), !dbg !1078
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1081
  %11 = load i32, i32* %10, align 8, !dbg !1081, !tbaa !987
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1082
  %13 = load i32, i32* %12, align 4, !dbg !1082, !tbaa !1039
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1083
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1084
  %16 = load i8*, i8** %15, align 8, !dbg !1084, !tbaa !1061
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1085
  %18 = load i8*, i8** %17, align 8, !dbg !1085, !tbaa !1064
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %19, metadata !1077, metadata !DIExpression()), !dbg !1078
  store i32 %9, i32* %8, align 4, !dbg !1087, !tbaa !740
  ret i64 %19, !dbg !1088
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1089 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1095, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %1, metadata !1096, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8* %2, metadata !1097, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %3, metadata !1098, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i32 %4, metadata !1099, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i32 %5, metadata !1100, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i32* %6, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8* %7, metadata !1102, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8* %8, metadata !1103, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 0, metadata !1105, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 0, metadata !1106, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8* null, metadata !1107, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 0, metadata !1108, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 0, metadata !1109, metadata !DIExpression()), !dbg !1165
  %13 = tail call i64 @__ctype_get_mb_cur_max() #24, !dbg !1166
  %14 = icmp eq i64 %13, 1, !dbg !1167
  call void @llvm.dbg.value(metadata i1 %14, metadata !1110, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1165
  %15 = lshr i32 %5, 1, !dbg !1168
  %16 = trunc i32 %15 to i8, !dbg !1168
  %17 = and i8 %16, 1, !dbg !1168
  call void @llvm.dbg.value(metadata i8 %17, metadata !1111, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 0, metadata !1112, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 0, metadata !1113, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 1, metadata !1114, metadata !DIExpression()), !dbg !1165
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1169

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1170
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1171
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1172
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1173
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1165
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1174
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1175
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1176
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1096, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %38, metadata !1114, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %37, metadata !1113, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %36, metadata !1112, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %35, metadata !1111, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %34, metadata !1098, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %33, metadata !1109, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %32, metadata !1108, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8* %31, metadata !1107, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %30, metadata !1106, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 0, metadata !1105, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8* %29, metadata !1103, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8* %28, metadata !1102, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i32 %27, metadata !1099, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.label(metadata !1159), !dbg !1177
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
  ], !dbg !1178

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1111, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i32 5, metadata !1099, metadata !DIExpression()), !dbg !1165
  br label %92, !dbg !1179

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1111, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i32 5, metadata !1099, metadata !DIExpression()), !dbg !1165
  %42 = and i8 %35, 1, !dbg !1181
  %43 = icmp eq i8 %42, 0, !dbg !1181
  br i1 %43, label %44, label %92, !dbg !1179

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1183
  br i1 %45, label %92, label %46, !dbg !1186

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1183, !tbaa !1187
  br label %92, !dbg !1183

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.60, i64 0, i64 0), i32 %27), !dbg !1188
  call void @llvm.dbg.value(metadata i8* %48, metadata !1102, metadata !DIExpression()), !dbg !1165
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.61, i64 0, i64 0), i32 %27), !dbg !1192
  call void @llvm.dbg.value(metadata i8* %49, metadata !1103, metadata !DIExpression()), !dbg !1165
  br label %50, !dbg !1193

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1103, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8* %51, metadata !1102, metadata !DIExpression()), !dbg !1165
  %53 = and i8 %35, 1, !dbg !1194
  %54 = icmp eq i8 %53, 0, !dbg !1194
  br i1 %54, label %55, label %70, !dbg !1196

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1107, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 0, metadata !1105, metadata !DIExpression()), !dbg !1165
  %56 = load i8, i8* %51, align 1, !dbg !1197, !tbaa !1187
  %57 = icmp eq i8 %56, 0, !dbg !1200
  br i1 %57, label %70, label %58, !dbg !1200

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1107, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %61, metadata !1105, metadata !DIExpression()), !dbg !1165
  %62 = icmp ult i64 %61, %39, !dbg !1201
  br i1 %62, label %63, label %65, !dbg !1204

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1201
  store i8 %59, i8* %64, align 1, !dbg !1201, !tbaa !1187
  br label %65, !dbg !1201

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1204
  call void @llvm.dbg.value(metadata i64 %66, metadata !1105, metadata !DIExpression()), !dbg !1165
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1205
  call void @llvm.dbg.value(metadata i8* %67, metadata !1107, metadata !DIExpression()), !dbg !1165
  %68 = load i8, i8* %67, align 1, !dbg !1197, !tbaa !1187
  %69 = icmp eq i8 %68, 0, !dbg !1200
  br i1 %69, label %70, label %58, !dbg !1200, !llvm.loop !1206

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1208
  call void @llvm.dbg.value(metadata i64 %71, metadata !1105, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 1, metadata !1109, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8* %52, metadata !1107, metadata !DIExpression()), !dbg !1165
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #25, !dbg !1209
  call void @llvm.dbg.value(metadata i64 %72, metadata !1108, metadata !DIExpression()), !dbg !1165
  br label %92, !dbg !1210

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1109, metadata !DIExpression()), !dbg !1165
  br label %74, !dbg !1211

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1165
  call void @llvm.dbg.value(metadata i8 %75, metadata !1109, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 1, metadata !1111, metadata !DIExpression()), !dbg !1165
  br label %76, !dbg !1212

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1173
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1165
  call void @llvm.dbg.value(metadata i8 %78, metadata !1111, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %77, metadata !1109, metadata !DIExpression()), !dbg !1165
  %79 = and i8 %78, 1, !dbg !1213
  %80 = icmp eq i8 %79, 0, !dbg !1213
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1215
  br label %82, !dbg !1215

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1165
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1168
  call void @llvm.dbg.value(metadata i8 %84, metadata !1111, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %83, metadata !1109, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i32 2, metadata !1099, metadata !DIExpression()), !dbg !1165
  %85 = and i8 %84, 1, !dbg !1216
  %86 = icmp eq i8 %85, 0, !dbg !1216
  br i1 %86, label %87, label %92, !dbg !1218

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1219
  br i1 %88, label %92, label %89, !dbg !1222

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1219, !tbaa !1187
  br label %92, !dbg !1219

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1111, metadata !DIExpression()), !dbg !1165
  br label %92, !dbg !1223

91:                                               ; preds = %26
  call void @abort() #26, !dbg !1224
  unreachable, !dbg !1224

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1208
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.62, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.62, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.62, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.61, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.61, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.61, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.62, i64 0, i64 0), %40 ], !dbg !1165
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1165
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1165
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1165
  call void @llvm.dbg.value(metadata i8 %100, metadata !1111, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %99, metadata !1109, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %98, metadata !1108, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8* %97, metadata !1107, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %96, metadata !1105, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8* %95, metadata !1103, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8* %94, metadata !1102, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i32 %93, metadata !1099, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 0, metadata !1104, metadata !DIExpression()), !dbg !1165
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
  br label %121, !dbg !1225

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1226
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1208
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1170
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1174
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1175
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1176
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1096, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %128, metadata !1114, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %127, metadata !1113, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %126, metadata !1112, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %125, metadata !1098, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %124, metadata !1106, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %123, metadata !1105, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %122, metadata !1104, metadata !DIExpression()), !dbg !1165
  %130 = icmp eq i64 %125, -1, !dbg !1227
  br i1 %130, label %131, label %135, !dbg !1228

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1229
  %133 = load i8, i8* %132, align 1, !dbg !1229, !tbaa !1187
  %134 = icmp eq i8 %133, 0, !dbg !1230
  br i1 %134, label %587, label %137, !dbg !1231

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1232
  br i1 %136, label %587, label %137, !dbg !1231

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1120, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 0, metadata !1121, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 0, metadata !1122, metadata !DIExpression()), !dbg !1233
  br i1 %106, label %138, label %153, !dbg !1234

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1236
  %140 = and i1 %107, %130, !dbg !1237
  br i1 %140, label %141, label %143, !dbg !1237

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #25, !dbg !1238
  call void @llvm.dbg.value(metadata i64 %142, metadata !1098, metadata !DIExpression()), !dbg !1165
  br label %143, !dbg !1239

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1239
  call void @llvm.dbg.value(metadata i64 %144, metadata !1098, metadata !DIExpression()), !dbg !1165
  %145 = icmp ugt i64 %139, %144, !dbg !1240
  br i1 %145, label %153, label %146, !dbg !1241

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1242
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1243
  %149 = icmp ne i32 %148, 0, !dbg !1244
  %150 = or i1 %149, %109, !dbg !1245
  %151 = xor i1 %149, true, !dbg !1245
  %152 = zext i1 %151 to i8, !dbg !1245
  br i1 %150, label %153, label %646, !dbg !1245

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1233
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1233
  call void @llvm.dbg.value(metadata i8 %156, metadata !1120, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %154, metadata !1098, metadata !DIExpression()), !dbg !1165
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1246
  %158 = load i8, i8* %157, align 1, !dbg !1246, !tbaa !1187
  call void @llvm.dbg.value(metadata i8 %158, metadata !1115, metadata !DIExpression()), !dbg !1233
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
  ], !dbg !1247

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1248

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1249

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1121, metadata !DIExpression()), !dbg !1233
  %162 = and i8 %126, 1, !dbg !1253
  %163 = icmp eq i8 %162, 0, !dbg !1253
  %164 = and i1 %110, %163, !dbg !1253
  br i1 %164, label %165, label %181, !dbg !1253

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1255
  br i1 %166, label %167, label %169, !dbg !1259

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1255
  store i8 39, i8* %168, align 1, !dbg !1255, !tbaa !1187
  br label %169, !dbg !1255

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1259
  call void @llvm.dbg.value(metadata i64 %170, metadata !1105, metadata !DIExpression()), !dbg !1165
  %171 = icmp ult i64 %170, %129, !dbg !1260
  br i1 %171, label %172, label %174, !dbg !1263

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1260
  store i8 36, i8* %173, align 1, !dbg !1260, !tbaa !1187
  br label %174, !dbg !1260

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1263
  call void @llvm.dbg.value(metadata i64 %175, metadata !1105, metadata !DIExpression()), !dbg !1165
  %176 = icmp ult i64 %175, %129, !dbg !1264
  br i1 %176, label %177, label %179, !dbg !1267

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1264
  store i8 39, i8* %178, align 1, !dbg !1264, !tbaa !1187
  br label %179, !dbg !1264

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1267
  call void @llvm.dbg.value(metadata i64 %180, metadata !1105, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 1, metadata !1112, metadata !DIExpression()), !dbg !1165
  br label %181, !dbg !1268

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1165
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1165
  call void @llvm.dbg.value(metadata i8 %183, metadata !1112, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %182, metadata !1105, metadata !DIExpression()), !dbg !1165
  %184 = icmp ult i64 %182, %129, !dbg !1269
  br i1 %184, label %185, label %187, !dbg !1272

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1269
  store i8 92, i8* %186, align 1, !dbg !1269, !tbaa !1187
  br label %187, !dbg !1269

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1272
  call void @llvm.dbg.value(metadata i64 %188, metadata !1105, metadata !DIExpression()), !dbg !1165
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1273
  br i1 %191, label %192, label %473, !dbg !1273

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1275
  %194 = load i8, i8* %193, align 1, !dbg !1275, !tbaa !1187
  %195 = add i8 %194, -48, !dbg !1276
  %196 = icmp ult i8 %195, 10, !dbg !1276
  br i1 %196, label %197, label %473, !dbg !1276

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1277
  br i1 %198, label %199, label %201, !dbg !1281

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1277
  store i8 48, i8* %200, align 1, !dbg !1277, !tbaa !1187
  br label %201, !dbg !1277

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1281
  call void @llvm.dbg.value(metadata i64 %202, metadata !1105, metadata !DIExpression()), !dbg !1165
  %203 = icmp ult i64 %202, %129, !dbg !1282
  br i1 %203, label %204, label %206, !dbg !1285

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1282
  store i8 48, i8* %205, align 1, !dbg !1282, !tbaa !1187
  br label %206, !dbg !1282

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1285
  call void @llvm.dbg.value(metadata i64 %207, metadata !1105, metadata !DIExpression()), !dbg !1165
  br label %473, !dbg !1286

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1287

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1288

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1289

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1291
  br i1 %214, label %215, label %473, !dbg !1291

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1293
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1294
  %218 = load i8, i8* %217, align 1, !dbg !1294, !tbaa !1187
  %219 = icmp eq i8 %218, 63, !dbg !1295
  br i1 %219, label %220, label %473, !dbg !1296

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1297
  %222 = load i8, i8* %221, align 1, !dbg !1297, !tbaa !1187
  %223 = sext i8 %222 to i32, !dbg !1297
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
  ], !dbg !1298

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1299

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1115, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 undef, metadata !1104, metadata !DIExpression()), !dbg !1165
  %226 = icmp ult i64 %123, %129, !dbg !1301
  br i1 %226, label %227, label %229, !dbg !1304

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1301
  store i8 63, i8* %228, align 1, !dbg !1301, !tbaa !1187
  br label %229, !dbg !1301

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !1304
  call void @llvm.dbg.value(metadata i64 %230, metadata !1105, metadata !DIExpression()), !dbg !1165
  %231 = icmp ult i64 %230, %129, !dbg !1305
  br i1 %231, label %232, label %234, !dbg !1308

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1305
  store i8 34, i8* %233, align 1, !dbg !1305, !tbaa !1187
  br label %234, !dbg !1305

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !1308
  call void @llvm.dbg.value(metadata i64 %235, metadata !1105, metadata !DIExpression()), !dbg !1165
  %236 = icmp ult i64 %235, %129, !dbg !1309
  br i1 %236, label %237, label %239, !dbg !1312

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1309
  store i8 34, i8* %238, align 1, !dbg !1309, !tbaa !1187
  br label %239, !dbg !1309

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !1312
  call void @llvm.dbg.value(metadata i64 %240, metadata !1105, metadata !DIExpression()), !dbg !1165
  %241 = icmp ult i64 %240, %129, !dbg !1313
  br i1 %241, label %242, label %244, !dbg !1316

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1313
  store i8 63, i8* %243, align 1, !dbg !1313, !tbaa !1187
  br label %244, !dbg !1313

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !1316
  call void @llvm.dbg.value(metadata i64 %245, metadata !1105, metadata !DIExpression()), !dbg !1165
  br label %473, !dbg !1317

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1119, metadata !DIExpression()), !dbg !1233
  br label %256, !dbg !1318

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1119, metadata !DIExpression()), !dbg !1233
  br label %256, !dbg !1319

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1119, metadata !DIExpression()), !dbg !1233
  br label %254, !dbg !1320

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1119, metadata !DIExpression()), !dbg !1233
  br label %254, !dbg !1321

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1119, metadata !DIExpression()), !dbg !1233
  br label %256, !dbg !1322

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1119, metadata !DIExpression()), !dbg !1233
  br i1 %110, label %252, label %253, !dbg !1323

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !1324

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !1327

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !1329
  call void @llvm.dbg.value(metadata i8 %255, metadata !1119, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.label(metadata !1160), !dbg !1330
  br i1 %111, label %256, label %631, !dbg !1331

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !1329
  call void @llvm.dbg.value(metadata i8 %257, metadata !1119, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.label(metadata !1161), !dbg !1333
  br i1 %102, label %495, label %473, !dbg !1334

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1335

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1336, !tbaa !1187
  %261 = icmp eq i8 %260, 0, !dbg !1338
  br i1 %261, label %262, label %473, !dbg !1339

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !1340
  br i1 %263, label %264, label %473, !dbg !1342

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1122, metadata !DIExpression()), !dbg !1233
  br label %265, !dbg !1343

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1233
  call void @llvm.dbg.value(metadata i8 %266, metadata !1122, metadata !DIExpression()), !dbg !1233
  br i1 %111, label %473, label %631, !dbg !1344

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1113, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 1, metadata !1122, metadata !DIExpression()), !dbg !1233
  br i1 %110, label %268, label %473, !dbg !1346

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !1347

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !1350
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !1352
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !1352
  %274 = select i1 %272, i64 %129, i64 0, !dbg !1352
  call void @llvm.dbg.value(metadata i64 %274, metadata !1096, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %273, metadata !1106, metadata !DIExpression()), !dbg !1165
  %275 = icmp ult i64 %123, %274, !dbg !1353
  br i1 %275, label %276, label %278, !dbg !1356

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1353
  store i8 39, i8* %277, align 1, !dbg !1353, !tbaa !1187
  br label %278, !dbg !1353

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !1356
  call void @llvm.dbg.value(metadata i64 %279, metadata !1105, metadata !DIExpression()), !dbg !1165
  %280 = icmp ult i64 %279, %274, !dbg !1357
  br i1 %280, label %281, label %283, !dbg !1360

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1357
  store i8 92, i8* %282, align 1, !dbg !1357, !tbaa !1187
  br label %283, !dbg !1357

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !1360
  call void @llvm.dbg.value(metadata i64 %284, metadata !1105, metadata !DIExpression()), !dbg !1165
  %285 = icmp ult i64 %284, %274, !dbg !1361
  br i1 %285, label %286, label %288, !dbg !1364

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1361
  store i8 39, i8* %287, align 1, !dbg !1361, !tbaa !1187
  br label %288, !dbg !1361

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !1364
  call void @llvm.dbg.value(metadata i64 %289, metadata !1105, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 0, metadata !1112, metadata !DIExpression()), !dbg !1165
  br label %473, !dbg !1365

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !1366

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1123, metadata !DIExpression()), !dbg !1367
  %292 = tail call i16** @__ctype_b_loc() #28, !dbg !1368
  %293 = load i16*, i16** %292, align 8, !dbg !1368, !tbaa !596
  %294 = zext i8 %158 to i64, !dbg !1368
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1368
  %296 = load i16, i16* %295, align 2, !dbg !1368, !tbaa !1370
  %297 = lshr i16 %296, 14, !dbg !1372
  %298 = trunc i16 %297 to i8, !dbg !1372
  %299 = and i8 %298, 1, !dbg !1372
  call void @llvm.dbg.value(metadata i8 %354, metadata !1126, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i64 %355, metadata !1123, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i64 %306, metadata !1098, metadata !DIExpression()), !dbg !1165
  %300 = icmp eq i8 %299, 0, !dbg !1373
  call void @llvm.dbg.value(metadata i1 %357, metadata !1122, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1233
  br label %359, !dbg !1374

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #24, !dbg !1375
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1127, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i8* %23, metadata !1377, metadata !DIExpression()) #24, !dbg !1385
  call void @llvm.dbg.value(metadata i32 0, metadata !1383, metadata !DIExpression()) #24, !dbg !1385
  call void @llvm.dbg.value(metadata i64 8, metadata !1384, metadata !DIExpression()) #24, !dbg !1385
  store i64 0, i64* %10, align 8, !dbg !1387
  call void @llvm.dbg.value(metadata i64 0, metadata !1123, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i8 1, metadata !1126, metadata !DIExpression()), !dbg !1367
  %302 = icmp eq i64 %154, -1, !dbg !1388
  br i1 %302, label %303, label %305, !dbg !1390

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #25, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %304, metadata !1098, metadata !DIExpression()), !dbg !1165
  br label %305, !dbg !1392

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1233
  call void @llvm.dbg.value(metadata i64 %306, metadata !1098, metadata !DIExpression()), !dbg !1165
  br label %307, !dbg !1393

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !1394
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !1395
  call void @llvm.dbg.value(metadata i8 %309, metadata !1126, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i64 %308, metadata !1123, metadata !DIExpression()), !dbg !1367
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1396
  %310 = add i64 %308, %122, !dbg !1397
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !1398
  %312 = sub i64 %306, %310, !dbg !1399
  call void @llvm.dbg.value(metadata i32* %12, metadata !1145, metadata !DIExpression(DW_OP_deref)), !dbg !1400
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #24, !dbg !1401
  call void @llvm.dbg.value(metadata i64 %313, metadata !1148, metadata !DIExpression()), !dbg !1400
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !1402

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1123, metadata !DIExpression()), !dbg !1367
  %315 = icmp ugt i64 %306, %310, !dbg !1403
  br i1 %315, label %316, label %341, !dbg !1405

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !1406
  br label %318, !dbg !1406

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1123, metadata !DIExpression()), !dbg !1367
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !1407
  %322 = load i8, i8* %321, align 1, !dbg !1407, !tbaa !1187
  %323 = icmp eq i8 %322, 0, !dbg !1405
  br i1 %323, label %341, label %324, !dbg !1406

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !1408
  call void @llvm.dbg.value(metadata i64 %325, metadata !1123, metadata !DIExpression()), !dbg !1367
  %326 = add i64 %325, %122, !dbg !1409
  %327 = icmp ult i64 %326, %306, !dbg !1403
  br i1 %327, label %318, label %341, !dbg !1405, !llvm.loop !1410

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !1411
  call void @llvm.dbg.value(metadata i64 1, metadata !1149, metadata !DIExpression()), !dbg !1412
  br i1 %330, label %331, label %344, !dbg !1411

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1149, metadata !DIExpression()), !dbg !1412
  %333 = add i64 %332, %310, !dbg !1413
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !1416
  %335 = load i8, i8* %334, align 1, !dbg !1416, !tbaa !1187
  %336 = sext i8 %335 to i32, !dbg !1416
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !1417

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !1418
  call void @llvm.dbg.value(metadata i64 %338, metadata !1149, metadata !DIExpression()), !dbg !1412
  %339 = icmp eq i64 %338, %313, !dbg !1419
  br i1 %339, label %344, label %331, !dbg !1420, !llvm.loop !1421

340:                                              ; preds = %307
  br label %341, !dbg !1423

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1126, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i64 undef, metadata !1123, metadata !DIExpression()), !dbg !1367
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1423
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !1424, !tbaa !740
  call void @llvm.dbg.value(metadata i32 %345, metadata !1145, metadata !DIExpression()), !dbg !1400
  %346 = call i32 @iswprint(i32 %345) #24, !dbg !1426
  %347 = icmp eq i32 %346, 0, !dbg !1426
  %348 = select i1 %347, i8 0, i8 %309, !dbg !1427
  call void @llvm.dbg.value(metadata i8 %348, metadata !1126, metadata !DIExpression()), !dbg !1367
  %349 = add i64 %313, %308, !dbg !1428
  call void @llvm.dbg.value(metadata i64 %349, metadata !1123, metadata !DIExpression()), !dbg !1367
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1423
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #25, !dbg !1429
  %351 = icmp eq i32 %350, 0, !dbg !1430
  br i1 %351, label %307, label %353, !dbg !1431, !llvm.loop !1432

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1126, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i64 undef, metadata !1123, metadata !DIExpression()), !dbg !1367
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1423
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #24, !dbg !1434
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #24, !dbg !1434
  call void @llvm.dbg.value(metadata i8 %354, metadata !1126, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i64 %355, metadata !1123, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i64 %306, metadata !1098, metadata !DIExpression()), !dbg !1165
  %356 = and i8 %354, 1, !dbg !1373
  %357 = icmp eq i8 %356, 0, !dbg !1373
  call void @llvm.dbg.value(metadata i1 %357, metadata !1122, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1233
  %358 = icmp ugt i64 %355, 1, !dbg !1435
  br i1 %358, label %367, label %359, !dbg !1374

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !1436
  br i1 %364, label %367, label %365, !dbg !1436

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1233
  call void @llvm.dbg.value(metadata i8 %472, metadata !1122, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %441, metadata !1121, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %440, metadata !1120, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %439, metadata !1115, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %438, metadata !1112, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %371, metadata !1098, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %437, metadata !1105, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %375, metadata !1104, metadata !DIExpression()), !dbg !1165
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !1437
  call void @llvm.dbg.value(metadata i64 %372, metadata !1156, metadata !DIExpression()), !dbg !1438
  %373 = and i1 %102, %368
  br label %374, !dbg !1439

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1226
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1165
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1174
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1233
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1233
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !1440
  call void @llvm.dbg.value(metadata i8 %380, metadata !1121, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %379, metadata !1120, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %378, metadata !1115, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %377, metadata !1112, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %376, metadata !1105, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %375, metadata !1104, metadata !DIExpression()), !dbg !1165
  br i1 %373, label %381, label %427, !dbg !1441

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !1446

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1121, metadata !DIExpression()), !dbg !1233
  %383 = and i8 %377, 1, !dbg !1449
  %384 = icmp eq i8 %383, 0, !dbg !1449
  %385 = and i1 %110, %384, !dbg !1449
  br i1 %385, label %386, label %402, !dbg !1449

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !1451
  br i1 %387, label %388, label %390, !dbg !1455

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1451
  store i8 39, i8* %389, align 1, !dbg !1451, !tbaa !1187
  br label %390, !dbg !1451

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !1455
  call void @llvm.dbg.value(metadata i64 %391, metadata !1105, metadata !DIExpression()), !dbg !1165
  %392 = icmp ult i64 %391, %129, !dbg !1456
  br i1 %392, label %393, label %395, !dbg !1459

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !1456
  store i8 36, i8* %394, align 1, !dbg !1456, !tbaa !1187
  br label %395, !dbg !1456

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !1459
  call void @llvm.dbg.value(metadata i64 %396, metadata !1105, metadata !DIExpression()), !dbg !1165
  %397 = icmp ult i64 %396, %129, !dbg !1460
  br i1 %397, label %398, label %400, !dbg !1463

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1460
  store i8 39, i8* %399, align 1, !dbg !1460, !tbaa !1187
  br label %400, !dbg !1460

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !1463
  call void @llvm.dbg.value(metadata i64 %401, metadata !1105, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 1, metadata !1112, metadata !DIExpression()), !dbg !1165
  br label %402, !dbg !1464

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1165
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1165
  call void @llvm.dbg.value(metadata i8 %404, metadata !1112, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %403, metadata !1105, metadata !DIExpression()), !dbg !1165
  %405 = icmp ult i64 %403, %129, !dbg !1465
  br i1 %405, label %406, label %408, !dbg !1468

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1465
  store i8 92, i8* %407, align 1, !dbg !1465, !tbaa !1187
  br label %408, !dbg !1465

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !1468
  call void @llvm.dbg.value(metadata i64 %409, metadata !1105, metadata !DIExpression()), !dbg !1165
  %410 = icmp ult i64 %409, %129, !dbg !1469
  br i1 %410, label %411, label %415, !dbg !1472

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !1469
  %413 = or i8 %412, 48, !dbg !1469
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !1469
  store i8 %413, i8* %414, align 1, !dbg !1469, !tbaa !1187
  br label %415, !dbg !1469

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !1472
  call void @llvm.dbg.value(metadata i64 %416, metadata !1105, metadata !DIExpression()), !dbg !1165
  %417 = icmp ult i64 %416, %129, !dbg !1473
  br i1 %417, label %418, label %423, !dbg !1476

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !1473
  %420 = and i8 %419, 7, !dbg !1473
  %421 = or i8 %420, 48, !dbg !1473
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !1473
  store i8 %421, i8* %422, align 1, !dbg !1473, !tbaa !1187
  br label %423, !dbg !1473

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !1476
  call void @llvm.dbg.value(metadata i64 %424, metadata !1105, metadata !DIExpression()), !dbg !1165
  %425 = and i8 %378, 7, !dbg !1477
  %426 = or i8 %425, 48, !dbg !1478
  call void @llvm.dbg.value(metadata i8 %426, metadata !1115, metadata !DIExpression()), !dbg !1233
  br label %436, !dbg !1479

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !1480
  %429 = icmp eq i8 %428, 0, !dbg !1480
  br i1 %429, label %436, label %430, !dbg !1482

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !1483
  br i1 %431, label %432, label %434, !dbg !1487

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1483
  store i8 92, i8* %433, align 1, !dbg !1483, !tbaa !1187
  br label %434, !dbg !1483

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !1487
  call void @llvm.dbg.value(metadata i64 %435, metadata !1105, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 0, metadata !1120, metadata !DIExpression()), !dbg !1233
  br label %436, !dbg !1488

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1165
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1174
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1233
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1233
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1233
  call void @llvm.dbg.value(metadata i8 %441, metadata !1121, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %440, metadata !1120, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %439, metadata !1115, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %438, metadata !1112, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %437, metadata !1105, metadata !DIExpression()), !dbg !1165
  %442 = add i64 %375, 1, !dbg !1489
  %443 = icmp ugt i64 %372, %442, !dbg !1491
  br i1 %443, label %444, label %471, !dbg !1492

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !1493
  %446 = icmp ne i8 %445, 0, !dbg !1493
  %447 = and i8 %441, 1, !dbg !1493
  %448 = icmp eq i8 %447, 0, !dbg !1493
  %449 = and i1 %446, %448, !dbg !1493
  br i1 %449, label %450, label %461, !dbg !1493

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !1496
  br i1 %451, label %452, label %454, !dbg !1500

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !1496
  store i8 39, i8* %453, align 1, !dbg !1496, !tbaa !1187
  br label %454, !dbg !1496

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !1500
  call void @llvm.dbg.value(metadata i64 %455, metadata !1105, metadata !DIExpression()), !dbg !1165
  %456 = icmp ult i64 %455, %129, !dbg !1501
  br i1 %456, label %457, label %459, !dbg !1504

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !1501
  store i8 39, i8* %458, align 1, !dbg !1501, !tbaa !1187
  br label %459, !dbg !1501

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !1504
  call void @llvm.dbg.value(metadata i64 %460, metadata !1105, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 0, metadata !1112, metadata !DIExpression()), !dbg !1165
  br label %461, !dbg !1505

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !1506
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1165
  call void @llvm.dbg.value(metadata i8 %463, metadata !1112, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %462, metadata !1105, metadata !DIExpression()), !dbg !1165
  %464 = icmp ult i64 %462, %129, !dbg !1507
  br i1 %464, label %465, label %467, !dbg !1510

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !1507
  store i8 %439, i8* %466, align 1, !dbg !1507, !tbaa !1187
  br label %467, !dbg !1507

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !1510
  call void @llvm.dbg.value(metadata i64 %468, metadata !1105, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %442, metadata !1104, metadata !DIExpression()), !dbg !1165
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !1511
  %470 = load i8, i8* %469, align 1, !dbg !1511, !tbaa !1187
  call void @llvm.dbg.value(metadata i8 %470, metadata !1115, metadata !DIExpression()), !dbg !1233
  br label %374, !dbg !1512, !llvm.loop !1513

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1233
  call void @llvm.dbg.value(metadata i8 %472, metadata !1122, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %441, metadata !1121, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %440, metadata !1120, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %439, metadata !1115, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %438, metadata !1112, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %371, metadata !1098, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %437, metadata !1105, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %375, metadata !1104, metadata !DIExpression()), !dbg !1165
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1226
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1165
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1170
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !1516
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1165
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1165
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1233
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1233
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1233
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1096, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %482, metadata !1122, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %481, metadata !1121, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %156, metadata !1120, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %480, metadata !1115, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %479, metadata !1113, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %478, metadata !1112, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %477, metadata !1098, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %476, metadata !1106, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %475, metadata !1105, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %474, metadata !1104, metadata !DIExpression()), !dbg !1165
  br i1 %116, label %494, label %484, !dbg !1517

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !1519
  %486 = zext i8 %485 to i64, !dbg !1519
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !1520
  %488 = load i32, i32* %487, align 4, !dbg !1520, !tbaa !740
  %489 = and i8 %480, 31, !dbg !1521
  %490 = zext i8 %489 to i32, !dbg !1521
  %491 = shl nuw i32 1, %490, !dbg !1522
  %492 = and i32 %488, %491, !dbg !1522
  %493 = icmp eq i32 %492, 0, !dbg !1522
  br i1 %493, label %494, label %495, !dbg !1523

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !1524

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !1525
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1165
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1170
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !1516
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1174
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1175
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1233
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1233
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1096, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %503, metadata !1122, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %502, metadata !1115, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %501, metadata !1113, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %500, metadata !1112, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %499, metadata !1098, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %498, metadata !1106, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %497, metadata !1105, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %496, metadata !1104, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.label(metadata !1162), !dbg !1526
  br i1 %109, label %505, label %635, !dbg !1527

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1121, metadata !DIExpression()), !dbg !1233
  %506 = and i8 %500, 1, !dbg !1529
  %507 = icmp eq i8 %506, 0, !dbg !1529
  %508 = and i1 %110, %507, !dbg !1529
  br i1 %508, label %509, label %525, !dbg !1529

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !1531
  br i1 %510, label %511, label %513, !dbg !1535

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !1531
  store i8 39, i8* %512, align 1, !dbg !1531, !tbaa !1187
  br label %513, !dbg !1531

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !1535
  call void @llvm.dbg.value(metadata i64 %514, metadata !1105, metadata !DIExpression()), !dbg !1165
  %515 = icmp ult i64 %514, %504, !dbg !1536
  br i1 %515, label %516, label %518, !dbg !1539

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !1536
  store i8 36, i8* %517, align 1, !dbg !1536, !tbaa !1187
  br label %518, !dbg !1536

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !1539
  call void @llvm.dbg.value(metadata i64 %519, metadata !1105, metadata !DIExpression()), !dbg !1165
  %520 = icmp ult i64 %519, %504, !dbg !1540
  br i1 %520, label %521, label %523, !dbg !1543

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1540
  store i8 39, i8* %522, align 1, !dbg !1540, !tbaa !1187
  br label %523, !dbg !1540

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !1543
  call void @llvm.dbg.value(metadata i64 %524, metadata !1105, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 1, metadata !1112, metadata !DIExpression()), !dbg !1165
  br label %525, !dbg !1544

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1233
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1165
  call void @llvm.dbg.value(metadata i8 %527, metadata !1112, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %526, metadata !1105, metadata !DIExpression()), !dbg !1165
  %528 = icmp ult i64 %526, %504, !dbg !1545
  br i1 %528, label %529, label %531, !dbg !1548

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1545
  store i8 92, i8* %530, align 1, !dbg !1545, !tbaa !1187
  br label %531, !dbg !1545

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !1548
  call void @llvm.dbg.value(metadata i64 %543, metadata !1096, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %542, metadata !1122, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %541, metadata !1121, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %540, metadata !1115, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %539, metadata !1113, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %538, metadata !1112, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %537, metadata !1098, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %536, metadata !1106, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %535, metadata !1105, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %534, metadata !1104, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.label(metadata !1163), !dbg !1549
  br label %560, !dbg !1550

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !1525
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1165
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1170
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !1516
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1174
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1175
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !1553
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1233
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1233
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1096, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %542, metadata !1122, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %541, metadata !1121, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %540, metadata !1115, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %539, metadata !1113, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %538, metadata !1112, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %537, metadata !1098, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %536, metadata !1106, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %535, metadata !1105, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %534, metadata !1104, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.label(metadata !1163), !dbg !1549
  %544 = and i8 %538, 1, !dbg !1550
  %545 = icmp ne i8 %544, 0, !dbg !1550
  %546 = and i8 %541, 1, !dbg !1550
  %547 = icmp eq i8 %546, 0, !dbg !1550
  %548 = and i1 %545, %547, !dbg !1550
  br i1 %548, label %549, label %560, !dbg !1550

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !1554
  br i1 %550, label %551, label %553, !dbg !1558

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !1554
  store i8 39, i8* %552, align 1, !dbg !1554, !tbaa !1187
  br label %553, !dbg !1554

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !1558
  call void @llvm.dbg.value(metadata i64 %554, metadata !1105, metadata !DIExpression()), !dbg !1165
  %555 = icmp ult i64 %554, %543, !dbg !1559
  br i1 %555, label %556, label %558, !dbg !1562

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !1559
  store i8 39, i8* %557, align 1, !dbg !1559, !tbaa !1187
  br label %558, !dbg !1559

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !1562
  call void @llvm.dbg.value(metadata i64 %559, metadata !1105, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 0, metadata !1112, metadata !DIExpression()), !dbg !1165
  br label %560, !dbg !1563

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1233
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1165
  call void @llvm.dbg.value(metadata i8 %569, metadata !1112, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %568, metadata !1105, metadata !DIExpression()), !dbg !1165
  %570 = icmp ult i64 %568, %561, !dbg !1564
  br i1 %570, label %571, label %573, !dbg !1567

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !1564
  store i8 %563, i8* %572, align 1, !dbg !1564, !tbaa !1187
  br label %573, !dbg !1564

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !1567
  call void @llvm.dbg.value(metadata i64 %574, metadata !1105, metadata !DIExpression()), !dbg !1165
  %575 = icmp eq i8 %562, 0, !dbg !1568
  %576 = select i1 %575, i8 0, i8 %128, !dbg !1570
  call void @llvm.dbg.value(metadata i8 %576, metadata !1114, metadata !DIExpression()), !dbg !1165
  br label %577, !dbg !1571

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !1525
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1165
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1170
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !1516
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1174
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1165
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1176
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1096, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %584, metadata !1114, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %583, metadata !1113, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %582, metadata !1112, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %581, metadata !1098, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %580, metadata !1106, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %579, metadata !1105, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %578, metadata !1104, metadata !DIExpression()), !dbg !1165
  %586 = add i64 %578, 1, !dbg !1572
  call void @llvm.dbg.value(metadata i64 %586, metadata !1104, metadata !DIExpression()), !dbg !1165
  br label %121, !dbg !1573, !llvm.loop !1574

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !1576
  %590 = and i1 %110, %589, !dbg !1578
  %591 = xor i1 %590, true, !dbg !1578
  %592 = or i1 %109, %591, !dbg !1578
  br i1 %592, label %593, label %635, !dbg !1578

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !1579
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !1579
  br i1 %597, label %598, label %607, !dbg !1579

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !1581
  %600 = icmp eq i8 %599, 0, !dbg !1581
  br i1 %600, label %603, label %601, !dbg !1584

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !1585
  br label %652, !dbg !1586

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !1587
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !1589
  br i1 %606, label %26, label %607, !dbg !1589

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !1590
  %610 = and i1 %609, %608, !dbg !1592
  br i1 %610, label %611, label %626, !dbg !1592

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1107, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %123, metadata !1105, metadata !DIExpression()), !dbg !1165
  %612 = load i8, i8* %97, align 1, !dbg !1593, !tbaa !1187
  %613 = icmp eq i8 %612, 0, !dbg !1596
  br i1 %613, label %626, label %614, !dbg !1596

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1107, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %617, metadata !1105, metadata !DIExpression()), !dbg !1165
  %618 = icmp ult i64 %617, %129, !dbg !1597
  br i1 %618, label %619, label %621, !dbg !1600

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !1597
  store i8 %615, i8* %620, align 1, !dbg !1597, !tbaa !1187
  br label %621, !dbg !1597

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !1600
  call void @llvm.dbg.value(metadata i64 %622, metadata !1105, metadata !DIExpression()), !dbg !1165
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !1601
  call void @llvm.dbg.value(metadata i8* %623, metadata !1107, metadata !DIExpression()), !dbg !1165
  %624 = load i8, i8* %623, align 1, !dbg !1593, !tbaa !1187
  %625 = icmp eq i8 %624, 0, !dbg !1596
  br i1 %625, label %626, label %614, !dbg !1596, !llvm.loop !1602

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1208
  call void @llvm.dbg.value(metadata i64 %627, metadata !1105, metadata !DIExpression()), !dbg !1165
  %628 = icmp ult i64 %627, %129, !dbg !1604
  br i1 %628, label %629, label %652, !dbg !1606

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !1607
  store i8 0, i8* %630, align 1, !dbg !1608, !tbaa !1187
  br label %652, !dbg !1607

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1096, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %637, metadata !1098, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.label(metadata !1164), !dbg !1609
  %633 = icmp eq i8 %101, 0, !dbg !1610
  %634 = select i1 %633, i32 2, i32 4, !dbg !1610
  br label %642, !dbg !1610

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1096, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %637, metadata !1098, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.label(metadata !1164), !dbg !1609
  %639 = icmp eq i32 %93, 2, !dbg !1612
  %640 = icmp eq i8 %636, 0, !dbg !1610
  %641 = select i1 %640, i32 2, i32 4, !dbg !1610
  br i1 %639, label %642, label %646, !dbg !1610

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !1610

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1099, metadata !DIExpression()), !dbg !1165
  %650 = and i32 %5, -3, !dbg !1613
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !1614
  br label %652, !dbg !1615

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !1616
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !1617 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1621, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i32 %1, metadata !1622, metadata !DIExpression()), !dbg !1625
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #24, !dbg !1626
  call void @llvm.dbg.value(metadata i8* %3, metadata !1623, metadata !DIExpression()), !dbg !1625
  %4 = icmp eq i8* %3, %0, !dbg !1627
  br i1 %4, label %5, label %72, !dbg !1629

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #24, !dbg !1630
  call void @llvm.dbg.value(metadata i8* %6, metadata !1624, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i8* %6, metadata !1631, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8* undef, metadata !1637, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 85, metadata !1638, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 84, metadata !1639, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 70, metadata !1640, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 45, metadata !1641, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 56, metadata !1642, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 0, metadata !1643, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 0, metadata !1644, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 0, metadata !1645, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 0, metadata !1646, metadata !DIExpression()), !dbg !1647
  %7 = load i8, i8* %6, align 1, !dbg !1650, !tbaa !1187
  %8 = and i8 %7, -33, !dbg !1650
  %9 = sext i8 %8 to i32, !dbg !1650
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !1650

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1652, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8* undef, metadata !1657, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 84, metadata !1658, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 70, metadata !1659, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 45, metadata !1660, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 56, metadata !1661, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 0, metadata !1662, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 0, metadata !1663, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 0, metadata !1664, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 0, metadata !1665, metadata !DIExpression()), !dbg !1666
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1670
  %12 = load i8, i8* %11, align 1, !dbg !1670, !tbaa !1187
  %13 = and i8 %12, -33, !dbg !1670
  %14 = icmp eq i8 %13, 84, !dbg !1670
  br i1 %14, label %15, label %69, !dbg !1670

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !1672, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i8* undef, metadata !1677, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i8 70, metadata !1678, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i8 45, metadata !1679, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i8 56, metadata !1680, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i8 0, metadata !1681, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i8 0, metadata !1682, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i8 0, metadata !1683, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i8 0, metadata !1684, metadata !DIExpression()), !dbg !1685
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1689
  %17 = load i8, i8* %16, align 1, !dbg !1689, !tbaa !1187
  %18 = and i8 %17, -33, !dbg !1689
  %19 = icmp eq i8 %18, 70, !dbg !1689
  br i1 %19, label %20, label %69, !dbg !1689

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !1691, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i8* undef, metadata !1696, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i8 45, metadata !1697, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i8 56, metadata !1698, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i8 0, metadata !1699, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i8 0, metadata !1700, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i8 0, metadata !1701, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i8 0, metadata !1702, metadata !DIExpression()), !dbg !1703
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1707
  %22 = load i8, i8* %21, align 1, !dbg !1707, !tbaa !1187
  %23 = icmp eq i8 %22, 45, !dbg !1707
  br i1 %23, label %24, label %69, !dbg !1709

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !1710, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8* undef, metadata !1715, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8 56, metadata !1716, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8 0, metadata !1717, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8 0, metadata !1718, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8 0, metadata !1719, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8 0, metadata !1720, metadata !DIExpression()), !dbg !1721
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1725
  %26 = load i8, i8* %25, align 1, !dbg !1725, !tbaa !1187
  %27 = icmp eq i8 %26, 56, !dbg !1725
  br i1 %27, label %28, label %69, !dbg !1727

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !1728, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata i8* undef, metadata !1733, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata i8 0, metadata !1734, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata i8 0, metadata !1735, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata i8 0, metadata !1736, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata i8 0, metadata !1737, metadata !DIExpression()), !dbg !1738
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1742
  %30 = load i8, i8* %29, align 1, !dbg !1742, !tbaa !1187
  %31 = icmp eq i8 %30, 0, !dbg !1742
  br i1 %31, label %32, label %69, !dbg !1744

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !1745, !tbaa !1187
  %34 = icmp eq i8 %33, 96, !dbg !1746
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.63, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.64, i64 0, i64 0), !dbg !1745
  br label %72, !dbg !1747

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1652, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8* undef, metadata !1657, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 66, metadata !1658, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 49, metadata !1659, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 56, metadata !1660, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 48, metadata !1661, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 51, metadata !1662, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 48, metadata !1663, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 0, metadata !1664, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 0, metadata !1665, metadata !DIExpression()), !dbg !1748
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1752
  %38 = load i8, i8* %37, align 1, !dbg !1752, !tbaa !1187
  %39 = and i8 %38, -33, !dbg !1752
  %40 = icmp eq i8 %39, 66, !dbg !1752
  br i1 %40, label %41, label %69, !dbg !1752

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !1672, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i8* undef, metadata !1677, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i8 49, metadata !1678, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i8 56, metadata !1679, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i8 48, metadata !1680, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i8 51, metadata !1681, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i8 48, metadata !1682, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i8 0, metadata !1683, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i8 0, metadata !1684, metadata !DIExpression()), !dbg !1753
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1755
  %43 = load i8, i8* %42, align 1, !dbg !1755, !tbaa !1187
  %44 = icmp eq i8 %43, 49, !dbg !1755
  br i1 %44, label %45, label %69, !dbg !1756

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !1691, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i8* undef, metadata !1696, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i8 56, metadata !1697, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i8 48, metadata !1698, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i8 51, metadata !1699, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i8 48, metadata !1700, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i8 0, metadata !1701, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i8 0, metadata !1702, metadata !DIExpression()), !dbg !1757
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1759
  %47 = load i8, i8* %46, align 1, !dbg !1759, !tbaa !1187
  %48 = icmp eq i8 %47, 56, !dbg !1759
  br i1 %48, label %49, label %69, !dbg !1760

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !1710, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i8* undef, metadata !1715, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i8 48, metadata !1716, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i8 51, metadata !1717, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i8 48, metadata !1718, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i8 0, metadata !1719, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i8 0, metadata !1720, metadata !DIExpression()), !dbg !1761
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1763
  %51 = load i8, i8* %50, align 1, !dbg !1763, !tbaa !1187
  %52 = icmp eq i8 %51, 48, !dbg !1763
  br i1 %52, label %53, label %69, !dbg !1764

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !1728, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* undef, metadata !1733, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 51, metadata !1734, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 48, metadata !1735, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 0, metadata !1736, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 0, metadata !1737, metadata !DIExpression()), !dbg !1765
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1767
  %55 = load i8, i8* %54, align 1, !dbg !1767, !tbaa !1187
  %56 = icmp eq i8 %55, 51, !dbg !1767
  br i1 %56, label %57, label %69, !dbg !1768

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !1769, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8* undef, metadata !1774, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 48, metadata !1775, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 0, metadata !1776, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 0, metadata !1777, metadata !DIExpression()), !dbg !1778
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1782
  %59 = load i8, i8* %58, align 1, !dbg !1782, !tbaa !1187
  %60 = icmp eq i8 %59, 48, !dbg !1782
  br i1 %60, label %61, label %69, !dbg !1784

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !1785, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8* undef, metadata !1790, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 0, metadata !1791, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 0, metadata !1792, metadata !DIExpression()), !dbg !1793
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1797
  %63 = load i8, i8* %62, align 1, !dbg !1797, !tbaa !1187
  %64 = icmp eq i8 %63, 0, !dbg !1797
  br i1 %64, label %65, label %69, !dbg !1799

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !1800, !tbaa !1187
  %67 = icmp eq i8 %66, 96, !dbg !1801
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.65, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.66, i64 0, i64 0), !dbg !1800
  br label %72, !dbg !1802

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !1803
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.62, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.61, i64 0, i64 0), !dbg !1804
  br label %72, !dbg !1805

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !1625
  ret i8* %73, !dbg !1806
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #16

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1807 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !1811 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !1817 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1821, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i64 %1, metadata !1822, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1823, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i8* %0, metadata !1825, metadata !DIExpression()) #24, !dbg !1838
  call void @llvm.dbg.value(metadata i64 %1, metadata !1830, metadata !DIExpression()) #24, !dbg !1838
  call void @llvm.dbg.value(metadata i64* null, metadata !1831, metadata !DIExpression()) #24, !dbg !1838
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1832, metadata !DIExpression()) #24, !dbg !1838
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1840
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1840
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1833, metadata !DIExpression()) #24, !dbg !1838
  %6 = tail call i32* @__errno_location() #28, !dbg !1841
  %7 = load i32, i32* %6, align 4, !dbg !1841, !tbaa !740
  call void @llvm.dbg.value(metadata i32 %7, metadata !1834, metadata !DIExpression()) #24, !dbg !1838
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1842
  %9 = load i32, i32* %8, align 4, !dbg !1842, !tbaa !1039
  %10 = or i32 %9, 1, !dbg !1843
  call void @llvm.dbg.value(metadata i32 %10, metadata !1835, metadata !DIExpression()) #24, !dbg !1838
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1844
  %12 = load i32, i32* %11, align 8, !dbg !1844, !tbaa !987
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1845
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1846
  %15 = load i8*, i8** %14, align 8, !dbg !1846, !tbaa !1061
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1847
  %17 = load i8*, i8** %16, align 8, !dbg !1847, !tbaa !1064
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #24, !dbg !1848
  %19 = add i64 %18, 1, !dbg !1849
  call void @llvm.dbg.value(metadata i64 %19, metadata !1836, metadata !DIExpression()) #24, !dbg !1838
  call void @llvm.dbg.value(metadata i64 %19, metadata !1850, metadata !DIExpression()) #24, !dbg !1855
  %20 = tail call noalias i8* @xmalloc(i64 %19) #24, !dbg !1857
  call void @llvm.dbg.value(metadata i8* %20, metadata !1837, metadata !DIExpression()) #24, !dbg !1838
  %21 = load i32, i32* %11, align 8, !dbg !1858, !tbaa !987
  %22 = load i8*, i8** %14, align 8, !dbg !1859, !tbaa !1061
  %23 = load i8*, i8** %16, align 8, !dbg !1860, !tbaa !1064
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #24, !dbg !1861
  store i32 %7, i32* %6, align 4, !dbg !1862, !tbaa !740
  ret i8* %20, !dbg !1863
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !1826 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1825, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %1, metadata !1830, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64* %2, metadata !1831, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1832, metadata !DIExpression()), !dbg !1864
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1865
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1865
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1833, metadata !DIExpression()), !dbg !1864
  %7 = tail call i32* @__errno_location() #28, !dbg !1866
  %8 = load i32, i32* %7, align 4, !dbg !1866, !tbaa !740
  call void @llvm.dbg.value(metadata i32 %8, metadata !1834, metadata !DIExpression()), !dbg !1864
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1867
  %10 = load i32, i32* %9, align 4, !dbg !1867, !tbaa !1039
  %11 = icmp eq i64* %2, null, !dbg !1868
  %12 = zext i1 %11 to i32, !dbg !1868
  %13 = or i32 %10, %12, !dbg !1869
  call void @llvm.dbg.value(metadata i32 %13, metadata !1835, metadata !DIExpression()), !dbg !1864
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1870
  %15 = load i32, i32* %14, align 8, !dbg !1870, !tbaa !987
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1871
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1872
  %18 = load i8*, i8** %17, align 8, !dbg !1872, !tbaa !1061
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1873
  %20 = load i8*, i8** %19, align 8, !dbg !1873, !tbaa !1064
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !1874
  %22 = add i64 %21, 1, !dbg !1875
  call void @llvm.dbg.value(metadata i64 %22, metadata !1836, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %22, metadata !1850, metadata !DIExpression()) #24, !dbg !1876
  %23 = tail call noalias i8* @xmalloc(i64 %22) #24, !dbg !1878
  call void @llvm.dbg.value(metadata i8* %23, metadata !1837, metadata !DIExpression()), !dbg !1864
  %24 = load i32, i32* %14, align 8, !dbg !1879, !tbaa !987
  %25 = load i8*, i8** %17, align 8, !dbg !1880, !tbaa !1061
  %26 = load i8*, i8** %19, align 8, !dbg !1881, !tbaa !1064
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !1882
  store i32 %8, i32* %7, align 4, !dbg !1883, !tbaa !740
  br i1 %11, label %29, label %28, !dbg !1884

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !1885, !tbaa !1887
  br label %29, !dbg !1889

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !1890
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !1891 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1895, !tbaa !596
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !1893, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i32 1, metadata !1894, metadata !DIExpression()), !dbg !1896
  %2 = load i32, i32* @nslots, align 4, !dbg !1897, !tbaa !740
  %3 = icmp sgt i32 %2, 1, !dbg !1900
  br i1 %3, label %4, label %12, !dbg !1901

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !1900
  br label %6, !dbg !1901

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !1894, metadata !DIExpression()), !dbg !1896
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !1902
  %9 = load i8*, i8** %8, align 8, !dbg !1902, !tbaa !1903
  tail call void @free(i8* %9) #24, !dbg !1905
  %10 = add nuw nsw i64 %7, 1, !dbg !1906
  call void @llvm.dbg.value(metadata i64 %10, metadata !1894, metadata !DIExpression()), !dbg !1896
  %11 = icmp eq i64 %10, %5, !dbg !1900
  br i1 %11, label %12, label %6, !dbg !1901, !llvm.loop !1907

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1909
  %14 = load i8*, i8** %13, align 8, !dbg !1909, !tbaa !1903
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1911
  br i1 %15, label %17, label %16, !dbg !1912

16:                                               ; preds = %12
  tail call void @free(i8* %14) #24, !dbg !1913
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1915, !tbaa !1916
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1917, !tbaa !1903
  br label %17, !dbg !1918

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1919
  br i1 %18, label %21, label %19, !dbg !1921

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !1922
  tail call void @free(i8* %20) #24, !dbg !1924
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1925, !tbaa !596
  br label %21, !dbg !1926

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !1927, !tbaa !740
  ret void, !dbg !1928
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !1929 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1931, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i8* %1, metadata !1932, metadata !DIExpression()), !dbg !1933
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1934
  ret i8* %3, !dbg !1935
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !1936 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1940, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8* %1, metadata !1941, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i64 %2, metadata !1942, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1943, metadata !DIExpression()), !dbg !1955
  %5 = tail call i32* @__errno_location() #28, !dbg !1956
  %6 = load i32, i32* %5, align 4, !dbg !1956, !tbaa !740
  call void @llvm.dbg.value(metadata i32 %6, metadata !1944, metadata !DIExpression()), !dbg !1955
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1957, !tbaa !596
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !1945, metadata !DIExpression()), !dbg !1955
  %8 = icmp slt i32 %0, 0, !dbg !1958
  br i1 %8, label %9, label %10, !dbg !1960

9:                                                ; preds = %4
  tail call void @abort() #26, !dbg !1961
  unreachable, !dbg !1961

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !1962, !tbaa !740
  %12 = icmp sgt i32 %11, %0, !dbg !1963
  br i1 %12, label %34, label %13, !dbg !1964

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !1965
  call void @llvm.dbg.value(metadata i1 %14, metadata !1946, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1966
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !1949, metadata !DIExpression()), !dbg !1966
  %15 = icmp eq i32 %0, 2147483647, !dbg !1967
  br i1 %15, label %16, label %17, !dbg !1969

16:                                               ; preds = %13
  tail call void @xalloc_die() #26, !dbg !1970
  unreachable, !dbg !1970

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !1971
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !1971
  %20 = add nuw nsw i32 %0, 1, !dbg !1972
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !1973
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #24, !dbg !1974
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !1974
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !1945, metadata !DIExpression()), !dbg !1955
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !1975, !tbaa !596
  br i1 %14, label %25, label %26, !dbg !1976

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !1977, !tbaa.struct !1979
  br label %26, !dbg !1980

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !1981, !tbaa !740
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !1982
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !1983
  %31 = sub nsw i32 %20, %27, !dbg !1984
  %32 = sext i32 %31 to i64, !dbg !1985
  %33 = shl nsw i64 %32, 4, !dbg !1986
  call void @llvm.dbg.value(metadata i8* %30, metadata !1377, metadata !DIExpression()) #24, !dbg !1987
  call void @llvm.dbg.value(metadata i32 0, metadata !1383, metadata !DIExpression()) #24, !dbg !1987
  call void @llvm.dbg.value(metadata i64 %33, metadata !1384, metadata !DIExpression()) #24, !dbg !1987
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #24, !dbg !1989
  store i32 %20, i32* @nslots, align 4, !dbg !1990, !tbaa !740
  br label %34, !dbg !1991

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !1955
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !1945, metadata !DIExpression()), !dbg !1955
  %36 = zext i32 %0 to i64, !dbg !1992
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !1993
  %38 = load i64, i64* %37, align 8, !dbg !1993, !tbaa !1916
  call void @llvm.dbg.value(metadata i64 %38, metadata !1950, metadata !DIExpression()), !dbg !1994
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !1995
  %40 = load i8*, i8** %39, align 8, !dbg !1995, !tbaa !1903
  call void @llvm.dbg.value(metadata i8* %40, metadata !1952, metadata !DIExpression()), !dbg !1994
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !1996
  %42 = load i32, i32* %41, align 4, !dbg !1996, !tbaa !1039
  %43 = or i32 %42, 1, !dbg !1997
  call void @llvm.dbg.value(metadata i32 %43, metadata !1953, metadata !DIExpression()), !dbg !1994
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1998
  %45 = load i32, i32* %44, align 8, !dbg !1998, !tbaa !987
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !1999
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2000
  %48 = load i8*, i8** %47, align 8, !dbg !2000, !tbaa !1061
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2001
  %50 = load i8*, i8** %49, align 8, !dbg !2001, !tbaa !1064
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2002
  call void @llvm.dbg.value(metadata i64 %51, metadata !1954, metadata !DIExpression()), !dbg !1994
  %52 = icmp ugt i64 %38, %51, !dbg !2003
  br i1 %52, label %63, label %53, !dbg !2005

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2006
  call void @llvm.dbg.value(metadata i64 %54, metadata !1950, metadata !DIExpression()), !dbg !1994
  store i64 %54, i64* %37, align 8, !dbg !2008, !tbaa !1916
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2009
  br i1 %55, label %57, label %56, !dbg !2011

56:                                               ; preds = %53
  tail call void @free(i8* %40) #24, !dbg !2012
  br label %57, !dbg !2012

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !1850, metadata !DIExpression()) #24, !dbg !2013
  %58 = tail call noalias i8* @xmalloc(i64 %54) #24, !dbg !2015
  call void @llvm.dbg.value(metadata i8* %58, metadata !1952, metadata !DIExpression()), !dbg !1994
  store i8* %58, i8** %39, align 8, !dbg !2016, !tbaa !1903
  %59 = load i32, i32* %44, align 8, !dbg !2017, !tbaa !987
  %60 = load i8*, i8** %47, align 8, !dbg !2018, !tbaa !1061
  %61 = load i8*, i8** %49, align 8, !dbg !2019, !tbaa !1064
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2020
  br label %63, !dbg !2021

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !1994
  call void @llvm.dbg.value(metadata i8* %64, metadata !1952, metadata !DIExpression()), !dbg !1994
  store i32 %6, i32* %5, align 4, !dbg !2022, !tbaa !740
  ret i8* %64, !dbg !2023
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2024 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2028, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i8* %1, metadata !2029, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i64 %2, metadata !2030, metadata !DIExpression()), !dbg !2031
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2032
  ret i8* %4, !dbg !2033
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2034 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2036, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i32 0, metadata !1931, metadata !DIExpression()) #24, !dbg !2038
  call void @llvm.dbg.value(metadata i8* %0, metadata !1932, metadata !DIExpression()) #24, !dbg !2038
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #24, !dbg !2040
  ret i8* %2, !dbg !2041
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2042 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2046, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i64 %1, metadata !2047, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i32 0, metadata !2028, metadata !DIExpression()) #24, !dbg !2049
  call void @llvm.dbg.value(metadata i8* %0, metadata !2029, metadata !DIExpression()) #24, !dbg !2049
  call void @llvm.dbg.value(metadata i64 %1, metadata !2030, metadata !DIExpression()) #24, !dbg !2049
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #24, !dbg !2051
  ret i8* %3, !dbg !2052
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2053 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2057, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata i32 %1, metadata !2058, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata i8* %2, metadata !2059, metadata !DIExpression()), !dbg !2061
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2062
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2062
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2060, metadata !DIExpression()), !dbg !2063
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2064), !dbg !2067
  call void @llvm.dbg.value(metadata i32 %1, metadata !2068, metadata !DIExpression()) #24, !dbg !2074
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2073, metadata !DIExpression()) #24, !dbg !2076
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #24, !dbg !2076, !alias.scope !2064
  %6 = icmp eq i32 %1, 10, !dbg !2077
  br i1 %6, label %7, label %8, !dbg !2079

7:                                                ; preds = %3
  tail call void @abort() #26, !dbg !2080, !noalias !2064
  unreachable, !dbg !2080

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2081
  store i32 %1, i32* %9, align 8, !dbg !2082, !tbaa !987, !alias.scope !2064
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2083
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2084
  ret i8* %10, !dbg !2085
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2086 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2090, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i32 %1, metadata !2091, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i8* %2, metadata !2092, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i64 %3, metadata !2093, metadata !DIExpression()), !dbg !2095
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2096
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2096
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2094, metadata !DIExpression()), !dbg !2097
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2098), !dbg !2101
  call void @llvm.dbg.value(metadata i32 %1, metadata !2068, metadata !DIExpression()) #24, !dbg !2102
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2073, metadata !DIExpression()) #24, !dbg !2104
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #24, !dbg !2104, !alias.scope !2098
  %7 = icmp eq i32 %1, 10, !dbg !2105
  br i1 %7, label %8, label %9, !dbg !2106

8:                                                ; preds = %4
  tail call void @abort() #26, !dbg !2107, !noalias !2098
  unreachable, !dbg !2107

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2108
  store i32 %1, i32* %10, align 8, !dbg !2109, !tbaa !987, !alias.scope !2098
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2110
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2111
  ret i8* %11, !dbg !2112
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2113 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2117, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata i8* %1, metadata !2118, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata i32 0, metadata !2057, metadata !DIExpression()) #24, !dbg !2120
  call void @llvm.dbg.value(metadata i32 %0, metadata !2058, metadata !DIExpression()) #24, !dbg !2120
  call void @llvm.dbg.value(metadata i8* %1, metadata !2059, metadata !DIExpression()) #24, !dbg !2120
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2122
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2122
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2060, metadata !DIExpression()) #24, !dbg !2123
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2124) #24, !dbg !2127
  call void @llvm.dbg.value(metadata i32 %0, metadata !2068, metadata !DIExpression()) #24, !dbg !2128
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2073, metadata !DIExpression()) #24, !dbg !2130
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #24, !dbg !2130, !alias.scope !2124
  %5 = icmp eq i32 %0, 10, !dbg !2131
  br i1 %5, label %6, label %7, !dbg !2132

6:                                                ; preds = %2
  tail call void @abort() #26, !dbg !2133, !noalias !2124
  unreachable, !dbg !2133

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2134
  store i32 %0, i32* %8, align 8, !dbg !2135, !tbaa !987, !alias.scope !2124
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #24, !dbg !2136
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2137
  ret i8* %9, !dbg !2138
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2139 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2143, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8* %1, metadata !2144, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i64 %2, metadata !2145, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i32 0, metadata !2090, metadata !DIExpression()) #24, !dbg !2147
  call void @llvm.dbg.value(metadata i32 %0, metadata !2091, metadata !DIExpression()) #24, !dbg !2147
  call void @llvm.dbg.value(metadata i8* %1, metadata !2092, metadata !DIExpression()) #24, !dbg !2147
  call void @llvm.dbg.value(metadata i64 %2, metadata !2093, metadata !DIExpression()) #24, !dbg !2147
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2149
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2149
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2094, metadata !DIExpression()) #24, !dbg !2150
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2151) #24, !dbg !2154
  call void @llvm.dbg.value(metadata i32 %0, metadata !2068, metadata !DIExpression()) #24, !dbg !2155
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2073, metadata !DIExpression()) #24, !dbg !2157
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #24, !dbg !2157, !alias.scope !2151
  %6 = icmp eq i32 %0, 10, !dbg !2158
  br i1 %6, label %7, label %8, !dbg !2159

7:                                                ; preds = %3
  tail call void @abort() #26, !dbg !2160, !noalias !2151
  unreachable, !dbg !2160

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2161
  store i32 %0, i32* %9, align 8, !dbg !2162, !tbaa !987, !alias.scope !2151
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #24, !dbg !2163
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2164
  ret i8* %10, !dbg !2165
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2166 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2170, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i64 %1, metadata !2171, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i8 %2, metadata !2172, metadata !DIExpression()), !dbg !2174
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2175
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2175
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2173, metadata !DIExpression()), !dbg !2176
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2177, !tbaa.struct !2178
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1005, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 %2, metadata !1006, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i32 1, metadata !1007, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 %2, metadata !1008, metadata !DIExpression()), !dbg !2179
  %6 = lshr i8 %2, 5, !dbg !2181
  %7 = zext i8 %6 to i64, !dbg !2181
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2182
  call void @llvm.dbg.value(metadata i32* %8, metadata !1010, metadata !DIExpression()), !dbg !2179
  %9 = and i8 %2, 31, !dbg !2183
  %10 = zext i8 %9 to i32, !dbg !2183
  call void @llvm.dbg.value(metadata i32 %10, metadata !1012, metadata !DIExpression()), !dbg !2179
  %11 = load i32, i32* %8, align 4, !dbg !2184, !tbaa !740
  %12 = lshr i32 %11, %10, !dbg !2185
  %13 = and i32 %12, 1, !dbg !2186
  call void @llvm.dbg.value(metadata i32 %13, metadata !1013, metadata !DIExpression()), !dbg !2179
  %14 = xor i32 %13, 1, !dbg !2187
  %15 = shl i32 %14, %10, !dbg !2188
  %16 = xor i32 %15, %11, !dbg !2189
  store i32 %16, i32* %8, align 4, !dbg !2189, !tbaa !740
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2190
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2191
  ret i8* %17, !dbg !2192
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2193 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2197, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i8 %1, metadata !2198, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i8* %0, metadata !2170, metadata !DIExpression()) #24, !dbg !2200
  call void @llvm.dbg.value(metadata i64 -1, metadata !2171, metadata !DIExpression()) #24, !dbg !2200
  call void @llvm.dbg.value(metadata i8 %1, metadata !2172, metadata !DIExpression()) #24, !dbg !2200
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2202
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2202
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2173, metadata !DIExpression()) #24, !dbg !2203
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #24, !dbg !2204, !tbaa.struct !2178
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1005, metadata !DIExpression()) #24, !dbg !2205
  call void @llvm.dbg.value(metadata i8 %1, metadata !1006, metadata !DIExpression()) #24, !dbg !2205
  call void @llvm.dbg.value(metadata i32 1, metadata !1007, metadata !DIExpression()) #24, !dbg !2205
  call void @llvm.dbg.value(metadata i8 %1, metadata !1008, metadata !DIExpression()) #24, !dbg !2205
  %5 = lshr i8 %1, 5, !dbg !2207
  %6 = zext i8 %5 to i64, !dbg !2207
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2208
  call void @llvm.dbg.value(metadata i32* %7, metadata !1010, metadata !DIExpression()) #24, !dbg !2205
  %8 = and i8 %1, 31, !dbg !2209
  %9 = zext i8 %8 to i32, !dbg !2209
  call void @llvm.dbg.value(metadata i32 %9, metadata !1012, metadata !DIExpression()) #24, !dbg !2205
  %10 = load i32, i32* %7, align 4, !dbg !2210, !tbaa !740
  %11 = lshr i32 %10, %9, !dbg !2211
  %12 = and i32 %11, 1, !dbg !2212
  call void @llvm.dbg.value(metadata i32 %12, metadata !1013, metadata !DIExpression()) #24, !dbg !2205
  %13 = xor i32 %12, 1, !dbg !2213
  %14 = shl i32 %13, %9, !dbg !2214
  %15 = xor i32 %14, %10, !dbg !2215
  store i32 %15, i32* %7, align 4, !dbg !2215, !tbaa !740
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #24, !dbg !2216
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2217
  ret i8* %16, !dbg !2218
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2219 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2221, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8* %0, metadata !2197, metadata !DIExpression()) #24, !dbg !2223
  call void @llvm.dbg.value(metadata i8 58, metadata !2198, metadata !DIExpression()) #24, !dbg !2223
  call void @llvm.dbg.value(metadata i8* %0, metadata !2170, metadata !DIExpression()) #24, !dbg !2225
  call void @llvm.dbg.value(metadata i64 -1, metadata !2171, metadata !DIExpression()) #24, !dbg !2225
  call void @llvm.dbg.value(metadata i8 58, metadata !2172, metadata !DIExpression()) #24, !dbg !2225
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2227
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #24, !dbg !2227
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2173, metadata !DIExpression()) #24, !dbg !2228
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #24, !dbg !2229, !tbaa.struct !2178
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1005, metadata !DIExpression()) #24, !dbg !2230
  call void @llvm.dbg.value(metadata i8 58, metadata !1006, metadata !DIExpression()) #24, !dbg !2230
  call void @llvm.dbg.value(metadata i32 1, metadata !1007, metadata !DIExpression()) #24, !dbg !2230
  call void @llvm.dbg.value(metadata i8 58, metadata !1008, metadata !DIExpression()) #24, !dbg !2230
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2232
  call void @llvm.dbg.value(metadata i32* %4, metadata !1010, metadata !DIExpression()) #24, !dbg !2230
  call void @llvm.dbg.value(metadata i32 26, metadata !1012, metadata !DIExpression()) #24, !dbg !2230
  %5 = load i32, i32* %4, align 4, !dbg !2233, !tbaa !740
  call void @llvm.dbg.value(metadata i32 %5, metadata !1013, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #24, !dbg !2230
  %6 = or i32 %5, 67108864, !dbg !2234
  store i32 %6, i32* %4, align 4, !dbg !2234, !tbaa !740
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #24, !dbg !2235
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #24, !dbg !2236
  ret i8* %7, !dbg !2237
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2238 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2240, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 %1, metadata !2241, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i8* %0, metadata !2170, metadata !DIExpression()) #24, !dbg !2243
  call void @llvm.dbg.value(metadata i64 %1, metadata !2171, metadata !DIExpression()) #24, !dbg !2243
  call void @llvm.dbg.value(metadata i8 58, metadata !2172, metadata !DIExpression()) #24, !dbg !2243
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2245
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2245
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2173, metadata !DIExpression()) #24, !dbg !2246
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #24, !dbg !2247, !tbaa.struct !2178
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1005, metadata !DIExpression()) #24, !dbg !2248
  call void @llvm.dbg.value(metadata i8 58, metadata !1006, metadata !DIExpression()) #24, !dbg !2248
  call void @llvm.dbg.value(metadata i32 1, metadata !1007, metadata !DIExpression()) #24, !dbg !2248
  call void @llvm.dbg.value(metadata i8 58, metadata !1008, metadata !DIExpression()) #24, !dbg !2248
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2250
  call void @llvm.dbg.value(metadata i32* %5, metadata !1010, metadata !DIExpression()) #24, !dbg !2248
  call void @llvm.dbg.value(metadata i32 26, metadata !1012, metadata !DIExpression()) #24, !dbg !2248
  %6 = load i32, i32* %5, align 4, !dbg !2251, !tbaa !740
  call void @llvm.dbg.value(metadata i32 %6, metadata !1013, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #24, !dbg !2248
  %7 = or i32 %6, 67108864, !dbg !2252
  store i32 %7, i32* %5, align 4, !dbg !2252, !tbaa !740
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #24, !dbg !2253
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2254
  ret i8* %8, !dbg !2255
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2256 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2073, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2262
  call void @llvm.dbg.value(metadata i32 %0, metadata !2258, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i32 %1, metadata !2259, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i8* %2, metadata !2260, metadata !DIExpression()), !dbg !2264
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2265
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2265
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2261, metadata !DIExpression()), !dbg !2266
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2267
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2267
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2268), !dbg !2267
  call void @llvm.dbg.value(metadata i32 %1, metadata !2068, metadata !DIExpression()) #24, !dbg !2271
  call void @llvm.dbg.value(metadata i32 0, metadata !2073, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2271
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2262, !alias.scope !2268
  %8 = icmp eq i32 %1, 10, !dbg !2272
  br i1 %8, label %9, label %10, !dbg !2273

9:                                                ; preds = %3
  tail call void @abort() #26, !dbg !2274, !noalias !2268
  unreachable, !dbg !2274

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2073, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2271
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2267
  store i32 %1, i32* %11, align 8, !dbg !2267, !tbaa.struct !2178
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2267
  %13 = bitcast i32* %12 to i8*, !dbg !2267
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2267, !tbaa.struct !2275
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2267
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1005, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8 58, metadata !1006, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i32 1, metadata !1007, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8 58, metadata !1008, metadata !DIExpression()), !dbg !2276
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2278
  call void @llvm.dbg.value(metadata i32* %14, metadata !1010, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i32 26, metadata !1012, metadata !DIExpression()), !dbg !2276
  %15 = load i32, i32* %14, align 4, !dbg !2279, !tbaa !740
  call void @llvm.dbg.value(metadata i32 %15, metadata !1013, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2276
  %16 = or i32 %15, 67108864, !dbg !2280
  store i32 %16, i32* %14, align 4, !dbg !2280, !tbaa !740
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2281
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2282
  ret i8* %17, !dbg !2283
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2284 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2288, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8* %1, metadata !2289, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8* %2, metadata !2290, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8* %3, metadata !2291, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i32 %0, metadata !2293, metadata !DIExpression()) #24, !dbg !2303
  call void @llvm.dbg.value(metadata i8* %1, metadata !2298, metadata !DIExpression()) #24, !dbg !2303
  call void @llvm.dbg.value(metadata i8* %2, metadata !2299, metadata !DIExpression()) #24, !dbg !2303
  call void @llvm.dbg.value(metadata i8* %3, metadata !2300, metadata !DIExpression()) #24, !dbg !2303
  call void @llvm.dbg.value(metadata i64 -1, metadata !2301, metadata !DIExpression()) #24, !dbg !2303
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2305
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2305
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2302, metadata !DIExpression()) #24, !dbg !2306
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #24, !dbg !2307, !tbaa.struct !2178
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1046, metadata !DIExpression()) #24, !dbg !2308
  call void @llvm.dbg.value(metadata i8* %1, metadata !1047, metadata !DIExpression()) #24, !dbg !2308
  call void @llvm.dbg.value(metadata i8* %2, metadata !1048, metadata !DIExpression()) #24, !dbg !2308
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1046, metadata !DIExpression()) #24, !dbg !2308
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2310
  store i32 10, i32* %7, align 8, !dbg !2311, !tbaa !987
  %8 = icmp ne i8* %1, null, !dbg !2312
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2313
  br i1 %10, label %12, label %11, !dbg !2313

11:                                               ; preds = %4
  tail call void @abort() #26, !dbg !2314
  unreachable, !dbg !2314

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2315
  store i8* %1, i8** %13, align 8, !dbg !2316, !tbaa !1061
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2317
  store i8* %2, i8** %14, align 8, !dbg !2318, !tbaa !1064
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #24, !dbg !2319
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2320
  ret i8* %15, !dbg !2321
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2294 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2293, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i8* %1, metadata !2298, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i8* %2, metadata !2299, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i8* %3, metadata !2300, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i64 %4, metadata !2301, metadata !DIExpression()), !dbg !2322
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2323
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #24, !dbg !2323
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2302, metadata !DIExpression()), !dbg !2324
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2325, !tbaa.struct !2178
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1046, metadata !DIExpression()) #24, !dbg !2326
  call void @llvm.dbg.value(metadata i8* %1, metadata !1047, metadata !DIExpression()) #24, !dbg !2326
  call void @llvm.dbg.value(metadata i8* %2, metadata !1048, metadata !DIExpression()) #24, !dbg !2326
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1046, metadata !DIExpression()) #24, !dbg !2326
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2328
  store i32 10, i32* %8, align 8, !dbg !2329, !tbaa !987
  %9 = icmp ne i8* %1, null, !dbg !2330
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2331
  br i1 %11, label %13, label %12, !dbg !2331

12:                                               ; preds = %5
  tail call void @abort() #26, !dbg !2332
  unreachable, !dbg !2332

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2333
  store i8* %1, i8** %14, align 8, !dbg !2334, !tbaa !1061
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2335
  store i8* %2, i8** %15, align 8, !dbg !2336, !tbaa !1064
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2337
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #24, !dbg !2338
  ret i8* %16, !dbg !2339
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2340 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2344, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8* %1, metadata !2345, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8* %2, metadata !2346, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i32 0, metadata !2288, metadata !DIExpression()) #24, !dbg !2348
  call void @llvm.dbg.value(metadata i8* %0, metadata !2289, metadata !DIExpression()) #24, !dbg !2348
  call void @llvm.dbg.value(metadata i8* %1, metadata !2290, metadata !DIExpression()) #24, !dbg !2348
  call void @llvm.dbg.value(metadata i8* %2, metadata !2291, metadata !DIExpression()) #24, !dbg !2348
  call void @llvm.dbg.value(metadata i32 0, metadata !2293, metadata !DIExpression()) #24, !dbg !2350
  call void @llvm.dbg.value(metadata i8* %0, metadata !2298, metadata !DIExpression()) #24, !dbg !2350
  call void @llvm.dbg.value(metadata i8* %1, metadata !2299, metadata !DIExpression()) #24, !dbg !2350
  call void @llvm.dbg.value(metadata i8* %2, metadata !2300, metadata !DIExpression()) #24, !dbg !2350
  call void @llvm.dbg.value(metadata i64 -1, metadata !2301, metadata !DIExpression()) #24, !dbg !2350
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2352
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2352
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2302, metadata !DIExpression()) #24, !dbg !2353
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #24, !dbg !2354, !tbaa.struct !2178
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1046, metadata !DIExpression()) #24, !dbg !2355
  call void @llvm.dbg.value(metadata i8* %0, metadata !1047, metadata !DIExpression()) #24, !dbg !2355
  call void @llvm.dbg.value(metadata i8* %1, metadata !1048, metadata !DIExpression()) #24, !dbg !2355
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1046, metadata !DIExpression()) #24, !dbg !2355
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2357
  store i32 10, i32* %6, align 8, !dbg !2358, !tbaa !987
  %7 = icmp ne i8* %0, null, !dbg !2359
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2360
  br i1 %9, label %11, label %10, !dbg !2360

10:                                               ; preds = %3
  tail call void @abort() #26, !dbg !2361
  unreachable, !dbg !2361

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2362
  store i8* %0, i8** %12, align 8, !dbg !2363, !tbaa !1061
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2364
  store i8* %1, i8** %13, align 8, !dbg !2365, !tbaa !1064
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #24, !dbg !2366
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2367
  ret i8* %14, !dbg !2368
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2369 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2373, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata i8* %1, metadata !2374, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata i8* %2, metadata !2375, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata i64 %3, metadata !2376, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata i32 0, metadata !2293, metadata !DIExpression()) #24, !dbg !2378
  call void @llvm.dbg.value(metadata i8* %0, metadata !2298, metadata !DIExpression()) #24, !dbg !2378
  call void @llvm.dbg.value(metadata i8* %1, metadata !2299, metadata !DIExpression()) #24, !dbg !2378
  call void @llvm.dbg.value(metadata i8* %2, metadata !2300, metadata !DIExpression()) #24, !dbg !2378
  call void @llvm.dbg.value(metadata i64 %3, metadata !2301, metadata !DIExpression()) #24, !dbg !2378
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2380
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2380
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2302, metadata !DIExpression()) #24, !dbg !2381
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #24, !dbg !2382, !tbaa.struct !2178
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1046, metadata !DIExpression()) #24, !dbg !2383
  call void @llvm.dbg.value(metadata i8* %0, metadata !1047, metadata !DIExpression()) #24, !dbg !2383
  call void @llvm.dbg.value(metadata i8* %1, metadata !1048, metadata !DIExpression()) #24, !dbg !2383
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1046, metadata !DIExpression()) #24, !dbg !2383
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2385
  store i32 10, i32* %7, align 8, !dbg !2386, !tbaa !987
  %8 = icmp ne i8* %0, null, !dbg !2387
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2388
  br i1 %10, label %12, label %11, !dbg !2388

11:                                               ; preds = %4
  tail call void @abort() #26, !dbg !2389
  unreachable, !dbg !2389

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2390
  store i8* %0, i8** %13, align 8, !dbg !2391, !tbaa !1061
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2392
  store i8* %1, i8** %14, align 8, !dbg !2393, !tbaa !1064
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #24, !dbg !2394
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2395
  ret i8* %15, !dbg !2396
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2397 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2401, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i8* %1, metadata !2402, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i64 %2, metadata !2403, metadata !DIExpression()), !dbg !2404
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2405
  ret i8* %4, !dbg !2406
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2407 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2411, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %1, metadata !2412, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 0, metadata !2401, metadata !DIExpression()) #24, !dbg !2414
  call void @llvm.dbg.value(metadata i8* %0, metadata !2402, metadata !DIExpression()) #24, !dbg !2414
  call void @llvm.dbg.value(metadata i64 %1, metadata !2403, metadata !DIExpression()) #24, !dbg !2414
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #24, !dbg !2416
  ret i8* %3, !dbg !2417
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2418 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2422, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i8* %1, metadata !2423, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i32 %0, metadata !2401, metadata !DIExpression()) #24, !dbg !2425
  call void @llvm.dbg.value(metadata i8* %1, metadata !2402, metadata !DIExpression()) #24, !dbg !2425
  call void @llvm.dbg.value(metadata i64 -1, metadata !2403, metadata !DIExpression()) #24, !dbg !2425
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #24, !dbg !2427
  ret i8* %3, !dbg !2428
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2429 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2433, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata i32 0, metadata !2422, metadata !DIExpression()) #24, !dbg !2435
  call void @llvm.dbg.value(metadata i8* %0, metadata !2423, metadata !DIExpression()) #24, !dbg !2435
  call void @llvm.dbg.value(metadata i32 0, metadata !2401, metadata !DIExpression()) #24, !dbg !2437
  call void @llvm.dbg.value(metadata i8* %0, metadata !2402, metadata !DIExpression()) #24, !dbg !2437
  call void @llvm.dbg.value(metadata i64 -1, metadata !2403, metadata !DIExpression()) #24, !dbg !2437
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #24, !dbg !2439
  ret i8* %2, !dbg !2440
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2441 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2481, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i8* %1, metadata !2482, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i8* %2, metadata !2483, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i8* %3, metadata !2484, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i8** %4, metadata !2485, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i64 %5, metadata !2486, metadata !DIExpression()), !dbg !2487
  %7 = icmp eq i8* %1, null, !dbg !2488
  br i1 %7, label %10, label %8, !dbg !2490

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #24, !dbg !2491
  br label %12, !dbg !2491

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.74, i64 0, i64 0), i8* %2, i8* %3) #24, !dbg !2492
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.75, i64 0, i64 0), i32 5) #24, !dbg !2493
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #24, !dbg !2493
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.76, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2494
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.77, i64 0, i64 0), i32 5) #24, !dbg !2495
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.78, i64 0, i64 0)) #24, !dbg !2495
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.76, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2496
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
  ], !dbg !2497

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.79, i64 0, i64 0), i32 5) #24, !dbg !2498
  %21 = load i8*, i8** %4, align 8, !dbg !2498, !tbaa !596
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #24, !dbg !2498
  br label %147, !dbg !2500

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.80, i64 0, i64 0), i32 5) #24, !dbg !2501
  %25 = load i8*, i8** %4, align 8, !dbg !2501, !tbaa !596
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2501
  %27 = load i8*, i8** %26, align 8, !dbg !2501, !tbaa !596
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #24, !dbg !2501
  br label %147, !dbg !2502

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.81, i64 0, i64 0), i32 5) #24, !dbg !2503
  %31 = load i8*, i8** %4, align 8, !dbg !2503, !tbaa !596
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2503
  %33 = load i8*, i8** %32, align 8, !dbg !2503, !tbaa !596
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2503
  %35 = load i8*, i8** %34, align 8, !dbg !2503, !tbaa !596
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #24, !dbg !2503
  br label %147, !dbg !2504

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.82, i64 0, i64 0), i32 5) #24, !dbg !2505
  %39 = load i8*, i8** %4, align 8, !dbg !2505, !tbaa !596
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2505
  %41 = load i8*, i8** %40, align 8, !dbg !2505, !tbaa !596
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2505
  %43 = load i8*, i8** %42, align 8, !dbg !2505, !tbaa !596
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2505
  %45 = load i8*, i8** %44, align 8, !dbg !2505, !tbaa !596
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #24, !dbg !2505
  br label %147, !dbg !2506

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.83, i64 0, i64 0), i32 5) #24, !dbg !2507
  %49 = load i8*, i8** %4, align 8, !dbg !2507, !tbaa !596
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2507
  %51 = load i8*, i8** %50, align 8, !dbg !2507, !tbaa !596
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2507
  %53 = load i8*, i8** %52, align 8, !dbg !2507, !tbaa !596
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2507
  %55 = load i8*, i8** %54, align 8, !dbg !2507, !tbaa !596
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2507
  %57 = load i8*, i8** %56, align 8, !dbg !2507, !tbaa !596
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #24, !dbg !2507
  br label %147, !dbg !2508

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.84, i64 0, i64 0), i32 5) #24, !dbg !2509
  %61 = load i8*, i8** %4, align 8, !dbg !2509, !tbaa !596
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2509
  %63 = load i8*, i8** %62, align 8, !dbg !2509, !tbaa !596
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2509
  %65 = load i8*, i8** %64, align 8, !dbg !2509, !tbaa !596
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2509
  %67 = load i8*, i8** %66, align 8, !dbg !2509, !tbaa !596
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2509
  %69 = load i8*, i8** %68, align 8, !dbg !2509, !tbaa !596
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2509
  %71 = load i8*, i8** %70, align 8, !dbg !2509, !tbaa !596
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #24, !dbg !2509
  br label %147, !dbg !2510

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.85, i64 0, i64 0), i32 5) #24, !dbg !2511
  %75 = load i8*, i8** %4, align 8, !dbg !2511, !tbaa !596
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2511
  %77 = load i8*, i8** %76, align 8, !dbg !2511, !tbaa !596
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2511
  %79 = load i8*, i8** %78, align 8, !dbg !2511, !tbaa !596
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2511
  %81 = load i8*, i8** %80, align 8, !dbg !2511, !tbaa !596
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2511
  %83 = load i8*, i8** %82, align 8, !dbg !2511, !tbaa !596
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2511
  %85 = load i8*, i8** %84, align 8, !dbg !2511, !tbaa !596
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2511
  %87 = load i8*, i8** %86, align 8, !dbg !2511, !tbaa !596
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #24, !dbg !2511
  br label %147, !dbg !2512

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.86, i64 0, i64 0), i32 5) #24, !dbg !2513
  %91 = load i8*, i8** %4, align 8, !dbg !2513, !tbaa !596
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2513
  %93 = load i8*, i8** %92, align 8, !dbg !2513, !tbaa !596
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2513
  %95 = load i8*, i8** %94, align 8, !dbg !2513, !tbaa !596
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2513
  %97 = load i8*, i8** %96, align 8, !dbg !2513, !tbaa !596
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2513
  %99 = load i8*, i8** %98, align 8, !dbg !2513, !tbaa !596
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2513
  %101 = load i8*, i8** %100, align 8, !dbg !2513, !tbaa !596
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2513
  %103 = load i8*, i8** %102, align 8, !dbg !2513, !tbaa !596
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2513
  %105 = load i8*, i8** %104, align 8, !dbg !2513, !tbaa !596
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #24, !dbg !2513
  br label %147, !dbg !2514

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.87, i64 0, i64 0), i32 5) #24, !dbg !2515
  %109 = load i8*, i8** %4, align 8, !dbg !2515, !tbaa !596
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2515
  %111 = load i8*, i8** %110, align 8, !dbg !2515, !tbaa !596
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2515
  %113 = load i8*, i8** %112, align 8, !dbg !2515, !tbaa !596
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2515
  %115 = load i8*, i8** %114, align 8, !dbg !2515, !tbaa !596
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2515
  %117 = load i8*, i8** %116, align 8, !dbg !2515, !tbaa !596
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2515
  %119 = load i8*, i8** %118, align 8, !dbg !2515, !tbaa !596
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2515
  %121 = load i8*, i8** %120, align 8, !dbg !2515, !tbaa !596
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2515
  %123 = load i8*, i8** %122, align 8, !dbg !2515, !tbaa !596
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2515
  %125 = load i8*, i8** %124, align 8, !dbg !2515, !tbaa !596
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #24, !dbg !2515
  br label %147, !dbg !2516

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.88, i64 0, i64 0), i32 5) #24, !dbg !2517
  %129 = load i8*, i8** %4, align 8, !dbg !2517, !tbaa !596
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2517
  %131 = load i8*, i8** %130, align 8, !dbg !2517, !tbaa !596
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2517
  %133 = load i8*, i8** %132, align 8, !dbg !2517, !tbaa !596
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2517
  %135 = load i8*, i8** %134, align 8, !dbg !2517, !tbaa !596
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2517
  %137 = load i8*, i8** %136, align 8, !dbg !2517, !tbaa !596
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2517
  %139 = load i8*, i8** %138, align 8, !dbg !2517, !tbaa !596
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2517
  %141 = load i8*, i8** %140, align 8, !dbg !2517, !tbaa !596
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2517
  %143 = load i8*, i8** %142, align 8, !dbg !2517, !tbaa !596
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2517
  %145 = load i8*, i8** %144, align 8, !dbg !2517, !tbaa !596
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #24, !dbg !2517
  br label %147, !dbg !2518

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2519
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !2520 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2524, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata i8* %1, metadata !2525, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata i8* %2, metadata !2526, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata i8* %3, metadata !2527, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata i8** %4, metadata !2528, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata i64 0, metadata !2529, metadata !DIExpression()), !dbg !2530
  br label %6, !dbg !2531

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2533
  call void @llvm.dbg.value(metadata i64 %7, metadata !2529, metadata !DIExpression()), !dbg !2530
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2534
  %9 = load i8*, i8** %8, align 8, !dbg !2534, !tbaa !596
  %10 = icmp eq i8* %9, null, !dbg !2536
  %11 = add i64 %7, 1, !dbg !2537
  call void @llvm.dbg.value(metadata i64 %11, metadata !2529, metadata !DIExpression()), !dbg !2530
  br i1 %10, label %12, label %6, !dbg !2536, !llvm.loop !2538

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2540
  ret void, !dbg !2541
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !2542 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2553, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8* %1, metadata !2554, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8* %2, metadata !2555, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8* %3, metadata !2556, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2557, metadata !DIExpression()), !dbg !2561
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2562
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #24, !dbg !2562
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2559, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i64 0, metadata !2558, metadata !DIExpression()), !dbg !2561
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !2558, metadata !DIExpression()), !dbg !2561
  %11 = load i32, i32* %8, align 8, !dbg !2564
  %12 = icmp ult i32 %11, 41, !dbg !2564
  br i1 %12, label %13, label %18, !dbg !2564

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2564
  %15 = zext i32 %11 to i64, !dbg !2564
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2564
  %17 = add nuw nsw i32 %11, 8, !dbg !2564
  store i32 %17, i32* %8, align 8, !dbg !2564
  br label %21, !dbg !2564

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2564
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2564
  store i8* %20, i8** %9, align 8, !dbg !2564
  br label %21, !dbg !2564

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2564
  %25 = load i8*, i8** %24, align 8, !dbg !2564
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2567
  store i8* %25, i8** %26, align 16, !dbg !2568, !tbaa !596
  %27 = icmp eq i8* %25, null, !dbg !2569
  br i1 %27, label %30, label %28, !dbg !2570

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2558, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i64 1, metadata !2558, metadata !DIExpression()), !dbg !2561
  %29 = icmp ult i32 %22, 41, !dbg !2564
  br i1 %29, label %35, label %32, !dbg !2564

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2571
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2572
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #24, !dbg !2573
  ret void, !dbg !2573

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2564
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2564
  store i8* %34, i8** %9, align 8, !dbg !2564
  br label %40, !dbg !2564

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2564
  %37 = zext i32 %22 to i64, !dbg !2564
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2564
  %39 = add nuw nsw i32 %22, 8, !dbg !2564
  store i32 %39, i32* %8, align 8, !dbg !2564
  br label %40, !dbg !2564

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2564
  %44 = load i8*, i8** %43, align 8, !dbg !2564
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2567
  store i8* %44, i8** %45, align 8, !dbg !2568, !tbaa !596
  %46 = icmp eq i8* %44, null, !dbg !2569
  br i1 %46, label %30, label %47, !dbg !2570

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2558, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i64 2, metadata !2558, metadata !DIExpression()), !dbg !2561
  %48 = icmp ult i32 %41, 41, !dbg !2564
  br i1 %48, label %52, label %49, !dbg !2564

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2564
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2564
  store i8* %51, i8** %9, align 8, !dbg !2564
  br label %57, !dbg !2564

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2564
  %54 = zext i32 %41 to i64, !dbg !2564
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2564
  %56 = add nuw nsw i32 %41, 8, !dbg !2564
  store i32 %56, i32* %8, align 8, !dbg !2564
  br label %57, !dbg !2564

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2564
  %61 = load i8*, i8** %60, align 8, !dbg !2564
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2567
  store i8* %61, i8** %62, align 16, !dbg !2568, !tbaa !596
  %63 = icmp eq i8* %61, null, !dbg !2569
  br i1 %63, label %30, label %64, !dbg !2570

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2558, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i64 3, metadata !2558, metadata !DIExpression()), !dbg !2561
  %65 = icmp ult i32 %58, 41, !dbg !2564
  br i1 %65, label %69, label %66, !dbg !2564

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2564
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2564
  store i8* %68, i8** %9, align 8, !dbg !2564
  br label %74, !dbg !2564

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2564
  %71 = zext i32 %58 to i64, !dbg !2564
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2564
  %73 = add nuw nsw i32 %58, 8, !dbg !2564
  store i32 %73, i32* %8, align 8, !dbg !2564
  br label %74, !dbg !2564

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2564
  %78 = load i8*, i8** %77, align 8, !dbg !2564
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2567
  store i8* %78, i8** %79, align 8, !dbg !2568, !tbaa !596
  %80 = icmp eq i8* %78, null, !dbg !2569
  br i1 %80, label %30, label %81, !dbg !2570

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2558, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i64 4, metadata !2558, metadata !DIExpression()), !dbg !2561
  %82 = icmp ult i32 %75, 41, !dbg !2564
  br i1 %82, label %86, label %83, !dbg !2564

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2564
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2564
  store i8* %85, i8** %9, align 8, !dbg !2564
  br label %91, !dbg !2564

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2564
  %88 = zext i32 %75 to i64, !dbg !2564
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2564
  %90 = add nuw nsw i32 %75, 8, !dbg !2564
  store i32 %90, i32* %8, align 8, !dbg !2564
  br label %91, !dbg !2564

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2564
  %95 = load i8*, i8** %94, align 8, !dbg !2564
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2567
  store i8* %95, i8** %96, align 16, !dbg !2568, !tbaa !596
  %97 = icmp eq i8* %95, null, !dbg !2569
  br i1 %97, label %30, label %98, !dbg !2570

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2558, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i64 5, metadata !2558, metadata !DIExpression()), !dbg !2561
  %99 = icmp ult i32 %92, 41, !dbg !2564
  br i1 %99, label %103, label %100, !dbg !2564

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2564
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2564
  store i8* %102, i8** %9, align 8, !dbg !2564
  br label %108, !dbg !2564

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2564
  %105 = zext i32 %92 to i64, !dbg !2564
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2564
  %107 = add nuw nsw i32 %92, 8, !dbg !2564
  store i32 %107, i32* %8, align 8, !dbg !2564
  br label %108, !dbg !2564

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2564
  %111 = load i8*, i8** %110, align 8, !dbg !2564
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2567
  store i8* %111, i8** %112, align 8, !dbg !2568, !tbaa !596
  %113 = icmp eq i8* %111, null, !dbg !2569
  br i1 %113, label %30, label %114, !dbg !2570

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2558, metadata !DIExpression()), !dbg !2561
  %115 = load i8*, i8** %9, align 8, !dbg !2564
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2564
  store i8* %116, i8** %9, align 8, !dbg !2564
  %117 = bitcast i8* %115 to i8**, !dbg !2564
  %118 = load i8*, i8** %117, align 8, !dbg !2564
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2567
  store i8* %118, i8** %119, align 16, !dbg !2568, !tbaa !596
  %120 = icmp eq i8* %118, null, !dbg !2569
  br i1 %120, label %30, label %121, !dbg !2570

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2558, metadata !DIExpression()), !dbg !2561
  %122 = load i8*, i8** %9, align 8, !dbg !2564
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2564
  store i8* %123, i8** %9, align 8, !dbg !2564
  %124 = bitcast i8* %122 to i8**, !dbg !2564
  %125 = load i8*, i8** %124, align 8, !dbg !2564
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2567
  store i8* %125, i8** %126, align 8, !dbg !2568, !tbaa !596
  %127 = icmp eq i8* %125, null, !dbg !2569
  br i1 %127, label %30, label %128, !dbg !2570

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2558, metadata !DIExpression()), !dbg !2561
  %129 = load i8*, i8** %9, align 8, !dbg !2564
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2564
  store i8* %130, i8** %9, align 8, !dbg !2564
  %131 = bitcast i8* %129 to i8**, !dbg !2564
  %132 = load i8*, i8** %131, align 8, !dbg !2564
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2567
  store i8* %132, i8** %133, align 16, !dbg !2568, !tbaa !596
  %134 = icmp eq i8* %132, null, !dbg !2569
  br i1 %134, label %30, label %135, !dbg !2570

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2558, metadata !DIExpression()), !dbg !2561
  %136 = load i8*, i8** %9, align 8, !dbg !2564
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2564
  store i8* %137, i8** %9, align 8, !dbg !2564
  %138 = bitcast i8* %136 to i8**, !dbg !2564
  %139 = load i8*, i8** %138, align 8, !dbg !2564
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2567
  store i8* %139, i8** %140, align 8, !dbg !2568, !tbaa !596
  %141 = icmp eq i8* %139, null, !dbg !2569
  %142 = select i1 %141, i64 9, i64 10, !dbg !2570
  br label %30, !dbg !2570
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !2574 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2578, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8* %1, metadata !2579, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8* %2, metadata !2580, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8* %3, metadata !2581, metadata !DIExpression()), !dbg !2587
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2588
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #24, !dbg !2588
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2582, metadata !DIExpression()), !dbg !2589
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2590
  call void @llvm.va_start(i8* nonnull %6), !dbg !2590
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2591
  call void @llvm.va_end(i8* nonnull %6), !dbg !2592
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #24, !dbg !2593
  ret void, !dbg !2593
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !2594 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2595, !tbaa !596
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.76, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2595
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.91, i64 0, i64 0), i32 5) #24, !dbg !2596
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.92, i64 0, i64 0)) #24, !dbg !2596
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.93, i64 0, i64 0), i32 5) #24, !dbg !2597
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.94, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.95, i64 0, i64 0)) #24, !dbg !2597
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.96, i64 0, i64 0), i32 5) #24, !dbg !2598
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.97, i64 0, i64 0)) #24, !dbg !2598
  ret void, !dbg !2599
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #21 !dbg !2600 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2604, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i64 %1, metadata !2605, metadata !DIExpression()), !dbg !2606
  %3 = udiv i64 9223372036854775807, %1, !dbg !2607
  %4 = icmp ult i64 %3, %0, !dbg !2607
  br i1 %4, label %5, label %6, !dbg !2609

5:                                                ; preds = %2
  tail call void @xalloc_die() #26, !dbg !2610
  unreachable, !dbg !2610

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2611
  call void @llvm.dbg.value(metadata i64 %7, metadata !2612, metadata !DIExpression()) #24, !dbg !2618
  %8 = tail call noalias i8* @malloc(i64 %7) #24, !dbg !2620
  call void @llvm.dbg.value(metadata i8* %8, metadata !2617, metadata !DIExpression()) #24, !dbg !2618
  %9 = icmp eq i8* %8, null, !dbg !2621
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !2623
  br i1 %11, label %12, label %13, !dbg !2623

12:                                               ; preds = %6
  tail call void @xalloc_die() #26, !dbg !2624
  unreachable, !dbg !2624

13:                                               ; preds = %6
  ret i8* %8, !dbg !2625
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !2613 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2612, metadata !DIExpression()), !dbg !2626
  %2 = tail call noalias i8* @malloc(i64 %0) #24, !dbg !2627
  call void @llvm.dbg.value(metadata i8* %2, metadata !2617, metadata !DIExpression()), !dbg !2626
  %3 = icmp eq i8* %2, null, !dbg !2628
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2629
  br i1 %5, label %6, label %7, !dbg !2629

6:                                                ; preds = %1
  tail call void @xalloc_die() #26, !dbg !2630
  unreachable, !dbg !2630

7:                                                ; preds = %1
  ret i8* %2, !dbg !2631
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #21 !dbg !2632 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2636, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i64 %1, metadata !2637, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i64 %2, metadata !2638, metadata !DIExpression()), !dbg !2639
  %4 = udiv i64 9223372036854775807, %2, !dbg !2640
  %5 = icmp ult i64 %4, %1, !dbg !2640
  br i1 %5, label %6, label %7, !dbg !2642

6:                                                ; preds = %3
  tail call void @xalloc_die() #26, !dbg !2643
  unreachable, !dbg !2643

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2644
  call void @llvm.dbg.value(metadata i8* %0, metadata !2645, metadata !DIExpression()) #24, !dbg !2651
  call void @llvm.dbg.value(metadata i64 %8, metadata !2650, metadata !DIExpression()) #24, !dbg !2651
  %9 = icmp eq i64 %8, 0, !dbg !2653
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !2655
  br i1 %11, label %12, label %13, !dbg !2655

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #24, !dbg !2656
  br label %19, !dbg !2658

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #24, !dbg !2659
  call void @llvm.dbg.value(metadata i8* %14, metadata !2645, metadata !DIExpression()) #24, !dbg !2651
  %15 = icmp eq i8* %14, null, !dbg !2660
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !2662
  br i1 %17, label %18, label %19, !dbg !2662

18:                                               ; preds = %13
  tail call void @xalloc_die() #26, !dbg !2663
  unreachable, !dbg !2663

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2651
  ret i8* %20, !dbg !2664
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2646 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2645, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i64 %1, metadata !2650, metadata !DIExpression()), !dbg !2665
  %3 = icmp eq i64 %1, 0, !dbg !2666
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !2667
  br i1 %5, label %6, label %7, !dbg !2667

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #24, !dbg !2668
  br label %13, !dbg !2669

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #24, !dbg !2670
  call void @llvm.dbg.value(metadata i8* %8, metadata !2645, metadata !DIExpression()), !dbg !2665
  %9 = icmp eq i8* %8, null, !dbg !2671
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !2672
  br i1 %11, label %12, label %13, !dbg !2672

12:                                               ; preds = %7
  tail call void @xalloc_die() #26, !dbg !2673
  unreachable, !dbg !2673

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2665
  ret i8* %14, !dbg !2674
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #21 !dbg !159 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !164, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64* %1, metadata !165, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %2, metadata !166, metadata !DIExpression()), !dbg !2675
  %4 = load i64, i64* %1, align 8, !dbg !2676, !tbaa !1887
  call void @llvm.dbg.value(metadata i64 %4, metadata !167, metadata !DIExpression()), !dbg !2675
  %5 = icmp eq i8* %0, null, !dbg !2677
  br i1 %5, label %6, label %20, !dbg !2679

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2680
  br i1 %7, label %8, label %13, !dbg !2683

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2684
  call void @llvm.dbg.value(metadata i64 %9, metadata !167, metadata !DIExpression()), !dbg !2675
  %10 = icmp ugt i64 %2, 128, !dbg !2686
  %11 = zext i1 %10 to i64, !dbg !2686
  %12 = add nuw nsw i64 %9, %11, !dbg !2687
  call void @llvm.dbg.value(metadata i64 %12, metadata !167, metadata !DIExpression()), !dbg !2675
  br label %13, !dbg !2688

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2675
  call void @llvm.dbg.value(metadata i64 %14, metadata !167, metadata !DIExpression()), !dbg !2675
  %15 = udiv i64 9223372036854775807, %2, !dbg !2689
  %16 = icmp ult i64 %15, %14, !dbg !2689
  br i1 %16, label %19, label %17, !dbg !2691

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !167, metadata !DIExpression()), !dbg !2675
  store i64 %14, i64* %1, align 8, !dbg !2692, !tbaa !1887
  %18 = mul i64 %14, %2, !dbg !2693
  call void @llvm.dbg.value(metadata i8* %0, metadata !2645, metadata !DIExpression()) #24, !dbg !2694
  call void @llvm.dbg.value(metadata i64 %28, metadata !2650, metadata !DIExpression()) #24, !dbg !2694
  br label %31, !dbg !2696

19:                                               ; preds = %13
  tail call void @xalloc_die() #26, !dbg !2697
  unreachable, !dbg !2697

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !2698
  %22 = icmp ugt i64 %21, %4, !dbg !2701
  br i1 %22, label %24, label %23, !dbg !2702

23:                                               ; preds = %20
  tail call void @xalloc_die() #26, !dbg !2703
  unreachable, !dbg !2703

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !2704
  %26 = add nuw i64 %4, 1, !dbg !2705
  %27 = add i64 %26, %25, !dbg !2706
  call void @llvm.dbg.value(metadata i64 %27, metadata !167, metadata !DIExpression()), !dbg !2675
  store i64 %27, i64* %1, align 8, !dbg !2692, !tbaa !1887
  %28 = mul i64 %27, %2, !dbg !2693
  call void @llvm.dbg.value(metadata i8* %0, metadata !2645, metadata !DIExpression()) #24, !dbg !2694
  call void @llvm.dbg.value(metadata i64 %28, metadata !2650, metadata !DIExpression()) #24, !dbg !2694
  %29 = icmp eq i64 %28, 0, !dbg !2707
  br i1 %29, label %30, label %31, !dbg !2696

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #24, !dbg !2708
  br label %38, !dbg !2709

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #24, !dbg !2710
  call void @llvm.dbg.value(metadata i8* %33, metadata !2645, metadata !DIExpression()) #24, !dbg !2694
  %34 = icmp eq i8* %33, null, !dbg !2711
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !2712
  br i1 %36, label %37, label %38, !dbg !2712

37:                                               ; preds = %31
  tail call void @xalloc_die() #26, !dbg !2713
  unreachable, !dbg !2713

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !2694
  ret i8* %39, !dbg !2714
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #21 !dbg !2715 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2717, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i64 %0, metadata !2612, metadata !DIExpression()) #24, !dbg !2719
  %2 = tail call noalias i8* @malloc(i64 %0) #24, !dbg !2721
  call void @llvm.dbg.value(metadata i8* %2, metadata !2617, metadata !DIExpression()) #24, !dbg !2719
  %3 = icmp eq i8* %2, null, !dbg !2722
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2723
  br i1 %5, label %6, label %7, !dbg !2723

6:                                                ; preds = %1
  tail call void @xalloc_die() #26, !dbg !2724
  unreachable, !dbg !2724

7:                                                ; preds = %1
  ret i8* %2, !dbg !2725
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !2726 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2730, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i64* %1, metadata !2731, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i8* %0, metadata !164, metadata !DIExpression()) #24, !dbg !2733
  call void @llvm.dbg.value(metadata i64* %1, metadata !165, metadata !DIExpression()) #24, !dbg !2733
  call void @llvm.dbg.value(metadata i64 1, metadata !166, metadata !DIExpression()) #24, !dbg !2733
  %3 = load i64, i64* %1, align 8, !dbg !2735, !tbaa !1887
  call void @llvm.dbg.value(metadata i64 %3, metadata !167, metadata !DIExpression()) #24, !dbg !2733
  %4 = icmp eq i8* %0, null, !dbg !2736
  br i1 %4, label %5, label %10, !dbg !2737

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2738
  br i1 %6, label %17, label %7, !dbg !2739

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !167, metadata !DIExpression()) #24, !dbg !2733
  %8 = icmp slt i64 %3, 0, !dbg !2740
  br i1 %8, label %9, label %17, !dbg !2741

9:                                                ; preds = %7
  tail call void @xalloc_die() #26, !dbg !2742
  unreachable, !dbg !2742

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !2743
  br i1 %11, label %13, label %12, !dbg !2744

12:                                               ; preds = %10
  tail call void @xalloc_die() #26, !dbg !2745
  unreachable, !dbg !2745

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !2746
  %15 = add nuw nsw i64 %3, 1, !dbg !2747
  %16 = add nuw nsw i64 %15, %14, !dbg !2748
  call void @llvm.dbg.value(metadata i64 %16, metadata !167, metadata !DIExpression()) #24, !dbg !2733
  call void @llvm.dbg.value(metadata i8* %0, metadata !2645, metadata !DIExpression()) #24, !dbg !2749
  call void @llvm.dbg.value(metadata i64 %16, metadata !2650, metadata !DIExpression()) #24, !dbg !2749
  br label %17, !dbg !2751

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !2752
  store i64 %18, i64* %1, align 8, !dbg !2752, !tbaa !1887
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #24, !dbg !2753
  call void @llvm.dbg.value(metadata i8* %19, metadata !2645, metadata !DIExpression()) #24, !dbg !2749
  %20 = icmp eq i8* %19, null, !dbg !2754
  br i1 %20, label %21, label %22, !dbg !2755

21:                                               ; preds = %17
  tail call void @xalloc_die() #26, !dbg !2756
  unreachable, !dbg !2756

22:                                               ; preds = %17
  ret i8* %19, !dbg !2757
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !2758 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2760, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %0, metadata !2762, metadata !DIExpression()) #24, !dbg !2767
  call void @llvm.dbg.value(metadata i64 1, metadata !2765, metadata !DIExpression()) #24, !dbg !2767
  %2 = icmp slt i64 %0, 0, !dbg !2769
  br i1 %2, label %6, label %3, !dbg !2771

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #24, !dbg !2772
  call void @llvm.dbg.value(metadata i8* %4, metadata !2766, metadata !DIExpression()) #24, !dbg !2767
  %5 = icmp eq i8* %4, null, !dbg !2773
  br i1 %5, label %6, label %7, !dbg !2774

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #26, !dbg !2775
  unreachable, !dbg !2775

7:                                                ; preds = %3
  ret i8* %4, !dbg !2776
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !2763 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2762, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i64 %1, metadata !2765, metadata !DIExpression()), !dbg !2777
  %3 = udiv i64 9223372036854775807, %1, !dbg !2778
  %4 = icmp ult i64 %3, %0, !dbg !2778
  br i1 %4, label %8, label %5, !dbg !2779

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #24, !dbg !2780
  call void @llvm.dbg.value(metadata i8* %6, metadata !2766, metadata !DIExpression()), !dbg !2777
  %7 = icmp eq i8* %6, null, !dbg !2781
  br i1 %7, label %8, label %9, !dbg !2782

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #26, !dbg !2783
  unreachable, !dbg !2783

9:                                                ; preds = %5
  ret i8* %6, !dbg !2784
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2785 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2791, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i64 %1, metadata !2792, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i64 %1, metadata !2612, metadata !DIExpression()) #24, !dbg !2794
  %3 = tail call noalias i8* @malloc(i64 %1) #24, !dbg !2796
  call void @llvm.dbg.value(metadata i8* %3, metadata !2617, metadata !DIExpression()) #24, !dbg !2794
  %4 = icmp eq i8* %3, null, !dbg !2797
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !2798
  br i1 %6, label %7, label %8, !dbg !2798

7:                                                ; preds = %2
  tail call void @xalloc_die() #26, !dbg !2799
  unreachable, !dbg !2799

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2800, metadata !DIExpression()) #24, !dbg !2809
  call void @llvm.dbg.value(metadata i8* %0, metadata !2807, metadata !DIExpression()) #24, !dbg !2809
  call void @llvm.dbg.value(metadata i64 %1, metadata !2808, metadata !DIExpression()) #24, !dbg !2809
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #24, !dbg !2811
  ret i8* %3, !dbg !2812
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !2813 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2815, metadata !DIExpression()), !dbg !2816
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #25, !dbg !2817
  %3 = add i64 %2, 1, !dbg !2818
  call void @llvm.dbg.value(metadata i8* %0, metadata !2791, metadata !DIExpression()) #24, !dbg !2819
  call void @llvm.dbg.value(metadata i64 %3, metadata !2792, metadata !DIExpression()) #24, !dbg !2819
  call void @llvm.dbg.value(metadata i64 %3, metadata !2612, metadata !DIExpression()) #24, !dbg !2821
  %4 = tail call noalias i8* @malloc(i64 %3) #24, !dbg !2823
  call void @llvm.dbg.value(metadata i8* %4, metadata !2617, metadata !DIExpression()) #24, !dbg !2821
  %5 = icmp eq i8* %4, null, !dbg !2824
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !2825
  br i1 %7, label %8, label %9, !dbg !2825

8:                                                ; preds = %1
  tail call void @xalloc_die() #26, !dbg !2826
  unreachable, !dbg !2826

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !2800, metadata !DIExpression()) #24, !dbg !2827
  call void @llvm.dbg.value(metadata i8* %0, metadata !2807, metadata !DIExpression()) #24, !dbg !2827
  call void @llvm.dbg.value(metadata i64 %3, metadata !2808, metadata !DIExpression()) #24, !dbg !2827
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #24, !dbg !2829
  ret i8* %4, !dbg !2830
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !2831 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !2832, !tbaa !740
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.108, i64 0, i64 0), i32 5) #24, !dbg !2833
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i64 0, i64 0), i8* %2) #24, !dbg !2834
  tail call void @abort() #26, !dbg !2835
  unreachable, !dbg !2835
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #23 !dbg !2836 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2838, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %1, metadata !2839, metadata !DIExpression()), !dbg !2844
  %3 = icmp eq i64 %0, 0, !dbg !2845
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !2846
  br i1 %5, label %11, label %6, !dbg !2846

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !2841, metadata !DIExpression()), !dbg !2847
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !2848
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !2848
  br i1 %8, label %9, label %11, !dbg !2850

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #28, !dbg !2851
  store i32 12, i32* %10, align 4, !dbg !2853, !tbaa !740
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !2838, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %12, metadata !2839, metadata !DIExpression()), !dbg !2844
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #24, !dbg !2854
  call void @llvm.dbg.value(metadata i8* %14, metadata !2840, metadata !DIExpression()), !dbg !2844
  br label %15, !dbg !2855

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !2844
  ret i8* %16, !dbg !2856
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !2857 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !2873, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i8* %1, metadata !2874, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i64 %2, metadata !2875, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !2876, metadata !DIExpression()), !dbg !2882
  %6 = bitcast i32* %5 to i8*, !dbg !2883
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #24, !dbg !2883
  %7 = icmp eq i32* %0, null, !dbg !2884
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !2886
  call void @llvm.dbg.value(metadata i32* %8, metadata !2873, metadata !DIExpression()), !dbg !2882
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #24, !dbg !2887
  call void @llvm.dbg.value(metadata i64 %9, metadata !2877, metadata !DIExpression()), !dbg !2882
  %10 = icmp ugt i64 %9, -3, !dbg !2888
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !2889
  br i1 %12, label %13, label %18, !dbg !2889

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #24, !dbg !2890
  br i1 %14, label %18, label %15, !dbg !2891

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !2892, !tbaa !1187
  call void @llvm.dbg.value(metadata i8 %16, metadata !2879, metadata !DIExpression()), !dbg !2893
  %17 = zext i8 %16 to i32, !dbg !2894
  store i32 %17, i32* %8, align 4, !dbg !2895, !tbaa !740
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !2882
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #24, !dbg !2896
  ret i64 %19, !dbg !2896
}

; Function Attrs: nounwind
declare !dbg !2897 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !2901 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2939, metadata !DIExpression()), !dbg !2944
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #24, !dbg !2945
  call void @llvm.dbg.value(metadata i1 undef, metadata !2940, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2944
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2946, metadata !DIExpression()), !dbg !2950
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !2952
  %4 = load i32, i32* %3, align 8, !dbg !2952, !tbaa !2953
  %5 = and i32 %4, 32, !dbg !2955
  %6 = icmp eq i32 %5, 0, !dbg !2955
  call void @llvm.dbg.value(metadata i1 %6, metadata !2942, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2944
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #24, !dbg !2956
  %8 = icmp eq i32 %7, 0, !dbg !2957
  call void @llvm.dbg.value(metadata i1 %8, metadata !2943, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2944
  br i1 %6, label %9, label %19, !dbg !2958

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !2960
  call void @llvm.dbg.value(metadata i1 %10, metadata !2940, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2944
  %11 = or i1 %10, %8, !dbg !2961
  %12 = xor i1 %8, true, !dbg !2961
  %13 = sext i1 %12 to i32, !dbg !2961
  br i1 %11, label %22, label %14, !dbg !2961

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #28, !dbg !2962
  %16 = load i32, i32* %15, align 4, !dbg !2962, !tbaa !740
  %17 = icmp ne i32 %16, 9, !dbg !2963
  %18 = sext i1 %17 to i32, !dbg !2964
  br label %22, !dbg !2964

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !2965

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #28, !dbg !2967
  store i32 0, i32* %21, align 4, !dbg !2969, !tbaa !740
  br label %22, !dbg !2967

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !2944
  ret i32 %23, !dbg !2970
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !2971 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2975, metadata !DIExpression()), !dbg !2980
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !2981
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #24, !dbg !2981
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !2976, metadata !DIExpression()), !dbg !2982
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #24, !dbg !2983
  %5 = icmp eq i32 %4, 0, !dbg !2983
  br i1 %5, label %6, label %13, !dbg !2985

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !2986
  %8 = load i16, i16* %7, align 16, !dbg !2986
  %9 = icmp eq i16 %8, 67, !dbg !2986
  br i1 %9, label %13, label %10, !dbg !2987

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.118, i64 0, i64 0), i64 6), !dbg !2988
  %12 = icmp ne i32 %11, 0, !dbg !2989
  br label %13, !dbg !2987

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !2980
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #24, !dbg !2990
  ret i1 %14, !dbg !2990
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !2991 {
  %1 = tail call i8* @nl_langinfo(i32 14) #24, !dbg !2996
  call void @llvm.dbg.value(metadata i8* %1, metadata !2995, metadata !DIExpression()), !dbg !2997
  %2 = icmp eq i8* %1, null, !dbg !2998
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.121, i64 0, i64 0), i8* %1, !dbg !3000
  call void @llvm.dbg.value(metadata i8* %3, metadata !2995, metadata !DIExpression()), !dbg !2997
  %4 = load i8, i8* %3, align 1, !dbg !3001, !tbaa !1187
  %5 = icmp eq i8 %4, 0, !dbg !3005
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.122, i64 0, i64 0), i8* %3, !dbg !3006
  call void @llvm.dbg.value(metadata i8* %6, metadata !2995, metadata !DIExpression()), !dbg !2997
  ret i8* %6, !dbg !3007
}

; Function Attrs: nounwind
declare !dbg !3008 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3011 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3015, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i8* %1, metadata !3016, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i64 %2, metadata !3017, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i32 %0, metadata !3019, metadata !DIExpression()) #24, !dbg !3028
  call void @llvm.dbg.value(metadata i8* %1, metadata !3022, metadata !DIExpression()) #24, !dbg !3028
  call void @llvm.dbg.value(metadata i64 %2, metadata !3023, metadata !DIExpression()) #24, !dbg !3028
  call void @llvm.dbg.value(metadata i32 %0, metadata !3030, metadata !DIExpression()) #24, !dbg !3036
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #24, !dbg !3038
  call void @llvm.dbg.value(metadata i8* %4, metadata !3035, metadata !DIExpression()) #24, !dbg !3036
  call void @llvm.dbg.value(metadata i8* %4, metadata !3024, metadata !DIExpression()) #24, !dbg !3028
  %5 = icmp eq i8* %4, null, !dbg !3039
  br i1 %5, label %6, label %9, !dbg !3040

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3041
  br i1 %7, label %19, label %8, !dbg !3044

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3045, !tbaa !1187
  br label %19, !dbg !3046

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #25, !dbg !3047
  call void @llvm.dbg.value(metadata i64 %10, metadata !3025, metadata !DIExpression()) #24, !dbg !3048
  %11 = icmp ult i64 %10, %2, !dbg !3049
  br i1 %11, label %12, label %14, !dbg !3051

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3052
  call void @llvm.dbg.value(metadata i8* %1, metadata !3054, metadata !DIExpression()) #24, !dbg !3059
  call void @llvm.dbg.value(metadata i8* %4, metadata !3057, metadata !DIExpression()) #24, !dbg !3059
  call void @llvm.dbg.value(metadata i64 %13, metadata !3058, metadata !DIExpression()) #24, !dbg !3059
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #24, !dbg !3061
  br label %19, !dbg !3062

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3063
  br i1 %15, label %19, label %16, !dbg !3066

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3067
  call void @llvm.dbg.value(metadata i8* %1, metadata !3054, metadata !DIExpression()) #24, !dbg !3069
  call void @llvm.dbg.value(metadata i8* %4, metadata !3057, metadata !DIExpression()) #24, !dbg !3069
  call void @llvm.dbg.value(metadata i64 %17, metadata !3058, metadata !DIExpression()) #24, !dbg !3069
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #24, !dbg !3071
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3072
  store i8 0, i8* %18, align 1, !dbg !3073, !tbaa !1187
  br label %19, !dbg !3074

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3075
  ret i32 %20, !dbg !3076
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3077 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3079, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i32 %0, metadata !3030, metadata !DIExpression()) #24, !dbg !3081
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #24, !dbg !3083
  call void @llvm.dbg.value(metadata i8* %2, metadata !3035, metadata !DIExpression()) #24, !dbg !3081
  ret i8* %2, !dbg !3084
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3085 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3123, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i32 0, metadata !3124, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i32 0, metadata !3126, metadata !DIExpression()), !dbg !3127
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !3128
  call void @llvm.dbg.value(metadata i32 %2, metadata !3125, metadata !DIExpression()), !dbg !3127
  %3 = icmp slt i32 %2, 0, !dbg !3129
  br i1 %3, label %4, label %6, !dbg !3131

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3132
  br label %24, !dbg !3133

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #24, !dbg !3134
  %8 = icmp eq i32 %7, 0, !dbg !3134
  br i1 %8, label %13, label %9, !dbg !3136

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !3137
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #24, !dbg !3138
  %12 = icmp eq i64 %11, -1, !dbg !3139
  br i1 %12, label %16, label %13, !dbg !3140

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #24, !dbg !3141
  %15 = icmp eq i32 %14, 0, !dbg !3141
  br i1 %15, label %16, label %18, !dbg !3142

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3124, metadata !DIExpression()), !dbg !3127
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3143
  call void @llvm.dbg.value(metadata i32 %21, metadata !3126, metadata !DIExpression()), !dbg !3127
  br label %24, !dbg !3144

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #28, !dbg !3145
  %20 = load i32, i32* %19, align 4, !dbg !3145, !tbaa !740
  call void @llvm.dbg.value(metadata i32 %20, metadata !3124, metadata !DIExpression()), !dbg !3127
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3143
  call void @llvm.dbg.value(metadata i32 %21, metadata !3126, metadata !DIExpression()), !dbg !3127
  %22 = icmp eq i32 %20, 0, !dbg !3146
  br i1 %22, label %24, label %23, !dbg !3144

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3148, !tbaa !740
  call void @llvm.dbg.value(metadata i32 -1, metadata !3126, metadata !DIExpression()), !dbg !3127
  br label %24, !dbg !3150

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3127
  ret i32 %25, !dbg !3151
}

; Function Attrs: nofree nounwind
declare !dbg !3152 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3155 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3156 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3159 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3197, metadata !DIExpression()), !dbg !3198
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3199
  br i1 %2, label %6, label %3, !dbg !3201

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #24, !dbg !3202
  %5 = icmp eq i32 %4, 0, !dbg !3202
  br i1 %5, label %6, label %8, !dbg !3203

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3204
  br label %17, !dbg !3205

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3206, metadata !DIExpression()) #24, !dbg !3211
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3213
  %10 = load i32, i32* %9, align 8, !dbg !3213, !tbaa !2953
  %11 = and i32 %10, 256, !dbg !3215
  %12 = icmp eq i32 %11, 0, !dbg !3215
  br i1 %12, label %15, label %13, !dbg !3216

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #24, !dbg !3217
  br label %15, !dbg !3217

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3218
  br label %17, !dbg !3219

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3198
  ret i32 %18, !dbg !3220
}

; Function Attrs: nofree nounwind
declare !dbg !3221 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3224 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3263, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata i64 %1, metadata !3264, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata i32 %2, metadata !3265, metadata !DIExpression()), !dbg !3269
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3270
  %5 = load i8*, i8** %4, align 8, !dbg !3270, !tbaa !3271
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3272
  %7 = load i8*, i8** %6, align 8, !dbg !3272, !tbaa !3273
  %8 = icmp eq i8* %5, %7, !dbg !3274
  br i1 %8, label %9, label %28, !dbg !3275

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3276
  %11 = load i8*, i8** %10, align 8, !dbg !3276, !tbaa !3277
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3278
  %13 = load i8*, i8** %12, align 8, !dbg !3278, !tbaa !3279
  %14 = icmp eq i8* %11, %13, !dbg !3280
  br i1 %14, label %15, label %28, !dbg !3281

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3282
  %17 = load i8*, i8** %16, align 8, !dbg !3282, !tbaa !3283
  %18 = icmp eq i8* %17, null, !dbg !3284
  br i1 %18, label %19, label %28, !dbg !3285

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !3286
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #24, !dbg !3287
  call void @llvm.dbg.value(metadata i64 %21, metadata !3266, metadata !DIExpression()), !dbg !3288
  %22 = icmp eq i64 %21, -1, !dbg !3289
  br i1 %22, label %30, label %23, !dbg !3291

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3292
  %25 = load i32, i32* %24, align 8, !dbg !3293, !tbaa !2953
  %26 = and i32 %25, -17, !dbg !3293
  store i32 %26, i32* %24, align 8, !dbg !3293, !tbaa !2953
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3294
  store i64 %21, i64* %27, align 8, !dbg !3295, !tbaa !3296
  br label %30, !dbg !3297

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3298
  br label %30, !dbg !3299

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3269
  ret i32 %31, !dbg !3300
}

; Function Attrs: nofree nounwind
declare !dbg !3301 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

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

!llvm.dbg.cu = !{!143, !2, !11, !19, !26, !43, !51, !147, !137, !154, !171, !173, !175, !178, !180, !182, !571, !573, !575, !577}
!llvm.ident = !{!579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579}
!llvm.module.flags = !{!580, !581, !582, !583, !584}

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
!143 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !145, retainedTypes: !146, splitDebugInlining: false, nameTableKind: None)
!144 = !DIFile(filename: "src/unlink.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!145 = !{!54}
!146 = !{!6, !46}
!147 = distinct !DICompileUnit(language: DW_LANG_C99, file: !148, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !149, retainedTypes: !153, splitDebugInlining: false, nameTableKind: None)
!148 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!149 = !{!150}
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !148, line: 40, baseType: !56, size: 32, elements: !151)
!151 = !{!152}
!152 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!153 = !{!46}
!154 = distinct !DICompileUnit(language: DW_LANG_C99, file: !155, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !156, retainedTypes: !170, splitDebugInlining: false, nameTableKind: None)
!155 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!156 = !{!157}
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !159, file: !158, line: 186, baseType: !56, size: 32, elements: !168)
!158 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!159 = distinct !DISubprogram(name: "x2nrealloc", scope: !158, file: !158, line: 174, type: !160, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !154, retainedNodes: !163)
!160 = !DISubroutineType(types: !161)
!161 = !{!46, !46, !162, !91}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!163 = !{!164, !165, !166, !167}
!164 = !DILocalVariable(name: "p", arg: 1, scope: !159, file: !158, line: 174, type: !46)
!165 = !DILocalVariable(name: "pn", arg: 2, scope: !159, file: !158, line: 174, type: !162)
!166 = !DILocalVariable(name: "s", arg: 3, scope: !159, file: !158, line: 174, type: !91)
!167 = !DILocalVariable(name: "n", scope: !159, file: !158, line: 176, type: !91)
!168 = !{!169}
!169 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!170 = !{!91, !47, !46}
!171 = distinct !DICompileUnit(language: DW_LANG_C99, file: !172, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!172 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!173 = distinct !DICompileUnit(language: DW_LANG_C99, file: !174, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !153, splitDebugInlining: false, nameTableKind: None)
!174 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!175 = distinct !DICompileUnit(language: DW_LANG_C99, file: !176, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !177, splitDebugInlining: false, nameTableKind: None)
!176 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!177 = !{!91}
!178 = distinct !DICompileUnit(language: DW_LANG_C99, file: !179, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!179 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!180 = distinct !DICompileUnit(language: DW_LANG_C99, file: !181, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!181 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!182 = distinct !DICompileUnit(language: DW_LANG_C99, file: !183, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !184, retainedTypes: !153, splitDebugInlining: false, nameTableKind: None)
!183 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!184 = !{!185}
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !186, line: 41, baseType: !56, size: 32, elements: !187)
!186 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!187 = !{!188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570}
!188 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!189 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!190 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!191 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!192 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!193 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!194 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!195 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!196 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!197 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!198 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!199 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!200 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!201 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!202 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!203 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!204 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!205 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!206 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!207 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!208 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!209 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!210 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!211 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!212 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!213 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!214 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!215 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!216 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!217 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!218 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!219 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!220 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!221 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!222 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!223 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!224 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!225 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!226 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!227 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!228 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!229 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!230 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!231 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!232 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!233 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!234 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!235 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!236 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!237 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!238 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!239 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!240 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!241 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!242 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!243 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!244 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!245 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!246 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!247 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!248 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!249 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!250 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!251 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!252 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!253 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!254 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!255 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!256 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!257 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!258 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!259 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!260 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!261 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!262 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!263 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!264 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!265 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!266 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!267 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!268 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!269 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!270 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!271 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!272 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!273 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!274 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!296 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!299 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!300 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!301 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!302 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!303 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!304 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!305 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!306 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!307 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!308 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!309 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!310 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!383 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!456 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!457 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!458 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!459 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!460 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!461 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!462 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!463 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!464 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!465 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!466 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!467 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!468 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!469 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!470 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!472 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!473 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!474 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!475 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!476 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!477 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!503 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!504 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!505 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!506 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!507 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!512 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!513 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!514 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!515 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!571 = distinct !DICompileUnit(language: DW_LANG_C99, file: !572, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !153, splitDebugInlining: false, nameTableKind: None)
!572 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!573 = distinct !DICompileUnit(language: DW_LANG_C99, file: !574, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!574 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!575 = distinct !DICompileUnit(language: DW_LANG_C99, file: !576, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !153, splitDebugInlining: false, nameTableKind: None)
!576 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!577 = distinct !DICompileUnit(language: DW_LANG_C99, file: !578, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !153, splitDebugInlining: false, nameTableKind: None)
!578 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!579 = !{!"clang version 12.0.1"}
!580 = !{i32 7, !"Dwarf Version", i32 4}
!581 = !{i32 2, !"Debug Info Version", i32 3}
!582 = !{i32 1, !"wchar_size", i32 4}
!583 = !{i32 7, !"PIC Level", i32 2}
!584 = !{i32 7, !"PIE Level", i32 2}
!585 = distinct !DISubprogram(name: "usage", scope: !144, file: !144, line: 39, type: !586, scopeLine: 40, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !588)
!586 = !DISubroutineType(types: !587)
!587 = !{null, !23}
!588 = !{!589}
!589 = !DILocalVariable(name: "status", arg: 1, scope: !585, file: !144, line: 39, type: !23)
!590 = !DILocation(line: 0, scope: !585)
!591 = !DILocation(line: 41, column: 14, scope: !592)
!592 = distinct !DILexicalBlock(scope: !585, file: !144, line: 41, column: 7)
!593 = !DILocation(line: 41, column: 7, scope: !585)
!594 = !DILocation(line: 42, column: 5, scope: !595)
!595 = distinct !DILexicalBlock(scope: !592, file: !144, line: 42, column: 5)
!596 = !{!597, !597, i64 0}
!597 = !{!"any pointer", !598, i64 0}
!598 = !{!"omnipotent char", !599, i64 0}
!599 = !{!"Simple C/C++ TBAA"}
!600 = !DILocation(line: 45, column: 7, scope: !601)
!601 = distinct !DILexicalBlock(scope: !592, file: !144, line: 44, column: 5)
!602 = !DILocation(line: 48, column: 7, scope: !601)
!603 = !DILocation(line: 50, column: 7, scope: !601)
!604 = !DILocation(line: 51, column: 7, scope: !601)
!605 = !DILocalVariable(name: "program", arg: 1, scope: !606, file: !607, line: 634, type: !6)
!606 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !607, file: !607, line: 634, type: !608, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !610)
!607 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!608 = !DISubroutineType(types: !609)
!609 = !{null, !6}
!610 = !{!605, !611, !620, !621, !623}
!611 = !DILocalVariable(name: "infomap", scope: !606, file: !607, line: 636, type: !612)
!612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !613, size: 896, elements: !618)
!613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !614)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !606, file: !607, line: 636, size: 128, elements: !615)
!615 = !{!616, !617}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !614, file: !607, line: 636, baseType: !6, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !614, file: !607, line: 636, baseType: !6, size: 64, offset: 64)
!618 = !{!619}
!619 = !DISubrange(count: 7)
!620 = !DILocalVariable(name: "node", scope: !606, file: !607, line: 646, type: !6)
!621 = !DILocalVariable(name: "map_prog", scope: !606, file: !607, line: 647, type: !622)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!623 = !DILocalVariable(name: "lc_messages", scope: !606, file: !607, line: 659, type: !6)
!624 = !DILocation(line: 0, scope: !606, inlinedAt: !625)
!625 = distinct !DILocation(line: 52, column: 7, scope: !601)
!626 = !DILocation(line: 636, column: 3, scope: !606, inlinedAt: !625)
!627 = !DILocation(line: 636, column: 67, scope: !606, inlinedAt: !625)
!628 = !DILocation(line: 647, column: 36, scope: !606, inlinedAt: !625)
!629 = !DILocation(line: 649, column: 3, scope: !606, inlinedAt: !625)
!630 = !DILocation(line: 649, column: 33, scope: !606, inlinedAt: !625)
!631 = !DILocation(line: 650, column: 13, scope: !606, inlinedAt: !625)
!632 = !DILocation(line: 649, column: 20, scope: !606, inlinedAt: !625)
!633 = !{!634, !597, i64 0}
!634 = !{!"infomap", !597, i64 0, !597, i64 8}
!635 = !DILocation(line: 649, column: 10, scope: !606, inlinedAt: !625)
!636 = !DILocation(line: 649, column: 28, scope: !606, inlinedAt: !625)
!637 = distinct !{!637, !629, !631, !638}
!638 = !{!"llvm.loop.mustprogress"}
!639 = !DILocation(line: 652, column: 17, scope: !640, inlinedAt: !625)
!640 = distinct !DILexicalBlock(scope: !606, file: !607, line: 652, column: 7)
!641 = !{!634, !597, i64 8}
!642 = !DILocation(line: 652, column: 7, scope: !640, inlinedAt: !625)
!643 = !DILocation(line: 652, column: 7, scope: !606, inlinedAt: !625)
!644 = !DILocation(line: 655, column: 3, scope: !606, inlinedAt: !625)
!645 = !DILocation(line: 659, column: 29, scope: !606, inlinedAt: !625)
!646 = !DILocation(line: 660, column: 7, scope: !647, inlinedAt: !625)
!647 = distinct !DILexicalBlock(scope: !606, file: !607, line: 660, column: 7)
!648 = !DILocation(line: 660, column: 19, scope: !647, inlinedAt: !625)
!649 = !DILocation(line: 660, column: 22, scope: !647, inlinedAt: !625)
!650 = !DILocation(line: 660, column: 7, scope: !606, inlinedAt: !625)
!651 = !DILocation(line: 666, column: 7, scope: !652, inlinedAt: !625)
!652 = distinct !DILexicalBlock(scope: !647, file: !607, line: 661, column: 5)
!653 = !DILocation(line: 668, column: 5, scope: !652, inlinedAt: !625)
!654 = !DILocation(line: 669, column: 3, scope: !606, inlinedAt: !625)
!655 = !DILocation(line: 671, column: 3, scope: !606, inlinedAt: !625)
!656 = !DILocation(line: 673, column: 1, scope: !606, inlinedAt: !625)
!657 = !DILocation(line: 54, column: 3, scope: !585)
!658 = !DISubprogram(name: "dcgettext", scope: !659, file: !659, line: 51, type: !660, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!659 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!660 = !DISubroutineType(types: !661)
!661 = !{!47, !6, !6, !23}
!662 = !DISubprogram(name: "fputs_unlocked", scope: !663, file: !663, line: 667, type: !664, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!663 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!664 = !DISubroutineType(types: !665)
!665 = !{!23, !6, !666}
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !668, line: 49, size: 1728, elements: !669)
!668 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!669 = !{!670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !685, !686, !687, !688, !692, !693, !695, !699, !702, !704, !707, !710, !711, !712, !713, !714}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !667, file: !668, line: 51, baseType: !23, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !667, file: !668, line: 54, baseType: !47, size: 64, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !667, file: !668, line: 55, baseType: !47, size: 64, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !667, file: !668, line: 56, baseType: !47, size: 64, offset: 192)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !667, file: !668, line: 57, baseType: !47, size: 64, offset: 256)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !667, file: !668, line: 58, baseType: !47, size: 64, offset: 320)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !667, file: !668, line: 59, baseType: !47, size: 64, offset: 384)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !667, file: !668, line: 60, baseType: !47, size: 64, offset: 448)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !667, file: !668, line: 61, baseType: !47, size: 64, offset: 512)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !667, file: !668, line: 64, baseType: !47, size: 64, offset: 576)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !667, file: !668, line: 65, baseType: !47, size: 64, offset: 640)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !667, file: !668, line: 66, baseType: !47, size: 64, offset: 704)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !667, file: !668, line: 68, baseType: !683, size: 64, offset: 768)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !668, line: 36, flags: DIFlagFwdDecl)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !667, file: !668, line: 70, baseType: !666, size: 64, offset: 832)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !667, file: !668, line: 72, baseType: !23, size: 32, offset: 896)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !667, file: !668, line: 73, baseType: !23, size: 32, offset: 928)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !667, file: !668, line: 74, baseType: !689, size: 64, offset: 960)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !690, line: 152, baseType: !691)
!690 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!691 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !667, file: !668, line: 77, baseType: !90, size: 16, offset: 1024)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !667, file: !668, line: 78, baseType: !694, size: 8, offset: 1040)
!694 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !667, file: !668, line: 79, baseType: !696, size: 8, offset: 1048)
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !697)
!697 = !{!698}
!698 = !DISubrange(count: 1)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !667, file: !668, line: 81, baseType: !700, size: 64, offset: 1088)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !668, line: 43, baseType: null)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !667, file: !668, line: 89, baseType: !703, size: 64, offset: 1152)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !690, line: 153, baseType: !691)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !667, file: !668, line: 91, baseType: !705, size: 64, offset: 1216)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !668, line: 37, flags: DIFlagFwdDecl)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !667, file: !668, line: 92, baseType: !708, size: 64, offset: 1280)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !668, line: 38, flags: DIFlagFwdDecl)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !667, file: !668, line: 93, baseType: !666, size: 64, offset: 1344)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !667, file: !668, line: 94, baseType: !46, size: 64, offset: 1408)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !667, file: !668, line: 95, baseType: !91, size: 64, offset: 1472)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !667, file: !668, line: 96, baseType: !23, size: 32, offset: 1536)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !667, file: !668, line: 98, baseType: !715, size: 160, offset: 1568)
!715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !716)
!716 = !{!717}
!717 = !DISubrange(count: 20)
!718 = !DISubprogram(name: "setlocale", scope: !719, file: !719, line: 122, type: !720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!719 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!720 = !DISubroutineType(types: !721)
!721 = !{!47, !23, !6}
!722 = distinct !DISubprogram(name: "main", scope: !144, file: !144, line: 58, type: !723, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !726)
!723 = !DISubroutineType(types: !724)
!724 = !{!23, !23, !725}
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!726 = !{!727, !728}
!727 = !DILocalVariable(name: "argc", arg: 1, scope: !722, file: !144, line: 58, type: !23)
!728 = !DILocalVariable(name: "argv", arg: 2, scope: !722, file: !144, line: 58, type: !725)
!729 = !DILocation(line: 0, scope: !722)
!730 = !DILocation(line: 61, column: 21, scope: !722)
!731 = !DILocation(line: 61, column: 3, scope: !722)
!732 = !DILocation(line: 62, column: 3, scope: !722)
!733 = !DILocation(line: 63, column: 3, scope: !722)
!734 = !DILocation(line: 64, column: 3, scope: !722)
!735 = !DILocation(line: 66, column: 3, scope: !722)
!736 = !DILocation(line: 69, column: 36, scope: !722)
!737 = !DILocation(line: 68, column: 3, scope: !722)
!738 = !DILocation(line: 72, column: 14, scope: !739)
!739 = distinct !DILexicalBlock(scope: !722, file: !144, line: 72, column: 7)
!740 = !{!741, !741, i64 0}
!741 = !{!"int", !598, i64 0}
!742 = !DILocation(line: 72, column: 12, scope: !739)
!743 = !DILocation(line: 72, column: 7, scope: !722)
!744 = !DILocation(line: 74, column: 20, scope: !745)
!745 = distinct !DILexicalBlock(scope: !739, file: !144, line: 73, column: 5)
!746 = !DILocation(line: 74, column: 7, scope: !745)
!747 = !DILocation(line: 75, column: 7, scope: !745)
!748 = !DILocation(line: 72, column: 21, scope: !739)
!749 = !DILocation(line: 78, column: 18, scope: !750)
!750 = distinct !DILexicalBlock(scope: !722, file: !144, line: 78, column: 7)
!751 = !DILocation(line: 78, column: 7, scope: !722)
!752 = !DILocation(line: 80, column: 20, scope: !753)
!753 = distinct !DILexicalBlock(scope: !750, file: !144, line: 79, column: 5)
!754 = !DILocation(line: 80, column: 55, scope: !753)
!755 = !DILocation(line: 80, column: 62, scope: !753)
!756 = !DILocation(line: 80, column: 50, scope: !753)
!757 = !DILocation(line: 80, column: 43, scope: !753)
!758 = !DILocation(line: 80, column: 7, scope: !753)
!759 = !DILocation(line: 81, column: 7, scope: !753)
!760 = !DILocation(line: 84, column: 15, scope: !761)
!761 = distinct !DILexicalBlock(scope: !722, file: !144, line: 84, column: 7)
!762 = !DILocation(line: 84, column: 7, scope: !761)
!763 = !DILocation(line: 84, column: 29, scope: !761)
!764 = !DILocation(line: 84, column: 7, scope: !722)
!765 = !DILocation(line: 85, column: 5, scope: !761)
!766 = !DILocation(line: 87, column: 3, scope: !722)
!767 = !DISubprogram(name: "bindtextdomain", scope: !659, file: !659, line: 86, type: !768, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!768 = !DISubroutineType(types: !769)
!769 = !{!47, !6, !6}
!770 = !DISubprogram(name: "textdomain", scope: !659, file: !659, line: 82, type: !771, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!771 = !DISubroutineType(types: !772)
!772 = !{!47, !6}
!773 = !DISubprogram(name: "atexit", scope: !774, file: !774, line: 595, type: !775, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!774 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!775 = !DISubroutineType(types: !776)
!776 = !{!23, !777}
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{null}
!780 = !DISubprogram(name: "error", scope: !781, file: !781, line: 52, type: !782, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!781 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!782 = !DISubroutineType(types: !783)
!783 = !{null, !23, !23, !6, null}
!784 = !DISubprogram(name: "unlink", scope: !785, file: !785, line: 838, type: !786, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!785 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!786 = !DISubroutineType(types: !787)
!787 = !{!23, !6}
!788 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !12, file: !12, line: 51, type: !608, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !789)
!789 = !{!790}
!790 = !DILocalVariable(name: "file", arg: 1, scope: !788, file: !12, line: 51, type: !6)
!791 = !DILocation(line: 0, scope: !788)
!792 = !DILocation(line: 53, column: 13, scope: !788)
!793 = !DILocation(line: 54, column: 1, scope: !788)
!794 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !12, file: !12, line: 88, type: !795, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !797)
!795 = !DISubroutineType(types: !796)
!796 = !{null, !16}
!797 = !{!798}
!798 = !DILocalVariable(name: "ignore", arg: 1, scope: !794, file: !12, line: 88, type: !16)
!799 = !DILocation(line: 0, scope: !794)
!800 = !DILocation(line: 90, column: 16, scope: !794)
!801 = !{!802, !802, i64 0}
!802 = !{!"_Bool", !598, i64 0}
!803 = !DILocation(line: 91, column: 1, scope: !794)
!804 = distinct !DISubprogram(name: "close_stdout", scope: !12, file: !12, line: 117, type: !778, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !805)
!805 = !{!806}
!806 = !DILocalVariable(name: "write_error", scope: !807, file: !12, line: 122, type: !6)
!807 = distinct !DILexicalBlock(scope: !808, file: !12, line: 121, column: 5)
!808 = distinct !DILexicalBlock(scope: !804, file: !12, line: 119, column: 7)
!809 = !DILocation(line: 119, column: 21, scope: !808)
!810 = !DILocation(line: 119, column: 7, scope: !808)
!811 = !DILocation(line: 119, column: 29, scope: !808)
!812 = !DILocation(line: 120, column: 7, scope: !808)
!813 = !DILocation(line: 120, column: 12, scope: !808)
!814 = !{i8 0, i8 2}
!815 = !DILocation(line: 120, column: 25, scope: !808)
!816 = !DILocation(line: 120, column: 28, scope: !808)
!817 = !DILocation(line: 120, column: 34, scope: !808)
!818 = !DILocation(line: 119, column: 7, scope: !804)
!819 = !DILocation(line: 122, column: 33, scope: !807)
!820 = !DILocation(line: 0, scope: !807)
!821 = !DILocation(line: 123, column: 11, scope: !822)
!822 = distinct !DILexicalBlock(scope: !807, file: !12, line: 123, column: 11)
!823 = !DILocation(line: 0, scope: !822)
!824 = !DILocation(line: 123, column: 11, scope: !807)
!825 = !DILocation(line: 124, column: 36, scope: !822)
!826 = !DILocation(line: 124, column: 9, scope: !822)
!827 = !DILocation(line: 127, column: 9, scope: !822)
!828 = !DILocation(line: 129, column: 14, scope: !807)
!829 = !DILocation(line: 129, column: 7, scope: !807)
!830 = !DILocation(line: 134, column: 42, scope: !831)
!831 = distinct !DILexicalBlock(scope: !804, file: !12, line: 134, column: 7)
!832 = !DILocation(line: 134, column: 28, scope: !831)
!833 = !DILocation(line: 134, column: 50, scope: !831)
!834 = !DILocation(line: 134, column: 7, scope: !804)
!835 = !DILocation(line: 135, column: 12, scope: !831)
!836 = !DILocation(line: 135, column: 5, scope: !831)
!837 = !DILocation(line: 136, column: 1, scope: !804)
!838 = distinct !DISubprogram(name: "parse_long_options", scope: !27, file: !27, line: 45, type: !839, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !842)
!839 = !DISubroutineType(types: !840)
!840 = !{null, !23, !725, !6, !6, !6, !841, null}
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!842 = !{!843, !844, !845, !846, !847, !848, !849, !850, !851}
!843 = !DILocalVariable(name: "argc", arg: 1, scope: !838, file: !27, line: 45, type: !23)
!844 = !DILocalVariable(name: "argv", arg: 2, scope: !838, file: !27, line: 46, type: !725)
!845 = !DILocalVariable(name: "command_name", arg: 3, scope: !838, file: !27, line: 47, type: !6)
!846 = !DILocalVariable(name: "package", arg: 4, scope: !838, file: !27, line: 48, type: !6)
!847 = !DILocalVariable(name: "version", arg: 5, scope: !838, file: !27, line: 49, type: !6)
!848 = !DILocalVariable(name: "usage_func", arg: 6, scope: !838, file: !27, line: 50, type: !841)
!849 = !DILocalVariable(name: "c", scope: !838, file: !27, line: 53, type: !23)
!850 = !DILocalVariable(name: "saved_opterr", scope: !838, file: !27, line: 54, type: !23)
!851 = !DILocalVariable(name: "authors", scope: !852, file: !27, line: 72, type: !856)
!852 = distinct !DILexicalBlock(scope: !853, file: !27, line: 71, column: 11)
!853 = distinct !DILexicalBlock(scope: !854, file: !27, line: 65, column: 9)
!854 = distinct !DILexicalBlock(scope: !855, file: !27, line: 63, column: 5)
!855 = distinct !DILexicalBlock(scope: !838, file: !27, line: 61, column: 7)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !663, line: 52, baseType: !857)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !858, line: 32, baseType: !859)
!858 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !27, baseType: !860)
!860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !861, size: 192, elements: !697)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !862)
!862 = !{!863, !864, !865, !866}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !861, file: !27, line: 72, baseType: !56, size: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !861, file: !27, line: 72, baseType: !56, size: 32, offset: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !861, file: !27, line: 72, baseType: !46, size: 64, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !861, file: !27, line: 72, baseType: !46, size: 64, offset: 128)
!867 = !DILocation(line: 0, scope: !838)
!868 = !DILocation(line: 56, column: 18, scope: !838)
!869 = !DILocation(line: 59, column: 10, scope: !838)
!870 = !DILocation(line: 61, column: 12, scope: !855)
!871 = !DILocation(line: 62, column: 7, scope: !855)
!872 = !DILocation(line: 62, column: 15, scope: !855)
!873 = !DILocation(line: 61, column: 7, scope: !838)
!874 = !DILocation(line: 67, column: 11, scope: !853)
!875 = !DILocation(line: 68, column: 11, scope: !853)
!876 = !DILocation(line: 72, column: 13, scope: !852)
!877 = !DILocation(line: 72, column: 21, scope: !852)
!878 = !DILocation(line: 73, column: 13, scope: !852)
!879 = !DILocation(line: 74, column: 29, scope: !852)
!880 = !DILocation(line: 74, column: 13, scope: !852)
!881 = !DILocation(line: 75, column: 13, scope: !852)
!882 = !DILocation(line: 85, column: 10, scope: !838)
!883 = !DILocation(line: 89, column: 10, scope: !838)
!884 = !DILocation(line: 90, column: 1, scope: !838)
!885 = !DISubprogram(name: "getopt_long", scope: !32, file: !32, line: 66, type: !886, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!886 = !DISubroutineType(types: !887)
!887 = !{!23, !23, !888, !6, !890, !37}
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!891 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !27, file: !27, line: 98, type: !892, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !894)
!892 = !DISubroutineType(types: !893)
!893 = !{null, !23, !725, !6, !6, !6, !16, !841, null}
!894 = !{!895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905}
!895 = !DILocalVariable(name: "argc", arg: 1, scope: !891, file: !27, line: 98, type: !23)
!896 = !DILocalVariable(name: "argv", arg: 2, scope: !891, file: !27, line: 99, type: !725)
!897 = !DILocalVariable(name: "command_name", arg: 3, scope: !891, file: !27, line: 100, type: !6)
!898 = !DILocalVariable(name: "package", arg: 4, scope: !891, file: !27, line: 101, type: !6)
!899 = !DILocalVariable(name: "version", arg: 5, scope: !891, file: !27, line: 102, type: !6)
!900 = !DILocalVariable(name: "scan_all", arg: 6, scope: !891, file: !27, line: 103, type: !16)
!901 = !DILocalVariable(name: "usage_func", arg: 7, scope: !891, file: !27, line: 104, type: !841)
!902 = !DILocalVariable(name: "c", scope: !891, file: !27, line: 107, type: !23)
!903 = !DILocalVariable(name: "saved_opterr", scope: !891, file: !27, line: 108, type: !23)
!904 = !DILocalVariable(name: "optstring", scope: !891, file: !27, line: 113, type: !6)
!905 = !DILocalVariable(name: "authors", scope: !906, file: !27, line: 125, type: !856)
!906 = distinct !DILexicalBlock(scope: !907, file: !27, line: 124, column: 11)
!907 = distinct !DILexicalBlock(scope: !908, file: !27, line: 118, column: 9)
!908 = distinct !DILexicalBlock(scope: !909, file: !27, line: 116, column: 5)
!909 = distinct !DILexicalBlock(scope: !891, file: !27, line: 115, column: 7)
!910 = !DILocation(line: 0, scope: !891)
!911 = !DILocation(line: 108, column: 22, scope: !891)
!912 = !DILocation(line: 111, column: 10, scope: !891)
!913 = !DILocation(line: 113, column: 27, scope: !891)
!914 = !DILocation(line: 115, column: 12, scope: !909)
!915 = !DILocation(line: 115, column: 7, scope: !891)
!916 = !DILocation(line: 125, column: 13, scope: !906)
!917 = !DILocation(line: 125, column: 21, scope: !906)
!918 = !DILocation(line: 126, column: 13, scope: !906)
!919 = !DILocation(line: 127, column: 29, scope: !906)
!920 = !DILocation(line: 127, column: 13, scope: !906)
!921 = !DILocation(line: 128, column: 13, scope: !906)
!922 = !DILocation(line: 132, column: 26, scope: !907)
!923 = !DILocation(line: 133, column: 11, scope: !907)
!924 = !DILocation(line: 0, scope: !907)
!925 = !DILocation(line: 138, column: 10, scope: !891)
!926 = !DILocation(line: 139, column: 1, scope: !891)
!927 = distinct !DISubprogram(name: "set_program_name", scope: !44, file: !44, line: 39, type: !608, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !43, retainedNodes: !928)
!928 = !{!929, !930, !931}
!929 = !DILocalVariable(name: "argv0", arg: 1, scope: !927, file: !44, line: 39, type: !6)
!930 = !DILocalVariable(name: "slash", scope: !927, file: !44, line: 46, type: !6)
!931 = !DILocalVariable(name: "base", scope: !927, file: !44, line: 47, type: !6)
!932 = !DILocation(line: 0, scope: !927)
!933 = !DILocation(line: 51, column: 13, scope: !934)
!934 = distinct !DILexicalBlock(scope: !927, file: !44, line: 51, column: 7)
!935 = !DILocation(line: 51, column: 7, scope: !927)
!936 = !DILocation(line: 55, column: 14, scope: !937)
!937 = distinct !DILexicalBlock(scope: !934, file: !44, line: 52, column: 5)
!938 = !DILocation(line: 54, column: 7, scope: !937)
!939 = !DILocation(line: 56, column: 7, scope: !937)
!940 = !DILocation(line: 59, column: 11, scope: !927)
!941 = !DILocation(line: 60, column: 17, scope: !927)
!942 = !DILocation(line: 60, column: 11, scope: !927)
!943 = !DILocation(line: 61, column: 12, scope: !944)
!944 = distinct !DILexicalBlock(scope: !927, file: !44, line: 61, column: 7)
!945 = !DILocation(line: 61, column: 20, scope: !944)
!946 = !DILocation(line: 61, column: 25, scope: !944)
!947 = !DILocation(line: 61, column: 42, scope: !944)
!948 = !DILocation(line: 61, column: 28, scope: !944)
!949 = !DILocation(line: 61, column: 61, scope: !944)
!950 = !DILocation(line: 61, column: 7, scope: !927)
!951 = !DILocation(line: 64, column: 11, scope: !952)
!952 = distinct !DILexicalBlock(scope: !953, file: !44, line: 64, column: 11)
!953 = distinct !DILexicalBlock(scope: !944, file: !44, line: 62, column: 5)
!954 = !DILocation(line: 64, column: 36, scope: !952)
!955 = !DILocation(line: 64, column: 11, scope: !953)
!956 = !DILocation(line: 66, column: 24, scope: !957)
!957 = distinct !DILexicalBlock(scope: !952, file: !44, line: 65, column: 9)
!958 = !DILocation(line: 70, column: 41, scope: !957)
!959 = !DILocation(line: 72, column: 9, scope: !957)
!960 = !DILocation(line: 84, column: 16, scope: !927)
!961 = !DILocation(line: 90, column: 27, scope: !927)
!962 = !DILocation(line: 92, column: 1, scope: !927)
!963 = distinct !DISubprogram(name: "clone_quoting_options", scope: !52, file: !52, line: 122, type: !964, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !967)
!964 = !DISubroutineType(types: !965)
!965 = !{!966, !966}
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!967 = !{!968, !969, !970}
!968 = !DILocalVariable(name: "o", arg: 1, scope: !963, file: !52, line: 122, type: !966)
!969 = !DILocalVariable(name: "e", scope: !963, file: !52, line: 124, type: !23)
!970 = !DILocalVariable(name: "p", scope: !963, file: !52, line: 125, type: !966)
!971 = !DILocation(line: 0, scope: !963)
!972 = !DILocation(line: 124, column: 11, scope: !963)
!973 = !DILocation(line: 125, column: 40, scope: !963)
!974 = !DILocation(line: 125, column: 31, scope: !963)
!975 = !DILocation(line: 127, column: 9, scope: !963)
!976 = !DILocation(line: 128, column: 3, scope: !963)
!977 = distinct !DISubprogram(name: "get_quoting_style", scope: !52, file: !52, line: 133, type: !978, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !982)
!978 = !DISubroutineType(types: !979)
!979 = !{!54, !980}
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!982 = !{!983}
!983 = !DILocalVariable(name: "o", arg: 1, scope: !977, file: !52, line: 133, type: !980)
!984 = !DILocation(line: 0, scope: !977)
!985 = !DILocation(line: 135, column: 11, scope: !977)
!986 = !DILocation(line: 135, column: 46, scope: !977)
!987 = !{!988, !598, i64 0}
!988 = !{!"quoting_options", !598, i64 0, !741, i64 4, !598, i64 8, !597, i64 40, !597, i64 48}
!989 = !DILocation(line: 135, column: 3, scope: !977)
!990 = distinct !DISubprogram(name: "set_quoting_style", scope: !52, file: !52, line: 141, type: !991, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !993)
!991 = !DISubroutineType(types: !992)
!992 = !{null, !966, !54}
!993 = !{!994, !995}
!994 = !DILocalVariable(name: "o", arg: 1, scope: !990, file: !52, line: 141, type: !966)
!995 = !DILocalVariable(name: "s", arg: 2, scope: !990, file: !52, line: 141, type: !54)
!996 = !DILocation(line: 0, scope: !990)
!997 = !DILocation(line: 143, column: 4, scope: !990)
!998 = !DILocation(line: 143, column: 39, scope: !990)
!999 = !DILocation(line: 143, column: 45, scope: !990)
!1000 = !DILocation(line: 144, column: 1, scope: !990)
!1001 = distinct !DISubprogram(name: "set_char_quoting", scope: !52, file: !52, line: 152, type: !1002, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1004)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!23, !966, !8, !23}
!1004 = !{!1005, !1006, !1007, !1008, !1010, !1012, !1013}
!1005 = !DILocalVariable(name: "o", arg: 1, scope: !1001, file: !52, line: 152, type: !966)
!1006 = !DILocalVariable(name: "c", arg: 2, scope: !1001, file: !52, line: 152, type: !8)
!1007 = !DILocalVariable(name: "i", arg: 3, scope: !1001, file: !52, line: 152, type: !23)
!1008 = !DILocalVariable(name: "uc", scope: !1001, file: !52, line: 154, type: !1009)
!1009 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1010 = !DILocalVariable(name: "p", scope: !1001, file: !52, line: 155, type: !1011)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!1012 = !DILocalVariable(name: "shift", scope: !1001, file: !52, line: 157, type: !23)
!1013 = !DILocalVariable(name: "r", scope: !1001, file: !52, line: 158, type: !23)
!1014 = !DILocation(line: 0, scope: !1001)
!1015 = !DILocation(line: 156, column: 6, scope: !1001)
!1016 = !DILocation(line: 156, column: 62, scope: !1001)
!1017 = !DILocation(line: 156, column: 57, scope: !1001)
!1018 = !DILocation(line: 157, column: 15, scope: !1001)
!1019 = !DILocation(line: 158, column: 12, scope: !1001)
!1020 = !DILocation(line: 158, column: 15, scope: !1001)
!1021 = !DILocation(line: 158, column: 25, scope: !1001)
!1022 = !DILocation(line: 159, column: 13, scope: !1001)
!1023 = !DILocation(line: 159, column: 18, scope: !1001)
!1024 = !DILocation(line: 159, column: 23, scope: !1001)
!1025 = !DILocation(line: 159, column: 6, scope: !1001)
!1026 = !DILocation(line: 160, column: 3, scope: !1001)
!1027 = distinct !DISubprogram(name: "set_quoting_flags", scope: !52, file: !52, line: 168, type: !1028, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1030)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!23, !966, !23}
!1030 = !{!1031, !1032, !1033}
!1031 = !DILocalVariable(name: "o", arg: 1, scope: !1027, file: !52, line: 168, type: !966)
!1032 = !DILocalVariable(name: "i", arg: 2, scope: !1027, file: !52, line: 168, type: !23)
!1033 = !DILocalVariable(name: "r", scope: !1027, file: !52, line: 170, type: !23)
!1034 = !DILocation(line: 0, scope: !1027)
!1035 = !DILocation(line: 171, column: 8, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1027, file: !52, line: 171, column: 7)
!1037 = !DILocation(line: 171, column: 7, scope: !1027)
!1038 = !DILocation(line: 173, column: 10, scope: !1027)
!1039 = !{!988, !741, i64 4}
!1040 = !DILocation(line: 174, column: 12, scope: !1027)
!1041 = !DILocation(line: 175, column: 3, scope: !1027)
!1042 = distinct !DISubprogram(name: "set_custom_quoting", scope: !52, file: !52, line: 179, type: !1043, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1045)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{null, !966, !6, !6}
!1045 = !{!1046, !1047, !1048}
!1046 = !DILocalVariable(name: "o", arg: 1, scope: !1042, file: !52, line: 179, type: !966)
!1047 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1042, file: !52, line: 180, type: !6)
!1048 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1042, file: !52, line: 180, type: !6)
!1049 = !DILocation(line: 0, scope: !1042)
!1050 = !DILocation(line: 182, column: 8, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1042, file: !52, line: 182, column: 7)
!1052 = !DILocation(line: 182, column: 7, scope: !1042)
!1053 = !DILocation(line: 184, column: 6, scope: !1042)
!1054 = !DILocation(line: 184, column: 12, scope: !1042)
!1055 = !DILocation(line: 185, column: 8, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1042, file: !52, line: 185, column: 7)
!1057 = !DILocation(line: 185, column: 19, scope: !1056)
!1058 = !DILocation(line: 186, column: 5, scope: !1056)
!1059 = !DILocation(line: 187, column: 6, scope: !1042)
!1060 = !DILocation(line: 187, column: 17, scope: !1042)
!1061 = !{!988, !597, i64 40}
!1062 = !DILocation(line: 188, column: 6, scope: !1042)
!1063 = !DILocation(line: 188, column: 18, scope: !1042)
!1064 = !{!988, !597, i64 48}
!1065 = !DILocation(line: 189, column: 1, scope: !1042)
!1066 = distinct !DISubprogram(name: "quotearg_buffer", scope: !52, file: !52, line: 784, type: !1067, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1069)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!91, !47, !91, !6, !91, !980}
!1069 = !{!1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077}
!1070 = !DILocalVariable(name: "buffer", arg: 1, scope: !1066, file: !52, line: 784, type: !47)
!1071 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1066, file: !52, line: 784, type: !91)
!1072 = !DILocalVariable(name: "arg", arg: 3, scope: !1066, file: !52, line: 785, type: !6)
!1073 = !DILocalVariable(name: "argsize", arg: 4, scope: !1066, file: !52, line: 785, type: !91)
!1074 = !DILocalVariable(name: "o", arg: 5, scope: !1066, file: !52, line: 786, type: !980)
!1075 = !DILocalVariable(name: "p", scope: !1066, file: !52, line: 788, type: !980)
!1076 = !DILocalVariable(name: "e", scope: !1066, file: !52, line: 789, type: !23)
!1077 = !DILocalVariable(name: "r", scope: !1066, file: !52, line: 790, type: !91)
!1078 = !DILocation(line: 0, scope: !1066)
!1079 = !DILocation(line: 788, column: 37, scope: !1066)
!1080 = !DILocation(line: 789, column: 11, scope: !1066)
!1081 = !DILocation(line: 791, column: 43, scope: !1066)
!1082 = !DILocation(line: 791, column: 53, scope: !1066)
!1083 = !DILocation(line: 791, column: 60, scope: !1066)
!1084 = !DILocation(line: 792, column: 43, scope: !1066)
!1085 = !DILocation(line: 792, column: 58, scope: !1066)
!1086 = !DILocation(line: 790, column: 14, scope: !1066)
!1087 = !DILocation(line: 793, column: 9, scope: !1066)
!1088 = !DILocation(line: 794, column: 3, scope: !1066)
!1089 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !52, file: !52, line: 256, type: !1090, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1094)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!91, !47, !91, !6, !91, !54, !23, !1092, !6, !6}
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!1094 = !{!1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1119, !1120, !1121, !1122, !1123, !1126, !1127, !1145, !1148, !1149, !1156, !1159, !1160, !1161, !1162, !1163, !1164}
!1095 = !DILocalVariable(name: "buffer", arg: 1, scope: !1089, file: !52, line: 256, type: !47)
!1096 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1089, file: !52, line: 256, type: !91)
!1097 = !DILocalVariable(name: "arg", arg: 3, scope: !1089, file: !52, line: 257, type: !6)
!1098 = !DILocalVariable(name: "argsize", arg: 4, scope: !1089, file: !52, line: 257, type: !91)
!1099 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1089, file: !52, line: 258, type: !54)
!1100 = !DILocalVariable(name: "flags", arg: 6, scope: !1089, file: !52, line: 258, type: !23)
!1101 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1089, file: !52, line: 259, type: !1092)
!1102 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1089, file: !52, line: 260, type: !6)
!1103 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1089, file: !52, line: 261, type: !6)
!1104 = !DILocalVariable(name: "i", scope: !1089, file: !52, line: 263, type: !91)
!1105 = !DILocalVariable(name: "len", scope: !1089, file: !52, line: 264, type: !91)
!1106 = !DILocalVariable(name: "orig_buffersize", scope: !1089, file: !52, line: 265, type: !91)
!1107 = !DILocalVariable(name: "quote_string", scope: !1089, file: !52, line: 266, type: !6)
!1108 = !DILocalVariable(name: "quote_string_len", scope: !1089, file: !52, line: 267, type: !91)
!1109 = !DILocalVariable(name: "backslash_escapes", scope: !1089, file: !52, line: 268, type: !16)
!1110 = !DILocalVariable(name: "unibyte_locale", scope: !1089, file: !52, line: 269, type: !16)
!1111 = !DILocalVariable(name: "elide_outer_quotes", scope: !1089, file: !52, line: 270, type: !16)
!1112 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1089, file: !52, line: 271, type: !16)
!1113 = !DILocalVariable(name: "encountered_single_quote", scope: !1089, file: !52, line: 272, type: !16)
!1114 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1089, file: !52, line: 273, type: !16)
!1115 = !DILocalVariable(name: "c", scope: !1116, file: !52, line: 402, type: !1009)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !52, line: 401, column: 5)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !52, line: 400, column: 3)
!1118 = distinct !DILexicalBlock(scope: !1089, file: !52, line: 400, column: 3)
!1119 = !DILocalVariable(name: "esc", scope: !1116, file: !52, line: 403, type: !1009)
!1120 = !DILocalVariable(name: "is_right_quote", scope: !1116, file: !52, line: 404, type: !16)
!1121 = !DILocalVariable(name: "escaping", scope: !1116, file: !52, line: 405, type: !16)
!1122 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1116, file: !52, line: 406, type: !16)
!1123 = !DILocalVariable(name: "m", scope: !1124, file: !52, line: 610, type: !91)
!1124 = distinct !DILexicalBlock(scope: !1125, file: !52, line: 608, column: 11)
!1125 = distinct !DILexicalBlock(scope: !1116, file: !52, line: 426, column: 9)
!1126 = !DILocalVariable(name: "printable", scope: !1124, file: !52, line: 612, type: !16)
!1127 = !DILocalVariable(name: "mbstate", scope: !1128, file: !52, line: 621, type: !1130)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !52, line: 620, column: 15)
!1129 = distinct !DILexicalBlock(scope: !1124, file: !52, line: 614, column: 17)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1131, line: 6, baseType: !1132)
!1131 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1133, line: 21, baseType: !1134)
!1133 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1133, line: 13, size: 64, elements: !1135)
!1135 = !{!1136, !1137}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1134, file: !1133, line: 15, baseType: !23, size: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1134, file: !1133, line: 20, baseType: !1138, size: 32, offset: 32)
!1138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1134, file: !1133, line: 16, size: 32, elements: !1139)
!1139 = !{!1140, !1141}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1138, file: !1133, line: 18, baseType: !56, size: 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1138, file: !1133, line: 19, baseType: !1142, size: 32)
!1142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !1143)
!1143 = !{!1144}
!1144 = !DISubrange(count: 4)
!1145 = !DILocalVariable(name: "w", scope: !1146, file: !52, line: 631, type: !1147)
!1146 = distinct !DILexicalBlock(scope: !1128, file: !52, line: 630, column: 19)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !92, line: 74, baseType: !23)
!1148 = !DILocalVariable(name: "bytes", scope: !1146, file: !52, line: 632, type: !91)
!1149 = !DILocalVariable(name: "j", scope: !1150, file: !52, line: 657, type: !91)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !52, line: 656, column: 27)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !52, line: 654, column: 29)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !52, line: 649, column: 23)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !52, line: 641, column: 30)
!1154 = distinct !DILexicalBlock(scope: !1155, file: !52, line: 636, column: 30)
!1155 = distinct !DILexicalBlock(scope: !1146, file: !52, line: 634, column: 25)
!1156 = !DILocalVariable(name: "ilim", scope: !1157, file: !52, line: 684, type: !91)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !52, line: 681, column: 15)
!1158 = distinct !DILexicalBlock(scope: !1124, file: !52, line: 680, column: 17)
!1159 = !DILabel(scope: !1089, name: "process_input", file: !52, line: 314)
!1160 = !DILabel(scope: !1125, name: "c_and_shell_escape", file: !52, line: 512)
!1161 = !DILabel(scope: !1125, name: "c_escape", file: !52, line: 517)
!1162 = !DILabel(scope: !1116, name: "store_escape", file: !52, line: 719)
!1163 = !DILabel(scope: !1116, name: "store_c", file: !52, line: 722)
!1164 = !DILabel(scope: !1089, name: "force_outer_quoting_style", file: !52, line: 763)
!1165 = !DILocation(line: 0, scope: !1089)
!1166 = !DILocation(line: 269, column: 25, scope: !1089)
!1167 = !DILocation(line: 269, column: 36, scope: !1089)
!1168 = !DILocation(line: 270, column: 8, scope: !1089)
!1169 = !DILocation(line: 273, column: 3, scope: !1089)
!1170 = !DILocation(line: 265, column: 10, scope: !1089)
!1171 = !DILocation(line: 266, column: 15, scope: !1089)
!1172 = !DILocation(line: 267, column: 10, scope: !1089)
!1173 = !DILocation(line: 268, column: 8, scope: !1089)
!1174 = !DILocation(line: 271, column: 8, scope: !1089)
!1175 = !DILocation(line: 272, column: 8, scope: !1089)
!1176 = !DILocation(line: 273, column: 8, scope: !1089)
!1177 = !DILocation(line: 314, column: 2, scope: !1089)
!1178 = !DILocation(line: 316, column: 3, scope: !1089)
!1179 = !DILocation(line: 323, column: 11, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1089, file: !52, line: 317, column: 5)
!1181 = !DILocation(line: 323, column: 12, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1180, file: !52, line: 323, column: 11)
!1183 = !DILocation(line: 324, column: 9, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !52, line: 324, column: 9)
!1185 = distinct !DILexicalBlock(scope: !1182, file: !52, line: 324, column: 9)
!1186 = !DILocation(line: 324, column: 9, scope: !1185)
!1187 = !{!598, !598, i64 0}
!1188 = !DILocation(line: 362, column: 26, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !52, line: 340, column: 11)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !52, line: 339, column: 13)
!1191 = distinct !DILexicalBlock(scope: !1180, file: !52, line: 338, column: 7)
!1192 = !DILocation(line: 363, column: 27, scope: !1189)
!1193 = !DILocation(line: 364, column: 11, scope: !1189)
!1194 = !DILocation(line: 365, column: 14, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1191, file: !52, line: 365, column: 13)
!1196 = !DILocation(line: 365, column: 13, scope: !1191)
!1197 = !DILocation(line: 366, column: 43, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !52, line: 366, column: 11)
!1199 = distinct !DILexicalBlock(scope: !1195, file: !52, line: 366, column: 11)
!1200 = !DILocation(line: 366, column: 11, scope: !1199)
!1201 = !DILocation(line: 367, column: 13, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !52, line: 367, column: 13)
!1203 = distinct !DILexicalBlock(scope: !1198, file: !52, line: 367, column: 13)
!1204 = !DILocation(line: 367, column: 13, scope: !1203)
!1205 = !DILocation(line: 366, column: 70, scope: !1198)
!1206 = distinct !{!1206, !1200, !1207, !638}
!1207 = !DILocation(line: 367, column: 13, scope: !1199)
!1208 = !DILocation(line: 264, column: 10, scope: !1089)
!1209 = !DILocation(line: 370, column: 28, scope: !1191)
!1210 = !DILocation(line: 372, column: 7, scope: !1180)
!1211 = !DILocation(line: 376, column: 7, scope: !1180)
!1212 = !DILocation(line: 379, column: 7, scope: !1180)
!1213 = !DILocation(line: 381, column: 12, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1180, file: !52, line: 381, column: 11)
!1215 = !DILocation(line: 381, column: 11, scope: !1180)
!1216 = !DILocation(line: 386, column: 12, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1180, file: !52, line: 386, column: 11)
!1218 = !DILocation(line: 386, column: 11, scope: !1180)
!1219 = !DILocation(line: 387, column: 9, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !52, line: 387, column: 9)
!1221 = distinct !DILexicalBlock(scope: !1217, file: !52, line: 387, column: 9)
!1222 = !DILocation(line: 387, column: 9, scope: !1221)
!1223 = !DILocation(line: 394, column: 7, scope: !1180)
!1224 = !DILocation(line: 397, column: 7, scope: !1180)
!1225 = !DILocation(line: 400, column: 8, scope: !1118)
!1226 = !DILocation(line: 0, scope: !1118)
!1227 = !DILocation(line: 400, column: 27, scope: !1117)
!1228 = !DILocation(line: 400, column: 19, scope: !1117)
!1229 = !DILocation(line: 400, column: 41, scope: !1117)
!1230 = !DILocation(line: 400, column: 48, scope: !1117)
!1231 = !DILocation(line: 400, column: 3, scope: !1118)
!1232 = !DILocation(line: 400, column: 60, scope: !1117)
!1233 = !DILocation(line: 0, scope: !1116)
!1234 = !DILocation(line: 409, column: 11, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1116, file: !52, line: 408, column: 11)
!1236 = !DILocation(line: 411, column: 17, scope: !1235)
!1237 = !DILocation(line: 412, column: 39, scope: !1235)
!1238 = !DILocation(line: 416, column: 32, scope: !1235)
!1239 = !DILocation(line: 412, column: 19, scope: !1235)
!1240 = !DILocation(line: 412, column: 15, scope: !1235)
!1241 = !DILocation(line: 417, column: 11, scope: !1235)
!1242 = !DILocation(line: 417, column: 26, scope: !1235)
!1243 = !DILocation(line: 417, column: 14, scope: !1235)
!1244 = !DILocation(line: 417, column: 63, scope: !1235)
!1245 = !DILocation(line: 408, column: 11, scope: !1116)
!1246 = !DILocation(line: 424, column: 11, scope: !1116)
!1247 = !DILocation(line: 425, column: 7, scope: !1116)
!1248 = !DILocation(line: 428, column: 15, scope: !1125)
!1249 = !DILocation(line: 430, column: 15, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !52, line: 430, column: 15)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !52, line: 429, column: 13)
!1252 = distinct !DILexicalBlock(scope: !1125, file: !52, line: 428, column: 15)
!1253 = !DILocation(line: 430, column: 15, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1250, file: !52, line: 430, column: 15)
!1255 = !DILocation(line: 430, column: 15, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !52, line: 430, column: 15)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !52, line: 430, column: 15)
!1258 = distinct !DILexicalBlock(scope: !1254, file: !52, line: 430, column: 15)
!1259 = !DILocation(line: 430, column: 15, scope: !1257)
!1260 = !DILocation(line: 430, column: 15, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !52, line: 430, column: 15)
!1262 = distinct !DILexicalBlock(scope: !1258, file: !52, line: 430, column: 15)
!1263 = !DILocation(line: 430, column: 15, scope: !1262)
!1264 = !DILocation(line: 430, column: 15, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !52, line: 430, column: 15)
!1266 = distinct !DILexicalBlock(scope: !1258, file: !52, line: 430, column: 15)
!1267 = !DILocation(line: 430, column: 15, scope: !1266)
!1268 = !DILocation(line: 430, column: 15, scope: !1258)
!1269 = !DILocation(line: 430, column: 15, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !52, line: 430, column: 15)
!1271 = distinct !DILexicalBlock(scope: !1250, file: !52, line: 430, column: 15)
!1272 = !DILocation(line: 430, column: 15, scope: !1271)
!1273 = !DILocation(line: 438, column: 19, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1251, file: !52, line: 437, column: 19)
!1275 = !DILocation(line: 438, column: 48, scope: !1274)
!1276 = !DILocation(line: 438, column: 59, scope: !1274)
!1277 = !DILocation(line: 440, column: 19, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !52, line: 440, column: 19)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !52, line: 440, column: 19)
!1280 = distinct !DILexicalBlock(scope: !1274, file: !52, line: 439, column: 17)
!1281 = !DILocation(line: 440, column: 19, scope: !1279)
!1282 = !DILocation(line: 441, column: 19, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !52, line: 441, column: 19)
!1284 = distinct !DILexicalBlock(scope: !1280, file: !52, line: 441, column: 19)
!1285 = !DILocation(line: 441, column: 19, scope: !1284)
!1286 = !DILocation(line: 442, column: 17, scope: !1280)
!1287 = !DILocation(line: 449, column: 20, scope: !1252)
!1288 = !DILocation(line: 454, column: 11, scope: !1125)
!1289 = !DILocation(line: 457, column: 19, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1125, file: !52, line: 455, column: 13)
!1291 = !DILocation(line: 463, column: 19, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1290, file: !52, line: 462, column: 19)
!1293 = !DILocation(line: 463, column: 47, scope: !1292)
!1294 = !DILocation(line: 463, column: 41, scope: !1292)
!1295 = !DILocation(line: 463, column: 52, scope: !1292)
!1296 = !DILocation(line: 462, column: 19, scope: !1290)
!1297 = !DILocation(line: 464, column: 25, scope: !1292)
!1298 = !DILocation(line: 464, column: 17, scope: !1292)
!1299 = !DILocation(line: 471, column: 25, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1292, file: !52, line: 465, column: 19)
!1301 = !DILocation(line: 475, column: 21, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !52, line: 475, column: 21)
!1303 = distinct !DILexicalBlock(scope: !1300, file: !52, line: 475, column: 21)
!1304 = !DILocation(line: 475, column: 21, scope: !1303)
!1305 = !DILocation(line: 476, column: 21, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !52, line: 476, column: 21)
!1307 = distinct !DILexicalBlock(scope: !1300, file: !52, line: 476, column: 21)
!1308 = !DILocation(line: 476, column: 21, scope: !1307)
!1309 = !DILocation(line: 477, column: 21, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !52, line: 477, column: 21)
!1311 = distinct !DILexicalBlock(scope: !1300, file: !52, line: 477, column: 21)
!1312 = !DILocation(line: 477, column: 21, scope: !1311)
!1313 = !DILocation(line: 478, column: 21, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !52, line: 478, column: 21)
!1315 = distinct !DILexicalBlock(scope: !1300, file: !52, line: 478, column: 21)
!1316 = !DILocation(line: 478, column: 21, scope: !1315)
!1317 = !DILocation(line: 479, column: 21, scope: !1300)
!1318 = !DILocation(line: 492, column: 31, scope: !1125)
!1319 = !DILocation(line: 493, column: 31, scope: !1125)
!1320 = !DILocation(line: 495, column: 31, scope: !1125)
!1321 = !DILocation(line: 496, column: 31, scope: !1125)
!1322 = !DILocation(line: 497, column: 31, scope: !1125)
!1323 = !DILocation(line: 500, column: 15, scope: !1125)
!1324 = !DILocation(line: 502, column: 19, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !52, line: 501, column: 13)
!1326 = distinct !DILexicalBlock(scope: !1125, file: !52, line: 500, column: 15)
!1327 = !DILocation(line: 509, column: 33, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1125, file: !52, line: 509, column: 15)
!1329 = !DILocation(line: 0, scope: !1125)
!1330 = !DILocation(line: 512, column: 9, scope: !1125)
!1331 = !DILocation(line: 514, column: 15, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1125, file: !52, line: 513, column: 15)
!1333 = !DILocation(line: 517, column: 9, scope: !1125)
!1334 = !DILocation(line: 518, column: 15, scope: !1125)
!1335 = !DILocation(line: 526, column: 15, scope: !1125)
!1336 = !DILocation(line: 526, column: 40, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1125, file: !52, line: 526, column: 15)
!1338 = !DILocation(line: 526, column: 47, scope: !1337)
!1339 = !DILocation(line: 526, column: 18, scope: !1337)
!1340 = !DILocation(line: 530, column: 17, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1125, file: !52, line: 530, column: 15)
!1342 = !DILocation(line: 530, column: 15, scope: !1125)
!1343 = !DILocation(line: 535, column: 11, scope: !1125)
!1344 = !DILocation(line: 549, column: 15, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1125, file: !52, line: 548, column: 15)
!1346 = !DILocation(line: 556, column: 15, scope: !1125)
!1347 = !DILocation(line: 558, column: 19, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !52, line: 557, column: 13)
!1349 = distinct !DILexicalBlock(scope: !1125, file: !52, line: 556, column: 15)
!1350 = !DILocation(line: 561, column: 19, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1348, file: !52, line: 561, column: 19)
!1352 = !DILocation(line: 561, column: 30, scope: !1351)
!1353 = !DILocation(line: 570, column: 15, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !52, line: 570, column: 15)
!1355 = distinct !DILexicalBlock(scope: !1348, file: !52, line: 570, column: 15)
!1356 = !DILocation(line: 570, column: 15, scope: !1355)
!1357 = !DILocation(line: 571, column: 15, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !52, line: 571, column: 15)
!1359 = distinct !DILexicalBlock(scope: !1348, file: !52, line: 571, column: 15)
!1360 = !DILocation(line: 571, column: 15, scope: !1359)
!1361 = !DILocation(line: 572, column: 15, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !52, line: 572, column: 15)
!1363 = distinct !DILexicalBlock(scope: !1348, file: !52, line: 572, column: 15)
!1364 = !DILocation(line: 572, column: 15, scope: !1363)
!1365 = !DILocation(line: 574, column: 13, scope: !1348)
!1366 = !DILocation(line: 614, column: 17, scope: !1124)
!1367 = !DILocation(line: 0, scope: !1124)
!1368 = !DILocation(line: 617, column: 29, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1129, file: !52, line: 615, column: 15)
!1370 = !{!1371, !1371, i64 0}
!1371 = !{!"short", !598, i64 0}
!1372 = !DILocation(line: 617, column: 27, scope: !1369)
!1373 = !DILocation(line: 678, column: 40, scope: !1124)
!1374 = !DILocation(line: 680, column: 23, scope: !1158)
!1375 = !DILocation(line: 621, column: 17, scope: !1128)
!1376 = !DILocation(line: 621, column: 27, scope: !1128)
!1377 = !DILocalVariable(name: "__dest", arg: 1, scope: !1378, file: !1379, line: 57, type: !46)
!1378 = distinct !DISubprogram(name: "memset", scope: !1379, file: !1379, line: 57, type: !1380, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1382)
!1379 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!46, !46, !23, !91}
!1382 = !{!1377, !1383, !1384}
!1383 = !DILocalVariable(name: "__ch", arg: 2, scope: !1378, file: !1379, line: 57, type: !23)
!1384 = !DILocalVariable(name: "__len", arg: 3, scope: !1378, file: !1379, line: 57, type: !91)
!1385 = !DILocation(line: 0, scope: !1378, inlinedAt: !1386)
!1386 = distinct !DILocation(line: 622, column: 17, scope: !1128)
!1387 = !DILocation(line: 59, column: 10, scope: !1378, inlinedAt: !1386)
!1388 = !DILocation(line: 626, column: 29, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1128, file: !52, line: 626, column: 21)
!1390 = !DILocation(line: 626, column: 21, scope: !1128)
!1391 = !DILocation(line: 627, column: 29, scope: !1389)
!1392 = !DILocation(line: 627, column: 19, scope: !1389)
!1393 = !DILocation(line: 629, column: 17, scope: !1128)
!1394 = !DILocation(line: 624, column: 19, scope: !1128)
!1395 = !DILocation(line: 625, column: 27, scope: !1128)
!1396 = !DILocation(line: 631, column: 21, scope: !1146)
!1397 = !DILocation(line: 632, column: 56, scope: !1146)
!1398 = !DILocation(line: 632, column: 50, scope: !1146)
!1399 = !DILocation(line: 633, column: 53, scope: !1146)
!1400 = !DILocation(line: 0, scope: !1146)
!1401 = !DILocation(line: 632, column: 36, scope: !1146)
!1402 = !DILocation(line: 634, column: 25, scope: !1146)
!1403 = !DILocation(line: 644, column: 38, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1153, file: !52, line: 642, column: 23)
!1405 = !DILocation(line: 644, column: 48, scope: !1404)
!1406 = !DILocation(line: 644, column: 25, scope: !1404)
!1407 = !DILocation(line: 644, column: 51, scope: !1404)
!1408 = !DILocation(line: 645, column: 28, scope: !1404)
!1409 = !DILocation(line: 644, column: 34, scope: !1404)
!1410 = distinct !{!1410, !1406, !1408, !638}
!1411 = !DILocation(line: 655, column: 29, scope: !1151)
!1412 = !DILocation(line: 0, scope: !1150)
!1413 = !DILocation(line: 659, column: 49, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !52, line: 658, column: 29)
!1415 = distinct !DILexicalBlock(scope: !1150, file: !52, line: 658, column: 29)
!1416 = !DILocation(line: 659, column: 39, scope: !1414)
!1417 = !DILocation(line: 659, column: 31, scope: !1414)
!1418 = !DILocation(line: 658, column: 53, scope: !1414)
!1419 = !DILocation(line: 658, column: 43, scope: !1414)
!1420 = !DILocation(line: 658, column: 29, scope: !1415)
!1421 = distinct !{!1421, !1420, !1422, !638}
!1422 = !DILocation(line: 667, column: 33, scope: !1415)
!1423 = !DILocation(line: 674, column: 19, scope: !1128)
!1424 = !DILocation(line: 670, column: 41, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1152, file: !52, line: 670, column: 29)
!1426 = !DILocation(line: 670, column: 31, scope: !1425)
!1427 = !DILocation(line: 670, column: 29, scope: !1152)
!1428 = !DILocation(line: 672, column: 27, scope: !1152)
!1429 = !DILocation(line: 675, column: 26, scope: !1128)
!1430 = !DILocation(line: 675, column: 24, scope: !1128)
!1431 = !DILocation(line: 674, column: 19, scope: !1146)
!1432 = distinct !{!1432, !1393, !1433, !638}
!1433 = !DILocation(line: 675, column: 44, scope: !1128)
!1434 = !DILocation(line: 676, column: 15, scope: !1129)
!1435 = !DILocation(line: 680, column: 19, scope: !1158)
!1436 = !DILocation(line: 680, column: 45, scope: !1158)
!1437 = !DILocation(line: 684, column: 33, scope: !1157)
!1438 = !DILocation(line: 0, scope: !1157)
!1439 = !DILocation(line: 686, column: 17, scope: !1157)
!1440 = !DILocation(line: 405, column: 12, scope: !1116)
!1441 = !DILocation(line: 688, column: 43, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !52, line: 688, column: 25)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !52, line: 687, column: 19)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !52, line: 686, column: 17)
!1445 = distinct !DILexicalBlock(scope: !1157, file: !52, line: 686, column: 17)
!1446 = !DILocation(line: 690, column: 25, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !52, line: 690, column: 25)
!1448 = distinct !DILexicalBlock(scope: !1442, file: !52, line: 689, column: 23)
!1449 = !DILocation(line: 690, column: 25, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1447, file: !52, line: 690, column: 25)
!1451 = !DILocation(line: 690, column: 25, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !52, line: 690, column: 25)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !52, line: 690, column: 25)
!1454 = distinct !DILexicalBlock(scope: !1450, file: !52, line: 690, column: 25)
!1455 = !DILocation(line: 690, column: 25, scope: !1453)
!1456 = !DILocation(line: 690, column: 25, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !52, line: 690, column: 25)
!1458 = distinct !DILexicalBlock(scope: !1454, file: !52, line: 690, column: 25)
!1459 = !DILocation(line: 690, column: 25, scope: !1458)
!1460 = !DILocation(line: 690, column: 25, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !52, line: 690, column: 25)
!1462 = distinct !DILexicalBlock(scope: !1454, file: !52, line: 690, column: 25)
!1463 = !DILocation(line: 690, column: 25, scope: !1462)
!1464 = !DILocation(line: 690, column: 25, scope: !1454)
!1465 = !DILocation(line: 690, column: 25, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !52, line: 690, column: 25)
!1467 = distinct !DILexicalBlock(scope: !1447, file: !52, line: 690, column: 25)
!1468 = !DILocation(line: 690, column: 25, scope: !1467)
!1469 = !DILocation(line: 691, column: 25, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !52, line: 691, column: 25)
!1471 = distinct !DILexicalBlock(scope: !1448, file: !52, line: 691, column: 25)
!1472 = !DILocation(line: 691, column: 25, scope: !1471)
!1473 = !DILocation(line: 692, column: 25, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !52, line: 692, column: 25)
!1475 = distinct !DILexicalBlock(scope: !1448, file: !52, line: 692, column: 25)
!1476 = !DILocation(line: 692, column: 25, scope: !1475)
!1477 = !DILocation(line: 693, column: 38, scope: !1448)
!1478 = !DILocation(line: 693, column: 33, scope: !1448)
!1479 = !DILocation(line: 694, column: 23, scope: !1448)
!1480 = !DILocation(line: 695, column: 30, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1442, file: !52, line: 695, column: 30)
!1482 = !DILocation(line: 695, column: 30, scope: !1442)
!1483 = !DILocation(line: 697, column: 25, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !52, line: 697, column: 25)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !52, line: 697, column: 25)
!1486 = distinct !DILexicalBlock(scope: !1481, file: !52, line: 696, column: 23)
!1487 = !DILocation(line: 697, column: 25, scope: !1485)
!1488 = !DILocation(line: 699, column: 23, scope: !1486)
!1489 = !DILocation(line: 700, column: 35, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1443, file: !52, line: 700, column: 25)
!1491 = !DILocation(line: 700, column: 30, scope: !1490)
!1492 = !DILocation(line: 700, column: 25, scope: !1443)
!1493 = !DILocation(line: 702, column: 21, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !52, line: 702, column: 21)
!1495 = distinct !DILexicalBlock(scope: !1443, file: !52, line: 702, column: 21)
!1496 = !DILocation(line: 702, column: 21, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !52, line: 702, column: 21)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !52, line: 702, column: 21)
!1499 = distinct !DILexicalBlock(scope: !1494, file: !52, line: 702, column: 21)
!1500 = !DILocation(line: 702, column: 21, scope: !1498)
!1501 = !DILocation(line: 702, column: 21, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !52, line: 702, column: 21)
!1503 = distinct !DILexicalBlock(scope: !1499, file: !52, line: 702, column: 21)
!1504 = !DILocation(line: 702, column: 21, scope: !1503)
!1505 = !DILocation(line: 702, column: 21, scope: !1499)
!1506 = !DILocation(line: 0, scope: !1443)
!1507 = !DILocation(line: 703, column: 21, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !52, line: 703, column: 21)
!1509 = distinct !DILexicalBlock(scope: !1443, file: !52, line: 703, column: 21)
!1510 = !DILocation(line: 703, column: 21, scope: !1509)
!1511 = !DILocation(line: 704, column: 25, scope: !1443)
!1512 = !DILocation(line: 686, column: 17, scope: !1444)
!1513 = distinct !{!1513, !1514, !1515}
!1514 = !DILocation(line: 686, column: 17, scope: !1445)
!1515 = !DILocation(line: 705, column: 19, scope: !1445)
!1516 = !DILocation(line: 416, column: 30, scope: !1235)
!1517 = !DILocation(line: 712, column: 34, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1116, file: !52, line: 712, column: 11)
!1519 = !DILocation(line: 715, column: 35, scope: !1518)
!1520 = !DILocation(line: 715, column: 17, scope: !1518)
!1521 = !DILocation(line: 715, column: 47, scope: !1518)
!1522 = !DILocation(line: 715, column: 65, scope: !1518)
!1523 = !DILocation(line: 716, column: 11, scope: !1518)
!1524 = !DILocation(line: 712, column: 11, scope: !1116)
!1525 = !DILocation(line: 400, column: 10, scope: !1118)
!1526 = !DILocation(line: 719, column: 5, scope: !1116)
!1527 = !DILocation(line: 720, column: 7, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1116, file: !52, line: 720, column: 7)
!1529 = !DILocation(line: 720, column: 7, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1528, file: !52, line: 720, column: 7)
!1531 = !DILocation(line: 720, column: 7, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !52, line: 720, column: 7)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !52, line: 720, column: 7)
!1534 = distinct !DILexicalBlock(scope: !1530, file: !52, line: 720, column: 7)
!1535 = !DILocation(line: 720, column: 7, scope: !1533)
!1536 = !DILocation(line: 720, column: 7, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !52, line: 720, column: 7)
!1538 = distinct !DILexicalBlock(scope: !1534, file: !52, line: 720, column: 7)
!1539 = !DILocation(line: 720, column: 7, scope: !1538)
!1540 = !DILocation(line: 720, column: 7, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !52, line: 720, column: 7)
!1542 = distinct !DILexicalBlock(scope: !1534, file: !52, line: 720, column: 7)
!1543 = !DILocation(line: 720, column: 7, scope: !1542)
!1544 = !DILocation(line: 720, column: 7, scope: !1534)
!1545 = !DILocation(line: 720, column: 7, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !52, line: 720, column: 7)
!1547 = distinct !DILexicalBlock(scope: !1528, file: !52, line: 720, column: 7)
!1548 = !DILocation(line: 720, column: 7, scope: !1547)
!1549 = !DILocation(line: 722, column: 5, scope: !1116)
!1550 = !DILocation(line: 723, column: 7, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !52, line: 723, column: 7)
!1552 = distinct !DILexicalBlock(scope: !1116, file: !52, line: 723, column: 7)
!1553 = !DILocation(line: 424, column: 9, scope: !1116)
!1554 = !DILocation(line: 723, column: 7, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !52, line: 723, column: 7)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !52, line: 723, column: 7)
!1557 = distinct !DILexicalBlock(scope: !1551, file: !52, line: 723, column: 7)
!1558 = !DILocation(line: 723, column: 7, scope: !1556)
!1559 = !DILocation(line: 723, column: 7, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !52, line: 723, column: 7)
!1561 = distinct !DILexicalBlock(scope: !1557, file: !52, line: 723, column: 7)
!1562 = !DILocation(line: 723, column: 7, scope: !1561)
!1563 = !DILocation(line: 723, column: 7, scope: !1557)
!1564 = !DILocation(line: 724, column: 7, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !52, line: 724, column: 7)
!1566 = distinct !DILexicalBlock(scope: !1116, file: !52, line: 724, column: 7)
!1567 = !DILocation(line: 724, column: 7, scope: !1566)
!1568 = !DILocation(line: 726, column: 13, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1116, file: !52, line: 726, column: 11)
!1570 = !DILocation(line: 726, column: 11, scope: !1116)
!1571 = !DILocation(line: 728, column: 5, scope: !1117)
!1572 = !DILocation(line: 400, column: 75, scope: !1117)
!1573 = !DILocation(line: 400, column: 3, scope: !1117)
!1574 = distinct !{!1574, !1231, !1575, !638}
!1575 = !DILocation(line: 728, column: 5, scope: !1118)
!1576 = !DILocation(line: 730, column: 11, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1089, file: !52, line: 730, column: 7)
!1578 = !DILocation(line: 730, column: 16, scope: !1577)
!1579 = !DILocation(line: 738, column: 51, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1089, file: !52, line: 738, column: 7)
!1581 = !DILocation(line: 741, column: 11, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !52, line: 741, column: 11)
!1583 = distinct !DILexicalBlock(scope: !1580, file: !52, line: 740, column: 5)
!1584 = !DILocation(line: 741, column: 11, scope: !1583)
!1585 = !DILocation(line: 742, column: 16, scope: !1582)
!1586 = !DILocation(line: 742, column: 9, scope: !1582)
!1587 = !DILocation(line: 746, column: 18, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1582, file: !52, line: 746, column: 16)
!1589 = !DILocation(line: 746, column: 29, scope: !1588)
!1590 = !DILocation(line: 755, column: 7, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1089, file: !52, line: 755, column: 7)
!1592 = !DILocation(line: 755, column: 20, scope: !1591)
!1593 = !DILocation(line: 756, column: 12, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !52, line: 756, column: 5)
!1595 = distinct !DILexicalBlock(scope: !1591, file: !52, line: 756, column: 5)
!1596 = !DILocation(line: 756, column: 5, scope: !1595)
!1597 = !DILocation(line: 757, column: 7, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !52, line: 757, column: 7)
!1599 = distinct !DILexicalBlock(scope: !1594, file: !52, line: 757, column: 7)
!1600 = !DILocation(line: 757, column: 7, scope: !1599)
!1601 = !DILocation(line: 756, column: 39, scope: !1594)
!1602 = distinct !{!1602, !1596, !1603, !638}
!1603 = !DILocation(line: 757, column: 7, scope: !1595)
!1604 = !DILocation(line: 759, column: 11, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1089, file: !52, line: 759, column: 7)
!1606 = !DILocation(line: 759, column: 7, scope: !1089)
!1607 = !DILocation(line: 760, column: 5, scope: !1605)
!1608 = !DILocation(line: 760, column: 17, scope: !1605)
!1609 = !DILocation(line: 763, column: 2, scope: !1089)
!1610 = !DILocation(line: 766, column: 51, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1089, file: !52, line: 766, column: 7)
!1612 = !DILocation(line: 766, column: 21, scope: !1611)
!1613 = !DILocation(line: 770, column: 42, scope: !1089)
!1614 = !DILocation(line: 768, column: 10, scope: !1089)
!1615 = !DILocation(line: 768, column: 3, scope: !1089)
!1616 = !DILocation(line: 772, column: 1, scope: !1089)
!1617 = distinct !DISubprogram(name: "gettext_quote", scope: !52, file: !52, line: 207, type: !1618, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1620)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!6, !6, !54}
!1620 = !{!1621, !1622, !1623, !1624}
!1621 = !DILocalVariable(name: "msgid", arg: 1, scope: !1617, file: !52, line: 207, type: !6)
!1622 = !DILocalVariable(name: "s", arg: 2, scope: !1617, file: !52, line: 207, type: !54)
!1623 = !DILocalVariable(name: "translation", scope: !1617, file: !52, line: 209, type: !6)
!1624 = !DILocalVariable(name: "locale_code", scope: !1617, file: !52, line: 210, type: !6)
!1625 = !DILocation(line: 0, scope: !1617)
!1626 = !DILocation(line: 209, column: 29, scope: !1617)
!1627 = !DILocation(line: 212, column: 19, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1617, file: !52, line: 212, column: 7)
!1629 = !DILocation(line: 212, column: 7, scope: !1617)
!1630 = !DILocation(line: 233, column: 17, scope: !1617)
!1631 = !DILocalVariable(name: "s1", arg: 1, scope: !1632, file: !1633, line: 160, type: !6)
!1632 = distinct !DISubprogram(name: "strcaseeq0", scope: !1633, file: !1633, line: 160, type: !1634, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1636)
!1633 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1636 = !{!1631, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646}
!1637 = !DILocalVariable(name: "s2", arg: 2, scope: !1632, file: !1633, line: 160, type: !6)
!1638 = !DILocalVariable(name: "s20", arg: 3, scope: !1632, file: !1633, line: 160, type: !8)
!1639 = !DILocalVariable(name: "s21", arg: 4, scope: !1632, file: !1633, line: 160, type: !8)
!1640 = !DILocalVariable(name: "s22", arg: 5, scope: !1632, file: !1633, line: 160, type: !8)
!1641 = !DILocalVariable(name: "s23", arg: 6, scope: !1632, file: !1633, line: 160, type: !8)
!1642 = !DILocalVariable(name: "s24", arg: 7, scope: !1632, file: !1633, line: 160, type: !8)
!1643 = !DILocalVariable(name: "s25", arg: 8, scope: !1632, file: !1633, line: 160, type: !8)
!1644 = !DILocalVariable(name: "s26", arg: 9, scope: !1632, file: !1633, line: 160, type: !8)
!1645 = !DILocalVariable(name: "s27", arg: 10, scope: !1632, file: !1633, line: 160, type: !8)
!1646 = !DILocalVariable(name: "s28", arg: 11, scope: !1632, file: !1633, line: 160, type: !8)
!1647 = !DILocation(line: 0, scope: !1632, inlinedAt: !1648)
!1648 = distinct !DILocation(line: 234, column: 7, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1617, file: !52, line: 234, column: 7)
!1650 = !DILocation(line: 162, column: 7, scope: !1651, inlinedAt: !1648)
!1651 = distinct !DILexicalBlock(scope: !1632, file: !1633, line: 162, column: 7)
!1652 = !DILocalVariable(name: "s1", arg: 1, scope: !1653, file: !1633, line: 146, type: !6)
!1653 = distinct !DISubprogram(name: "strcaseeq1", scope: !1633, file: !1633, line: 146, type: !1654, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1656)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1656 = !{!1652, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665}
!1657 = !DILocalVariable(name: "s2", arg: 2, scope: !1653, file: !1633, line: 146, type: !6)
!1658 = !DILocalVariable(name: "s21", arg: 3, scope: !1653, file: !1633, line: 146, type: !8)
!1659 = !DILocalVariable(name: "s22", arg: 4, scope: !1653, file: !1633, line: 146, type: !8)
!1660 = !DILocalVariable(name: "s23", arg: 5, scope: !1653, file: !1633, line: 146, type: !8)
!1661 = !DILocalVariable(name: "s24", arg: 6, scope: !1653, file: !1633, line: 146, type: !8)
!1662 = !DILocalVariable(name: "s25", arg: 7, scope: !1653, file: !1633, line: 146, type: !8)
!1663 = !DILocalVariable(name: "s26", arg: 8, scope: !1653, file: !1633, line: 146, type: !8)
!1664 = !DILocalVariable(name: "s27", arg: 9, scope: !1653, file: !1633, line: 146, type: !8)
!1665 = !DILocalVariable(name: "s28", arg: 10, scope: !1653, file: !1633, line: 146, type: !8)
!1666 = !DILocation(line: 0, scope: !1653, inlinedAt: !1667)
!1667 = distinct !DILocation(line: 167, column: 16, scope: !1668, inlinedAt: !1648)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !1633, line: 164, column: 11)
!1669 = distinct !DILexicalBlock(scope: !1651, file: !1633, line: 163, column: 5)
!1670 = !DILocation(line: 148, column: 7, scope: !1671, inlinedAt: !1667)
!1671 = distinct !DILexicalBlock(scope: !1653, file: !1633, line: 148, column: 7)
!1672 = !DILocalVariable(name: "s1", arg: 1, scope: !1673, file: !1633, line: 132, type: !6)
!1673 = distinct !DISubprogram(name: "strcaseeq2", scope: !1633, file: !1633, line: 132, type: !1674, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1676)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1676 = !{!1672, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684}
!1677 = !DILocalVariable(name: "s2", arg: 2, scope: !1673, file: !1633, line: 132, type: !6)
!1678 = !DILocalVariable(name: "s22", arg: 3, scope: !1673, file: !1633, line: 132, type: !8)
!1679 = !DILocalVariable(name: "s23", arg: 4, scope: !1673, file: !1633, line: 132, type: !8)
!1680 = !DILocalVariable(name: "s24", arg: 5, scope: !1673, file: !1633, line: 132, type: !8)
!1681 = !DILocalVariable(name: "s25", arg: 6, scope: !1673, file: !1633, line: 132, type: !8)
!1682 = !DILocalVariable(name: "s26", arg: 7, scope: !1673, file: !1633, line: 132, type: !8)
!1683 = !DILocalVariable(name: "s27", arg: 8, scope: !1673, file: !1633, line: 132, type: !8)
!1684 = !DILocalVariable(name: "s28", arg: 9, scope: !1673, file: !1633, line: 132, type: !8)
!1685 = !DILocation(line: 0, scope: !1673, inlinedAt: !1686)
!1686 = distinct !DILocation(line: 153, column: 16, scope: !1687, inlinedAt: !1667)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !1633, line: 150, column: 11)
!1688 = distinct !DILexicalBlock(scope: !1671, file: !1633, line: 149, column: 5)
!1689 = !DILocation(line: 134, column: 7, scope: !1690, inlinedAt: !1686)
!1690 = distinct !DILexicalBlock(scope: !1673, file: !1633, line: 134, column: 7)
!1691 = !DILocalVariable(name: "s1", arg: 1, scope: !1692, file: !1633, line: 118, type: !6)
!1692 = distinct !DISubprogram(name: "strcaseeq3", scope: !1633, file: !1633, line: 118, type: !1693, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1695)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8}
!1695 = !{!1691, !1696, !1697, !1698, !1699, !1700, !1701, !1702}
!1696 = !DILocalVariable(name: "s2", arg: 2, scope: !1692, file: !1633, line: 118, type: !6)
!1697 = !DILocalVariable(name: "s23", arg: 3, scope: !1692, file: !1633, line: 118, type: !8)
!1698 = !DILocalVariable(name: "s24", arg: 4, scope: !1692, file: !1633, line: 118, type: !8)
!1699 = !DILocalVariable(name: "s25", arg: 5, scope: !1692, file: !1633, line: 118, type: !8)
!1700 = !DILocalVariable(name: "s26", arg: 6, scope: !1692, file: !1633, line: 118, type: !8)
!1701 = !DILocalVariable(name: "s27", arg: 7, scope: !1692, file: !1633, line: 118, type: !8)
!1702 = !DILocalVariable(name: "s28", arg: 8, scope: !1692, file: !1633, line: 118, type: !8)
!1703 = !DILocation(line: 0, scope: !1692, inlinedAt: !1704)
!1704 = distinct !DILocation(line: 139, column: 16, scope: !1705, inlinedAt: !1686)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !1633, line: 136, column: 11)
!1706 = distinct !DILexicalBlock(scope: !1690, file: !1633, line: 135, column: 5)
!1707 = !DILocation(line: 120, column: 7, scope: !1708, inlinedAt: !1704)
!1708 = distinct !DILexicalBlock(scope: !1692, file: !1633, line: 120, column: 7)
!1709 = !DILocation(line: 120, column: 7, scope: !1692, inlinedAt: !1704)
!1710 = !DILocalVariable(name: "s1", arg: 1, scope: !1711, file: !1633, line: 104, type: !6)
!1711 = distinct !DISubprogram(name: "strcaseeq4", scope: !1633, file: !1633, line: 104, type: !1712, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1714)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!23, !6, !6, !8, !8, !8, !8, !8}
!1714 = !{!1710, !1715, !1716, !1717, !1718, !1719, !1720}
!1715 = !DILocalVariable(name: "s2", arg: 2, scope: !1711, file: !1633, line: 104, type: !6)
!1716 = !DILocalVariable(name: "s24", arg: 3, scope: !1711, file: !1633, line: 104, type: !8)
!1717 = !DILocalVariable(name: "s25", arg: 4, scope: !1711, file: !1633, line: 104, type: !8)
!1718 = !DILocalVariable(name: "s26", arg: 5, scope: !1711, file: !1633, line: 104, type: !8)
!1719 = !DILocalVariable(name: "s27", arg: 6, scope: !1711, file: !1633, line: 104, type: !8)
!1720 = !DILocalVariable(name: "s28", arg: 7, scope: !1711, file: !1633, line: 104, type: !8)
!1721 = !DILocation(line: 0, scope: !1711, inlinedAt: !1722)
!1722 = distinct !DILocation(line: 125, column: 16, scope: !1723, inlinedAt: !1704)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !1633, line: 122, column: 11)
!1724 = distinct !DILexicalBlock(scope: !1708, file: !1633, line: 121, column: 5)
!1725 = !DILocation(line: 106, column: 7, scope: !1726, inlinedAt: !1722)
!1726 = distinct !DILexicalBlock(scope: !1711, file: !1633, line: 106, column: 7)
!1727 = !DILocation(line: 106, column: 7, scope: !1711, inlinedAt: !1722)
!1728 = !DILocalVariable(name: "s1", arg: 1, scope: !1729, file: !1633, line: 90, type: !6)
!1729 = distinct !DISubprogram(name: "strcaseeq5", scope: !1633, file: !1633, line: 90, type: !1730, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1732)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!23, !6, !6, !8, !8, !8, !8}
!1732 = !{!1728, !1733, !1734, !1735, !1736, !1737}
!1733 = !DILocalVariable(name: "s2", arg: 2, scope: !1729, file: !1633, line: 90, type: !6)
!1734 = !DILocalVariable(name: "s25", arg: 3, scope: !1729, file: !1633, line: 90, type: !8)
!1735 = !DILocalVariable(name: "s26", arg: 4, scope: !1729, file: !1633, line: 90, type: !8)
!1736 = !DILocalVariable(name: "s27", arg: 5, scope: !1729, file: !1633, line: 90, type: !8)
!1737 = !DILocalVariable(name: "s28", arg: 6, scope: !1729, file: !1633, line: 90, type: !8)
!1738 = !DILocation(line: 0, scope: !1729, inlinedAt: !1739)
!1739 = distinct !DILocation(line: 111, column: 16, scope: !1740, inlinedAt: !1722)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !1633, line: 108, column: 11)
!1741 = distinct !DILexicalBlock(scope: !1726, file: !1633, line: 107, column: 5)
!1742 = !DILocation(line: 92, column: 7, scope: !1743, inlinedAt: !1739)
!1743 = distinct !DILexicalBlock(scope: !1729, file: !1633, line: 92, column: 7)
!1744 = !DILocation(line: 92, column: 7, scope: !1729, inlinedAt: !1739)
!1745 = !DILocation(line: 235, column: 12, scope: !1649)
!1746 = !DILocation(line: 235, column: 21, scope: !1649)
!1747 = !DILocation(line: 235, column: 5, scope: !1649)
!1748 = !DILocation(line: 0, scope: !1653, inlinedAt: !1749)
!1749 = distinct !DILocation(line: 167, column: 16, scope: !1668, inlinedAt: !1750)
!1750 = distinct !DILocation(line: 236, column: 7, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1617, file: !52, line: 236, column: 7)
!1752 = !DILocation(line: 148, column: 7, scope: !1671, inlinedAt: !1749)
!1753 = !DILocation(line: 0, scope: !1673, inlinedAt: !1754)
!1754 = distinct !DILocation(line: 153, column: 16, scope: !1687, inlinedAt: !1749)
!1755 = !DILocation(line: 134, column: 7, scope: !1690, inlinedAt: !1754)
!1756 = !DILocation(line: 134, column: 7, scope: !1673, inlinedAt: !1754)
!1757 = !DILocation(line: 0, scope: !1692, inlinedAt: !1758)
!1758 = distinct !DILocation(line: 139, column: 16, scope: !1705, inlinedAt: !1754)
!1759 = !DILocation(line: 120, column: 7, scope: !1708, inlinedAt: !1758)
!1760 = !DILocation(line: 120, column: 7, scope: !1692, inlinedAt: !1758)
!1761 = !DILocation(line: 0, scope: !1711, inlinedAt: !1762)
!1762 = distinct !DILocation(line: 125, column: 16, scope: !1723, inlinedAt: !1758)
!1763 = !DILocation(line: 106, column: 7, scope: !1726, inlinedAt: !1762)
!1764 = !DILocation(line: 106, column: 7, scope: !1711, inlinedAt: !1762)
!1765 = !DILocation(line: 0, scope: !1729, inlinedAt: !1766)
!1766 = distinct !DILocation(line: 111, column: 16, scope: !1740, inlinedAt: !1762)
!1767 = !DILocation(line: 92, column: 7, scope: !1743, inlinedAt: !1766)
!1768 = !DILocation(line: 92, column: 7, scope: !1729, inlinedAt: !1766)
!1769 = !DILocalVariable(name: "s1", arg: 1, scope: !1770, file: !1633, line: 76, type: !6)
!1770 = distinct !DISubprogram(name: "strcaseeq6", scope: !1633, file: !1633, line: 76, type: !1771, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1773)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!23, !6, !6, !8, !8, !8}
!1773 = !{!1769, !1774, !1775, !1776, !1777}
!1774 = !DILocalVariable(name: "s2", arg: 2, scope: !1770, file: !1633, line: 76, type: !6)
!1775 = !DILocalVariable(name: "s26", arg: 3, scope: !1770, file: !1633, line: 76, type: !8)
!1776 = !DILocalVariable(name: "s27", arg: 4, scope: !1770, file: !1633, line: 76, type: !8)
!1777 = !DILocalVariable(name: "s28", arg: 5, scope: !1770, file: !1633, line: 76, type: !8)
!1778 = !DILocation(line: 0, scope: !1770, inlinedAt: !1779)
!1779 = distinct !DILocation(line: 97, column: 16, scope: !1780, inlinedAt: !1766)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !1633, line: 94, column: 11)
!1781 = distinct !DILexicalBlock(scope: !1743, file: !1633, line: 93, column: 5)
!1782 = !DILocation(line: 78, column: 7, scope: !1783, inlinedAt: !1779)
!1783 = distinct !DILexicalBlock(scope: !1770, file: !1633, line: 78, column: 7)
!1784 = !DILocation(line: 78, column: 7, scope: !1770, inlinedAt: !1779)
!1785 = !DILocalVariable(name: "s1", arg: 1, scope: !1786, file: !1633, line: 62, type: !6)
!1786 = distinct !DISubprogram(name: "strcaseeq7", scope: !1633, file: !1633, line: 62, type: !1787, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1789)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!23, !6, !6, !8, !8}
!1789 = !{!1785, !1790, !1791, !1792}
!1790 = !DILocalVariable(name: "s2", arg: 2, scope: !1786, file: !1633, line: 62, type: !6)
!1791 = !DILocalVariable(name: "s27", arg: 3, scope: !1786, file: !1633, line: 62, type: !8)
!1792 = !DILocalVariable(name: "s28", arg: 4, scope: !1786, file: !1633, line: 62, type: !8)
!1793 = !DILocation(line: 0, scope: !1786, inlinedAt: !1794)
!1794 = distinct !DILocation(line: 83, column: 16, scope: !1795, inlinedAt: !1779)
!1795 = distinct !DILexicalBlock(scope: !1796, file: !1633, line: 80, column: 11)
!1796 = distinct !DILexicalBlock(scope: !1783, file: !1633, line: 79, column: 5)
!1797 = !DILocation(line: 64, column: 7, scope: !1798, inlinedAt: !1794)
!1798 = distinct !DILexicalBlock(scope: !1786, file: !1633, line: 64, column: 7)
!1799 = !DILocation(line: 236, column: 7, scope: !1617)
!1800 = !DILocation(line: 237, column: 12, scope: !1751)
!1801 = !DILocation(line: 237, column: 21, scope: !1751)
!1802 = !DILocation(line: 237, column: 5, scope: !1751)
!1803 = !DILocation(line: 239, column: 13, scope: !1617)
!1804 = !DILocation(line: 239, column: 11, scope: !1617)
!1805 = !DILocation(line: 239, column: 3, scope: !1617)
!1806 = !DILocation(line: 240, column: 1, scope: !1617)
!1807 = !DISubprogram(name: "iswprint", scope: !1808, file: !1808, line: 120, type: !1809, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1808 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!23, !56}
!1811 = !DISubprogram(name: "mbsinit", scope: !1812, file: !1812, line: 292, type: !1813, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1812 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!1813 = !DISubroutineType(types: !1814)
!1814 = !{!23, !1815}
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1134)
!1817 = distinct !DISubprogram(name: "quotearg_alloc", scope: !52, file: !52, line: 799, type: !1818, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1820)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!47, !6, !91, !980}
!1820 = !{!1821, !1822, !1823}
!1821 = !DILocalVariable(name: "arg", arg: 1, scope: !1817, file: !52, line: 799, type: !6)
!1822 = !DILocalVariable(name: "argsize", arg: 2, scope: !1817, file: !52, line: 799, type: !91)
!1823 = !DILocalVariable(name: "o", arg: 3, scope: !1817, file: !52, line: 800, type: !980)
!1824 = !DILocation(line: 0, scope: !1817)
!1825 = !DILocalVariable(name: "arg", arg: 1, scope: !1826, file: !52, line: 812, type: !6)
!1826 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !52, file: !52, line: 812, type: !1827, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1829)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!47, !6, !91, !162, !980}
!1829 = !{!1825, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837}
!1830 = !DILocalVariable(name: "argsize", arg: 2, scope: !1826, file: !52, line: 812, type: !91)
!1831 = !DILocalVariable(name: "size", arg: 3, scope: !1826, file: !52, line: 812, type: !162)
!1832 = !DILocalVariable(name: "o", arg: 4, scope: !1826, file: !52, line: 813, type: !980)
!1833 = !DILocalVariable(name: "p", scope: !1826, file: !52, line: 815, type: !980)
!1834 = !DILocalVariable(name: "e", scope: !1826, file: !52, line: 816, type: !23)
!1835 = !DILocalVariable(name: "flags", scope: !1826, file: !52, line: 818, type: !23)
!1836 = !DILocalVariable(name: "bufsize", scope: !1826, file: !52, line: 819, type: !91)
!1837 = !DILocalVariable(name: "buf", scope: !1826, file: !52, line: 823, type: !47)
!1838 = !DILocation(line: 0, scope: !1826, inlinedAt: !1839)
!1839 = distinct !DILocation(line: 802, column: 10, scope: !1817)
!1840 = !DILocation(line: 815, column: 37, scope: !1826, inlinedAt: !1839)
!1841 = !DILocation(line: 816, column: 11, scope: !1826, inlinedAt: !1839)
!1842 = !DILocation(line: 818, column: 18, scope: !1826, inlinedAt: !1839)
!1843 = !DILocation(line: 818, column: 24, scope: !1826, inlinedAt: !1839)
!1844 = !DILocation(line: 819, column: 69, scope: !1826, inlinedAt: !1839)
!1845 = !DILocation(line: 820, column: 53, scope: !1826, inlinedAt: !1839)
!1846 = !DILocation(line: 821, column: 49, scope: !1826, inlinedAt: !1839)
!1847 = !DILocation(line: 822, column: 49, scope: !1826, inlinedAt: !1839)
!1848 = !DILocation(line: 819, column: 20, scope: !1826, inlinedAt: !1839)
!1849 = !DILocation(line: 822, column: 62, scope: !1826, inlinedAt: !1839)
!1850 = !DILocalVariable(name: "n", arg: 1, scope: !1851, file: !158, line: 216, type: !91)
!1851 = distinct !DISubprogram(name: "xcharalloc", scope: !158, file: !158, line: 216, type: !1852, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1854)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!47, !91}
!1854 = !{!1850}
!1855 = !DILocation(line: 0, scope: !1851, inlinedAt: !1856)
!1856 = distinct !DILocation(line: 823, column: 15, scope: !1826, inlinedAt: !1839)
!1857 = !DILocation(line: 218, column: 10, scope: !1851, inlinedAt: !1856)
!1858 = !DILocation(line: 824, column: 60, scope: !1826, inlinedAt: !1839)
!1859 = !DILocation(line: 826, column: 32, scope: !1826, inlinedAt: !1839)
!1860 = !DILocation(line: 826, column: 47, scope: !1826, inlinedAt: !1839)
!1861 = !DILocation(line: 824, column: 3, scope: !1826, inlinedAt: !1839)
!1862 = !DILocation(line: 827, column: 9, scope: !1826, inlinedAt: !1839)
!1863 = !DILocation(line: 802, column: 3, scope: !1817)
!1864 = !DILocation(line: 0, scope: !1826)
!1865 = !DILocation(line: 815, column: 37, scope: !1826)
!1866 = !DILocation(line: 816, column: 11, scope: !1826)
!1867 = !DILocation(line: 818, column: 18, scope: !1826)
!1868 = !DILocation(line: 818, column: 27, scope: !1826)
!1869 = !DILocation(line: 818, column: 24, scope: !1826)
!1870 = !DILocation(line: 819, column: 69, scope: !1826)
!1871 = !DILocation(line: 820, column: 53, scope: !1826)
!1872 = !DILocation(line: 821, column: 49, scope: !1826)
!1873 = !DILocation(line: 822, column: 49, scope: !1826)
!1874 = !DILocation(line: 819, column: 20, scope: !1826)
!1875 = !DILocation(line: 822, column: 62, scope: !1826)
!1876 = !DILocation(line: 0, scope: !1851, inlinedAt: !1877)
!1877 = distinct !DILocation(line: 823, column: 15, scope: !1826)
!1878 = !DILocation(line: 218, column: 10, scope: !1851, inlinedAt: !1877)
!1879 = !DILocation(line: 824, column: 60, scope: !1826)
!1880 = !DILocation(line: 826, column: 32, scope: !1826)
!1881 = !DILocation(line: 826, column: 47, scope: !1826)
!1882 = !DILocation(line: 824, column: 3, scope: !1826)
!1883 = !DILocation(line: 827, column: 9, scope: !1826)
!1884 = !DILocation(line: 828, column: 7, scope: !1826)
!1885 = !DILocation(line: 829, column: 11, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1826, file: !52, line: 828, column: 7)
!1887 = !{!1888, !1888, i64 0}
!1888 = !{!"long", !598, i64 0}
!1889 = !DILocation(line: 829, column: 5, scope: !1886)
!1890 = !DILocation(line: 830, column: 3, scope: !1826)
!1891 = distinct !DISubprogram(name: "quotearg_free", scope: !52, file: !52, line: 848, type: !778, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1892)
!1892 = !{!1893, !1894}
!1893 = !DILocalVariable(name: "sv", scope: !1891, file: !52, line: 850, type: !122)
!1894 = !DILocalVariable(name: "i", scope: !1891, file: !52, line: 851, type: !23)
!1895 = !DILocation(line: 850, column: 24, scope: !1891)
!1896 = !DILocation(line: 0, scope: !1891)
!1897 = !DILocation(line: 852, column: 19, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !52, line: 852, column: 3)
!1899 = distinct !DILexicalBlock(scope: !1891, file: !52, line: 852, column: 3)
!1900 = !DILocation(line: 852, column: 17, scope: !1898)
!1901 = !DILocation(line: 852, column: 3, scope: !1899)
!1902 = !DILocation(line: 853, column: 17, scope: !1898)
!1903 = !{!1904, !597, i64 8}
!1904 = !{!"slotvec", !1888, i64 0, !597, i64 8}
!1905 = !DILocation(line: 853, column: 5, scope: !1898)
!1906 = !DILocation(line: 852, column: 28, scope: !1898)
!1907 = distinct !{!1907, !1901, !1908, !638}
!1908 = !DILocation(line: 853, column: 20, scope: !1899)
!1909 = !DILocation(line: 854, column: 13, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1891, file: !52, line: 854, column: 7)
!1911 = !DILocation(line: 854, column: 17, scope: !1910)
!1912 = !DILocation(line: 854, column: 7, scope: !1891)
!1913 = !DILocation(line: 856, column: 7, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1910, file: !52, line: 855, column: 5)
!1915 = !DILocation(line: 857, column: 21, scope: !1914)
!1916 = !{!1904, !1888, i64 0}
!1917 = !DILocation(line: 858, column: 20, scope: !1914)
!1918 = !DILocation(line: 859, column: 5, scope: !1914)
!1919 = !DILocation(line: 860, column: 10, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1891, file: !52, line: 860, column: 7)
!1921 = !DILocation(line: 860, column: 7, scope: !1891)
!1922 = !DILocation(line: 862, column: 13, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1920, file: !52, line: 861, column: 5)
!1924 = !DILocation(line: 862, column: 7, scope: !1923)
!1925 = !DILocation(line: 863, column: 15, scope: !1923)
!1926 = !DILocation(line: 864, column: 5, scope: !1923)
!1927 = !DILocation(line: 865, column: 10, scope: !1891)
!1928 = !DILocation(line: 866, column: 1, scope: !1891)
!1929 = distinct !DISubprogram(name: "quotearg_n", scope: !52, file: !52, line: 931, type: !720, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1930)
!1930 = !{!1931, !1932}
!1931 = !DILocalVariable(name: "n", arg: 1, scope: !1929, file: !52, line: 931, type: !23)
!1932 = !DILocalVariable(name: "arg", arg: 2, scope: !1929, file: !52, line: 931, type: !6)
!1933 = !DILocation(line: 0, scope: !1929)
!1934 = !DILocation(line: 933, column: 10, scope: !1929)
!1935 = !DILocation(line: 933, column: 3, scope: !1929)
!1936 = distinct !DISubprogram(name: "quotearg_n_options", scope: !52, file: !52, line: 877, type: !1937, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1939)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!47, !23, !6, !91, !980}
!1939 = !{!1940, !1941, !1942, !1943, !1944, !1945, !1946, !1949, !1950, !1952, !1953, !1954}
!1940 = !DILocalVariable(name: "n", arg: 1, scope: !1936, file: !52, line: 877, type: !23)
!1941 = !DILocalVariable(name: "arg", arg: 2, scope: !1936, file: !52, line: 877, type: !6)
!1942 = !DILocalVariable(name: "argsize", arg: 3, scope: !1936, file: !52, line: 877, type: !91)
!1943 = !DILocalVariable(name: "options", arg: 4, scope: !1936, file: !52, line: 878, type: !980)
!1944 = !DILocalVariable(name: "e", scope: !1936, file: !52, line: 880, type: !23)
!1945 = !DILocalVariable(name: "sv", scope: !1936, file: !52, line: 882, type: !122)
!1946 = !DILocalVariable(name: "preallocated", scope: !1947, file: !52, line: 889, type: !16)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !52, line: 888, column: 5)
!1948 = distinct !DILexicalBlock(scope: !1936, file: !52, line: 887, column: 7)
!1949 = !DILocalVariable(name: "nmax", scope: !1947, file: !52, line: 890, type: !23)
!1950 = !DILocalVariable(name: "size", scope: !1951, file: !52, line: 903, type: !91)
!1951 = distinct !DILexicalBlock(scope: !1936, file: !52, line: 902, column: 3)
!1952 = !DILocalVariable(name: "val", scope: !1951, file: !52, line: 904, type: !47)
!1953 = !DILocalVariable(name: "flags", scope: !1951, file: !52, line: 906, type: !23)
!1954 = !DILocalVariable(name: "qsize", scope: !1951, file: !52, line: 907, type: !91)
!1955 = !DILocation(line: 0, scope: !1936)
!1956 = !DILocation(line: 880, column: 11, scope: !1936)
!1957 = !DILocation(line: 882, column: 24, scope: !1936)
!1958 = !DILocation(line: 884, column: 9, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1936, file: !52, line: 884, column: 7)
!1960 = !DILocation(line: 884, column: 7, scope: !1936)
!1961 = !DILocation(line: 885, column: 5, scope: !1959)
!1962 = !DILocation(line: 887, column: 7, scope: !1948)
!1963 = !DILocation(line: 887, column: 14, scope: !1948)
!1964 = !DILocation(line: 887, column: 7, scope: !1936)
!1965 = !DILocation(line: 889, column: 31, scope: !1947)
!1966 = !DILocation(line: 0, scope: !1947)
!1967 = !DILocation(line: 892, column: 16, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1947, file: !52, line: 892, column: 11)
!1969 = !DILocation(line: 892, column: 11, scope: !1947)
!1970 = !DILocation(line: 893, column: 9, scope: !1968)
!1971 = !DILocation(line: 895, column: 32, scope: !1947)
!1972 = !DILocation(line: 895, column: 61, scope: !1947)
!1973 = !DILocation(line: 895, column: 66, scope: !1947)
!1974 = !DILocation(line: 895, column: 22, scope: !1947)
!1975 = !DILocation(line: 895, column: 15, scope: !1947)
!1976 = !DILocation(line: 896, column: 11, scope: !1947)
!1977 = !DILocation(line: 897, column: 15, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1947, file: !52, line: 896, column: 11)
!1979 = !{i64 0, i64 8, !1887, i64 8, i64 8, !596}
!1980 = !DILocation(line: 897, column: 9, scope: !1978)
!1981 = !DILocation(line: 898, column: 20, scope: !1947)
!1982 = !DILocation(line: 898, column: 18, scope: !1947)
!1983 = !DILocation(line: 898, column: 15, scope: !1947)
!1984 = !DILocation(line: 898, column: 38, scope: !1947)
!1985 = !DILocation(line: 898, column: 31, scope: !1947)
!1986 = !DILocation(line: 898, column: 48, scope: !1947)
!1987 = !DILocation(line: 0, scope: !1378, inlinedAt: !1988)
!1988 = distinct !DILocation(line: 898, column: 7, scope: !1947)
!1989 = !DILocation(line: 59, column: 10, scope: !1378, inlinedAt: !1988)
!1990 = !DILocation(line: 899, column: 14, scope: !1947)
!1991 = !DILocation(line: 900, column: 5, scope: !1947)
!1992 = !DILocation(line: 903, column: 19, scope: !1951)
!1993 = !DILocation(line: 903, column: 25, scope: !1951)
!1994 = !DILocation(line: 0, scope: !1951)
!1995 = !DILocation(line: 904, column: 23, scope: !1951)
!1996 = !DILocation(line: 906, column: 26, scope: !1951)
!1997 = !DILocation(line: 906, column: 32, scope: !1951)
!1998 = !DILocation(line: 908, column: 55, scope: !1951)
!1999 = !DILocation(line: 909, column: 46, scope: !1951)
!2000 = !DILocation(line: 910, column: 55, scope: !1951)
!2001 = !DILocation(line: 911, column: 55, scope: !1951)
!2002 = !DILocation(line: 907, column: 20, scope: !1951)
!2003 = !DILocation(line: 913, column: 14, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1951, file: !52, line: 913, column: 9)
!2005 = !DILocation(line: 913, column: 9, scope: !1951)
!2006 = !DILocation(line: 915, column: 35, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2004, file: !52, line: 914, column: 7)
!2008 = !DILocation(line: 915, column: 20, scope: !2007)
!2009 = !DILocation(line: 916, column: 17, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2007, file: !52, line: 916, column: 13)
!2011 = !DILocation(line: 916, column: 13, scope: !2007)
!2012 = !DILocation(line: 917, column: 11, scope: !2010)
!2013 = !DILocation(line: 0, scope: !1851, inlinedAt: !2014)
!2014 = distinct !DILocation(line: 918, column: 27, scope: !2007)
!2015 = !DILocation(line: 218, column: 10, scope: !1851, inlinedAt: !2014)
!2016 = !DILocation(line: 918, column: 19, scope: !2007)
!2017 = !DILocation(line: 919, column: 69, scope: !2007)
!2018 = !DILocation(line: 921, column: 44, scope: !2007)
!2019 = !DILocation(line: 922, column: 44, scope: !2007)
!2020 = !DILocation(line: 919, column: 9, scope: !2007)
!2021 = !DILocation(line: 923, column: 7, scope: !2007)
!2022 = !DILocation(line: 925, column: 11, scope: !1951)
!2023 = !DILocation(line: 926, column: 5, scope: !1951)
!2024 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !52, file: !52, line: 937, type: !2025, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2027)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!47, !23, !6, !91}
!2027 = !{!2028, !2029, !2030}
!2028 = !DILocalVariable(name: "n", arg: 1, scope: !2024, file: !52, line: 937, type: !23)
!2029 = !DILocalVariable(name: "arg", arg: 2, scope: !2024, file: !52, line: 937, type: !6)
!2030 = !DILocalVariable(name: "argsize", arg: 3, scope: !2024, file: !52, line: 937, type: !91)
!2031 = !DILocation(line: 0, scope: !2024)
!2032 = !DILocation(line: 939, column: 10, scope: !2024)
!2033 = !DILocation(line: 939, column: 3, scope: !2024)
!2034 = distinct !DISubprogram(name: "quotearg", scope: !52, file: !52, line: 943, type: !771, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2035)
!2035 = !{!2036}
!2036 = !DILocalVariable(name: "arg", arg: 1, scope: !2034, file: !52, line: 943, type: !6)
!2037 = !DILocation(line: 0, scope: !2034)
!2038 = !DILocation(line: 0, scope: !1929, inlinedAt: !2039)
!2039 = distinct !DILocation(line: 945, column: 10, scope: !2034)
!2040 = !DILocation(line: 933, column: 10, scope: !1929, inlinedAt: !2039)
!2041 = !DILocation(line: 945, column: 3, scope: !2034)
!2042 = distinct !DISubprogram(name: "quotearg_mem", scope: !52, file: !52, line: 949, type: !2043, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2045)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!47, !6, !91}
!2045 = !{!2046, !2047}
!2046 = !DILocalVariable(name: "arg", arg: 1, scope: !2042, file: !52, line: 949, type: !6)
!2047 = !DILocalVariable(name: "argsize", arg: 2, scope: !2042, file: !52, line: 949, type: !91)
!2048 = !DILocation(line: 0, scope: !2042)
!2049 = !DILocation(line: 0, scope: !2024, inlinedAt: !2050)
!2050 = distinct !DILocation(line: 951, column: 10, scope: !2042)
!2051 = !DILocation(line: 939, column: 10, scope: !2024, inlinedAt: !2050)
!2052 = !DILocation(line: 951, column: 3, scope: !2042)
!2053 = distinct !DISubprogram(name: "quotearg_n_style", scope: !52, file: !52, line: 955, type: !2054, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2056)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!47, !23, !54, !6}
!2056 = !{!2057, !2058, !2059, !2060}
!2057 = !DILocalVariable(name: "n", arg: 1, scope: !2053, file: !52, line: 955, type: !23)
!2058 = !DILocalVariable(name: "s", arg: 2, scope: !2053, file: !52, line: 955, type: !54)
!2059 = !DILocalVariable(name: "arg", arg: 3, scope: !2053, file: !52, line: 955, type: !6)
!2060 = !DILocalVariable(name: "o", scope: !2053, file: !52, line: 957, type: !981)
!2061 = !DILocation(line: 0, scope: !2053)
!2062 = !DILocation(line: 957, column: 3, scope: !2053)
!2063 = !DILocation(line: 957, column: 32, scope: !2053)
!2064 = !{!2065}
!2065 = distinct !{!2065, !2066, !"quoting_options_from_style: argument 0"}
!2066 = distinct !{!2066, !"quoting_options_from_style"}
!2067 = !DILocation(line: 957, column: 36, scope: !2053)
!2068 = !DILocalVariable(name: "style", arg: 1, scope: !2069, file: !52, line: 193, type: !54)
!2069 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !52, file: !52, line: 193, type: !2070, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2072)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!103, !54}
!2072 = !{!2068, !2073}
!2073 = !DILocalVariable(name: "o", scope: !2069, file: !52, line: 195, type: !103)
!2074 = !DILocation(line: 0, scope: !2069, inlinedAt: !2075)
!2075 = distinct !DILocation(line: 957, column: 36, scope: !2053)
!2076 = !DILocation(line: 195, column: 26, scope: !2069, inlinedAt: !2075)
!2077 = !DILocation(line: 196, column: 13, scope: !2078, inlinedAt: !2075)
!2078 = distinct !DILexicalBlock(scope: !2069, file: !52, line: 196, column: 7)
!2079 = !DILocation(line: 196, column: 7, scope: !2069, inlinedAt: !2075)
!2080 = !DILocation(line: 197, column: 5, scope: !2078, inlinedAt: !2075)
!2081 = !DILocation(line: 198, column: 5, scope: !2069, inlinedAt: !2075)
!2082 = !DILocation(line: 198, column: 11, scope: !2069, inlinedAt: !2075)
!2083 = !DILocation(line: 958, column: 10, scope: !2053)
!2084 = !DILocation(line: 959, column: 1, scope: !2053)
!2085 = !DILocation(line: 958, column: 3, scope: !2053)
!2086 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !52, file: !52, line: 962, type: !2087, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2089)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!47, !23, !54, !6, !91}
!2089 = !{!2090, !2091, !2092, !2093, !2094}
!2090 = !DILocalVariable(name: "n", arg: 1, scope: !2086, file: !52, line: 962, type: !23)
!2091 = !DILocalVariable(name: "s", arg: 2, scope: !2086, file: !52, line: 962, type: !54)
!2092 = !DILocalVariable(name: "arg", arg: 3, scope: !2086, file: !52, line: 963, type: !6)
!2093 = !DILocalVariable(name: "argsize", arg: 4, scope: !2086, file: !52, line: 963, type: !91)
!2094 = !DILocalVariable(name: "o", scope: !2086, file: !52, line: 965, type: !981)
!2095 = !DILocation(line: 0, scope: !2086)
!2096 = !DILocation(line: 965, column: 3, scope: !2086)
!2097 = !DILocation(line: 965, column: 32, scope: !2086)
!2098 = !{!2099}
!2099 = distinct !{!2099, !2100, !"quoting_options_from_style: argument 0"}
!2100 = distinct !{!2100, !"quoting_options_from_style"}
!2101 = !DILocation(line: 965, column: 36, scope: !2086)
!2102 = !DILocation(line: 0, scope: !2069, inlinedAt: !2103)
!2103 = distinct !DILocation(line: 965, column: 36, scope: !2086)
!2104 = !DILocation(line: 195, column: 26, scope: !2069, inlinedAt: !2103)
!2105 = !DILocation(line: 196, column: 13, scope: !2078, inlinedAt: !2103)
!2106 = !DILocation(line: 196, column: 7, scope: !2069, inlinedAt: !2103)
!2107 = !DILocation(line: 197, column: 5, scope: !2078, inlinedAt: !2103)
!2108 = !DILocation(line: 198, column: 5, scope: !2069, inlinedAt: !2103)
!2109 = !DILocation(line: 198, column: 11, scope: !2069, inlinedAt: !2103)
!2110 = !DILocation(line: 966, column: 10, scope: !2086)
!2111 = !DILocation(line: 967, column: 1, scope: !2086)
!2112 = !DILocation(line: 966, column: 3, scope: !2086)
!2113 = distinct !DISubprogram(name: "quotearg_style", scope: !52, file: !52, line: 970, type: !2114, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2116)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!47, !54, !6}
!2116 = !{!2117, !2118}
!2117 = !DILocalVariable(name: "s", arg: 1, scope: !2113, file: !52, line: 970, type: !54)
!2118 = !DILocalVariable(name: "arg", arg: 2, scope: !2113, file: !52, line: 970, type: !6)
!2119 = !DILocation(line: 0, scope: !2113)
!2120 = !DILocation(line: 0, scope: !2053, inlinedAt: !2121)
!2121 = distinct !DILocation(line: 972, column: 10, scope: !2113)
!2122 = !DILocation(line: 957, column: 3, scope: !2053, inlinedAt: !2121)
!2123 = !DILocation(line: 957, column: 32, scope: !2053, inlinedAt: !2121)
!2124 = !{!2125}
!2125 = distinct !{!2125, !2126, !"quoting_options_from_style: argument 0"}
!2126 = distinct !{!2126, !"quoting_options_from_style"}
!2127 = !DILocation(line: 957, column: 36, scope: !2053, inlinedAt: !2121)
!2128 = !DILocation(line: 0, scope: !2069, inlinedAt: !2129)
!2129 = distinct !DILocation(line: 957, column: 36, scope: !2053, inlinedAt: !2121)
!2130 = !DILocation(line: 195, column: 26, scope: !2069, inlinedAt: !2129)
!2131 = !DILocation(line: 196, column: 13, scope: !2078, inlinedAt: !2129)
!2132 = !DILocation(line: 196, column: 7, scope: !2069, inlinedAt: !2129)
!2133 = !DILocation(line: 197, column: 5, scope: !2078, inlinedAt: !2129)
!2134 = !DILocation(line: 198, column: 5, scope: !2069, inlinedAt: !2129)
!2135 = !DILocation(line: 198, column: 11, scope: !2069, inlinedAt: !2129)
!2136 = !DILocation(line: 958, column: 10, scope: !2053, inlinedAt: !2121)
!2137 = !DILocation(line: 959, column: 1, scope: !2053, inlinedAt: !2121)
!2138 = !DILocation(line: 972, column: 3, scope: !2113)
!2139 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !52, file: !52, line: 976, type: !2140, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2142)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!47, !54, !6, !91}
!2142 = !{!2143, !2144, !2145}
!2143 = !DILocalVariable(name: "s", arg: 1, scope: !2139, file: !52, line: 976, type: !54)
!2144 = !DILocalVariable(name: "arg", arg: 2, scope: !2139, file: !52, line: 976, type: !6)
!2145 = !DILocalVariable(name: "argsize", arg: 3, scope: !2139, file: !52, line: 976, type: !91)
!2146 = !DILocation(line: 0, scope: !2139)
!2147 = !DILocation(line: 0, scope: !2086, inlinedAt: !2148)
!2148 = distinct !DILocation(line: 978, column: 10, scope: !2139)
!2149 = !DILocation(line: 965, column: 3, scope: !2086, inlinedAt: !2148)
!2150 = !DILocation(line: 965, column: 32, scope: !2086, inlinedAt: !2148)
!2151 = !{!2152}
!2152 = distinct !{!2152, !2153, !"quoting_options_from_style: argument 0"}
!2153 = distinct !{!2153, !"quoting_options_from_style"}
!2154 = !DILocation(line: 965, column: 36, scope: !2086, inlinedAt: !2148)
!2155 = !DILocation(line: 0, scope: !2069, inlinedAt: !2156)
!2156 = distinct !DILocation(line: 965, column: 36, scope: !2086, inlinedAt: !2148)
!2157 = !DILocation(line: 195, column: 26, scope: !2069, inlinedAt: !2156)
!2158 = !DILocation(line: 196, column: 13, scope: !2078, inlinedAt: !2156)
!2159 = !DILocation(line: 196, column: 7, scope: !2069, inlinedAt: !2156)
!2160 = !DILocation(line: 197, column: 5, scope: !2078, inlinedAt: !2156)
!2161 = !DILocation(line: 198, column: 5, scope: !2069, inlinedAt: !2156)
!2162 = !DILocation(line: 198, column: 11, scope: !2069, inlinedAt: !2156)
!2163 = !DILocation(line: 966, column: 10, scope: !2086, inlinedAt: !2148)
!2164 = !DILocation(line: 967, column: 1, scope: !2086, inlinedAt: !2148)
!2165 = !DILocation(line: 978, column: 3, scope: !2139)
!2166 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !52, file: !52, line: 982, type: !2167, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2169)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{!47, !6, !91, !8}
!2169 = !{!2170, !2171, !2172, !2173}
!2170 = !DILocalVariable(name: "arg", arg: 1, scope: !2166, file: !52, line: 982, type: !6)
!2171 = !DILocalVariable(name: "argsize", arg: 2, scope: !2166, file: !52, line: 982, type: !91)
!2172 = !DILocalVariable(name: "ch", arg: 3, scope: !2166, file: !52, line: 982, type: !8)
!2173 = !DILocalVariable(name: "options", scope: !2166, file: !52, line: 984, type: !103)
!2174 = !DILocation(line: 0, scope: !2166)
!2175 = !DILocation(line: 984, column: 3, scope: !2166)
!2176 = !DILocation(line: 984, column: 26, scope: !2166)
!2177 = !DILocation(line: 985, column: 13, scope: !2166)
!2178 = !{i64 0, i64 4, !1187, i64 4, i64 4, !740, i64 8, i64 32, !1187, i64 40, i64 8, !596, i64 48, i64 8, !596}
!2179 = !DILocation(line: 0, scope: !1001, inlinedAt: !2180)
!2180 = distinct !DILocation(line: 986, column: 3, scope: !2166)
!2181 = !DILocation(line: 156, column: 62, scope: !1001, inlinedAt: !2180)
!2182 = !DILocation(line: 156, column: 57, scope: !1001, inlinedAt: !2180)
!2183 = !DILocation(line: 157, column: 15, scope: !1001, inlinedAt: !2180)
!2184 = !DILocation(line: 158, column: 12, scope: !1001, inlinedAt: !2180)
!2185 = !DILocation(line: 158, column: 15, scope: !1001, inlinedAt: !2180)
!2186 = !DILocation(line: 158, column: 25, scope: !1001, inlinedAt: !2180)
!2187 = !DILocation(line: 159, column: 18, scope: !1001, inlinedAt: !2180)
!2188 = !DILocation(line: 159, column: 23, scope: !1001, inlinedAt: !2180)
!2189 = !DILocation(line: 159, column: 6, scope: !1001, inlinedAt: !2180)
!2190 = !DILocation(line: 987, column: 10, scope: !2166)
!2191 = !DILocation(line: 988, column: 1, scope: !2166)
!2192 = !DILocation(line: 987, column: 3, scope: !2166)
!2193 = distinct !DISubprogram(name: "quotearg_char", scope: !52, file: !52, line: 991, type: !2194, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2196)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!47, !6, !8}
!2196 = !{!2197, !2198}
!2197 = !DILocalVariable(name: "arg", arg: 1, scope: !2193, file: !52, line: 991, type: !6)
!2198 = !DILocalVariable(name: "ch", arg: 2, scope: !2193, file: !52, line: 991, type: !8)
!2199 = !DILocation(line: 0, scope: !2193)
!2200 = !DILocation(line: 0, scope: !2166, inlinedAt: !2201)
!2201 = distinct !DILocation(line: 993, column: 10, scope: !2193)
!2202 = !DILocation(line: 984, column: 3, scope: !2166, inlinedAt: !2201)
!2203 = !DILocation(line: 984, column: 26, scope: !2166, inlinedAt: !2201)
!2204 = !DILocation(line: 985, column: 13, scope: !2166, inlinedAt: !2201)
!2205 = !DILocation(line: 0, scope: !1001, inlinedAt: !2206)
!2206 = distinct !DILocation(line: 986, column: 3, scope: !2166, inlinedAt: !2201)
!2207 = !DILocation(line: 156, column: 62, scope: !1001, inlinedAt: !2206)
!2208 = !DILocation(line: 156, column: 57, scope: !1001, inlinedAt: !2206)
!2209 = !DILocation(line: 157, column: 15, scope: !1001, inlinedAt: !2206)
!2210 = !DILocation(line: 158, column: 12, scope: !1001, inlinedAt: !2206)
!2211 = !DILocation(line: 158, column: 15, scope: !1001, inlinedAt: !2206)
!2212 = !DILocation(line: 158, column: 25, scope: !1001, inlinedAt: !2206)
!2213 = !DILocation(line: 159, column: 18, scope: !1001, inlinedAt: !2206)
!2214 = !DILocation(line: 159, column: 23, scope: !1001, inlinedAt: !2206)
!2215 = !DILocation(line: 159, column: 6, scope: !1001, inlinedAt: !2206)
!2216 = !DILocation(line: 987, column: 10, scope: !2166, inlinedAt: !2201)
!2217 = !DILocation(line: 988, column: 1, scope: !2166, inlinedAt: !2201)
!2218 = !DILocation(line: 993, column: 3, scope: !2193)
!2219 = distinct !DISubprogram(name: "quotearg_colon", scope: !52, file: !52, line: 997, type: !771, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2220)
!2220 = !{!2221}
!2221 = !DILocalVariable(name: "arg", arg: 1, scope: !2219, file: !52, line: 997, type: !6)
!2222 = !DILocation(line: 0, scope: !2219)
!2223 = !DILocation(line: 0, scope: !2193, inlinedAt: !2224)
!2224 = distinct !DILocation(line: 999, column: 10, scope: !2219)
!2225 = !DILocation(line: 0, scope: !2166, inlinedAt: !2226)
!2226 = distinct !DILocation(line: 993, column: 10, scope: !2193, inlinedAt: !2224)
!2227 = !DILocation(line: 984, column: 3, scope: !2166, inlinedAt: !2226)
!2228 = !DILocation(line: 984, column: 26, scope: !2166, inlinedAt: !2226)
!2229 = !DILocation(line: 985, column: 13, scope: !2166, inlinedAt: !2226)
!2230 = !DILocation(line: 0, scope: !1001, inlinedAt: !2231)
!2231 = distinct !DILocation(line: 986, column: 3, scope: !2166, inlinedAt: !2226)
!2232 = !DILocation(line: 156, column: 57, scope: !1001, inlinedAt: !2231)
!2233 = !DILocation(line: 158, column: 12, scope: !1001, inlinedAt: !2231)
!2234 = !DILocation(line: 159, column: 6, scope: !1001, inlinedAt: !2231)
!2235 = !DILocation(line: 987, column: 10, scope: !2166, inlinedAt: !2226)
!2236 = !DILocation(line: 988, column: 1, scope: !2166, inlinedAt: !2226)
!2237 = !DILocation(line: 999, column: 3, scope: !2219)
!2238 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !52, file: !52, line: 1003, type: !2043, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2239)
!2239 = !{!2240, !2241}
!2240 = !DILocalVariable(name: "arg", arg: 1, scope: !2238, file: !52, line: 1003, type: !6)
!2241 = !DILocalVariable(name: "argsize", arg: 2, scope: !2238, file: !52, line: 1003, type: !91)
!2242 = !DILocation(line: 0, scope: !2238)
!2243 = !DILocation(line: 0, scope: !2166, inlinedAt: !2244)
!2244 = distinct !DILocation(line: 1005, column: 10, scope: !2238)
!2245 = !DILocation(line: 984, column: 3, scope: !2166, inlinedAt: !2244)
!2246 = !DILocation(line: 984, column: 26, scope: !2166, inlinedAt: !2244)
!2247 = !DILocation(line: 985, column: 13, scope: !2166, inlinedAt: !2244)
!2248 = !DILocation(line: 0, scope: !1001, inlinedAt: !2249)
!2249 = distinct !DILocation(line: 986, column: 3, scope: !2166, inlinedAt: !2244)
!2250 = !DILocation(line: 156, column: 57, scope: !1001, inlinedAt: !2249)
!2251 = !DILocation(line: 158, column: 12, scope: !1001, inlinedAt: !2249)
!2252 = !DILocation(line: 159, column: 6, scope: !1001, inlinedAt: !2249)
!2253 = !DILocation(line: 987, column: 10, scope: !2166, inlinedAt: !2244)
!2254 = !DILocation(line: 988, column: 1, scope: !2166, inlinedAt: !2244)
!2255 = !DILocation(line: 1005, column: 3, scope: !2238)
!2256 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !52, file: !52, line: 1009, type: !2054, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2257)
!2257 = !{!2258, !2259, !2260, !2261}
!2258 = !DILocalVariable(name: "n", arg: 1, scope: !2256, file: !52, line: 1009, type: !23)
!2259 = !DILocalVariable(name: "s", arg: 2, scope: !2256, file: !52, line: 1009, type: !54)
!2260 = !DILocalVariable(name: "arg", arg: 3, scope: !2256, file: !52, line: 1009, type: !6)
!2261 = !DILocalVariable(name: "options", scope: !2256, file: !52, line: 1011, type: !103)
!2262 = !DILocation(line: 195, column: 26, scope: !2069, inlinedAt: !2263)
!2263 = distinct !DILocation(line: 1012, column: 13, scope: !2256)
!2264 = !DILocation(line: 0, scope: !2256)
!2265 = !DILocation(line: 1011, column: 3, scope: !2256)
!2266 = !DILocation(line: 1011, column: 26, scope: !2256)
!2267 = !DILocation(line: 1012, column: 13, scope: !2256)
!2268 = !{!2269}
!2269 = distinct !{!2269, !2270, !"quoting_options_from_style: argument 0"}
!2270 = distinct !{!2270, !"quoting_options_from_style"}
!2271 = !DILocation(line: 0, scope: !2069, inlinedAt: !2263)
!2272 = !DILocation(line: 196, column: 13, scope: !2078, inlinedAt: !2263)
!2273 = !DILocation(line: 196, column: 7, scope: !2069, inlinedAt: !2263)
!2274 = !DILocation(line: 197, column: 5, scope: !2078, inlinedAt: !2263)
!2275 = !{i64 0, i64 4, !740, i64 4, i64 32, !1187, i64 36, i64 8, !596, i64 44, i64 8, !596}
!2276 = !DILocation(line: 0, scope: !1001, inlinedAt: !2277)
!2277 = distinct !DILocation(line: 1013, column: 3, scope: !2256)
!2278 = !DILocation(line: 156, column: 57, scope: !1001, inlinedAt: !2277)
!2279 = !DILocation(line: 158, column: 12, scope: !1001, inlinedAt: !2277)
!2280 = !DILocation(line: 159, column: 6, scope: !1001, inlinedAt: !2277)
!2281 = !DILocation(line: 1014, column: 10, scope: !2256)
!2282 = !DILocation(line: 1015, column: 1, scope: !2256)
!2283 = !DILocation(line: 1014, column: 3, scope: !2256)
!2284 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !52, file: !52, line: 1018, type: !2285, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2287)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!47, !23, !6, !6, !6}
!2287 = !{!2288, !2289, !2290, !2291}
!2288 = !DILocalVariable(name: "n", arg: 1, scope: !2284, file: !52, line: 1018, type: !23)
!2289 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2284, file: !52, line: 1018, type: !6)
!2290 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2284, file: !52, line: 1019, type: !6)
!2291 = !DILocalVariable(name: "arg", arg: 4, scope: !2284, file: !52, line: 1019, type: !6)
!2292 = !DILocation(line: 0, scope: !2284)
!2293 = !DILocalVariable(name: "n", arg: 1, scope: !2294, file: !52, line: 1026, type: !23)
!2294 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !52, file: !52, line: 1026, type: !2295, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2297)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!47, !23, !6, !6, !6, !91}
!2297 = !{!2293, !2298, !2299, !2300, !2301, !2302}
!2298 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2294, file: !52, line: 1026, type: !6)
!2299 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2294, file: !52, line: 1027, type: !6)
!2300 = !DILocalVariable(name: "arg", arg: 4, scope: !2294, file: !52, line: 1028, type: !6)
!2301 = !DILocalVariable(name: "argsize", arg: 5, scope: !2294, file: !52, line: 1028, type: !91)
!2302 = !DILocalVariable(name: "o", scope: !2294, file: !52, line: 1030, type: !103)
!2303 = !DILocation(line: 0, scope: !2294, inlinedAt: !2304)
!2304 = distinct !DILocation(line: 1021, column: 10, scope: !2284)
!2305 = !DILocation(line: 1030, column: 3, scope: !2294, inlinedAt: !2304)
!2306 = !DILocation(line: 1030, column: 26, scope: !2294, inlinedAt: !2304)
!2307 = !DILocation(line: 1030, column: 30, scope: !2294, inlinedAt: !2304)
!2308 = !DILocation(line: 0, scope: !1042, inlinedAt: !2309)
!2309 = distinct !DILocation(line: 1031, column: 3, scope: !2294, inlinedAt: !2304)
!2310 = !DILocation(line: 184, column: 6, scope: !1042, inlinedAt: !2309)
!2311 = !DILocation(line: 184, column: 12, scope: !1042, inlinedAt: !2309)
!2312 = !DILocation(line: 185, column: 8, scope: !1056, inlinedAt: !2309)
!2313 = !DILocation(line: 185, column: 19, scope: !1056, inlinedAt: !2309)
!2314 = !DILocation(line: 186, column: 5, scope: !1056, inlinedAt: !2309)
!2315 = !DILocation(line: 187, column: 6, scope: !1042, inlinedAt: !2309)
!2316 = !DILocation(line: 187, column: 17, scope: !1042, inlinedAt: !2309)
!2317 = !DILocation(line: 188, column: 6, scope: !1042, inlinedAt: !2309)
!2318 = !DILocation(line: 188, column: 18, scope: !1042, inlinedAt: !2309)
!2319 = !DILocation(line: 1032, column: 10, scope: !2294, inlinedAt: !2304)
!2320 = !DILocation(line: 1033, column: 1, scope: !2294, inlinedAt: !2304)
!2321 = !DILocation(line: 1021, column: 3, scope: !2284)
!2322 = !DILocation(line: 0, scope: !2294)
!2323 = !DILocation(line: 1030, column: 3, scope: !2294)
!2324 = !DILocation(line: 1030, column: 26, scope: !2294)
!2325 = !DILocation(line: 1030, column: 30, scope: !2294)
!2326 = !DILocation(line: 0, scope: !1042, inlinedAt: !2327)
!2327 = distinct !DILocation(line: 1031, column: 3, scope: !2294)
!2328 = !DILocation(line: 184, column: 6, scope: !1042, inlinedAt: !2327)
!2329 = !DILocation(line: 184, column: 12, scope: !1042, inlinedAt: !2327)
!2330 = !DILocation(line: 185, column: 8, scope: !1056, inlinedAt: !2327)
!2331 = !DILocation(line: 185, column: 19, scope: !1056, inlinedAt: !2327)
!2332 = !DILocation(line: 186, column: 5, scope: !1056, inlinedAt: !2327)
!2333 = !DILocation(line: 187, column: 6, scope: !1042, inlinedAt: !2327)
!2334 = !DILocation(line: 187, column: 17, scope: !1042, inlinedAt: !2327)
!2335 = !DILocation(line: 188, column: 6, scope: !1042, inlinedAt: !2327)
!2336 = !DILocation(line: 188, column: 18, scope: !1042, inlinedAt: !2327)
!2337 = !DILocation(line: 1032, column: 10, scope: !2294)
!2338 = !DILocation(line: 1033, column: 1, scope: !2294)
!2339 = !DILocation(line: 1032, column: 3, scope: !2294)
!2340 = distinct !DISubprogram(name: "quotearg_custom", scope: !52, file: !52, line: 1036, type: !2341, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2343)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!47, !6, !6, !6}
!2343 = !{!2344, !2345, !2346}
!2344 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2340, file: !52, line: 1036, type: !6)
!2345 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2340, file: !52, line: 1036, type: !6)
!2346 = !DILocalVariable(name: "arg", arg: 3, scope: !2340, file: !52, line: 1037, type: !6)
!2347 = !DILocation(line: 0, scope: !2340)
!2348 = !DILocation(line: 0, scope: !2284, inlinedAt: !2349)
!2349 = distinct !DILocation(line: 1039, column: 10, scope: !2340)
!2350 = !DILocation(line: 0, scope: !2294, inlinedAt: !2351)
!2351 = distinct !DILocation(line: 1021, column: 10, scope: !2284, inlinedAt: !2349)
!2352 = !DILocation(line: 1030, column: 3, scope: !2294, inlinedAt: !2351)
!2353 = !DILocation(line: 1030, column: 26, scope: !2294, inlinedAt: !2351)
!2354 = !DILocation(line: 1030, column: 30, scope: !2294, inlinedAt: !2351)
!2355 = !DILocation(line: 0, scope: !1042, inlinedAt: !2356)
!2356 = distinct !DILocation(line: 1031, column: 3, scope: !2294, inlinedAt: !2351)
!2357 = !DILocation(line: 184, column: 6, scope: !1042, inlinedAt: !2356)
!2358 = !DILocation(line: 184, column: 12, scope: !1042, inlinedAt: !2356)
!2359 = !DILocation(line: 185, column: 8, scope: !1056, inlinedAt: !2356)
!2360 = !DILocation(line: 185, column: 19, scope: !1056, inlinedAt: !2356)
!2361 = !DILocation(line: 186, column: 5, scope: !1056, inlinedAt: !2356)
!2362 = !DILocation(line: 187, column: 6, scope: !1042, inlinedAt: !2356)
!2363 = !DILocation(line: 187, column: 17, scope: !1042, inlinedAt: !2356)
!2364 = !DILocation(line: 188, column: 6, scope: !1042, inlinedAt: !2356)
!2365 = !DILocation(line: 188, column: 18, scope: !1042, inlinedAt: !2356)
!2366 = !DILocation(line: 1032, column: 10, scope: !2294, inlinedAt: !2351)
!2367 = !DILocation(line: 1033, column: 1, scope: !2294, inlinedAt: !2351)
!2368 = !DILocation(line: 1039, column: 3, scope: !2340)
!2369 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !52, file: !52, line: 1043, type: !2370, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2372)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!47, !6, !6, !6, !91}
!2372 = !{!2373, !2374, !2375, !2376}
!2373 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2369, file: !52, line: 1043, type: !6)
!2374 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2369, file: !52, line: 1043, type: !6)
!2375 = !DILocalVariable(name: "arg", arg: 3, scope: !2369, file: !52, line: 1044, type: !6)
!2376 = !DILocalVariable(name: "argsize", arg: 4, scope: !2369, file: !52, line: 1044, type: !91)
!2377 = !DILocation(line: 0, scope: !2369)
!2378 = !DILocation(line: 0, scope: !2294, inlinedAt: !2379)
!2379 = distinct !DILocation(line: 1046, column: 10, scope: !2369)
!2380 = !DILocation(line: 1030, column: 3, scope: !2294, inlinedAt: !2379)
!2381 = !DILocation(line: 1030, column: 26, scope: !2294, inlinedAt: !2379)
!2382 = !DILocation(line: 1030, column: 30, scope: !2294, inlinedAt: !2379)
!2383 = !DILocation(line: 0, scope: !1042, inlinedAt: !2384)
!2384 = distinct !DILocation(line: 1031, column: 3, scope: !2294, inlinedAt: !2379)
!2385 = !DILocation(line: 184, column: 6, scope: !1042, inlinedAt: !2384)
!2386 = !DILocation(line: 184, column: 12, scope: !1042, inlinedAt: !2384)
!2387 = !DILocation(line: 185, column: 8, scope: !1056, inlinedAt: !2384)
!2388 = !DILocation(line: 185, column: 19, scope: !1056, inlinedAt: !2384)
!2389 = !DILocation(line: 186, column: 5, scope: !1056, inlinedAt: !2384)
!2390 = !DILocation(line: 187, column: 6, scope: !1042, inlinedAt: !2384)
!2391 = !DILocation(line: 187, column: 17, scope: !1042, inlinedAt: !2384)
!2392 = !DILocation(line: 188, column: 6, scope: !1042, inlinedAt: !2384)
!2393 = !DILocation(line: 188, column: 18, scope: !1042, inlinedAt: !2384)
!2394 = !DILocation(line: 1032, column: 10, scope: !2294, inlinedAt: !2379)
!2395 = !DILocation(line: 1033, column: 1, scope: !2294, inlinedAt: !2379)
!2396 = !DILocation(line: 1046, column: 3, scope: !2369)
!2397 = distinct !DISubprogram(name: "quote_n_mem", scope: !52, file: !52, line: 1061, type: !2398, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2400)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!6, !23, !6, !91}
!2400 = !{!2401, !2402, !2403}
!2401 = !DILocalVariable(name: "n", arg: 1, scope: !2397, file: !52, line: 1061, type: !23)
!2402 = !DILocalVariable(name: "arg", arg: 2, scope: !2397, file: !52, line: 1061, type: !6)
!2403 = !DILocalVariable(name: "argsize", arg: 3, scope: !2397, file: !52, line: 1061, type: !91)
!2404 = !DILocation(line: 0, scope: !2397)
!2405 = !DILocation(line: 1063, column: 10, scope: !2397)
!2406 = !DILocation(line: 1063, column: 3, scope: !2397)
!2407 = distinct !DISubprogram(name: "quote_mem", scope: !52, file: !52, line: 1067, type: !2408, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2410)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!6, !6, !91}
!2410 = !{!2411, !2412}
!2411 = !DILocalVariable(name: "arg", arg: 1, scope: !2407, file: !52, line: 1067, type: !6)
!2412 = !DILocalVariable(name: "argsize", arg: 2, scope: !2407, file: !52, line: 1067, type: !91)
!2413 = !DILocation(line: 0, scope: !2407)
!2414 = !DILocation(line: 0, scope: !2397, inlinedAt: !2415)
!2415 = distinct !DILocation(line: 1069, column: 10, scope: !2407)
!2416 = !DILocation(line: 1063, column: 10, scope: !2397, inlinedAt: !2415)
!2417 = !DILocation(line: 1069, column: 3, scope: !2407)
!2418 = distinct !DISubprogram(name: "quote_n", scope: !52, file: !52, line: 1073, type: !2419, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2421)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!6, !23, !6}
!2421 = !{!2422, !2423}
!2422 = !DILocalVariable(name: "n", arg: 1, scope: !2418, file: !52, line: 1073, type: !23)
!2423 = !DILocalVariable(name: "arg", arg: 2, scope: !2418, file: !52, line: 1073, type: !6)
!2424 = !DILocation(line: 0, scope: !2418)
!2425 = !DILocation(line: 0, scope: !2397, inlinedAt: !2426)
!2426 = distinct !DILocation(line: 1075, column: 10, scope: !2418)
!2427 = !DILocation(line: 1063, column: 10, scope: !2397, inlinedAt: !2426)
!2428 = !DILocation(line: 1075, column: 3, scope: !2418)
!2429 = distinct !DISubprogram(name: "quote", scope: !52, file: !52, line: 1079, type: !2430, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2432)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{!6, !6}
!2432 = !{!2433}
!2433 = !DILocalVariable(name: "arg", arg: 1, scope: !2429, file: !52, line: 1079, type: !6)
!2434 = !DILocation(line: 0, scope: !2429)
!2435 = !DILocation(line: 0, scope: !2418, inlinedAt: !2436)
!2436 = distinct !DILocation(line: 1081, column: 10, scope: !2429)
!2437 = !DILocation(line: 0, scope: !2397, inlinedAt: !2438)
!2438 = distinct !DILocation(line: 1075, column: 10, scope: !2418, inlinedAt: !2436)
!2439 = !DILocation(line: 1063, column: 10, scope: !2397, inlinedAt: !2438)
!2440 = !DILocation(line: 1081, column: 3, scope: !2429)
!2441 = distinct !DISubprogram(name: "version_etc_arn", scope: !148, file: !148, line: 61, type: !2442, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !2480)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{null, !2444, !6, !6, !6, !2479, !91}
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2446, line: 7, baseType: !2447)
!2446 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !668, line: 49, size: 1728, elements: !2448)
!2448 = !{!2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2447, file: !668, line: 51, baseType: !23, size: 32)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2447, file: !668, line: 54, baseType: !47, size: 64, offset: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2447, file: !668, line: 55, baseType: !47, size: 64, offset: 128)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2447, file: !668, line: 56, baseType: !47, size: 64, offset: 192)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2447, file: !668, line: 57, baseType: !47, size: 64, offset: 256)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2447, file: !668, line: 58, baseType: !47, size: 64, offset: 320)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2447, file: !668, line: 59, baseType: !47, size: 64, offset: 384)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2447, file: !668, line: 60, baseType: !47, size: 64, offset: 448)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2447, file: !668, line: 61, baseType: !47, size: 64, offset: 512)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2447, file: !668, line: 64, baseType: !47, size: 64, offset: 576)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2447, file: !668, line: 65, baseType: !47, size: 64, offset: 640)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2447, file: !668, line: 66, baseType: !47, size: 64, offset: 704)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2447, file: !668, line: 68, baseType: !683, size: 64, offset: 768)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2447, file: !668, line: 70, baseType: !2463, size: 64, offset: 832)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2447, file: !668, line: 72, baseType: !23, size: 32, offset: 896)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2447, file: !668, line: 73, baseType: !23, size: 32, offset: 928)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2447, file: !668, line: 74, baseType: !689, size: 64, offset: 960)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2447, file: !668, line: 77, baseType: !90, size: 16, offset: 1024)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2447, file: !668, line: 78, baseType: !694, size: 8, offset: 1040)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2447, file: !668, line: 79, baseType: !696, size: 8, offset: 1048)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2447, file: !668, line: 81, baseType: !700, size: 64, offset: 1088)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2447, file: !668, line: 89, baseType: !703, size: 64, offset: 1152)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2447, file: !668, line: 91, baseType: !705, size: 64, offset: 1216)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2447, file: !668, line: 92, baseType: !708, size: 64, offset: 1280)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2447, file: !668, line: 93, baseType: !2463, size: 64, offset: 1344)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2447, file: !668, line: 94, baseType: !46, size: 64, offset: 1408)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2447, file: !668, line: 95, baseType: !91, size: 64, offset: 1472)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2447, file: !668, line: 96, baseType: !23, size: 32, offset: 1536)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2447, file: !668, line: 98, baseType: !715, size: 160, offset: 1568)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!2480 = !{!2481, !2482, !2483, !2484, !2485, !2486}
!2481 = !DILocalVariable(name: "stream", arg: 1, scope: !2441, file: !148, line: 61, type: !2444)
!2482 = !DILocalVariable(name: "command_name", arg: 2, scope: !2441, file: !148, line: 62, type: !6)
!2483 = !DILocalVariable(name: "package", arg: 3, scope: !2441, file: !148, line: 62, type: !6)
!2484 = !DILocalVariable(name: "version", arg: 4, scope: !2441, file: !148, line: 63, type: !6)
!2485 = !DILocalVariable(name: "authors", arg: 5, scope: !2441, file: !148, line: 64, type: !2479)
!2486 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2441, file: !148, line: 64, type: !91)
!2487 = !DILocation(line: 0, scope: !2441)
!2488 = !DILocation(line: 66, column: 7, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2441, file: !148, line: 66, column: 7)
!2490 = !DILocation(line: 66, column: 7, scope: !2441)
!2491 = !DILocation(line: 67, column: 5, scope: !2489)
!2492 = !DILocation(line: 69, column: 5, scope: !2489)
!2493 = !DILocation(line: 83, column: 3, scope: !2441)
!2494 = !DILocation(line: 85, column: 3, scope: !2441)
!2495 = !DILocation(line: 88, column: 3, scope: !2441)
!2496 = !DILocation(line: 95, column: 3, scope: !2441)
!2497 = !DILocation(line: 97, column: 3, scope: !2441)
!2498 = !DILocation(line: 105, column: 7, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2441, file: !148, line: 98, column: 5)
!2500 = !DILocation(line: 106, column: 7, scope: !2499)
!2501 = !DILocation(line: 109, column: 7, scope: !2499)
!2502 = !DILocation(line: 110, column: 7, scope: !2499)
!2503 = !DILocation(line: 113, column: 7, scope: !2499)
!2504 = !DILocation(line: 115, column: 7, scope: !2499)
!2505 = !DILocation(line: 120, column: 7, scope: !2499)
!2506 = !DILocation(line: 122, column: 7, scope: !2499)
!2507 = !DILocation(line: 127, column: 7, scope: !2499)
!2508 = !DILocation(line: 129, column: 7, scope: !2499)
!2509 = !DILocation(line: 134, column: 7, scope: !2499)
!2510 = !DILocation(line: 137, column: 7, scope: !2499)
!2511 = !DILocation(line: 142, column: 7, scope: !2499)
!2512 = !DILocation(line: 145, column: 7, scope: !2499)
!2513 = !DILocation(line: 150, column: 7, scope: !2499)
!2514 = !DILocation(line: 154, column: 7, scope: !2499)
!2515 = !DILocation(line: 159, column: 7, scope: !2499)
!2516 = !DILocation(line: 163, column: 7, scope: !2499)
!2517 = !DILocation(line: 170, column: 7, scope: !2499)
!2518 = !DILocation(line: 174, column: 7, scope: !2499)
!2519 = !DILocation(line: 176, column: 1, scope: !2441)
!2520 = distinct !DISubprogram(name: "version_etc_ar", scope: !148, file: !148, line: 183, type: !2521, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !2523)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{null, !2444, !6, !6, !6, !2479}
!2523 = !{!2524, !2525, !2526, !2527, !2528, !2529}
!2524 = !DILocalVariable(name: "stream", arg: 1, scope: !2520, file: !148, line: 183, type: !2444)
!2525 = !DILocalVariable(name: "command_name", arg: 2, scope: !2520, file: !148, line: 184, type: !6)
!2526 = !DILocalVariable(name: "package", arg: 3, scope: !2520, file: !148, line: 184, type: !6)
!2527 = !DILocalVariable(name: "version", arg: 4, scope: !2520, file: !148, line: 185, type: !6)
!2528 = !DILocalVariable(name: "authors", arg: 5, scope: !2520, file: !148, line: 185, type: !2479)
!2529 = !DILocalVariable(name: "n_authors", scope: !2520, file: !148, line: 187, type: !91)
!2530 = !DILocation(line: 0, scope: !2520)
!2531 = !DILocation(line: 189, column: 8, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2520, file: !148, line: 189, column: 3)
!2533 = !DILocation(line: 0, scope: !2532)
!2534 = !DILocation(line: 189, column: 23, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2532, file: !148, line: 189, column: 3)
!2536 = !DILocation(line: 189, column: 3, scope: !2532)
!2537 = !DILocation(line: 189, column: 52, scope: !2535)
!2538 = distinct !{!2538, !2536, !2539, !638}
!2539 = !DILocation(line: 190, column: 5, scope: !2532)
!2540 = !DILocation(line: 191, column: 3, scope: !2520)
!2541 = !DILocation(line: 192, column: 1, scope: !2520)
!2542 = distinct !DISubprogram(name: "version_etc_va", scope: !148, file: !148, line: 199, type: !2543, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !2552)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{null, !2444, !6, !6, !6, !2545}
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2547)
!2547 = !{!2548, !2549, !2550, !2551}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2546, file: !148, line: 192, baseType: !56, size: 32)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2546, file: !148, line: 192, baseType: !56, size: 32, offset: 32)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2546, file: !148, line: 192, baseType: !46, size: 64, offset: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2546, file: !148, line: 192, baseType: !46, size: 64, offset: 128)
!2552 = !{!2553, !2554, !2555, !2556, !2557, !2558, !2559}
!2553 = !DILocalVariable(name: "stream", arg: 1, scope: !2542, file: !148, line: 199, type: !2444)
!2554 = !DILocalVariable(name: "command_name", arg: 2, scope: !2542, file: !148, line: 200, type: !6)
!2555 = !DILocalVariable(name: "package", arg: 3, scope: !2542, file: !148, line: 200, type: !6)
!2556 = !DILocalVariable(name: "version", arg: 4, scope: !2542, file: !148, line: 201, type: !6)
!2557 = !DILocalVariable(name: "authors", arg: 5, scope: !2542, file: !148, line: 201, type: !2545)
!2558 = !DILocalVariable(name: "n_authors", scope: !2542, file: !148, line: 203, type: !91)
!2559 = !DILocalVariable(name: "authtab", scope: !2542, file: !148, line: 204, type: !2560)
!2560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !99)
!2561 = !DILocation(line: 0, scope: !2542)
!2562 = !DILocation(line: 204, column: 3, scope: !2542)
!2563 = !DILocation(line: 204, column: 15, scope: !2542)
!2564 = !DILocation(line: 208, column: 35, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2566, file: !148, line: 206, column: 3)
!2566 = distinct !DILexicalBlock(scope: !2542, file: !148, line: 206, column: 3)
!2567 = !DILocation(line: 208, column: 14, scope: !2565)
!2568 = !DILocation(line: 208, column: 33, scope: !2565)
!2569 = !DILocation(line: 208, column: 67, scope: !2565)
!2570 = !DILocation(line: 206, column: 3, scope: !2566)
!2571 = !DILocation(line: 0, scope: !2566)
!2572 = !DILocation(line: 211, column: 3, scope: !2542)
!2573 = !DILocation(line: 213, column: 1, scope: !2542)
!2574 = distinct !DISubprogram(name: "version_etc", scope: !148, file: !148, line: 230, type: !2575, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !2577)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{null, !2444, !6, !6, !6, null}
!2577 = !{!2578, !2579, !2580, !2581, !2582}
!2578 = !DILocalVariable(name: "stream", arg: 1, scope: !2574, file: !148, line: 230, type: !2444)
!2579 = !DILocalVariable(name: "command_name", arg: 2, scope: !2574, file: !148, line: 231, type: !6)
!2580 = !DILocalVariable(name: "package", arg: 3, scope: !2574, file: !148, line: 231, type: !6)
!2581 = !DILocalVariable(name: "version", arg: 4, scope: !2574, file: !148, line: 232, type: !6)
!2582 = !DILocalVariable(name: "authors", scope: !2574, file: !148, line: 234, type: !2583)
!2583 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !663, line: 52, baseType: !2584)
!2584 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !858, line: 32, baseType: !2585)
!2585 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !148, baseType: !2586)
!2586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2546, size: 192, elements: !697)
!2587 = !DILocation(line: 0, scope: !2574)
!2588 = !DILocation(line: 234, column: 3, scope: !2574)
!2589 = !DILocation(line: 234, column: 11, scope: !2574)
!2590 = !DILocation(line: 236, column: 3, scope: !2574)
!2591 = !DILocation(line: 237, column: 3, scope: !2574)
!2592 = !DILocation(line: 238, column: 3, scope: !2574)
!2593 = !DILocation(line: 239, column: 1, scope: !2574)
!2594 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !148, file: !148, line: 242, type: !778, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !4)
!2595 = !DILocation(line: 244, column: 3, scope: !2594)
!2596 = !DILocation(line: 249, column: 3, scope: !2594)
!2597 = !DILocation(line: 255, column: 3, scope: !2594)
!2598 = !DILocation(line: 260, column: 3, scope: !2594)
!2599 = !DILocation(line: 262, column: 1, scope: !2594)
!2600 = distinct !DISubprogram(name: "xnmalloc", scope: !158, file: !158, line: 99, type: !2601, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !154, retainedNodes: !2603)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!46, !91, !91}
!2603 = !{!2604, !2605}
!2604 = !DILocalVariable(name: "n", arg: 1, scope: !2600, file: !158, line: 99, type: !91)
!2605 = !DILocalVariable(name: "s", arg: 2, scope: !2600, file: !158, line: 99, type: !91)
!2606 = !DILocation(line: 0, scope: !2600)
!2607 = !DILocation(line: 101, column: 7, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2600, file: !158, line: 101, column: 7)
!2609 = !DILocation(line: 101, column: 7, scope: !2600)
!2610 = !DILocation(line: 102, column: 5, scope: !2608)
!2611 = !DILocation(line: 103, column: 21, scope: !2600)
!2612 = !DILocalVariable(name: "n", arg: 1, scope: !2613, file: !155, line: 39, type: !91)
!2613 = distinct !DISubprogram(name: "xmalloc", scope: !155, file: !155, line: 39, type: !2614, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !154, retainedNodes: !2616)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!46, !91}
!2616 = !{!2612, !2617}
!2617 = !DILocalVariable(name: "p", scope: !2613, file: !155, line: 41, type: !46)
!2618 = !DILocation(line: 0, scope: !2613, inlinedAt: !2619)
!2619 = distinct !DILocation(line: 103, column: 10, scope: !2600)
!2620 = !DILocation(line: 41, column: 13, scope: !2613, inlinedAt: !2619)
!2621 = !DILocation(line: 42, column: 8, scope: !2622, inlinedAt: !2619)
!2622 = distinct !DILexicalBlock(scope: !2613, file: !155, line: 42, column: 7)
!2623 = !DILocation(line: 42, column: 10, scope: !2622, inlinedAt: !2619)
!2624 = !DILocation(line: 43, column: 5, scope: !2622, inlinedAt: !2619)
!2625 = !DILocation(line: 103, column: 3, scope: !2600)
!2626 = !DILocation(line: 0, scope: !2613)
!2627 = !DILocation(line: 41, column: 13, scope: !2613)
!2628 = !DILocation(line: 42, column: 8, scope: !2622)
!2629 = !DILocation(line: 42, column: 10, scope: !2622)
!2630 = !DILocation(line: 43, column: 5, scope: !2622)
!2631 = !DILocation(line: 44, column: 3, scope: !2613)
!2632 = distinct !DISubprogram(name: "xnrealloc", scope: !158, file: !158, line: 112, type: !2633, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !154, retainedNodes: !2635)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{!46, !46, !91, !91}
!2635 = !{!2636, !2637, !2638}
!2636 = !DILocalVariable(name: "p", arg: 1, scope: !2632, file: !158, line: 112, type: !46)
!2637 = !DILocalVariable(name: "n", arg: 2, scope: !2632, file: !158, line: 112, type: !91)
!2638 = !DILocalVariable(name: "s", arg: 3, scope: !2632, file: !158, line: 112, type: !91)
!2639 = !DILocation(line: 0, scope: !2632)
!2640 = !DILocation(line: 114, column: 7, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2632, file: !158, line: 114, column: 7)
!2642 = !DILocation(line: 114, column: 7, scope: !2632)
!2643 = !DILocation(line: 115, column: 5, scope: !2641)
!2644 = !DILocation(line: 116, column: 25, scope: !2632)
!2645 = !DILocalVariable(name: "p", arg: 1, scope: !2646, file: !155, line: 51, type: !46)
!2646 = distinct !DISubprogram(name: "xrealloc", scope: !155, file: !155, line: 51, type: !2647, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !154, retainedNodes: !2649)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!46, !46, !91}
!2649 = !{!2645, !2650}
!2650 = !DILocalVariable(name: "n", arg: 2, scope: !2646, file: !155, line: 51, type: !91)
!2651 = !DILocation(line: 0, scope: !2646, inlinedAt: !2652)
!2652 = distinct !DILocation(line: 116, column: 10, scope: !2632)
!2653 = !DILocation(line: 53, column: 8, scope: !2654, inlinedAt: !2652)
!2654 = distinct !DILexicalBlock(scope: !2646, file: !155, line: 53, column: 7)
!2655 = !DILocation(line: 53, column: 10, scope: !2654, inlinedAt: !2652)
!2656 = !DILocation(line: 57, column: 7, scope: !2657, inlinedAt: !2652)
!2657 = distinct !DILexicalBlock(scope: !2654, file: !155, line: 54, column: 5)
!2658 = !DILocation(line: 58, column: 7, scope: !2657, inlinedAt: !2652)
!2659 = !DILocation(line: 61, column: 7, scope: !2646, inlinedAt: !2652)
!2660 = !DILocation(line: 62, column: 8, scope: !2661, inlinedAt: !2652)
!2661 = distinct !DILexicalBlock(scope: !2646, file: !155, line: 62, column: 7)
!2662 = !DILocation(line: 62, column: 10, scope: !2661, inlinedAt: !2652)
!2663 = !DILocation(line: 63, column: 5, scope: !2661, inlinedAt: !2652)
!2664 = !DILocation(line: 116, column: 3, scope: !2632)
!2665 = !DILocation(line: 0, scope: !2646)
!2666 = !DILocation(line: 53, column: 8, scope: !2654)
!2667 = !DILocation(line: 53, column: 10, scope: !2654)
!2668 = !DILocation(line: 57, column: 7, scope: !2657)
!2669 = !DILocation(line: 58, column: 7, scope: !2657)
!2670 = !DILocation(line: 61, column: 7, scope: !2646)
!2671 = !DILocation(line: 62, column: 8, scope: !2661)
!2672 = !DILocation(line: 62, column: 10, scope: !2661)
!2673 = !DILocation(line: 63, column: 5, scope: !2661)
!2674 = !DILocation(line: 65, column: 1, scope: !2646)
!2675 = !DILocation(line: 0, scope: !159)
!2676 = !DILocation(line: 176, column: 14, scope: !159)
!2677 = !DILocation(line: 178, column: 9, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !159, file: !158, line: 178, column: 7)
!2679 = !DILocation(line: 178, column: 7, scope: !159)
!2680 = !DILocation(line: 180, column: 13, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2682, file: !158, line: 180, column: 11)
!2682 = distinct !DILexicalBlock(scope: !2678, file: !158, line: 179, column: 5)
!2683 = !DILocation(line: 180, column: 11, scope: !2682)
!2684 = !DILocation(line: 188, column: 30, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2681, file: !158, line: 181, column: 9)
!2686 = !DILocation(line: 189, column: 16, scope: !2685)
!2687 = !DILocation(line: 189, column: 13, scope: !2685)
!2688 = !DILocation(line: 190, column: 9, scope: !2685)
!2689 = !DILocation(line: 191, column: 11, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2682, file: !158, line: 191, column: 11)
!2691 = !DILocation(line: 191, column: 11, scope: !2682)
!2692 = !DILocation(line: 206, column: 7, scope: !159)
!2693 = !DILocation(line: 207, column: 25, scope: !159)
!2694 = !DILocation(line: 0, scope: !2646, inlinedAt: !2695)
!2695 = distinct !DILocation(line: 207, column: 10, scope: !159)
!2696 = !DILocation(line: 53, column: 10, scope: !2654, inlinedAt: !2695)
!2697 = !DILocation(line: 192, column: 9, scope: !2690)
!2698 = !DILocation(line: 200, column: 69, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2700, file: !158, line: 200, column: 11)
!2700 = distinct !DILexicalBlock(scope: !2678, file: !158, line: 195, column: 5)
!2701 = !DILocation(line: 201, column: 11, scope: !2699)
!2702 = !DILocation(line: 200, column: 11, scope: !2700)
!2703 = !DILocation(line: 202, column: 9, scope: !2699)
!2704 = !DILocation(line: 203, column: 14, scope: !2700)
!2705 = !DILocation(line: 203, column: 18, scope: !2700)
!2706 = !DILocation(line: 203, column: 9, scope: !2700)
!2707 = !DILocation(line: 53, column: 8, scope: !2654, inlinedAt: !2695)
!2708 = !DILocation(line: 57, column: 7, scope: !2657, inlinedAt: !2695)
!2709 = !DILocation(line: 58, column: 7, scope: !2657, inlinedAt: !2695)
!2710 = !DILocation(line: 61, column: 7, scope: !2646, inlinedAt: !2695)
!2711 = !DILocation(line: 62, column: 8, scope: !2661, inlinedAt: !2695)
!2712 = !DILocation(line: 62, column: 10, scope: !2661, inlinedAt: !2695)
!2713 = !DILocation(line: 63, column: 5, scope: !2661, inlinedAt: !2695)
!2714 = !DILocation(line: 207, column: 3, scope: !159)
!2715 = distinct !DISubprogram(name: "xcharalloc", scope: !158, file: !158, line: 216, type: !1852, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !154, retainedNodes: !2716)
!2716 = !{!2717}
!2717 = !DILocalVariable(name: "n", arg: 1, scope: !2715, file: !158, line: 216, type: !91)
!2718 = !DILocation(line: 0, scope: !2715)
!2719 = !DILocation(line: 0, scope: !2613, inlinedAt: !2720)
!2720 = distinct !DILocation(line: 218, column: 10, scope: !2715)
!2721 = !DILocation(line: 41, column: 13, scope: !2613, inlinedAt: !2720)
!2722 = !DILocation(line: 42, column: 8, scope: !2622, inlinedAt: !2720)
!2723 = !DILocation(line: 42, column: 10, scope: !2622, inlinedAt: !2720)
!2724 = !DILocation(line: 43, column: 5, scope: !2622, inlinedAt: !2720)
!2725 = !DILocation(line: 218, column: 3, scope: !2715)
!2726 = distinct !DISubprogram(name: "x2realloc", scope: !155, file: !155, line: 74, type: !2727, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !154, retainedNodes: !2729)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!46, !46, !162}
!2729 = !{!2730, !2731}
!2730 = !DILocalVariable(name: "p", arg: 1, scope: !2726, file: !155, line: 74, type: !46)
!2731 = !DILocalVariable(name: "pn", arg: 2, scope: !2726, file: !155, line: 74, type: !162)
!2732 = !DILocation(line: 0, scope: !2726)
!2733 = !DILocation(line: 0, scope: !159, inlinedAt: !2734)
!2734 = distinct !DILocation(line: 76, column: 10, scope: !2726)
!2735 = !DILocation(line: 176, column: 14, scope: !159, inlinedAt: !2734)
!2736 = !DILocation(line: 178, column: 9, scope: !2678, inlinedAt: !2734)
!2737 = !DILocation(line: 178, column: 7, scope: !159, inlinedAt: !2734)
!2738 = !DILocation(line: 180, column: 13, scope: !2681, inlinedAt: !2734)
!2739 = !DILocation(line: 180, column: 11, scope: !2682, inlinedAt: !2734)
!2740 = !DILocation(line: 191, column: 11, scope: !2690, inlinedAt: !2734)
!2741 = !DILocation(line: 191, column: 11, scope: !2682, inlinedAt: !2734)
!2742 = !DILocation(line: 192, column: 9, scope: !2690, inlinedAt: !2734)
!2743 = !DILocation(line: 201, column: 11, scope: !2699, inlinedAt: !2734)
!2744 = !DILocation(line: 200, column: 11, scope: !2700, inlinedAt: !2734)
!2745 = !DILocation(line: 202, column: 9, scope: !2699, inlinedAt: !2734)
!2746 = !DILocation(line: 203, column: 14, scope: !2700, inlinedAt: !2734)
!2747 = !DILocation(line: 203, column: 18, scope: !2700, inlinedAt: !2734)
!2748 = !DILocation(line: 203, column: 9, scope: !2700, inlinedAt: !2734)
!2749 = !DILocation(line: 0, scope: !2646, inlinedAt: !2750)
!2750 = distinct !DILocation(line: 207, column: 10, scope: !159, inlinedAt: !2734)
!2751 = !DILocation(line: 53, column: 10, scope: !2654, inlinedAt: !2750)
!2752 = !DILocation(line: 206, column: 7, scope: !159, inlinedAt: !2734)
!2753 = !DILocation(line: 61, column: 7, scope: !2646, inlinedAt: !2750)
!2754 = !DILocation(line: 62, column: 8, scope: !2661, inlinedAt: !2750)
!2755 = !DILocation(line: 62, column: 10, scope: !2661, inlinedAt: !2750)
!2756 = !DILocation(line: 63, column: 5, scope: !2661, inlinedAt: !2750)
!2757 = !DILocation(line: 76, column: 3, scope: !2726)
!2758 = distinct !DISubprogram(name: "xzalloc", scope: !155, file: !155, line: 84, type: !2614, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !154, retainedNodes: !2759)
!2759 = !{!2760}
!2760 = !DILocalVariable(name: "n", arg: 1, scope: !2758, file: !155, line: 84, type: !91)
!2761 = !DILocation(line: 0, scope: !2758)
!2762 = !DILocalVariable(name: "n", arg: 1, scope: !2763, file: !155, line: 93, type: !91)
!2763 = distinct !DISubprogram(name: "xcalloc", scope: !155, file: !155, line: 93, type: !2601, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !154, retainedNodes: !2764)
!2764 = !{!2762, !2765, !2766}
!2765 = !DILocalVariable(name: "s", arg: 2, scope: !2763, file: !155, line: 93, type: !91)
!2766 = !DILocalVariable(name: "p", scope: !2763, file: !155, line: 95, type: !46)
!2767 = !DILocation(line: 0, scope: !2763, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 86, column: 10, scope: !2758)
!2769 = !DILocation(line: 100, column: 7, scope: !2770, inlinedAt: !2768)
!2770 = distinct !DILexicalBlock(scope: !2763, file: !155, line: 100, column: 7)
!2771 = !DILocation(line: 101, column: 7, scope: !2770, inlinedAt: !2768)
!2772 = !DILocation(line: 101, column: 18, scope: !2770, inlinedAt: !2768)
!2773 = !DILocation(line: 101, column: 16, scope: !2770, inlinedAt: !2768)
!2774 = !DILocation(line: 100, column: 7, scope: !2763, inlinedAt: !2768)
!2775 = !DILocation(line: 102, column: 5, scope: !2770, inlinedAt: !2768)
!2776 = !DILocation(line: 86, column: 3, scope: !2758)
!2777 = !DILocation(line: 0, scope: !2763)
!2778 = !DILocation(line: 100, column: 7, scope: !2770)
!2779 = !DILocation(line: 101, column: 7, scope: !2770)
!2780 = !DILocation(line: 101, column: 18, scope: !2770)
!2781 = !DILocation(line: 101, column: 16, scope: !2770)
!2782 = !DILocation(line: 100, column: 7, scope: !2763)
!2783 = !DILocation(line: 102, column: 5, scope: !2770)
!2784 = !DILocation(line: 103, column: 3, scope: !2763)
!2785 = distinct !DISubprogram(name: "xmemdup", scope: !155, file: !155, line: 111, type: !2786, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !154, retainedNodes: !2790)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!46, !2788, !91}
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2790 = !{!2791, !2792}
!2791 = !DILocalVariable(name: "p", arg: 1, scope: !2785, file: !155, line: 111, type: !2788)
!2792 = !DILocalVariable(name: "s", arg: 2, scope: !2785, file: !155, line: 111, type: !91)
!2793 = !DILocation(line: 0, scope: !2785)
!2794 = !DILocation(line: 0, scope: !2613, inlinedAt: !2795)
!2795 = distinct !DILocation(line: 113, column: 18, scope: !2785)
!2796 = !DILocation(line: 41, column: 13, scope: !2613, inlinedAt: !2795)
!2797 = !DILocation(line: 42, column: 8, scope: !2622, inlinedAt: !2795)
!2798 = !DILocation(line: 42, column: 10, scope: !2622, inlinedAt: !2795)
!2799 = !DILocation(line: 43, column: 5, scope: !2622, inlinedAt: !2795)
!2800 = !DILocalVariable(name: "__dest", arg: 1, scope: !2801, file: !1379, line: 26, type: !2804)
!2801 = distinct !DISubprogram(name: "memcpy", scope: !1379, file: !1379, line: 26, type: !2802, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !154, retainedNodes: !2806)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!46, !2804, !2805, !91}
!2804 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !46)
!2805 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2788)
!2806 = !{!2800, !2807, !2808}
!2807 = !DILocalVariable(name: "__src", arg: 2, scope: !2801, file: !1379, line: 26, type: !2805)
!2808 = !DILocalVariable(name: "__len", arg: 3, scope: !2801, file: !1379, line: 26, type: !91)
!2809 = !DILocation(line: 0, scope: !2801, inlinedAt: !2810)
!2810 = distinct !DILocation(line: 113, column: 10, scope: !2785)
!2811 = !DILocation(line: 29, column: 10, scope: !2801, inlinedAt: !2810)
!2812 = !DILocation(line: 113, column: 3, scope: !2785)
!2813 = distinct !DISubprogram(name: "xstrdup", scope: !155, file: !155, line: 119, type: !771, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !154, retainedNodes: !2814)
!2814 = !{!2815}
!2815 = !DILocalVariable(name: "string", arg: 1, scope: !2813, file: !155, line: 119, type: !6)
!2816 = !DILocation(line: 0, scope: !2813)
!2817 = !DILocation(line: 121, column: 27, scope: !2813)
!2818 = !DILocation(line: 121, column: 43, scope: !2813)
!2819 = !DILocation(line: 0, scope: !2785, inlinedAt: !2820)
!2820 = distinct !DILocation(line: 121, column: 10, scope: !2813)
!2821 = !DILocation(line: 0, scope: !2613, inlinedAt: !2822)
!2822 = distinct !DILocation(line: 113, column: 18, scope: !2785, inlinedAt: !2820)
!2823 = !DILocation(line: 41, column: 13, scope: !2613, inlinedAt: !2822)
!2824 = !DILocation(line: 42, column: 8, scope: !2622, inlinedAt: !2822)
!2825 = !DILocation(line: 42, column: 10, scope: !2622, inlinedAt: !2822)
!2826 = !DILocation(line: 43, column: 5, scope: !2622, inlinedAt: !2822)
!2827 = !DILocation(line: 0, scope: !2801, inlinedAt: !2828)
!2828 = distinct !DILocation(line: 113, column: 10, scope: !2785, inlinedAt: !2820)
!2829 = !DILocation(line: 29, column: 10, scope: !2801, inlinedAt: !2828)
!2830 = !DILocation(line: 121, column: 3, scope: !2813)
!2831 = distinct !DISubprogram(name: "xalloc_die", scope: !172, file: !172, line: 32, type: !778, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !4)
!2832 = !DILocation(line: 34, column: 10, scope: !2831)
!2833 = !DILocation(line: 34, column: 33, scope: !2831)
!2834 = !DILocation(line: 34, column: 3, scope: !2831)
!2835 = !DILocation(line: 40, column: 3, scope: !2831)
!2836 = distinct !DISubprogram(name: "rpl_calloc", scope: !174, file: !174, line: 42, type: !2601, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !173, retainedNodes: !2837)
!2837 = !{!2838, !2839, !2840, !2841}
!2838 = !DILocalVariable(name: "n", arg: 1, scope: !2836, file: !174, line: 42, type: !91)
!2839 = !DILocalVariable(name: "s", arg: 2, scope: !2836, file: !174, line: 42, type: !91)
!2840 = !DILocalVariable(name: "result", scope: !2836, file: !174, line: 44, type: !46)
!2841 = !DILocalVariable(name: "bytes", scope: !2842, file: !174, line: 56, type: !91)
!2842 = distinct !DILexicalBlock(scope: !2843, file: !174, line: 53, column: 5)
!2843 = distinct !DILexicalBlock(scope: !2836, file: !174, line: 47, column: 7)
!2844 = !DILocation(line: 0, scope: !2836)
!2845 = !DILocation(line: 47, column: 9, scope: !2843)
!2846 = !DILocation(line: 47, column: 14, scope: !2843)
!2847 = !DILocation(line: 0, scope: !2842)
!2848 = !DILocation(line: 57, column: 21, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2842, file: !174, line: 57, column: 11)
!2850 = !DILocation(line: 57, column: 11, scope: !2842)
!2851 = !DILocation(line: 59, column: 11, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2849, file: !174, line: 58, column: 9)
!2853 = !DILocation(line: 59, column: 17, scope: !2852)
!2854 = !DILocation(line: 65, column: 12, scope: !2836)
!2855 = !DILocation(line: 72, column: 3, scope: !2836)
!2856 = !DILocation(line: 73, column: 1, scope: !2836)
!2857 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !176, file: !176, line: 86, type: !2858, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !175, retainedNodes: !2872)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{!91, !2860, !6, !91, !2861}
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1131, line: 6, baseType: !2863)
!2863 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1133, line: 21, baseType: !2864)
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1133, line: 13, size: 64, elements: !2865)
!2865 = !{!2866, !2867}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2864, file: !1133, line: 15, baseType: !23, size: 32)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2864, file: !1133, line: 20, baseType: !2868, size: 32, offset: 32)
!2868 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2864, file: !1133, line: 16, size: 32, elements: !2869)
!2869 = !{!2870, !2871}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2868, file: !1133, line: 18, baseType: !56, size: 32)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2868, file: !1133, line: 19, baseType: !1142, size: 32)
!2872 = !{!2873, !2874, !2875, !2876, !2877, !2878, !2879}
!2873 = !DILocalVariable(name: "pwc", arg: 1, scope: !2857, file: !176, line: 86, type: !2860)
!2874 = !DILocalVariable(name: "s", arg: 2, scope: !2857, file: !176, line: 86, type: !6)
!2875 = !DILocalVariable(name: "n", arg: 3, scope: !2857, file: !176, line: 86, type: !91)
!2876 = !DILocalVariable(name: "ps", arg: 4, scope: !2857, file: !176, line: 86, type: !2861)
!2877 = !DILocalVariable(name: "ret", scope: !2857, file: !176, line: 88, type: !91)
!2878 = !DILocalVariable(name: "wc", scope: !2857, file: !176, line: 89, type: !1147)
!2879 = !DILocalVariable(name: "uc", scope: !2880, file: !176, line: 156, type: !1009)
!2880 = distinct !DILexicalBlock(scope: !2881, file: !176, line: 155, column: 5)
!2881 = distinct !DILexicalBlock(scope: !2857, file: !176, line: 154, column: 7)
!2882 = !DILocation(line: 0, scope: !2857)
!2883 = !DILocation(line: 89, column: 3, scope: !2857)
!2884 = !DILocation(line: 105, column: 9, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2857, file: !176, line: 105, column: 7)
!2886 = !DILocation(line: 105, column: 7, scope: !2857)
!2887 = !DILocation(line: 145, column: 9, scope: !2857)
!2888 = !DILocation(line: 154, column: 19, scope: !2881)
!2889 = !DILocation(line: 154, column: 26, scope: !2881)
!2890 = !DILocation(line: 154, column: 41, scope: !2881)
!2891 = !DILocation(line: 154, column: 7, scope: !2857)
!2892 = !DILocation(line: 156, column: 26, scope: !2880)
!2893 = !DILocation(line: 0, scope: !2880)
!2894 = !DILocation(line: 157, column: 14, scope: !2880)
!2895 = !DILocation(line: 157, column: 12, scope: !2880)
!2896 = !DILocation(line: 163, column: 1, scope: !2857)
!2897 = !DISubprogram(name: "mbrtowc", scope: !1812, file: !1812, line: 296, type: !2898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!93, !37, !6, !93, !2900}
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2901 = distinct !DISubprogram(name: "close_stream", scope: !179, file: !179, line: 56, type: !2902, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !2938)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!23, !2904}
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2446, line: 7, baseType: !2906)
!2906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !668, line: 49, size: 1728, elements: !2907)
!2907 = !{!2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2906, file: !668, line: 51, baseType: !23, size: 32)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2906, file: !668, line: 54, baseType: !47, size: 64, offset: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2906, file: !668, line: 55, baseType: !47, size: 64, offset: 128)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2906, file: !668, line: 56, baseType: !47, size: 64, offset: 192)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2906, file: !668, line: 57, baseType: !47, size: 64, offset: 256)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2906, file: !668, line: 58, baseType: !47, size: 64, offset: 320)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2906, file: !668, line: 59, baseType: !47, size: 64, offset: 384)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2906, file: !668, line: 60, baseType: !47, size: 64, offset: 448)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2906, file: !668, line: 61, baseType: !47, size: 64, offset: 512)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2906, file: !668, line: 64, baseType: !47, size: 64, offset: 576)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2906, file: !668, line: 65, baseType: !47, size: 64, offset: 640)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2906, file: !668, line: 66, baseType: !47, size: 64, offset: 704)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2906, file: !668, line: 68, baseType: !683, size: 64, offset: 768)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2906, file: !668, line: 70, baseType: !2922, size: 64, offset: 832)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2906, file: !668, line: 72, baseType: !23, size: 32, offset: 896)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2906, file: !668, line: 73, baseType: !23, size: 32, offset: 928)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2906, file: !668, line: 74, baseType: !689, size: 64, offset: 960)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2906, file: !668, line: 77, baseType: !90, size: 16, offset: 1024)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2906, file: !668, line: 78, baseType: !694, size: 8, offset: 1040)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2906, file: !668, line: 79, baseType: !696, size: 8, offset: 1048)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2906, file: !668, line: 81, baseType: !700, size: 64, offset: 1088)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2906, file: !668, line: 89, baseType: !703, size: 64, offset: 1152)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2906, file: !668, line: 91, baseType: !705, size: 64, offset: 1216)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2906, file: !668, line: 92, baseType: !708, size: 64, offset: 1280)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2906, file: !668, line: 93, baseType: !2922, size: 64, offset: 1344)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2906, file: !668, line: 94, baseType: !46, size: 64, offset: 1408)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2906, file: !668, line: 95, baseType: !91, size: 64, offset: 1472)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2906, file: !668, line: 96, baseType: !23, size: 32, offset: 1536)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2906, file: !668, line: 98, baseType: !715, size: 160, offset: 1568)
!2938 = !{!2939, !2940, !2942, !2943}
!2939 = !DILocalVariable(name: "stream", arg: 1, scope: !2901, file: !179, line: 56, type: !2904)
!2940 = !DILocalVariable(name: "some_pending", scope: !2901, file: !179, line: 58, type: !2941)
!2941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!2942 = !DILocalVariable(name: "prev_fail", scope: !2901, file: !179, line: 59, type: !2941)
!2943 = !DILocalVariable(name: "fclose_fail", scope: !2901, file: !179, line: 60, type: !2941)
!2944 = !DILocation(line: 0, scope: !2901)
!2945 = !DILocation(line: 58, column: 30, scope: !2901)
!2946 = !DILocalVariable(name: "__stream", arg: 1, scope: !2947, file: !2948, line: 135, type: !2904)
!2947 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2948, file: !2948, line: 135, type: !2902, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !2949)
!2948 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!2949 = !{!2946}
!2950 = !DILocation(line: 0, scope: !2947, inlinedAt: !2951)
!2951 = distinct !DILocation(line: 59, column: 27, scope: !2901)
!2952 = !DILocation(line: 137, column: 10, scope: !2947, inlinedAt: !2951)
!2953 = !{!2954, !741, i64 0}
!2954 = !{!"_IO_FILE", !741, i64 0, !597, i64 8, !597, i64 16, !597, i64 24, !597, i64 32, !597, i64 40, !597, i64 48, !597, i64 56, !597, i64 64, !597, i64 72, !597, i64 80, !597, i64 88, !597, i64 96, !597, i64 104, !741, i64 112, !741, i64 116, !1888, i64 120, !1371, i64 128, !598, i64 130, !598, i64 131, !597, i64 136, !1888, i64 144, !597, i64 152, !597, i64 160, !597, i64 168, !597, i64 176, !1888, i64 184, !741, i64 192, !598, i64 196}
!2955 = !DILocation(line: 59, column: 43, scope: !2901)
!2956 = !DILocation(line: 60, column: 29, scope: !2901)
!2957 = !DILocation(line: 60, column: 45, scope: !2901)
!2958 = !DILocation(line: 70, column: 17, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2901, file: !179, line: 70, column: 7)
!2960 = !DILocation(line: 58, column: 50, scope: !2901)
!2961 = !DILocation(line: 70, column: 33, scope: !2959)
!2962 = !DILocation(line: 70, column: 53, scope: !2959)
!2963 = !DILocation(line: 70, column: 59, scope: !2959)
!2964 = !DILocation(line: 70, column: 7, scope: !2901)
!2965 = !DILocation(line: 72, column: 11, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2959, file: !179, line: 71, column: 5)
!2967 = !DILocation(line: 73, column: 9, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2966, file: !179, line: 72, column: 11)
!2969 = !DILocation(line: 73, column: 15, scope: !2968)
!2970 = !DILocation(line: 78, column: 1, scope: !2901)
!2971 = distinct !DISubprogram(name: "hard_locale", scope: !181, file: !181, line: 27, type: !2972, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !180, retainedNodes: !2974)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!16, !23}
!2974 = !{!2975, !2976}
!2975 = !DILocalVariable(name: "category", arg: 1, scope: !2971, file: !181, line: 27, type: !23)
!2976 = !DILocalVariable(name: "locale", scope: !2971, file: !181, line: 29, type: !2977)
!2977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !2978)
!2978 = !{!2979}
!2979 = !DISubrange(count: 257)
!2980 = !DILocation(line: 0, scope: !2971)
!2981 = !DILocation(line: 29, column: 3, scope: !2971)
!2982 = !DILocation(line: 29, column: 8, scope: !2971)
!2983 = !DILocation(line: 31, column: 7, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2971, file: !181, line: 31, column: 7)
!2985 = !DILocation(line: 31, column: 7, scope: !2971)
!2986 = !DILocation(line: 34, column: 12, scope: !2971)
!2987 = !DILocation(line: 34, column: 38, scope: !2971)
!2988 = !DILocation(line: 34, column: 41, scope: !2971)
!2989 = !DILocation(line: 34, column: 66, scope: !2971)
!2990 = !DILocation(line: 35, column: 1, scope: !2971)
!2991 = distinct !DISubprogram(name: "locale_charset", scope: !183, file: !183, line: 831, type: !2992, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !2994)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!6}
!2994 = !{!2995}
!2995 = !DILocalVariable(name: "codeset", scope: !2991, file: !183, line: 833, type: !6)
!2996 = !DILocation(line: 847, column: 13, scope: !2991)
!2997 = !DILocation(line: 0, scope: !2991)
!2998 = !DILocation(line: 911, column: 15, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2991, file: !183, line: 911, column: 7)
!3000 = !DILocation(line: 911, column: 7, scope: !2991)
!3001 = !DILocation(line: 1070, column: 13, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !3003, file: !183, line: 1070, column: 13)
!3003 = distinct !DILexicalBlock(scope: !3004, file: !183, line: 1060, column: 7)
!3004 = distinct !DILexicalBlock(scope: !2991, file: !183, line: 1019, column: 3)
!3005 = !DILocation(line: 1070, column: 24, scope: !3002)
!3006 = !DILocation(line: 1070, column: 13, scope: !3003)
!3007 = !DILocation(line: 1158, column: 3, scope: !2991)
!3008 = !DISubprogram(name: "nl_langinfo", scope: !186, file: !186, line: 661, type: !3009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{!47, !23}
!3011 = distinct !DISubprogram(name: "setlocale_null_r", scope: !572, file: !572, line: 269, type: !3012, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !571, retainedNodes: !3014)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!23, !23, !47, !91}
!3014 = !{!3015, !3016, !3017}
!3015 = !DILocalVariable(name: "category", arg: 1, scope: !3011, file: !572, line: 269, type: !23)
!3016 = !DILocalVariable(name: "buf", arg: 2, scope: !3011, file: !572, line: 269, type: !47)
!3017 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3011, file: !572, line: 269, type: !91)
!3018 = !DILocation(line: 0, scope: !3011)
!3019 = !DILocalVariable(name: "category", arg: 1, scope: !3020, file: !572, line: 91, type: !23)
!3020 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !572, file: !572, line: 91, type: !3012, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !571, retainedNodes: !3021)
!3021 = !{!3019, !3022, !3023, !3024, !3025}
!3022 = !DILocalVariable(name: "buf", arg: 2, scope: !3020, file: !572, line: 91, type: !47)
!3023 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3020, file: !572, line: 91, type: !91)
!3024 = !DILocalVariable(name: "result", scope: !3020, file: !572, line: 140, type: !6)
!3025 = !DILocalVariable(name: "length", scope: !3026, file: !572, line: 154, type: !91)
!3026 = distinct !DILexicalBlock(scope: !3027, file: !572, line: 153, column: 5)
!3027 = distinct !DILexicalBlock(scope: !3020, file: !572, line: 142, column: 7)
!3028 = !DILocation(line: 0, scope: !3020, inlinedAt: !3029)
!3029 = distinct !DILocation(line: 274, column: 10, scope: !3011)
!3030 = !DILocalVariable(name: "category", arg: 1, scope: !3031, file: !572, line: 60, type: !23)
!3031 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !572, file: !572, line: 60, type: !3032, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !571, retainedNodes: !3034)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!6, !23}
!3034 = !{!3030, !3035}
!3035 = !DILocalVariable(name: "result", scope: !3031, file: !572, line: 62, type: !6)
!3036 = !DILocation(line: 0, scope: !3031, inlinedAt: !3037)
!3037 = distinct !DILocation(line: 140, column: 24, scope: !3020, inlinedAt: !3029)
!3038 = !DILocation(line: 62, column: 24, scope: !3031, inlinedAt: !3037)
!3039 = !DILocation(line: 142, column: 14, scope: !3027, inlinedAt: !3029)
!3040 = !DILocation(line: 142, column: 7, scope: !3020, inlinedAt: !3029)
!3041 = !DILocation(line: 145, column: 19, scope: !3042, inlinedAt: !3029)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !572, line: 145, column: 11)
!3043 = distinct !DILexicalBlock(scope: !3027, file: !572, line: 143, column: 5)
!3044 = !DILocation(line: 145, column: 11, scope: !3043, inlinedAt: !3029)
!3045 = !DILocation(line: 149, column: 16, scope: !3042, inlinedAt: !3029)
!3046 = !DILocation(line: 149, column: 9, scope: !3042, inlinedAt: !3029)
!3047 = !DILocation(line: 154, column: 23, scope: !3026, inlinedAt: !3029)
!3048 = !DILocation(line: 0, scope: !3026, inlinedAt: !3029)
!3049 = !DILocation(line: 155, column: 18, scope: !3050, inlinedAt: !3029)
!3050 = distinct !DILexicalBlock(scope: !3026, file: !572, line: 155, column: 11)
!3051 = !DILocation(line: 155, column: 11, scope: !3026, inlinedAt: !3029)
!3052 = !DILocation(line: 157, column: 39, scope: !3053, inlinedAt: !3029)
!3053 = distinct !DILexicalBlock(scope: !3050, file: !572, line: 156, column: 9)
!3054 = !DILocalVariable(name: "__dest", arg: 1, scope: !3055, file: !1379, line: 26, type: !2804)
!3055 = distinct !DISubprogram(name: "memcpy", scope: !1379, file: !1379, line: 26, type: !2802, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !571, retainedNodes: !3056)
!3056 = !{!3054, !3057, !3058}
!3057 = !DILocalVariable(name: "__src", arg: 2, scope: !3055, file: !1379, line: 26, type: !2805)
!3058 = !DILocalVariable(name: "__len", arg: 3, scope: !3055, file: !1379, line: 26, type: !91)
!3059 = !DILocation(line: 0, scope: !3055, inlinedAt: !3060)
!3060 = distinct !DILocation(line: 157, column: 11, scope: !3053, inlinedAt: !3029)
!3061 = !DILocation(line: 29, column: 10, scope: !3055, inlinedAt: !3060)
!3062 = !DILocation(line: 158, column: 11, scope: !3053, inlinedAt: !3029)
!3063 = !DILocation(line: 162, column: 23, scope: !3064, inlinedAt: !3029)
!3064 = distinct !DILexicalBlock(scope: !3065, file: !572, line: 162, column: 15)
!3065 = distinct !DILexicalBlock(scope: !3050, file: !572, line: 161, column: 9)
!3066 = !DILocation(line: 162, column: 15, scope: !3065, inlinedAt: !3029)
!3067 = !DILocation(line: 167, column: 44, scope: !3068, inlinedAt: !3029)
!3068 = distinct !DILexicalBlock(scope: !3064, file: !572, line: 163, column: 13)
!3069 = !DILocation(line: 0, scope: !3055, inlinedAt: !3070)
!3070 = distinct !DILocation(line: 167, column: 15, scope: !3068, inlinedAt: !3029)
!3071 = !DILocation(line: 29, column: 10, scope: !3055, inlinedAt: !3070)
!3072 = !DILocation(line: 168, column: 15, scope: !3068, inlinedAt: !3029)
!3073 = !DILocation(line: 168, column: 32, scope: !3068, inlinedAt: !3029)
!3074 = !DILocation(line: 169, column: 13, scope: !3068, inlinedAt: !3029)
!3075 = !DILocation(line: 0, scope: !3027, inlinedAt: !3029)
!3076 = !DILocation(line: 274, column: 3, scope: !3011)
!3077 = distinct !DISubprogram(name: "setlocale_null", scope: !572, file: !572, line: 301, type: !3032, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !571, retainedNodes: !3078)
!3078 = !{!3079}
!3079 = !DILocalVariable(name: "category", arg: 1, scope: !3077, file: !572, line: 301, type: !23)
!3080 = !DILocation(line: 0, scope: !3077)
!3081 = !DILocation(line: 0, scope: !3031, inlinedAt: !3082)
!3082 = distinct !DILocation(line: 304, column: 10, scope: !3077)
!3083 = !DILocation(line: 62, column: 24, scope: !3031, inlinedAt: !3082)
!3084 = !DILocation(line: 304, column: 3, scope: !3077)
!3085 = distinct !DISubprogram(name: "rpl_fclose", scope: !574, file: !574, line: 58, type: !3086, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !3122)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!23, !3088}
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2446, line: 7, baseType: !3090)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !668, line: 49, size: 1728, elements: !3091)
!3091 = !{!3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3090, file: !668, line: 51, baseType: !23, size: 32)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3090, file: !668, line: 54, baseType: !47, size: 64, offset: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3090, file: !668, line: 55, baseType: !47, size: 64, offset: 128)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3090, file: !668, line: 56, baseType: !47, size: 64, offset: 192)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3090, file: !668, line: 57, baseType: !47, size: 64, offset: 256)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3090, file: !668, line: 58, baseType: !47, size: 64, offset: 320)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3090, file: !668, line: 59, baseType: !47, size: 64, offset: 384)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3090, file: !668, line: 60, baseType: !47, size: 64, offset: 448)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3090, file: !668, line: 61, baseType: !47, size: 64, offset: 512)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3090, file: !668, line: 64, baseType: !47, size: 64, offset: 576)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3090, file: !668, line: 65, baseType: !47, size: 64, offset: 640)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3090, file: !668, line: 66, baseType: !47, size: 64, offset: 704)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3090, file: !668, line: 68, baseType: !683, size: 64, offset: 768)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3090, file: !668, line: 70, baseType: !3106, size: 64, offset: 832)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3090, file: !668, line: 72, baseType: !23, size: 32, offset: 896)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3090, file: !668, line: 73, baseType: !23, size: 32, offset: 928)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3090, file: !668, line: 74, baseType: !689, size: 64, offset: 960)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3090, file: !668, line: 77, baseType: !90, size: 16, offset: 1024)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3090, file: !668, line: 78, baseType: !694, size: 8, offset: 1040)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3090, file: !668, line: 79, baseType: !696, size: 8, offset: 1048)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3090, file: !668, line: 81, baseType: !700, size: 64, offset: 1088)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3090, file: !668, line: 89, baseType: !703, size: 64, offset: 1152)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3090, file: !668, line: 91, baseType: !705, size: 64, offset: 1216)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3090, file: !668, line: 92, baseType: !708, size: 64, offset: 1280)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3090, file: !668, line: 93, baseType: !3106, size: 64, offset: 1344)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3090, file: !668, line: 94, baseType: !46, size: 64, offset: 1408)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3090, file: !668, line: 95, baseType: !91, size: 64, offset: 1472)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3090, file: !668, line: 96, baseType: !23, size: 32, offset: 1536)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3090, file: !668, line: 98, baseType: !715, size: 160, offset: 1568)
!3122 = !{!3123, !3124, !3125, !3126}
!3123 = !DILocalVariable(name: "fp", arg: 1, scope: !3085, file: !574, line: 58, type: !3088)
!3124 = !DILocalVariable(name: "saved_errno", scope: !3085, file: !574, line: 60, type: !23)
!3125 = !DILocalVariable(name: "fd", scope: !3085, file: !574, line: 61, type: !23)
!3126 = !DILocalVariable(name: "result", scope: !3085, file: !574, line: 62, type: !23)
!3127 = !DILocation(line: 0, scope: !3085)
!3128 = !DILocation(line: 65, column: 8, scope: !3085)
!3129 = !DILocation(line: 66, column: 10, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3085, file: !574, line: 66, column: 7)
!3131 = !DILocation(line: 66, column: 7, scope: !3085)
!3132 = !DILocation(line: 67, column: 12, scope: !3130)
!3133 = !DILocation(line: 67, column: 5, scope: !3130)
!3134 = !DILocation(line: 72, column: 9, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3085, file: !574, line: 72, column: 7)
!3136 = !DILocation(line: 72, column: 23, scope: !3135)
!3137 = !DILocation(line: 72, column: 33, scope: !3135)
!3138 = !DILocation(line: 72, column: 26, scope: !3135)
!3139 = !DILocation(line: 72, column: 59, scope: !3135)
!3140 = !DILocation(line: 73, column: 7, scope: !3135)
!3141 = !DILocation(line: 73, column: 10, scope: !3135)
!3142 = !DILocation(line: 72, column: 7, scope: !3085)
!3143 = !DILocation(line: 100, column: 12, scope: !3085)
!3144 = !DILocation(line: 105, column: 7, scope: !3085)
!3145 = !DILocation(line: 74, column: 19, scope: !3135)
!3146 = !DILocation(line: 105, column: 19, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3085, file: !574, line: 105, column: 7)
!3148 = !DILocation(line: 107, column: 13, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3147, file: !574, line: 106, column: 5)
!3150 = !DILocation(line: 109, column: 5, scope: !3149)
!3151 = !DILocation(line: 112, column: 1, scope: !3085)
!3152 = !DISubprogram(name: "fileno", scope: !663, file: !663, line: 785, type: !3153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!23, !3106}
!3155 = !DISubprogram(name: "fclose", scope: !663, file: !663, line: 213, type: !3153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3156 = !DISubprogram(name: "lseek", scope: !785, file: !785, line: 334, type: !3157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!691, !23, !691, !23}
!3159 = distinct !DISubprogram(name: "rpl_fflush", scope: !576, file: !576, line: 129, type: !3160, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !3196)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!23, !3162}
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2446, line: 7, baseType: !3164)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !668, line: 49, size: 1728, elements: !3165)
!3165 = !{!3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3164, file: !668, line: 51, baseType: !23, size: 32)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3164, file: !668, line: 54, baseType: !47, size: 64, offset: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3164, file: !668, line: 55, baseType: !47, size: 64, offset: 128)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3164, file: !668, line: 56, baseType: !47, size: 64, offset: 192)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3164, file: !668, line: 57, baseType: !47, size: 64, offset: 256)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3164, file: !668, line: 58, baseType: !47, size: 64, offset: 320)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3164, file: !668, line: 59, baseType: !47, size: 64, offset: 384)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3164, file: !668, line: 60, baseType: !47, size: 64, offset: 448)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3164, file: !668, line: 61, baseType: !47, size: 64, offset: 512)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3164, file: !668, line: 64, baseType: !47, size: 64, offset: 576)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3164, file: !668, line: 65, baseType: !47, size: 64, offset: 640)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3164, file: !668, line: 66, baseType: !47, size: 64, offset: 704)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3164, file: !668, line: 68, baseType: !683, size: 64, offset: 768)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3164, file: !668, line: 70, baseType: !3180, size: 64, offset: 832)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3164, file: !668, line: 72, baseType: !23, size: 32, offset: 896)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3164, file: !668, line: 73, baseType: !23, size: 32, offset: 928)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3164, file: !668, line: 74, baseType: !689, size: 64, offset: 960)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3164, file: !668, line: 77, baseType: !90, size: 16, offset: 1024)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3164, file: !668, line: 78, baseType: !694, size: 8, offset: 1040)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3164, file: !668, line: 79, baseType: !696, size: 8, offset: 1048)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3164, file: !668, line: 81, baseType: !700, size: 64, offset: 1088)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3164, file: !668, line: 89, baseType: !703, size: 64, offset: 1152)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3164, file: !668, line: 91, baseType: !705, size: 64, offset: 1216)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3164, file: !668, line: 92, baseType: !708, size: 64, offset: 1280)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3164, file: !668, line: 93, baseType: !3180, size: 64, offset: 1344)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3164, file: !668, line: 94, baseType: !46, size: 64, offset: 1408)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3164, file: !668, line: 95, baseType: !91, size: 64, offset: 1472)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3164, file: !668, line: 96, baseType: !23, size: 32, offset: 1536)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3164, file: !668, line: 98, baseType: !715, size: 160, offset: 1568)
!3196 = !{!3197}
!3197 = !DILocalVariable(name: "stream", arg: 1, scope: !3159, file: !576, line: 129, type: !3162)
!3198 = !DILocation(line: 0, scope: !3159)
!3199 = !DILocation(line: 150, column: 14, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3159, file: !576, line: 150, column: 7)
!3201 = !DILocation(line: 150, column: 22, scope: !3200)
!3202 = !DILocation(line: 150, column: 27, scope: !3200)
!3203 = !DILocation(line: 150, column: 7, scope: !3159)
!3204 = !DILocation(line: 151, column: 12, scope: !3200)
!3205 = !DILocation(line: 151, column: 5, scope: !3200)
!3206 = !DILocalVariable(name: "fp", arg: 1, scope: !3207, file: !576, line: 41, type: !3162)
!3207 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !576, file: !576, line: 41, type: !3208, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !3210)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{null, !3162}
!3210 = !{!3206}
!3211 = !DILocation(line: 0, scope: !3207, inlinedAt: !3212)
!3212 = distinct !DILocation(line: 156, column: 3, scope: !3159)
!3213 = !DILocation(line: 43, column: 11, scope: !3214, inlinedAt: !3212)
!3214 = distinct !DILexicalBlock(scope: !3207, file: !576, line: 43, column: 7)
!3215 = !DILocation(line: 43, column: 18, scope: !3214, inlinedAt: !3212)
!3216 = !DILocation(line: 43, column: 7, scope: !3207, inlinedAt: !3212)
!3217 = !DILocation(line: 45, column: 5, scope: !3214, inlinedAt: !3212)
!3218 = !DILocation(line: 158, column: 10, scope: !3159)
!3219 = !DILocation(line: 158, column: 3, scope: !3159)
!3220 = !DILocation(line: 235, column: 1, scope: !3159)
!3221 = !DISubprogram(name: "fflush", scope: !663, file: !663, line: 218, type: !3222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{!23, !3180}
!3224 = distinct !DISubprogram(name: "rpl_fseeko", scope: !578, file: !578, line: 28, type: !3225, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !3262)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!23, !3227, !3261, !23}
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2446, line: 7, baseType: !3229)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !668, line: 49, size: 1728, elements: !3230)
!3230 = !{!3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3229, file: !668, line: 51, baseType: !23, size: 32)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3229, file: !668, line: 54, baseType: !47, size: 64, offset: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3229, file: !668, line: 55, baseType: !47, size: 64, offset: 128)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3229, file: !668, line: 56, baseType: !47, size: 64, offset: 192)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3229, file: !668, line: 57, baseType: !47, size: 64, offset: 256)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3229, file: !668, line: 58, baseType: !47, size: 64, offset: 320)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3229, file: !668, line: 59, baseType: !47, size: 64, offset: 384)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3229, file: !668, line: 60, baseType: !47, size: 64, offset: 448)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3229, file: !668, line: 61, baseType: !47, size: 64, offset: 512)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3229, file: !668, line: 64, baseType: !47, size: 64, offset: 576)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3229, file: !668, line: 65, baseType: !47, size: 64, offset: 640)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3229, file: !668, line: 66, baseType: !47, size: 64, offset: 704)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3229, file: !668, line: 68, baseType: !683, size: 64, offset: 768)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3229, file: !668, line: 70, baseType: !3245, size: 64, offset: 832)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3229, file: !668, line: 72, baseType: !23, size: 32, offset: 896)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3229, file: !668, line: 73, baseType: !23, size: 32, offset: 928)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3229, file: !668, line: 74, baseType: !689, size: 64, offset: 960)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3229, file: !668, line: 77, baseType: !90, size: 16, offset: 1024)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3229, file: !668, line: 78, baseType: !694, size: 8, offset: 1040)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3229, file: !668, line: 79, baseType: !696, size: 8, offset: 1048)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3229, file: !668, line: 81, baseType: !700, size: 64, offset: 1088)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3229, file: !668, line: 89, baseType: !703, size: 64, offset: 1152)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3229, file: !668, line: 91, baseType: !705, size: 64, offset: 1216)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3229, file: !668, line: 92, baseType: !708, size: 64, offset: 1280)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3229, file: !668, line: 93, baseType: !3245, size: 64, offset: 1344)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3229, file: !668, line: 94, baseType: !46, size: 64, offset: 1408)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3229, file: !668, line: 95, baseType: !91, size: 64, offset: 1472)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3229, file: !668, line: 96, baseType: !23, size: 32, offset: 1536)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3229, file: !668, line: 98, baseType: !715, size: 160, offset: 1568)
!3261 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !663, line: 63, baseType: !689)
!3262 = !{!3263, !3264, !3265, !3266}
!3263 = !DILocalVariable(name: "fp", arg: 1, scope: !3224, file: !578, line: 28, type: !3227)
!3264 = !DILocalVariable(name: "offset", arg: 2, scope: !3224, file: !578, line: 28, type: !3261)
!3265 = !DILocalVariable(name: "whence", arg: 3, scope: !3224, file: !578, line: 28, type: !23)
!3266 = !DILocalVariable(name: "pos", scope: !3267, file: !578, line: 117, type: !3261)
!3267 = distinct !DILexicalBlock(scope: !3268, file: !578, line: 113, column: 5)
!3268 = distinct !DILexicalBlock(scope: !3224, file: !578, line: 52, column: 7)
!3269 = !DILocation(line: 0, scope: !3224)
!3270 = !DILocation(line: 52, column: 11, scope: !3268)
!3271 = !{!2954, !597, i64 16}
!3272 = !DILocation(line: 52, column: 31, scope: !3268)
!3273 = !{!2954, !597, i64 8}
!3274 = !DILocation(line: 52, column: 24, scope: !3268)
!3275 = !DILocation(line: 53, column: 7, scope: !3268)
!3276 = !DILocation(line: 53, column: 14, scope: !3268)
!3277 = !{!2954, !597, i64 40}
!3278 = !DILocation(line: 53, column: 35, scope: !3268)
!3279 = !{!2954, !597, i64 32}
!3280 = !DILocation(line: 53, column: 28, scope: !3268)
!3281 = !DILocation(line: 54, column: 7, scope: !3268)
!3282 = !DILocation(line: 54, column: 14, scope: !3268)
!3283 = !{!2954, !597, i64 72}
!3284 = !DILocation(line: 54, column: 28, scope: !3268)
!3285 = !DILocation(line: 52, column: 7, scope: !3224)
!3286 = !DILocation(line: 117, column: 26, scope: !3267)
!3287 = !DILocation(line: 117, column: 19, scope: !3267)
!3288 = !DILocation(line: 0, scope: !3267)
!3289 = !DILocation(line: 118, column: 15, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3267, file: !578, line: 118, column: 11)
!3291 = !DILocation(line: 118, column: 11, scope: !3267)
!3292 = !DILocation(line: 129, column: 11, scope: !3267)
!3293 = !DILocation(line: 129, column: 18, scope: !3267)
!3294 = !DILocation(line: 130, column: 11, scope: !3267)
!3295 = !DILocation(line: 130, column: 19, scope: !3267)
!3296 = !{!2954, !1888, i64 144}
!3297 = !DILocation(line: 161, column: 7, scope: !3267)
!3298 = !DILocation(line: 163, column: 10, scope: !3224)
!3299 = !DILocation(line: 163, column: 3, scope: !3224)
!3300 = !DILocation(line: 164, column: 1, scope: !3224)
!3301 = !DISubprogram(name: "fseeko", scope: !663, file: !663, line: 712, type: !3302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!23, !3245, !691, !23}
