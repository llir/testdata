; ModuleID = 'coreutils-8.32/src/logname.bc'
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
@.str.1 = private unnamed_addr constant [20 x i8] c"Usage: %s [OPTION]\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Print the name of the current user.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"logname\00", align 1
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
@.str.10 = private unnamed_addr constant [15 x i8] c"FIXME: unknown\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"no login name\00", align 1
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
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 5) #24, !dbg !599
  %11 = load i8*, i8** @program_name, align 8, !dbg !599, !tbaa !595
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #24, !dbg !599
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 5) #24, !dbg !601
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !601, !tbaa !595
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !601
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #24, !dbg !602
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !602, !tbaa !595
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !602
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #24, !dbg !603
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !603, !tbaa !595
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !603
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), metadata !604, metadata !DIExpression()) #24, !dbg !623
  %22 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !625
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %22) #24, !dbg !625
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !610, metadata !DIExpression()) #24, !dbg !626
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %22, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #24, !dbg !626
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), metadata !619, metadata !DIExpression()) #24, !dbg !623
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !620, metadata !DIExpression()) #24, !dbg !623
  %23 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !627
  call void @llvm.dbg.value(metadata %struct.infomap* %23, metadata !620, metadata !DIExpression()) #24, !dbg !623
  br label %24, !dbg !628

24:                                               ; preds = %29, %9
  %25 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), %9 ]
  %26 = phi %struct.infomap* [ %30, %29 ], [ %23, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !620, metadata !DIExpression()) #24, !dbg !623
  %27 = tail call i32 @strcmp(i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* nonnull %25) #25, !dbg !629
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
  %39 = select i1 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %37, !dbg !642
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
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #24, !dbg !653
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.26, i64 0, i64 0), i32 5) #24, !dbg !654
  %55 = icmp eq i8* %39, getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), !dbg !654
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
  call void @llvm.dbg.value(metadata i32 %0, metadata !726, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.value(metadata i8** %1, metadata !727, metadata !DIExpression()), !dbg !729
  %3 = load i8*, i8** %1, align 8, !dbg !730, !tbaa !595
  tail call void @set_program_name(i8* %3) #24, !dbg !731
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #24, !dbg !732
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #24, !dbg !733
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #24, !dbg !734
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #24, !dbg !735
  %8 = load i8*, i8** @Version, align 8, !dbg !736, !tbaa !595
  tail call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %8, i1 zeroext true, void (i32)* nonnull @usage, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* null) #24, !dbg !737
  %9 = load i32, i32* @optind, align 4, !dbg !738, !tbaa !740
  %10 = icmp slt i32 %9, %0, !dbg !742
  br i1 %10, label %11, label %18, !dbg !743

11:                                               ; preds = %2
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 5) #24, !dbg !744
  %13 = load i32, i32* @optind, align 4, !dbg !746, !tbaa !740
  %14 = sext i32 %13 to i64, !dbg !747
  %15 = getelementptr inbounds i8*, i8** %1, i64 %14, !dbg !747
  %16 = load i8*, i8** %15, align 8, !dbg !747, !tbaa !595
  %17 = tail call i8* @quote(i8* %16) #24, !dbg !748
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %12, i8* %17) #24, !dbg !749
  tail call void @usage(i32 1) #27, !dbg !750
  unreachable, !dbg !750

18:                                               ; preds = %2
  %19 = tail call i8* @getlogin() #24, !dbg !751
  call void @llvm.dbg.value(metadata i8* %19, metadata !728, metadata !DIExpression()), !dbg !729
  %20 = icmp eq i8* %19, null, !dbg !752
  br i1 %20, label %21, label %23, !dbg !754

21:                                               ; preds = %18
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 5) #24, !dbg !755
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %22) #24, !dbg !755
  unreachable, !dbg !755

23:                                               ; preds = %18
  %24 = tail call i32 @puts(i8* nonnull %19), !dbg !756
  ret i32 0, !dbg !757
}

; Function Attrs: nounwind
declare !dbg !758 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !761 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !764 i32 @atexit(void ()*) local_unnamed_addr #2

declare !dbg !771 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

declare !dbg !775 i8* @getlogin() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !779 noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #9 !dbg !782 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !784, metadata !DIExpression()), !dbg !785
  store i8* %0, i8** @file_name, align 8, !dbg !786, !tbaa !595
  ret void, !dbg !787
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #9 !dbg !788 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !792, metadata !DIExpression()), !dbg !793
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !794, !tbaa !795
  ret void, !dbg !797
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !798 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !803, !tbaa !595
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #24, !dbg !804
  %3 = icmp eq i32 %2, 0, !dbg !805
  br i1 %3, label %22, label %4, !dbg !806

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !807, !tbaa !795, !range !808
  %6 = icmp eq i8 %5, 0, !dbg !807
  br i1 %6, label %11, label %7, !dbg !809

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #28, !dbg !810
  %9 = load i32, i32* %8, align 4, !dbg !810, !tbaa !740
  %10 = icmp eq i32 %9, 32, !dbg !811
  br i1 %10, label %22, label %11, !dbg !812

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i32 5) #24, !dbg !813
  call void @llvm.dbg.value(metadata i8* %12, metadata !800, metadata !DIExpression()), !dbg !814
  %13 = load i8*, i8** @file_name, align 8, !dbg !815, !tbaa !595
  %14 = icmp eq i8* %13, null, !dbg !815
  %15 = tail call i32* @__errno_location() #28, !dbg !817
  %16 = load i32, i32* %15, align 4, !dbg !817, !tbaa !740
  br i1 %14, label %19, label %17, !dbg !818

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #24, !dbg !819
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.32, i64 0, i64 0), i8* %18, i8* %12) #24, !dbg !820
  br label %20, !dbg !820

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.33, i64 0, i64 0), i8* %12) #24, !dbg !821
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !822, !tbaa !740
  tail call void @_exit(i32 %21) #26, !dbg !823
  unreachable, !dbg !823

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !824, !tbaa !595
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #24, !dbg !826
  %25 = icmp eq i32 %24, 0, !dbg !827
  br i1 %25, label %28, label %26, !dbg !828

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !829, !tbaa !740
  tail call void @_exit(i32 %27) #26, !dbg !830
  unreachable, !dbg !830

28:                                               ; preds = %22
  ret void, !dbg !831
}

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_long_options(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, void (i32)* nocapture %5, ...) local_unnamed_addr #8 !dbg !832 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !837, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i8** %1, metadata !838, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i8* %2, metadata !839, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i8* %3, metadata !840, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i8* %4, metadata !841, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !842, metadata !DIExpression()), !dbg !861
  %8 = load i32, i32* @opterr, align 4, !dbg !862, !tbaa !740
  call void @llvm.dbg.value(metadata i32 %8, metadata !844, metadata !DIExpression()), !dbg !861
  store i32 0, i32* @opterr, align 4, !dbg !863, !tbaa !740
  %9 = icmp eq i32 %0, 2, !dbg !864
  br i1 %9, label %10, label %17, !dbg !865

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #24, !dbg !866
  call void @llvm.dbg.value(metadata i32 %11, metadata !843, metadata !DIExpression()), !dbg !861
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !867

12:                                               ; preds = %10
  tail call void %5(i32 0) #24, !dbg !868
  br label %17, !dbg !869

13:                                               ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !870
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #24, !dbg !870
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !845, metadata !DIExpression()), !dbg !871
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !872
  call void @llvm.va_start(i8* nonnull %14), !dbg !872
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !873, !tbaa !595
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #24, !dbg !874
  call void @exit(i32 0) #26, !dbg !875
  unreachable, !dbg !875

17:                                               ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !876, !tbaa !740
  store i32 0, i32* @optind, align 4, !dbg !877, !tbaa !740
  ret void, !dbg !878
}

; Function Attrs: nounwind
declare !dbg !879 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_gnu_standard_options_only(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, i1 zeroext %5, void (i32)* nocapture %6, ...) local_unnamed_addr #8 !dbg !885 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !889, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata i8** %1, metadata !890, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata i8* %2, metadata !891, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata i8* %3, metadata !892, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata i8* %4, metadata !893, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata i1 %5, metadata !894, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !904
  call void @llvm.dbg.value(metadata void (i32)* %6, metadata !895, metadata !DIExpression()), !dbg !904
  %9 = load i32, i32* @opterr, align 4, !dbg !905, !tbaa !740
  call void @llvm.dbg.value(metadata i32 %9, metadata !897, metadata !DIExpression()), !dbg !904
  store i32 1, i32* @opterr, align 4, !dbg !906, !tbaa !740
  %10 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.41, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), !dbg !907
  call void @llvm.dbg.value(metadata i8* %10, metadata !898, metadata !DIExpression()), !dbg !904
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* %10, %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #24, !dbg !908
  call void @llvm.dbg.value(metadata i32 %11, metadata !896, metadata !DIExpression()), !dbg !904
  switch i32 %11, label %16 [
    i32 -1, label %20
    i32 104, label %18
    i32 118, label %12
  ], !dbg !909

12:                                               ; preds = %7
  %13 = bitcast [1 x %struct.__va_list_tag]* %8 to i8*, !dbg !910
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #24, !dbg !910
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %8, metadata !899, metadata !DIExpression()), !dbg !911
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !912
  call void @llvm.va_start(i8* nonnull %13), !dbg !912
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !913, !tbaa !595
  call void @version_etc_va(%struct._IO_FILE* %15, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %14) #24, !dbg !914
  call void @exit(i32 0) #26, !dbg !915
  unreachable, !dbg !915

16:                                               ; preds = %7
  %17 = load volatile i32, i32* @exit_failure, align 4, !dbg !916, !tbaa !740
  br label %18, !dbg !917

18:                                               ; preds = %7, %16
  %19 = phi i32 [ %17, %16 ], [ 0, %7 ]
  tail call void %6(i32 %19) #24, !dbg !918
  br label %20, !dbg !919

20:                                               ; preds = %18, %7
  store i32 %9, i32* @opterr, align 4, !dbg !919, !tbaa !740
  ret void, !dbg !920
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !921 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !923, metadata !DIExpression()), !dbg !926
  %2 = icmp eq i8* %0, null, !dbg !927
  br i1 %2, label %3, label %6, !dbg !929

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !930, !tbaa !595
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.46, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #29, !dbg !932
  tail call void @abort() #26, !dbg !933
  unreachable, !dbg !933

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #25, !dbg !934
  call void @llvm.dbg.value(metadata i8* %7, metadata !924, metadata !DIExpression()), !dbg !926
  %8 = icmp eq i8* %7, null, !dbg !935
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !936
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !936
  call void @llvm.dbg.value(metadata i8* %10, metadata !925, metadata !DIExpression()), !dbg !926
  %11 = ptrtoint i8* %10 to i64, !dbg !937
  %12 = ptrtoint i8* %0 to i64, !dbg !937
  %13 = sub i64 %11, %12, !dbg !937
  %14 = icmp sgt i64 %13, 6, !dbg !939
  br i1 %14, label %15, label %24, !dbg !940

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !941
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.47, i64 0, i64 0), i64 7) #25, !dbg !942
  %18 = icmp eq i32 %17, 0, !dbg !943
  br i1 %18, label %19, label %24, !dbg !944

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !923, metadata !DIExpression()), !dbg !926
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.48, i64 0, i64 0), i64 3) #25, !dbg !945
  %21 = icmp eq i32 %20, 0, !dbg !948
  br i1 %21, label %22, label %24, !dbg !949

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !950
  call void @llvm.dbg.value(metadata i8* %23, metadata !923, metadata !DIExpression()), !dbg !926
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !952, !tbaa !595
  br label %24, !dbg !953

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !923, metadata !DIExpression()), !dbg !926
  store i8* %25, i8** @program_name, align 8, !dbg !954, !tbaa !595
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !955, !tbaa !595
  ret void, !dbg !956
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #13

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !957 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !962, metadata !DIExpression()), !dbg !965
  %2 = tail call i32* @__errno_location() #28, !dbg !966
  %3 = load i32, i32* %2, align 4, !dbg !966, !tbaa !740
  call void @llvm.dbg.value(metadata i32 %3, metadata !963, metadata !DIExpression()), !dbg !965
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !967
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !967
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !967
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #24, !dbg !968
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !968
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !964, metadata !DIExpression()), !dbg !965
  store i32 %3, i32* %2, align 4, !dbg !969, !tbaa !740
  ret %struct.quoting_options* %8, !dbg !970
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #14 !dbg !971 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !977, metadata !DIExpression()), !dbg !978
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !979
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !979
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !980
  %5 = load i32, i32* %4, align 8, !dbg !980, !tbaa !981
  ret i32 %5, !dbg !983
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #9 !dbg !984 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !988, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i32 %1, metadata !989, metadata !DIExpression()), !dbg !990
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !991
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !991
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !992
  store i32 %1, i32* %5, align 8, !dbg !993, !tbaa !981
  ret void, !dbg !994
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #15 !dbg !995 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !999, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata i8 %1, metadata !1000, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata i32 %2, metadata !1001, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata i8 %1, metadata !1002, metadata !DIExpression()), !dbg !1008
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1009
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1009
  %6 = lshr i8 %1, 5, !dbg !1010
  %7 = zext i8 %6 to i64, !dbg !1010
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1011
  call void @llvm.dbg.value(metadata i32* %8, metadata !1004, metadata !DIExpression()), !dbg !1008
  %9 = and i8 %1, 31, !dbg !1012
  %10 = zext i8 %9 to i32, !dbg !1012
  call void @llvm.dbg.value(metadata i32 %10, metadata !1006, metadata !DIExpression()), !dbg !1008
  %11 = load i32, i32* %8, align 4, !dbg !1013, !tbaa !740
  %12 = lshr i32 %11, %10, !dbg !1014
  %13 = and i32 %12, 1, !dbg !1015
  call void @llvm.dbg.value(metadata i32 %13, metadata !1007, metadata !DIExpression()), !dbg !1008
  %14 = and i32 %2, 1, !dbg !1016
  %15 = xor i32 %13, %14, !dbg !1017
  %16 = shl i32 %15, %10, !dbg !1018
  %17 = xor i32 %16, %11, !dbg !1019
  store i32 %17, i32* %8, align 4, !dbg !1019, !tbaa !740
  ret i32 %13, !dbg !1020
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #15 !dbg !1021 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1025, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata i32 %1, metadata !1026, metadata !DIExpression()), !dbg !1028
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1029
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1031
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1025, metadata !DIExpression()), !dbg !1028
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1032
  %6 = load i32, i32* %5, align 4, !dbg !1032, !tbaa !1033
  call void @llvm.dbg.value(metadata i32 %6, metadata !1027, metadata !DIExpression()), !dbg !1028
  store i32 %1, i32* %5, align 4, !dbg !1034, !tbaa !1033
  ret i32 %6, !dbg !1035
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1036 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1040, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.value(metadata i8* %1, metadata !1041, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.value(metadata i8* %2, metadata !1042, metadata !DIExpression()), !dbg !1043
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1044
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1046
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1040, metadata !DIExpression()), !dbg !1043
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1047
  store i32 10, i32* %6, align 8, !dbg !1048, !tbaa !981
  %7 = icmp ne i8* %1, null, !dbg !1049
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1051
  br i1 %9, label %11, label %10, !dbg !1051

10:                                               ; preds = %3
  tail call void @abort() #26, !dbg !1052
  unreachable, !dbg !1052

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1053
  store i8* %1, i8** %12, align 8, !dbg !1054, !tbaa !1055
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1056
  store i8* %2, i8** %13, align 8, !dbg !1057, !tbaa !1058
  ret void, !dbg !1059
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1060 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1064, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata i64 %1, metadata !1065, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata i8* %2, metadata !1066, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata i64 %3, metadata !1067, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1068, metadata !DIExpression()), !dbg !1072
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1073
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1073
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1069, metadata !DIExpression()), !dbg !1072
  %8 = tail call i32* @__errno_location() #28, !dbg !1074
  %9 = load i32, i32* %8, align 4, !dbg !1074, !tbaa !740
  call void @llvm.dbg.value(metadata i32 %9, metadata !1070, metadata !DIExpression()), !dbg !1072
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1075
  %11 = load i32, i32* %10, align 8, !dbg !1075, !tbaa !981
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1076
  %13 = load i32, i32* %12, align 4, !dbg !1076, !tbaa !1033
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1077
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1078
  %16 = load i8*, i8** %15, align 8, !dbg !1078, !tbaa !1055
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1079
  %18 = load i8*, i8** %17, align 8, !dbg !1079, !tbaa !1058
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1080
  call void @llvm.dbg.value(metadata i64 %19, metadata !1071, metadata !DIExpression()), !dbg !1072
  store i32 %9, i32* %8, align 4, !dbg !1081, !tbaa !740
  ret i64 %19, !dbg !1082
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1083 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1089, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %1, metadata !1090, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8* %2, metadata !1091, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %3, metadata !1092, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i32 %4, metadata !1093, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i32 %5, metadata !1094, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i32* %6, metadata !1095, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8* %7, metadata !1096, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8* %8, metadata !1097, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 0, metadata !1099, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 0, metadata !1100, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8* null, metadata !1101, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 0, metadata !1102, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 0, metadata !1103, metadata !DIExpression()), !dbg !1159
  %13 = tail call i64 @__ctype_get_mb_cur_max() #24, !dbg !1160
  %14 = icmp eq i64 %13, 1, !dbg !1161
  call void @llvm.dbg.value(metadata i1 %14, metadata !1104, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1159
  %15 = lshr i32 %5, 1, !dbg !1162
  %16 = trunc i32 %15 to i8, !dbg !1162
  %17 = and i8 %16, 1, !dbg !1162
  call void @llvm.dbg.value(metadata i8 %17, metadata !1105, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 0, metadata !1106, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 0, metadata !1107, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 1, metadata !1108, metadata !DIExpression()), !dbg !1159
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1163

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1164
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1165
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1166
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1167
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1159
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1168
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1169
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1170
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1090, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 %38, metadata !1108, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 %37, metadata !1107, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 %36, metadata !1106, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 %35, metadata !1105, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %34, metadata !1092, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 %33, metadata !1103, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %32, metadata !1102, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8* %31, metadata !1101, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %30, metadata !1100, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 0, metadata !1099, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8* %29, metadata !1097, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8* %28, metadata !1096, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i32 %27, metadata !1093, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.label(metadata !1153), !dbg !1171
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
  ], !dbg !1172

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1105, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i32 5, metadata !1093, metadata !DIExpression()), !dbg !1159
  br label %92, !dbg !1173

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1105, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i32 5, metadata !1093, metadata !DIExpression()), !dbg !1159
  %42 = and i8 %35, 1, !dbg !1175
  %43 = icmp eq i8 %42, 0, !dbg !1175
  br i1 %43, label %44, label %92, !dbg !1173

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1177
  br i1 %45, label %92, label %46, !dbg !1180

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1177, !tbaa !1181
  br label %92, !dbg !1177

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.59, i64 0, i64 0), i32 %27), !dbg !1182
  call void @llvm.dbg.value(metadata i8* %48, metadata !1096, metadata !DIExpression()), !dbg !1159
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.60, i64 0, i64 0), i32 %27), !dbg !1186
  call void @llvm.dbg.value(metadata i8* %49, metadata !1097, metadata !DIExpression()), !dbg !1159
  br label %50, !dbg !1187

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1097, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8* %51, metadata !1096, metadata !DIExpression()), !dbg !1159
  %53 = and i8 %35, 1, !dbg !1188
  %54 = icmp eq i8 %53, 0, !dbg !1188
  br i1 %54, label %55, label %70, !dbg !1190

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1101, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 0, metadata !1099, metadata !DIExpression()), !dbg !1159
  %56 = load i8, i8* %51, align 1, !dbg !1191, !tbaa !1181
  %57 = icmp eq i8 %56, 0, !dbg !1194
  br i1 %57, label %70, label %58, !dbg !1194

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1101, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %61, metadata !1099, metadata !DIExpression()), !dbg !1159
  %62 = icmp ult i64 %61, %39, !dbg !1195
  br i1 %62, label %63, label %65, !dbg !1198

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1195
  store i8 %59, i8* %64, align 1, !dbg !1195, !tbaa !1181
  br label %65, !dbg !1195

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1198
  call void @llvm.dbg.value(metadata i64 %66, metadata !1099, metadata !DIExpression()), !dbg !1159
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1199
  call void @llvm.dbg.value(metadata i8* %67, metadata !1101, metadata !DIExpression()), !dbg !1159
  %68 = load i8, i8* %67, align 1, !dbg !1191, !tbaa !1181
  %69 = icmp eq i8 %68, 0, !dbg !1194
  br i1 %69, label %70, label %58, !dbg !1194, !llvm.loop !1200

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1202
  call void @llvm.dbg.value(metadata i64 %71, metadata !1099, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 1, metadata !1103, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8* %52, metadata !1101, metadata !DIExpression()), !dbg !1159
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #25, !dbg !1203
  call void @llvm.dbg.value(metadata i64 %72, metadata !1102, metadata !DIExpression()), !dbg !1159
  br label %92, !dbg !1204

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1103, metadata !DIExpression()), !dbg !1159
  br label %74, !dbg !1205

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1159
  call void @llvm.dbg.value(metadata i8 %75, metadata !1103, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 1, metadata !1105, metadata !DIExpression()), !dbg !1159
  br label %76, !dbg !1206

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1167
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1159
  call void @llvm.dbg.value(metadata i8 %78, metadata !1105, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 %77, metadata !1103, metadata !DIExpression()), !dbg !1159
  %79 = and i8 %78, 1, !dbg !1207
  %80 = icmp eq i8 %79, 0, !dbg !1207
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1209
  br label %82, !dbg !1209

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1159
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1162
  call void @llvm.dbg.value(metadata i8 %84, metadata !1105, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 %83, metadata !1103, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i32 2, metadata !1093, metadata !DIExpression()), !dbg !1159
  %85 = and i8 %84, 1, !dbg !1210
  %86 = icmp eq i8 %85, 0, !dbg !1210
  br i1 %86, label %87, label %92, !dbg !1212

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1213
  br i1 %88, label %92, label %89, !dbg !1216

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1213, !tbaa !1181
  br label %92, !dbg !1213

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1105, metadata !DIExpression()), !dbg !1159
  br label %92, !dbg !1217

91:                                               ; preds = %26
  call void @abort() #26, !dbg !1218
  unreachable, !dbg !1218

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1202
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.61, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.61, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.61, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.60, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.60, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.60, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.61, i64 0, i64 0), %40 ], !dbg !1159
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1159
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1159
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1159
  call void @llvm.dbg.value(metadata i8 %100, metadata !1105, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 %99, metadata !1103, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %98, metadata !1102, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8* %97, metadata !1101, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %96, metadata !1099, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8* %95, metadata !1097, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8* %94, metadata !1096, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i32 %93, metadata !1093, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 0, metadata !1098, metadata !DIExpression()), !dbg !1159
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
  br label %121, !dbg !1219

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1220
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1202
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1164
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1168
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1169
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1170
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1090, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 %128, metadata !1108, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 %127, metadata !1107, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 %126, metadata !1106, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %125, metadata !1092, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %124, metadata !1100, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %123, metadata !1099, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %122, metadata !1098, metadata !DIExpression()), !dbg !1159
  %130 = icmp eq i64 %125, -1, !dbg !1221
  br i1 %130, label %131, label %135, !dbg !1222

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1223
  %133 = load i8, i8* %132, align 1, !dbg !1223, !tbaa !1181
  %134 = icmp eq i8 %133, 0, !dbg !1224
  br i1 %134, label %587, label %137, !dbg !1225

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1226
  br i1 %136, label %587, label %137, !dbg !1225

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1114, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8 0, metadata !1115, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8 0, metadata !1116, metadata !DIExpression()), !dbg !1227
  br i1 %106, label %138, label %153, !dbg !1228

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1230
  %140 = and i1 %107, %130, !dbg !1231
  br i1 %140, label %141, label %143, !dbg !1231

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #25, !dbg !1232
  call void @llvm.dbg.value(metadata i64 %142, metadata !1092, metadata !DIExpression()), !dbg !1159
  br label %143, !dbg !1233

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1233
  call void @llvm.dbg.value(metadata i64 %144, metadata !1092, metadata !DIExpression()), !dbg !1159
  %145 = icmp ugt i64 %139, %144, !dbg !1234
  br i1 %145, label %153, label %146, !dbg !1235

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1236
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1237
  %149 = icmp ne i32 %148, 0, !dbg !1238
  %150 = or i1 %149, %109, !dbg !1239
  %151 = xor i1 %149, true, !dbg !1239
  %152 = zext i1 %151 to i8, !dbg !1239
  br i1 %150, label %153, label %646, !dbg !1239

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1227
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1227
  call void @llvm.dbg.value(metadata i8 %156, metadata !1114, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i64 %154, metadata !1092, metadata !DIExpression()), !dbg !1159
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1240
  %158 = load i8, i8* %157, align 1, !dbg !1240, !tbaa !1181
  call void @llvm.dbg.value(metadata i8 %158, metadata !1109, metadata !DIExpression()), !dbg !1227
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
  ], !dbg !1241

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1242

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1243

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1115, metadata !DIExpression()), !dbg !1227
  %162 = and i8 %126, 1, !dbg !1247
  %163 = icmp eq i8 %162, 0, !dbg !1247
  %164 = and i1 %110, %163, !dbg !1247
  br i1 %164, label %165, label %181, !dbg !1247

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1249
  br i1 %166, label %167, label %169, !dbg !1253

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1249
  store i8 39, i8* %168, align 1, !dbg !1249, !tbaa !1181
  br label %169, !dbg !1249

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1253
  call void @llvm.dbg.value(metadata i64 %170, metadata !1099, metadata !DIExpression()), !dbg !1159
  %171 = icmp ult i64 %170, %129, !dbg !1254
  br i1 %171, label %172, label %174, !dbg !1257

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1254
  store i8 36, i8* %173, align 1, !dbg !1254, !tbaa !1181
  br label %174, !dbg !1254

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1257
  call void @llvm.dbg.value(metadata i64 %175, metadata !1099, metadata !DIExpression()), !dbg !1159
  %176 = icmp ult i64 %175, %129, !dbg !1258
  br i1 %176, label %177, label %179, !dbg !1261

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1258
  store i8 39, i8* %178, align 1, !dbg !1258, !tbaa !1181
  br label %179, !dbg !1258

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1261
  call void @llvm.dbg.value(metadata i64 %180, metadata !1099, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 1, metadata !1106, metadata !DIExpression()), !dbg !1159
  br label %181, !dbg !1262

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1159
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1159
  call void @llvm.dbg.value(metadata i8 %183, metadata !1106, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %182, metadata !1099, metadata !DIExpression()), !dbg !1159
  %184 = icmp ult i64 %182, %129, !dbg !1263
  br i1 %184, label %185, label %187, !dbg !1266

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1263
  store i8 92, i8* %186, align 1, !dbg !1263, !tbaa !1181
  br label %187, !dbg !1263

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1266
  call void @llvm.dbg.value(metadata i64 %188, metadata !1099, metadata !DIExpression()), !dbg !1159
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1267
  br i1 %191, label %192, label %473, !dbg !1267

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1269
  %194 = load i8, i8* %193, align 1, !dbg !1269, !tbaa !1181
  %195 = add i8 %194, -48, !dbg !1270
  %196 = icmp ult i8 %195, 10, !dbg !1270
  br i1 %196, label %197, label %473, !dbg !1270

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1271
  br i1 %198, label %199, label %201, !dbg !1275

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1271
  store i8 48, i8* %200, align 1, !dbg !1271, !tbaa !1181
  br label %201, !dbg !1271

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1275
  call void @llvm.dbg.value(metadata i64 %202, metadata !1099, metadata !DIExpression()), !dbg !1159
  %203 = icmp ult i64 %202, %129, !dbg !1276
  br i1 %203, label %204, label %206, !dbg !1279

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1276
  store i8 48, i8* %205, align 1, !dbg !1276, !tbaa !1181
  br label %206, !dbg !1276

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1279
  call void @llvm.dbg.value(metadata i64 %207, metadata !1099, metadata !DIExpression()), !dbg !1159
  br label %473, !dbg !1280

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1281

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1282

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1283

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1285
  br i1 %214, label %215, label %473, !dbg !1285

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1287
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1288
  %218 = load i8, i8* %217, align 1, !dbg !1288, !tbaa !1181
  %219 = icmp eq i8 %218, 63, !dbg !1289
  br i1 %219, label %220, label %473, !dbg !1290

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1291
  %222 = load i8, i8* %221, align 1, !dbg !1291, !tbaa !1181
  %223 = sext i8 %222 to i32, !dbg !1291
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
  ], !dbg !1292

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1293

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1109, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i64 undef, metadata !1098, metadata !DIExpression()), !dbg !1159
  %226 = icmp ult i64 %123, %129, !dbg !1295
  br i1 %226, label %227, label %229, !dbg !1298

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1295
  store i8 63, i8* %228, align 1, !dbg !1295, !tbaa !1181
  br label %229, !dbg !1295

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !1298
  call void @llvm.dbg.value(metadata i64 %230, metadata !1099, metadata !DIExpression()), !dbg !1159
  %231 = icmp ult i64 %230, %129, !dbg !1299
  br i1 %231, label %232, label %234, !dbg !1302

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1299
  store i8 34, i8* %233, align 1, !dbg !1299, !tbaa !1181
  br label %234, !dbg !1299

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !1302
  call void @llvm.dbg.value(metadata i64 %235, metadata !1099, metadata !DIExpression()), !dbg !1159
  %236 = icmp ult i64 %235, %129, !dbg !1303
  br i1 %236, label %237, label %239, !dbg !1306

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1303
  store i8 34, i8* %238, align 1, !dbg !1303, !tbaa !1181
  br label %239, !dbg !1303

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !1306
  call void @llvm.dbg.value(metadata i64 %240, metadata !1099, metadata !DIExpression()), !dbg !1159
  %241 = icmp ult i64 %240, %129, !dbg !1307
  br i1 %241, label %242, label %244, !dbg !1310

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1307
  store i8 63, i8* %243, align 1, !dbg !1307, !tbaa !1181
  br label %244, !dbg !1307

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !1310
  call void @llvm.dbg.value(metadata i64 %245, metadata !1099, metadata !DIExpression()), !dbg !1159
  br label %473, !dbg !1311

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1113, metadata !DIExpression()), !dbg !1227
  br label %256, !dbg !1312

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1113, metadata !DIExpression()), !dbg !1227
  br label %256, !dbg !1313

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1113, metadata !DIExpression()), !dbg !1227
  br label %254, !dbg !1314

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1113, metadata !DIExpression()), !dbg !1227
  br label %254, !dbg !1315

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1113, metadata !DIExpression()), !dbg !1227
  br label %256, !dbg !1316

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1113, metadata !DIExpression()), !dbg !1227
  br i1 %110, label %252, label %253, !dbg !1317

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !1318

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !1321

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !1323
  call void @llvm.dbg.value(metadata i8 %255, metadata !1113, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.label(metadata !1154), !dbg !1324
  br i1 %111, label %256, label %631, !dbg !1325

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !1323
  call void @llvm.dbg.value(metadata i8 %257, metadata !1113, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.label(metadata !1155), !dbg !1327
  br i1 %102, label %495, label %473, !dbg !1328

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1329

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1330, !tbaa !1181
  %261 = icmp eq i8 %260, 0, !dbg !1332
  br i1 %261, label %262, label %473, !dbg !1333

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !1334
  br i1 %263, label %264, label %473, !dbg !1336

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1116, metadata !DIExpression()), !dbg !1227
  br label %265, !dbg !1337

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1227
  call void @llvm.dbg.value(metadata i8 %266, metadata !1116, metadata !DIExpression()), !dbg !1227
  br i1 %111, label %473, label %631, !dbg !1338

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1107, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 1, metadata !1116, metadata !DIExpression()), !dbg !1227
  br i1 %110, label %268, label %473, !dbg !1340

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !1341

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !1344
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !1346
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !1346
  %274 = select i1 %272, i64 %129, i64 0, !dbg !1346
  call void @llvm.dbg.value(metadata i64 %274, metadata !1090, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %273, metadata !1100, metadata !DIExpression()), !dbg !1159
  %275 = icmp ult i64 %123, %274, !dbg !1347
  br i1 %275, label %276, label %278, !dbg !1350

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1347
  store i8 39, i8* %277, align 1, !dbg !1347, !tbaa !1181
  br label %278, !dbg !1347

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !1350
  call void @llvm.dbg.value(metadata i64 %279, metadata !1099, metadata !DIExpression()), !dbg !1159
  %280 = icmp ult i64 %279, %274, !dbg !1351
  br i1 %280, label %281, label %283, !dbg !1354

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1351
  store i8 92, i8* %282, align 1, !dbg !1351, !tbaa !1181
  br label %283, !dbg !1351

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !1354
  call void @llvm.dbg.value(metadata i64 %284, metadata !1099, metadata !DIExpression()), !dbg !1159
  %285 = icmp ult i64 %284, %274, !dbg !1355
  br i1 %285, label %286, label %288, !dbg !1358

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1355
  store i8 39, i8* %287, align 1, !dbg !1355, !tbaa !1181
  br label %288, !dbg !1355

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !1358
  call void @llvm.dbg.value(metadata i64 %289, metadata !1099, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 0, metadata !1106, metadata !DIExpression()), !dbg !1159
  br label %473, !dbg !1359

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !1360

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1117, metadata !DIExpression()), !dbg !1361
  %292 = tail call i16** @__ctype_b_loc() #28, !dbg !1362
  %293 = load i16*, i16** %292, align 8, !dbg !1362, !tbaa !595
  %294 = zext i8 %158 to i64, !dbg !1362
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1362
  %296 = load i16, i16* %295, align 2, !dbg !1362, !tbaa !1364
  %297 = lshr i16 %296, 14, !dbg !1366
  %298 = trunc i16 %297 to i8, !dbg !1366
  %299 = and i8 %298, 1, !dbg !1366
  call void @llvm.dbg.value(metadata i8 %354, metadata !1120, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i64 %355, metadata !1117, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i64 %306, metadata !1092, metadata !DIExpression()), !dbg !1159
  %300 = icmp eq i8 %299, 0, !dbg !1367
  call void @llvm.dbg.value(metadata i1 %357, metadata !1116, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1227
  br label %359, !dbg !1368

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #24, !dbg !1369
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1121, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i8* %23, metadata !1371, metadata !DIExpression()) #24, !dbg !1379
  call void @llvm.dbg.value(metadata i32 0, metadata !1377, metadata !DIExpression()) #24, !dbg !1379
  call void @llvm.dbg.value(metadata i64 8, metadata !1378, metadata !DIExpression()) #24, !dbg !1379
  store i64 0, i64* %10, align 8, !dbg !1381
  call void @llvm.dbg.value(metadata i64 0, metadata !1117, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i8 1, metadata !1120, metadata !DIExpression()), !dbg !1361
  %302 = icmp eq i64 %154, -1, !dbg !1382
  br i1 %302, label %303, label %305, !dbg !1384

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #25, !dbg !1385
  call void @llvm.dbg.value(metadata i64 %304, metadata !1092, metadata !DIExpression()), !dbg !1159
  br label %305, !dbg !1386

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1227
  call void @llvm.dbg.value(metadata i64 %306, metadata !1092, metadata !DIExpression()), !dbg !1159
  br label %307, !dbg !1387

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !1388
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !1389
  call void @llvm.dbg.value(metadata i8 %309, metadata !1120, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i64 %308, metadata !1117, metadata !DIExpression()), !dbg !1361
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1390
  %310 = add i64 %308, %122, !dbg !1391
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !1392
  %312 = sub i64 %306, %310, !dbg !1393
  call void @llvm.dbg.value(metadata i32* %12, metadata !1139, metadata !DIExpression(DW_OP_deref)), !dbg !1394
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #24, !dbg !1395
  call void @llvm.dbg.value(metadata i64 %313, metadata !1142, metadata !DIExpression()), !dbg !1394
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !1396

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1117, metadata !DIExpression()), !dbg !1361
  %315 = icmp ugt i64 %306, %310, !dbg !1397
  br i1 %315, label %316, label %341, !dbg !1399

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !1400
  br label %318, !dbg !1400

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1117, metadata !DIExpression()), !dbg !1361
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !1401
  %322 = load i8, i8* %321, align 1, !dbg !1401, !tbaa !1181
  %323 = icmp eq i8 %322, 0, !dbg !1399
  br i1 %323, label %341, label %324, !dbg !1400

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !1402
  call void @llvm.dbg.value(metadata i64 %325, metadata !1117, metadata !DIExpression()), !dbg !1361
  %326 = add i64 %325, %122, !dbg !1403
  %327 = icmp ult i64 %326, %306, !dbg !1397
  br i1 %327, label %318, label %341, !dbg !1399, !llvm.loop !1404

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !1405
  call void @llvm.dbg.value(metadata i64 1, metadata !1143, metadata !DIExpression()), !dbg !1406
  br i1 %330, label %331, label %344, !dbg !1405

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1143, metadata !DIExpression()), !dbg !1406
  %333 = add i64 %332, %310, !dbg !1407
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !1410
  %335 = load i8, i8* %334, align 1, !dbg !1410, !tbaa !1181
  %336 = sext i8 %335 to i32, !dbg !1410
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !1411

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !1412
  call void @llvm.dbg.value(metadata i64 %338, metadata !1143, metadata !DIExpression()), !dbg !1406
  %339 = icmp eq i64 %338, %313, !dbg !1413
  br i1 %339, label %344, label %331, !dbg !1414, !llvm.loop !1415

340:                                              ; preds = %307
  br label %341, !dbg !1417

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1120, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i64 undef, metadata !1117, metadata !DIExpression()), !dbg !1361
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1417
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !1418, !tbaa !740
  call void @llvm.dbg.value(metadata i32 %345, metadata !1139, metadata !DIExpression()), !dbg !1394
  %346 = call i32 @iswprint(i32 %345) #24, !dbg !1420
  %347 = icmp eq i32 %346, 0, !dbg !1420
  %348 = select i1 %347, i8 0, i8 %309, !dbg !1421
  call void @llvm.dbg.value(metadata i8 %348, metadata !1120, metadata !DIExpression()), !dbg !1361
  %349 = add i64 %313, %308, !dbg !1422
  call void @llvm.dbg.value(metadata i64 %349, metadata !1117, metadata !DIExpression()), !dbg !1361
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1417
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #25, !dbg !1423
  %351 = icmp eq i32 %350, 0, !dbg !1424
  br i1 %351, label %307, label %353, !dbg !1425, !llvm.loop !1426

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1120, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i64 undef, metadata !1117, metadata !DIExpression()), !dbg !1361
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1417
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #24, !dbg !1428
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #24, !dbg !1428
  call void @llvm.dbg.value(metadata i8 %354, metadata !1120, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i64 %355, metadata !1117, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i64 %306, metadata !1092, metadata !DIExpression()), !dbg !1159
  %356 = and i8 %354, 1, !dbg !1367
  %357 = icmp eq i8 %356, 0, !dbg !1367
  call void @llvm.dbg.value(metadata i1 %357, metadata !1116, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1227
  %358 = icmp ugt i64 %355, 1, !dbg !1429
  br i1 %358, label %367, label %359, !dbg !1368

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !1430
  br i1 %364, label %367, label %365, !dbg !1430

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1227
  call void @llvm.dbg.value(metadata i8 %472, metadata !1116, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8 %441, metadata !1115, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8 %440, metadata !1114, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8 %439, metadata !1109, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8 %438, metadata !1106, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %371, metadata !1092, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %437, metadata !1099, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %375, metadata !1098, metadata !DIExpression()), !dbg !1159
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !1431
  call void @llvm.dbg.value(metadata i64 %372, metadata !1150, metadata !DIExpression()), !dbg !1432
  %373 = and i1 %102, %368
  br label %374, !dbg !1433

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1220
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1159
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1168
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1227
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1227
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !1434
  call void @llvm.dbg.value(metadata i8 %380, metadata !1115, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8 %379, metadata !1114, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8 %378, metadata !1109, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8 %377, metadata !1106, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %376, metadata !1099, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %375, metadata !1098, metadata !DIExpression()), !dbg !1159
  br i1 %373, label %381, label %427, !dbg !1435

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !1440

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1115, metadata !DIExpression()), !dbg !1227
  %383 = and i8 %377, 1, !dbg !1443
  %384 = icmp eq i8 %383, 0, !dbg !1443
  %385 = and i1 %110, %384, !dbg !1443
  br i1 %385, label %386, label %402, !dbg !1443

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !1445
  br i1 %387, label %388, label %390, !dbg !1449

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1445
  store i8 39, i8* %389, align 1, !dbg !1445, !tbaa !1181
  br label %390, !dbg !1445

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !1449
  call void @llvm.dbg.value(metadata i64 %391, metadata !1099, metadata !DIExpression()), !dbg !1159
  %392 = icmp ult i64 %391, %129, !dbg !1450
  br i1 %392, label %393, label %395, !dbg !1453

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !1450
  store i8 36, i8* %394, align 1, !dbg !1450, !tbaa !1181
  br label %395, !dbg !1450

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !1453
  call void @llvm.dbg.value(metadata i64 %396, metadata !1099, metadata !DIExpression()), !dbg !1159
  %397 = icmp ult i64 %396, %129, !dbg !1454
  br i1 %397, label %398, label %400, !dbg !1457

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1454
  store i8 39, i8* %399, align 1, !dbg !1454, !tbaa !1181
  br label %400, !dbg !1454

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !1457
  call void @llvm.dbg.value(metadata i64 %401, metadata !1099, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 1, metadata !1106, metadata !DIExpression()), !dbg !1159
  br label %402, !dbg !1458

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1159
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1159
  call void @llvm.dbg.value(metadata i8 %404, metadata !1106, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %403, metadata !1099, metadata !DIExpression()), !dbg !1159
  %405 = icmp ult i64 %403, %129, !dbg !1459
  br i1 %405, label %406, label %408, !dbg !1462

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1459
  store i8 92, i8* %407, align 1, !dbg !1459, !tbaa !1181
  br label %408, !dbg !1459

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !1462
  call void @llvm.dbg.value(metadata i64 %409, metadata !1099, metadata !DIExpression()), !dbg !1159
  %410 = icmp ult i64 %409, %129, !dbg !1463
  br i1 %410, label %411, label %415, !dbg !1466

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !1463
  %413 = or i8 %412, 48, !dbg !1463
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !1463
  store i8 %413, i8* %414, align 1, !dbg !1463, !tbaa !1181
  br label %415, !dbg !1463

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !1466
  call void @llvm.dbg.value(metadata i64 %416, metadata !1099, metadata !DIExpression()), !dbg !1159
  %417 = icmp ult i64 %416, %129, !dbg !1467
  br i1 %417, label %418, label %423, !dbg !1470

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !1467
  %420 = and i8 %419, 7, !dbg !1467
  %421 = or i8 %420, 48, !dbg !1467
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !1467
  store i8 %421, i8* %422, align 1, !dbg !1467, !tbaa !1181
  br label %423, !dbg !1467

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !1470
  call void @llvm.dbg.value(metadata i64 %424, metadata !1099, metadata !DIExpression()), !dbg !1159
  %425 = and i8 %378, 7, !dbg !1471
  %426 = or i8 %425, 48, !dbg !1472
  call void @llvm.dbg.value(metadata i8 %426, metadata !1109, metadata !DIExpression()), !dbg !1227
  br label %436, !dbg !1473

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !1474
  %429 = icmp eq i8 %428, 0, !dbg !1474
  br i1 %429, label %436, label %430, !dbg !1476

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !1477
  br i1 %431, label %432, label %434, !dbg !1481

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1477
  store i8 92, i8* %433, align 1, !dbg !1477, !tbaa !1181
  br label %434, !dbg !1477

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !1481
  call void @llvm.dbg.value(metadata i64 %435, metadata !1099, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 0, metadata !1114, metadata !DIExpression()), !dbg !1227
  br label %436, !dbg !1482

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1159
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1168
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1227
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1227
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1227
  call void @llvm.dbg.value(metadata i8 %441, metadata !1115, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8 %440, metadata !1114, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8 %439, metadata !1109, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8 %438, metadata !1106, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %437, metadata !1099, metadata !DIExpression()), !dbg !1159
  %442 = add i64 %375, 1, !dbg !1483
  %443 = icmp ugt i64 %372, %442, !dbg !1485
  br i1 %443, label %444, label %471, !dbg !1486

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !1487
  %446 = icmp ne i8 %445, 0, !dbg !1487
  %447 = and i8 %441, 1, !dbg !1487
  %448 = icmp eq i8 %447, 0, !dbg !1487
  %449 = and i1 %446, %448, !dbg !1487
  br i1 %449, label %450, label %461, !dbg !1487

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !1490
  br i1 %451, label %452, label %454, !dbg !1494

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !1490
  store i8 39, i8* %453, align 1, !dbg !1490, !tbaa !1181
  br label %454, !dbg !1490

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !1494
  call void @llvm.dbg.value(metadata i64 %455, metadata !1099, metadata !DIExpression()), !dbg !1159
  %456 = icmp ult i64 %455, %129, !dbg !1495
  br i1 %456, label %457, label %459, !dbg !1498

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !1495
  store i8 39, i8* %458, align 1, !dbg !1495, !tbaa !1181
  br label %459, !dbg !1495

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %460, metadata !1099, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 0, metadata !1106, metadata !DIExpression()), !dbg !1159
  br label %461, !dbg !1499

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !1500
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1159
  call void @llvm.dbg.value(metadata i8 %463, metadata !1106, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %462, metadata !1099, metadata !DIExpression()), !dbg !1159
  %464 = icmp ult i64 %462, %129, !dbg !1501
  br i1 %464, label %465, label %467, !dbg !1504

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !1501
  store i8 %439, i8* %466, align 1, !dbg !1501, !tbaa !1181
  br label %467, !dbg !1501

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !1504
  call void @llvm.dbg.value(metadata i64 %468, metadata !1099, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %442, metadata !1098, metadata !DIExpression()), !dbg !1159
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !1505
  %470 = load i8, i8* %469, align 1, !dbg !1505, !tbaa !1181
  call void @llvm.dbg.value(metadata i8 %470, metadata !1109, metadata !DIExpression()), !dbg !1227
  br label %374, !dbg !1506, !llvm.loop !1507

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1227
  call void @llvm.dbg.value(metadata i8 %472, metadata !1116, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8 %441, metadata !1115, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8 %440, metadata !1114, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8 %439, metadata !1109, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8 %438, metadata !1106, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %371, metadata !1092, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %437, metadata !1099, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %375, metadata !1098, metadata !DIExpression()), !dbg !1159
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1220
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1159
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1164
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !1510
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1159
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1159
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1227
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1227
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1227
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1090, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 %482, metadata !1116, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8 %481, metadata !1115, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8 %156, metadata !1114, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8 %480, metadata !1109, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8 %479, metadata !1107, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 %478, metadata !1106, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %477, metadata !1092, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %476, metadata !1100, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %475, metadata !1099, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %474, metadata !1098, metadata !DIExpression()), !dbg !1159
  br i1 %116, label %494, label %484, !dbg !1511

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !1513
  %486 = zext i8 %485 to i64, !dbg !1513
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !1514
  %488 = load i32, i32* %487, align 4, !dbg !1514, !tbaa !740
  %489 = and i8 %480, 31, !dbg !1515
  %490 = zext i8 %489 to i32, !dbg !1515
  %491 = shl nuw i32 1, %490, !dbg !1516
  %492 = and i32 %488, %491, !dbg !1516
  %493 = icmp eq i32 %492, 0, !dbg !1516
  br i1 %493, label %494, label %495, !dbg !1517

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !1518

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !1519
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1159
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1164
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !1510
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1168
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1169
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1227
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1227
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1090, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 %503, metadata !1116, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8 %502, metadata !1109, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8 %501, metadata !1107, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 %500, metadata !1106, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %499, metadata !1092, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %498, metadata !1100, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %497, metadata !1099, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %496, metadata !1098, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.label(metadata !1156), !dbg !1520
  br i1 %109, label %505, label %635, !dbg !1521

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1115, metadata !DIExpression()), !dbg !1227
  %506 = and i8 %500, 1, !dbg !1523
  %507 = icmp eq i8 %506, 0, !dbg !1523
  %508 = and i1 %110, %507, !dbg !1523
  br i1 %508, label %509, label %525, !dbg !1523

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !1525
  br i1 %510, label %511, label %513, !dbg !1529

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !1525
  store i8 39, i8* %512, align 1, !dbg !1525, !tbaa !1181
  br label %513, !dbg !1525

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !1529
  call void @llvm.dbg.value(metadata i64 %514, metadata !1099, metadata !DIExpression()), !dbg !1159
  %515 = icmp ult i64 %514, %504, !dbg !1530
  br i1 %515, label %516, label %518, !dbg !1533

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !1530
  store i8 36, i8* %517, align 1, !dbg !1530, !tbaa !1181
  br label %518, !dbg !1530

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !1533
  call void @llvm.dbg.value(metadata i64 %519, metadata !1099, metadata !DIExpression()), !dbg !1159
  %520 = icmp ult i64 %519, %504, !dbg !1534
  br i1 %520, label %521, label %523, !dbg !1537

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1534
  store i8 39, i8* %522, align 1, !dbg !1534, !tbaa !1181
  br label %523, !dbg !1534

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !1537
  call void @llvm.dbg.value(metadata i64 %524, metadata !1099, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 1, metadata !1106, metadata !DIExpression()), !dbg !1159
  br label %525, !dbg !1538

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1227
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1159
  call void @llvm.dbg.value(metadata i8 %527, metadata !1106, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %526, metadata !1099, metadata !DIExpression()), !dbg !1159
  %528 = icmp ult i64 %526, %504, !dbg !1539
  br i1 %528, label %529, label %531, !dbg !1542

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1539
  store i8 92, i8* %530, align 1, !dbg !1539, !tbaa !1181
  br label %531, !dbg !1539

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !1542
  call void @llvm.dbg.value(metadata i64 %543, metadata !1090, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 %542, metadata !1116, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8 %541, metadata !1115, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8 %540, metadata !1109, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8 %539, metadata !1107, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 %538, metadata !1106, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %537, metadata !1092, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %536, metadata !1100, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %535, metadata !1099, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %534, metadata !1098, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.label(metadata !1157), !dbg !1543
  br label %560, !dbg !1544

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !1519
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1159
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1164
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !1510
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1168
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1169
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !1547
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1227
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1227
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1090, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 %542, metadata !1116, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8 %541, metadata !1115, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8 %540, metadata !1109, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8 %539, metadata !1107, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 %538, metadata !1106, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %537, metadata !1092, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %536, metadata !1100, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %535, metadata !1099, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %534, metadata !1098, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.label(metadata !1157), !dbg !1543
  %544 = and i8 %538, 1, !dbg !1544
  %545 = icmp ne i8 %544, 0, !dbg !1544
  %546 = and i8 %541, 1, !dbg !1544
  %547 = icmp eq i8 %546, 0, !dbg !1544
  %548 = and i1 %545, %547, !dbg !1544
  br i1 %548, label %549, label %560, !dbg !1544

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !1548
  br i1 %550, label %551, label %553, !dbg !1552

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !1548
  store i8 39, i8* %552, align 1, !dbg !1548, !tbaa !1181
  br label %553, !dbg !1548

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !1552
  call void @llvm.dbg.value(metadata i64 %554, metadata !1099, metadata !DIExpression()), !dbg !1159
  %555 = icmp ult i64 %554, %543, !dbg !1553
  br i1 %555, label %556, label %558, !dbg !1556

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !1553
  store i8 39, i8* %557, align 1, !dbg !1553, !tbaa !1181
  br label %558, !dbg !1553

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !1556
  call void @llvm.dbg.value(metadata i64 %559, metadata !1099, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 0, metadata !1106, metadata !DIExpression()), !dbg !1159
  br label %560, !dbg !1557

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1227
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1159
  call void @llvm.dbg.value(metadata i8 %569, metadata !1106, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %568, metadata !1099, metadata !DIExpression()), !dbg !1159
  %570 = icmp ult i64 %568, %561, !dbg !1558
  br i1 %570, label %571, label %573, !dbg !1561

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !1558
  store i8 %563, i8* %572, align 1, !dbg !1558, !tbaa !1181
  br label %573, !dbg !1558

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !1561
  call void @llvm.dbg.value(metadata i64 %574, metadata !1099, metadata !DIExpression()), !dbg !1159
  %575 = icmp eq i8 %562, 0, !dbg !1562
  %576 = select i1 %575, i8 0, i8 %128, !dbg !1564
  call void @llvm.dbg.value(metadata i8 %576, metadata !1108, metadata !DIExpression()), !dbg !1159
  br label %577, !dbg !1565

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !1519
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1159
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1164
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !1510
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1168
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1159
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1170
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1090, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 %584, metadata !1108, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 %583, metadata !1107, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 %582, metadata !1106, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %581, metadata !1092, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %580, metadata !1100, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %579, metadata !1099, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %578, metadata !1098, metadata !DIExpression()), !dbg !1159
  %586 = add i64 %578, 1, !dbg !1566
  call void @llvm.dbg.value(metadata i64 %586, metadata !1098, metadata !DIExpression()), !dbg !1159
  br label %121, !dbg !1567, !llvm.loop !1568

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !1570
  %590 = and i1 %110, %589, !dbg !1572
  %591 = xor i1 %590, true, !dbg !1572
  %592 = or i1 %109, %591, !dbg !1572
  br i1 %592, label %593, label %635, !dbg !1572

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !1573
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !1573
  br i1 %597, label %598, label %607, !dbg !1573

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !1575
  %600 = icmp eq i8 %599, 0, !dbg !1575
  br i1 %600, label %603, label %601, !dbg !1578

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !1579
  br label %652, !dbg !1580

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !1581
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !1583
  br i1 %606, label %26, label %607, !dbg !1583

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !1584
  %610 = and i1 %609, %608, !dbg !1586
  br i1 %610, label %611, label %626, !dbg !1586

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1101, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %123, metadata !1099, metadata !DIExpression()), !dbg !1159
  %612 = load i8, i8* %97, align 1, !dbg !1587, !tbaa !1181
  %613 = icmp eq i8 %612, 0, !dbg !1590
  br i1 %613, label %626, label %614, !dbg !1590

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1101, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %617, metadata !1099, metadata !DIExpression()), !dbg !1159
  %618 = icmp ult i64 %617, %129, !dbg !1591
  br i1 %618, label %619, label %621, !dbg !1594

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !1591
  store i8 %615, i8* %620, align 1, !dbg !1591, !tbaa !1181
  br label %621, !dbg !1591

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !1594
  call void @llvm.dbg.value(metadata i64 %622, metadata !1099, metadata !DIExpression()), !dbg !1159
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !1595
  call void @llvm.dbg.value(metadata i8* %623, metadata !1101, metadata !DIExpression()), !dbg !1159
  %624 = load i8, i8* %623, align 1, !dbg !1587, !tbaa !1181
  %625 = icmp eq i8 %624, 0, !dbg !1590
  br i1 %625, label %626, label %614, !dbg !1590, !llvm.loop !1596

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1202
  call void @llvm.dbg.value(metadata i64 %627, metadata !1099, metadata !DIExpression()), !dbg !1159
  %628 = icmp ult i64 %627, %129, !dbg !1598
  br i1 %628, label %629, label %652, !dbg !1600

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !1601
  store i8 0, i8* %630, align 1, !dbg !1602, !tbaa !1181
  br label %652, !dbg !1601

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1090, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %637, metadata !1092, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.label(metadata !1158), !dbg !1603
  %633 = icmp eq i8 %101, 0, !dbg !1604
  %634 = select i1 %633, i32 2, i32 4, !dbg !1604
  br label %642, !dbg !1604

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1090, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %637, metadata !1092, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.label(metadata !1158), !dbg !1603
  %639 = icmp eq i32 %93, 2, !dbg !1606
  %640 = icmp eq i8 %636, 0, !dbg !1604
  %641 = select i1 %640, i32 2, i32 4, !dbg !1604
  br i1 %639, label %642, label %646, !dbg !1604

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !1604

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1093, metadata !DIExpression()), !dbg !1159
  %650 = and i32 %5, -3, !dbg !1607
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !1608
  br label %652, !dbg !1609

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !1610
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !1611 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1615, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i32 %1, metadata !1616, metadata !DIExpression()), !dbg !1619
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #24, !dbg !1620
  call void @llvm.dbg.value(metadata i8* %3, metadata !1617, metadata !DIExpression()), !dbg !1619
  %4 = icmp eq i8* %3, %0, !dbg !1621
  br i1 %4, label %5, label %72, !dbg !1623

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #24, !dbg !1624
  call void @llvm.dbg.value(metadata i8* %6, metadata !1618, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i8* %6, metadata !1625, metadata !DIExpression()), !dbg !1641
  call void @llvm.dbg.value(metadata i8* undef, metadata !1631, metadata !DIExpression()), !dbg !1641
  call void @llvm.dbg.value(metadata i8 85, metadata !1632, metadata !DIExpression()), !dbg !1641
  call void @llvm.dbg.value(metadata i8 84, metadata !1633, metadata !DIExpression()), !dbg !1641
  call void @llvm.dbg.value(metadata i8 70, metadata !1634, metadata !DIExpression()), !dbg !1641
  call void @llvm.dbg.value(metadata i8 45, metadata !1635, metadata !DIExpression()), !dbg !1641
  call void @llvm.dbg.value(metadata i8 56, metadata !1636, metadata !DIExpression()), !dbg !1641
  call void @llvm.dbg.value(metadata i8 0, metadata !1637, metadata !DIExpression()), !dbg !1641
  call void @llvm.dbg.value(metadata i8 0, metadata !1638, metadata !DIExpression()), !dbg !1641
  call void @llvm.dbg.value(metadata i8 0, metadata !1639, metadata !DIExpression()), !dbg !1641
  call void @llvm.dbg.value(metadata i8 0, metadata !1640, metadata !DIExpression()), !dbg !1641
  %7 = load i8, i8* %6, align 1, !dbg !1644, !tbaa !1181
  %8 = and i8 %7, -33, !dbg !1644
  %9 = sext i8 %8 to i32, !dbg !1644
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !1644

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1646, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8* undef, metadata !1651, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 84, metadata !1652, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 70, metadata !1653, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 45, metadata !1654, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 56, metadata !1655, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 0, metadata !1656, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 0, metadata !1657, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 0, metadata !1658, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 0, metadata !1659, metadata !DIExpression()), !dbg !1660
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1664
  %12 = load i8, i8* %11, align 1, !dbg !1664, !tbaa !1181
  %13 = and i8 %12, -33, !dbg !1664
  %14 = icmp eq i8 %13, 84, !dbg !1664
  br i1 %14, label %15, label %69, !dbg !1664

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !1666, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata i8* undef, metadata !1671, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata i8 70, metadata !1672, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata i8 45, metadata !1673, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata i8 56, metadata !1674, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata i8 0, metadata !1675, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata i8 0, metadata !1676, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata i8 0, metadata !1677, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata i8 0, metadata !1678, metadata !DIExpression()), !dbg !1679
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1683
  %17 = load i8, i8* %16, align 1, !dbg !1683, !tbaa !1181
  %18 = and i8 %17, -33, !dbg !1683
  %19 = icmp eq i8 %18, 70, !dbg !1683
  br i1 %19, label %20, label %69, !dbg !1683

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !1685, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i8* undef, metadata !1690, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i8 45, metadata !1691, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i8 56, metadata !1692, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i8 0, metadata !1693, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i8 0, metadata !1694, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i8 0, metadata !1695, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i8 0, metadata !1696, metadata !DIExpression()), !dbg !1697
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1701
  %22 = load i8, i8* %21, align 1, !dbg !1701, !tbaa !1181
  %23 = icmp eq i8 %22, 45, !dbg !1701
  br i1 %23, label %24, label %69, !dbg !1703

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !1704, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata i8* undef, metadata !1709, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata i8 56, metadata !1710, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata i8 0, metadata !1711, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata i8 0, metadata !1712, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata i8 0, metadata !1713, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata i8 0, metadata !1714, metadata !DIExpression()), !dbg !1715
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1719
  %26 = load i8, i8* %25, align 1, !dbg !1719, !tbaa !1181
  %27 = icmp eq i8 %26, 56, !dbg !1719
  br i1 %27, label %28, label %69, !dbg !1721

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !1722, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i8* undef, metadata !1727, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i8 0, metadata !1728, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i8 0, metadata !1729, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i8 0, metadata !1730, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i8 0, metadata !1731, metadata !DIExpression()), !dbg !1732
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1736
  %30 = load i8, i8* %29, align 1, !dbg !1736, !tbaa !1181
  %31 = icmp eq i8 %30, 0, !dbg !1736
  br i1 %31, label %32, label %69, !dbg !1738

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !1739, !tbaa !1181
  %34 = icmp eq i8 %33, 96, !dbg !1740
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.62, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.63, i64 0, i64 0), !dbg !1739
  br label %72, !dbg !1741

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1646, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i8* undef, metadata !1651, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i8 66, metadata !1652, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i8 49, metadata !1653, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i8 56, metadata !1654, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i8 48, metadata !1655, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i8 51, metadata !1656, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i8 48, metadata !1657, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i8 0, metadata !1658, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i8 0, metadata !1659, metadata !DIExpression()), !dbg !1742
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1746
  %38 = load i8, i8* %37, align 1, !dbg !1746, !tbaa !1181
  %39 = and i8 %38, -33, !dbg !1746
  %40 = icmp eq i8 %39, 66, !dbg !1746
  br i1 %40, label %41, label %69, !dbg !1746

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !1666, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* undef, metadata !1671, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 49, metadata !1672, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 56, metadata !1673, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 48, metadata !1674, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 51, metadata !1675, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 48, metadata !1676, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 0, metadata !1677, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 0, metadata !1678, metadata !DIExpression()), !dbg !1747
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1749
  %43 = load i8, i8* %42, align 1, !dbg !1749, !tbaa !1181
  %44 = icmp eq i8 %43, 49, !dbg !1749
  br i1 %44, label %45, label %69, !dbg !1750

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !1685, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8* undef, metadata !1690, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 56, metadata !1691, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 48, metadata !1692, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 51, metadata !1693, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 48, metadata !1694, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 0, metadata !1695, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 0, metadata !1696, metadata !DIExpression()), !dbg !1751
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1753
  %47 = load i8, i8* %46, align 1, !dbg !1753, !tbaa !1181
  %48 = icmp eq i8 %47, 56, !dbg !1753
  br i1 %48, label %49, label %69, !dbg !1754

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !1704, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i8* undef, metadata !1709, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i8 48, metadata !1710, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i8 51, metadata !1711, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i8 48, metadata !1712, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i8 0, metadata !1713, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i8 0, metadata !1714, metadata !DIExpression()), !dbg !1755
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1757
  %51 = load i8, i8* %50, align 1, !dbg !1757, !tbaa !1181
  %52 = icmp eq i8 %51, 48, !dbg !1757
  br i1 %52, label %53, label %69, !dbg !1758

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !1722, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i8* undef, metadata !1727, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i8 51, metadata !1728, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i8 48, metadata !1729, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i8 0, metadata !1730, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i8 0, metadata !1731, metadata !DIExpression()), !dbg !1759
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1761
  %55 = load i8, i8* %54, align 1, !dbg !1761, !tbaa !1181
  %56 = icmp eq i8 %55, 51, !dbg !1761
  br i1 %56, label %57, label %69, !dbg !1762

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !1763, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8* undef, metadata !1768, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8 48, metadata !1769, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8 0, metadata !1770, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8 0, metadata !1771, metadata !DIExpression()), !dbg !1772
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1776
  %59 = load i8, i8* %58, align 1, !dbg !1776, !tbaa !1181
  %60 = icmp eq i8 %59, 48, !dbg !1776
  br i1 %60, label %61, label %69, !dbg !1778

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !1779, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8* undef, metadata !1784, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 0, metadata !1785, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 0, metadata !1786, metadata !DIExpression()), !dbg !1787
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1791
  %63 = load i8, i8* %62, align 1, !dbg !1791, !tbaa !1181
  %64 = icmp eq i8 %63, 0, !dbg !1791
  br i1 %64, label %65, label %69, !dbg !1793

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !1794, !tbaa !1181
  %67 = icmp eq i8 %66, 96, !dbg !1795
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.64, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.65, i64 0, i64 0), !dbg !1794
  br label %72, !dbg !1796

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !1797
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.61, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.60, i64 0, i64 0), !dbg !1798
  br label %72, !dbg !1799

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !1619
  ret i8* %73, !dbg !1800
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #16

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !1801 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !1805 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !1811 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1815, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %1, metadata !1816, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1817, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %0, metadata !1819, metadata !DIExpression()) #24, !dbg !1832
  call void @llvm.dbg.value(metadata i64 %1, metadata !1824, metadata !DIExpression()) #24, !dbg !1832
  call void @llvm.dbg.value(metadata i64* null, metadata !1825, metadata !DIExpression()) #24, !dbg !1832
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1826, metadata !DIExpression()) #24, !dbg !1832
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1834
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1834
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1827, metadata !DIExpression()) #24, !dbg !1832
  %6 = tail call i32* @__errno_location() #28, !dbg !1835
  %7 = load i32, i32* %6, align 4, !dbg !1835, !tbaa !740
  call void @llvm.dbg.value(metadata i32 %7, metadata !1828, metadata !DIExpression()) #24, !dbg !1832
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1836
  %9 = load i32, i32* %8, align 4, !dbg !1836, !tbaa !1033
  %10 = or i32 %9, 1, !dbg !1837
  call void @llvm.dbg.value(metadata i32 %10, metadata !1829, metadata !DIExpression()) #24, !dbg !1832
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1838
  %12 = load i32, i32* %11, align 8, !dbg !1838, !tbaa !981
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1839
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1840
  %15 = load i8*, i8** %14, align 8, !dbg !1840, !tbaa !1055
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1841
  %17 = load i8*, i8** %16, align 8, !dbg !1841, !tbaa !1058
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #24, !dbg !1842
  %19 = add i64 %18, 1, !dbg !1843
  call void @llvm.dbg.value(metadata i64 %19, metadata !1830, metadata !DIExpression()) #24, !dbg !1832
  call void @llvm.dbg.value(metadata i64 %19, metadata !1844, metadata !DIExpression()) #24, !dbg !1849
  %20 = tail call noalias i8* @xmalloc(i64 %19) #24, !dbg !1851
  call void @llvm.dbg.value(metadata i8* %20, metadata !1831, metadata !DIExpression()) #24, !dbg !1832
  %21 = load i32, i32* %11, align 8, !dbg !1852, !tbaa !981
  %22 = load i8*, i8** %14, align 8, !dbg !1853, !tbaa !1055
  %23 = load i8*, i8** %16, align 8, !dbg !1854, !tbaa !1058
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #24, !dbg !1855
  store i32 %7, i32* %6, align 4, !dbg !1856, !tbaa !740
  ret i8* %20, !dbg !1857
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !1820 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1819, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i64 %1, metadata !1824, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i64* %2, metadata !1825, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1826, metadata !DIExpression()), !dbg !1858
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1859
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1859
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1827, metadata !DIExpression()), !dbg !1858
  %7 = tail call i32* @__errno_location() #28, !dbg !1860
  %8 = load i32, i32* %7, align 4, !dbg !1860, !tbaa !740
  call void @llvm.dbg.value(metadata i32 %8, metadata !1828, metadata !DIExpression()), !dbg !1858
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1861
  %10 = load i32, i32* %9, align 4, !dbg !1861, !tbaa !1033
  %11 = icmp eq i64* %2, null, !dbg !1862
  %12 = zext i1 %11 to i32, !dbg !1862
  %13 = or i32 %10, %12, !dbg !1863
  call void @llvm.dbg.value(metadata i32 %13, metadata !1829, metadata !DIExpression()), !dbg !1858
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1864
  %15 = load i32, i32* %14, align 8, !dbg !1864, !tbaa !981
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1865
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1866
  %18 = load i8*, i8** %17, align 8, !dbg !1866, !tbaa !1055
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1867
  %20 = load i8*, i8** %19, align 8, !dbg !1867, !tbaa !1058
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !1868
  %22 = add i64 %21, 1, !dbg !1869
  call void @llvm.dbg.value(metadata i64 %22, metadata !1830, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i64 %22, metadata !1844, metadata !DIExpression()) #24, !dbg !1870
  %23 = tail call noalias i8* @xmalloc(i64 %22) #24, !dbg !1872
  call void @llvm.dbg.value(metadata i8* %23, metadata !1831, metadata !DIExpression()), !dbg !1858
  %24 = load i32, i32* %14, align 8, !dbg !1873, !tbaa !981
  %25 = load i8*, i8** %17, align 8, !dbg !1874, !tbaa !1055
  %26 = load i8*, i8** %19, align 8, !dbg !1875, !tbaa !1058
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !1876
  store i32 %8, i32* %7, align 4, !dbg !1877, !tbaa !740
  br i1 %11, label %29, label %28, !dbg !1878

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !1879, !tbaa !1881
  br label %29, !dbg !1883

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !1884
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !1885 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1889, !tbaa !595
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !1887, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i32 1, metadata !1888, metadata !DIExpression()), !dbg !1890
  %2 = load i32, i32* @nslots, align 4, !dbg !1891, !tbaa !740
  %3 = icmp sgt i32 %2, 1, !dbg !1894
  br i1 %3, label %4, label %12, !dbg !1895

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !1894
  br label %6, !dbg !1895

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !1888, metadata !DIExpression()), !dbg !1890
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !1896
  %9 = load i8*, i8** %8, align 8, !dbg !1896, !tbaa !1897
  tail call void @free(i8* %9) #24, !dbg !1899
  %10 = add nuw nsw i64 %7, 1, !dbg !1900
  call void @llvm.dbg.value(metadata i64 %10, metadata !1888, metadata !DIExpression()), !dbg !1890
  %11 = icmp eq i64 %10, %5, !dbg !1894
  br i1 %11, label %12, label %6, !dbg !1895, !llvm.loop !1901

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1903
  %14 = load i8*, i8** %13, align 8, !dbg !1903, !tbaa !1897
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1905
  br i1 %15, label %17, label %16, !dbg !1906

16:                                               ; preds = %12
  tail call void @free(i8* %14) #24, !dbg !1907
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1909, !tbaa !1910
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1911, !tbaa !1897
  br label %17, !dbg !1912

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1913
  br i1 %18, label %21, label %19, !dbg !1915

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !1916
  tail call void @free(i8* %20) #24, !dbg !1918
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1919, !tbaa !595
  br label %21, !dbg !1920

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !1921, !tbaa !740
  ret void, !dbg !1922
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !1923 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1925, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8* %1, metadata !1926, metadata !DIExpression()), !dbg !1927
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1928
  ret i8* %3, !dbg !1929
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !1930 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1934, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i8* %1, metadata !1935, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i64 %2, metadata !1936, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1937, metadata !DIExpression()), !dbg !1949
  %5 = tail call i32* @__errno_location() #28, !dbg !1950
  %6 = load i32, i32* %5, align 4, !dbg !1950, !tbaa !740
  call void @llvm.dbg.value(metadata i32 %6, metadata !1938, metadata !DIExpression()), !dbg !1949
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1951, !tbaa !595
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !1939, metadata !DIExpression()), !dbg !1949
  %8 = icmp slt i32 %0, 0, !dbg !1952
  br i1 %8, label %9, label %10, !dbg !1954

9:                                                ; preds = %4
  tail call void @abort() #26, !dbg !1955
  unreachable, !dbg !1955

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !1956, !tbaa !740
  %12 = icmp sgt i32 %11, %0, !dbg !1957
  br i1 %12, label %34, label %13, !dbg !1958

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !1959
  call void @llvm.dbg.value(metadata i1 %14, metadata !1940, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1960
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !1943, metadata !DIExpression()), !dbg !1960
  %15 = icmp eq i32 %0, 2147483647, !dbg !1961
  br i1 %15, label %16, label %17, !dbg !1963

16:                                               ; preds = %13
  tail call void @xalloc_die() #26, !dbg !1964
  unreachable, !dbg !1964

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !1965
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !1965
  %20 = add nuw nsw i32 %0, 1, !dbg !1966
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !1967
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #24, !dbg !1968
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !1968
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !1939, metadata !DIExpression()), !dbg !1949
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !1969, !tbaa !595
  br i1 %14, label %25, label %26, !dbg !1970

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !1971, !tbaa.struct !1973
  br label %26, !dbg !1974

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !1975, !tbaa !740
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !1976
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !1977
  %31 = sub nsw i32 %20, %27, !dbg !1978
  %32 = sext i32 %31 to i64, !dbg !1979
  %33 = shl nsw i64 %32, 4, !dbg !1980
  call void @llvm.dbg.value(metadata i8* %30, metadata !1371, metadata !DIExpression()) #24, !dbg !1981
  call void @llvm.dbg.value(metadata i32 0, metadata !1377, metadata !DIExpression()) #24, !dbg !1981
  call void @llvm.dbg.value(metadata i64 %33, metadata !1378, metadata !DIExpression()) #24, !dbg !1981
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #24, !dbg !1983
  store i32 %20, i32* @nslots, align 4, !dbg !1984, !tbaa !740
  br label %34, !dbg !1985

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !1949
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !1939, metadata !DIExpression()), !dbg !1949
  %36 = zext i32 %0 to i64, !dbg !1986
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !1987
  %38 = load i64, i64* %37, align 8, !dbg !1987, !tbaa !1910
  call void @llvm.dbg.value(metadata i64 %38, metadata !1944, metadata !DIExpression()), !dbg !1988
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !1989
  %40 = load i8*, i8** %39, align 8, !dbg !1989, !tbaa !1897
  call void @llvm.dbg.value(metadata i8* %40, metadata !1946, metadata !DIExpression()), !dbg !1988
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !1990
  %42 = load i32, i32* %41, align 4, !dbg !1990, !tbaa !1033
  %43 = or i32 %42, 1, !dbg !1991
  call void @llvm.dbg.value(metadata i32 %43, metadata !1947, metadata !DIExpression()), !dbg !1988
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1992
  %45 = load i32, i32* %44, align 8, !dbg !1992, !tbaa !981
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !1993
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !1994
  %48 = load i8*, i8** %47, align 8, !dbg !1994, !tbaa !1055
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !1995
  %50 = load i8*, i8** %49, align 8, !dbg !1995, !tbaa !1058
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !1996
  call void @llvm.dbg.value(metadata i64 %51, metadata !1948, metadata !DIExpression()), !dbg !1988
  %52 = icmp ugt i64 %38, %51, !dbg !1997
  br i1 %52, label %63, label %53, !dbg !1999

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2000
  call void @llvm.dbg.value(metadata i64 %54, metadata !1944, metadata !DIExpression()), !dbg !1988
  store i64 %54, i64* %37, align 8, !dbg !2002, !tbaa !1910
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2003
  br i1 %55, label %57, label %56, !dbg !2005

56:                                               ; preds = %53
  tail call void @free(i8* %40) #24, !dbg !2006
  br label %57, !dbg !2006

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !1844, metadata !DIExpression()) #24, !dbg !2007
  %58 = tail call noalias i8* @xmalloc(i64 %54) #24, !dbg !2009
  call void @llvm.dbg.value(metadata i8* %58, metadata !1946, metadata !DIExpression()), !dbg !1988
  store i8* %58, i8** %39, align 8, !dbg !2010, !tbaa !1897
  %59 = load i32, i32* %44, align 8, !dbg !2011, !tbaa !981
  %60 = load i8*, i8** %47, align 8, !dbg !2012, !tbaa !1055
  %61 = load i8*, i8** %49, align 8, !dbg !2013, !tbaa !1058
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2014
  br label %63, !dbg !2015

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !1988
  call void @llvm.dbg.value(metadata i8* %64, metadata !1946, metadata !DIExpression()), !dbg !1988
  store i32 %6, i32* %5, align 4, !dbg !2016, !tbaa !740
  ret i8* %64, !dbg !2017
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2018 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2022, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8* %1, metadata !2023, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %2, metadata !2024, metadata !DIExpression()), !dbg !2025
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2026
  ret i8* %4, !dbg !2027
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2028 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2030, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i32 0, metadata !1925, metadata !DIExpression()) #24, !dbg !2032
  call void @llvm.dbg.value(metadata i8* %0, metadata !1926, metadata !DIExpression()) #24, !dbg !2032
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #24, !dbg !2034
  ret i8* %2, !dbg !2035
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2036 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2040, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i64 %1, metadata !2041, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i32 0, metadata !2022, metadata !DIExpression()) #24, !dbg !2043
  call void @llvm.dbg.value(metadata i8* %0, metadata !2023, metadata !DIExpression()) #24, !dbg !2043
  call void @llvm.dbg.value(metadata i64 %1, metadata !2024, metadata !DIExpression()) #24, !dbg !2043
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #24, !dbg !2045
  ret i8* %3, !dbg !2046
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2047 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2051, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i32 %1, metadata !2052, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i8* %2, metadata !2053, metadata !DIExpression()), !dbg !2055
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2056
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2056
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2054, metadata !DIExpression()), !dbg !2057
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2058), !dbg !2061
  call void @llvm.dbg.value(metadata i32 %1, metadata !2062, metadata !DIExpression()) #24, !dbg !2068
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2067, metadata !DIExpression()) #24, !dbg !2070
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #24, !dbg !2070, !alias.scope !2058
  %6 = icmp eq i32 %1, 10, !dbg !2071
  br i1 %6, label %7, label %8, !dbg !2073

7:                                                ; preds = %3
  tail call void @abort() #26, !dbg !2074, !noalias !2058
  unreachable, !dbg !2074

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2075
  store i32 %1, i32* %9, align 8, !dbg !2076, !tbaa !981, !alias.scope !2058
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2077
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2078
  ret i8* %10, !dbg !2079
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2080 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2084, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata i32 %1, metadata !2085, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata i8* %2, metadata !2086, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata i64 %3, metadata !2087, metadata !DIExpression()), !dbg !2089
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2090
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2090
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2088, metadata !DIExpression()), !dbg !2091
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2092), !dbg !2095
  call void @llvm.dbg.value(metadata i32 %1, metadata !2062, metadata !DIExpression()) #24, !dbg !2096
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2067, metadata !DIExpression()) #24, !dbg !2098
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #24, !dbg !2098, !alias.scope !2092
  %7 = icmp eq i32 %1, 10, !dbg !2099
  br i1 %7, label %8, label %9, !dbg !2100

8:                                                ; preds = %4
  tail call void @abort() #26, !dbg !2101, !noalias !2092
  unreachable, !dbg !2101

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2102
  store i32 %1, i32* %10, align 8, !dbg !2103, !tbaa !981, !alias.scope !2092
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2104
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2105
  ret i8* %11, !dbg !2106
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2107 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2111, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i8* %1, metadata !2112, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i32 0, metadata !2051, metadata !DIExpression()) #24, !dbg !2114
  call void @llvm.dbg.value(metadata i32 %0, metadata !2052, metadata !DIExpression()) #24, !dbg !2114
  call void @llvm.dbg.value(metadata i8* %1, metadata !2053, metadata !DIExpression()) #24, !dbg !2114
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2116
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2116
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2054, metadata !DIExpression()) #24, !dbg !2117
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2118) #24, !dbg !2121
  call void @llvm.dbg.value(metadata i32 %0, metadata !2062, metadata !DIExpression()) #24, !dbg !2122
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2067, metadata !DIExpression()) #24, !dbg !2124
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #24, !dbg !2124, !alias.scope !2118
  %5 = icmp eq i32 %0, 10, !dbg !2125
  br i1 %5, label %6, label %7, !dbg !2126

6:                                                ; preds = %2
  tail call void @abort() #26, !dbg !2127, !noalias !2118
  unreachable, !dbg !2127

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2128
  store i32 %0, i32* %8, align 8, !dbg !2129, !tbaa !981, !alias.scope !2118
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #24, !dbg !2130
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2131
  ret i8* %9, !dbg !2132
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2133 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2137, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i8* %1, metadata !2138, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i64 %2, metadata !2139, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i32 0, metadata !2084, metadata !DIExpression()) #24, !dbg !2141
  call void @llvm.dbg.value(metadata i32 %0, metadata !2085, metadata !DIExpression()) #24, !dbg !2141
  call void @llvm.dbg.value(metadata i8* %1, metadata !2086, metadata !DIExpression()) #24, !dbg !2141
  call void @llvm.dbg.value(metadata i64 %2, metadata !2087, metadata !DIExpression()) #24, !dbg !2141
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2143
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2143
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2088, metadata !DIExpression()) #24, !dbg !2144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2145) #24, !dbg !2148
  call void @llvm.dbg.value(metadata i32 %0, metadata !2062, metadata !DIExpression()) #24, !dbg !2149
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2067, metadata !DIExpression()) #24, !dbg !2151
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #24, !dbg !2151, !alias.scope !2145
  %6 = icmp eq i32 %0, 10, !dbg !2152
  br i1 %6, label %7, label %8, !dbg !2153

7:                                                ; preds = %3
  tail call void @abort() #26, !dbg !2154, !noalias !2145
  unreachable, !dbg !2154

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2155
  store i32 %0, i32* %9, align 8, !dbg !2156, !tbaa !981, !alias.scope !2145
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #24, !dbg !2157
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2158
  ret i8* %10, !dbg !2159
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2160 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2164, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i64 %1, metadata !2165, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i8 %2, metadata !2166, metadata !DIExpression()), !dbg !2168
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2169
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2169
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2167, metadata !DIExpression()), !dbg !2170
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2171, !tbaa.struct !2172
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !999, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i8 %2, metadata !1000, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i32 1, metadata !1001, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i8 %2, metadata !1002, metadata !DIExpression()), !dbg !2173
  %6 = lshr i8 %2, 5, !dbg !2175
  %7 = zext i8 %6 to i64, !dbg !2175
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2176
  call void @llvm.dbg.value(metadata i32* %8, metadata !1004, metadata !DIExpression()), !dbg !2173
  %9 = and i8 %2, 31, !dbg !2177
  %10 = zext i8 %9 to i32, !dbg !2177
  call void @llvm.dbg.value(metadata i32 %10, metadata !1006, metadata !DIExpression()), !dbg !2173
  %11 = load i32, i32* %8, align 4, !dbg !2178, !tbaa !740
  %12 = lshr i32 %11, %10, !dbg !2179
  %13 = and i32 %12, 1, !dbg !2180
  call void @llvm.dbg.value(metadata i32 %13, metadata !1007, metadata !DIExpression()), !dbg !2173
  %14 = xor i32 %13, 1, !dbg !2181
  %15 = shl i32 %14, %10, !dbg !2182
  %16 = xor i32 %15, %11, !dbg !2183
  store i32 %16, i32* %8, align 4, !dbg !2183, !tbaa !740
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2184
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2185
  ret i8* %17, !dbg !2186
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2187 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2191, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %1, metadata !2192, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %0, metadata !2164, metadata !DIExpression()) #24, !dbg !2194
  call void @llvm.dbg.value(metadata i64 -1, metadata !2165, metadata !DIExpression()) #24, !dbg !2194
  call void @llvm.dbg.value(metadata i8 %1, metadata !2166, metadata !DIExpression()) #24, !dbg !2194
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2196
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2196
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2167, metadata !DIExpression()) #24, !dbg !2197
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #24, !dbg !2198, !tbaa.struct !2172
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !999, metadata !DIExpression()) #24, !dbg !2199
  call void @llvm.dbg.value(metadata i8 %1, metadata !1000, metadata !DIExpression()) #24, !dbg !2199
  call void @llvm.dbg.value(metadata i32 1, metadata !1001, metadata !DIExpression()) #24, !dbg !2199
  call void @llvm.dbg.value(metadata i8 %1, metadata !1002, metadata !DIExpression()) #24, !dbg !2199
  %5 = lshr i8 %1, 5, !dbg !2201
  %6 = zext i8 %5 to i64, !dbg !2201
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2202
  call void @llvm.dbg.value(metadata i32* %7, metadata !1004, metadata !DIExpression()) #24, !dbg !2199
  %8 = and i8 %1, 31, !dbg !2203
  %9 = zext i8 %8 to i32, !dbg !2203
  call void @llvm.dbg.value(metadata i32 %9, metadata !1006, metadata !DIExpression()) #24, !dbg !2199
  %10 = load i32, i32* %7, align 4, !dbg !2204, !tbaa !740
  %11 = lshr i32 %10, %9, !dbg !2205
  %12 = and i32 %11, 1, !dbg !2206
  call void @llvm.dbg.value(metadata i32 %12, metadata !1007, metadata !DIExpression()) #24, !dbg !2199
  %13 = xor i32 %12, 1, !dbg !2207
  %14 = shl i32 %13, %9, !dbg !2208
  %15 = xor i32 %14, %10, !dbg !2209
  store i32 %15, i32* %7, align 4, !dbg !2209, !tbaa !740
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #24, !dbg !2210
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2211
  ret i8* %16, !dbg !2212
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2213 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2215, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i8* %0, metadata !2191, metadata !DIExpression()) #24, !dbg !2217
  call void @llvm.dbg.value(metadata i8 58, metadata !2192, metadata !DIExpression()) #24, !dbg !2217
  call void @llvm.dbg.value(metadata i8* %0, metadata !2164, metadata !DIExpression()) #24, !dbg !2219
  call void @llvm.dbg.value(metadata i64 -1, metadata !2165, metadata !DIExpression()) #24, !dbg !2219
  call void @llvm.dbg.value(metadata i8 58, metadata !2166, metadata !DIExpression()) #24, !dbg !2219
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2221
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #24, !dbg !2221
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2167, metadata !DIExpression()) #24, !dbg !2222
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #24, !dbg !2223, !tbaa.struct !2172
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !999, metadata !DIExpression()) #24, !dbg !2224
  call void @llvm.dbg.value(metadata i8 58, metadata !1000, metadata !DIExpression()) #24, !dbg !2224
  call void @llvm.dbg.value(metadata i32 1, metadata !1001, metadata !DIExpression()) #24, !dbg !2224
  call void @llvm.dbg.value(metadata i8 58, metadata !1002, metadata !DIExpression()) #24, !dbg !2224
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2226
  call void @llvm.dbg.value(metadata i32* %4, metadata !1004, metadata !DIExpression()) #24, !dbg !2224
  call void @llvm.dbg.value(metadata i32 26, metadata !1006, metadata !DIExpression()) #24, !dbg !2224
  %5 = load i32, i32* %4, align 4, !dbg !2227, !tbaa !740
  call void @llvm.dbg.value(metadata i32 %5, metadata !1007, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #24, !dbg !2224
  %6 = or i32 %5, 67108864, !dbg !2228
  store i32 %6, i32* %4, align 4, !dbg !2228, !tbaa !740
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #24, !dbg !2229
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #24, !dbg !2230
  ret i8* %7, !dbg !2231
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2232 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2234, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %1, metadata !2235, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i8* %0, metadata !2164, metadata !DIExpression()) #24, !dbg !2237
  call void @llvm.dbg.value(metadata i64 %1, metadata !2165, metadata !DIExpression()) #24, !dbg !2237
  call void @llvm.dbg.value(metadata i8 58, metadata !2166, metadata !DIExpression()) #24, !dbg !2237
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2239
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2239
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2167, metadata !DIExpression()) #24, !dbg !2240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #24, !dbg !2241, !tbaa.struct !2172
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !999, metadata !DIExpression()) #24, !dbg !2242
  call void @llvm.dbg.value(metadata i8 58, metadata !1000, metadata !DIExpression()) #24, !dbg !2242
  call void @llvm.dbg.value(metadata i32 1, metadata !1001, metadata !DIExpression()) #24, !dbg !2242
  call void @llvm.dbg.value(metadata i8 58, metadata !1002, metadata !DIExpression()) #24, !dbg !2242
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2244
  call void @llvm.dbg.value(metadata i32* %5, metadata !1004, metadata !DIExpression()) #24, !dbg !2242
  call void @llvm.dbg.value(metadata i32 26, metadata !1006, metadata !DIExpression()) #24, !dbg !2242
  %6 = load i32, i32* %5, align 4, !dbg !2245, !tbaa !740
  call void @llvm.dbg.value(metadata i32 %6, metadata !1007, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #24, !dbg !2242
  %7 = or i32 %6, 67108864, !dbg !2246
  store i32 %7, i32* %5, align 4, !dbg !2246, !tbaa !740
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #24, !dbg !2247
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2248
  ret i8* %8, !dbg !2249
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2250 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2067, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2256
  call void @llvm.dbg.value(metadata i32 %0, metadata !2252, metadata !DIExpression()), !dbg !2258
  call void @llvm.dbg.value(metadata i32 %1, metadata !2253, metadata !DIExpression()), !dbg !2258
  call void @llvm.dbg.value(metadata i8* %2, metadata !2254, metadata !DIExpression()), !dbg !2258
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2259
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2259
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2255, metadata !DIExpression()), !dbg !2260
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2261
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2261
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2262), !dbg !2261
  call void @llvm.dbg.value(metadata i32 %1, metadata !2062, metadata !DIExpression()) #24, !dbg !2265
  call void @llvm.dbg.value(metadata i32 0, metadata !2067, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2265
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2256, !alias.scope !2262
  %8 = icmp eq i32 %1, 10, !dbg !2266
  br i1 %8, label %9, label %10, !dbg !2267

9:                                                ; preds = %3
  tail call void @abort() #26, !dbg !2268, !noalias !2262
  unreachable, !dbg !2268

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2067, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2265
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2261
  store i32 %1, i32* %11, align 8, !dbg !2261, !tbaa.struct !2172
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2261
  %13 = bitcast i32* %12 to i8*, !dbg !2261
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2261, !tbaa.struct !2269
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2261
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !999, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8 58, metadata !1000, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i32 1, metadata !1001, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8 58, metadata !1002, metadata !DIExpression()), !dbg !2270
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2272
  call void @llvm.dbg.value(metadata i32* %14, metadata !1004, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i32 26, metadata !1006, metadata !DIExpression()), !dbg !2270
  %15 = load i32, i32* %14, align 4, !dbg !2273, !tbaa !740
  call void @llvm.dbg.value(metadata i32 %15, metadata !1007, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2270
  %16 = or i32 %15, 67108864, !dbg !2274
  store i32 %16, i32* %14, align 4, !dbg !2274, !tbaa !740
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2275
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2276
  ret i8* %17, !dbg !2277
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2278 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2282, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i8* %1, metadata !2283, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i8* %2, metadata !2284, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i8* %3, metadata !2285, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i32 %0, metadata !2287, metadata !DIExpression()) #24, !dbg !2297
  call void @llvm.dbg.value(metadata i8* %1, metadata !2292, metadata !DIExpression()) #24, !dbg !2297
  call void @llvm.dbg.value(metadata i8* %2, metadata !2293, metadata !DIExpression()) #24, !dbg !2297
  call void @llvm.dbg.value(metadata i8* %3, metadata !2294, metadata !DIExpression()) #24, !dbg !2297
  call void @llvm.dbg.value(metadata i64 -1, metadata !2295, metadata !DIExpression()) #24, !dbg !2297
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2299
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2299
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2296, metadata !DIExpression()) #24, !dbg !2300
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #24, !dbg !2301, !tbaa.struct !2172
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1040, metadata !DIExpression()) #24, !dbg !2302
  call void @llvm.dbg.value(metadata i8* %1, metadata !1041, metadata !DIExpression()) #24, !dbg !2302
  call void @llvm.dbg.value(metadata i8* %2, metadata !1042, metadata !DIExpression()) #24, !dbg !2302
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1040, metadata !DIExpression()) #24, !dbg !2302
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2304
  store i32 10, i32* %7, align 8, !dbg !2305, !tbaa !981
  %8 = icmp ne i8* %1, null, !dbg !2306
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2307
  br i1 %10, label %12, label %11, !dbg !2307

11:                                               ; preds = %4
  tail call void @abort() #26, !dbg !2308
  unreachable, !dbg !2308

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2309
  store i8* %1, i8** %13, align 8, !dbg !2310, !tbaa !1055
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2311
  store i8* %2, i8** %14, align 8, !dbg !2312, !tbaa !1058
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #24, !dbg !2313
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2314
  ret i8* %15, !dbg !2315
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2288 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2287, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %1, metadata !2292, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %2, metadata !2293, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %3, metadata !2294, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %4, metadata !2295, metadata !DIExpression()), !dbg !2316
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2317
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #24, !dbg !2317
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2296, metadata !DIExpression()), !dbg !2318
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2319, !tbaa.struct !2172
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1040, metadata !DIExpression()) #24, !dbg !2320
  call void @llvm.dbg.value(metadata i8* %1, metadata !1041, metadata !DIExpression()) #24, !dbg !2320
  call void @llvm.dbg.value(metadata i8* %2, metadata !1042, metadata !DIExpression()) #24, !dbg !2320
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1040, metadata !DIExpression()) #24, !dbg !2320
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2322
  store i32 10, i32* %8, align 8, !dbg !2323, !tbaa !981
  %9 = icmp ne i8* %1, null, !dbg !2324
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2325
  br i1 %11, label %13, label %12, !dbg !2325

12:                                               ; preds = %5
  tail call void @abort() #26, !dbg !2326
  unreachable, !dbg !2326

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2327
  store i8* %1, i8** %14, align 8, !dbg !2328, !tbaa !1055
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2329
  store i8* %2, i8** %15, align 8, !dbg !2330, !tbaa !1058
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2331
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #24, !dbg !2332
  ret i8* %16, !dbg !2333
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2334 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2338, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8* %1, metadata !2339, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8* %2, metadata !2340, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i32 0, metadata !2282, metadata !DIExpression()) #24, !dbg !2342
  call void @llvm.dbg.value(metadata i8* %0, metadata !2283, metadata !DIExpression()) #24, !dbg !2342
  call void @llvm.dbg.value(metadata i8* %1, metadata !2284, metadata !DIExpression()) #24, !dbg !2342
  call void @llvm.dbg.value(metadata i8* %2, metadata !2285, metadata !DIExpression()) #24, !dbg !2342
  call void @llvm.dbg.value(metadata i32 0, metadata !2287, metadata !DIExpression()) #24, !dbg !2344
  call void @llvm.dbg.value(metadata i8* %0, metadata !2292, metadata !DIExpression()) #24, !dbg !2344
  call void @llvm.dbg.value(metadata i8* %1, metadata !2293, metadata !DIExpression()) #24, !dbg !2344
  call void @llvm.dbg.value(metadata i8* %2, metadata !2294, metadata !DIExpression()) #24, !dbg !2344
  call void @llvm.dbg.value(metadata i64 -1, metadata !2295, metadata !DIExpression()) #24, !dbg !2344
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2346
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2346
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2296, metadata !DIExpression()) #24, !dbg !2347
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #24, !dbg !2348, !tbaa.struct !2172
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1040, metadata !DIExpression()) #24, !dbg !2349
  call void @llvm.dbg.value(metadata i8* %0, metadata !1041, metadata !DIExpression()) #24, !dbg !2349
  call void @llvm.dbg.value(metadata i8* %1, metadata !1042, metadata !DIExpression()) #24, !dbg !2349
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1040, metadata !DIExpression()) #24, !dbg !2349
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2351
  store i32 10, i32* %6, align 8, !dbg !2352, !tbaa !981
  %7 = icmp ne i8* %0, null, !dbg !2353
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2354
  br i1 %9, label %11, label %10, !dbg !2354

10:                                               ; preds = %3
  tail call void @abort() #26, !dbg !2355
  unreachable, !dbg !2355

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2356
  store i8* %0, i8** %12, align 8, !dbg !2357, !tbaa !1055
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2358
  store i8* %1, i8** %13, align 8, !dbg !2359, !tbaa !1058
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #24, !dbg !2360
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2361
  ret i8* %14, !dbg !2362
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2363 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2367, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %1, metadata !2368, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %2, metadata !2369, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %3, metadata !2370, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i32 0, metadata !2287, metadata !DIExpression()) #24, !dbg !2372
  call void @llvm.dbg.value(metadata i8* %0, metadata !2292, metadata !DIExpression()) #24, !dbg !2372
  call void @llvm.dbg.value(metadata i8* %1, metadata !2293, metadata !DIExpression()) #24, !dbg !2372
  call void @llvm.dbg.value(metadata i8* %2, metadata !2294, metadata !DIExpression()) #24, !dbg !2372
  call void @llvm.dbg.value(metadata i64 %3, metadata !2295, metadata !DIExpression()) #24, !dbg !2372
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2374
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2374
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2296, metadata !DIExpression()) #24, !dbg !2375
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #24, !dbg !2376, !tbaa.struct !2172
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1040, metadata !DIExpression()) #24, !dbg !2377
  call void @llvm.dbg.value(metadata i8* %0, metadata !1041, metadata !DIExpression()) #24, !dbg !2377
  call void @llvm.dbg.value(metadata i8* %1, metadata !1042, metadata !DIExpression()) #24, !dbg !2377
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1040, metadata !DIExpression()) #24, !dbg !2377
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2379
  store i32 10, i32* %7, align 8, !dbg !2380, !tbaa !981
  %8 = icmp ne i8* %0, null, !dbg !2381
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2382
  br i1 %10, label %12, label %11, !dbg !2382

11:                                               ; preds = %4
  tail call void @abort() #26, !dbg !2383
  unreachable, !dbg !2383

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2384
  store i8* %0, i8** %13, align 8, !dbg !2385, !tbaa !1055
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2386
  store i8* %1, i8** %14, align 8, !dbg !2387, !tbaa !1058
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #24, !dbg !2388
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2389
  ret i8* %15, !dbg !2390
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2391 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2395, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i8* %1, metadata !2396, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i64 %2, metadata !2397, metadata !DIExpression()), !dbg !2398
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2399
  ret i8* %4, !dbg !2400
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2401 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2405, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i64 %1, metadata !2406, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i32 0, metadata !2395, metadata !DIExpression()) #24, !dbg !2408
  call void @llvm.dbg.value(metadata i8* %0, metadata !2396, metadata !DIExpression()) #24, !dbg !2408
  call void @llvm.dbg.value(metadata i64 %1, metadata !2397, metadata !DIExpression()) #24, !dbg !2408
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #24, !dbg !2410
  ret i8* %3, !dbg !2411
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2412 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2416, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i8* %1, metadata !2417, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i32 %0, metadata !2395, metadata !DIExpression()) #24, !dbg !2419
  call void @llvm.dbg.value(metadata i8* %1, metadata !2396, metadata !DIExpression()) #24, !dbg !2419
  call void @llvm.dbg.value(metadata i64 -1, metadata !2397, metadata !DIExpression()) #24, !dbg !2419
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #24, !dbg !2421
  ret i8* %3, !dbg !2422
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2423 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2427, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata i32 0, metadata !2416, metadata !DIExpression()) #24, !dbg !2429
  call void @llvm.dbg.value(metadata i8* %0, metadata !2417, metadata !DIExpression()) #24, !dbg !2429
  call void @llvm.dbg.value(metadata i32 0, metadata !2395, metadata !DIExpression()) #24, !dbg !2431
  call void @llvm.dbg.value(metadata i8* %0, metadata !2396, metadata !DIExpression()) #24, !dbg !2431
  call void @llvm.dbg.value(metadata i64 -1, metadata !2397, metadata !DIExpression()) #24, !dbg !2431
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #24, !dbg !2433
  ret i8* %2, !dbg !2434
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2435 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2475, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %1, metadata !2476, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %2, metadata !2477, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %3, metadata !2478, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8** %4, metadata !2479, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %5, metadata !2480, metadata !DIExpression()), !dbg !2481
  %7 = icmp eq i8* %1, null, !dbg !2482
  br i1 %7, label %10, label %8, !dbg !2484

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #24, !dbg !2485
  br label %12, !dbg !2485

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.71, i64 0, i64 0), i8* %2, i8* %3) #24, !dbg !2486
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.72, i64 0, i64 0), i32 5) #24, !dbg !2487
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #24, !dbg !2487
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.73, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2488
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.74, i64 0, i64 0), i32 5) #24, !dbg !2489
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.75, i64 0, i64 0)) #24, !dbg !2489
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.73, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2490
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
  ], !dbg !2491

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.76, i64 0, i64 0), i32 5) #24, !dbg !2492
  %21 = load i8*, i8** %4, align 8, !dbg !2492, !tbaa !595
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #24, !dbg !2492
  br label %147, !dbg !2494

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.77, i64 0, i64 0), i32 5) #24, !dbg !2495
  %25 = load i8*, i8** %4, align 8, !dbg !2495, !tbaa !595
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2495
  %27 = load i8*, i8** %26, align 8, !dbg !2495, !tbaa !595
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #24, !dbg !2495
  br label %147, !dbg !2496

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.78, i64 0, i64 0), i32 5) #24, !dbg !2497
  %31 = load i8*, i8** %4, align 8, !dbg !2497, !tbaa !595
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2497
  %33 = load i8*, i8** %32, align 8, !dbg !2497, !tbaa !595
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2497
  %35 = load i8*, i8** %34, align 8, !dbg !2497, !tbaa !595
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #24, !dbg !2497
  br label %147, !dbg !2498

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.79, i64 0, i64 0), i32 5) #24, !dbg !2499
  %39 = load i8*, i8** %4, align 8, !dbg !2499, !tbaa !595
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2499
  %41 = load i8*, i8** %40, align 8, !dbg !2499, !tbaa !595
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2499
  %43 = load i8*, i8** %42, align 8, !dbg !2499, !tbaa !595
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2499
  %45 = load i8*, i8** %44, align 8, !dbg !2499, !tbaa !595
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #24, !dbg !2499
  br label %147, !dbg !2500

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.80, i64 0, i64 0), i32 5) #24, !dbg !2501
  %49 = load i8*, i8** %4, align 8, !dbg !2501, !tbaa !595
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2501
  %51 = load i8*, i8** %50, align 8, !dbg !2501, !tbaa !595
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2501
  %53 = load i8*, i8** %52, align 8, !dbg !2501, !tbaa !595
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2501
  %55 = load i8*, i8** %54, align 8, !dbg !2501, !tbaa !595
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2501
  %57 = load i8*, i8** %56, align 8, !dbg !2501, !tbaa !595
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #24, !dbg !2501
  br label %147, !dbg !2502

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.81, i64 0, i64 0), i32 5) #24, !dbg !2503
  %61 = load i8*, i8** %4, align 8, !dbg !2503, !tbaa !595
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2503
  %63 = load i8*, i8** %62, align 8, !dbg !2503, !tbaa !595
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2503
  %65 = load i8*, i8** %64, align 8, !dbg !2503, !tbaa !595
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2503
  %67 = load i8*, i8** %66, align 8, !dbg !2503, !tbaa !595
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2503
  %69 = load i8*, i8** %68, align 8, !dbg !2503, !tbaa !595
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2503
  %71 = load i8*, i8** %70, align 8, !dbg !2503, !tbaa !595
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #24, !dbg !2503
  br label %147, !dbg !2504

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.82, i64 0, i64 0), i32 5) #24, !dbg !2505
  %75 = load i8*, i8** %4, align 8, !dbg !2505, !tbaa !595
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2505
  %77 = load i8*, i8** %76, align 8, !dbg !2505, !tbaa !595
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2505
  %79 = load i8*, i8** %78, align 8, !dbg !2505, !tbaa !595
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2505
  %81 = load i8*, i8** %80, align 8, !dbg !2505, !tbaa !595
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2505
  %83 = load i8*, i8** %82, align 8, !dbg !2505, !tbaa !595
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2505
  %85 = load i8*, i8** %84, align 8, !dbg !2505, !tbaa !595
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2505
  %87 = load i8*, i8** %86, align 8, !dbg !2505, !tbaa !595
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #24, !dbg !2505
  br label %147, !dbg !2506

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.83, i64 0, i64 0), i32 5) #24, !dbg !2507
  %91 = load i8*, i8** %4, align 8, !dbg !2507, !tbaa !595
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2507
  %93 = load i8*, i8** %92, align 8, !dbg !2507, !tbaa !595
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2507
  %95 = load i8*, i8** %94, align 8, !dbg !2507, !tbaa !595
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2507
  %97 = load i8*, i8** %96, align 8, !dbg !2507, !tbaa !595
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2507
  %99 = load i8*, i8** %98, align 8, !dbg !2507, !tbaa !595
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2507
  %101 = load i8*, i8** %100, align 8, !dbg !2507, !tbaa !595
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2507
  %103 = load i8*, i8** %102, align 8, !dbg !2507, !tbaa !595
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2507
  %105 = load i8*, i8** %104, align 8, !dbg !2507, !tbaa !595
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #24, !dbg !2507
  br label %147, !dbg !2508

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.84, i64 0, i64 0), i32 5) #24, !dbg !2509
  %109 = load i8*, i8** %4, align 8, !dbg !2509, !tbaa !595
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2509
  %111 = load i8*, i8** %110, align 8, !dbg !2509, !tbaa !595
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2509
  %113 = load i8*, i8** %112, align 8, !dbg !2509, !tbaa !595
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2509
  %115 = load i8*, i8** %114, align 8, !dbg !2509, !tbaa !595
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2509
  %117 = load i8*, i8** %116, align 8, !dbg !2509, !tbaa !595
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2509
  %119 = load i8*, i8** %118, align 8, !dbg !2509, !tbaa !595
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2509
  %121 = load i8*, i8** %120, align 8, !dbg !2509, !tbaa !595
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2509
  %123 = load i8*, i8** %122, align 8, !dbg !2509, !tbaa !595
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2509
  %125 = load i8*, i8** %124, align 8, !dbg !2509, !tbaa !595
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #24, !dbg !2509
  br label %147, !dbg !2510

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.85, i64 0, i64 0), i32 5) #24, !dbg !2511
  %129 = load i8*, i8** %4, align 8, !dbg !2511, !tbaa !595
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2511
  %131 = load i8*, i8** %130, align 8, !dbg !2511, !tbaa !595
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2511
  %133 = load i8*, i8** %132, align 8, !dbg !2511, !tbaa !595
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2511
  %135 = load i8*, i8** %134, align 8, !dbg !2511, !tbaa !595
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2511
  %137 = load i8*, i8** %136, align 8, !dbg !2511, !tbaa !595
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2511
  %139 = load i8*, i8** %138, align 8, !dbg !2511, !tbaa !595
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2511
  %141 = load i8*, i8** %140, align 8, !dbg !2511, !tbaa !595
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2511
  %143 = load i8*, i8** %142, align 8, !dbg !2511, !tbaa !595
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2511
  %145 = load i8*, i8** %144, align 8, !dbg !2511, !tbaa !595
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #24, !dbg !2511
  br label %147, !dbg !2512

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2513
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !2514 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2518, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i8* %1, metadata !2519, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i8* %2, metadata !2520, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i8* %3, metadata !2521, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i8** %4, metadata !2522, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i64 0, metadata !2523, metadata !DIExpression()), !dbg !2524
  br label %6, !dbg !2525

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2527
  call void @llvm.dbg.value(metadata i64 %7, metadata !2523, metadata !DIExpression()), !dbg !2524
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2528
  %9 = load i8*, i8** %8, align 8, !dbg !2528, !tbaa !595
  %10 = icmp eq i8* %9, null, !dbg !2530
  %11 = add i64 %7, 1, !dbg !2531
  call void @llvm.dbg.value(metadata i64 %11, metadata !2523, metadata !DIExpression()), !dbg !2524
  br i1 %10, label %12, label %6, !dbg !2530, !llvm.loop !2532

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2534
  ret void, !dbg !2535
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !2536 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2547, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i8* %1, metadata !2548, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i8* %2, metadata !2549, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i8* %3, metadata !2550, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2551, metadata !DIExpression()), !dbg !2555
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2556
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #24, !dbg !2556
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2553, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i64 0, metadata !2552, metadata !DIExpression()), !dbg !2555
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !2552, metadata !DIExpression()), !dbg !2555
  %11 = load i32, i32* %8, align 8, !dbg !2558
  %12 = icmp ult i32 %11, 41, !dbg !2558
  br i1 %12, label %13, label %18, !dbg !2558

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2558
  %15 = zext i32 %11 to i64, !dbg !2558
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2558
  %17 = add nuw nsw i32 %11, 8, !dbg !2558
  store i32 %17, i32* %8, align 8, !dbg !2558
  br label %21, !dbg !2558

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2558
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2558
  store i8* %20, i8** %9, align 8, !dbg !2558
  br label %21, !dbg !2558

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2558
  %25 = load i8*, i8** %24, align 8, !dbg !2558
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2561
  store i8* %25, i8** %26, align 16, !dbg !2562, !tbaa !595
  %27 = icmp eq i8* %25, null, !dbg !2563
  br i1 %27, label %30, label %28, !dbg !2564

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2552, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i64 1, metadata !2552, metadata !DIExpression()), !dbg !2555
  %29 = icmp ult i32 %22, 41, !dbg !2558
  br i1 %29, label %35, label %32, !dbg !2558

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2565
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2566
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #24, !dbg !2567
  ret void, !dbg !2567

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2558
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2558
  store i8* %34, i8** %9, align 8, !dbg !2558
  br label %40, !dbg !2558

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2558
  %37 = zext i32 %22 to i64, !dbg !2558
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2558
  %39 = add nuw nsw i32 %22, 8, !dbg !2558
  store i32 %39, i32* %8, align 8, !dbg !2558
  br label %40, !dbg !2558

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2558
  %44 = load i8*, i8** %43, align 8, !dbg !2558
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2561
  store i8* %44, i8** %45, align 8, !dbg !2562, !tbaa !595
  %46 = icmp eq i8* %44, null, !dbg !2563
  br i1 %46, label %30, label %47, !dbg !2564

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2552, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i64 2, metadata !2552, metadata !DIExpression()), !dbg !2555
  %48 = icmp ult i32 %41, 41, !dbg !2558
  br i1 %48, label %52, label %49, !dbg !2558

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2558
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2558
  store i8* %51, i8** %9, align 8, !dbg !2558
  br label %57, !dbg !2558

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2558
  %54 = zext i32 %41 to i64, !dbg !2558
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2558
  %56 = add nuw nsw i32 %41, 8, !dbg !2558
  store i32 %56, i32* %8, align 8, !dbg !2558
  br label %57, !dbg !2558

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2558
  %61 = load i8*, i8** %60, align 8, !dbg !2558
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2561
  store i8* %61, i8** %62, align 16, !dbg !2562, !tbaa !595
  %63 = icmp eq i8* %61, null, !dbg !2563
  br i1 %63, label %30, label %64, !dbg !2564

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2552, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i64 3, metadata !2552, metadata !DIExpression()), !dbg !2555
  %65 = icmp ult i32 %58, 41, !dbg !2558
  br i1 %65, label %69, label %66, !dbg !2558

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2558
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2558
  store i8* %68, i8** %9, align 8, !dbg !2558
  br label %74, !dbg !2558

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2558
  %71 = zext i32 %58 to i64, !dbg !2558
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2558
  %73 = add nuw nsw i32 %58, 8, !dbg !2558
  store i32 %73, i32* %8, align 8, !dbg !2558
  br label %74, !dbg !2558

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2558
  %78 = load i8*, i8** %77, align 8, !dbg !2558
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2561
  store i8* %78, i8** %79, align 8, !dbg !2562, !tbaa !595
  %80 = icmp eq i8* %78, null, !dbg !2563
  br i1 %80, label %30, label %81, !dbg !2564

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2552, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i64 4, metadata !2552, metadata !DIExpression()), !dbg !2555
  %82 = icmp ult i32 %75, 41, !dbg !2558
  br i1 %82, label %86, label %83, !dbg !2558

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2558
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2558
  store i8* %85, i8** %9, align 8, !dbg !2558
  br label %91, !dbg !2558

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2558
  %88 = zext i32 %75 to i64, !dbg !2558
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2558
  %90 = add nuw nsw i32 %75, 8, !dbg !2558
  store i32 %90, i32* %8, align 8, !dbg !2558
  br label %91, !dbg !2558

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2558
  %95 = load i8*, i8** %94, align 8, !dbg !2558
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2561
  store i8* %95, i8** %96, align 16, !dbg !2562, !tbaa !595
  %97 = icmp eq i8* %95, null, !dbg !2563
  br i1 %97, label %30, label %98, !dbg !2564

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2552, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i64 5, metadata !2552, metadata !DIExpression()), !dbg !2555
  %99 = icmp ult i32 %92, 41, !dbg !2558
  br i1 %99, label %103, label %100, !dbg !2558

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2558
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2558
  store i8* %102, i8** %9, align 8, !dbg !2558
  br label %108, !dbg !2558

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2558
  %105 = zext i32 %92 to i64, !dbg !2558
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2558
  %107 = add nuw nsw i32 %92, 8, !dbg !2558
  store i32 %107, i32* %8, align 8, !dbg !2558
  br label %108, !dbg !2558

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2558
  %111 = load i8*, i8** %110, align 8, !dbg !2558
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2561
  store i8* %111, i8** %112, align 8, !dbg !2562, !tbaa !595
  %113 = icmp eq i8* %111, null, !dbg !2563
  br i1 %113, label %30, label %114, !dbg !2564

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2552, metadata !DIExpression()), !dbg !2555
  %115 = load i8*, i8** %9, align 8, !dbg !2558
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2558
  store i8* %116, i8** %9, align 8, !dbg !2558
  %117 = bitcast i8* %115 to i8**, !dbg !2558
  %118 = load i8*, i8** %117, align 8, !dbg !2558
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2561
  store i8* %118, i8** %119, align 16, !dbg !2562, !tbaa !595
  %120 = icmp eq i8* %118, null, !dbg !2563
  br i1 %120, label %30, label %121, !dbg !2564

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2552, metadata !DIExpression()), !dbg !2555
  %122 = load i8*, i8** %9, align 8, !dbg !2558
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2558
  store i8* %123, i8** %9, align 8, !dbg !2558
  %124 = bitcast i8* %122 to i8**, !dbg !2558
  %125 = load i8*, i8** %124, align 8, !dbg !2558
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2561
  store i8* %125, i8** %126, align 8, !dbg !2562, !tbaa !595
  %127 = icmp eq i8* %125, null, !dbg !2563
  br i1 %127, label %30, label %128, !dbg !2564

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2552, metadata !DIExpression()), !dbg !2555
  %129 = load i8*, i8** %9, align 8, !dbg !2558
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2558
  store i8* %130, i8** %9, align 8, !dbg !2558
  %131 = bitcast i8* %129 to i8**, !dbg !2558
  %132 = load i8*, i8** %131, align 8, !dbg !2558
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2561
  store i8* %132, i8** %133, align 16, !dbg !2562, !tbaa !595
  %134 = icmp eq i8* %132, null, !dbg !2563
  br i1 %134, label %30, label %135, !dbg !2564

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2552, metadata !DIExpression()), !dbg !2555
  %136 = load i8*, i8** %9, align 8, !dbg !2558
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2558
  store i8* %137, i8** %9, align 8, !dbg !2558
  %138 = bitcast i8* %136 to i8**, !dbg !2558
  %139 = load i8*, i8** %138, align 8, !dbg !2558
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2561
  store i8* %139, i8** %140, align 8, !dbg !2562, !tbaa !595
  %141 = icmp eq i8* %139, null, !dbg !2563
  %142 = select i1 %141, i64 9, i64 10, !dbg !2564
  br label %30, !dbg !2564
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !2568 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2572, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8* %1, metadata !2573, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8* %2, metadata !2574, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8* %3, metadata !2575, metadata !DIExpression()), !dbg !2581
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2582
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #24, !dbg !2582
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2576, metadata !DIExpression()), !dbg !2583
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2584
  call void @llvm.va_start(i8* nonnull %6), !dbg !2584
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2585
  call void @llvm.va_end(i8* nonnull %6), !dbg !2586
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #24, !dbg !2587
  ret void, !dbg !2587
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !2588 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2589, !tbaa !595
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.73, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2589
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.88, i64 0, i64 0), i32 5) #24, !dbg !2590
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.89, i64 0, i64 0)) #24, !dbg !2590
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.90, i64 0, i64 0), i32 5) #24, !dbg !2591
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.91, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.92, i64 0, i64 0)) #24, !dbg !2591
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.93, i64 0, i64 0), i32 5) #24, !dbg !2592
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.94, i64 0, i64 0)) #24, !dbg !2592
  ret void, !dbg !2593
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #21 !dbg !2594 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2598, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i64 %1, metadata !2599, metadata !DIExpression()), !dbg !2600
  %3 = udiv i64 9223372036854775807, %1, !dbg !2601
  %4 = icmp ult i64 %3, %0, !dbg !2601
  br i1 %4, label %5, label %6, !dbg !2603

5:                                                ; preds = %2
  tail call void @xalloc_die() #26, !dbg !2604
  unreachable, !dbg !2604

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2605
  call void @llvm.dbg.value(metadata i64 %7, metadata !2606, metadata !DIExpression()) #24, !dbg !2612
  %8 = tail call noalias i8* @malloc(i64 %7) #24, !dbg !2614
  call void @llvm.dbg.value(metadata i8* %8, metadata !2611, metadata !DIExpression()) #24, !dbg !2612
  %9 = icmp eq i8* %8, null, !dbg !2615
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !2617
  br i1 %11, label %12, label %13, !dbg !2617

12:                                               ; preds = %6
  tail call void @xalloc_die() #26, !dbg !2618
  unreachable, !dbg !2618

13:                                               ; preds = %6
  ret i8* %8, !dbg !2619
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !2607 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2606, metadata !DIExpression()), !dbg !2620
  %2 = tail call noalias i8* @malloc(i64 %0) #24, !dbg !2621
  call void @llvm.dbg.value(metadata i8* %2, metadata !2611, metadata !DIExpression()), !dbg !2620
  %3 = icmp eq i8* %2, null, !dbg !2622
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2623
  br i1 %5, label %6, label %7, !dbg !2623

6:                                                ; preds = %1
  tail call void @xalloc_die() #26, !dbg !2624
  unreachable, !dbg !2624

7:                                                ; preds = %1
  ret i8* %2, !dbg !2625
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #21 !dbg !2626 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2630, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i64 %1, metadata !2631, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i64 %2, metadata !2632, metadata !DIExpression()), !dbg !2633
  %4 = udiv i64 9223372036854775807, %2, !dbg !2634
  %5 = icmp ult i64 %4, %1, !dbg !2634
  br i1 %5, label %6, label %7, !dbg !2636

6:                                                ; preds = %3
  tail call void @xalloc_die() #26, !dbg !2637
  unreachable, !dbg !2637

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2638
  call void @llvm.dbg.value(metadata i8* %0, metadata !2639, metadata !DIExpression()) #24, !dbg !2645
  call void @llvm.dbg.value(metadata i64 %8, metadata !2644, metadata !DIExpression()) #24, !dbg !2645
  %9 = icmp eq i64 %8, 0, !dbg !2647
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !2649
  br i1 %11, label %12, label %13, !dbg !2649

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #24, !dbg !2650
  br label %19, !dbg !2652

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #24, !dbg !2653
  call void @llvm.dbg.value(metadata i8* %14, metadata !2639, metadata !DIExpression()) #24, !dbg !2645
  %15 = icmp eq i8* %14, null, !dbg !2654
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !2656
  br i1 %17, label %18, label %19, !dbg !2656

18:                                               ; preds = %13
  tail call void @xalloc_die() #26, !dbg !2657
  unreachable, !dbg !2657

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2645
  ret i8* %20, !dbg !2658
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2640 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2639, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i64 %1, metadata !2644, metadata !DIExpression()), !dbg !2659
  %3 = icmp eq i64 %1, 0, !dbg !2660
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !2661
  br i1 %5, label %6, label %7, !dbg !2661

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #24, !dbg !2662
  br label %13, !dbg !2663

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #24, !dbg !2664
  call void @llvm.dbg.value(metadata i8* %8, metadata !2639, metadata !DIExpression()), !dbg !2659
  %9 = icmp eq i8* %8, null, !dbg !2665
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !2666
  br i1 %11, label %12, label %13, !dbg !2666

12:                                               ; preds = %7
  tail call void @xalloc_die() #26, !dbg !2667
  unreachable, !dbg !2667

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2659
  ret i8* %14, !dbg !2668
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #21 !dbg !158 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !163, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i64* %1, metadata !164, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i64 %2, metadata !165, metadata !DIExpression()), !dbg !2669
  %4 = load i64, i64* %1, align 8, !dbg !2670, !tbaa !1881
  call void @llvm.dbg.value(metadata i64 %4, metadata !166, metadata !DIExpression()), !dbg !2669
  %5 = icmp eq i8* %0, null, !dbg !2671
  br i1 %5, label %6, label %20, !dbg !2673

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2674
  br i1 %7, label %8, label %13, !dbg !2677

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2678
  call void @llvm.dbg.value(metadata i64 %9, metadata !166, metadata !DIExpression()), !dbg !2669
  %10 = icmp ugt i64 %2, 128, !dbg !2680
  %11 = zext i1 %10 to i64, !dbg !2680
  %12 = add nuw nsw i64 %9, %11, !dbg !2681
  call void @llvm.dbg.value(metadata i64 %12, metadata !166, metadata !DIExpression()), !dbg !2669
  br label %13, !dbg !2682

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2669
  call void @llvm.dbg.value(metadata i64 %14, metadata !166, metadata !DIExpression()), !dbg !2669
  %15 = udiv i64 9223372036854775807, %2, !dbg !2683
  %16 = icmp ult i64 %15, %14, !dbg !2683
  br i1 %16, label %19, label %17, !dbg !2685

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !166, metadata !DIExpression()), !dbg !2669
  store i64 %14, i64* %1, align 8, !dbg !2686, !tbaa !1881
  %18 = mul i64 %14, %2, !dbg !2687
  call void @llvm.dbg.value(metadata i8* %0, metadata !2639, metadata !DIExpression()) #24, !dbg !2688
  call void @llvm.dbg.value(metadata i64 %28, metadata !2644, metadata !DIExpression()) #24, !dbg !2688
  br label %31, !dbg !2690

19:                                               ; preds = %13
  tail call void @xalloc_die() #26, !dbg !2691
  unreachable, !dbg !2691

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !2692
  %22 = icmp ugt i64 %21, %4, !dbg !2695
  br i1 %22, label %24, label %23, !dbg !2696

23:                                               ; preds = %20
  tail call void @xalloc_die() #26, !dbg !2697
  unreachable, !dbg !2697

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !2698
  %26 = add nuw i64 %4, 1, !dbg !2699
  %27 = add i64 %26, %25, !dbg !2700
  call void @llvm.dbg.value(metadata i64 %27, metadata !166, metadata !DIExpression()), !dbg !2669
  store i64 %27, i64* %1, align 8, !dbg !2686, !tbaa !1881
  %28 = mul i64 %27, %2, !dbg !2687
  call void @llvm.dbg.value(metadata i8* %0, metadata !2639, metadata !DIExpression()) #24, !dbg !2688
  call void @llvm.dbg.value(metadata i64 %28, metadata !2644, metadata !DIExpression()) #24, !dbg !2688
  %29 = icmp eq i64 %28, 0, !dbg !2701
  br i1 %29, label %30, label %31, !dbg !2690

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #24, !dbg !2702
  br label %38, !dbg !2703

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #24, !dbg !2704
  call void @llvm.dbg.value(metadata i8* %33, metadata !2639, metadata !DIExpression()) #24, !dbg !2688
  %34 = icmp eq i8* %33, null, !dbg !2705
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !2706
  br i1 %36, label %37, label %38, !dbg !2706

37:                                               ; preds = %31
  tail call void @xalloc_die() #26, !dbg !2707
  unreachable, !dbg !2707

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !2688
  ret i8* %39, !dbg !2708
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #21 !dbg !2709 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2711, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i64 %0, metadata !2606, metadata !DIExpression()) #24, !dbg !2713
  %2 = tail call noalias i8* @malloc(i64 %0) #24, !dbg !2715
  call void @llvm.dbg.value(metadata i8* %2, metadata !2611, metadata !DIExpression()) #24, !dbg !2713
  %3 = icmp eq i8* %2, null, !dbg !2716
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2717
  br i1 %5, label %6, label %7, !dbg !2717

6:                                                ; preds = %1
  tail call void @xalloc_die() #26, !dbg !2718
  unreachable, !dbg !2718

7:                                                ; preds = %1
  ret i8* %2, !dbg !2719
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !2720 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2724, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i64* %1, metadata !2725, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i8* %0, metadata !163, metadata !DIExpression()) #24, !dbg !2727
  call void @llvm.dbg.value(metadata i64* %1, metadata !164, metadata !DIExpression()) #24, !dbg !2727
  call void @llvm.dbg.value(metadata i64 1, metadata !165, metadata !DIExpression()) #24, !dbg !2727
  %3 = load i64, i64* %1, align 8, !dbg !2729, !tbaa !1881
  call void @llvm.dbg.value(metadata i64 %3, metadata !166, metadata !DIExpression()) #24, !dbg !2727
  %4 = icmp eq i8* %0, null, !dbg !2730
  br i1 %4, label %5, label %10, !dbg !2731

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2732
  br i1 %6, label %17, label %7, !dbg !2733

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !166, metadata !DIExpression()) #24, !dbg !2727
  %8 = icmp slt i64 %3, 0, !dbg !2734
  br i1 %8, label %9, label %17, !dbg !2735

9:                                                ; preds = %7
  tail call void @xalloc_die() #26, !dbg !2736
  unreachable, !dbg !2736

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !2737
  br i1 %11, label %13, label %12, !dbg !2738

12:                                               ; preds = %10
  tail call void @xalloc_die() #26, !dbg !2739
  unreachable, !dbg !2739

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !2740
  %15 = add nuw nsw i64 %3, 1, !dbg !2741
  %16 = add nuw nsw i64 %15, %14, !dbg !2742
  call void @llvm.dbg.value(metadata i64 %16, metadata !166, metadata !DIExpression()) #24, !dbg !2727
  call void @llvm.dbg.value(metadata i8* %0, metadata !2639, metadata !DIExpression()) #24, !dbg !2743
  call void @llvm.dbg.value(metadata i64 %16, metadata !2644, metadata !DIExpression()) #24, !dbg !2743
  br label %17, !dbg !2745

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !2746
  store i64 %18, i64* %1, align 8, !dbg !2746, !tbaa !1881
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #24, !dbg !2747
  call void @llvm.dbg.value(metadata i8* %19, metadata !2639, metadata !DIExpression()) #24, !dbg !2743
  %20 = icmp eq i8* %19, null, !dbg !2748
  br i1 %20, label %21, label %22, !dbg !2749

21:                                               ; preds = %17
  tail call void @xalloc_die() #26, !dbg !2750
  unreachable, !dbg !2750

22:                                               ; preds = %17
  ret i8* %19, !dbg !2751
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !2752 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2754, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i64 %0, metadata !2756, metadata !DIExpression()) #24, !dbg !2761
  call void @llvm.dbg.value(metadata i64 1, metadata !2759, metadata !DIExpression()) #24, !dbg !2761
  %2 = icmp slt i64 %0, 0, !dbg !2763
  br i1 %2, label %6, label %3, !dbg !2765

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #24, !dbg !2766
  call void @llvm.dbg.value(metadata i8* %4, metadata !2760, metadata !DIExpression()) #24, !dbg !2761
  %5 = icmp eq i8* %4, null, !dbg !2767
  br i1 %5, label %6, label %7, !dbg !2768

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #26, !dbg !2769
  unreachable, !dbg !2769

7:                                                ; preds = %3
  ret i8* %4, !dbg !2770
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !2757 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2756, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %1, metadata !2759, metadata !DIExpression()), !dbg !2771
  %3 = udiv i64 9223372036854775807, %1, !dbg !2772
  %4 = icmp ult i64 %3, %0, !dbg !2772
  br i1 %4, label %8, label %5, !dbg !2773

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #24, !dbg !2774
  call void @llvm.dbg.value(metadata i8* %6, metadata !2760, metadata !DIExpression()), !dbg !2771
  %7 = icmp eq i8* %6, null, !dbg !2775
  br i1 %7, label %8, label %9, !dbg !2776

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #26, !dbg !2777
  unreachable, !dbg !2777

9:                                                ; preds = %5
  ret i8* %6, !dbg !2778
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2779 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2785, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i64 %1, metadata !2786, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i64 %1, metadata !2606, metadata !DIExpression()) #24, !dbg !2788
  %3 = tail call noalias i8* @malloc(i64 %1) #24, !dbg !2790
  call void @llvm.dbg.value(metadata i8* %3, metadata !2611, metadata !DIExpression()) #24, !dbg !2788
  %4 = icmp eq i8* %3, null, !dbg !2791
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !2792
  br i1 %6, label %7, label %8, !dbg !2792

7:                                                ; preds = %2
  tail call void @xalloc_die() #26, !dbg !2793
  unreachable, !dbg !2793

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2794, metadata !DIExpression()) #24, !dbg !2803
  call void @llvm.dbg.value(metadata i8* %0, metadata !2801, metadata !DIExpression()) #24, !dbg !2803
  call void @llvm.dbg.value(metadata i64 %1, metadata !2802, metadata !DIExpression()) #24, !dbg !2803
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #24, !dbg !2805
  ret i8* %3, !dbg !2806
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !2807 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2809, metadata !DIExpression()), !dbg !2810
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #25, !dbg !2811
  %3 = add i64 %2, 1, !dbg !2812
  call void @llvm.dbg.value(metadata i8* %0, metadata !2785, metadata !DIExpression()) #24, !dbg !2813
  call void @llvm.dbg.value(metadata i64 %3, metadata !2786, metadata !DIExpression()) #24, !dbg !2813
  call void @llvm.dbg.value(metadata i64 %3, metadata !2606, metadata !DIExpression()) #24, !dbg !2815
  %4 = tail call noalias i8* @malloc(i64 %3) #24, !dbg !2817
  call void @llvm.dbg.value(metadata i8* %4, metadata !2611, metadata !DIExpression()) #24, !dbg !2815
  %5 = icmp eq i8* %4, null, !dbg !2818
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !2819
  br i1 %7, label %8, label %9, !dbg !2819

8:                                                ; preds = %1
  tail call void @xalloc_die() #26, !dbg !2820
  unreachable, !dbg !2820

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !2794, metadata !DIExpression()) #24, !dbg !2821
  call void @llvm.dbg.value(metadata i8* %0, metadata !2801, metadata !DIExpression()) #24, !dbg !2821
  call void @llvm.dbg.value(metadata i64 %3, metadata !2802, metadata !DIExpression()) #24, !dbg !2821
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #24, !dbg !2823
  ret i8* %4, !dbg !2824
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !2825 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !2826, !tbaa !740
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.105, i64 0, i64 0), i32 5) #24, !dbg !2827
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.106, i64 0, i64 0), i8* %2) #24, !dbg !2828
  tail call void @abort() #26, !dbg !2829
  unreachable, !dbg !2829
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #23 !dbg !2830 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2832, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %1, metadata !2833, metadata !DIExpression()), !dbg !2838
  %3 = icmp eq i64 %0, 0, !dbg !2839
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !2840
  br i1 %5, label %11, label %6, !dbg !2840

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !2835, metadata !DIExpression()), !dbg !2841
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !2842
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !2842
  br i1 %8, label %9, label %11, !dbg !2844

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #28, !dbg !2845
  store i32 12, i32* %10, align 4, !dbg !2847, !tbaa !740
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !2832, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %12, metadata !2833, metadata !DIExpression()), !dbg !2838
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #24, !dbg !2848
  call void @llvm.dbg.value(metadata i8* %14, metadata !2834, metadata !DIExpression()), !dbg !2838
  br label %15, !dbg !2849

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !2838
  ret i8* %16, !dbg !2850
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !2851 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !2867, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8* %1, metadata !2868, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %2, metadata !2869, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !2870, metadata !DIExpression()), !dbg !2876
  %6 = bitcast i32* %5 to i8*, !dbg !2877
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #24, !dbg !2877
  %7 = icmp eq i32* %0, null, !dbg !2878
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !2880
  call void @llvm.dbg.value(metadata i32* %8, metadata !2867, metadata !DIExpression()), !dbg !2876
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #24, !dbg !2881
  call void @llvm.dbg.value(metadata i64 %9, metadata !2871, metadata !DIExpression()), !dbg !2876
  %10 = icmp ugt i64 %9, -3, !dbg !2882
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !2883
  br i1 %12, label %13, label %18, !dbg !2883

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #24, !dbg !2884
  br i1 %14, label %18, label %15, !dbg !2885

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !2886, !tbaa !1181
  call void @llvm.dbg.value(metadata i8 %16, metadata !2873, metadata !DIExpression()), !dbg !2887
  %17 = zext i8 %16 to i32, !dbg !2888
  store i32 %17, i32* %8, align 4, !dbg !2889, !tbaa !740
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !2876
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #24, !dbg !2890
  ret i64 %19, !dbg !2890
}

; Function Attrs: nounwind
declare !dbg !2891 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !2895 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2933, metadata !DIExpression()), !dbg !2938
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #24, !dbg !2939
  call void @llvm.dbg.value(metadata i1 undef, metadata !2934, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2938
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2940, metadata !DIExpression()), !dbg !2944
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !2946
  %4 = load i32, i32* %3, align 8, !dbg !2946, !tbaa !2947
  %5 = and i32 %4, 32, !dbg !2949
  %6 = icmp eq i32 %5, 0, !dbg !2949
  call void @llvm.dbg.value(metadata i1 %6, metadata !2936, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2938
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #24, !dbg !2950
  %8 = icmp eq i32 %7, 0, !dbg !2951
  call void @llvm.dbg.value(metadata i1 %8, metadata !2937, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2938
  br i1 %6, label %9, label %19, !dbg !2952

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !2954
  call void @llvm.dbg.value(metadata i1 %10, metadata !2934, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2938
  %11 = or i1 %10, %8, !dbg !2955
  %12 = xor i1 %8, true, !dbg !2955
  %13 = sext i1 %12 to i32, !dbg !2955
  br i1 %11, label %22, label %14, !dbg !2955

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #28, !dbg !2956
  %16 = load i32, i32* %15, align 4, !dbg !2956, !tbaa !740
  %17 = icmp ne i32 %16, 9, !dbg !2957
  %18 = sext i1 %17 to i32, !dbg !2958
  br label %22, !dbg !2958

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !2959

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #28, !dbg !2961
  store i32 0, i32* %21, align 4, !dbg !2963, !tbaa !740
  br label %22, !dbg !2961

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !2938
  ret i32 %23, !dbg !2964
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !2965 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2969, metadata !DIExpression()), !dbg !2974
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !2975
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #24, !dbg !2975
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !2970, metadata !DIExpression()), !dbg !2976
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #24, !dbg !2977
  %5 = icmp eq i32 %4, 0, !dbg !2977
  br i1 %5, label %6, label %13, !dbg !2979

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !2980
  %8 = load i16, i16* %7, align 16, !dbg !2980
  %9 = icmp eq i16 %8, 67, !dbg !2980
  br i1 %9, label %13, label %10, !dbg !2981

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.115, i64 0, i64 0), i64 6), !dbg !2982
  %12 = icmp ne i32 %11, 0, !dbg !2983
  br label %13, !dbg !2981

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !2974
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #24, !dbg !2984
  ret i1 %14, !dbg !2984
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !2985 {
  %1 = tail call i8* @nl_langinfo(i32 14) #24, !dbg !2990
  call void @llvm.dbg.value(metadata i8* %1, metadata !2989, metadata !DIExpression()), !dbg !2991
  %2 = icmp eq i8* %1, null, !dbg !2992
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.118, i64 0, i64 0), i8* %1, !dbg !2994
  call void @llvm.dbg.value(metadata i8* %3, metadata !2989, metadata !DIExpression()), !dbg !2991
  %4 = load i8, i8* %3, align 1, !dbg !2995, !tbaa !1181
  %5 = icmp eq i8 %4, 0, !dbg !2999
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.119, i64 0, i64 0), i8* %3, !dbg !3000
  call void @llvm.dbg.value(metadata i8* %6, metadata !2989, metadata !DIExpression()), !dbg !2991
  ret i8* %6, !dbg !3001
}

; Function Attrs: nounwind
declare !dbg !3002 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3005 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3009, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i8* %1, metadata !3010, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i64 %2, metadata !3011, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i32 %0, metadata !3013, metadata !DIExpression()) #24, !dbg !3022
  call void @llvm.dbg.value(metadata i8* %1, metadata !3016, metadata !DIExpression()) #24, !dbg !3022
  call void @llvm.dbg.value(metadata i64 %2, metadata !3017, metadata !DIExpression()) #24, !dbg !3022
  call void @llvm.dbg.value(metadata i32 %0, metadata !3024, metadata !DIExpression()) #24, !dbg !3030
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #24, !dbg !3032
  call void @llvm.dbg.value(metadata i8* %4, metadata !3029, metadata !DIExpression()) #24, !dbg !3030
  call void @llvm.dbg.value(metadata i8* %4, metadata !3018, metadata !DIExpression()) #24, !dbg !3022
  %5 = icmp eq i8* %4, null, !dbg !3033
  br i1 %5, label %6, label %9, !dbg !3034

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3035
  br i1 %7, label %19, label %8, !dbg !3038

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3039, !tbaa !1181
  br label %19, !dbg !3040

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #25, !dbg !3041
  call void @llvm.dbg.value(metadata i64 %10, metadata !3019, metadata !DIExpression()) #24, !dbg !3042
  %11 = icmp ult i64 %10, %2, !dbg !3043
  br i1 %11, label %12, label %14, !dbg !3045

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3046
  call void @llvm.dbg.value(metadata i8* %1, metadata !3048, metadata !DIExpression()) #24, !dbg !3053
  call void @llvm.dbg.value(metadata i8* %4, metadata !3051, metadata !DIExpression()) #24, !dbg !3053
  call void @llvm.dbg.value(metadata i64 %13, metadata !3052, metadata !DIExpression()) #24, !dbg !3053
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #24, !dbg !3055
  br label %19, !dbg !3056

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3057
  br i1 %15, label %19, label %16, !dbg !3060

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3061
  call void @llvm.dbg.value(metadata i8* %1, metadata !3048, metadata !DIExpression()) #24, !dbg !3063
  call void @llvm.dbg.value(metadata i8* %4, metadata !3051, metadata !DIExpression()) #24, !dbg !3063
  call void @llvm.dbg.value(metadata i64 %17, metadata !3052, metadata !DIExpression()) #24, !dbg !3063
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #24, !dbg !3065
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3066
  store i8 0, i8* %18, align 1, !dbg !3067, !tbaa !1181
  br label %19, !dbg !3068

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3069
  ret i32 %20, !dbg !3070
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3071 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3073, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i32 %0, metadata !3024, metadata !DIExpression()) #24, !dbg !3075
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #24, !dbg !3077
  call void @llvm.dbg.value(metadata i8* %2, metadata !3029, metadata !DIExpression()) #24, !dbg !3075
  ret i8* %2, !dbg !3078
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3079 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3117, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i32 0, metadata !3118, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i32 0, metadata !3120, metadata !DIExpression()), !dbg !3121
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !3122
  call void @llvm.dbg.value(metadata i32 %2, metadata !3119, metadata !DIExpression()), !dbg !3121
  %3 = icmp slt i32 %2, 0, !dbg !3123
  br i1 %3, label %4, label %6, !dbg !3125

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3126
  br label %24, !dbg !3127

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #24, !dbg !3128
  %8 = icmp eq i32 %7, 0, !dbg !3128
  br i1 %8, label %13, label %9, !dbg !3130

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !3131
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #24, !dbg !3132
  %12 = icmp eq i64 %11, -1, !dbg !3133
  br i1 %12, label %16, label %13, !dbg !3134

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #24, !dbg !3135
  %15 = icmp eq i32 %14, 0, !dbg !3135
  br i1 %15, label %16, label %18, !dbg !3136

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3118, metadata !DIExpression()), !dbg !3121
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3137
  call void @llvm.dbg.value(metadata i32 %21, metadata !3120, metadata !DIExpression()), !dbg !3121
  br label %24, !dbg !3138

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #28, !dbg !3139
  %20 = load i32, i32* %19, align 4, !dbg !3139, !tbaa !740
  call void @llvm.dbg.value(metadata i32 %20, metadata !3118, metadata !DIExpression()), !dbg !3121
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3137
  call void @llvm.dbg.value(metadata i32 %21, metadata !3120, metadata !DIExpression()), !dbg !3121
  %22 = icmp eq i32 %20, 0, !dbg !3140
  br i1 %22, label %24, label %23, !dbg !3138

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3142, !tbaa !740
  call void @llvm.dbg.value(metadata i32 -1, metadata !3120, metadata !DIExpression()), !dbg !3121
  br label %24, !dbg !3144

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3121
  ret i32 %25, !dbg !3145
}

; Function Attrs: nofree nounwind
declare !dbg !3146 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3149 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3150 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3153 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3191, metadata !DIExpression()), !dbg !3192
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3193
  br i1 %2, label %6, label %3, !dbg !3195

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #24, !dbg !3196
  %5 = icmp eq i32 %4, 0, !dbg !3196
  br i1 %5, label %6, label %8, !dbg !3197

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3198
  br label %17, !dbg !3199

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3200, metadata !DIExpression()) #24, !dbg !3205
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3207
  %10 = load i32, i32* %9, align 8, !dbg !3207, !tbaa !2947
  %11 = and i32 %10, 256, !dbg !3209
  %12 = icmp eq i32 %11, 0, !dbg !3209
  br i1 %12, label %15, label %13, !dbg !3210

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #24, !dbg !3211
  br label %15, !dbg !3211

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3212
  br label %17, !dbg !3213

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3192
  ret i32 %18, !dbg !3214
}

; Function Attrs: nofree nounwind
declare !dbg !3215 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3218 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3257, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata i64 %1, metadata !3258, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata i32 %2, metadata !3259, metadata !DIExpression()), !dbg !3263
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3264
  %5 = load i8*, i8** %4, align 8, !dbg !3264, !tbaa !3265
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3266
  %7 = load i8*, i8** %6, align 8, !dbg !3266, !tbaa !3267
  %8 = icmp eq i8* %5, %7, !dbg !3268
  br i1 %8, label %9, label %28, !dbg !3269

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3270
  %11 = load i8*, i8** %10, align 8, !dbg !3270, !tbaa !3271
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3272
  %13 = load i8*, i8** %12, align 8, !dbg !3272, !tbaa !3273
  %14 = icmp eq i8* %11, %13, !dbg !3274
  br i1 %14, label %15, label %28, !dbg !3275

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3276
  %17 = load i8*, i8** %16, align 8, !dbg !3276, !tbaa !3277
  %18 = icmp eq i8* %17, null, !dbg !3278
  br i1 %18, label %19, label %28, !dbg !3279

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !3280
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #24, !dbg !3281
  call void @llvm.dbg.value(metadata i64 %21, metadata !3260, metadata !DIExpression()), !dbg !3282
  %22 = icmp eq i64 %21, -1, !dbg !3283
  br i1 %22, label %30, label %23, !dbg !3285

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3286
  %25 = load i32, i32* %24, align 8, !dbg !3287, !tbaa !2947
  %26 = and i32 %25, -17, !dbg !3287
  store i32 %26, i32* %24, align 8, !dbg !3287, !tbaa !2947
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3288
  store i64 %21, i64* %27, align 8, !dbg !3289, !tbaa !3290
  br label %30, !dbg !3291

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3292
  br label %30, !dbg !3293

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3263
  ret i32 %31, !dbg !3294
}

; Function Attrs: nofree nounwind
declare !dbg !3295 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

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
!144 = !DIFile(filename: "src/logname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!584 = distinct !DISubprogram(name: "usage", scope: !144, file: !144, line: 33, type: !585, scopeLine: 34, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !587)
!585 = !DISubroutineType(types: !586)
!586 = !{null, !23}
!587 = !{!588}
!588 = !DILocalVariable(name: "status", arg: 1, scope: !584, file: !144, line: 33, type: !23)
!589 = !DILocation(line: 0, scope: !584)
!590 = !DILocation(line: 35, column: 14, scope: !591)
!591 = distinct !DILexicalBlock(scope: !584, file: !144, line: 35, column: 7)
!592 = !DILocation(line: 35, column: 7, scope: !584)
!593 = !DILocation(line: 36, column: 5, scope: !594)
!594 = distinct !DILexicalBlock(scope: !591, file: !144, line: 36, column: 5)
!595 = !{!596, !596, i64 0}
!596 = !{!"any pointer", !597, i64 0}
!597 = !{!"omnipotent char", !598, i64 0}
!598 = !{!"Simple C/C++ TBAA"}
!599 = !DILocation(line: 39, column: 7, scope: !600)
!600 = distinct !DILexicalBlock(scope: !591, file: !144, line: 38, column: 5)
!601 = !DILocation(line: 40, column: 7, scope: !600)
!602 = !DILocation(line: 44, column: 7, scope: !600)
!603 = !DILocation(line: 45, column: 7, scope: !600)
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
!624 = distinct !DILocation(line: 46, column: 7, scope: !600)
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
!656 = !DILocation(line: 48, column: 3, scope: !584)
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
!721 = distinct !DISubprogram(name: "main", scope: !144, file: !144, line: 52, type: !722, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !725)
!722 = !DISubroutineType(types: !723)
!723 = !{!23, !23, !724}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!725 = !{!726, !727, !728}
!726 = !DILocalVariable(name: "argc", arg: 1, scope: !721, file: !144, line: 52, type: !23)
!727 = !DILocalVariable(name: "argv", arg: 2, scope: !721, file: !144, line: 52, type: !724)
!728 = !DILocalVariable(name: "cp", scope: !721, file: !144, line: 54, type: !47)
!729 = !DILocation(line: 0, scope: !721)
!730 = !DILocation(line: 57, column: 21, scope: !721)
!731 = !DILocation(line: 57, column: 3, scope: !721)
!732 = !DILocation(line: 58, column: 3, scope: !721)
!733 = !DILocation(line: 59, column: 3, scope: !721)
!734 = !DILocation(line: 60, column: 3, scope: !721)
!735 = !DILocation(line: 62, column: 3, scope: !721)
!736 = !DILocation(line: 65, column: 36, scope: !721)
!737 = !DILocation(line: 64, column: 3, scope: !721)
!738 = !DILocation(line: 68, column: 7, scope: !739)
!739 = distinct !DILexicalBlock(scope: !721, file: !144, line: 68, column: 7)
!740 = !{!741, !741, i64 0}
!741 = !{!"int", !597, i64 0}
!742 = !DILocation(line: 68, column: 14, scope: !739)
!743 = !DILocation(line: 68, column: 7, scope: !721)
!744 = !DILocation(line: 70, column: 20, scope: !745)
!745 = distinct !DILexicalBlock(scope: !739, file: !144, line: 69, column: 5)
!746 = !DILocation(line: 70, column: 55, scope: !745)
!747 = !DILocation(line: 70, column: 50, scope: !745)
!748 = !DILocation(line: 70, column: 43, scope: !745)
!749 = !DILocation(line: 70, column: 7, scope: !745)
!750 = !DILocation(line: 71, column: 7, scope: !745)
!751 = !DILocation(line: 76, column: 8, scope: !721)
!752 = !DILocation(line: 77, column: 9, scope: !753)
!753 = distinct !DILexicalBlock(scope: !721, file: !144, line: 77, column: 7)
!754 = !DILocation(line: 77, column: 7, scope: !721)
!755 = !DILocation(line: 78, column: 5, scope: !753)
!756 = !DILocation(line: 80, column: 3, scope: !721)
!757 = !DILocation(line: 81, column: 3, scope: !721)
!758 = !DISubprogram(name: "bindtextdomain", scope: !658, file: !658, line: 86, type: !759, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!759 = !DISubroutineType(types: !760)
!760 = !{!47, !6, !6}
!761 = !DISubprogram(name: "textdomain", scope: !658, file: !658, line: 82, type: !762, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!762 = !DISubroutineType(types: !763)
!763 = !{!47, !6}
!764 = !DISubprogram(name: "atexit", scope: !765, file: !765, line: 595, type: !766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!765 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!766 = !DISubroutineType(types: !767)
!767 = !{!23, !768}
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{null}
!771 = !DISubprogram(name: "error", scope: !772, file: !772, line: 52, type: !773, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!772 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!773 = !DISubroutineType(types: !774)
!774 = !{null, !23, !23, !6, null}
!775 = !DISubprogram(name: "getlogin", scope: !776, file: !776, line: 861, type: !777, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!776 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!777 = !DISubroutineType(types: !778)
!778 = !{!47}
!779 = !DISubprogram(name: "puts", scope: !662, file: !662, line: 637, type: !780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!780 = !DISubroutineType(types: !781)
!781 = !{!23, !6}
!782 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !12, file: !12, line: 51, type: !607, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !783)
!783 = !{!784}
!784 = !DILocalVariable(name: "file", arg: 1, scope: !782, file: !12, line: 51, type: !6)
!785 = !DILocation(line: 0, scope: !782)
!786 = !DILocation(line: 53, column: 13, scope: !782)
!787 = !DILocation(line: 54, column: 1, scope: !782)
!788 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !12, file: !12, line: 88, type: !789, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !791)
!789 = !DISubroutineType(types: !790)
!790 = !{null, !16}
!791 = !{!792}
!792 = !DILocalVariable(name: "ignore", arg: 1, scope: !788, file: !12, line: 88, type: !16)
!793 = !DILocation(line: 0, scope: !788)
!794 = !DILocation(line: 90, column: 16, scope: !788)
!795 = !{!796, !796, i64 0}
!796 = !{!"_Bool", !597, i64 0}
!797 = !DILocation(line: 91, column: 1, scope: !788)
!798 = distinct !DISubprogram(name: "close_stdout", scope: !12, file: !12, line: 117, type: !769, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !799)
!799 = !{!800}
!800 = !DILocalVariable(name: "write_error", scope: !801, file: !12, line: 122, type: !6)
!801 = distinct !DILexicalBlock(scope: !802, file: !12, line: 121, column: 5)
!802 = distinct !DILexicalBlock(scope: !798, file: !12, line: 119, column: 7)
!803 = !DILocation(line: 119, column: 21, scope: !802)
!804 = !DILocation(line: 119, column: 7, scope: !802)
!805 = !DILocation(line: 119, column: 29, scope: !802)
!806 = !DILocation(line: 120, column: 7, scope: !802)
!807 = !DILocation(line: 120, column: 12, scope: !802)
!808 = !{i8 0, i8 2}
!809 = !DILocation(line: 120, column: 25, scope: !802)
!810 = !DILocation(line: 120, column: 28, scope: !802)
!811 = !DILocation(line: 120, column: 34, scope: !802)
!812 = !DILocation(line: 119, column: 7, scope: !798)
!813 = !DILocation(line: 122, column: 33, scope: !801)
!814 = !DILocation(line: 0, scope: !801)
!815 = !DILocation(line: 123, column: 11, scope: !816)
!816 = distinct !DILexicalBlock(scope: !801, file: !12, line: 123, column: 11)
!817 = !DILocation(line: 0, scope: !816)
!818 = !DILocation(line: 123, column: 11, scope: !801)
!819 = !DILocation(line: 124, column: 36, scope: !816)
!820 = !DILocation(line: 124, column: 9, scope: !816)
!821 = !DILocation(line: 127, column: 9, scope: !816)
!822 = !DILocation(line: 129, column: 14, scope: !801)
!823 = !DILocation(line: 129, column: 7, scope: !801)
!824 = !DILocation(line: 134, column: 42, scope: !825)
!825 = distinct !DILexicalBlock(scope: !798, file: !12, line: 134, column: 7)
!826 = !DILocation(line: 134, column: 28, scope: !825)
!827 = !DILocation(line: 134, column: 50, scope: !825)
!828 = !DILocation(line: 134, column: 7, scope: !798)
!829 = !DILocation(line: 135, column: 12, scope: !825)
!830 = !DILocation(line: 135, column: 5, scope: !825)
!831 = !DILocation(line: 136, column: 1, scope: !798)
!832 = distinct !DISubprogram(name: "parse_long_options", scope: !27, file: !27, line: 45, type: !833, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !836)
!833 = !DISubroutineType(types: !834)
!834 = !{null, !23, !724, !6, !6, !6, !835, null}
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!836 = !{!837, !838, !839, !840, !841, !842, !843, !844, !845}
!837 = !DILocalVariable(name: "argc", arg: 1, scope: !832, file: !27, line: 45, type: !23)
!838 = !DILocalVariable(name: "argv", arg: 2, scope: !832, file: !27, line: 46, type: !724)
!839 = !DILocalVariable(name: "command_name", arg: 3, scope: !832, file: !27, line: 47, type: !6)
!840 = !DILocalVariable(name: "package", arg: 4, scope: !832, file: !27, line: 48, type: !6)
!841 = !DILocalVariable(name: "version", arg: 5, scope: !832, file: !27, line: 49, type: !6)
!842 = !DILocalVariable(name: "usage_func", arg: 6, scope: !832, file: !27, line: 50, type: !835)
!843 = !DILocalVariable(name: "c", scope: !832, file: !27, line: 53, type: !23)
!844 = !DILocalVariable(name: "saved_opterr", scope: !832, file: !27, line: 54, type: !23)
!845 = !DILocalVariable(name: "authors", scope: !846, file: !27, line: 72, type: !850)
!846 = distinct !DILexicalBlock(scope: !847, file: !27, line: 71, column: 11)
!847 = distinct !DILexicalBlock(scope: !848, file: !27, line: 65, column: 9)
!848 = distinct !DILexicalBlock(scope: !849, file: !27, line: 63, column: 5)
!849 = distinct !DILexicalBlock(scope: !832, file: !27, line: 61, column: 7)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !662, line: 52, baseType: !851)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !852, line: 32, baseType: !853)
!852 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !27, baseType: !854)
!854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !855, size: 192, elements: !696)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !856)
!856 = !{!857, !858, !859, !860}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !855, file: !27, line: 72, baseType: !56, size: 32)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !855, file: !27, line: 72, baseType: !56, size: 32, offset: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !855, file: !27, line: 72, baseType: !46, size: 64, offset: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !855, file: !27, line: 72, baseType: !46, size: 64, offset: 128)
!861 = !DILocation(line: 0, scope: !832)
!862 = !DILocation(line: 56, column: 18, scope: !832)
!863 = !DILocation(line: 59, column: 10, scope: !832)
!864 = !DILocation(line: 61, column: 12, scope: !849)
!865 = !DILocation(line: 62, column: 7, scope: !849)
!866 = !DILocation(line: 62, column: 15, scope: !849)
!867 = !DILocation(line: 61, column: 7, scope: !832)
!868 = !DILocation(line: 67, column: 11, scope: !847)
!869 = !DILocation(line: 68, column: 11, scope: !847)
!870 = !DILocation(line: 72, column: 13, scope: !846)
!871 = !DILocation(line: 72, column: 21, scope: !846)
!872 = !DILocation(line: 73, column: 13, scope: !846)
!873 = !DILocation(line: 74, column: 29, scope: !846)
!874 = !DILocation(line: 74, column: 13, scope: !846)
!875 = !DILocation(line: 75, column: 13, scope: !846)
!876 = !DILocation(line: 85, column: 10, scope: !832)
!877 = !DILocation(line: 89, column: 10, scope: !832)
!878 = !DILocation(line: 90, column: 1, scope: !832)
!879 = !DISubprogram(name: "getopt_long", scope: !32, file: !32, line: 66, type: !880, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!880 = !DISubroutineType(types: !881)
!881 = !{!23, !23, !882, !6, !884, !37}
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!885 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !27, file: !27, line: 98, type: !886, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !888)
!886 = !DISubroutineType(types: !887)
!887 = !{null, !23, !724, !6, !6, !6, !16, !835, null}
!888 = !{!889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899}
!889 = !DILocalVariable(name: "argc", arg: 1, scope: !885, file: !27, line: 98, type: !23)
!890 = !DILocalVariable(name: "argv", arg: 2, scope: !885, file: !27, line: 99, type: !724)
!891 = !DILocalVariable(name: "command_name", arg: 3, scope: !885, file: !27, line: 100, type: !6)
!892 = !DILocalVariable(name: "package", arg: 4, scope: !885, file: !27, line: 101, type: !6)
!893 = !DILocalVariable(name: "version", arg: 5, scope: !885, file: !27, line: 102, type: !6)
!894 = !DILocalVariable(name: "scan_all", arg: 6, scope: !885, file: !27, line: 103, type: !16)
!895 = !DILocalVariable(name: "usage_func", arg: 7, scope: !885, file: !27, line: 104, type: !835)
!896 = !DILocalVariable(name: "c", scope: !885, file: !27, line: 107, type: !23)
!897 = !DILocalVariable(name: "saved_opterr", scope: !885, file: !27, line: 108, type: !23)
!898 = !DILocalVariable(name: "optstring", scope: !885, file: !27, line: 113, type: !6)
!899 = !DILocalVariable(name: "authors", scope: !900, file: !27, line: 125, type: !850)
!900 = distinct !DILexicalBlock(scope: !901, file: !27, line: 124, column: 11)
!901 = distinct !DILexicalBlock(scope: !902, file: !27, line: 118, column: 9)
!902 = distinct !DILexicalBlock(scope: !903, file: !27, line: 116, column: 5)
!903 = distinct !DILexicalBlock(scope: !885, file: !27, line: 115, column: 7)
!904 = !DILocation(line: 0, scope: !885)
!905 = !DILocation(line: 108, column: 22, scope: !885)
!906 = !DILocation(line: 111, column: 10, scope: !885)
!907 = !DILocation(line: 113, column: 27, scope: !885)
!908 = !DILocation(line: 115, column: 12, scope: !903)
!909 = !DILocation(line: 115, column: 7, scope: !885)
!910 = !DILocation(line: 125, column: 13, scope: !900)
!911 = !DILocation(line: 125, column: 21, scope: !900)
!912 = !DILocation(line: 126, column: 13, scope: !900)
!913 = !DILocation(line: 127, column: 29, scope: !900)
!914 = !DILocation(line: 127, column: 13, scope: !900)
!915 = !DILocation(line: 128, column: 13, scope: !900)
!916 = !DILocation(line: 132, column: 26, scope: !901)
!917 = !DILocation(line: 133, column: 11, scope: !901)
!918 = !DILocation(line: 0, scope: !901)
!919 = !DILocation(line: 138, column: 10, scope: !885)
!920 = !DILocation(line: 139, column: 1, scope: !885)
!921 = distinct !DISubprogram(name: "set_program_name", scope: !44, file: !44, line: 39, type: !607, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !43, retainedNodes: !922)
!922 = !{!923, !924, !925}
!923 = !DILocalVariable(name: "argv0", arg: 1, scope: !921, file: !44, line: 39, type: !6)
!924 = !DILocalVariable(name: "slash", scope: !921, file: !44, line: 46, type: !6)
!925 = !DILocalVariable(name: "base", scope: !921, file: !44, line: 47, type: !6)
!926 = !DILocation(line: 0, scope: !921)
!927 = !DILocation(line: 51, column: 13, scope: !928)
!928 = distinct !DILexicalBlock(scope: !921, file: !44, line: 51, column: 7)
!929 = !DILocation(line: 51, column: 7, scope: !921)
!930 = !DILocation(line: 55, column: 14, scope: !931)
!931 = distinct !DILexicalBlock(scope: !928, file: !44, line: 52, column: 5)
!932 = !DILocation(line: 54, column: 7, scope: !931)
!933 = !DILocation(line: 56, column: 7, scope: !931)
!934 = !DILocation(line: 59, column: 11, scope: !921)
!935 = !DILocation(line: 60, column: 17, scope: !921)
!936 = !DILocation(line: 60, column: 11, scope: !921)
!937 = !DILocation(line: 61, column: 12, scope: !938)
!938 = distinct !DILexicalBlock(scope: !921, file: !44, line: 61, column: 7)
!939 = !DILocation(line: 61, column: 20, scope: !938)
!940 = !DILocation(line: 61, column: 25, scope: !938)
!941 = !DILocation(line: 61, column: 42, scope: !938)
!942 = !DILocation(line: 61, column: 28, scope: !938)
!943 = !DILocation(line: 61, column: 61, scope: !938)
!944 = !DILocation(line: 61, column: 7, scope: !921)
!945 = !DILocation(line: 64, column: 11, scope: !946)
!946 = distinct !DILexicalBlock(scope: !947, file: !44, line: 64, column: 11)
!947 = distinct !DILexicalBlock(scope: !938, file: !44, line: 62, column: 5)
!948 = !DILocation(line: 64, column: 36, scope: !946)
!949 = !DILocation(line: 64, column: 11, scope: !947)
!950 = !DILocation(line: 66, column: 24, scope: !951)
!951 = distinct !DILexicalBlock(scope: !946, file: !44, line: 65, column: 9)
!952 = !DILocation(line: 70, column: 41, scope: !951)
!953 = !DILocation(line: 72, column: 9, scope: !951)
!954 = !DILocation(line: 84, column: 16, scope: !921)
!955 = !DILocation(line: 90, column: 27, scope: !921)
!956 = !DILocation(line: 92, column: 1, scope: !921)
!957 = distinct !DISubprogram(name: "clone_quoting_options", scope: !52, file: !52, line: 122, type: !958, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !961)
!958 = !DISubroutineType(types: !959)
!959 = !{!960, !960}
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!961 = !{!962, !963, !964}
!962 = !DILocalVariable(name: "o", arg: 1, scope: !957, file: !52, line: 122, type: !960)
!963 = !DILocalVariable(name: "e", scope: !957, file: !52, line: 124, type: !23)
!964 = !DILocalVariable(name: "p", scope: !957, file: !52, line: 125, type: !960)
!965 = !DILocation(line: 0, scope: !957)
!966 = !DILocation(line: 124, column: 11, scope: !957)
!967 = !DILocation(line: 125, column: 40, scope: !957)
!968 = !DILocation(line: 125, column: 31, scope: !957)
!969 = !DILocation(line: 127, column: 9, scope: !957)
!970 = !DILocation(line: 128, column: 3, scope: !957)
!971 = distinct !DISubprogram(name: "get_quoting_style", scope: !52, file: !52, line: 133, type: !972, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !976)
!972 = !DISubroutineType(types: !973)
!973 = !{!54, !974}
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!976 = !{!977}
!977 = !DILocalVariable(name: "o", arg: 1, scope: !971, file: !52, line: 133, type: !974)
!978 = !DILocation(line: 0, scope: !971)
!979 = !DILocation(line: 135, column: 11, scope: !971)
!980 = !DILocation(line: 135, column: 46, scope: !971)
!981 = !{!982, !597, i64 0}
!982 = !{!"quoting_options", !597, i64 0, !741, i64 4, !597, i64 8, !596, i64 40, !596, i64 48}
!983 = !DILocation(line: 135, column: 3, scope: !971)
!984 = distinct !DISubprogram(name: "set_quoting_style", scope: !52, file: !52, line: 141, type: !985, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !987)
!985 = !DISubroutineType(types: !986)
!986 = !{null, !960, !54}
!987 = !{!988, !989}
!988 = !DILocalVariable(name: "o", arg: 1, scope: !984, file: !52, line: 141, type: !960)
!989 = !DILocalVariable(name: "s", arg: 2, scope: !984, file: !52, line: 141, type: !54)
!990 = !DILocation(line: 0, scope: !984)
!991 = !DILocation(line: 143, column: 4, scope: !984)
!992 = !DILocation(line: 143, column: 39, scope: !984)
!993 = !DILocation(line: 143, column: 45, scope: !984)
!994 = !DILocation(line: 144, column: 1, scope: !984)
!995 = distinct !DISubprogram(name: "set_char_quoting", scope: !52, file: !52, line: 152, type: !996, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !998)
!996 = !DISubroutineType(types: !997)
!997 = !{!23, !960, !8, !23}
!998 = !{!999, !1000, !1001, !1002, !1004, !1006, !1007}
!999 = !DILocalVariable(name: "o", arg: 1, scope: !995, file: !52, line: 152, type: !960)
!1000 = !DILocalVariable(name: "c", arg: 2, scope: !995, file: !52, line: 152, type: !8)
!1001 = !DILocalVariable(name: "i", arg: 3, scope: !995, file: !52, line: 152, type: !23)
!1002 = !DILocalVariable(name: "uc", scope: !995, file: !52, line: 154, type: !1003)
!1003 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1004 = !DILocalVariable(name: "p", scope: !995, file: !52, line: 155, type: !1005)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!1006 = !DILocalVariable(name: "shift", scope: !995, file: !52, line: 157, type: !23)
!1007 = !DILocalVariable(name: "r", scope: !995, file: !52, line: 158, type: !23)
!1008 = !DILocation(line: 0, scope: !995)
!1009 = !DILocation(line: 156, column: 6, scope: !995)
!1010 = !DILocation(line: 156, column: 62, scope: !995)
!1011 = !DILocation(line: 156, column: 57, scope: !995)
!1012 = !DILocation(line: 157, column: 15, scope: !995)
!1013 = !DILocation(line: 158, column: 12, scope: !995)
!1014 = !DILocation(line: 158, column: 15, scope: !995)
!1015 = !DILocation(line: 158, column: 25, scope: !995)
!1016 = !DILocation(line: 159, column: 13, scope: !995)
!1017 = !DILocation(line: 159, column: 18, scope: !995)
!1018 = !DILocation(line: 159, column: 23, scope: !995)
!1019 = !DILocation(line: 159, column: 6, scope: !995)
!1020 = !DILocation(line: 160, column: 3, scope: !995)
!1021 = distinct !DISubprogram(name: "set_quoting_flags", scope: !52, file: !52, line: 168, type: !1022, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1024)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!23, !960, !23}
!1024 = !{!1025, !1026, !1027}
!1025 = !DILocalVariable(name: "o", arg: 1, scope: !1021, file: !52, line: 168, type: !960)
!1026 = !DILocalVariable(name: "i", arg: 2, scope: !1021, file: !52, line: 168, type: !23)
!1027 = !DILocalVariable(name: "r", scope: !1021, file: !52, line: 170, type: !23)
!1028 = !DILocation(line: 0, scope: !1021)
!1029 = !DILocation(line: 171, column: 8, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1021, file: !52, line: 171, column: 7)
!1031 = !DILocation(line: 171, column: 7, scope: !1021)
!1032 = !DILocation(line: 173, column: 10, scope: !1021)
!1033 = !{!982, !741, i64 4}
!1034 = !DILocation(line: 174, column: 12, scope: !1021)
!1035 = !DILocation(line: 175, column: 3, scope: !1021)
!1036 = distinct !DISubprogram(name: "set_custom_quoting", scope: !52, file: !52, line: 179, type: !1037, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1039)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{null, !960, !6, !6}
!1039 = !{!1040, !1041, !1042}
!1040 = !DILocalVariable(name: "o", arg: 1, scope: !1036, file: !52, line: 179, type: !960)
!1041 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1036, file: !52, line: 180, type: !6)
!1042 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1036, file: !52, line: 180, type: !6)
!1043 = !DILocation(line: 0, scope: !1036)
!1044 = !DILocation(line: 182, column: 8, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1036, file: !52, line: 182, column: 7)
!1046 = !DILocation(line: 182, column: 7, scope: !1036)
!1047 = !DILocation(line: 184, column: 6, scope: !1036)
!1048 = !DILocation(line: 184, column: 12, scope: !1036)
!1049 = !DILocation(line: 185, column: 8, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1036, file: !52, line: 185, column: 7)
!1051 = !DILocation(line: 185, column: 19, scope: !1050)
!1052 = !DILocation(line: 186, column: 5, scope: !1050)
!1053 = !DILocation(line: 187, column: 6, scope: !1036)
!1054 = !DILocation(line: 187, column: 17, scope: !1036)
!1055 = !{!982, !596, i64 40}
!1056 = !DILocation(line: 188, column: 6, scope: !1036)
!1057 = !DILocation(line: 188, column: 18, scope: !1036)
!1058 = !{!982, !596, i64 48}
!1059 = !DILocation(line: 189, column: 1, scope: !1036)
!1060 = distinct !DISubprogram(name: "quotearg_buffer", scope: !52, file: !52, line: 784, type: !1061, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1063)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!91, !47, !91, !6, !91, !974}
!1063 = !{!1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071}
!1064 = !DILocalVariable(name: "buffer", arg: 1, scope: !1060, file: !52, line: 784, type: !47)
!1065 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1060, file: !52, line: 784, type: !91)
!1066 = !DILocalVariable(name: "arg", arg: 3, scope: !1060, file: !52, line: 785, type: !6)
!1067 = !DILocalVariable(name: "argsize", arg: 4, scope: !1060, file: !52, line: 785, type: !91)
!1068 = !DILocalVariable(name: "o", arg: 5, scope: !1060, file: !52, line: 786, type: !974)
!1069 = !DILocalVariable(name: "p", scope: !1060, file: !52, line: 788, type: !974)
!1070 = !DILocalVariable(name: "e", scope: !1060, file: !52, line: 789, type: !23)
!1071 = !DILocalVariable(name: "r", scope: !1060, file: !52, line: 790, type: !91)
!1072 = !DILocation(line: 0, scope: !1060)
!1073 = !DILocation(line: 788, column: 37, scope: !1060)
!1074 = !DILocation(line: 789, column: 11, scope: !1060)
!1075 = !DILocation(line: 791, column: 43, scope: !1060)
!1076 = !DILocation(line: 791, column: 53, scope: !1060)
!1077 = !DILocation(line: 791, column: 60, scope: !1060)
!1078 = !DILocation(line: 792, column: 43, scope: !1060)
!1079 = !DILocation(line: 792, column: 58, scope: !1060)
!1080 = !DILocation(line: 790, column: 14, scope: !1060)
!1081 = !DILocation(line: 793, column: 9, scope: !1060)
!1082 = !DILocation(line: 794, column: 3, scope: !1060)
!1083 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !52, file: !52, line: 256, type: !1084, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1088)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!91, !47, !91, !6, !91, !54, !23, !1086, !6, !6}
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!1088 = !{!1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1113, !1114, !1115, !1116, !1117, !1120, !1121, !1139, !1142, !1143, !1150, !1153, !1154, !1155, !1156, !1157, !1158}
!1089 = !DILocalVariable(name: "buffer", arg: 1, scope: !1083, file: !52, line: 256, type: !47)
!1090 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1083, file: !52, line: 256, type: !91)
!1091 = !DILocalVariable(name: "arg", arg: 3, scope: !1083, file: !52, line: 257, type: !6)
!1092 = !DILocalVariable(name: "argsize", arg: 4, scope: !1083, file: !52, line: 257, type: !91)
!1093 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1083, file: !52, line: 258, type: !54)
!1094 = !DILocalVariable(name: "flags", arg: 6, scope: !1083, file: !52, line: 258, type: !23)
!1095 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1083, file: !52, line: 259, type: !1086)
!1096 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1083, file: !52, line: 260, type: !6)
!1097 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1083, file: !52, line: 261, type: !6)
!1098 = !DILocalVariable(name: "i", scope: !1083, file: !52, line: 263, type: !91)
!1099 = !DILocalVariable(name: "len", scope: !1083, file: !52, line: 264, type: !91)
!1100 = !DILocalVariable(name: "orig_buffersize", scope: !1083, file: !52, line: 265, type: !91)
!1101 = !DILocalVariable(name: "quote_string", scope: !1083, file: !52, line: 266, type: !6)
!1102 = !DILocalVariable(name: "quote_string_len", scope: !1083, file: !52, line: 267, type: !91)
!1103 = !DILocalVariable(name: "backslash_escapes", scope: !1083, file: !52, line: 268, type: !16)
!1104 = !DILocalVariable(name: "unibyte_locale", scope: !1083, file: !52, line: 269, type: !16)
!1105 = !DILocalVariable(name: "elide_outer_quotes", scope: !1083, file: !52, line: 270, type: !16)
!1106 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1083, file: !52, line: 271, type: !16)
!1107 = !DILocalVariable(name: "encountered_single_quote", scope: !1083, file: !52, line: 272, type: !16)
!1108 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1083, file: !52, line: 273, type: !16)
!1109 = !DILocalVariable(name: "c", scope: !1110, file: !52, line: 402, type: !1003)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !52, line: 401, column: 5)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !52, line: 400, column: 3)
!1112 = distinct !DILexicalBlock(scope: !1083, file: !52, line: 400, column: 3)
!1113 = !DILocalVariable(name: "esc", scope: !1110, file: !52, line: 403, type: !1003)
!1114 = !DILocalVariable(name: "is_right_quote", scope: !1110, file: !52, line: 404, type: !16)
!1115 = !DILocalVariable(name: "escaping", scope: !1110, file: !52, line: 405, type: !16)
!1116 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1110, file: !52, line: 406, type: !16)
!1117 = !DILocalVariable(name: "m", scope: !1118, file: !52, line: 610, type: !91)
!1118 = distinct !DILexicalBlock(scope: !1119, file: !52, line: 608, column: 11)
!1119 = distinct !DILexicalBlock(scope: !1110, file: !52, line: 426, column: 9)
!1120 = !DILocalVariable(name: "printable", scope: !1118, file: !52, line: 612, type: !16)
!1121 = !DILocalVariable(name: "mbstate", scope: !1122, file: !52, line: 621, type: !1124)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !52, line: 620, column: 15)
!1123 = distinct !DILexicalBlock(scope: !1118, file: !52, line: 614, column: 17)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1125, line: 6, baseType: !1126)
!1125 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1127, line: 21, baseType: !1128)
!1127 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1127, line: 13, size: 64, elements: !1129)
!1129 = !{!1130, !1131}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1128, file: !1127, line: 15, baseType: !23, size: 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1128, file: !1127, line: 20, baseType: !1132, size: 32, offset: 32)
!1132 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1128, file: !1127, line: 16, size: 32, elements: !1133)
!1133 = !{!1134, !1135}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1132, file: !1127, line: 18, baseType: !56, size: 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1132, file: !1127, line: 19, baseType: !1136, size: 32)
!1136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !1137)
!1137 = !{!1138}
!1138 = !DISubrange(count: 4)
!1139 = !DILocalVariable(name: "w", scope: !1140, file: !52, line: 631, type: !1141)
!1140 = distinct !DILexicalBlock(scope: !1122, file: !52, line: 630, column: 19)
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !92, line: 74, baseType: !23)
!1142 = !DILocalVariable(name: "bytes", scope: !1140, file: !52, line: 632, type: !91)
!1143 = !DILocalVariable(name: "j", scope: !1144, file: !52, line: 657, type: !91)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !52, line: 656, column: 27)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !52, line: 654, column: 29)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !52, line: 649, column: 23)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !52, line: 641, column: 30)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !52, line: 636, column: 30)
!1149 = distinct !DILexicalBlock(scope: !1140, file: !52, line: 634, column: 25)
!1150 = !DILocalVariable(name: "ilim", scope: !1151, file: !52, line: 684, type: !91)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !52, line: 681, column: 15)
!1152 = distinct !DILexicalBlock(scope: !1118, file: !52, line: 680, column: 17)
!1153 = !DILabel(scope: !1083, name: "process_input", file: !52, line: 314)
!1154 = !DILabel(scope: !1119, name: "c_and_shell_escape", file: !52, line: 512)
!1155 = !DILabel(scope: !1119, name: "c_escape", file: !52, line: 517)
!1156 = !DILabel(scope: !1110, name: "store_escape", file: !52, line: 719)
!1157 = !DILabel(scope: !1110, name: "store_c", file: !52, line: 722)
!1158 = !DILabel(scope: !1083, name: "force_outer_quoting_style", file: !52, line: 763)
!1159 = !DILocation(line: 0, scope: !1083)
!1160 = !DILocation(line: 269, column: 25, scope: !1083)
!1161 = !DILocation(line: 269, column: 36, scope: !1083)
!1162 = !DILocation(line: 270, column: 8, scope: !1083)
!1163 = !DILocation(line: 273, column: 3, scope: !1083)
!1164 = !DILocation(line: 265, column: 10, scope: !1083)
!1165 = !DILocation(line: 266, column: 15, scope: !1083)
!1166 = !DILocation(line: 267, column: 10, scope: !1083)
!1167 = !DILocation(line: 268, column: 8, scope: !1083)
!1168 = !DILocation(line: 271, column: 8, scope: !1083)
!1169 = !DILocation(line: 272, column: 8, scope: !1083)
!1170 = !DILocation(line: 273, column: 8, scope: !1083)
!1171 = !DILocation(line: 314, column: 2, scope: !1083)
!1172 = !DILocation(line: 316, column: 3, scope: !1083)
!1173 = !DILocation(line: 323, column: 11, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1083, file: !52, line: 317, column: 5)
!1175 = !DILocation(line: 323, column: 12, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1174, file: !52, line: 323, column: 11)
!1177 = !DILocation(line: 324, column: 9, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !52, line: 324, column: 9)
!1179 = distinct !DILexicalBlock(scope: !1176, file: !52, line: 324, column: 9)
!1180 = !DILocation(line: 324, column: 9, scope: !1179)
!1181 = !{!597, !597, i64 0}
!1182 = !DILocation(line: 362, column: 26, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !52, line: 340, column: 11)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !52, line: 339, column: 13)
!1185 = distinct !DILexicalBlock(scope: !1174, file: !52, line: 338, column: 7)
!1186 = !DILocation(line: 363, column: 27, scope: !1183)
!1187 = !DILocation(line: 364, column: 11, scope: !1183)
!1188 = !DILocation(line: 365, column: 14, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1185, file: !52, line: 365, column: 13)
!1190 = !DILocation(line: 365, column: 13, scope: !1185)
!1191 = !DILocation(line: 366, column: 43, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !52, line: 366, column: 11)
!1193 = distinct !DILexicalBlock(scope: !1189, file: !52, line: 366, column: 11)
!1194 = !DILocation(line: 366, column: 11, scope: !1193)
!1195 = !DILocation(line: 367, column: 13, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !52, line: 367, column: 13)
!1197 = distinct !DILexicalBlock(scope: !1192, file: !52, line: 367, column: 13)
!1198 = !DILocation(line: 367, column: 13, scope: !1197)
!1199 = !DILocation(line: 366, column: 70, scope: !1192)
!1200 = distinct !{!1200, !1194, !1201, !637}
!1201 = !DILocation(line: 367, column: 13, scope: !1193)
!1202 = !DILocation(line: 264, column: 10, scope: !1083)
!1203 = !DILocation(line: 370, column: 28, scope: !1185)
!1204 = !DILocation(line: 372, column: 7, scope: !1174)
!1205 = !DILocation(line: 376, column: 7, scope: !1174)
!1206 = !DILocation(line: 379, column: 7, scope: !1174)
!1207 = !DILocation(line: 381, column: 12, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1174, file: !52, line: 381, column: 11)
!1209 = !DILocation(line: 381, column: 11, scope: !1174)
!1210 = !DILocation(line: 386, column: 12, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1174, file: !52, line: 386, column: 11)
!1212 = !DILocation(line: 386, column: 11, scope: !1174)
!1213 = !DILocation(line: 387, column: 9, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !52, line: 387, column: 9)
!1215 = distinct !DILexicalBlock(scope: !1211, file: !52, line: 387, column: 9)
!1216 = !DILocation(line: 387, column: 9, scope: !1215)
!1217 = !DILocation(line: 394, column: 7, scope: !1174)
!1218 = !DILocation(line: 397, column: 7, scope: !1174)
!1219 = !DILocation(line: 400, column: 8, scope: !1112)
!1220 = !DILocation(line: 0, scope: !1112)
!1221 = !DILocation(line: 400, column: 27, scope: !1111)
!1222 = !DILocation(line: 400, column: 19, scope: !1111)
!1223 = !DILocation(line: 400, column: 41, scope: !1111)
!1224 = !DILocation(line: 400, column: 48, scope: !1111)
!1225 = !DILocation(line: 400, column: 3, scope: !1112)
!1226 = !DILocation(line: 400, column: 60, scope: !1111)
!1227 = !DILocation(line: 0, scope: !1110)
!1228 = !DILocation(line: 409, column: 11, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1110, file: !52, line: 408, column: 11)
!1230 = !DILocation(line: 411, column: 17, scope: !1229)
!1231 = !DILocation(line: 412, column: 39, scope: !1229)
!1232 = !DILocation(line: 416, column: 32, scope: !1229)
!1233 = !DILocation(line: 412, column: 19, scope: !1229)
!1234 = !DILocation(line: 412, column: 15, scope: !1229)
!1235 = !DILocation(line: 417, column: 11, scope: !1229)
!1236 = !DILocation(line: 417, column: 26, scope: !1229)
!1237 = !DILocation(line: 417, column: 14, scope: !1229)
!1238 = !DILocation(line: 417, column: 63, scope: !1229)
!1239 = !DILocation(line: 408, column: 11, scope: !1110)
!1240 = !DILocation(line: 424, column: 11, scope: !1110)
!1241 = !DILocation(line: 425, column: 7, scope: !1110)
!1242 = !DILocation(line: 428, column: 15, scope: !1119)
!1243 = !DILocation(line: 430, column: 15, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !52, line: 430, column: 15)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !52, line: 429, column: 13)
!1246 = distinct !DILexicalBlock(scope: !1119, file: !52, line: 428, column: 15)
!1247 = !DILocation(line: 430, column: 15, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1244, file: !52, line: 430, column: 15)
!1249 = !DILocation(line: 430, column: 15, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !52, line: 430, column: 15)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !52, line: 430, column: 15)
!1252 = distinct !DILexicalBlock(scope: !1248, file: !52, line: 430, column: 15)
!1253 = !DILocation(line: 430, column: 15, scope: !1251)
!1254 = !DILocation(line: 430, column: 15, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !52, line: 430, column: 15)
!1256 = distinct !DILexicalBlock(scope: !1252, file: !52, line: 430, column: 15)
!1257 = !DILocation(line: 430, column: 15, scope: !1256)
!1258 = !DILocation(line: 430, column: 15, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !52, line: 430, column: 15)
!1260 = distinct !DILexicalBlock(scope: !1252, file: !52, line: 430, column: 15)
!1261 = !DILocation(line: 430, column: 15, scope: !1260)
!1262 = !DILocation(line: 430, column: 15, scope: !1252)
!1263 = !DILocation(line: 430, column: 15, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !52, line: 430, column: 15)
!1265 = distinct !DILexicalBlock(scope: !1244, file: !52, line: 430, column: 15)
!1266 = !DILocation(line: 430, column: 15, scope: !1265)
!1267 = !DILocation(line: 438, column: 19, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1245, file: !52, line: 437, column: 19)
!1269 = !DILocation(line: 438, column: 48, scope: !1268)
!1270 = !DILocation(line: 438, column: 59, scope: !1268)
!1271 = !DILocation(line: 440, column: 19, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !52, line: 440, column: 19)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !52, line: 440, column: 19)
!1274 = distinct !DILexicalBlock(scope: !1268, file: !52, line: 439, column: 17)
!1275 = !DILocation(line: 440, column: 19, scope: !1273)
!1276 = !DILocation(line: 441, column: 19, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !52, line: 441, column: 19)
!1278 = distinct !DILexicalBlock(scope: !1274, file: !52, line: 441, column: 19)
!1279 = !DILocation(line: 441, column: 19, scope: !1278)
!1280 = !DILocation(line: 442, column: 17, scope: !1274)
!1281 = !DILocation(line: 449, column: 20, scope: !1246)
!1282 = !DILocation(line: 454, column: 11, scope: !1119)
!1283 = !DILocation(line: 457, column: 19, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1119, file: !52, line: 455, column: 13)
!1285 = !DILocation(line: 463, column: 19, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1284, file: !52, line: 462, column: 19)
!1287 = !DILocation(line: 463, column: 47, scope: !1286)
!1288 = !DILocation(line: 463, column: 41, scope: !1286)
!1289 = !DILocation(line: 463, column: 52, scope: !1286)
!1290 = !DILocation(line: 462, column: 19, scope: !1284)
!1291 = !DILocation(line: 464, column: 25, scope: !1286)
!1292 = !DILocation(line: 464, column: 17, scope: !1286)
!1293 = !DILocation(line: 471, column: 25, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1286, file: !52, line: 465, column: 19)
!1295 = !DILocation(line: 475, column: 21, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !52, line: 475, column: 21)
!1297 = distinct !DILexicalBlock(scope: !1294, file: !52, line: 475, column: 21)
!1298 = !DILocation(line: 475, column: 21, scope: !1297)
!1299 = !DILocation(line: 476, column: 21, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !52, line: 476, column: 21)
!1301 = distinct !DILexicalBlock(scope: !1294, file: !52, line: 476, column: 21)
!1302 = !DILocation(line: 476, column: 21, scope: !1301)
!1303 = !DILocation(line: 477, column: 21, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !52, line: 477, column: 21)
!1305 = distinct !DILexicalBlock(scope: !1294, file: !52, line: 477, column: 21)
!1306 = !DILocation(line: 477, column: 21, scope: !1305)
!1307 = !DILocation(line: 478, column: 21, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !52, line: 478, column: 21)
!1309 = distinct !DILexicalBlock(scope: !1294, file: !52, line: 478, column: 21)
!1310 = !DILocation(line: 478, column: 21, scope: !1309)
!1311 = !DILocation(line: 479, column: 21, scope: !1294)
!1312 = !DILocation(line: 492, column: 31, scope: !1119)
!1313 = !DILocation(line: 493, column: 31, scope: !1119)
!1314 = !DILocation(line: 495, column: 31, scope: !1119)
!1315 = !DILocation(line: 496, column: 31, scope: !1119)
!1316 = !DILocation(line: 497, column: 31, scope: !1119)
!1317 = !DILocation(line: 500, column: 15, scope: !1119)
!1318 = !DILocation(line: 502, column: 19, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !52, line: 501, column: 13)
!1320 = distinct !DILexicalBlock(scope: !1119, file: !52, line: 500, column: 15)
!1321 = !DILocation(line: 509, column: 33, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1119, file: !52, line: 509, column: 15)
!1323 = !DILocation(line: 0, scope: !1119)
!1324 = !DILocation(line: 512, column: 9, scope: !1119)
!1325 = !DILocation(line: 514, column: 15, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1119, file: !52, line: 513, column: 15)
!1327 = !DILocation(line: 517, column: 9, scope: !1119)
!1328 = !DILocation(line: 518, column: 15, scope: !1119)
!1329 = !DILocation(line: 526, column: 15, scope: !1119)
!1330 = !DILocation(line: 526, column: 40, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1119, file: !52, line: 526, column: 15)
!1332 = !DILocation(line: 526, column: 47, scope: !1331)
!1333 = !DILocation(line: 526, column: 18, scope: !1331)
!1334 = !DILocation(line: 530, column: 17, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1119, file: !52, line: 530, column: 15)
!1336 = !DILocation(line: 530, column: 15, scope: !1119)
!1337 = !DILocation(line: 535, column: 11, scope: !1119)
!1338 = !DILocation(line: 549, column: 15, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1119, file: !52, line: 548, column: 15)
!1340 = !DILocation(line: 556, column: 15, scope: !1119)
!1341 = !DILocation(line: 558, column: 19, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !52, line: 557, column: 13)
!1343 = distinct !DILexicalBlock(scope: !1119, file: !52, line: 556, column: 15)
!1344 = !DILocation(line: 561, column: 19, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1342, file: !52, line: 561, column: 19)
!1346 = !DILocation(line: 561, column: 30, scope: !1345)
!1347 = !DILocation(line: 570, column: 15, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !52, line: 570, column: 15)
!1349 = distinct !DILexicalBlock(scope: !1342, file: !52, line: 570, column: 15)
!1350 = !DILocation(line: 570, column: 15, scope: !1349)
!1351 = !DILocation(line: 571, column: 15, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !52, line: 571, column: 15)
!1353 = distinct !DILexicalBlock(scope: !1342, file: !52, line: 571, column: 15)
!1354 = !DILocation(line: 571, column: 15, scope: !1353)
!1355 = !DILocation(line: 572, column: 15, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !52, line: 572, column: 15)
!1357 = distinct !DILexicalBlock(scope: !1342, file: !52, line: 572, column: 15)
!1358 = !DILocation(line: 572, column: 15, scope: !1357)
!1359 = !DILocation(line: 574, column: 13, scope: !1342)
!1360 = !DILocation(line: 614, column: 17, scope: !1118)
!1361 = !DILocation(line: 0, scope: !1118)
!1362 = !DILocation(line: 617, column: 29, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1123, file: !52, line: 615, column: 15)
!1364 = !{!1365, !1365, i64 0}
!1365 = !{!"short", !597, i64 0}
!1366 = !DILocation(line: 617, column: 27, scope: !1363)
!1367 = !DILocation(line: 678, column: 40, scope: !1118)
!1368 = !DILocation(line: 680, column: 23, scope: !1152)
!1369 = !DILocation(line: 621, column: 17, scope: !1122)
!1370 = !DILocation(line: 621, column: 27, scope: !1122)
!1371 = !DILocalVariable(name: "__dest", arg: 1, scope: !1372, file: !1373, line: 57, type: !46)
!1372 = distinct !DISubprogram(name: "memset", scope: !1373, file: !1373, line: 57, type: !1374, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1376)
!1373 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!46, !46, !23, !91}
!1376 = !{!1371, !1377, !1378}
!1377 = !DILocalVariable(name: "__ch", arg: 2, scope: !1372, file: !1373, line: 57, type: !23)
!1378 = !DILocalVariable(name: "__len", arg: 3, scope: !1372, file: !1373, line: 57, type: !91)
!1379 = !DILocation(line: 0, scope: !1372, inlinedAt: !1380)
!1380 = distinct !DILocation(line: 622, column: 17, scope: !1122)
!1381 = !DILocation(line: 59, column: 10, scope: !1372, inlinedAt: !1380)
!1382 = !DILocation(line: 626, column: 29, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1122, file: !52, line: 626, column: 21)
!1384 = !DILocation(line: 626, column: 21, scope: !1122)
!1385 = !DILocation(line: 627, column: 29, scope: !1383)
!1386 = !DILocation(line: 627, column: 19, scope: !1383)
!1387 = !DILocation(line: 629, column: 17, scope: !1122)
!1388 = !DILocation(line: 624, column: 19, scope: !1122)
!1389 = !DILocation(line: 625, column: 27, scope: !1122)
!1390 = !DILocation(line: 631, column: 21, scope: !1140)
!1391 = !DILocation(line: 632, column: 56, scope: !1140)
!1392 = !DILocation(line: 632, column: 50, scope: !1140)
!1393 = !DILocation(line: 633, column: 53, scope: !1140)
!1394 = !DILocation(line: 0, scope: !1140)
!1395 = !DILocation(line: 632, column: 36, scope: !1140)
!1396 = !DILocation(line: 634, column: 25, scope: !1140)
!1397 = !DILocation(line: 644, column: 38, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1147, file: !52, line: 642, column: 23)
!1399 = !DILocation(line: 644, column: 48, scope: !1398)
!1400 = !DILocation(line: 644, column: 25, scope: !1398)
!1401 = !DILocation(line: 644, column: 51, scope: !1398)
!1402 = !DILocation(line: 645, column: 28, scope: !1398)
!1403 = !DILocation(line: 644, column: 34, scope: !1398)
!1404 = distinct !{!1404, !1400, !1402, !637}
!1405 = !DILocation(line: 655, column: 29, scope: !1145)
!1406 = !DILocation(line: 0, scope: !1144)
!1407 = !DILocation(line: 659, column: 49, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !52, line: 658, column: 29)
!1409 = distinct !DILexicalBlock(scope: !1144, file: !52, line: 658, column: 29)
!1410 = !DILocation(line: 659, column: 39, scope: !1408)
!1411 = !DILocation(line: 659, column: 31, scope: !1408)
!1412 = !DILocation(line: 658, column: 53, scope: !1408)
!1413 = !DILocation(line: 658, column: 43, scope: !1408)
!1414 = !DILocation(line: 658, column: 29, scope: !1409)
!1415 = distinct !{!1415, !1414, !1416, !637}
!1416 = !DILocation(line: 667, column: 33, scope: !1409)
!1417 = !DILocation(line: 674, column: 19, scope: !1122)
!1418 = !DILocation(line: 670, column: 41, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1146, file: !52, line: 670, column: 29)
!1420 = !DILocation(line: 670, column: 31, scope: !1419)
!1421 = !DILocation(line: 670, column: 29, scope: !1146)
!1422 = !DILocation(line: 672, column: 27, scope: !1146)
!1423 = !DILocation(line: 675, column: 26, scope: !1122)
!1424 = !DILocation(line: 675, column: 24, scope: !1122)
!1425 = !DILocation(line: 674, column: 19, scope: !1140)
!1426 = distinct !{!1426, !1387, !1427, !637}
!1427 = !DILocation(line: 675, column: 44, scope: !1122)
!1428 = !DILocation(line: 676, column: 15, scope: !1123)
!1429 = !DILocation(line: 680, column: 19, scope: !1152)
!1430 = !DILocation(line: 680, column: 45, scope: !1152)
!1431 = !DILocation(line: 684, column: 33, scope: !1151)
!1432 = !DILocation(line: 0, scope: !1151)
!1433 = !DILocation(line: 686, column: 17, scope: !1151)
!1434 = !DILocation(line: 405, column: 12, scope: !1110)
!1435 = !DILocation(line: 688, column: 43, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !52, line: 688, column: 25)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !52, line: 687, column: 19)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !52, line: 686, column: 17)
!1439 = distinct !DILexicalBlock(scope: !1151, file: !52, line: 686, column: 17)
!1440 = !DILocation(line: 690, column: 25, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !52, line: 690, column: 25)
!1442 = distinct !DILexicalBlock(scope: !1436, file: !52, line: 689, column: 23)
!1443 = !DILocation(line: 690, column: 25, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1441, file: !52, line: 690, column: 25)
!1445 = !DILocation(line: 690, column: 25, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !52, line: 690, column: 25)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !52, line: 690, column: 25)
!1448 = distinct !DILexicalBlock(scope: !1444, file: !52, line: 690, column: 25)
!1449 = !DILocation(line: 690, column: 25, scope: !1447)
!1450 = !DILocation(line: 690, column: 25, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !52, line: 690, column: 25)
!1452 = distinct !DILexicalBlock(scope: !1448, file: !52, line: 690, column: 25)
!1453 = !DILocation(line: 690, column: 25, scope: !1452)
!1454 = !DILocation(line: 690, column: 25, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !52, line: 690, column: 25)
!1456 = distinct !DILexicalBlock(scope: !1448, file: !52, line: 690, column: 25)
!1457 = !DILocation(line: 690, column: 25, scope: !1456)
!1458 = !DILocation(line: 690, column: 25, scope: !1448)
!1459 = !DILocation(line: 690, column: 25, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !52, line: 690, column: 25)
!1461 = distinct !DILexicalBlock(scope: !1441, file: !52, line: 690, column: 25)
!1462 = !DILocation(line: 690, column: 25, scope: !1461)
!1463 = !DILocation(line: 691, column: 25, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !52, line: 691, column: 25)
!1465 = distinct !DILexicalBlock(scope: !1442, file: !52, line: 691, column: 25)
!1466 = !DILocation(line: 691, column: 25, scope: !1465)
!1467 = !DILocation(line: 692, column: 25, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !52, line: 692, column: 25)
!1469 = distinct !DILexicalBlock(scope: !1442, file: !52, line: 692, column: 25)
!1470 = !DILocation(line: 692, column: 25, scope: !1469)
!1471 = !DILocation(line: 693, column: 38, scope: !1442)
!1472 = !DILocation(line: 693, column: 33, scope: !1442)
!1473 = !DILocation(line: 694, column: 23, scope: !1442)
!1474 = !DILocation(line: 695, column: 30, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1436, file: !52, line: 695, column: 30)
!1476 = !DILocation(line: 695, column: 30, scope: !1436)
!1477 = !DILocation(line: 697, column: 25, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !52, line: 697, column: 25)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !52, line: 697, column: 25)
!1480 = distinct !DILexicalBlock(scope: !1475, file: !52, line: 696, column: 23)
!1481 = !DILocation(line: 697, column: 25, scope: !1479)
!1482 = !DILocation(line: 699, column: 23, scope: !1480)
!1483 = !DILocation(line: 700, column: 35, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1437, file: !52, line: 700, column: 25)
!1485 = !DILocation(line: 700, column: 30, scope: !1484)
!1486 = !DILocation(line: 700, column: 25, scope: !1437)
!1487 = !DILocation(line: 702, column: 21, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !52, line: 702, column: 21)
!1489 = distinct !DILexicalBlock(scope: !1437, file: !52, line: 702, column: 21)
!1490 = !DILocation(line: 702, column: 21, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !52, line: 702, column: 21)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !52, line: 702, column: 21)
!1493 = distinct !DILexicalBlock(scope: !1488, file: !52, line: 702, column: 21)
!1494 = !DILocation(line: 702, column: 21, scope: !1492)
!1495 = !DILocation(line: 702, column: 21, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !52, line: 702, column: 21)
!1497 = distinct !DILexicalBlock(scope: !1493, file: !52, line: 702, column: 21)
!1498 = !DILocation(line: 702, column: 21, scope: !1497)
!1499 = !DILocation(line: 702, column: 21, scope: !1493)
!1500 = !DILocation(line: 0, scope: !1437)
!1501 = !DILocation(line: 703, column: 21, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !52, line: 703, column: 21)
!1503 = distinct !DILexicalBlock(scope: !1437, file: !52, line: 703, column: 21)
!1504 = !DILocation(line: 703, column: 21, scope: !1503)
!1505 = !DILocation(line: 704, column: 25, scope: !1437)
!1506 = !DILocation(line: 686, column: 17, scope: !1438)
!1507 = distinct !{!1507, !1508, !1509}
!1508 = !DILocation(line: 686, column: 17, scope: !1439)
!1509 = !DILocation(line: 705, column: 19, scope: !1439)
!1510 = !DILocation(line: 416, column: 30, scope: !1229)
!1511 = !DILocation(line: 712, column: 34, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1110, file: !52, line: 712, column: 11)
!1513 = !DILocation(line: 715, column: 35, scope: !1512)
!1514 = !DILocation(line: 715, column: 17, scope: !1512)
!1515 = !DILocation(line: 715, column: 47, scope: !1512)
!1516 = !DILocation(line: 715, column: 65, scope: !1512)
!1517 = !DILocation(line: 716, column: 11, scope: !1512)
!1518 = !DILocation(line: 712, column: 11, scope: !1110)
!1519 = !DILocation(line: 400, column: 10, scope: !1112)
!1520 = !DILocation(line: 719, column: 5, scope: !1110)
!1521 = !DILocation(line: 720, column: 7, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1110, file: !52, line: 720, column: 7)
!1523 = !DILocation(line: 720, column: 7, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1522, file: !52, line: 720, column: 7)
!1525 = !DILocation(line: 720, column: 7, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !52, line: 720, column: 7)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !52, line: 720, column: 7)
!1528 = distinct !DILexicalBlock(scope: !1524, file: !52, line: 720, column: 7)
!1529 = !DILocation(line: 720, column: 7, scope: !1527)
!1530 = !DILocation(line: 720, column: 7, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !52, line: 720, column: 7)
!1532 = distinct !DILexicalBlock(scope: !1528, file: !52, line: 720, column: 7)
!1533 = !DILocation(line: 720, column: 7, scope: !1532)
!1534 = !DILocation(line: 720, column: 7, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !52, line: 720, column: 7)
!1536 = distinct !DILexicalBlock(scope: !1528, file: !52, line: 720, column: 7)
!1537 = !DILocation(line: 720, column: 7, scope: !1536)
!1538 = !DILocation(line: 720, column: 7, scope: !1528)
!1539 = !DILocation(line: 720, column: 7, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !52, line: 720, column: 7)
!1541 = distinct !DILexicalBlock(scope: !1522, file: !52, line: 720, column: 7)
!1542 = !DILocation(line: 720, column: 7, scope: !1541)
!1543 = !DILocation(line: 722, column: 5, scope: !1110)
!1544 = !DILocation(line: 723, column: 7, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !52, line: 723, column: 7)
!1546 = distinct !DILexicalBlock(scope: !1110, file: !52, line: 723, column: 7)
!1547 = !DILocation(line: 424, column: 9, scope: !1110)
!1548 = !DILocation(line: 723, column: 7, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !52, line: 723, column: 7)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !52, line: 723, column: 7)
!1551 = distinct !DILexicalBlock(scope: !1545, file: !52, line: 723, column: 7)
!1552 = !DILocation(line: 723, column: 7, scope: !1550)
!1553 = !DILocation(line: 723, column: 7, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !52, line: 723, column: 7)
!1555 = distinct !DILexicalBlock(scope: !1551, file: !52, line: 723, column: 7)
!1556 = !DILocation(line: 723, column: 7, scope: !1555)
!1557 = !DILocation(line: 723, column: 7, scope: !1551)
!1558 = !DILocation(line: 724, column: 7, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !52, line: 724, column: 7)
!1560 = distinct !DILexicalBlock(scope: !1110, file: !52, line: 724, column: 7)
!1561 = !DILocation(line: 724, column: 7, scope: !1560)
!1562 = !DILocation(line: 726, column: 13, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1110, file: !52, line: 726, column: 11)
!1564 = !DILocation(line: 726, column: 11, scope: !1110)
!1565 = !DILocation(line: 728, column: 5, scope: !1111)
!1566 = !DILocation(line: 400, column: 75, scope: !1111)
!1567 = !DILocation(line: 400, column: 3, scope: !1111)
!1568 = distinct !{!1568, !1225, !1569, !637}
!1569 = !DILocation(line: 728, column: 5, scope: !1112)
!1570 = !DILocation(line: 730, column: 11, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1083, file: !52, line: 730, column: 7)
!1572 = !DILocation(line: 730, column: 16, scope: !1571)
!1573 = !DILocation(line: 738, column: 51, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1083, file: !52, line: 738, column: 7)
!1575 = !DILocation(line: 741, column: 11, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !52, line: 741, column: 11)
!1577 = distinct !DILexicalBlock(scope: !1574, file: !52, line: 740, column: 5)
!1578 = !DILocation(line: 741, column: 11, scope: !1577)
!1579 = !DILocation(line: 742, column: 16, scope: !1576)
!1580 = !DILocation(line: 742, column: 9, scope: !1576)
!1581 = !DILocation(line: 746, column: 18, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1576, file: !52, line: 746, column: 16)
!1583 = !DILocation(line: 746, column: 29, scope: !1582)
!1584 = !DILocation(line: 755, column: 7, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1083, file: !52, line: 755, column: 7)
!1586 = !DILocation(line: 755, column: 20, scope: !1585)
!1587 = !DILocation(line: 756, column: 12, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !52, line: 756, column: 5)
!1589 = distinct !DILexicalBlock(scope: !1585, file: !52, line: 756, column: 5)
!1590 = !DILocation(line: 756, column: 5, scope: !1589)
!1591 = !DILocation(line: 757, column: 7, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !52, line: 757, column: 7)
!1593 = distinct !DILexicalBlock(scope: !1588, file: !52, line: 757, column: 7)
!1594 = !DILocation(line: 757, column: 7, scope: !1593)
!1595 = !DILocation(line: 756, column: 39, scope: !1588)
!1596 = distinct !{!1596, !1590, !1597, !637}
!1597 = !DILocation(line: 757, column: 7, scope: !1589)
!1598 = !DILocation(line: 759, column: 11, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1083, file: !52, line: 759, column: 7)
!1600 = !DILocation(line: 759, column: 7, scope: !1083)
!1601 = !DILocation(line: 760, column: 5, scope: !1599)
!1602 = !DILocation(line: 760, column: 17, scope: !1599)
!1603 = !DILocation(line: 763, column: 2, scope: !1083)
!1604 = !DILocation(line: 766, column: 51, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1083, file: !52, line: 766, column: 7)
!1606 = !DILocation(line: 766, column: 21, scope: !1605)
!1607 = !DILocation(line: 770, column: 42, scope: !1083)
!1608 = !DILocation(line: 768, column: 10, scope: !1083)
!1609 = !DILocation(line: 768, column: 3, scope: !1083)
!1610 = !DILocation(line: 772, column: 1, scope: !1083)
!1611 = distinct !DISubprogram(name: "gettext_quote", scope: !52, file: !52, line: 207, type: !1612, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1614)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!6, !6, !54}
!1614 = !{!1615, !1616, !1617, !1618}
!1615 = !DILocalVariable(name: "msgid", arg: 1, scope: !1611, file: !52, line: 207, type: !6)
!1616 = !DILocalVariable(name: "s", arg: 2, scope: !1611, file: !52, line: 207, type: !54)
!1617 = !DILocalVariable(name: "translation", scope: !1611, file: !52, line: 209, type: !6)
!1618 = !DILocalVariable(name: "locale_code", scope: !1611, file: !52, line: 210, type: !6)
!1619 = !DILocation(line: 0, scope: !1611)
!1620 = !DILocation(line: 209, column: 29, scope: !1611)
!1621 = !DILocation(line: 212, column: 19, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1611, file: !52, line: 212, column: 7)
!1623 = !DILocation(line: 212, column: 7, scope: !1611)
!1624 = !DILocation(line: 233, column: 17, scope: !1611)
!1625 = !DILocalVariable(name: "s1", arg: 1, scope: !1626, file: !1627, line: 160, type: !6)
!1626 = distinct !DISubprogram(name: "strcaseeq0", scope: !1627, file: !1627, line: 160, type: !1628, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1630)
!1627 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1630 = !{!1625, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640}
!1631 = !DILocalVariable(name: "s2", arg: 2, scope: !1626, file: !1627, line: 160, type: !6)
!1632 = !DILocalVariable(name: "s20", arg: 3, scope: !1626, file: !1627, line: 160, type: !8)
!1633 = !DILocalVariable(name: "s21", arg: 4, scope: !1626, file: !1627, line: 160, type: !8)
!1634 = !DILocalVariable(name: "s22", arg: 5, scope: !1626, file: !1627, line: 160, type: !8)
!1635 = !DILocalVariable(name: "s23", arg: 6, scope: !1626, file: !1627, line: 160, type: !8)
!1636 = !DILocalVariable(name: "s24", arg: 7, scope: !1626, file: !1627, line: 160, type: !8)
!1637 = !DILocalVariable(name: "s25", arg: 8, scope: !1626, file: !1627, line: 160, type: !8)
!1638 = !DILocalVariable(name: "s26", arg: 9, scope: !1626, file: !1627, line: 160, type: !8)
!1639 = !DILocalVariable(name: "s27", arg: 10, scope: !1626, file: !1627, line: 160, type: !8)
!1640 = !DILocalVariable(name: "s28", arg: 11, scope: !1626, file: !1627, line: 160, type: !8)
!1641 = !DILocation(line: 0, scope: !1626, inlinedAt: !1642)
!1642 = distinct !DILocation(line: 234, column: 7, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1611, file: !52, line: 234, column: 7)
!1644 = !DILocation(line: 162, column: 7, scope: !1645, inlinedAt: !1642)
!1645 = distinct !DILexicalBlock(scope: !1626, file: !1627, line: 162, column: 7)
!1646 = !DILocalVariable(name: "s1", arg: 1, scope: !1647, file: !1627, line: 146, type: !6)
!1647 = distinct !DISubprogram(name: "strcaseeq1", scope: !1627, file: !1627, line: 146, type: !1648, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1650)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1650 = !{!1646, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659}
!1651 = !DILocalVariable(name: "s2", arg: 2, scope: !1647, file: !1627, line: 146, type: !6)
!1652 = !DILocalVariable(name: "s21", arg: 3, scope: !1647, file: !1627, line: 146, type: !8)
!1653 = !DILocalVariable(name: "s22", arg: 4, scope: !1647, file: !1627, line: 146, type: !8)
!1654 = !DILocalVariable(name: "s23", arg: 5, scope: !1647, file: !1627, line: 146, type: !8)
!1655 = !DILocalVariable(name: "s24", arg: 6, scope: !1647, file: !1627, line: 146, type: !8)
!1656 = !DILocalVariable(name: "s25", arg: 7, scope: !1647, file: !1627, line: 146, type: !8)
!1657 = !DILocalVariable(name: "s26", arg: 8, scope: !1647, file: !1627, line: 146, type: !8)
!1658 = !DILocalVariable(name: "s27", arg: 9, scope: !1647, file: !1627, line: 146, type: !8)
!1659 = !DILocalVariable(name: "s28", arg: 10, scope: !1647, file: !1627, line: 146, type: !8)
!1660 = !DILocation(line: 0, scope: !1647, inlinedAt: !1661)
!1661 = distinct !DILocation(line: 167, column: 16, scope: !1662, inlinedAt: !1642)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !1627, line: 164, column: 11)
!1663 = distinct !DILexicalBlock(scope: !1645, file: !1627, line: 163, column: 5)
!1664 = !DILocation(line: 148, column: 7, scope: !1665, inlinedAt: !1661)
!1665 = distinct !DILexicalBlock(scope: !1647, file: !1627, line: 148, column: 7)
!1666 = !DILocalVariable(name: "s1", arg: 1, scope: !1667, file: !1627, line: 132, type: !6)
!1667 = distinct !DISubprogram(name: "strcaseeq2", scope: !1627, file: !1627, line: 132, type: !1668, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1670)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1670 = !{!1666, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678}
!1671 = !DILocalVariable(name: "s2", arg: 2, scope: !1667, file: !1627, line: 132, type: !6)
!1672 = !DILocalVariable(name: "s22", arg: 3, scope: !1667, file: !1627, line: 132, type: !8)
!1673 = !DILocalVariable(name: "s23", arg: 4, scope: !1667, file: !1627, line: 132, type: !8)
!1674 = !DILocalVariable(name: "s24", arg: 5, scope: !1667, file: !1627, line: 132, type: !8)
!1675 = !DILocalVariable(name: "s25", arg: 6, scope: !1667, file: !1627, line: 132, type: !8)
!1676 = !DILocalVariable(name: "s26", arg: 7, scope: !1667, file: !1627, line: 132, type: !8)
!1677 = !DILocalVariable(name: "s27", arg: 8, scope: !1667, file: !1627, line: 132, type: !8)
!1678 = !DILocalVariable(name: "s28", arg: 9, scope: !1667, file: !1627, line: 132, type: !8)
!1679 = !DILocation(line: 0, scope: !1667, inlinedAt: !1680)
!1680 = distinct !DILocation(line: 153, column: 16, scope: !1681, inlinedAt: !1661)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !1627, line: 150, column: 11)
!1682 = distinct !DILexicalBlock(scope: !1665, file: !1627, line: 149, column: 5)
!1683 = !DILocation(line: 134, column: 7, scope: !1684, inlinedAt: !1680)
!1684 = distinct !DILexicalBlock(scope: !1667, file: !1627, line: 134, column: 7)
!1685 = !DILocalVariable(name: "s1", arg: 1, scope: !1686, file: !1627, line: 118, type: !6)
!1686 = distinct !DISubprogram(name: "strcaseeq3", scope: !1627, file: !1627, line: 118, type: !1687, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1689)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8}
!1689 = !{!1685, !1690, !1691, !1692, !1693, !1694, !1695, !1696}
!1690 = !DILocalVariable(name: "s2", arg: 2, scope: !1686, file: !1627, line: 118, type: !6)
!1691 = !DILocalVariable(name: "s23", arg: 3, scope: !1686, file: !1627, line: 118, type: !8)
!1692 = !DILocalVariable(name: "s24", arg: 4, scope: !1686, file: !1627, line: 118, type: !8)
!1693 = !DILocalVariable(name: "s25", arg: 5, scope: !1686, file: !1627, line: 118, type: !8)
!1694 = !DILocalVariable(name: "s26", arg: 6, scope: !1686, file: !1627, line: 118, type: !8)
!1695 = !DILocalVariable(name: "s27", arg: 7, scope: !1686, file: !1627, line: 118, type: !8)
!1696 = !DILocalVariable(name: "s28", arg: 8, scope: !1686, file: !1627, line: 118, type: !8)
!1697 = !DILocation(line: 0, scope: !1686, inlinedAt: !1698)
!1698 = distinct !DILocation(line: 139, column: 16, scope: !1699, inlinedAt: !1680)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !1627, line: 136, column: 11)
!1700 = distinct !DILexicalBlock(scope: !1684, file: !1627, line: 135, column: 5)
!1701 = !DILocation(line: 120, column: 7, scope: !1702, inlinedAt: !1698)
!1702 = distinct !DILexicalBlock(scope: !1686, file: !1627, line: 120, column: 7)
!1703 = !DILocation(line: 120, column: 7, scope: !1686, inlinedAt: !1698)
!1704 = !DILocalVariable(name: "s1", arg: 1, scope: !1705, file: !1627, line: 104, type: !6)
!1705 = distinct !DISubprogram(name: "strcaseeq4", scope: !1627, file: !1627, line: 104, type: !1706, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1708)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!23, !6, !6, !8, !8, !8, !8, !8}
!1708 = !{!1704, !1709, !1710, !1711, !1712, !1713, !1714}
!1709 = !DILocalVariable(name: "s2", arg: 2, scope: !1705, file: !1627, line: 104, type: !6)
!1710 = !DILocalVariable(name: "s24", arg: 3, scope: !1705, file: !1627, line: 104, type: !8)
!1711 = !DILocalVariable(name: "s25", arg: 4, scope: !1705, file: !1627, line: 104, type: !8)
!1712 = !DILocalVariable(name: "s26", arg: 5, scope: !1705, file: !1627, line: 104, type: !8)
!1713 = !DILocalVariable(name: "s27", arg: 6, scope: !1705, file: !1627, line: 104, type: !8)
!1714 = !DILocalVariable(name: "s28", arg: 7, scope: !1705, file: !1627, line: 104, type: !8)
!1715 = !DILocation(line: 0, scope: !1705, inlinedAt: !1716)
!1716 = distinct !DILocation(line: 125, column: 16, scope: !1717, inlinedAt: !1698)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !1627, line: 122, column: 11)
!1718 = distinct !DILexicalBlock(scope: !1702, file: !1627, line: 121, column: 5)
!1719 = !DILocation(line: 106, column: 7, scope: !1720, inlinedAt: !1716)
!1720 = distinct !DILexicalBlock(scope: !1705, file: !1627, line: 106, column: 7)
!1721 = !DILocation(line: 106, column: 7, scope: !1705, inlinedAt: !1716)
!1722 = !DILocalVariable(name: "s1", arg: 1, scope: !1723, file: !1627, line: 90, type: !6)
!1723 = distinct !DISubprogram(name: "strcaseeq5", scope: !1627, file: !1627, line: 90, type: !1724, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1726)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!23, !6, !6, !8, !8, !8, !8}
!1726 = !{!1722, !1727, !1728, !1729, !1730, !1731}
!1727 = !DILocalVariable(name: "s2", arg: 2, scope: !1723, file: !1627, line: 90, type: !6)
!1728 = !DILocalVariable(name: "s25", arg: 3, scope: !1723, file: !1627, line: 90, type: !8)
!1729 = !DILocalVariable(name: "s26", arg: 4, scope: !1723, file: !1627, line: 90, type: !8)
!1730 = !DILocalVariable(name: "s27", arg: 5, scope: !1723, file: !1627, line: 90, type: !8)
!1731 = !DILocalVariable(name: "s28", arg: 6, scope: !1723, file: !1627, line: 90, type: !8)
!1732 = !DILocation(line: 0, scope: !1723, inlinedAt: !1733)
!1733 = distinct !DILocation(line: 111, column: 16, scope: !1734, inlinedAt: !1716)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !1627, line: 108, column: 11)
!1735 = distinct !DILexicalBlock(scope: !1720, file: !1627, line: 107, column: 5)
!1736 = !DILocation(line: 92, column: 7, scope: !1737, inlinedAt: !1733)
!1737 = distinct !DILexicalBlock(scope: !1723, file: !1627, line: 92, column: 7)
!1738 = !DILocation(line: 92, column: 7, scope: !1723, inlinedAt: !1733)
!1739 = !DILocation(line: 235, column: 12, scope: !1643)
!1740 = !DILocation(line: 235, column: 21, scope: !1643)
!1741 = !DILocation(line: 235, column: 5, scope: !1643)
!1742 = !DILocation(line: 0, scope: !1647, inlinedAt: !1743)
!1743 = distinct !DILocation(line: 167, column: 16, scope: !1662, inlinedAt: !1744)
!1744 = distinct !DILocation(line: 236, column: 7, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1611, file: !52, line: 236, column: 7)
!1746 = !DILocation(line: 148, column: 7, scope: !1665, inlinedAt: !1743)
!1747 = !DILocation(line: 0, scope: !1667, inlinedAt: !1748)
!1748 = distinct !DILocation(line: 153, column: 16, scope: !1681, inlinedAt: !1743)
!1749 = !DILocation(line: 134, column: 7, scope: !1684, inlinedAt: !1748)
!1750 = !DILocation(line: 134, column: 7, scope: !1667, inlinedAt: !1748)
!1751 = !DILocation(line: 0, scope: !1686, inlinedAt: !1752)
!1752 = distinct !DILocation(line: 139, column: 16, scope: !1699, inlinedAt: !1748)
!1753 = !DILocation(line: 120, column: 7, scope: !1702, inlinedAt: !1752)
!1754 = !DILocation(line: 120, column: 7, scope: !1686, inlinedAt: !1752)
!1755 = !DILocation(line: 0, scope: !1705, inlinedAt: !1756)
!1756 = distinct !DILocation(line: 125, column: 16, scope: !1717, inlinedAt: !1752)
!1757 = !DILocation(line: 106, column: 7, scope: !1720, inlinedAt: !1756)
!1758 = !DILocation(line: 106, column: 7, scope: !1705, inlinedAt: !1756)
!1759 = !DILocation(line: 0, scope: !1723, inlinedAt: !1760)
!1760 = distinct !DILocation(line: 111, column: 16, scope: !1734, inlinedAt: !1756)
!1761 = !DILocation(line: 92, column: 7, scope: !1737, inlinedAt: !1760)
!1762 = !DILocation(line: 92, column: 7, scope: !1723, inlinedAt: !1760)
!1763 = !DILocalVariable(name: "s1", arg: 1, scope: !1764, file: !1627, line: 76, type: !6)
!1764 = distinct !DISubprogram(name: "strcaseeq6", scope: !1627, file: !1627, line: 76, type: !1765, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1767)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!23, !6, !6, !8, !8, !8}
!1767 = !{!1763, !1768, !1769, !1770, !1771}
!1768 = !DILocalVariable(name: "s2", arg: 2, scope: !1764, file: !1627, line: 76, type: !6)
!1769 = !DILocalVariable(name: "s26", arg: 3, scope: !1764, file: !1627, line: 76, type: !8)
!1770 = !DILocalVariable(name: "s27", arg: 4, scope: !1764, file: !1627, line: 76, type: !8)
!1771 = !DILocalVariable(name: "s28", arg: 5, scope: !1764, file: !1627, line: 76, type: !8)
!1772 = !DILocation(line: 0, scope: !1764, inlinedAt: !1773)
!1773 = distinct !DILocation(line: 97, column: 16, scope: !1774, inlinedAt: !1760)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !1627, line: 94, column: 11)
!1775 = distinct !DILexicalBlock(scope: !1737, file: !1627, line: 93, column: 5)
!1776 = !DILocation(line: 78, column: 7, scope: !1777, inlinedAt: !1773)
!1777 = distinct !DILexicalBlock(scope: !1764, file: !1627, line: 78, column: 7)
!1778 = !DILocation(line: 78, column: 7, scope: !1764, inlinedAt: !1773)
!1779 = !DILocalVariable(name: "s1", arg: 1, scope: !1780, file: !1627, line: 62, type: !6)
!1780 = distinct !DISubprogram(name: "strcaseeq7", scope: !1627, file: !1627, line: 62, type: !1781, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1783)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!23, !6, !6, !8, !8}
!1783 = !{!1779, !1784, !1785, !1786}
!1784 = !DILocalVariable(name: "s2", arg: 2, scope: !1780, file: !1627, line: 62, type: !6)
!1785 = !DILocalVariable(name: "s27", arg: 3, scope: !1780, file: !1627, line: 62, type: !8)
!1786 = !DILocalVariable(name: "s28", arg: 4, scope: !1780, file: !1627, line: 62, type: !8)
!1787 = !DILocation(line: 0, scope: !1780, inlinedAt: !1788)
!1788 = distinct !DILocation(line: 83, column: 16, scope: !1789, inlinedAt: !1773)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !1627, line: 80, column: 11)
!1790 = distinct !DILexicalBlock(scope: !1777, file: !1627, line: 79, column: 5)
!1791 = !DILocation(line: 64, column: 7, scope: !1792, inlinedAt: !1788)
!1792 = distinct !DILexicalBlock(scope: !1780, file: !1627, line: 64, column: 7)
!1793 = !DILocation(line: 236, column: 7, scope: !1611)
!1794 = !DILocation(line: 237, column: 12, scope: !1745)
!1795 = !DILocation(line: 237, column: 21, scope: !1745)
!1796 = !DILocation(line: 237, column: 5, scope: !1745)
!1797 = !DILocation(line: 239, column: 13, scope: !1611)
!1798 = !DILocation(line: 239, column: 11, scope: !1611)
!1799 = !DILocation(line: 239, column: 3, scope: !1611)
!1800 = !DILocation(line: 240, column: 1, scope: !1611)
!1801 = !DISubprogram(name: "iswprint", scope: !1802, file: !1802, line: 120, type: !1803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1802 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!23, !56}
!1805 = !DISubprogram(name: "mbsinit", scope: !1806, file: !1806, line: 292, type: !1807, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1806 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!23, !1809}
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1128)
!1811 = distinct !DISubprogram(name: "quotearg_alloc", scope: !52, file: !52, line: 799, type: !1812, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1814)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!47, !6, !91, !974}
!1814 = !{!1815, !1816, !1817}
!1815 = !DILocalVariable(name: "arg", arg: 1, scope: !1811, file: !52, line: 799, type: !6)
!1816 = !DILocalVariable(name: "argsize", arg: 2, scope: !1811, file: !52, line: 799, type: !91)
!1817 = !DILocalVariable(name: "o", arg: 3, scope: !1811, file: !52, line: 800, type: !974)
!1818 = !DILocation(line: 0, scope: !1811)
!1819 = !DILocalVariable(name: "arg", arg: 1, scope: !1820, file: !52, line: 812, type: !6)
!1820 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !52, file: !52, line: 812, type: !1821, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1823)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!47, !6, !91, !161, !974}
!1823 = !{!1819, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831}
!1824 = !DILocalVariable(name: "argsize", arg: 2, scope: !1820, file: !52, line: 812, type: !91)
!1825 = !DILocalVariable(name: "size", arg: 3, scope: !1820, file: !52, line: 812, type: !161)
!1826 = !DILocalVariable(name: "o", arg: 4, scope: !1820, file: !52, line: 813, type: !974)
!1827 = !DILocalVariable(name: "p", scope: !1820, file: !52, line: 815, type: !974)
!1828 = !DILocalVariable(name: "e", scope: !1820, file: !52, line: 816, type: !23)
!1829 = !DILocalVariable(name: "flags", scope: !1820, file: !52, line: 818, type: !23)
!1830 = !DILocalVariable(name: "bufsize", scope: !1820, file: !52, line: 819, type: !91)
!1831 = !DILocalVariable(name: "buf", scope: !1820, file: !52, line: 823, type: !47)
!1832 = !DILocation(line: 0, scope: !1820, inlinedAt: !1833)
!1833 = distinct !DILocation(line: 802, column: 10, scope: !1811)
!1834 = !DILocation(line: 815, column: 37, scope: !1820, inlinedAt: !1833)
!1835 = !DILocation(line: 816, column: 11, scope: !1820, inlinedAt: !1833)
!1836 = !DILocation(line: 818, column: 18, scope: !1820, inlinedAt: !1833)
!1837 = !DILocation(line: 818, column: 24, scope: !1820, inlinedAt: !1833)
!1838 = !DILocation(line: 819, column: 69, scope: !1820, inlinedAt: !1833)
!1839 = !DILocation(line: 820, column: 53, scope: !1820, inlinedAt: !1833)
!1840 = !DILocation(line: 821, column: 49, scope: !1820, inlinedAt: !1833)
!1841 = !DILocation(line: 822, column: 49, scope: !1820, inlinedAt: !1833)
!1842 = !DILocation(line: 819, column: 20, scope: !1820, inlinedAt: !1833)
!1843 = !DILocation(line: 822, column: 62, scope: !1820, inlinedAt: !1833)
!1844 = !DILocalVariable(name: "n", arg: 1, scope: !1845, file: !157, line: 216, type: !91)
!1845 = distinct !DISubprogram(name: "xcharalloc", scope: !157, file: !157, line: 216, type: !1846, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1848)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!47, !91}
!1848 = !{!1844}
!1849 = !DILocation(line: 0, scope: !1845, inlinedAt: !1850)
!1850 = distinct !DILocation(line: 823, column: 15, scope: !1820, inlinedAt: !1833)
!1851 = !DILocation(line: 218, column: 10, scope: !1845, inlinedAt: !1850)
!1852 = !DILocation(line: 824, column: 60, scope: !1820, inlinedAt: !1833)
!1853 = !DILocation(line: 826, column: 32, scope: !1820, inlinedAt: !1833)
!1854 = !DILocation(line: 826, column: 47, scope: !1820, inlinedAt: !1833)
!1855 = !DILocation(line: 824, column: 3, scope: !1820, inlinedAt: !1833)
!1856 = !DILocation(line: 827, column: 9, scope: !1820, inlinedAt: !1833)
!1857 = !DILocation(line: 802, column: 3, scope: !1811)
!1858 = !DILocation(line: 0, scope: !1820)
!1859 = !DILocation(line: 815, column: 37, scope: !1820)
!1860 = !DILocation(line: 816, column: 11, scope: !1820)
!1861 = !DILocation(line: 818, column: 18, scope: !1820)
!1862 = !DILocation(line: 818, column: 27, scope: !1820)
!1863 = !DILocation(line: 818, column: 24, scope: !1820)
!1864 = !DILocation(line: 819, column: 69, scope: !1820)
!1865 = !DILocation(line: 820, column: 53, scope: !1820)
!1866 = !DILocation(line: 821, column: 49, scope: !1820)
!1867 = !DILocation(line: 822, column: 49, scope: !1820)
!1868 = !DILocation(line: 819, column: 20, scope: !1820)
!1869 = !DILocation(line: 822, column: 62, scope: !1820)
!1870 = !DILocation(line: 0, scope: !1845, inlinedAt: !1871)
!1871 = distinct !DILocation(line: 823, column: 15, scope: !1820)
!1872 = !DILocation(line: 218, column: 10, scope: !1845, inlinedAt: !1871)
!1873 = !DILocation(line: 824, column: 60, scope: !1820)
!1874 = !DILocation(line: 826, column: 32, scope: !1820)
!1875 = !DILocation(line: 826, column: 47, scope: !1820)
!1876 = !DILocation(line: 824, column: 3, scope: !1820)
!1877 = !DILocation(line: 827, column: 9, scope: !1820)
!1878 = !DILocation(line: 828, column: 7, scope: !1820)
!1879 = !DILocation(line: 829, column: 11, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1820, file: !52, line: 828, column: 7)
!1881 = !{!1882, !1882, i64 0}
!1882 = !{!"long", !597, i64 0}
!1883 = !DILocation(line: 829, column: 5, scope: !1880)
!1884 = !DILocation(line: 830, column: 3, scope: !1820)
!1885 = distinct !DISubprogram(name: "quotearg_free", scope: !52, file: !52, line: 848, type: !769, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1886)
!1886 = !{!1887, !1888}
!1887 = !DILocalVariable(name: "sv", scope: !1885, file: !52, line: 850, type: !122)
!1888 = !DILocalVariable(name: "i", scope: !1885, file: !52, line: 851, type: !23)
!1889 = !DILocation(line: 850, column: 24, scope: !1885)
!1890 = !DILocation(line: 0, scope: !1885)
!1891 = !DILocation(line: 852, column: 19, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !52, line: 852, column: 3)
!1893 = distinct !DILexicalBlock(scope: !1885, file: !52, line: 852, column: 3)
!1894 = !DILocation(line: 852, column: 17, scope: !1892)
!1895 = !DILocation(line: 852, column: 3, scope: !1893)
!1896 = !DILocation(line: 853, column: 17, scope: !1892)
!1897 = !{!1898, !596, i64 8}
!1898 = !{!"slotvec", !1882, i64 0, !596, i64 8}
!1899 = !DILocation(line: 853, column: 5, scope: !1892)
!1900 = !DILocation(line: 852, column: 28, scope: !1892)
!1901 = distinct !{!1901, !1895, !1902, !637}
!1902 = !DILocation(line: 853, column: 20, scope: !1893)
!1903 = !DILocation(line: 854, column: 13, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1885, file: !52, line: 854, column: 7)
!1905 = !DILocation(line: 854, column: 17, scope: !1904)
!1906 = !DILocation(line: 854, column: 7, scope: !1885)
!1907 = !DILocation(line: 856, column: 7, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1904, file: !52, line: 855, column: 5)
!1909 = !DILocation(line: 857, column: 21, scope: !1908)
!1910 = !{!1898, !1882, i64 0}
!1911 = !DILocation(line: 858, column: 20, scope: !1908)
!1912 = !DILocation(line: 859, column: 5, scope: !1908)
!1913 = !DILocation(line: 860, column: 10, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1885, file: !52, line: 860, column: 7)
!1915 = !DILocation(line: 860, column: 7, scope: !1885)
!1916 = !DILocation(line: 862, column: 13, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1914, file: !52, line: 861, column: 5)
!1918 = !DILocation(line: 862, column: 7, scope: !1917)
!1919 = !DILocation(line: 863, column: 15, scope: !1917)
!1920 = !DILocation(line: 864, column: 5, scope: !1917)
!1921 = !DILocation(line: 865, column: 10, scope: !1885)
!1922 = !DILocation(line: 866, column: 1, scope: !1885)
!1923 = distinct !DISubprogram(name: "quotearg_n", scope: !52, file: !52, line: 931, type: !719, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1924)
!1924 = !{!1925, !1926}
!1925 = !DILocalVariable(name: "n", arg: 1, scope: !1923, file: !52, line: 931, type: !23)
!1926 = !DILocalVariable(name: "arg", arg: 2, scope: !1923, file: !52, line: 931, type: !6)
!1927 = !DILocation(line: 0, scope: !1923)
!1928 = !DILocation(line: 933, column: 10, scope: !1923)
!1929 = !DILocation(line: 933, column: 3, scope: !1923)
!1930 = distinct !DISubprogram(name: "quotearg_n_options", scope: !52, file: !52, line: 877, type: !1931, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1933)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!47, !23, !6, !91, !974}
!1933 = !{!1934, !1935, !1936, !1937, !1938, !1939, !1940, !1943, !1944, !1946, !1947, !1948}
!1934 = !DILocalVariable(name: "n", arg: 1, scope: !1930, file: !52, line: 877, type: !23)
!1935 = !DILocalVariable(name: "arg", arg: 2, scope: !1930, file: !52, line: 877, type: !6)
!1936 = !DILocalVariable(name: "argsize", arg: 3, scope: !1930, file: !52, line: 877, type: !91)
!1937 = !DILocalVariable(name: "options", arg: 4, scope: !1930, file: !52, line: 878, type: !974)
!1938 = !DILocalVariable(name: "e", scope: !1930, file: !52, line: 880, type: !23)
!1939 = !DILocalVariable(name: "sv", scope: !1930, file: !52, line: 882, type: !122)
!1940 = !DILocalVariable(name: "preallocated", scope: !1941, file: !52, line: 889, type: !16)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !52, line: 888, column: 5)
!1942 = distinct !DILexicalBlock(scope: !1930, file: !52, line: 887, column: 7)
!1943 = !DILocalVariable(name: "nmax", scope: !1941, file: !52, line: 890, type: !23)
!1944 = !DILocalVariable(name: "size", scope: !1945, file: !52, line: 903, type: !91)
!1945 = distinct !DILexicalBlock(scope: !1930, file: !52, line: 902, column: 3)
!1946 = !DILocalVariable(name: "val", scope: !1945, file: !52, line: 904, type: !47)
!1947 = !DILocalVariable(name: "flags", scope: !1945, file: !52, line: 906, type: !23)
!1948 = !DILocalVariable(name: "qsize", scope: !1945, file: !52, line: 907, type: !91)
!1949 = !DILocation(line: 0, scope: !1930)
!1950 = !DILocation(line: 880, column: 11, scope: !1930)
!1951 = !DILocation(line: 882, column: 24, scope: !1930)
!1952 = !DILocation(line: 884, column: 9, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1930, file: !52, line: 884, column: 7)
!1954 = !DILocation(line: 884, column: 7, scope: !1930)
!1955 = !DILocation(line: 885, column: 5, scope: !1953)
!1956 = !DILocation(line: 887, column: 7, scope: !1942)
!1957 = !DILocation(line: 887, column: 14, scope: !1942)
!1958 = !DILocation(line: 887, column: 7, scope: !1930)
!1959 = !DILocation(line: 889, column: 31, scope: !1941)
!1960 = !DILocation(line: 0, scope: !1941)
!1961 = !DILocation(line: 892, column: 16, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1941, file: !52, line: 892, column: 11)
!1963 = !DILocation(line: 892, column: 11, scope: !1941)
!1964 = !DILocation(line: 893, column: 9, scope: !1962)
!1965 = !DILocation(line: 895, column: 32, scope: !1941)
!1966 = !DILocation(line: 895, column: 61, scope: !1941)
!1967 = !DILocation(line: 895, column: 66, scope: !1941)
!1968 = !DILocation(line: 895, column: 22, scope: !1941)
!1969 = !DILocation(line: 895, column: 15, scope: !1941)
!1970 = !DILocation(line: 896, column: 11, scope: !1941)
!1971 = !DILocation(line: 897, column: 15, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1941, file: !52, line: 896, column: 11)
!1973 = !{i64 0, i64 8, !1881, i64 8, i64 8, !595}
!1974 = !DILocation(line: 897, column: 9, scope: !1972)
!1975 = !DILocation(line: 898, column: 20, scope: !1941)
!1976 = !DILocation(line: 898, column: 18, scope: !1941)
!1977 = !DILocation(line: 898, column: 15, scope: !1941)
!1978 = !DILocation(line: 898, column: 38, scope: !1941)
!1979 = !DILocation(line: 898, column: 31, scope: !1941)
!1980 = !DILocation(line: 898, column: 48, scope: !1941)
!1981 = !DILocation(line: 0, scope: !1372, inlinedAt: !1982)
!1982 = distinct !DILocation(line: 898, column: 7, scope: !1941)
!1983 = !DILocation(line: 59, column: 10, scope: !1372, inlinedAt: !1982)
!1984 = !DILocation(line: 899, column: 14, scope: !1941)
!1985 = !DILocation(line: 900, column: 5, scope: !1941)
!1986 = !DILocation(line: 903, column: 19, scope: !1945)
!1987 = !DILocation(line: 903, column: 25, scope: !1945)
!1988 = !DILocation(line: 0, scope: !1945)
!1989 = !DILocation(line: 904, column: 23, scope: !1945)
!1990 = !DILocation(line: 906, column: 26, scope: !1945)
!1991 = !DILocation(line: 906, column: 32, scope: !1945)
!1992 = !DILocation(line: 908, column: 55, scope: !1945)
!1993 = !DILocation(line: 909, column: 46, scope: !1945)
!1994 = !DILocation(line: 910, column: 55, scope: !1945)
!1995 = !DILocation(line: 911, column: 55, scope: !1945)
!1996 = !DILocation(line: 907, column: 20, scope: !1945)
!1997 = !DILocation(line: 913, column: 14, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1945, file: !52, line: 913, column: 9)
!1999 = !DILocation(line: 913, column: 9, scope: !1945)
!2000 = !DILocation(line: 915, column: 35, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1998, file: !52, line: 914, column: 7)
!2002 = !DILocation(line: 915, column: 20, scope: !2001)
!2003 = !DILocation(line: 916, column: 17, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2001, file: !52, line: 916, column: 13)
!2005 = !DILocation(line: 916, column: 13, scope: !2001)
!2006 = !DILocation(line: 917, column: 11, scope: !2004)
!2007 = !DILocation(line: 0, scope: !1845, inlinedAt: !2008)
!2008 = distinct !DILocation(line: 918, column: 27, scope: !2001)
!2009 = !DILocation(line: 218, column: 10, scope: !1845, inlinedAt: !2008)
!2010 = !DILocation(line: 918, column: 19, scope: !2001)
!2011 = !DILocation(line: 919, column: 69, scope: !2001)
!2012 = !DILocation(line: 921, column: 44, scope: !2001)
!2013 = !DILocation(line: 922, column: 44, scope: !2001)
!2014 = !DILocation(line: 919, column: 9, scope: !2001)
!2015 = !DILocation(line: 923, column: 7, scope: !2001)
!2016 = !DILocation(line: 925, column: 11, scope: !1945)
!2017 = !DILocation(line: 926, column: 5, scope: !1945)
!2018 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !52, file: !52, line: 937, type: !2019, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2021)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!47, !23, !6, !91}
!2021 = !{!2022, !2023, !2024}
!2022 = !DILocalVariable(name: "n", arg: 1, scope: !2018, file: !52, line: 937, type: !23)
!2023 = !DILocalVariable(name: "arg", arg: 2, scope: !2018, file: !52, line: 937, type: !6)
!2024 = !DILocalVariable(name: "argsize", arg: 3, scope: !2018, file: !52, line: 937, type: !91)
!2025 = !DILocation(line: 0, scope: !2018)
!2026 = !DILocation(line: 939, column: 10, scope: !2018)
!2027 = !DILocation(line: 939, column: 3, scope: !2018)
!2028 = distinct !DISubprogram(name: "quotearg", scope: !52, file: !52, line: 943, type: !762, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2029)
!2029 = !{!2030}
!2030 = !DILocalVariable(name: "arg", arg: 1, scope: !2028, file: !52, line: 943, type: !6)
!2031 = !DILocation(line: 0, scope: !2028)
!2032 = !DILocation(line: 0, scope: !1923, inlinedAt: !2033)
!2033 = distinct !DILocation(line: 945, column: 10, scope: !2028)
!2034 = !DILocation(line: 933, column: 10, scope: !1923, inlinedAt: !2033)
!2035 = !DILocation(line: 945, column: 3, scope: !2028)
!2036 = distinct !DISubprogram(name: "quotearg_mem", scope: !52, file: !52, line: 949, type: !2037, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2039)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!47, !6, !91}
!2039 = !{!2040, !2041}
!2040 = !DILocalVariable(name: "arg", arg: 1, scope: !2036, file: !52, line: 949, type: !6)
!2041 = !DILocalVariable(name: "argsize", arg: 2, scope: !2036, file: !52, line: 949, type: !91)
!2042 = !DILocation(line: 0, scope: !2036)
!2043 = !DILocation(line: 0, scope: !2018, inlinedAt: !2044)
!2044 = distinct !DILocation(line: 951, column: 10, scope: !2036)
!2045 = !DILocation(line: 939, column: 10, scope: !2018, inlinedAt: !2044)
!2046 = !DILocation(line: 951, column: 3, scope: !2036)
!2047 = distinct !DISubprogram(name: "quotearg_n_style", scope: !52, file: !52, line: 955, type: !2048, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2050)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!47, !23, !54, !6}
!2050 = !{!2051, !2052, !2053, !2054}
!2051 = !DILocalVariable(name: "n", arg: 1, scope: !2047, file: !52, line: 955, type: !23)
!2052 = !DILocalVariable(name: "s", arg: 2, scope: !2047, file: !52, line: 955, type: !54)
!2053 = !DILocalVariable(name: "arg", arg: 3, scope: !2047, file: !52, line: 955, type: !6)
!2054 = !DILocalVariable(name: "o", scope: !2047, file: !52, line: 957, type: !975)
!2055 = !DILocation(line: 0, scope: !2047)
!2056 = !DILocation(line: 957, column: 3, scope: !2047)
!2057 = !DILocation(line: 957, column: 32, scope: !2047)
!2058 = !{!2059}
!2059 = distinct !{!2059, !2060, !"quoting_options_from_style: argument 0"}
!2060 = distinct !{!2060, !"quoting_options_from_style"}
!2061 = !DILocation(line: 957, column: 36, scope: !2047)
!2062 = !DILocalVariable(name: "style", arg: 1, scope: !2063, file: !52, line: 193, type: !54)
!2063 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !52, file: !52, line: 193, type: !2064, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2066)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!103, !54}
!2066 = !{!2062, !2067}
!2067 = !DILocalVariable(name: "o", scope: !2063, file: !52, line: 195, type: !103)
!2068 = !DILocation(line: 0, scope: !2063, inlinedAt: !2069)
!2069 = distinct !DILocation(line: 957, column: 36, scope: !2047)
!2070 = !DILocation(line: 195, column: 26, scope: !2063, inlinedAt: !2069)
!2071 = !DILocation(line: 196, column: 13, scope: !2072, inlinedAt: !2069)
!2072 = distinct !DILexicalBlock(scope: !2063, file: !52, line: 196, column: 7)
!2073 = !DILocation(line: 196, column: 7, scope: !2063, inlinedAt: !2069)
!2074 = !DILocation(line: 197, column: 5, scope: !2072, inlinedAt: !2069)
!2075 = !DILocation(line: 198, column: 5, scope: !2063, inlinedAt: !2069)
!2076 = !DILocation(line: 198, column: 11, scope: !2063, inlinedAt: !2069)
!2077 = !DILocation(line: 958, column: 10, scope: !2047)
!2078 = !DILocation(line: 959, column: 1, scope: !2047)
!2079 = !DILocation(line: 958, column: 3, scope: !2047)
!2080 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !52, file: !52, line: 962, type: !2081, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2083)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!47, !23, !54, !6, !91}
!2083 = !{!2084, !2085, !2086, !2087, !2088}
!2084 = !DILocalVariable(name: "n", arg: 1, scope: !2080, file: !52, line: 962, type: !23)
!2085 = !DILocalVariable(name: "s", arg: 2, scope: !2080, file: !52, line: 962, type: !54)
!2086 = !DILocalVariable(name: "arg", arg: 3, scope: !2080, file: !52, line: 963, type: !6)
!2087 = !DILocalVariable(name: "argsize", arg: 4, scope: !2080, file: !52, line: 963, type: !91)
!2088 = !DILocalVariable(name: "o", scope: !2080, file: !52, line: 965, type: !975)
!2089 = !DILocation(line: 0, scope: !2080)
!2090 = !DILocation(line: 965, column: 3, scope: !2080)
!2091 = !DILocation(line: 965, column: 32, scope: !2080)
!2092 = !{!2093}
!2093 = distinct !{!2093, !2094, !"quoting_options_from_style: argument 0"}
!2094 = distinct !{!2094, !"quoting_options_from_style"}
!2095 = !DILocation(line: 965, column: 36, scope: !2080)
!2096 = !DILocation(line: 0, scope: !2063, inlinedAt: !2097)
!2097 = distinct !DILocation(line: 965, column: 36, scope: !2080)
!2098 = !DILocation(line: 195, column: 26, scope: !2063, inlinedAt: !2097)
!2099 = !DILocation(line: 196, column: 13, scope: !2072, inlinedAt: !2097)
!2100 = !DILocation(line: 196, column: 7, scope: !2063, inlinedAt: !2097)
!2101 = !DILocation(line: 197, column: 5, scope: !2072, inlinedAt: !2097)
!2102 = !DILocation(line: 198, column: 5, scope: !2063, inlinedAt: !2097)
!2103 = !DILocation(line: 198, column: 11, scope: !2063, inlinedAt: !2097)
!2104 = !DILocation(line: 966, column: 10, scope: !2080)
!2105 = !DILocation(line: 967, column: 1, scope: !2080)
!2106 = !DILocation(line: 966, column: 3, scope: !2080)
!2107 = distinct !DISubprogram(name: "quotearg_style", scope: !52, file: !52, line: 970, type: !2108, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2110)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!47, !54, !6}
!2110 = !{!2111, !2112}
!2111 = !DILocalVariable(name: "s", arg: 1, scope: !2107, file: !52, line: 970, type: !54)
!2112 = !DILocalVariable(name: "arg", arg: 2, scope: !2107, file: !52, line: 970, type: !6)
!2113 = !DILocation(line: 0, scope: !2107)
!2114 = !DILocation(line: 0, scope: !2047, inlinedAt: !2115)
!2115 = distinct !DILocation(line: 972, column: 10, scope: !2107)
!2116 = !DILocation(line: 957, column: 3, scope: !2047, inlinedAt: !2115)
!2117 = !DILocation(line: 957, column: 32, scope: !2047, inlinedAt: !2115)
!2118 = !{!2119}
!2119 = distinct !{!2119, !2120, !"quoting_options_from_style: argument 0"}
!2120 = distinct !{!2120, !"quoting_options_from_style"}
!2121 = !DILocation(line: 957, column: 36, scope: !2047, inlinedAt: !2115)
!2122 = !DILocation(line: 0, scope: !2063, inlinedAt: !2123)
!2123 = distinct !DILocation(line: 957, column: 36, scope: !2047, inlinedAt: !2115)
!2124 = !DILocation(line: 195, column: 26, scope: !2063, inlinedAt: !2123)
!2125 = !DILocation(line: 196, column: 13, scope: !2072, inlinedAt: !2123)
!2126 = !DILocation(line: 196, column: 7, scope: !2063, inlinedAt: !2123)
!2127 = !DILocation(line: 197, column: 5, scope: !2072, inlinedAt: !2123)
!2128 = !DILocation(line: 198, column: 5, scope: !2063, inlinedAt: !2123)
!2129 = !DILocation(line: 198, column: 11, scope: !2063, inlinedAt: !2123)
!2130 = !DILocation(line: 958, column: 10, scope: !2047, inlinedAt: !2115)
!2131 = !DILocation(line: 959, column: 1, scope: !2047, inlinedAt: !2115)
!2132 = !DILocation(line: 972, column: 3, scope: !2107)
!2133 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !52, file: !52, line: 976, type: !2134, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2136)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!47, !54, !6, !91}
!2136 = !{!2137, !2138, !2139}
!2137 = !DILocalVariable(name: "s", arg: 1, scope: !2133, file: !52, line: 976, type: !54)
!2138 = !DILocalVariable(name: "arg", arg: 2, scope: !2133, file: !52, line: 976, type: !6)
!2139 = !DILocalVariable(name: "argsize", arg: 3, scope: !2133, file: !52, line: 976, type: !91)
!2140 = !DILocation(line: 0, scope: !2133)
!2141 = !DILocation(line: 0, scope: !2080, inlinedAt: !2142)
!2142 = distinct !DILocation(line: 978, column: 10, scope: !2133)
!2143 = !DILocation(line: 965, column: 3, scope: !2080, inlinedAt: !2142)
!2144 = !DILocation(line: 965, column: 32, scope: !2080, inlinedAt: !2142)
!2145 = !{!2146}
!2146 = distinct !{!2146, !2147, !"quoting_options_from_style: argument 0"}
!2147 = distinct !{!2147, !"quoting_options_from_style"}
!2148 = !DILocation(line: 965, column: 36, scope: !2080, inlinedAt: !2142)
!2149 = !DILocation(line: 0, scope: !2063, inlinedAt: !2150)
!2150 = distinct !DILocation(line: 965, column: 36, scope: !2080, inlinedAt: !2142)
!2151 = !DILocation(line: 195, column: 26, scope: !2063, inlinedAt: !2150)
!2152 = !DILocation(line: 196, column: 13, scope: !2072, inlinedAt: !2150)
!2153 = !DILocation(line: 196, column: 7, scope: !2063, inlinedAt: !2150)
!2154 = !DILocation(line: 197, column: 5, scope: !2072, inlinedAt: !2150)
!2155 = !DILocation(line: 198, column: 5, scope: !2063, inlinedAt: !2150)
!2156 = !DILocation(line: 198, column: 11, scope: !2063, inlinedAt: !2150)
!2157 = !DILocation(line: 966, column: 10, scope: !2080, inlinedAt: !2142)
!2158 = !DILocation(line: 967, column: 1, scope: !2080, inlinedAt: !2142)
!2159 = !DILocation(line: 978, column: 3, scope: !2133)
!2160 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !52, file: !52, line: 982, type: !2161, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2163)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!47, !6, !91, !8}
!2163 = !{!2164, !2165, !2166, !2167}
!2164 = !DILocalVariable(name: "arg", arg: 1, scope: !2160, file: !52, line: 982, type: !6)
!2165 = !DILocalVariable(name: "argsize", arg: 2, scope: !2160, file: !52, line: 982, type: !91)
!2166 = !DILocalVariable(name: "ch", arg: 3, scope: !2160, file: !52, line: 982, type: !8)
!2167 = !DILocalVariable(name: "options", scope: !2160, file: !52, line: 984, type: !103)
!2168 = !DILocation(line: 0, scope: !2160)
!2169 = !DILocation(line: 984, column: 3, scope: !2160)
!2170 = !DILocation(line: 984, column: 26, scope: !2160)
!2171 = !DILocation(line: 985, column: 13, scope: !2160)
!2172 = !{i64 0, i64 4, !1181, i64 4, i64 4, !740, i64 8, i64 32, !1181, i64 40, i64 8, !595, i64 48, i64 8, !595}
!2173 = !DILocation(line: 0, scope: !995, inlinedAt: !2174)
!2174 = distinct !DILocation(line: 986, column: 3, scope: !2160)
!2175 = !DILocation(line: 156, column: 62, scope: !995, inlinedAt: !2174)
!2176 = !DILocation(line: 156, column: 57, scope: !995, inlinedAt: !2174)
!2177 = !DILocation(line: 157, column: 15, scope: !995, inlinedAt: !2174)
!2178 = !DILocation(line: 158, column: 12, scope: !995, inlinedAt: !2174)
!2179 = !DILocation(line: 158, column: 15, scope: !995, inlinedAt: !2174)
!2180 = !DILocation(line: 158, column: 25, scope: !995, inlinedAt: !2174)
!2181 = !DILocation(line: 159, column: 18, scope: !995, inlinedAt: !2174)
!2182 = !DILocation(line: 159, column: 23, scope: !995, inlinedAt: !2174)
!2183 = !DILocation(line: 159, column: 6, scope: !995, inlinedAt: !2174)
!2184 = !DILocation(line: 987, column: 10, scope: !2160)
!2185 = !DILocation(line: 988, column: 1, scope: !2160)
!2186 = !DILocation(line: 987, column: 3, scope: !2160)
!2187 = distinct !DISubprogram(name: "quotearg_char", scope: !52, file: !52, line: 991, type: !2188, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2190)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!47, !6, !8}
!2190 = !{!2191, !2192}
!2191 = !DILocalVariable(name: "arg", arg: 1, scope: !2187, file: !52, line: 991, type: !6)
!2192 = !DILocalVariable(name: "ch", arg: 2, scope: !2187, file: !52, line: 991, type: !8)
!2193 = !DILocation(line: 0, scope: !2187)
!2194 = !DILocation(line: 0, scope: !2160, inlinedAt: !2195)
!2195 = distinct !DILocation(line: 993, column: 10, scope: !2187)
!2196 = !DILocation(line: 984, column: 3, scope: !2160, inlinedAt: !2195)
!2197 = !DILocation(line: 984, column: 26, scope: !2160, inlinedAt: !2195)
!2198 = !DILocation(line: 985, column: 13, scope: !2160, inlinedAt: !2195)
!2199 = !DILocation(line: 0, scope: !995, inlinedAt: !2200)
!2200 = distinct !DILocation(line: 986, column: 3, scope: !2160, inlinedAt: !2195)
!2201 = !DILocation(line: 156, column: 62, scope: !995, inlinedAt: !2200)
!2202 = !DILocation(line: 156, column: 57, scope: !995, inlinedAt: !2200)
!2203 = !DILocation(line: 157, column: 15, scope: !995, inlinedAt: !2200)
!2204 = !DILocation(line: 158, column: 12, scope: !995, inlinedAt: !2200)
!2205 = !DILocation(line: 158, column: 15, scope: !995, inlinedAt: !2200)
!2206 = !DILocation(line: 158, column: 25, scope: !995, inlinedAt: !2200)
!2207 = !DILocation(line: 159, column: 18, scope: !995, inlinedAt: !2200)
!2208 = !DILocation(line: 159, column: 23, scope: !995, inlinedAt: !2200)
!2209 = !DILocation(line: 159, column: 6, scope: !995, inlinedAt: !2200)
!2210 = !DILocation(line: 987, column: 10, scope: !2160, inlinedAt: !2195)
!2211 = !DILocation(line: 988, column: 1, scope: !2160, inlinedAt: !2195)
!2212 = !DILocation(line: 993, column: 3, scope: !2187)
!2213 = distinct !DISubprogram(name: "quotearg_colon", scope: !52, file: !52, line: 997, type: !762, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2214)
!2214 = !{!2215}
!2215 = !DILocalVariable(name: "arg", arg: 1, scope: !2213, file: !52, line: 997, type: !6)
!2216 = !DILocation(line: 0, scope: !2213)
!2217 = !DILocation(line: 0, scope: !2187, inlinedAt: !2218)
!2218 = distinct !DILocation(line: 999, column: 10, scope: !2213)
!2219 = !DILocation(line: 0, scope: !2160, inlinedAt: !2220)
!2220 = distinct !DILocation(line: 993, column: 10, scope: !2187, inlinedAt: !2218)
!2221 = !DILocation(line: 984, column: 3, scope: !2160, inlinedAt: !2220)
!2222 = !DILocation(line: 984, column: 26, scope: !2160, inlinedAt: !2220)
!2223 = !DILocation(line: 985, column: 13, scope: !2160, inlinedAt: !2220)
!2224 = !DILocation(line: 0, scope: !995, inlinedAt: !2225)
!2225 = distinct !DILocation(line: 986, column: 3, scope: !2160, inlinedAt: !2220)
!2226 = !DILocation(line: 156, column: 57, scope: !995, inlinedAt: !2225)
!2227 = !DILocation(line: 158, column: 12, scope: !995, inlinedAt: !2225)
!2228 = !DILocation(line: 159, column: 6, scope: !995, inlinedAt: !2225)
!2229 = !DILocation(line: 987, column: 10, scope: !2160, inlinedAt: !2220)
!2230 = !DILocation(line: 988, column: 1, scope: !2160, inlinedAt: !2220)
!2231 = !DILocation(line: 999, column: 3, scope: !2213)
!2232 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !52, file: !52, line: 1003, type: !2037, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2233)
!2233 = !{!2234, !2235}
!2234 = !DILocalVariable(name: "arg", arg: 1, scope: !2232, file: !52, line: 1003, type: !6)
!2235 = !DILocalVariable(name: "argsize", arg: 2, scope: !2232, file: !52, line: 1003, type: !91)
!2236 = !DILocation(line: 0, scope: !2232)
!2237 = !DILocation(line: 0, scope: !2160, inlinedAt: !2238)
!2238 = distinct !DILocation(line: 1005, column: 10, scope: !2232)
!2239 = !DILocation(line: 984, column: 3, scope: !2160, inlinedAt: !2238)
!2240 = !DILocation(line: 984, column: 26, scope: !2160, inlinedAt: !2238)
!2241 = !DILocation(line: 985, column: 13, scope: !2160, inlinedAt: !2238)
!2242 = !DILocation(line: 0, scope: !995, inlinedAt: !2243)
!2243 = distinct !DILocation(line: 986, column: 3, scope: !2160, inlinedAt: !2238)
!2244 = !DILocation(line: 156, column: 57, scope: !995, inlinedAt: !2243)
!2245 = !DILocation(line: 158, column: 12, scope: !995, inlinedAt: !2243)
!2246 = !DILocation(line: 159, column: 6, scope: !995, inlinedAt: !2243)
!2247 = !DILocation(line: 987, column: 10, scope: !2160, inlinedAt: !2238)
!2248 = !DILocation(line: 988, column: 1, scope: !2160, inlinedAt: !2238)
!2249 = !DILocation(line: 1005, column: 3, scope: !2232)
!2250 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !52, file: !52, line: 1009, type: !2048, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2251)
!2251 = !{!2252, !2253, !2254, !2255}
!2252 = !DILocalVariable(name: "n", arg: 1, scope: !2250, file: !52, line: 1009, type: !23)
!2253 = !DILocalVariable(name: "s", arg: 2, scope: !2250, file: !52, line: 1009, type: !54)
!2254 = !DILocalVariable(name: "arg", arg: 3, scope: !2250, file: !52, line: 1009, type: !6)
!2255 = !DILocalVariable(name: "options", scope: !2250, file: !52, line: 1011, type: !103)
!2256 = !DILocation(line: 195, column: 26, scope: !2063, inlinedAt: !2257)
!2257 = distinct !DILocation(line: 1012, column: 13, scope: !2250)
!2258 = !DILocation(line: 0, scope: !2250)
!2259 = !DILocation(line: 1011, column: 3, scope: !2250)
!2260 = !DILocation(line: 1011, column: 26, scope: !2250)
!2261 = !DILocation(line: 1012, column: 13, scope: !2250)
!2262 = !{!2263}
!2263 = distinct !{!2263, !2264, !"quoting_options_from_style: argument 0"}
!2264 = distinct !{!2264, !"quoting_options_from_style"}
!2265 = !DILocation(line: 0, scope: !2063, inlinedAt: !2257)
!2266 = !DILocation(line: 196, column: 13, scope: !2072, inlinedAt: !2257)
!2267 = !DILocation(line: 196, column: 7, scope: !2063, inlinedAt: !2257)
!2268 = !DILocation(line: 197, column: 5, scope: !2072, inlinedAt: !2257)
!2269 = !{i64 0, i64 4, !740, i64 4, i64 32, !1181, i64 36, i64 8, !595, i64 44, i64 8, !595}
!2270 = !DILocation(line: 0, scope: !995, inlinedAt: !2271)
!2271 = distinct !DILocation(line: 1013, column: 3, scope: !2250)
!2272 = !DILocation(line: 156, column: 57, scope: !995, inlinedAt: !2271)
!2273 = !DILocation(line: 158, column: 12, scope: !995, inlinedAt: !2271)
!2274 = !DILocation(line: 159, column: 6, scope: !995, inlinedAt: !2271)
!2275 = !DILocation(line: 1014, column: 10, scope: !2250)
!2276 = !DILocation(line: 1015, column: 1, scope: !2250)
!2277 = !DILocation(line: 1014, column: 3, scope: !2250)
!2278 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !52, file: !52, line: 1018, type: !2279, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2281)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!47, !23, !6, !6, !6}
!2281 = !{!2282, !2283, !2284, !2285}
!2282 = !DILocalVariable(name: "n", arg: 1, scope: !2278, file: !52, line: 1018, type: !23)
!2283 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2278, file: !52, line: 1018, type: !6)
!2284 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2278, file: !52, line: 1019, type: !6)
!2285 = !DILocalVariable(name: "arg", arg: 4, scope: !2278, file: !52, line: 1019, type: !6)
!2286 = !DILocation(line: 0, scope: !2278)
!2287 = !DILocalVariable(name: "n", arg: 1, scope: !2288, file: !52, line: 1026, type: !23)
!2288 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !52, file: !52, line: 1026, type: !2289, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2291)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!47, !23, !6, !6, !6, !91}
!2291 = !{!2287, !2292, !2293, !2294, !2295, !2296}
!2292 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2288, file: !52, line: 1026, type: !6)
!2293 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2288, file: !52, line: 1027, type: !6)
!2294 = !DILocalVariable(name: "arg", arg: 4, scope: !2288, file: !52, line: 1028, type: !6)
!2295 = !DILocalVariable(name: "argsize", arg: 5, scope: !2288, file: !52, line: 1028, type: !91)
!2296 = !DILocalVariable(name: "o", scope: !2288, file: !52, line: 1030, type: !103)
!2297 = !DILocation(line: 0, scope: !2288, inlinedAt: !2298)
!2298 = distinct !DILocation(line: 1021, column: 10, scope: !2278)
!2299 = !DILocation(line: 1030, column: 3, scope: !2288, inlinedAt: !2298)
!2300 = !DILocation(line: 1030, column: 26, scope: !2288, inlinedAt: !2298)
!2301 = !DILocation(line: 1030, column: 30, scope: !2288, inlinedAt: !2298)
!2302 = !DILocation(line: 0, scope: !1036, inlinedAt: !2303)
!2303 = distinct !DILocation(line: 1031, column: 3, scope: !2288, inlinedAt: !2298)
!2304 = !DILocation(line: 184, column: 6, scope: !1036, inlinedAt: !2303)
!2305 = !DILocation(line: 184, column: 12, scope: !1036, inlinedAt: !2303)
!2306 = !DILocation(line: 185, column: 8, scope: !1050, inlinedAt: !2303)
!2307 = !DILocation(line: 185, column: 19, scope: !1050, inlinedAt: !2303)
!2308 = !DILocation(line: 186, column: 5, scope: !1050, inlinedAt: !2303)
!2309 = !DILocation(line: 187, column: 6, scope: !1036, inlinedAt: !2303)
!2310 = !DILocation(line: 187, column: 17, scope: !1036, inlinedAt: !2303)
!2311 = !DILocation(line: 188, column: 6, scope: !1036, inlinedAt: !2303)
!2312 = !DILocation(line: 188, column: 18, scope: !1036, inlinedAt: !2303)
!2313 = !DILocation(line: 1032, column: 10, scope: !2288, inlinedAt: !2298)
!2314 = !DILocation(line: 1033, column: 1, scope: !2288, inlinedAt: !2298)
!2315 = !DILocation(line: 1021, column: 3, scope: !2278)
!2316 = !DILocation(line: 0, scope: !2288)
!2317 = !DILocation(line: 1030, column: 3, scope: !2288)
!2318 = !DILocation(line: 1030, column: 26, scope: !2288)
!2319 = !DILocation(line: 1030, column: 30, scope: !2288)
!2320 = !DILocation(line: 0, scope: !1036, inlinedAt: !2321)
!2321 = distinct !DILocation(line: 1031, column: 3, scope: !2288)
!2322 = !DILocation(line: 184, column: 6, scope: !1036, inlinedAt: !2321)
!2323 = !DILocation(line: 184, column: 12, scope: !1036, inlinedAt: !2321)
!2324 = !DILocation(line: 185, column: 8, scope: !1050, inlinedAt: !2321)
!2325 = !DILocation(line: 185, column: 19, scope: !1050, inlinedAt: !2321)
!2326 = !DILocation(line: 186, column: 5, scope: !1050, inlinedAt: !2321)
!2327 = !DILocation(line: 187, column: 6, scope: !1036, inlinedAt: !2321)
!2328 = !DILocation(line: 187, column: 17, scope: !1036, inlinedAt: !2321)
!2329 = !DILocation(line: 188, column: 6, scope: !1036, inlinedAt: !2321)
!2330 = !DILocation(line: 188, column: 18, scope: !1036, inlinedAt: !2321)
!2331 = !DILocation(line: 1032, column: 10, scope: !2288)
!2332 = !DILocation(line: 1033, column: 1, scope: !2288)
!2333 = !DILocation(line: 1032, column: 3, scope: !2288)
!2334 = distinct !DISubprogram(name: "quotearg_custom", scope: !52, file: !52, line: 1036, type: !2335, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2337)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!47, !6, !6, !6}
!2337 = !{!2338, !2339, !2340}
!2338 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2334, file: !52, line: 1036, type: !6)
!2339 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2334, file: !52, line: 1036, type: !6)
!2340 = !DILocalVariable(name: "arg", arg: 3, scope: !2334, file: !52, line: 1037, type: !6)
!2341 = !DILocation(line: 0, scope: !2334)
!2342 = !DILocation(line: 0, scope: !2278, inlinedAt: !2343)
!2343 = distinct !DILocation(line: 1039, column: 10, scope: !2334)
!2344 = !DILocation(line: 0, scope: !2288, inlinedAt: !2345)
!2345 = distinct !DILocation(line: 1021, column: 10, scope: !2278, inlinedAt: !2343)
!2346 = !DILocation(line: 1030, column: 3, scope: !2288, inlinedAt: !2345)
!2347 = !DILocation(line: 1030, column: 26, scope: !2288, inlinedAt: !2345)
!2348 = !DILocation(line: 1030, column: 30, scope: !2288, inlinedAt: !2345)
!2349 = !DILocation(line: 0, scope: !1036, inlinedAt: !2350)
!2350 = distinct !DILocation(line: 1031, column: 3, scope: !2288, inlinedAt: !2345)
!2351 = !DILocation(line: 184, column: 6, scope: !1036, inlinedAt: !2350)
!2352 = !DILocation(line: 184, column: 12, scope: !1036, inlinedAt: !2350)
!2353 = !DILocation(line: 185, column: 8, scope: !1050, inlinedAt: !2350)
!2354 = !DILocation(line: 185, column: 19, scope: !1050, inlinedAt: !2350)
!2355 = !DILocation(line: 186, column: 5, scope: !1050, inlinedAt: !2350)
!2356 = !DILocation(line: 187, column: 6, scope: !1036, inlinedAt: !2350)
!2357 = !DILocation(line: 187, column: 17, scope: !1036, inlinedAt: !2350)
!2358 = !DILocation(line: 188, column: 6, scope: !1036, inlinedAt: !2350)
!2359 = !DILocation(line: 188, column: 18, scope: !1036, inlinedAt: !2350)
!2360 = !DILocation(line: 1032, column: 10, scope: !2288, inlinedAt: !2345)
!2361 = !DILocation(line: 1033, column: 1, scope: !2288, inlinedAt: !2345)
!2362 = !DILocation(line: 1039, column: 3, scope: !2334)
!2363 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !52, file: !52, line: 1043, type: !2364, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2366)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!47, !6, !6, !6, !91}
!2366 = !{!2367, !2368, !2369, !2370}
!2367 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2363, file: !52, line: 1043, type: !6)
!2368 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2363, file: !52, line: 1043, type: !6)
!2369 = !DILocalVariable(name: "arg", arg: 3, scope: !2363, file: !52, line: 1044, type: !6)
!2370 = !DILocalVariable(name: "argsize", arg: 4, scope: !2363, file: !52, line: 1044, type: !91)
!2371 = !DILocation(line: 0, scope: !2363)
!2372 = !DILocation(line: 0, scope: !2288, inlinedAt: !2373)
!2373 = distinct !DILocation(line: 1046, column: 10, scope: !2363)
!2374 = !DILocation(line: 1030, column: 3, scope: !2288, inlinedAt: !2373)
!2375 = !DILocation(line: 1030, column: 26, scope: !2288, inlinedAt: !2373)
!2376 = !DILocation(line: 1030, column: 30, scope: !2288, inlinedAt: !2373)
!2377 = !DILocation(line: 0, scope: !1036, inlinedAt: !2378)
!2378 = distinct !DILocation(line: 1031, column: 3, scope: !2288, inlinedAt: !2373)
!2379 = !DILocation(line: 184, column: 6, scope: !1036, inlinedAt: !2378)
!2380 = !DILocation(line: 184, column: 12, scope: !1036, inlinedAt: !2378)
!2381 = !DILocation(line: 185, column: 8, scope: !1050, inlinedAt: !2378)
!2382 = !DILocation(line: 185, column: 19, scope: !1050, inlinedAt: !2378)
!2383 = !DILocation(line: 186, column: 5, scope: !1050, inlinedAt: !2378)
!2384 = !DILocation(line: 187, column: 6, scope: !1036, inlinedAt: !2378)
!2385 = !DILocation(line: 187, column: 17, scope: !1036, inlinedAt: !2378)
!2386 = !DILocation(line: 188, column: 6, scope: !1036, inlinedAt: !2378)
!2387 = !DILocation(line: 188, column: 18, scope: !1036, inlinedAt: !2378)
!2388 = !DILocation(line: 1032, column: 10, scope: !2288, inlinedAt: !2373)
!2389 = !DILocation(line: 1033, column: 1, scope: !2288, inlinedAt: !2373)
!2390 = !DILocation(line: 1046, column: 3, scope: !2363)
!2391 = distinct !DISubprogram(name: "quote_n_mem", scope: !52, file: !52, line: 1061, type: !2392, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2394)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!6, !23, !6, !91}
!2394 = !{!2395, !2396, !2397}
!2395 = !DILocalVariable(name: "n", arg: 1, scope: !2391, file: !52, line: 1061, type: !23)
!2396 = !DILocalVariable(name: "arg", arg: 2, scope: !2391, file: !52, line: 1061, type: !6)
!2397 = !DILocalVariable(name: "argsize", arg: 3, scope: !2391, file: !52, line: 1061, type: !91)
!2398 = !DILocation(line: 0, scope: !2391)
!2399 = !DILocation(line: 1063, column: 10, scope: !2391)
!2400 = !DILocation(line: 1063, column: 3, scope: !2391)
!2401 = distinct !DISubprogram(name: "quote_mem", scope: !52, file: !52, line: 1067, type: !2402, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2404)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!6, !6, !91}
!2404 = !{!2405, !2406}
!2405 = !DILocalVariable(name: "arg", arg: 1, scope: !2401, file: !52, line: 1067, type: !6)
!2406 = !DILocalVariable(name: "argsize", arg: 2, scope: !2401, file: !52, line: 1067, type: !91)
!2407 = !DILocation(line: 0, scope: !2401)
!2408 = !DILocation(line: 0, scope: !2391, inlinedAt: !2409)
!2409 = distinct !DILocation(line: 1069, column: 10, scope: !2401)
!2410 = !DILocation(line: 1063, column: 10, scope: !2391, inlinedAt: !2409)
!2411 = !DILocation(line: 1069, column: 3, scope: !2401)
!2412 = distinct !DISubprogram(name: "quote_n", scope: !52, file: !52, line: 1073, type: !2413, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2415)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!6, !23, !6}
!2415 = !{!2416, !2417}
!2416 = !DILocalVariable(name: "n", arg: 1, scope: !2412, file: !52, line: 1073, type: !23)
!2417 = !DILocalVariable(name: "arg", arg: 2, scope: !2412, file: !52, line: 1073, type: !6)
!2418 = !DILocation(line: 0, scope: !2412)
!2419 = !DILocation(line: 0, scope: !2391, inlinedAt: !2420)
!2420 = distinct !DILocation(line: 1075, column: 10, scope: !2412)
!2421 = !DILocation(line: 1063, column: 10, scope: !2391, inlinedAt: !2420)
!2422 = !DILocation(line: 1075, column: 3, scope: !2412)
!2423 = distinct !DISubprogram(name: "quote", scope: !52, file: !52, line: 1079, type: !2424, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2426)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!6, !6}
!2426 = !{!2427}
!2427 = !DILocalVariable(name: "arg", arg: 1, scope: !2423, file: !52, line: 1079, type: !6)
!2428 = !DILocation(line: 0, scope: !2423)
!2429 = !DILocation(line: 0, scope: !2412, inlinedAt: !2430)
!2430 = distinct !DILocation(line: 1081, column: 10, scope: !2423)
!2431 = !DILocation(line: 0, scope: !2391, inlinedAt: !2432)
!2432 = distinct !DILocation(line: 1075, column: 10, scope: !2412, inlinedAt: !2430)
!2433 = !DILocation(line: 1063, column: 10, scope: !2391, inlinedAt: !2432)
!2434 = !DILocation(line: 1081, column: 3, scope: !2423)
!2435 = distinct !DISubprogram(name: "version_etc_arn", scope: !147, file: !147, line: 61, type: !2436, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !146, retainedNodes: !2474)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{null, !2438, !6, !6, !6, !2473, !91}
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2440, line: 7, baseType: !2441)
!2440 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !667, line: 49, size: 1728, elements: !2442)
!2442 = !{!2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2441, file: !667, line: 51, baseType: !23, size: 32)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2441, file: !667, line: 54, baseType: !47, size: 64, offset: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2441, file: !667, line: 55, baseType: !47, size: 64, offset: 128)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2441, file: !667, line: 56, baseType: !47, size: 64, offset: 192)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2441, file: !667, line: 57, baseType: !47, size: 64, offset: 256)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2441, file: !667, line: 58, baseType: !47, size: 64, offset: 320)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2441, file: !667, line: 59, baseType: !47, size: 64, offset: 384)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2441, file: !667, line: 60, baseType: !47, size: 64, offset: 448)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2441, file: !667, line: 61, baseType: !47, size: 64, offset: 512)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2441, file: !667, line: 64, baseType: !47, size: 64, offset: 576)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2441, file: !667, line: 65, baseType: !47, size: 64, offset: 640)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2441, file: !667, line: 66, baseType: !47, size: 64, offset: 704)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2441, file: !667, line: 68, baseType: !682, size: 64, offset: 768)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2441, file: !667, line: 70, baseType: !2457, size: 64, offset: 832)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2441, file: !667, line: 72, baseType: !23, size: 32, offset: 896)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2441, file: !667, line: 73, baseType: !23, size: 32, offset: 928)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2441, file: !667, line: 74, baseType: !688, size: 64, offset: 960)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2441, file: !667, line: 77, baseType: !90, size: 16, offset: 1024)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2441, file: !667, line: 78, baseType: !693, size: 8, offset: 1040)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2441, file: !667, line: 79, baseType: !695, size: 8, offset: 1048)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2441, file: !667, line: 81, baseType: !699, size: 64, offset: 1088)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2441, file: !667, line: 89, baseType: !702, size: 64, offset: 1152)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2441, file: !667, line: 91, baseType: !704, size: 64, offset: 1216)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2441, file: !667, line: 92, baseType: !707, size: 64, offset: 1280)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2441, file: !667, line: 93, baseType: !2457, size: 64, offset: 1344)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2441, file: !667, line: 94, baseType: !46, size: 64, offset: 1408)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2441, file: !667, line: 95, baseType: !91, size: 64, offset: 1472)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2441, file: !667, line: 96, baseType: !23, size: 32, offset: 1536)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2441, file: !667, line: 98, baseType: !714, size: 160, offset: 1568)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!2474 = !{!2475, !2476, !2477, !2478, !2479, !2480}
!2475 = !DILocalVariable(name: "stream", arg: 1, scope: !2435, file: !147, line: 61, type: !2438)
!2476 = !DILocalVariable(name: "command_name", arg: 2, scope: !2435, file: !147, line: 62, type: !6)
!2477 = !DILocalVariable(name: "package", arg: 3, scope: !2435, file: !147, line: 62, type: !6)
!2478 = !DILocalVariable(name: "version", arg: 4, scope: !2435, file: !147, line: 63, type: !6)
!2479 = !DILocalVariable(name: "authors", arg: 5, scope: !2435, file: !147, line: 64, type: !2473)
!2480 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2435, file: !147, line: 64, type: !91)
!2481 = !DILocation(line: 0, scope: !2435)
!2482 = !DILocation(line: 66, column: 7, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2435, file: !147, line: 66, column: 7)
!2484 = !DILocation(line: 66, column: 7, scope: !2435)
!2485 = !DILocation(line: 67, column: 5, scope: !2483)
!2486 = !DILocation(line: 69, column: 5, scope: !2483)
!2487 = !DILocation(line: 83, column: 3, scope: !2435)
!2488 = !DILocation(line: 85, column: 3, scope: !2435)
!2489 = !DILocation(line: 88, column: 3, scope: !2435)
!2490 = !DILocation(line: 95, column: 3, scope: !2435)
!2491 = !DILocation(line: 97, column: 3, scope: !2435)
!2492 = !DILocation(line: 105, column: 7, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2435, file: !147, line: 98, column: 5)
!2494 = !DILocation(line: 106, column: 7, scope: !2493)
!2495 = !DILocation(line: 109, column: 7, scope: !2493)
!2496 = !DILocation(line: 110, column: 7, scope: !2493)
!2497 = !DILocation(line: 113, column: 7, scope: !2493)
!2498 = !DILocation(line: 115, column: 7, scope: !2493)
!2499 = !DILocation(line: 120, column: 7, scope: !2493)
!2500 = !DILocation(line: 122, column: 7, scope: !2493)
!2501 = !DILocation(line: 127, column: 7, scope: !2493)
!2502 = !DILocation(line: 129, column: 7, scope: !2493)
!2503 = !DILocation(line: 134, column: 7, scope: !2493)
!2504 = !DILocation(line: 137, column: 7, scope: !2493)
!2505 = !DILocation(line: 142, column: 7, scope: !2493)
!2506 = !DILocation(line: 145, column: 7, scope: !2493)
!2507 = !DILocation(line: 150, column: 7, scope: !2493)
!2508 = !DILocation(line: 154, column: 7, scope: !2493)
!2509 = !DILocation(line: 159, column: 7, scope: !2493)
!2510 = !DILocation(line: 163, column: 7, scope: !2493)
!2511 = !DILocation(line: 170, column: 7, scope: !2493)
!2512 = !DILocation(line: 174, column: 7, scope: !2493)
!2513 = !DILocation(line: 176, column: 1, scope: !2435)
!2514 = distinct !DISubprogram(name: "version_etc_ar", scope: !147, file: !147, line: 183, type: !2515, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !146, retainedNodes: !2517)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{null, !2438, !6, !6, !6, !2473}
!2517 = !{!2518, !2519, !2520, !2521, !2522, !2523}
!2518 = !DILocalVariable(name: "stream", arg: 1, scope: !2514, file: !147, line: 183, type: !2438)
!2519 = !DILocalVariable(name: "command_name", arg: 2, scope: !2514, file: !147, line: 184, type: !6)
!2520 = !DILocalVariable(name: "package", arg: 3, scope: !2514, file: !147, line: 184, type: !6)
!2521 = !DILocalVariable(name: "version", arg: 4, scope: !2514, file: !147, line: 185, type: !6)
!2522 = !DILocalVariable(name: "authors", arg: 5, scope: !2514, file: !147, line: 185, type: !2473)
!2523 = !DILocalVariable(name: "n_authors", scope: !2514, file: !147, line: 187, type: !91)
!2524 = !DILocation(line: 0, scope: !2514)
!2525 = !DILocation(line: 189, column: 8, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2514, file: !147, line: 189, column: 3)
!2527 = !DILocation(line: 0, scope: !2526)
!2528 = !DILocation(line: 189, column: 23, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2526, file: !147, line: 189, column: 3)
!2530 = !DILocation(line: 189, column: 3, scope: !2526)
!2531 = !DILocation(line: 189, column: 52, scope: !2529)
!2532 = distinct !{!2532, !2530, !2533, !637}
!2533 = !DILocation(line: 190, column: 5, scope: !2526)
!2534 = !DILocation(line: 191, column: 3, scope: !2514)
!2535 = !DILocation(line: 192, column: 1, scope: !2514)
!2536 = distinct !DISubprogram(name: "version_etc_va", scope: !147, file: !147, line: 199, type: !2537, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !146, retainedNodes: !2546)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{null, !2438, !6, !6, !6, !2539}
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2541)
!2541 = !{!2542, !2543, !2544, !2545}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2540, file: !147, line: 192, baseType: !56, size: 32)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2540, file: !147, line: 192, baseType: !56, size: 32, offset: 32)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2540, file: !147, line: 192, baseType: !46, size: 64, offset: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2540, file: !147, line: 192, baseType: !46, size: 64, offset: 128)
!2546 = !{!2547, !2548, !2549, !2550, !2551, !2552, !2553}
!2547 = !DILocalVariable(name: "stream", arg: 1, scope: !2536, file: !147, line: 199, type: !2438)
!2548 = !DILocalVariable(name: "command_name", arg: 2, scope: !2536, file: !147, line: 200, type: !6)
!2549 = !DILocalVariable(name: "package", arg: 3, scope: !2536, file: !147, line: 200, type: !6)
!2550 = !DILocalVariable(name: "version", arg: 4, scope: !2536, file: !147, line: 201, type: !6)
!2551 = !DILocalVariable(name: "authors", arg: 5, scope: !2536, file: !147, line: 201, type: !2539)
!2552 = !DILocalVariable(name: "n_authors", scope: !2536, file: !147, line: 203, type: !91)
!2553 = !DILocalVariable(name: "authtab", scope: !2536, file: !147, line: 204, type: !2554)
!2554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !99)
!2555 = !DILocation(line: 0, scope: !2536)
!2556 = !DILocation(line: 204, column: 3, scope: !2536)
!2557 = !DILocation(line: 204, column: 15, scope: !2536)
!2558 = !DILocation(line: 208, column: 35, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !147, line: 206, column: 3)
!2560 = distinct !DILexicalBlock(scope: !2536, file: !147, line: 206, column: 3)
!2561 = !DILocation(line: 208, column: 14, scope: !2559)
!2562 = !DILocation(line: 208, column: 33, scope: !2559)
!2563 = !DILocation(line: 208, column: 67, scope: !2559)
!2564 = !DILocation(line: 206, column: 3, scope: !2560)
!2565 = !DILocation(line: 0, scope: !2560)
!2566 = !DILocation(line: 211, column: 3, scope: !2536)
!2567 = !DILocation(line: 213, column: 1, scope: !2536)
!2568 = distinct !DISubprogram(name: "version_etc", scope: !147, file: !147, line: 230, type: !2569, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !146, retainedNodes: !2571)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{null, !2438, !6, !6, !6, null}
!2571 = !{!2572, !2573, !2574, !2575, !2576}
!2572 = !DILocalVariable(name: "stream", arg: 1, scope: !2568, file: !147, line: 230, type: !2438)
!2573 = !DILocalVariable(name: "command_name", arg: 2, scope: !2568, file: !147, line: 231, type: !6)
!2574 = !DILocalVariable(name: "package", arg: 3, scope: !2568, file: !147, line: 231, type: !6)
!2575 = !DILocalVariable(name: "version", arg: 4, scope: !2568, file: !147, line: 232, type: !6)
!2576 = !DILocalVariable(name: "authors", scope: !2568, file: !147, line: 234, type: !2577)
!2577 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !662, line: 52, baseType: !2578)
!2578 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !852, line: 32, baseType: !2579)
!2579 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !147, baseType: !2580)
!2580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2540, size: 192, elements: !696)
!2581 = !DILocation(line: 0, scope: !2568)
!2582 = !DILocation(line: 234, column: 3, scope: !2568)
!2583 = !DILocation(line: 234, column: 11, scope: !2568)
!2584 = !DILocation(line: 236, column: 3, scope: !2568)
!2585 = !DILocation(line: 237, column: 3, scope: !2568)
!2586 = !DILocation(line: 238, column: 3, scope: !2568)
!2587 = !DILocation(line: 239, column: 1, scope: !2568)
!2588 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !147, file: !147, line: 242, type: !769, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !146, retainedNodes: !4)
!2589 = !DILocation(line: 244, column: 3, scope: !2588)
!2590 = !DILocation(line: 249, column: 3, scope: !2588)
!2591 = !DILocation(line: 255, column: 3, scope: !2588)
!2592 = !DILocation(line: 260, column: 3, scope: !2588)
!2593 = !DILocation(line: 262, column: 1, scope: !2588)
!2594 = distinct !DISubprogram(name: "xnmalloc", scope: !157, file: !157, line: 99, type: !2595, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !2597)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!46, !91, !91}
!2597 = !{!2598, !2599}
!2598 = !DILocalVariable(name: "n", arg: 1, scope: !2594, file: !157, line: 99, type: !91)
!2599 = !DILocalVariable(name: "s", arg: 2, scope: !2594, file: !157, line: 99, type: !91)
!2600 = !DILocation(line: 0, scope: !2594)
!2601 = !DILocation(line: 101, column: 7, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2594, file: !157, line: 101, column: 7)
!2603 = !DILocation(line: 101, column: 7, scope: !2594)
!2604 = !DILocation(line: 102, column: 5, scope: !2602)
!2605 = !DILocation(line: 103, column: 21, scope: !2594)
!2606 = !DILocalVariable(name: "n", arg: 1, scope: !2607, file: !154, line: 39, type: !91)
!2607 = distinct !DISubprogram(name: "xmalloc", scope: !154, file: !154, line: 39, type: !2608, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !2610)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!46, !91}
!2610 = !{!2606, !2611}
!2611 = !DILocalVariable(name: "p", scope: !2607, file: !154, line: 41, type: !46)
!2612 = !DILocation(line: 0, scope: !2607, inlinedAt: !2613)
!2613 = distinct !DILocation(line: 103, column: 10, scope: !2594)
!2614 = !DILocation(line: 41, column: 13, scope: !2607, inlinedAt: !2613)
!2615 = !DILocation(line: 42, column: 8, scope: !2616, inlinedAt: !2613)
!2616 = distinct !DILexicalBlock(scope: !2607, file: !154, line: 42, column: 7)
!2617 = !DILocation(line: 42, column: 10, scope: !2616, inlinedAt: !2613)
!2618 = !DILocation(line: 43, column: 5, scope: !2616, inlinedAt: !2613)
!2619 = !DILocation(line: 103, column: 3, scope: !2594)
!2620 = !DILocation(line: 0, scope: !2607)
!2621 = !DILocation(line: 41, column: 13, scope: !2607)
!2622 = !DILocation(line: 42, column: 8, scope: !2616)
!2623 = !DILocation(line: 42, column: 10, scope: !2616)
!2624 = !DILocation(line: 43, column: 5, scope: !2616)
!2625 = !DILocation(line: 44, column: 3, scope: !2607)
!2626 = distinct !DISubprogram(name: "xnrealloc", scope: !157, file: !157, line: 112, type: !2627, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !2629)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!46, !46, !91, !91}
!2629 = !{!2630, !2631, !2632}
!2630 = !DILocalVariable(name: "p", arg: 1, scope: !2626, file: !157, line: 112, type: !46)
!2631 = !DILocalVariable(name: "n", arg: 2, scope: !2626, file: !157, line: 112, type: !91)
!2632 = !DILocalVariable(name: "s", arg: 3, scope: !2626, file: !157, line: 112, type: !91)
!2633 = !DILocation(line: 0, scope: !2626)
!2634 = !DILocation(line: 114, column: 7, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2626, file: !157, line: 114, column: 7)
!2636 = !DILocation(line: 114, column: 7, scope: !2626)
!2637 = !DILocation(line: 115, column: 5, scope: !2635)
!2638 = !DILocation(line: 116, column: 25, scope: !2626)
!2639 = !DILocalVariable(name: "p", arg: 1, scope: !2640, file: !154, line: 51, type: !46)
!2640 = distinct !DISubprogram(name: "xrealloc", scope: !154, file: !154, line: 51, type: !2641, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !2643)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{!46, !46, !91}
!2643 = !{!2639, !2644}
!2644 = !DILocalVariable(name: "n", arg: 2, scope: !2640, file: !154, line: 51, type: !91)
!2645 = !DILocation(line: 0, scope: !2640, inlinedAt: !2646)
!2646 = distinct !DILocation(line: 116, column: 10, scope: !2626)
!2647 = !DILocation(line: 53, column: 8, scope: !2648, inlinedAt: !2646)
!2648 = distinct !DILexicalBlock(scope: !2640, file: !154, line: 53, column: 7)
!2649 = !DILocation(line: 53, column: 10, scope: !2648, inlinedAt: !2646)
!2650 = !DILocation(line: 57, column: 7, scope: !2651, inlinedAt: !2646)
!2651 = distinct !DILexicalBlock(scope: !2648, file: !154, line: 54, column: 5)
!2652 = !DILocation(line: 58, column: 7, scope: !2651, inlinedAt: !2646)
!2653 = !DILocation(line: 61, column: 7, scope: !2640, inlinedAt: !2646)
!2654 = !DILocation(line: 62, column: 8, scope: !2655, inlinedAt: !2646)
!2655 = distinct !DILexicalBlock(scope: !2640, file: !154, line: 62, column: 7)
!2656 = !DILocation(line: 62, column: 10, scope: !2655, inlinedAt: !2646)
!2657 = !DILocation(line: 63, column: 5, scope: !2655, inlinedAt: !2646)
!2658 = !DILocation(line: 116, column: 3, scope: !2626)
!2659 = !DILocation(line: 0, scope: !2640)
!2660 = !DILocation(line: 53, column: 8, scope: !2648)
!2661 = !DILocation(line: 53, column: 10, scope: !2648)
!2662 = !DILocation(line: 57, column: 7, scope: !2651)
!2663 = !DILocation(line: 58, column: 7, scope: !2651)
!2664 = !DILocation(line: 61, column: 7, scope: !2640)
!2665 = !DILocation(line: 62, column: 8, scope: !2655)
!2666 = !DILocation(line: 62, column: 10, scope: !2655)
!2667 = !DILocation(line: 63, column: 5, scope: !2655)
!2668 = !DILocation(line: 65, column: 1, scope: !2640)
!2669 = !DILocation(line: 0, scope: !158)
!2670 = !DILocation(line: 176, column: 14, scope: !158)
!2671 = !DILocation(line: 178, column: 9, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !158, file: !157, line: 178, column: 7)
!2673 = !DILocation(line: 178, column: 7, scope: !158)
!2674 = !DILocation(line: 180, column: 13, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2676, file: !157, line: 180, column: 11)
!2676 = distinct !DILexicalBlock(scope: !2672, file: !157, line: 179, column: 5)
!2677 = !DILocation(line: 180, column: 11, scope: !2676)
!2678 = !DILocation(line: 188, column: 30, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2675, file: !157, line: 181, column: 9)
!2680 = !DILocation(line: 189, column: 16, scope: !2679)
!2681 = !DILocation(line: 189, column: 13, scope: !2679)
!2682 = !DILocation(line: 190, column: 9, scope: !2679)
!2683 = !DILocation(line: 191, column: 11, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2676, file: !157, line: 191, column: 11)
!2685 = !DILocation(line: 191, column: 11, scope: !2676)
!2686 = !DILocation(line: 206, column: 7, scope: !158)
!2687 = !DILocation(line: 207, column: 25, scope: !158)
!2688 = !DILocation(line: 0, scope: !2640, inlinedAt: !2689)
!2689 = distinct !DILocation(line: 207, column: 10, scope: !158)
!2690 = !DILocation(line: 53, column: 10, scope: !2648, inlinedAt: !2689)
!2691 = !DILocation(line: 192, column: 9, scope: !2684)
!2692 = !DILocation(line: 200, column: 69, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2694, file: !157, line: 200, column: 11)
!2694 = distinct !DILexicalBlock(scope: !2672, file: !157, line: 195, column: 5)
!2695 = !DILocation(line: 201, column: 11, scope: !2693)
!2696 = !DILocation(line: 200, column: 11, scope: !2694)
!2697 = !DILocation(line: 202, column: 9, scope: !2693)
!2698 = !DILocation(line: 203, column: 14, scope: !2694)
!2699 = !DILocation(line: 203, column: 18, scope: !2694)
!2700 = !DILocation(line: 203, column: 9, scope: !2694)
!2701 = !DILocation(line: 53, column: 8, scope: !2648, inlinedAt: !2689)
!2702 = !DILocation(line: 57, column: 7, scope: !2651, inlinedAt: !2689)
!2703 = !DILocation(line: 58, column: 7, scope: !2651, inlinedAt: !2689)
!2704 = !DILocation(line: 61, column: 7, scope: !2640, inlinedAt: !2689)
!2705 = !DILocation(line: 62, column: 8, scope: !2655, inlinedAt: !2689)
!2706 = !DILocation(line: 62, column: 10, scope: !2655, inlinedAt: !2689)
!2707 = !DILocation(line: 63, column: 5, scope: !2655, inlinedAt: !2689)
!2708 = !DILocation(line: 207, column: 3, scope: !158)
!2709 = distinct !DISubprogram(name: "xcharalloc", scope: !157, file: !157, line: 216, type: !1846, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !2710)
!2710 = !{!2711}
!2711 = !DILocalVariable(name: "n", arg: 1, scope: !2709, file: !157, line: 216, type: !91)
!2712 = !DILocation(line: 0, scope: !2709)
!2713 = !DILocation(line: 0, scope: !2607, inlinedAt: !2714)
!2714 = distinct !DILocation(line: 218, column: 10, scope: !2709)
!2715 = !DILocation(line: 41, column: 13, scope: !2607, inlinedAt: !2714)
!2716 = !DILocation(line: 42, column: 8, scope: !2616, inlinedAt: !2714)
!2717 = !DILocation(line: 42, column: 10, scope: !2616, inlinedAt: !2714)
!2718 = !DILocation(line: 43, column: 5, scope: !2616, inlinedAt: !2714)
!2719 = !DILocation(line: 218, column: 3, scope: !2709)
!2720 = distinct !DISubprogram(name: "x2realloc", scope: !154, file: !154, line: 74, type: !2721, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !2723)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!46, !46, !161}
!2723 = !{!2724, !2725}
!2724 = !DILocalVariable(name: "p", arg: 1, scope: !2720, file: !154, line: 74, type: !46)
!2725 = !DILocalVariable(name: "pn", arg: 2, scope: !2720, file: !154, line: 74, type: !161)
!2726 = !DILocation(line: 0, scope: !2720)
!2727 = !DILocation(line: 0, scope: !158, inlinedAt: !2728)
!2728 = distinct !DILocation(line: 76, column: 10, scope: !2720)
!2729 = !DILocation(line: 176, column: 14, scope: !158, inlinedAt: !2728)
!2730 = !DILocation(line: 178, column: 9, scope: !2672, inlinedAt: !2728)
!2731 = !DILocation(line: 178, column: 7, scope: !158, inlinedAt: !2728)
!2732 = !DILocation(line: 180, column: 13, scope: !2675, inlinedAt: !2728)
!2733 = !DILocation(line: 180, column: 11, scope: !2676, inlinedAt: !2728)
!2734 = !DILocation(line: 191, column: 11, scope: !2684, inlinedAt: !2728)
!2735 = !DILocation(line: 191, column: 11, scope: !2676, inlinedAt: !2728)
!2736 = !DILocation(line: 192, column: 9, scope: !2684, inlinedAt: !2728)
!2737 = !DILocation(line: 201, column: 11, scope: !2693, inlinedAt: !2728)
!2738 = !DILocation(line: 200, column: 11, scope: !2694, inlinedAt: !2728)
!2739 = !DILocation(line: 202, column: 9, scope: !2693, inlinedAt: !2728)
!2740 = !DILocation(line: 203, column: 14, scope: !2694, inlinedAt: !2728)
!2741 = !DILocation(line: 203, column: 18, scope: !2694, inlinedAt: !2728)
!2742 = !DILocation(line: 203, column: 9, scope: !2694, inlinedAt: !2728)
!2743 = !DILocation(line: 0, scope: !2640, inlinedAt: !2744)
!2744 = distinct !DILocation(line: 207, column: 10, scope: !158, inlinedAt: !2728)
!2745 = !DILocation(line: 53, column: 10, scope: !2648, inlinedAt: !2744)
!2746 = !DILocation(line: 206, column: 7, scope: !158, inlinedAt: !2728)
!2747 = !DILocation(line: 61, column: 7, scope: !2640, inlinedAt: !2744)
!2748 = !DILocation(line: 62, column: 8, scope: !2655, inlinedAt: !2744)
!2749 = !DILocation(line: 62, column: 10, scope: !2655, inlinedAt: !2744)
!2750 = !DILocation(line: 63, column: 5, scope: !2655, inlinedAt: !2744)
!2751 = !DILocation(line: 76, column: 3, scope: !2720)
!2752 = distinct !DISubprogram(name: "xzalloc", scope: !154, file: !154, line: 84, type: !2608, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !2753)
!2753 = !{!2754}
!2754 = !DILocalVariable(name: "n", arg: 1, scope: !2752, file: !154, line: 84, type: !91)
!2755 = !DILocation(line: 0, scope: !2752)
!2756 = !DILocalVariable(name: "n", arg: 1, scope: !2757, file: !154, line: 93, type: !91)
!2757 = distinct !DISubprogram(name: "xcalloc", scope: !154, file: !154, line: 93, type: !2595, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !2758)
!2758 = !{!2756, !2759, !2760}
!2759 = !DILocalVariable(name: "s", arg: 2, scope: !2757, file: !154, line: 93, type: !91)
!2760 = !DILocalVariable(name: "p", scope: !2757, file: !154, line: 95, type: !46)
!2761 = !DILocation(line: 0, scope: !2757, inlinedAt: !2762)
!2762 = distinct !DILocation(line: 86, column: 10, scope: !2752)
!2763 = !DILocation(line: 100, column: 7, scope: !2764, inlinedAt: !2762)
!2764 = distinct !DILexicalBlock(scope: !2757, file: !154, line: 100, column: 7)
!2765 = !DILocation(line: 101, column: 7, scope: !2764, inlinedAt: !2762)
!2766 = !DILocation(line: 101, column: 18, scope: !2764, inlinedAt: !2762)
!2767 = !DILocation(line: 101, column: 16, scope: !2764, inlinedAt: !2762)
!2768 = !DILocation(line: 100, column: 7, scope: !2757, inlinedAt: !2762)
!2769 = !DILocation(line: 102, column: 5, scope: !2764, inlinedAt: !2762)
!2770 = !DILocation(line: 86, column: 3, scope: !2752)
!2771 = !DILocation(line: 0, scope: !2757)
!2772 = !DILocation(line: 100, column: 7, scope: !2764)
!2773 = !DILocation(line: 101, column: 7, scope: !2764)
!2774 = !DILocation(line: 101, column: 18, scope: !2764)
!2775 = !DILocation(line: 101, column: 16, scope: !2764)
!2776 = !DILocation(line: 100, column: 7, scope: !2757)
!2777 = !DILocation(line: 102, column: 5, scope: !2764)
!2778 = !DILocation(line: 103, column: 3, scope: !2757)
!2779 = distinct !DISubprogram(name: "xmemdup", scope: !154, file: !154, line: 111, type: !2780, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !2784)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!46, !2782, !91}
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2784 = !{!2785, !2786}
!2785 = !DILocalVariable(name: "p", arg: 1, scope: !2779, file: !154, line: 111, type: !2782)
!2786 = !DILocalVariable(name: "s", arg: 2, scope: !2779, file: !154, line: 111, type: !91)
!2787 = !DILocation(line: 0, scope: !2779)
!2788 = !DILocation(line: 0, scope: !2607, inlinedAt: !2789)
!2789 = distinct !DILocation(line: 113, column: 18, scope: !2779)
!2790 = !DILocation(line: 41, column: 13, scope: !2607, inlinedAt: !2789)
!2791 = !DILocation(line: 42, column: 8, scope: !2616, inlinedAt: !2789)
!2792 = !DILocation(line: 42, column: 10, scope: !2616, inlinedAt: !2789)
!2793 = !DILocation(line: 43, column: 5, scope: !2616, inlinedAt: !2789)
!2794 = !DILocalVariable(name: "__dest", arg: 1, scope: !2795, file: !1373, line: 26, type: !2798)
!2795 = distinct !DISubprogram(name: "memcpy", scope: !1373, file: !1373, line: 26, type: !2796, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !2800)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{!46, !2798, !2799, !91}
!2798 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !46)
!2799 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2782)
!2800 = !{!2794, !2801, !2802}
!2801 = !DILocalVariable(name: "__src", arg: 2, scope: !2795, file: !1373, line: 26, type: !2799)
!2802 = !DILocalVariable(name: "__len", arg: 3, scope: !2795, file: !1373, line: 26, type: !91)
!2803 = !DILocation(line: 0, scope: !2795, inlinedAt: !2804)
!2804 = distinct !DILocation(line: 113, column: 10, scope: !2779)
!2805 = !DILocation(line: 29, column: 10, scope: !2795, inlinedAt: !2804)
!2806 = !DILocation(line: 113, column: 3, scope: !2779)
!2807 = distinct !DISubprogram(name: "xstrdup", scope: !154, file: !154, line: 119, type: !762, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !2808)
!2808 = !{!2809}
!2809 = !DILocalVariable(name: "string", arg: 1, scope: !2807, file: !154, line: 119, type: !6)
!2810 = !DILocation(line: 0, scope: !2807)
!2811 = !DILocation(line: 121, column: 27, scope: !2807)
!2812 = !DILocation(line: 121, column: 43, scope: !2807)
!2813 = !DILocation(line: 0, scope: !2779, inlinedAt: !2814)
!2814 = distinct !DILocation(line: 121, column: 10, scope: !2807)
!2815 = !DILocation(line: 0, scope: !2607, inlinedAt: !2816)
!2816 = distinct !DILocation(line: 113, column: 18, scope: !2779, inlinedAt: !2814)
!2817 = !DILocation(line: 41, column: 13, scope: !2607, inlinedAt: !2816)
!2818 = !DILocation(line: 42, column: 8, scope: !2616, inlinedAt: !2816)
!2819 = !DILocation(line: 42, column: 10, scope: !2616, inlinedAt: !2816)
!2820 = !DILocation(line: 43, column: 5, scope: !2616, inlinedAt: !2816)
!2821 = !DILocation(line: 0, scope: !2795, inlinedAt: !2822)
!2822 = distinct !DILocation(line: 113, column: 10, scope: !2779, inlinedAt: !2814)
!2823 = !DILocation(line: 29, column: 10, scope: !2795, inlinedAt: !2822)
!2824 = !DILocation(line: 121, column: 3, scope: !2807)
!2825 = distinct !DISubprogram(name: "xalloc_die", scope: !171, file: !171, line: 32, type: !769, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !170, retainedNodes: !4)
!2826 = !DILocation(line: 34, column: 10, scope: !2825)
!2827 = !DILocation(line: 34, column: 33, scope: !2825)
!2828 = !DILocation(line: 34, column: 3, scope: !2825)
!2829 = !DILocation(line: 40, column: 3, scope: !2825)
!2830 = distinct !DISubprogram(name: "rpl_calloc", scope: !173, file: !173, line: 42, type: !2595, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !2831)
!2831 = !{!2832, !2833, !2834, !2835}
!2832 = !DILocalVariable(name: "n", arg: 1, scope: !2830, file: !173, line: 42, type: !91)
!2833 = !DILocalVariable(name: "s", arg: 2, scope: !2830, file: !173, line: 42, type: !91)
!2834 = !DILocalVariable(name: "result", scope: !2830, file: !173, line: 44, type: !46)
!2835 = !DILocalVariable(name: "bytes", scope: !2836, file: !173, line: 56, type: !91)
!2836 = distinct !DILexicalBlock(scope: !2837, file: !173, line: 53, column: 5)
!2837 = distinct !DILexicalBlock(scope: !2830, file: !173, line: 47, column: 7)
!2838 = !DILocation(line: 0, scope: !2830)
!2839 = !DILocation(line: 47, column: 9, scope: !2837)
!2840 = !DILocation(line: 47, column: 14, scope: !2837)
!2841 = !DILocation(line: 0, scope: !2836)
!2842 = !DILocation(line: 57, column: 21, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2836, file: !173, line: 57, column: 11)
!2844 = !DILocation(line: 57, column: 11, scope: !2836)
!2845 = !DILocation(line: 59, column: 11, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2843, file: !173, line: 58, column: 9)
!2847 = !DILocation(line: 59, column: 17, scope: !2846)
!2848 = !DILocation(line: 65, column: 12, scope: !2830)
!2849 = !DILocation(line: 72, column: 3, scope: !2830)
!2850 = !DILocation(line: 73, column: 1, scope: !2830)
!2851 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !175, file: !175, line: 86, type: !2852, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !174, retainedNodes: !2866)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!91, !2854, !6, !91, !2855}
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1125, line: 6, baseType: !2857)
!2857 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1127, line: 21, baseType: !2858)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1127, line: 13, size: 64, elements: !2859)
!2859 = !{!2860, !2861}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2858, file: !1127, line: 15, baseType: !23, size: 32)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2858, file: !1127, line: 20, baseType: !2862, size: 32, offset: 32)
!2862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2858, file: !1127, line: 16, size: 32, elements: !2863)
!2863 = !{!2864, !2865}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2862, file: !1127, line: 18, baseType: !56, size: 32)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2862, file: !1127, line: 19, baseType: !1136, size: 32)
!2866 = !{!2867, !2868, !2869, !2870, !2871, !2872, !2873}
!2867 = !DILocalVariable(name: "pwc", arg: 1, scope: !2851, file: !175, line: 86, type: !2854)
!2868 = !DILocalVariable(name: "s", arg: 2, scope: !2851, file: !175, line: 86, type: !6)
!2869 = !DILocalVariable(name: "n", arg: 3, scope: !2851, file: !175, line: 86, type: !91)
!2870 = !DILocalVariable(name: "ps", arg: 4, scope: !2851, file: !175, line: 86, type: !2855)
!2871 = !DILocalVariable(name: "ret", scope: !2851, file: !175, line: 88, type: !91)
!2872 = !DILocalVariable(name: "wc", scope: !2851, file: !175, line: 89, type: !1141)
!2873 = !DILocalVariable(name: "uc", scope: !2874, file: !175, line: 156, type: !1003)
!2874 = distinct !DILexicalBlock(scope: !2875, file: !175, line: 155, column: 5)
!2875 = distinct !DILexicalBlock(scope: !2851, file: !175, line: 154, column: 7)
!2876 = !DILocation(line: 0, scope: !2851)
!2877 = !DILocation(line: 89, column: 3, scope: !2851)
!2878 = !DILocation(line: 105, column: 9, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2851, file: !175, line: 105, column: 7)
!2880 = !DILocation(line: 105, column: 7, scope: !2851)
!2881 = !DILocation(line: 145, column: 9, scope: !2851)
!2882 = !DILocation(line: 154, column: 19, scope: !2875)
!2883 = !DILocation(line: 154, column: 26, scope: !2875)
!2884 = !DILocation(line: 154, column: 41, scope: !2875)
!2885 = !DILocation(line: 154, column: 7, scope: !2851)
!2886 = !DILocation(line: 156, column: 26, scope: !2874)
!2887 = !DILocation(line: 0, scope: !2874)
!2888 = !DILocation(line: 157, column: 14, scope: !2874)
!2889 = !DILocation(line: 157, column: 12, scope: !2874)
!2890 = !DILocation(line: 163, column: 1, scope: !2851)
!2891 = !DISubprogram(name: "mbrtowc", scope: !1806, file: !1806, line: 296, type: !2892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!93, !37, !6, !93, !2894}
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2895 = distinct !DISubprogram(name: "close_stream", scope: !178, file: !178, line: 56, type: !2896, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !177, retainedNodes: !2932)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!23, !2898}
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2440, line: 7, baseType: !2900)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !667, line: 49, size: 1728, elements: !2901)
!2901 = !{!2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2900, file: !667, line: 51, baseType: !23, size: 32)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2900, file: !667, line: 54, baseType: !47, size: 64, offset: 64)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2900, file: !667, line: 55, baseType: !47, size: 64, offset: 128)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2900, file: !667, line: 56, baseType: !47, size: 64, offset: 192)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2900, file: !667, line: 57, baseType: !47, size: 64, offset: 256)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2900, file: !667, line: 58, baseType: !47, size: 64, offset: 320)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2900, file: !667, line: 59, baseType: !47, size: 64, offset: 384)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2900, file: !667, line: 60, baseType: !47, size: 64, offset: 448)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2900, file: !667, line: 61, baseType: !47, size: 64, offset: 512)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2900, file: !667, line: 64, baseType: !47, size: 64, offset: 576)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2900, file: !667, line: 65, baseType: !47, size: 64, offset: 640)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2900, file: !667, line: 66, baseType: !47, size: 64, offset: 704)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2900, file: !667, line: 68, baseType: !682, size: 64, offset: 768)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2900, file: !667, line: 70, baseType: !2916, size: 64, offset: 832)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2900, file: !667, line: 72, baseType: !23, size: 32, offset: 896)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2900, file: !667, line: 73, baseType: !23, size: 32, offset: 928)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2900, file: !667, line: 74, baseType: !688, size: 64, offset: 960)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2900, file: !667, line: 77, baseType: !90, size: 16, offset: 1024)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2900, file: !667, line: 78, baseType: !693, size: 8, offset: 1040)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2900, file: !667, line: 79, baseType: !695, size: 8, offset: 1048)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2900, file: !667, line: 81, baseType: !699, size: 64, offset: 1088)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2900, file: !667, line: 89, baseType: !702, size: 64, offset: 1152)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2900, file: !667, line: 91, baseType: !704, size: 64, offset: 1216)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2900, file: !667, line: 92, baseType: !707, size: 64, offset: 1280)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2900, file: !667, line: 93, baseType: !2916, size: 64, offset: 1344)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2900, file: !667, line: 94, baseType: !46, size: 64, offset: 1408)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2900, file: !667, line: 95, baseType: !91, size: 64, offset: 1472)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2900, file: !667, line: 96, baseType: !23, size: 32, offset: 1536)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2900, file: !667, line: 98, baseType: !714, size: 160, offset: 1568)
!2932 = !{!2933, !2934, !2936, !2937}
!2933 = !DILocalVariable(name: "stream", arg: 1, scope: !2895, file: !178, line: 56, type: !2898)
!2934 = !DILocalVariable(name: "some_pending", scope: !2895, file: !178, line: 58, type: !2935)
!2935 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!2936 = !DILocalVariable(name: "prev_fail", scope: !2895, file: !178, line: 59, type: !2935)
!2937 = !DILocalVariable(name: "fclose_fail", scope: !2895, file: !178, line: 60, type: !2935)
!2938 = !DILocation(line: 0, scope: !2895)
!2939 = !DILocation(line: 58, column: 30, scope: !2895)
!2940 = !DILocalVariable(name: "__stream", arg: 1, scope: !2941, file: !2942, line: 135, type: !2898)
!2941 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2942, file: !2942, line: 135, type: !2896, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !177, retainedNodes: !2943)
!2942 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!2943 = !{!2940}
!2944 = !DILocation(line: 0, scope: !2941, inlinedAt: !2945)
!2945 = distinct !DILocation(line: 59, column: 27, scope: !2895)
!2946 = !DILocation(line: 137, column: 10, scope: !2941, inlinedAt: !2945)
!2947 = !{!2948, !741, i64 0}
!2948 = !{!"_IO_FILE", !741, i64 0, !596, i64 8, !596, i64 16, !596, i64 24, !596, i64 32, !596, i64 40, !596, i64 48, !596, i64 56, !596, i64 64, !596, i64 72, !596, i64 80, !596, i64 88, !596, i64 96, !596, i64 104, !741, i64 112, !741, i64 116, !1882, i64 120, !1365, i64 128, !597, i64 130, !597, i64 131, !596, i64 136, !1882, i64 144, !596, i64 152, !596, i64 160, !596, i64 168, !596, i64 176, !1882, i64 184, !741, i64 192, !597, i64 196}
!2949 = !DILocation(line: 59, column: 43, scope: !2895)
!2950 = !DILocation(line: 60, column: 29, scope: !2895)
!2951 = !DILocation(line: 60, column: 45, scope: !2895)
!2952 = !DILocation(line: 70, column: 17, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2895, file: !178, line: 70, column: 7)
!2954 = !DILocation(line: 58, column: 50, scope: !2895)
!2955 = !DILocation(line: 70, column: 33, scope: !2953)
!2956 = !DILocation(line: 70, column: 53, scope: !2953)
!2957 = !DILocation(line: 70, column: 59, scope: !2953)
!2958 = !DILocation(line: 70, column: 7, scope: !2895)
!2959 = !DILocation(line: 72, column: 11, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2953, file: !178, line: 71, column: 5)
!2961 = !DILocation(line: 73, column: 9, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2960, file: !178, line: 72, column: 11)
!2963 = !DILocation(line: 73, column: 15, scope: !2962)
!2964 = !DILocation(line: 78, column: 1, scope: !2895)
!2965 = distinct !DISubprogram(name: "hard_locale", scope: !180, file: !180, line: 27, type: !2966, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !179, retainedNodes: !2968)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!16, !23}
!2968 = !{!2969, !2970}
!2969 = !DILocalVariable(name: "category", arg: 1, scope: !2965, file: !180, line: 27, type: !23)
!2970 = !DILocalVariable(name: "locale", scope: !2965, file: !180, line: 29, type: !2971)
!2971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !2972)
!2972 = !{!2973}
!2973 = !DISubrange(count: 257)
!2974 = !DILocation(line: 0, scope: !2965)
!2975 = !DILocation(line: 29, column: 3, scope: !2965)
!2976 = !DILocation(line: 29, column: 8, scope: !2965)
!2977 = !DILocation(line: 31, column: 7, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2965, file: !180, line: 31, column: 7)
!2979 = !DILocation(line: 31, column: 7, scope: !2965)
!2980 = !DILocation(line: 34, column: 12, scope: !2965)
!2981 = !DILocation(line: 34, column: 38, scope: !2965)
!2982 = !DILocation(line: 34, column: 41, scope: !2965)
!2983 = !DILocation(line: 34, column: 66, scope: !2965)
!2984 = !DILocation(line: 35, column: 1, scope: !2965)
!2985 = distinct !DISubprogram(name: "locale_charset", scope: !182, file: !182, line: 831, type: !2986, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2988)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{!6}
!2988 = !{!2989}
!2989 = !DILocalVariable(name: "codeset", scope: !2985, file: !182, line: 833, type: !6)
!2990 = !DILocation(line: 847, column: 13, scope: !2985)
!2991 = !DILocation(line: 0, scope: !2985)
!2992 = !DILocation(line: 911, column: 15, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2985, file: !182, line: 911, column: 7)
!2994 = !DILocation(line: 911, column: 7, scope: !2985)
!2995 = !DILocation(line: 1070, column: 13, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2997, file: !182, line: 1070, column: 13)
!2997 = distinct !DILexicalBlock(scope: !2998, file: !182, line: 1060, column: 7)
!2998 = distinct !DILexicalBlock(scope: !2985, file: !182, line: 1019, column: 3)
!2999 = !DILocation(line: 1070, column: 24, scope: !2996)
!3000 = !DILocation(line: 1070, column: 13, scope: !2997)
!3001 = !DILocation(line: 1158, column: 3, scope: !2985)
!3002 = !DISubprogram(name: "nl_langinfo", scope: !185, file: !185, line: 661, type: !3003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!47, !23}
!3005 = distinct !DISubprogram(name: "setlocale_null_r", scope: !571, file: !571, line: 269, type: !3006, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3008)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!23, !23, !47, !91}
!3008 = !{!3009, !3010, !3011}
!3009 = !DILocalVariable(name: "category", arg: 1, scope: !3005, file: !571, line: 269, type: !23)
!3010 = !DILocalVariable(name: "buf", arg: 2, scope: !3005, file: !571, line: 269, type: !47)
!3011 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3005, file: !571, line: 269, type: !91)
!3012 = !DILocation(line: 0, scope: !3005)
!3013 = !DILocalVariable(name: "category", arg: 1, scope: !3014, file: !571, line: 91, type: !23)
!3014 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !571, file: !571, line: 91, type: !3006, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3015)
!3015 = !{!3013, !3016, !3017, !3018, !3019}
!3016 = !DILocalVariable(name: "buf", arg: 2, scope: !3014, file: !571, line: 91, type: !47)
!3017 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3014, file: !571, line: 91, type: !91)
!3018 = !DILocalVariable(name: "result", scope: !3014, file: !571, line: 140, type: !6)
!3019 = !DILocalVariable(name: "length", scope: !3020, file: !571, line: 154, type: !91)
!3020 = distinct !DILexicalBlock(scope: !3021, file: !571, line: 153, column: 5)
!3021 = distinct !DILexicalBlock(scope: !3014, file: !571, line: 142, column: 7)
!3022 = !DILocation(line: 0, scope: !3014, inlinedAt: !3023)
!3023 = distinct !DILocation(line: 274, column: 10, scope: !3005)
!3024 = !DILocalVariable(name: "category", arg: 1, scope: !3025, file: !571, line: 60, type: !23)
!3025 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !571, file: !571, line: 60, type: !3026, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3028)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{!6, !23}
!3028 = !{!3024, !3029}
!3029 = !DILocalVariable(name: "result", scope: !3025, file: !571, line: 62, type: !6)
!3030 = !DILocation(line: 0, scope: !3025, inlinedAt: !3031)
!3031 = distinct !DILocation(line: 140, column: 24, scope: !3014, inlinedAt: !3023)
!3032 = !DILocation(line: 62, column: 24, scope: !3025, inlinedAt: !3031)
!3033 = !DILocation(line: 142, column: 14, scope: !3021, inlinedAt: !3023)
!3034 = !DILocation(line: 142, column: 7, scope: !3014, inlinedAt: !3023)
!3035 = !DILocation(line: 145, column: 19, scope: !3036, inlinedAt: !3023)
!3036 = distinct !DILexicalBlock(scope: !3037, file: !571, line: 145, column: 11)
!3037 = distinct !DILexicalBlock(scope: !3021, file: !571, line: 143, column: 5)
!3038 = !DILocation(line: 145, column: 11, scope: !3037, inlinedAt: !3023)
!3039 = !DILocation(line: 149, column: 16, scope: !3036, inlinedAt: !3023)
!3040 = !DILocation(line: 149, column: 9, scope: !3036, inlinedAt: !3023)
!3041 = !DILocation(line: 154, column: 23, scope: !3020, inlinedAt: !3023)
!3042 = !DILocation(line: 0, scope: !3020, inlinedAt: !3023)
!3043 = !DILocation(line: 155, column: 18, scope: !3044, inlinedAt: !3023)
!3044 = distinct !DILexicalBlock(scope: !3020, file: !571, line: 155, column: 11)
!3045 = !DILocation(line: 155, column: 11, scope: !3020, inlinedAt: !3023)
!3046 = !DILocation(line: 157, column: 39, scope: !3047, inlinedAt: !3023)
!3047 = distinct !DILexicalBlock(scope: !3044, file: !571, line: 156, column: 9)
!3048 = !DILocalVariable(name: "__dest", arg: 1, scope: !3049, file: !1373, line: 26, type: !2798)
!3049 = distinct !DISubprogram(name: "memcpy", scope: !1373, file: !1373, line: 26, type: !2796, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3050)
!3050 = !{!3048, !3051, !3052}
!3051 = !DILocalVariable(name: "__src", arg: 2, scope: !3049, file: !1373, line: 26, type: !2799)
!3052 = !DILocalVariable(name: "__len", arg: 3, scope: !3049, file: !1373, line: 26, type: !91)
!3053 = !DILocation(line: 0, scope: !3049, inlinedAt: !3054)
!3054 = distinct !DILocation(line: 157, column: 11, scope: !3047, inlinedAt: !3023)
!3055 = !DILocation(line: 29, column: 10, scope: !3049, inlinedAt: !3054)
!3056 = !DILocation(line: 158, column: 11, scope: !3047, inlinedAt: !3023)
!3057 = !DILocation(line: 162, column: 23, scope: !3058, inlinedAt: !3023)
!3058 = distinct !DILexicalBlock(scope: !3059, file: !571, line: 162, column: 15)
!3059 = distinct !DILexicalBlock(scope: !3044, file: !571, line: 161, column: 9)
!3060 = !DILocation(line: 162, column: 15, scope: !3059, inlinedAt: !3023)
!3061 = !DILocation(line: 167, column: 44, scope: !3062, inlinedAt: !3023)
!3062 = distinct !DILexicalBlock(scope: !3058, file: !571, line: 163, column: 13)
!3063 = !DILocation(line: 0, scope: !3049, inlinedAt: !3064)
!3064 = distinct !DILocation(line: 167, column: 15, scope: !3062, inlinedAt: !3023)
!3065 = !DILocation(line: 29, column: 10, scope: !3049, inlinedAt: !3064)
!3066 = !DILocation(line: 168, column: 15, scope: !3062, inlinedAt: !3023)
!3067 = !DILocation(line: 168, column: 32, scope: !3062, inlinedAt: !3023)
!3068 = !DILocation(line: 169, column: 13, scope: !3062, inlinedAt: !3023)
!3069 = !DILocation(line: 0, scope: !3021, inlinedAt: !3023)
!3070 = !DILocation(line: 274, column: 3, scope: !3005)
!3071 = distinct !DISubprogram(name: "setlocale_null", scope: !571, file: !571, line: 301, type: !3026, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3072)
!3072 = !{!3073}
!3073 = !DILocalVariable(name: "category", arg: 1, scope: !3071, file: !571, line: 301, type: !23)
!3074 = !DILocation(line: 0, scope: !3071)
!3075 = !DILocation(line: 0, scope: !3025, inlinedAt: !3076)
!3076 = distinct !DILocation(line: 304, column: 10, scope: !3071)
!3077 = !DILocation(line: 62, column: 24, scope: !3025, inlinedAt: !3076)
!3078 = !DILocation(line: 304, column: 3, scope: !3071)
!3079 = distinct !DISubprogram(name: "rpl_fclose", scope: !573, file: !573, line: 58, type: !3080, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3116)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!23, !3082}
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2440, line: 7, baseType: !3084)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !667, line: 49, size: 1728, elements: !3085)
!3085 = !{!3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3084, file: !667, line: 51, baseType: !23, size: 32)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3084, file: !667, line: 54, baseType: !47, size: 64, offset: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3084, file: !667, line: 55, baseType: !47, size: 64, offset: 128)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3084, file: !667, line: 56, baseType: !47, size: 64, offset: 192)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3084, file: !667, line: 57, baseType: !47, size: 64, offset: 256)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3084, file: !667, line: 58, baseType: !47, size: 64, offset: 320)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3084, file: !667, line: 59, baseType: !47, size: 64, offset: 384)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3084, file: !667, line: 60, baseType: !47, size: 64, offset: 448)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3084, file: !667, line: 61, baseType: !47, size: 64, offset: 512)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3084, file: !667, line: 64, baseType: !47, size: 64, offset: 576)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3084, file: !667, line: 65, baseType: !47, size: 64, offset: 640)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3084, file: !667, line: 66, baseType: !47, size: 64, offset: 704)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3084, file: !667, line: 68, baseType: !682, size: 64, offset: 768)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3084, file: !667, line: 70, baseType: !3100, size: 64, offset: 832)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3084, file: !667, line: 72, baseType: !23, size: 32, offset: 896)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3084, file: !667, line: 73, baseType: !23, size: 32, offset: 928)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3084, file: !667, line: 74, baseType: !688, size: 64, offset: 960)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3084, file: !667, line: 77, baseType: !90, size: 16, offset: 1024)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3084, file: !667, line: 78, baseType: !693, size: 8, offset: 1040)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3084, file: !667, line: 79, baseType: !695, size: 8, offset: 1048)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3084, file: !667, line: 81, baseType: !699, size: 64, offset: 1088)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3084, file: !667, line: 89, baseType: !702, size: 64, offset: 1152)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3084, file: !667, line: 91, baseType: !704, size: 64, offset: 1216)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3084, file: !667, line: 92, baseType: !707, size: 64, offset: 1280)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3084, file: !667, line: 93, baseType: !3100, size: 64, offset: 1344)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3084, file: !667, line: 94, baseType: !46, size: 64, offset: 1408)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3084, file: !667, line: 95, baseType: !91, size: 64, offset: 1472)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3084, file: !667, line: 96, baseType: !23, size: 32, offset: 1536)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3084, file: !667, line: 98, baseType: !714, size: 160, offset: 1568)
!3116 = !{!3117, !3118, !3119, !3120}
!3117 = !DILocalVariable(name: "fp", arg: 1, scope: !3079, file: !573, line: 58, type: !3082)
!3118 = !DILocalVariable(name: "saved_errno", scope: !3079, file: !573, line: 60, type: !23)
!3119 = !DILocalVariable(name: "fd", scope: !3079, file: !573, line: 61, type: !23)
!3120 = !DILocalVariable(name: "result", scope: !3079, file: !573, line: 62, type: !23)
!3121 = !DILocation(line: 0, scope: !3079)
!3122 = !DILocation(line: 65, column: 8, scope: !3079)
!3123 = !DILocation(line: 66, column: 10, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3079, file: !573, line: 66, column: 7)
!3125 = !DILocation(line: 66, column: 7, scope: !3079)
!3126 = !DILocation(line: 67, column: 12, scope: !3124)
!3127 = !DILocation(line: 67, column: 5, scope: !3124)
!3128 = !DILocation(line: 72, column: 9, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3079, file: !573, line: 72, column: 7)
!3130 = !DILocation(line: 72, column: 23, scope: !3129)
!3131 = !DILocation(line: 72, column: 33, scope: !3129)
!3132 = !DILocation(line: 72, column: 26, scope: !3129)
!3133 = !DILocation(line: 72, column: 59, scope: !3129)
!3134 = !DILocation(line: 73, column: 7, scope: !3129)
!3135 = !DILocation(line: 73, column: 10, scope: !3129)
!3136 = !DILocation(line: 72, column: 7, scope: !3079)
!3137 = !DILocation(line: 100, column: 12, scope: !3079)
!3138 = !DILocation(line: 105, column: 7, scope: !3079)
!3139 = !DILocation(line: 74, column: 19, scope: !3129)
!3140 = !DILocation(line: 105, column: 19, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !3079, file: !573, line: 105, column: 7)
!3142 = !DILocation(line: 107, column: 13, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3141, file: !573, line: 106, column: 5)
!3144 = !DILocation(line: 109, column: 5, scope: !3143)
!3145 = !DILocation(line: 112, column: 1, scope: !3079)
!3146 = !DISubprogram(name: "fileno", scope: !662, file: !662, line: 785, type: !3147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!23, !3100}
!3149 = !DISubprogram(name: "fclose", scope: !662, file: !662, line: 213, type: !3147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3150 = !DISubprogram(name: "lseek", scope: !776, file: !776, line: 334, type: !3151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!690, !23, !690, !23}
!3153 = distinct !DISubprogram(name: "rpl_fflush", scope: !575, file: !575, line: 129, type: !3154, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !574, retainedNodes: !3190)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!23, !3156}
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2440, line: 7, baseType: !3158)
!3158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !667, line: 49, size: 1728, elements: !3159)
!3159 = !{!3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3158, file: !667, line: 51, baseType: !23, size: 32)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3158, file: !667, line: 54, baseType: !47, size: 64, offset: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3158, file: !667, line: 55, baseType: !47, size: 64, offset: 128)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3158, file: !667, line: 56, baseType: !47, size: 64, offset: 192)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3158, file: !667, line: 57, baseType: !47, size: 64, offset: 256)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3158, file: !667, line: 58, baseType: !47, size: 64, offset: 320)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3158, file: !667, line: 59, baseType: !47, size: 64, offset: 384)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3158, file: !667, line: 60, baseType: !47, size: 64, offset: 448)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3158, file: !667, line: 61, baseType: !47, size: 64, offset: 512)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3158, file: !667, line: 64, baseType: !47, size: 64, offset: 576)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3158, file: !667, line: 65, baseType: !47, size: 64, offset: 640)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3158, file: !667, line: 66, baseType: !47, size: 64, offset: 704)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3158, file: !667, line: 68, baseType: !682, size: 64, offset: 768)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3158, file: !667, line: 70, baseType: !3174, size: 64, offset: 832)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3158, file: !667, line: 72, baseType: !23, size: 32, offset: 896)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3158, file: !667, line: 73, baseType: !23, size: 32, offset: 928)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3158, file: !667, line: 74, baseType: !688, size: 64, offset: 960)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3158, file: !667, line: 77, baseType: !90, size: 16, offset: 1024)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3158, file: !667, line: 78, baseType: !693, size: 8, offset: 1040)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3158, file: !667, line: 79, baseType: !695, size: 8, offset: 1048)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3158, file: !667, line: 81, baseType: !699, size: 64, offset: 1088)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3158, file: !667, line: 89, baseType: !702, size: 64, offset: 1152)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3158, file: !667, line: 91, baseType: !704, size: 64, offset: 1216)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3158, file: !667, line: 92, baseType: !707, size: 64, offset: 1280)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3158, file: !667, line: 93, baseType: !3174, size: 64, offset: 1344)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3158, file: !667, line: 94, baseType: !46, size: 64, offset: 1408)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3158, file: !667, line: 95, baseType: !91, size: 64, offset: 1472)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3158, file: !667, line: 96, baseType: !23, size: 32, offset: 1536)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3158, file: !667, line: 98, baseType: !714, size: 160, offset: 1568)
!3190 = !{!3191}
!3191 = !DILocalVariable(name: "stream", arg: 1, scope: !3153, file: !575, line: 129, type: !3156)
!3192 = !DILocation(line: 0, scope: !3153)
!3193 = !DILocation(line: 150, column: 14, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3153, file: !575, line: 150, column: 7)
!3195 = !DILocation(line: 150, column: 22, scope: !3194)
!3196 = !DILocation(line: 150, column: 27, scope: !3194)
!3197 = !DILocation(line: 150, column: 7, scope: !3153)
!3198 = !DILocation(line: 151, column: 12, scope: !3194)
!3199 = !DILocation(line: 151, column: 5, scope: !3194)
!3200 = !DILocalVariable(name: "fp", arg: 1, scope: !3201, file: !575, line: 41, type: !3156)
!3201 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !575, file: !575, line: 41, type: !3202, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !574, retainedNodes: !3204)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{null, !3156}
!3204 = !{!3200}
!3205 = !DILocation(line: 0, scope: !3201, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 156, column: 3, scope: !3153)
!3207 = !DILocation(line: 43, column: 11, scope: !3208, inlinedAt: !3206)
!3208 = distinct !DILexicalBlock(scope: !3201, file: !575, line: 43, column: 7)
!3209 = !DILocation(line: 43, column: 18, scope: !3208, inlinedAt: !3206)
!3210 = !DILocation(line: 43, column: 7, scope: !3201, inlinedAt: !3206)
!3211 = !DILocation(line: 45, column: 5, scope: !3208, inlinedAt: !3206)
!3212 = !DILocation(line: 158, column: 10, scope: !3153)
!3213 = !DILocation(line: 158, column: 3, scope: !3153)
!3214 = !DILocation(line: 235, column: 1, scope: !3153)
!3215 = !DISubprogram(name: "fflush", scope: !662, file: !662, line: 218, type: !3216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!23, !3174}
!3218 = distinct !DISubprogram(name: "rpl_fseeko", scope: !577, file: !577, line: 28, type: !3219, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !576, retainedNodes: !3256)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!23, !3221, !3255, !23}
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2440, line: 7, baseType: !3223)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !667, line: 49, size: 1728, elements: !3224)
!3224 = !{!3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3223, file: !667, line: 51, baseType: !23, size: 32)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3223, file: !667, line: 54, baseType: !47, size: 64, offset: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3223, file: !667, line: 55, baseType: !47, size: 64, offset: 128)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3223, file: !667, line: 56, baseType: !47, size: 64, offset: 192)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3223, file: !667, line: 57, baseType: !47, size: 64, offset: 256)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3223, file: !667, line: 58, baseType: !47, size: 64, offset: 320)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3223, file: !667, line: 59, baseType: !47, size: 64, offset: 384)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3223, file: !667, line: 60, baseType: !47, size: 64, offset: 448)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3223, file: !667, line: 61, baseType: !47, size: 64, offset: 512)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3223, file: !667, line: 64, baseType: !47, size: 64, offset: 576)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3223, file: !667, line: 65, baseType: !47, size: 64, offset: 640)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3223, file: !667, line: 66, baseType: !47, size: 64, offset: 704)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3223, file: !667, line: 68, baseType: !682, size: 64, offset: 768)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3223, file: !667, line: 70, baseType: !3239, size: 64, offset: 832)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3223, file: !667, line: 72, baseType: !23, size: 32, offset: 896)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3223, file: !667, line: 73, baseType: !23, size: 32, offset: 928)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3223, file: !667, line: 74, baseType: !688, size: 64, offset: 960)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3223, file: !667, line: 77, baseType: !90, size: 16, offset: 1024)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3223, file: !667, line: 78, baseType: !693, size: 8, offset: 1040)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3223, file: !667, line: 79, baseType: !695, size: 8, offset: 1048)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3223, file: !667, line: 81, baseType: !699, size: 64, offset: 1088)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3223, file: !667, line: 89, baseType: !702, size: 64, offset: 1152)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3223, file: !667, line: 91, baseType: !704, size: 64, offset: 1216)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3223, file: !667, line: 92, baseType: !707, size: 64, offset: 1280)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3223, file: !667, line: 93, baseType: !3239, size: 64, offset: 1344)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3223, file: !667, line: 94, baseType: !46, size: 64, offset: 1408)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3223, file: !667, line: 95, baseType: !91, size: 64, offset: 1472)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3223, file: !667, line: 96, baseType: !23, size: 32, offset: 1536)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3223, file: !667, line: 98, baseType: !714, size: 160, offset: 1568)
!3255 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !662, line: 63, baseType: !688)
!3256 = !{!3257, !3258, !3259, !3260}
!3257 = !DILocalVariable(name: "fp", arg: 1, scope: !3218, file: !577, line: 28, type: !3221)
!3258 = !DILocalVariable(name: "offset", arg: 2, scope: !3218, file: !577, line: 28, type: !3255)
!3259 = !DILocalVariable(name: "whence", arg: 3, scope: !3218, file: !577, line: 28, type: !23)
!3260 = !DILocalVariable(name: "pos", scope: !3261, file: !577, line: 117, type: !3255)
!3261 = distinct !DILexicalBlock(scope: !3262, file: !577, line: 113, column: 5)
!3262 = distinct !DILexicalBlock(scope: !3218, file: !577, line: 52, column: 7)
!3263 = !DILocation(line: 0, scope: !3218)
!3264 = !DILocation(line: 52, column: 11, scope: !3262)
!3265 = !{!2948, !596, i64 16}
!3266 = !DILocation(line: 52, column: 31, scope: !3262)
!3267 = !{!2948, !596, i64 8}
!3268 = !DILocation(line: 52, column: 24, scope: !3262)
!3269 = !DILocation(line: 53, column: 7, scope: !3262)
!3270 = !DILocation(line: 53, column: 14, scope: !3262)
!3271 = !{!2948, !596, i64 40}
!3272 = !DILocation(line: 53, column: 35, scope: !3262)
!3273 = !{!2948, !596, i64 32}
!3274 = !DILocation(line: 53, column: 28, scope: !3262)
!3275 = !DILocation(line: 54, column: 7, scope: !3262)
!3276 = !DILocation(line: 54, column: 14, scope: !3262)
!3277 = !{!2948, !596, i64 72}
!3278 = !DILocation(line: 54, column: 28, scope: !3262)
!3279 = !DILocation(line: 52, column: 7, scope: !3218)
!3280 = !DILocation(line: 117, column: 26, scope: !3261)
!3281 = !DILocation(line: 117, column: 19, scope: !3261)
!3282 = !DILocation(line: 0, scope: !3261)
!3283 = !DILocation(line: 118, column: 15, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3261, file: !577, line: 118, column: 11)
!3285 = !DILocation(line: 118, column: 11, scope: !3261)
!3286 = !DILocation(line: 129, column: 11, scope: !3261)
!3287 = !DILocation(line: 129, column: 18, scope: !3261)
!3288 = !DILocation(line: 130, column: 11, scope: !3261)
!3289 = !DILocation(line: 130, column: 19, scope: !3261)
!3290 = !{!2948, !1882, i64 144}
!3291 = !DILocation(line: 161, column: 7, scope: !3261)
!3292 = !DILocation(line: 163, column: 10, scope: !3218)
!3293 = !DILocation(line: 163, column: 3, scope: !3218)
!3294 = !DILocation(line: 164, column: 1, scope: !3218)
!3295 = !DISubprogram(name: "fseeko", scope: !662, file: !662, line: 712, type: !3296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!23, !3239, !690, !23}
