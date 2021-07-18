; ModuleID = 'coreutils-8.32/src/yes.bc'
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
@.str.1 = private unnamed_addr constant [40 x i8] c"Usage: %s [STRING]...\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"Repeatedly output a line with all specified STRING(s), or 'y'.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
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
@.str.10 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), align 8, !dbg !0
@.str.28 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !9
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !14
@.str.31 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.32 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.33 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !17
@opterr = external local_unnamed_addr global i32, align 4
@.str.38 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.39, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.40, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !24
@.str.2.39 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.40 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1.43 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !41
@.str.48 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.49 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.50 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.52, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.53, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.54, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.55, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.56, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.57, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.59, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.60, i32 0, i32 0), i8* null], align 16, !dbg !49
@.str.51 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.52 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.53 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.54 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.55 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.56 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.57 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.58 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.59 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.60 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !95
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !101
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !113
@.str.11.61 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.62 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.63 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.64 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.65 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.66 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.67 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !120
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !127
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !115
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !129
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !135
@.str.1.107 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.117 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.120 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.121 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) #0 !dbg !594 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !598, metadata !DIExpression()), !dbg !599
  %3 = icmp eq i32 %0, 0, !dbg !600
  br i1 %3, label %9, label %4, !dbg !602

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !603, !tbaa !605
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #26, !dbg !603
  %7 = load i8*, i8** @program_name, align 8, !dbg !603, !tbaa !605
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #26, !dbg !603
  br label %58, !dbg !603

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 5) #26, !dbg !609
  %11 = load i8*, i8** @program_name, align 8, !dbg !609, !tbaa !605
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11) #26, !dbg !609
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 5) #26, !dbg !611
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !611, !tbaa !605
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !611
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #26, !dbg !612
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !612, !tbaa !605
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !612
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #26, !dbg !613
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !613, !tbaa !605
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !613
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), metadata !614, metadata !DIExpression()) #26, !dbg !633
  %22 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !635
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %22) #26, !dbg !635
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !620, metadata !DIExpression()) #26, !dbg !636
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %22, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #26, !dbg !636
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), metadata !629, metadata !DIExpression()) #26, !dbg !633
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !630, metadata !DIExpression()) #26, !dbg !633
  %23 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !637
  call void @llvm.dbg.value(metadata %struct.infomap* %23, metadata !630, metadata !DIExpression()) #26, !dbg !633
  br label %24, !dbg !638

24:                                               ; preds = %29, %9
  %25 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), %9 ]
  %26 = phi %struct.infomap* [ %30, %29 ], [ %23, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !630, metadata !DIExpression()) #26, !dbg !633
  %27 = tail call i32 @strcmp(i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* nonnull %25) #27, !dbg !639
  %28 = icmp eq i32 %27, 0, !dbg !639
  br i1 %28, label %34, label %29, !dbg !638

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i64 1, !dbg !640
  call void @llvm.dbg.value(metadata %struct.infomap* %30, metadata !630, metadata !DIExpression()) #26, !dbg !633
  %31 = getelementptr inbounds %struct.infomap, %struct.infomap* %30, i64 0, i32 0, !dbg !641
  %32 = load i8*, i8** %31, align 8, !dbg !641, !tbaa !642
  %33 = icmp eq i8* %32, null, !dbg !644
  br i1 %33, label %34, label %24, !dbg !645, !llvm.loop !646

34:                                               ; preds = %29, %24
  %35 = phi %struct.infomap* [ %26, %24 ], [ %30, %29 ]
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 0, i32 1, !dbg !648
  %37 = load i8*, i8** %36, align 8, !dbg !648, !tbaa !650
  %38 = icmp eq i8* %37, null, !dbg !651
  %39 = select i1 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %37, !dbg !652
  call void @llvm.dbg.value(metadata i8* %39, metadata !629, metadata !DIExpression()) #26, !dbg !633
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i32 5) #26, !dbg !653
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0)) #26, !dbg !653
  %42 = tail call i8* @setlocale(i32 5, i8* null) #26, !dbg !654
  call void @llvm.dbg.value(metadata i8* %42, metadata !632, metadata !DIExpression()) #26, !dbg !633
  %43 = icmp eq i8* %42, null, !dbg !655
  br i1 %43, label %51, label %44, !dbg !657

44:                                               ; preds = %34
  %45 = tail call i32 @strncmp(i8* nonnull %42, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i64 3) #27, !dbg !658
  %46 = icmp eq i32 %45, 0, !dbg !658
  br i1 %46, label %51, label %47, !dbg !659

47:                                               ; preds = %44
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.24, i64 0, i64 0), i32 5) #26, !dbg !660
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !660, !tbaa !605
  %50 = tail call i32 @fputs_unlocked(i8* %48, %struct._IO_FILE* %49) #26, !dbg !660
  br label %51, !dbg !662

51:                                               ; preds = %34, %44, %47
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i64 0, i64 0), i32 5) #26, !dbg !663
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #26, !dbg !663
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.26, i64 0, i64 0), i32 5) #26, !dbg !664
  %55 = icmp eq i8* %39, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), !dbg !664
  %56 = select i1 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !664
  %57 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %54, i8* %39, i8* %56) #26, !dbg !664
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %22) #26, !dbg !665
  br label %58

58:                                               ; preds = %51, %4
  tail call void @exit(i32 %0) #28, !dbg !666
  unreachable, !dbg !666
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !667 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !671 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !727 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !731 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !736, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata i8** %1, metadata !737, metadata !DIExpression()), !dbg !752
  %3 = load i8*, i8** %1, align 8, !dbg !753, !tbaa !605
  tail call void @set_program_name(i8* %3) #26, !dbg !754
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #26, !dbg !755
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #26, !dbg !756
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #26, !dbg !757
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #26, !dbg !758
  %8 = load i8*, i8** @Version, align 8, !dbg !759, !tbaa !605
  tail call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %8, i1 zeroext true, void (i32)* nonnull @usage, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* null) #26, !dbg !760
  %9 = load i32, i32* @optind, align 4, !dbg !761, !tbaa !762
  %10 = sext i32 %9 to i64, !dbg !764
  %11 = getelementptr inbounds i8*, i8** %1, i64 %10, !dbg !764
  call void @llvm.dbg.value(metadata i8** %11, metadata !738, metadata !DIExpression()), !dbg !752
  %12 = sext i32 %0 to i64, !dbg !765
  %13 = getelementptr inbounds i8*, i8** %1, i64 %12, !dbg !765
  call void @llvm.dbg.value(metadata i8** %13, metadata !739, metadata !DIExpression()), !dbg !752
  %14 = icmp eq i32 %9, %0, !dbg !766
  br i1 %14, label %15, label %17, !dbg !768

15:                                               ; preds = %2
  %16 = getelementptr inbounds i8*, i8** %13, i64 1, !dbg !769
  call void @llvm.dbg.value(metadata i8** %16, metadata !739, metadata !DIExpression()), !dbg !752
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8** %13, align 8, !dbg !770, !tbaa !605
  br label %17, !dbg !771

17:                                               ; preds = %15, %2
  %18 = phi i8** [ %16, %15 ], [ %13, %2 ], !dbg !752
  call void @llvm.dbg.value(metadata i8** %18, metadata !739, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata i64 0, metadata !740, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata i8 1, metadata !741, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata i8** %11, metadata !742, metadata !DIExpression()), !dbg !752
  %19 = load i8*, i8** %11, align 8, !dbg !772, !tbaa !605
  %20 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %19) #27, !dbg !773
  call void @llvm.dbg.value(metadata i64 %20, metadata !743, metadata !DIExpression()), !dbg !774
  %21 = add i64 %20, 1, !dbg !775
  call void @llvm.dbg.value(metadata i64 %21, metadata !740, metadata !DIExpression()), !dbg !752
  %22 = getelementptr inbounds i8*, i8** %11, i64 1, !dbg !776
  %23 = icmp ult i8** %22, %18, !dbg !778
  br i1 %23, label %24, label %43, !dbg !779

24:                                               ; preds = %17, %24
  %25 = phi i8** [ %38, %24 ], [ %22, %17 ]
  %26 = phi i64 [ %37, %24 ], [ %21, %17 ]
  %27 = phi i64 [ %35, %24 ], [ %20, %17 ]
  %28 = phi i8* [ %32, %24 ], [ %19, %17 ]
  %29 = phi i8 [ %34, %24 ], [ 1, %17 ]
  call void @llvm.dbg.value(metadata i8 %29, metadata !741, metadata !DIExpression()), !dbg !752
  %30 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !780
  %31 = getelementptr inbounds i8, i8* %30, i64 %27, !dbg !781
  %32 = load i8*, i8** %25, align 8, !dbg !782, !tbaa !605
  %33 = icmp eq i8* %31, %32, !dbg !783
  %34 = select i1 %33, i8 %29, i8 0, !dbg !784
  call void @llvm.dbg.value(metadata i64 %26, metadata !740, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata i8 %34, metadata !741, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata i8** %25, metadata !742, metadata !DIExpression()), !dbg !752
  %35 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %32) #27, !dbg !773
  call void @llvm.dbg.value(metadata i64 %35, metadata !743, metadata !DIExpression()), !dbg !774
  %36 = add i64 %26, 1, !dbg !785
  %37 = add i64 %36, %35, !dbg !775
  call void @llvm.dbg.value(metadata i64 %37, metadata !740, metadata !DIExpression()), !dbg !752
  %38 = getelementptr inbounds i8*, i8** %25, i64 1, !dbg !776
  %39 = icmp ult i8** %38, %18, !dbg !778
  br i1 %39, label %24, label %40, !dbg !779

40:                                               ; preds = %24
  %41 = and i8 %34, 1, !dbg !786
  %42 = icmp eq i8 %41, 0, !dbg !786
  br label %43, !dbg !786

43:                                               ; preds = %40, %17
  %44 = phi i1 [ false, %17 ], [ %42, %40 ]
  %45 = phi i64 [ %21, %17 ], [ %37, %40 ], !dbg !775
  call void @llvm.dbg.value(metadata i8 %34, metadata !741, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata i8** undef, metadata !742, metadata !DIExpression()), !dbg !752
  %46 = icmp ult i64 %45, 4097, !dbg !786
  %47 = select i1 %46, i64 8192, i64 %45, !dbg !788
  call void @llvm.dbg.value(metadata i64 %47, metadata !740, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata i8 undef, metadata !741, metadata !DIExpression()), !dbg !752
  %48 = or i1 %44, %46, !dbg !789
  br i1 %48, label %49, label %51, !dbg !789

49:                                               ; preds = %43
  %50 = tail call noalias i8* @xmalloc(i64 %47) #26, !dbg !790
  br label %51, !dbg !789

51:                                               ; preds = %43, %49
  %52 = phi i8* [ %50, %49 ], [ %19, %43 ], !dbg !789
  call void @llvm.dbg.value(metadata i8* %52, metadata !745, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata i64 0, metadata !746, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata i8** %11, metadata !742, metadata !DIExpression()), !dbg !752
  br label %53, !dbg !791

53:                                               ; preds = %60, %51
  %54 = phi i8** [ %11, %51 ], [ %64, %60 ], !dbg !752
  %55 = phi i64 [ 0, %51 ], [ %62, %60 ], !dbg !752
  call void @llvm.dbg.value(metadata i64 %55, metadata !746, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata i8** %54, metadata !742, metadata !DIExpression()), !dbg !752
  %56 = load i8*, i8** %54, align 8, !dbg !792, !tbaa !605
  %57 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %56) #27, !dbg !793
  call void @llvm.dbg.value(metadata i64 %57, metadata !747, metadata !DIExpression()), !dbg !794
  br i1 %48, label %58, label %60, !dbg !795

58:                                               ; preds = %53
  %59 = getelementptr inbounds i8, i8* %52, i64 %55, !dbg !796
  call void @llvm.dbg.value(metadata i8* %59, metadata !798, metadata !DIExpression()) #26, !dbg !810
  call void @llvm.dbg.value(metadata i8* %56, metadata !808, metadata !DIExpression()) #26, !dbg !810
  call void @llvm.dbg.value(metadata i64 %57, metadata !809, metadata !DIExpression()) #26, !dbg !810
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %59, i8* nonnull align 1 %56, i64 %57, i1 false) #26, !dbg !812
  br label %60, !dbg !813

60:                                               ; preds = %58, %53
  %61 = add i64 %57, %55, !dbg !814
  call void @llvm.dbg.value(metadata i64 %61, metadata !746, metadata !DIExpression()), !dbg !752
  %62 = add i64 %61, 1, !dbg !815
  call void @llvm.dbg.value(metadata i64 %62, metadata !746, metadata !DIExpression()), !dbg !752
  %63 = getelementptr inbounds i8, i8* %52, i64 %61, !dbg !816
  store i8 32, i8* %63, align 1, !dbg !817, !tbaa !818
  %64 = getelementptr inbounds i8*, i8** %54, i64 1, !dbg !819
  call void @llvm.dbg.value(metadata i8** %64, metadata !742, metadata !DIExpression()), !dbg !752
  %65 = icmp ult i8** %64, %18, !dbg !820
  br i1 %65, label %53, label %66, !dbg !821, !llvm.loop !822

66:                                               ; preds = %60
  %67 = getelementptr inbounds i8, i8* %52, i64 %61, !dbg !816
  store i8 10, i8* %67, align 1, !dbg !824, !tbaa !818
  call void @llvm.dbg.value(metadata i64 %62, metadata !749, metadata !DIExpression()), !dbg !752
  %68 = udiv i64 %47, %62, !dbg !825
  call void @llvm.dbg.value(metadata i64 %68, metadata !750, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i64 %62, metadata !746, metadata !DIExpression()), !dbg !752
  %69 = add i64 %68, -1, !dbg !827
  call void @llvm.dbg.value(metadata i64 %69, metadata !750, metadata !DIExpression()), !dbg !826
  %70 = icmp eq i64 %69, 0, !dbg !829
  br i1 %70, label %89, label %71, !dbg !829

71:                                               ; preds = %66
  %72 = add i64 %68, -2, !dbg !829
  %73 = and i64 %69, 3, !dbg !829
  %74 = icmp eq i64 %73, 0, !dbg !829
  br i1 %74, label %84, label %75, !dbg !829

75:                                               ; preds = %71, %75
  %76 = phi i64 [ %81, %75 ], [ %69, %71 ]
  %77 = phi i64 [ %80, %75 ], [ %62, %71 ]
  %78 = phi i64 [ %82, %75 ], [ %73, %71 ]
  call void @llvm.dbg.value(metadata i64 %77, metadata !746, metadata !DIExpression()), !dbg !752
  %79 = getelementptr inbounds i8, i8* %52, i64 %77, !dbg !830
  call void @llvm.dbg.value(metadata i8* %79, metadata !798, metadata !DIExpression()) #26, !dbg !832
  call void @llvm.dbg.value(metadata i8* %52, metadata !808, metadata !DIExpression()) #26, !dbg !832
  call void @llvm.dbg.value(metadata i64 %62, metadata !809, metadata !DIExpression()) #26, !dbg !832
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %79, i8* nonnull align 1 %52, i64 %62, i1 false) #26, !dbg !834
  %80 = add i64 %77, %62, !dbg !835
  call void @llvm.dbg.value(metadata i64 %76, metadata !750, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i64 %80, metadata !746, metadata !DIExpression()), !dbg !752
  %81 = add i64 %76, -1, !dbg !827
  call void @llvm.dbg.value(metadata i64 %81, metadata !750, metadata !DIExpression()), !dbg !826
  %82 = add i64 %78, -1, !dbg !829
  %83 = icmp eq i64 %82, 0, !dbg !829
  br i1 %83, label %84, label %75, !dbg !829, !llvm.loop !836

84:                                               ; preds = %75, %71
  %85 = phi i64 [ undef, %71 ], [ %80, %75 ]
  %86 = phi i64 [ %69, %71 ], [ %81, %75 ]
  %87 = phi i64 [ %62, %71 ], [ %80, %75 ]
  %88 = icmp ult i64 %72, 3, !dbg !829
  br i1 %88, label %89, label %91, !dbg !829

89:                                               ; preds = %84, %91, %66
  %90 = phi i64 [ %62, %66 ], [ %85, %84 ], [ %101, %91 ], !dbg !752
  br label %104, !dbg !838

91:                                               ; preds = %84, %91
  %92 = phi i64 [ %102, %91 ], [ %86, %84 ]
  %93 = phi i64 [ %101, %91 ], [ %87, %84 ]
  call void @llvm.dbg.value(metadata i64 %93, metadata !746, metadata !DIExpression()), !dbg !752
  %94 = getelementptr inbounds i8, i8* %52, i64 %93, !dbg !830
  call void @llvm.dbg.value(metadata i8* %94, metadata !798, metadata !DIExpression()) #26, !dbg !832
  call void @llvm.dbg.value(metadata i8* %52, metadata !808, metadata !DIExpression()) #26, !dbg !832
  call void @llvm.dbg.value(metadata i64 %62, metadata !809, metadata !DIExpression()) #26, !dbg !832
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %94, i8* nonnull align 1 %52, i64 %62, i1 false) #26, !dbg !834
  %95 = add i64 %93, %62, !dbg !835
  call void @llvm.dbg.value(metadata i64 %92, metadata !750, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i64 %95, metadata !746, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata i64 %92, metadata !750, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !826
  call void @llvm.dbg.value(metadata i64 %95, metadata !746, metadata !DIExpression()), !dbg !752
  %96 = getelementptr inbounds i8, i8* %52, i64 %95, !dbg !830
  call void @llvm.dbg.value(metadata i8* %96, metadata !798, metadata !DIExpression()) #26, !dbg !832
  call void @llvm.dbg.value(metadata i8* %52, metadata !808, metadata !DIExpression()) #26, !dbg !832
  call void @llvm.dbg.value(metadata i64 %62, metadata !809, metadata !DIExpression()) #26, !dbg !832
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %96, i8* nonnull align 1 %52, i64 %62, i1 false) #26, !dbg !834
  %97 = add i64 %95, %62, !dbg !835
  call void @llvm.dbg.value(metadata i64 %92, metadata !750, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !826
  call void @llvm.dbg.value(metadata i64 %97, metadata !746, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata i64 %92, metadata !750, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !826
  call void @llvm.dbg.value(metadata i64 %97, metadata !746, metadata !DIExpression()), !dbg !752
  %98 = getelementptr inbounds i8, i8* %52, i64 %97, !dbg !830
  call void @llvm.dbg.value(metadata i8* %98, metadata !798, metadata !DIExpression()) #26, !dbg !832
  call void @llvm.dbg.value(metadata i8* %52, metadata !808, metadata !DIExpression()) #26, !dbg !832
  call void @llvm.dbg.value(metadata i64 %62, metadata !809, metadata !DIExpression()) #26, !dbg !832
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %98, i8* nonnull align 1 %52, i64 %62, i1 false) #26, !dbg !834
  %99 = add i64 %97, %62, !dbg !835
  call void @llvm.dbg.value(metadata i64 %92, metadata !750, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !826
  call void @llvm.dbg.value(metadata i64 %99, metadata !746, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata i64 %92, metadata !750, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !826
  call void @llvm.dbg.value(metadata i64 %99, metadata !746, metadata !DIExpression()), !dbg !752
  %100 = getelementptr inbounds i8, i8* %52, i64 %99, !dbg !830
  call void @llvm.dbg.value(metadata i8* %100, metadata !798, metadata !DIExpression()) #26, !dbg !832
  call void @llvm.dbg.value(metadata i8* %52, metadata !808, metadata !DIExpression()) #26, !dbg !832
  call void @llvm.dbg.value(metadata i64 %62, metadata !809, metadata !DIExpression()) #26, !dbg !832
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %100, i8* nonnull align 1 %52, i64 %62, i1 false) #26, !dbg !834
  %101 = add i64 %99, %62, !dbg !835
  call void @llvm.dbg.value(metadata i64 %92, metadata !750, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !826
  call void @llvm.dbg.value(metadata i64 %101, metadata !746, metadata !DIExpression()), !dbg !752
  %102 = add i64 %92, -4, !dbg !827
  call void @llvm.dbg.value(metadata i64 %102, metadata !750, metadata !DIExpression()), !dbg !826
  %103 = icmp eq i64 %102, 0, !dbg !829
  br i1 %103, label %89, label %91, !dbg !829, !llvm.loop !839

104:                                              ; preds = %89, %104
  %105 = tail call i64 @full_write(i32 1, i8* %52, i64 %90) #26, !dbg !841
  %106 = icmp eq i64 %105, %90, !dbg !842
  br i1 %106, label %104, label %107, !dbg !838, !llvm.loop !843

107:                                              ; preds = %104
  %108 = tail call i32* @__errno_location() #29, !dbg !845
  %109 = load i32, i32* %108, align 4, !dbg !845, !tbaa !762
  %110 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 5) #26, !dbg !846
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %109, i8* %110) #26, !dbg !847
  ret i32 1, !dbg !848
}

; Function Attrs: nounwind
declare !dbg !849 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !852 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !855 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #9

declare !dbg !862 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #10 !dbg !866 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !868, metadata !DIExpression()), !dbg !869
  store i8* %0, i8** @file_name, align 8, !dbg !870, !tbaa !605
  ret void, !dbg !871
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #10 !dbg !872 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !876, metadata !DIExpression()), !dbg !877
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !878, !tbaa !879
  ret void, !dbg !881
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !882 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !887, !tbaa !605
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #26, !dbg !888
  %3 = icmp eq i32 %2, 0, !dbg !889
  br i1 %3, label %22, label %4, !dbg !890

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !891, !tbaa !879, !range !892
  %6 = icmp eq i8 %5, 0, !dbg !891
  br i1 %6, label %11, label %7, !dbg !893

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #29, !dbg !894
  %9 = load i32, i32* %8, align 4, !dbg !894, !tbaa !762
  %10 = icmp eq i32 %9, 32, !dbg !895
  br i1 %10, label %22, label %11, !dbg !896

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i32 5) #26, !dbg !897
  call void @llvm.dbg.value(metadata i8* %12, metadata !884, metadata !DIExpression()), !dbg !898
  %13 = load i8*, i8** @file_name, align 8, !dbg !899, !tbaa !605
  %14 = icmp eq i8* %13, null, !dbg !899
  %15 = tail call i32* @__errno_location() #29, !dbg !901
  %16 = load i32, i32* %15, align 4, !dbg !901, !tbaa !762
  br i1 %14, label %19, label %17, !dbg !902

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #26, !dbg !903
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.32, i64 0, i64 0), i8* %18, i8* %12) #26, !dbg !904
  br label %20, !dbg !904

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.33, i64 0, i64 0), i8* %12) #26, !dbg !905
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !906, !tbaa !762
  tail call void @_exit(i32 %21) #28, !dbg !907
  unreachable, !dbg !907

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !908, !tbaa !605
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #26, !dbg !910
  %25 = icmp eq i32 %24, 0, !dbg !911
  br i1 %25, label %28, label %26, !dbg !912

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !913, !tbaa !762
  tail call void @_exit(i32 %27) #28, !dbg !914
  unreachable, !dbg !914

28:                                               ; preds = %22
  ret void, !dbg !915
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @full_write(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !916 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !920, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata i8* %1, metadata !921, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata i64 %2, metadata !922, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata i64 0, metadata !923, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata i8* %1, metadata !924, metadata !DIExpression()), !dbg !927
  %4 = icmp eq i64 %2, 0, !dbg !928
  br i1 %4, label %17, label %5, !dbg !929

5:                                                ; preds = %3, %12
  %6 = phi i64 [ %15, %12 ], [ %2, %3 ]
  %7 = phi i8* [ %14, %12 ], [ %1, %3 ]
  %8 = phi i64 [ %13, %12 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i64 %6, metadata !922, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata i8* %7, metadata !924, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata i64 %8, metadata !923, metadata !DIExpression()), !dbg !927
  %9 = tail call i64 @safe_write(i32 %0, i8* %7, i64 %6) #26, !dbg !930
  call void @llvm.dbg.value(metadata i64 %9, metadata !925, metadata !DIExpression()), !dbg !931
  switch i64 %9, label %12 [
    i64 -1, label %17
    i64 0, label %10
  ], !dbg !932

10:                                               ; preds = %5
  %11 = tail call i32* @__errno_location() #29, !dbg !933
  store i32 28, i32* %11, align 4, !dbg !936, !tbaa !762
  br label %17, !dbg !937

12:                                               ; preds = %5
  %13 = add i64 %9, %8, !dbg !938
  call void @llvm.dbg.value(metadata i64 %13, metadata !923, metadata !DIExpression()), !dbg !927
  %14 = getelementptr inbounds i8, i8* %7, i64 %9, !dbg !939
  call void @llvm.dbg.value(metadata i8* %14, metadata !924, metadata !DIExpression()), !dbg !927
  %15 = sub i64 %6, %9, !dbg !940
  call void @llvm.dbg.value(metadata i64 %15, metadata !922, metadata !DIExpression()), !dbg !927
  %16 = icmp eq i64 %15, 0, !dbg !928
  br i1 %16, label %17, label %5, !dbg !929

17:                                               ; preds = %12, %5, %3, %10
  %18 = phi i64 [ %8, %10 ], [ 0, %3 ], [ %13, %12 ], [ %8, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !923, metadata !DIExpression()), !dbg !927
  ret i64 %18, !dbg !941
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_long_options(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, void (i32)* nocapture %5, ...) local_unnamed_addr #8 !dbg !942 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !947, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata i8** %1, metadata !948, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata i8* %2, metadata !949, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata i8* %3, metadata !950, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata i8* %4, metadata !951, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !952, metadata !DIExpression()), !dbg !971
  %8 = load i32, i32* @opterr, align 4, !dbg !972, !tbaa !762
  call void @llvm.dbg.value(metadata i32 %8, metadata !954, metadata !DIExpression()), !dbg !971
  store i32 0, i32* @opterr, align 4, !dbg !973, !tbaa !762
  %9 = icmp eq i32 %0, 2, !dbg !974
  br i1 %9, label %10, label %17, !dbg !975

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #26, !dbg !976
  call void @llvm.dbg.value(metadata i32 %11, metadata !953, metadata !DIExpression()), !dbg !971
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !977

12:                                               ; preds = %10
  tail call void %5(i32 0) #26, !dbg !978
  br label %17, !dbg !979

13:                                               ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !980
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #26, !dbg !980
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !955, metadata !DIExpression()), !dbg !981
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !982
  call void @llvm.va_start(i8* nonnull %14), !dbg !982
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !983, !tbaa !605
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #26, !dbg !984
  call void @exit(i32 0) #28, !dbg !985
  unreachable, !dbg !985

17:                                               ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !986, !tbaa !762
  store i32 0, i32* @optind, align 4, !dbg !987, !tbaa !762
  ret void, !dbg !988
}

; Function Attrs: nounwind
declare !dbg !989 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_gnu_standard_options_only(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, i1 zeroext %5, void (i32)* nocapture %6, ...) local_unnamed_addr #8 !dbg !995 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !999, metadata !DIExpression()), !dbg !1014
  call void @llvm.dbg.value(metadata i8** %1, metadata !1000, metadata !DIExpression()), !dbg !1014
  call void @llvm.dbg.value(metadata i8* %2, metadata !1001, metadata !DIExpression()), !dbg !1014
  call void @llvm.dbg.value(metadata i8* %3, metadata !1002, metadata !DIExpression()), !dbg !1014
  call void @llvm.dbg.value(metadata i8* %4, metadata !1003, metadata !DIExpression()), !dbg !1014
  call void @llvm.dbg.value(metadata i1 %5, metadata !1004, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1014
  call void @llvm.dbg.value(metadata void (i32)* %6, metadata !1005, metadata !DIExpression()), !dbg !1014
  %9 = load i32, i32* @opterr, align 4, !dbg !1015, !tbaa !762
  call void @llvm.dbg.value(metadata i32 %9, metadata !1007, metadata !DIExpression()), !dbg !1014
  store i32 1, i32* @opterr, align 4, !dbg !1016, !tbaa !762
  %10 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.43, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), !dbg !1017
  call void @llvm.dbg.value(metadata i8* %10, metadata !1008, metadata !DIExpression()), !dbg !1014
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* %10, %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #26, !dbg !1018
  call void @llvm.dbg.value(metadata i32 %11, metadata !1006, metadata !DIExpression()), !dbg !1014
  switch i32 %11, label %16 [
    i32 -1, label %20
    i32 104, label %18
    i32 118, label %12
  ], !dbg !1019

12:                                               ; preds = %7
  %13 = bitcast [1 x %struct.__va_list_tag]* %8 to i8*, !dbg !1020
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #26, !dbg !1020
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %8, metadata !1009, metadata !DIExpression()), !dbg !1021
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !1022
  call void @llvm.va_start(i8* nonnull %13), !dbg !1022
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1023, !tbaa !605
  call void @version_etc_va(%struct._IO_FILE* %15, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %14) #26, !dbg !1024
  call void @exit(i32 0) #28, !dbg !1025
  unreachable, !dbg !1025

16:                                               ; preds = %7
  %17 = load volatile i32, i32* @exit_failure, align 4, !dbg !1026, !tbaa !762
  br label %18, !dbg !1027

18:                                               ; preds = %7, %16
  %19 = phi i32 [ %17, %16 ], [ 0, %7 ]
  tail call void %6(i32 %19) #26, !dbg !1028
  br label %20, !dbg !1029

20:                                               ; preds = %18, %7
  store i32 %9, i32* @opterr, align 4, !dbg !1029, !tbaa !762
  ret void, !dbg !1030
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1031 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1033, metadata !DIExpression()), !dbg !1036
  %2 = icmp eq i8* %0, null, !dbg !1037
  br i1 %2, label %3, label %6, !dbg !1039

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1040, !tbaa !605
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.48, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #30, !dbg !1042
  tail call void @abort() #28, !dbg !1043
  unreachable, !dbg !1043

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #27, !dbg !1044
  call void @llvm.dbg.value(metadata i8* %7, metadata !1034, metadata !DIExpression()), !dbg !1036
  %8 = icmp eq i8* %7, null, !dbg !1045
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1046
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1046
  call void @llvm.dbg.value(metadata i8* %10, metadata !1035, metadata !DIExpression()), !dbg !1036
  %11 = ptrtoint i8* %10 to i64, !dbg !1047
  %12 = ptrtoint i8* %0 to i64, !dbg !1047
  %13 = sub i64 %11, %12, !dbg !1047
  %14 = icmp sgt i64 %13, 6, !dbg !1049
  br i1 %14, label %15, label %24, !dbg !1050

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1051
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.49, i64 0, i64 0), i64 7) #27, !dbg !1052
  %18 = icmp eq i32 %17, 0, !dbg !1053
  br i1 %18, label %19, label %24, !dbg !1054

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1033, metadata !DIExpression()), !dbg !1036
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.50, i64 0, i64 0), i64 3) #27, !dbg !1055
  %21 = icmp eq i32 %20, 0, !dbg !1058
  br i1 %21, label %22, label %24, !dbg !1059

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1060
  call void @llvm.dbg.value(metadata i8* %23, metadata !1033, metadata !DIExpression()), !dbg !1036
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1062, !tbaa !605
  br label %24, !dbg !1063

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1033, metadata !DIExpression()), !dbg !1036
  store i8* %25, i8** @program_name, align 8, !dbg !1064, !tbaa !605
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1065, !tbaa !605
  ret void, !dbg !1066
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #13

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1067 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1072, metadata !DIExpression()), !dbg !1075
  %2 = tail call i32* @__errno_location() #29, !dbg !1076
  %3 = load i32, i32* %2, align 4, !dbg !1076, !tbaa !762
  call void @llvm.dbg.value(metadata i32 %3, metadata !1073, metadata !DIExpression()), !dbg !1075
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1077
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1077
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1077
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #26, !dbg !1078
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1078
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1074, metadata !DIExpression()), !dbg !1075
  store i32 %3, i32* %2, align 4, !dbg !1079, !tbaa !762
  ret %struct.quoting_options* %8, !dbg !1080
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #14 !dbg !1081 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1087, metadata !DIExpression()), !dbg !1088
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1089
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1089
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1090
  %5 = load i32, i32* %4, align 8, !dbg !1090, !tbaa !1091
  ret i32 %5, !dbg !1093
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !1094 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1098, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i32 %1, metadata !1099, metadata !DIExpression()), !dbg !1100
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1101
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1101
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1102
  store i32 %1, i32* %5, align 8, !dbg !1103, !tbaa !1091
  ret void, !dbg !1104
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #15 !dbg !1105 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1109, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i8 %1, metadata !1110, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i32 %2, metadata !1111, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i8 %1, metadata !1112, metadata !DIExpression()), !dbg !1118
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1119
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1119
  %6 = lshr i8 %1, 5, !dbg !1120
  %7 = zext i8 %6 to i64, !dbg !1120
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1121
  call void @llvm.dbg.value(metadata i32* %8, metadata !1114, metadata !DIExpression()), !dbg !1118
  %9 = and i8 %1, 31, !dbg !1122
  %10 = zext i8 %9 to i32, !dbg !1122
  call void @llvm.dbg.value(metadata i32 %10, metadata !1116, metadata !DIExpression()), !dbg !1118
  %11 = load i32, i32* %8, align 4, !dbg !1123, !tbaa !762
  %12 = lshr i32 %11, %10, !dbg !1124
  %13 = and i32 %12, 1, !dbg !1125
  call void @llvm.dbg.value(metadata i32 %13, metadata !1117, metadata !DIExpression()), !dbg !1118
  %14 = and i32 %2, 1, !dbg !1126
  %15 = xor i32 %13, %14, !dbg !1127
  %16 = shl i32 %15, %10, !dbg !1128
  %17 = xor i32 %16, %11, !dbg !1129
  store i32 %17, i32* %8, align 4, !dbg !1129, !tbaa !762
  ret i32 %13, !dbg !1130
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #15 !dbg !1131 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1135, metadata !DIExpression()), !dbg !1138
  call void @llvm.dbg.value(metadata i32 %1, metadata !1136, metadata !DIExpression()), !dbg !1138
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1139
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1141
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1135, metadata !DIExpression()), !dbg !1138
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1142
  %6 = load i32, i32* %5, align 4, !dbg !1142, !tbaa !1143
  call void @llvm.dbg.value(metadata i32 %6, metadata !1137, metadata !DIExpression()), !dbg !1138
  store i32 %1, i32* %5, align 4, !dbg !1144, !tbaa !1143
  ret i32 %6, !dbg !1145
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1146 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1150, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.value(metadata i8* %1, metadata !1151, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.value(metadata i8* %2, metadata !1152, metadata !DIExpression()), !dbg !1153
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1154
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1156
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1150, metadata !DIExpression()), !dbg !1153
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1157
  store i32 10, i32* %6, align 8, !dbg !1158, !tbaa !1091
  %7 = icmp ne i8* %1, null, !dbg !1159
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1161
  br i1 %9, label %11, label %10, !dbg !1161

10:                                               ; preds = %3
  tail call void @abort() #28, !dbg !1162
  unreachable, !dbg !1162

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1163
  store i8* %1, i8** %12, align 8, !dbg !1164, !tbaa !1165
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1166
  store i8* %2, i8** %13, align 8, !dbg !1167, !tbaa !1168
  ret void, !dbg !1169
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1170 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1174, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i64 %1, metadata !1175, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8* %2, metadata !1176, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i64 %3, metadata !1177, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1178, metadata !DIExpression()), !dbg !1182
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1183
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1183
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1179, metadata !DIExpression()), !dbg !1182
  %8 = tail call i32* @__errno_location() #29, !dbg !1184
  %9 = load i32, i32* %8, align 4, !dbg !1184, !tbaa !762
  call void @llvm.dbg.value(metadata i32 %9, metadata !1180, metadata !DIExpression()), !dbg !1182
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1185
  %11 = load i32, i32* %10, align 8, !dbg !1185, !tbaa !1091
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1186
  %13 = load i32, i32* %12, align 4, !dbg !1186, !tbaa !1143
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1187
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1188
  %16 = load i8*, i8** %15, align 8, !dbg !1188, !tbaa !1165
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1189
  %18 = load i8*, i8** %17, align 8, !dbg !1189, !tbaa !1168
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %19, metadata !1181, metadata !DIExpression()), !dbg !1182
  store i32 %9, i32* %8, align 4, !dbg !1191, !tbaa !762
  ret i64 %19, !dbg !1192
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1193 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1199, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %1, metadata !1200, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8* %2, metadata !1201, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %3, metadata !1202, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 %4, metadata !1203, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 %5, metadata !1204, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32* %6, metadata !1205, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8* %7, metadata !1206, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8* %8, metadata !1207, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 0, metadata !1209, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 0, metadata !1210, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8* null, metadata !1211, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 0, metadata !1212, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 0, metadata !1213, metadata !DIExpression()), !dbg !1269
  %13 = tail call i64 @__ctype_get_mb_cur_max() #26, !dbg !1270
  %14 = icmp eq i64 %13, 1, !dbg !1271
  call void @llvm.dbg.value(metadata i1 %14, metadata !1214, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1269
  %15 = lshr i32 %5, 1, !dbg !1272
  %16 = trunc i32 %15 to i8, !dbg !1272
  %17 = and i8 %16, 1, !dbg !1272
  call void @llvm.dbg.value(metadata i8 %17, metadata !1215, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 0, metadata !1216, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 0, metadata !1217, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 1, metadata !1218, metadata !DIExpression()), !dbg !1269
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1273

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1274
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1275
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1276
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1277
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1269
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1278
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1279
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1280
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1200, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 %38, metadata !1218, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 %37, metadata !1217, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 %36, metadata !1216, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 %35, metadata !1215, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %34, metadata !1202, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 %33, metadata !1213, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %32, metadata !1212, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8* %31, metadata !1211, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %30, metadata !1210, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 0, metadata !1209, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8* %29, metadata !1207, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8* %28, metadata !1206, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 %27, metadata !1203, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.label(metadata !1263), !dbg !1281
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
  ], !dbg !1282

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1215, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 5, metadata !1203, metadata !DIExpression()), !dbg !1269
  br label %92, !dbg !1283

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1215, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 5, metadata !1203, metadata !DIExpression()), !dbg !1269
  %42 = and i8 %35, 1, !dbg !1285
  %43 = icmp eq i8 %42, 0, !dbg !1285
  br i1 %43, label %44, label %92, !dbg !1283

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1287
  br i1 %45, label %92, label %46, !dbg !1290

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1287, !tbaa !818
  br label %92, !dbg !1287

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.61, i64 0, i64 0), i32 %27), !dbg !1291
  call void @llvm.dbg.value(metadata i8* %48, metadata !1206, metadata !DIExpression()), !dbg !1269
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), i32 %27), !dbg !1295
  call void @llvm.dbg.value(metadata i8* %49, metadata !1207, metadata !DIExpression()), !dbg !1269
  br label %50, !dbg !1296

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1207, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8* %51, metadata !1206, metadata !DIExpression()), !dbg !1269
  %53 = and i8 %35, 1, !dbg !1297
  %54 = icmp eq i8 %53, 0, !dbg !1297
  br i1 %54, label %55, label %70, !dbg !1299

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1211, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 0, metadata !1209, metadata !DIExpression()), !dbg !1269
  %56 = load i8, i8* %51, align 1, !dbg !1300, !tbaa !818
  %57 = icmp eq i8 %56, 0, !dbg !1303
  br i1 %57, label %70, label %58, !dbg !1303

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1211, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %61, metadata !1209, metadata !DIExpression()), !dbg !1269
  %62 = icmp ult i64 %61, %39, !dbg !1304
  br i1 %62, label %63, label %65, !dbg !1307

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1304
  store i8 %59, i8* %64, align 1, !dbg !1304, !tbaa !818
  br label %65, !dbg !1304

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1307
  call void @llvm.dbg.value(metadata i64 %66, metadata !1209, metadata !DIExpression()), !dbg !1269
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1308
  call void @llvm.dbg.value(metadata i8* %67, metadata !1211, metadata !DIExpression()), !dbg !1269
  %68 = load i8, i8* %67, align 1, !dbg !1300, !tbaa !818
  %69 = icmp eq i8 %68, 0, !dbg !1303
  br i1 %69, label %70, label %58, !dbg !1303, !llvm.loop !1309

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1311
  call void @llvm.dbg.value(metadata i64 %71, metadata !1209, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 1, metadata !1213, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8* %52, metadata !1211, metadata !DIExpression()), !dbg !1269
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #27, !dbg !1312
  call void @llvm.dbg.value(metadata i64 %72, metadata !1212, metadata !DIExpression()), !dbg !1269
  br label %92, !dbg !1313

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1213, metadata !DIExpression()), !dbg !1269
  br label %74, !dbg !1314

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1269
  call void @llvm.dbg.value(metadata i8 %75, metadata !1213, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 1, metadata !1215, metadata !DIExpression()), !dbg !1269
  br label %76, !dbg !1315

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1277
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1269
  call void @llvm.dbg.value(metadata i8 %78, metadata !1215, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 %77, metadata !1213, metadata !DIExpression()), !dbg !1269
  %79 = and i8 %78, 1, !dbg !1316
  %80 = icmp eq i8 %79, 0, !dbg !1316
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1318
  br label %82, !dbg !1318

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1269
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1272
  call void @llvm.dbg.value(metadata i8 %84, metadata !1215, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 %83, metadata !1213, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 2, metadata !1203, metadata !DIExpression()), !dbg !1269
  %85 = and i8 %84, 1, !dbg !1319
  %86 = icmp eq i8 %85, 0, !dbg !1319
  br i1 %86, label %87, label %92, !dbg !1321

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1322
  br i1 %88, label %92, label %89, !dbg !1325

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1322, !tbaa !818
  br label %92, !dbg !1322

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1215, metadata !DIExpression()), !dbg !1269
  br label %92, !dbg !1326

91:                                               ; preds = %26
  call void @abort() #28, !dbg !1327
  unreachable, !dbg !1327

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1311
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %40 ], !dbg !1269
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1269
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1269
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1269
  call void @llvm.dbg.value(metadata i8 %100, metadata !1215, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 %99, metadata !1213, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %98, metadata !1212, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8* %97, metadata !1211, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %96, metadata !1209, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8* %95, metadata !1207, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8* %94, metadata !1206, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 %93, metadata !1203, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 0, metadata !1208, metadata !DIExpression()), !dbg !1269
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
  br label %121, !dbg !1328

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1329
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1311
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1274
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1278
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1279
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1280
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1200, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 %128, metadata !1218, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 %127, metadata !1217, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 %126, metadata !1216, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %125, metadata !1202, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %124, metadata !1210, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %123, metadata !1209, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %122, metadata !1208, metadata !DIExpression()), !dbg !1269
  %130 = icmp eq i64 %125, -1, !dbg !1330
  br i1 %130, label %131, label %135, !dbg !1331

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1332
  %133 = load i8, i8* %132, align 1, !dbg !1332, !tbaa !818
  %134 = icmp eq i8 %133, 0, !dbg !1333
  br i1 %134, label %587, label %137, !dbg !1334

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1335
  br i1 %136, label %587, label %137, !dbg !1334

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1224, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i8 0, metadata !1225, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i8 0, metadata !1226, metadata !DIExpression()), !dbg !1336
  br i1 %106, label %138, label %153, !dbg !1337

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1339
  %140 = and i1 %107, %130, !dbg !1340
  br i1 %140, label %141, label %143, !dbg !1340

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #27, !dbg !1341
  call void @llvm.dbg.value(metadata i64 %142, metadata !1202, metadata !DIExpression()), !dbg !1269
  br label %143, !dbg !1342

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1342
  call void @llvm.dbg.value(metadata i64 %144, metadata !1202, metadata !DIExpression()), !dbg !1269
  %145 = icmp ugt i64 %139, %144, !dbg !1343
  br i1 %145, label %153, label %146, !dbg !1344

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1345
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1346
  %149 = icmp ne i32 %148, 0, !dbg !1347
  %150 = or i1 %149, %109, !dbg !1348
  %151 = xor i1 %149, true, !dbg !1348
  %152 = zext i1 %151 to i8, !dbg !1348
  br i1 %150, label %153, label %646, !dbg !1348

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1336
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1336
  call void @llvm.dbg.value(metadata i8 %156, metadata !1224, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i64 %154, metadata !1202, metadata !DIExpression()), !dbg !1269
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1349
  %158 = load i8, i8* %157, align 1, !dbg !1349, !tbaa !818
  call void @llvm.dbg.value(metadata i8 %158, metadata !1219, metadata !DIExpression()), !dbg !1336
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
  ], !dbg !1350

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1351

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1352

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1225, metadata !DIExpression()), !dbg !1336
  %162 = and i8 %126, 1, !dbg !1356
  %163 = icmp eq i8 %162, 0, !dbg !1356
  %164 = and i1 %110, %163, !dbg !1356
  br i1 %164, label %165, label %181, !dbg !1356

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1358
  br i1 %166, label %167, label %169, !dbg !1362

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1358
  store i8 39, i8* %168, align 1, !dbg !1358, !tbaa !818
  br label %169, !dbg !1358

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1362
  call void @llvm.dbg.value(metadata i64 %170, metadata !1209, metadata !DIExpression()), !dbg !1269
  %171 = icmp ult i64 %170, %129, !dbg !1363
  br i1 %171, label %172, label %174, !dbg !1366

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1363
  store i8 36, i8* %173, align 1, !dbg !1363, !tbaa !818
  br label %174, !dbg !1363

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1366
  call void @llvm.dbg.value(metadata i64 %175, metadata !1209, metadata !DIExpression()), !dbg !1269
  %176 = icmp ult i64 %175, %129, !dbg !1367
  br i1 %176, label %177, label %179, !dbg !1370

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1367
  store i8 39, i8* %178, align 1, !dbg !1367, !tbaa !818
  br label %179, !dbg !1367

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1370
  call void @llvm.dbg.value(metadata i64 %180, metadata !1209, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 1, metadata !1216, metadata !DIExpression()), !dbg !1269
  br label %181, !dbg !1371

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1269
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1269
  call void @llvm.dbg.value(metadata i8 %183, metadata !1216, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %182, metadata !1209, metadata !DIExpression()), !dbg !1269
  %184 = icmp ult i64 %182, %129, !dbg !1372
  br i1 %184, label %185, label %187, !dbg !1375

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1372
  store i8 92, i8* %186, align 1, !dbg !1372, !tbaa !818
  br label %187, !dbg !1372

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1375
  call void @llvm.dbg.value(metadata i64 %188, metadata !1209, metadata !DIExpression()), !dbg !1269
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1376
  br i1 %191, label %192, label %473, !dbg !1376

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1378
  %194 = load i8, i8* %193, align 1, !dbg !1378, !tbaa !818
  %195 = add i8 %194, -48, !dbg !1379
  %196 = icmp ult i8 %195, 10, !dbg !1379
  br i1 %196, label %197, label %473, !dbg !1379

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1380
  br i1 %198, label %199, label %201, !dbg !1384

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1380
  store i8 48, i8* %200, align 1, !dbg !1380, !tbaa !818
  br label %201, !dbg !1380

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1384
  call void @llvm.dbg.value(metadata i64 %202, metadata !1209, metadata !DIExpression()), !dbg !1269
  %203 = icmp ult i64 %202, %129, !dbg !1385
  br i1 %203, label %204, label %206, !dbg !1388

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1385
  store i8 48, i8* %205, align 1, !dbg !1385, !tbaa !818
  br label %206, !dbg !1385

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1388
  call void @llvm.dbg.value(metadata i64 %207, metadata !1209, metadata !DIExpression()), !dbg !1269
  br label %473, !dbg !1389

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1390

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1391

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1392

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1394
  br i1 %214, label %215, label %473, !dbg !1394

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1396
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1397
  %218 = load i8, i8* %217, align 1, !dbg !1397, !tbaa !818
  %219 = icmp eq i8 %218, 63, !dbg !1398
  br i1 %219, label %220, label %473, !dbg !1399

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1400
  %222 = load i8, i8* %221, align 1, !dbg !1400, !tbaa !818
  %223 = sext i8 %222 to i32, !dbg !1400
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
  ], !dbg !1401

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1402

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1219, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i64 undef, metadata !1208, metadata !DIExpression()), !dbg !1269
  %226 = icmp ult i64 %123, %129, !dbg !1404
  br i1 %226, label %227, label %229, !dbg !1407

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1404
  store i8 63, i8* %228, align 1, !dbg !1404, !tbaa !818
  br label %229, !dbg !1404

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !1407
  call void @llvm.dbg.value(metadata i64 %230, metadata !1209, metadata !DIExpression()), !dbg !1269
  %231 = icmp ult i64 %230, %129, !dbg !1408
  br i1 %231, label %232, label %234, !dbg !1411

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1408
  store i8 34, i8* %233, align 1, !dbg !1408, !tbaa !818
  br label %234, !dbg !1408

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !1411
  call void @llvm.dbg.value(metadata i64 %235, metadata !1209, metadata !DIExpression()), !dbg !1269
  %236 = icmp ult i64 %235, %129, !dbg !1412
  br i1 %236, label %237, label %239, !dbg !1415

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1412
  store i8 34, i8* %238, align 1, !dbg !1412, !tbaa !818
  br label %239, !dbg !1412

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !1415
  call void @llvm.dbg.value(metadata i64 %240, metadata !1209, metadata !DIExpression()), !dbg !1269
  %241 = icmp ult i64 %240, %129, !dbg !1416
  br i1 %241, label %242, label %244, !dbg !1419

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1416
  store i8 63, i8* %243, align 1, !dbg !1416, !tbaa !818
  br label %244, !dbg !1416

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !1419
  call void @llvm.dbg.value(metadata i64 %245, metadata !1209, metadata !DIExpression()), !dbg !1269
  br label %473, !dbg !1420

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1223, metadata !DIExpression()), !dbg !1336
  br label %256, !dbg !1421

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1223, metadata !DIExpression()), !dbg !1336
  br label %256, !dbg !1422

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1223, metadata !DIExpression()), !dbg !1336
  br label %254, !dbg !1423

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1223, metadata !DIExpression()), !dbg !1336
  br label %254, !dbg !1424

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1223, metadata !DIExpression()), !dbg !1336
  br label %256, !dbg !1425

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1223, metadata !DIExpression()), !dbg !1336
  br i1 %110, label %252, label %253, !dbg !1426

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !1427

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !1430

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !1432
  call void @llvm.dbg.value(metadata i8 %255, metadata !1223, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.label(metadata !1264), !dbg !1433
  br i1 %111, label %256, label %631, !dbg !1434

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !1432
  call void @llvm.dbg.value(metadata i8 %257, metadata !1223, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.label(metadata !1265), !dbg !1436
  br i1 %102, label %495, label %473, !dbg !1437

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1438

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1439, !tbaa !818
  %261 = icmp eq i8 %260, 0, !dbg !1441
  br i1 %261, label %262, label %473, !dbg !1442

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !1443
  br i1 %263, label %264, label %473, !dbg !1445

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1226, metadata !DIExpression()), !dbg !1336
  br label %265, !dbg !1446

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1336
  call void @llvm.dbg.value(metadata i8 %266, metadata !1226, metadata !DIExpression()), !dbg !1336
  br i1 %111, label %473, label %631, !dbg !1447

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1217, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 1, metadata !1226, metadata !DIExpression()), !dbg !1336
  br i1 %110, label %268, label %473, !dbg !1449

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !1450

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !1453
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !1455
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !1455
  %274 = select i1 %272, i64 %129, i64 0, !dbg !1455
  call void @llvm.dbg.value(metadata i64 %274, metadata !1200, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %273, metadata !1210, metadata !DIExpression()), !dbg !1269
  %275 = icmp ult i64 %123, %274, !dbg !1456
  br i1 %275, label %276, label %278, !dbg !1459

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1456
  store i8 39, i8* %277, align 1, !dbg !1456, !tbaa !818
  br label %278, !dbg !1456

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !1459
  call void @llvm.dbg.value(metadata i64 %279, metadata !1209, metadata !DIExpression()), !dbg !1269
  %280 = icmp ult i64 %279, %274, !dbg !1460
  br i1 %280, label %281, label %283, !dbg !1463

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1460
  store i8 92, i8* %282, align 1, !dbg !1460, !tbaa !818
  br label %283, !dbg !1460

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !1463
  call void @llvm.dbg.value(metadata i64 %284, metadata !1209, metadata !DIExpression()), !dbg !1269
  %285 = icmp ult i64 %284, %274, !dbg !1464
  br i1 %285, label %286, label %288, !dbg !1467

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1464
  store i8 39, i8* %287, align 1, !dbg !1464, !tbaa !818
  br label %288, !dbg !1464

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !1467
  call void @llvm.dbg.value(metadata i64 %289, metadata !1209, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 0, metadata !1216, metadata !DIExpression()), !dbg !1269
  br label %473, !dbg !1468

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !1469

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1227, metadata !DIExpression()), !dbg !1470
  %292 = tail call i16** @__ctype_b_loc() #29, !dbg !1471
  %293 = load i16*, i16** %292, align 8, !dbg !1471, !tbaa !605
  %294 = zext i8 %158 to i64, !dbg !1471
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1471
  %296 = load i16, i16* %295, align 2, !dbg !1471, !tbaa !1473
  %297 = lshr i16 %296, 14, !dbg !1475
  %298 = trunc i16 %297 to i8, !dbg !1475
  %299 = and i8 %298, 1, !dbg !1475
  call void @llvm.dbg.value(metadata i8 %354, metadata !1230, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 %355, metadata !1227, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 %306, metadata !1202, metadata !DIExpression()), !dbg !1269
  %300 = icmp eq i8 %299, 0, !dbg !1476
  call void @llvm.dbg.value(metadata i1 %357, metadata !1226, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1336
  br label %359, !dbg !1477

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #26, !dbg !1478
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1231, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8* %23, metadata !1480, metadata !DIExpression()) #26, !dbg !1487
  call void @llvm.dbg.value(metadata i32 0, metadata !1485, metadata !DIExpression()) #26, !dbg !1487
  call void @llvm.dbg.value(metadata i64 8, metadata !1486, metadata !DIExpression()) #26, !dbg !1487
  store i64 0, i64* %10, align 8, !dbg !1489
  call void @llvm.dbg.value(metadata i64 0, metadata !1227, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i8 1, metadata !1230, metadata !DIExpression()), !dbg !1470
  %302 = icmp eq i64 %154, -1, !dbg !1490
  br i1 %302, label %303, label %305, !dbg !1492

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #27, !dbg !1493
  call void @llvm.dbg.value(metadata i64 %304, metadata !1202, metadata !DIExpression()), !dbg !1269
  br label %305, !dbg !1494

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1336
  call void @llvm.dbg.value(metadata i64 %306, metadata !1202, metadata !DIExpression()), !dbg !1269
  br label %307, !dbg !1495

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !1496
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !1497
  call void @llvm.dbg.value(metadata i8 %309, metadata !1230, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 %308, metadata !1227, metadata !DIExpression()), !dbg !1470
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #26, !dbg !1498
  %310 = add i64 %308, %122, !dbg !1499
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !1500
  %312 = sub i64 %306, %310, !dbg !1501
  call void @llvm.dbg.value(metadata i32* %12, metadata !1249, metadata !DIExpression(DW_OP_deref)), !dbg !1502
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #26, !dbg !1503
  call void @llvm.dbg.value(metadata i64 %313, metadata !1252, metadata !DIExpression()), !dbg !1502
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !1504

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1227, metadata !DIExpression()), !dbg !1470
  %315 = icmp ugt i64 %306, %310, !dbg !1505
  br i1 %315, label %316, label %341, !dbg !1507

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !1508
  br label %318, !dbg !1508

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1227, metadata !DIExpression()), !dbg !1470
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !1509
  %322 = load i8, i8* %321, align 1, !dbg !1509, !tbaa !818
  %323 = icmp eq i8 %322, 0, !dbg !1507
  br i1 %323, label %341, label %324, !dbg !1508

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !1510
  call void @llvm.dbg.value(metadata i64 %325, metadata !1227, metadata !DIExpression()), !dbg !1470
  %326 = add i64 %325, %122, !dbg !1511
  %327 = icmp ult i64 %326, %306, !dbg !1505
  br i1 %327, label %318, label %341, !dbg !1507, !llvm.loop !1512

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !1513
  call void @llvm.dbg.value(metadata i64 1, metadata !1253, metadata !DIExpression()), !dbg !1514
  br i1 %330, label %331, label %344, !dbg !1513

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1253, metadata !DIExpression()), !dbg !1514
  %333 = add i64 %332, %310, !dbg !1515
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !1518
  %335 = load i8, i8* %334, align 1, !dbg !1518, !tbaa !818
  %336 = sext i8 %335 to i32, !dbg !1518
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !1519

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !1520
  call void @llvm.dbg.value(metadata i64 %338, metadata !1253, metadata !DIExpression()), !dbg !1514
  %339 = icmp eq i64 %338, %313, !dbg !1521
  br i1 %339, label %344, label %331, !dbg !1522, !llvm.loop !1523

340:                                              ; preds = %307
  br label %341, !dbg !1525

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1230, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 undef, metadata !1227, metadata !DIExpression()), !dbg !1470
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #26, !dbg !1525
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !1526, !tbaa !762
  call void @llvm.dbg.value(metadata i32 %345, metadata !1249, metadata !DIExpression()), !dbg !1502
  %346 = call i32 @iswprint(i32 %345) #26, !dbg !1528
  %347 = icmp eq i32 %346, 0, !dbg !1528
  %348 = select i1 %347, i8 0, i8 %309, !dbg !1529
  call void @llvm.dbg.value(metadata i8 %348, metadata !1230, metadata !DIExpression()), !dbg !1470
  %349 = add i64 %313, %308, !dbg !1530
  call void @llvm.dbg.value(metadata i64 %349, metadata !1227, metadata !DIExpression()), !dbg !1470
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #26, !dbg !1525
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #27, !dbg !1531
  %351 = icmp eq i32 %350, 0, !dbg !1532
  br i1 %351, label %307, label %353, !dbg !1533, !llvm.loop !1534

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1230, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 undef, metadata !1227, metadata !DIExpression()), !dbg !1470
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #26, !dbg !1525
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #26, !dbg !1536
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #26, !dbg !1536
  call void @llvm.dbg.value(metadata i8 %354, metadata !1230, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 %355, metadata !1227, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 %306, metadata !1202, metadata !DIExpression()), !dbg !1269
  %356 = and i8 %354, 1, !dbg !1476
  %357 = icmp eq i8 %356, 0, !dbg !1476
  call void @llvm.dbg.value(metadata i1 %357, metadata !1226, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1336
  %358 = icmp ugt i64 %355, 1, !dbg !1537
  br i1 %358, label %367, label %359, !dbg !1477

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !1538
  br i1 %364, label %367, label %365, !dbg !1538

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1336
  call void @llvm.dbg.value(metadata i8 %472, metadata !1226, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i8 %441, metadata !1225, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i8 %440, metadata !1224, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i8 %439, metadata !1219, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i8 %438, metadata !1216, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %371, metadata !1202, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %437, metadata !1209, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %375, metadata !1208, metadata !DIExpression()), !dbg !1269
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !1539
  call void @llvm.dbg.value(metadata i64 %372, metadata !1260, metadata !DIExpression()), !dbg !1540
  %373 = and i1 %102, %368
  br label %374, !dbg !1541

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1329
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1269
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1278
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1336
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1336
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !1542
  call void @llvm.dbg.value(metadata i8 %380, metadata !1225, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i8 %379, metadata !1224, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i8 %378, metadata !1219, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i8 %377, metadata !1216, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %376, metadata !1209, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %375, metadata !1208, metadata !DIExpression()), !dbg !1269
  br i1 %373, label %381, label %427, !dbg !1543

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !1548

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1225, metadata !DIExpression()), !dbg !1336
  %383 = and i8 %377, 1, !dbg !1551
  %384 = icmp eq i8 %383, 0, !dbg !1551
  %385 = and i1 %110, %384, !dbg !1551
  br i1 %385, label %386, label %402, !dbg !1551

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !1553
  br i1 %387, label %388, label %390, !dbg !1557

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1553
  store i8 39, i8* %389, align 1, !dbg !1553, !tbaa !818
  br label %390, !dbg !1553

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !1557
  call void @llvm.dbg.value(metadata i64 %391, metadata !1209, metadata !DIExpression()), !dbg !1269
  %392 = icmp ult i64 %391, %129, !dbg !1558
  br i1 %392, label %393, label %395, !dbg !1561

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !1558
  store i8 36, i8* %394, align 1, !dbg !1558, !tbaa !818
  br label %395, !dbg !1558

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !1561
  call void @llvm.dbg.value(metadata i64 %396, metadata !1209, metadata !DIExpression()), !dbg !1269
  %397 = icmp ult i64 %396, %129, !dbg !1562
  br i1 %397, label %398, label %400, !dbg !1565

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1562
  store i8 39, i8* %399, align 1, !dbg !1562, !tbaa !818
  br label %400, !dbg !1562

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %401, metadata !1209, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 1, metadata !1216, metadata !DIExpression()), !dbg !1269
  br label %402, !dbg !1566

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1269
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1269
  call void @llvm.dbg.value(metadata i8 %404, metadata !1216, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %403, metadata !1209, metadata !DIExpression()), !dbg !1269
  %405 = icmp ult i64 %403, %129, !dbg !1567
  br i1 %405, label %406, label %408, !dbg !1570

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1567
  store i8 92, i8* %407, align 1, !dbg !1567, !tbaa !818
  br label %408, !dbg !1567

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !1570
  call void @llvm.dbg.value(metadata i64 %409, metadata !1209, metadata !DIExpression()), !dbg !1269
  %410 = icmp ult i64 %409, %129, !dbg !1571
  br i1 %410, label %411, label %415, !dbg !1574

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !1571
  %413 = or i8 %412, 48, !dbg !1571
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !1571
  store i8 %413, i8* %414, align 1, !dbg !1571, !tbaa !818
  br label %415, !dbg !1571

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !1574
  call void @llvm.dbg.value(metadata i64 %416, metadata !1209, metadata !DIExpression()), !dbg !1269
  %417 = icmp ult i64 %416, %129, !dbg !1575
  br i1 %417, label %418, label %423, !dbg !1578

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !1575
  %420 = and i8 %419, 7, !dbg !1575
  %421 = or i8 %420, 48, !dbg !1575
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !1575
  store i8 %421, i8* %422, align 1, !dbg !1575, !tbaa !818
  br label %423, !dbg !1575

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !1578
  call void @llvm.dbg.value(metadata i64 %424, metadata !1209, metadata !DIExpression()), !dbg !1269
  %425 = and i8 %378, 7, !dbg !1579
  %426 = or i8 %425, 48, !dbg !1580
  call void @llvm.dbg.value(metadata i8 %426, metadata !1219, metadata !DIExpression()), !dbg !1336
  br label %436, !dbg !1581

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !1582
  %429 = icmp eq i8 %428, 0, !dbg !1582
  br i1 %429, label %436, label %430, !dbg !1584

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !1585
  br i1 %431, label %432, label %434, !dbg !1589

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1585
  store i8 92, i8* %433, align 1, !dbg !1585, !tbaa !818
  br label %434, !dbg !1585

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !1589
  call void @llvm.dbg.value(metadata i64 %435, metadata !1209, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 0, metadata !1224, metadata !DIExpression()), !dbg !1336
  br label %436, !dbg !1590

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1269
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1278
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1336
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1336
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1336
  call void @llvm.dbg.value(metadata i8 %441, metadata !1225, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i8 %440, metadata !1224, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i8 %439, metadata !1219, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i8 %438, metadata !1216, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %437, metadata !1209, metadata !DIExpression()), !dbg !1269
  %442 = add i64 %375, 1, !dbg !1591
  %443 = icmp ugt i64 %372, %442, !dbg !1593
  br i1 %443, label %444, label %471, !dbg !1594

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !1595
  %446 = icmp ne i8 %445, 0, !dbg !1595
  %447 = and i8 %441, 1, !dbg !1595
  %448 = icmp eq i8 %447, 0, !dbg !1595
  %449 = and i1 %446, %448, !dbg !1595
  br i1 %449, label %450, label %461, !dbg !1595

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !1598
  br i1 %451, label %452, label %454, !dbg !1602

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !1598
  store i8 39, i8* %453, align 1, !dbg !1598, !tbaa !818
  br label %454, !dbg !1598

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !1602
  call void @llvm.dbg.value(metadata i64 %455, metadata !1209, metadata !DIExpression()), !dbg !1269
  %456 = icmp ult i64 %455, %129, !dbg !1603
  br i1 %456, label %457, label %459, !dbg !1606

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !1603
  store i8 39, i8* %458, align 1, !dbg !1603, !tbaa !818
  br label %459, !dbg !1603

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !1606
  call void @llvm.dbg.value(metadata i64 %460, metadata !1209, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 0, metadata !1216, metadata !DIExpression()), !dbg !1269
  br label %461, !dbg !1607

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !1608
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1269
  call void @llvm.dbg.value(metadata i8 %463, metadata !1216, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %462, metadata !1209, metadata !DIExpression()), !dbg !1269
  %464 = icmp ult i64 %462, %129, !dbg !1609
  br i1 %464, label %465, label %467, !dbg !1612

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !1609
  store i8 %439, i8* %466, align 1, !dbg !1609, !tbaa !818
  br label %467, !dbg !1609

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !1612
  call void @llvm.dbg.value(metadata i64 %468, metadata !1209, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %442, metadata !1208, metadata !DIExpression()), !dbg !1269
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !1613
  %470 = load i8, i8* %469, align 1, !dbg !1613, !tbaa !818
  call void @llvm.dbg.value(metadata i8 %470, metadata !1219, metadata !DIExpression()), !dbg !1336
  br label %374, !dbg !1614, !llvm.loop !1615

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1336
  call void @llvm.dbg.value(metadata i8 %472, metadata !1226, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i8 %441, metadata !1225, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i8 %440, metadata !1224, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i8 %439, metadata !1219, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i8 %438, metadata !1216, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %371, metadata !1202, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %437, metadata !1209, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %375, metadata !1208, metadata !DIExpression()), !dbg !1269
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1329
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1269
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1274
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !1618
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1269
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1269
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1336
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1336
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1336
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1200, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 %482, metadata !1226, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i8 %481, metadata !1225, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i8 %156, metadata !1224, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i8 %480, metadata !1219, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i8 %479, metadata !1217, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 %478, metadata !1216, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %477, metadata !1202, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %476, metadata !1210, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %475, metadata !1209, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %474, metadata !1208, metadata !DIExpression()), !dbg !1269
  br i1 %116, label %494, label %484, !dbg !1619

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !1621
  %486 = zext i8 %485 to i64, !dbg !1621
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !1622
  %488 = load i32, i32* %487, align 4, !dbg !1622, !tbaa !762
  %489 = and i8 %480, 31, !dbg !1623
  %490 = zext i8 %489 to i32, !dbg !1623
  %491 = shl nuw i32 1, %490, !dbg !1624
  %492 = and i32 %488, %491, !dbg !1624
  %493 = icmp eq i32 %492, 0, !dbg !1624
  br i1 %493, label %494, label %495, !dbg !1625

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !1626

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !1627
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1269
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1274
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !1618
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1278
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1279
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1336
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1336
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1200, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 %503, metadata !1226, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i8 %502, metadata !1219, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i8 %501, metadata !1217, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 %500, metadata !1216, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %499, metadata !1202, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %498, metadata !1210, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %497, metadata !1209, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %496, metadata !1208, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.label(metadata !1266), !dbg !1628
  br i1 %109, label %505, label %635, !dbg !1629

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1225, metadata !DIExpression()), !dbg !1336
  %506 = and i8 %500, 1, !dbg !1631
  %507 = icmp eq i8 %506, 0, !dbg !1631
  %508 = and i1 %110, %507, !dbg !1631
  br i1 %508, label %509, label %525, !dbg !1631

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !1633
  br i1 %510, label %511, label %513, !dbg !1637

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !1633
  store i8 39, i8* %512, align 1, !dbg !1633, !tbaa !818
  br label %513, !dbg !1633

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !1637
  call void @llvm.dbg.value(metadata i64 %514, metadata !1209, metadata !DIExpression()), !dbg !1269
  %515 = icmp ult i64 %514, %504, !dbg !1638
  br i1 %515, label %516, label %518, !dbg !1641

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !1638
  store i8 36, i8* %517, align 1, !dbg !1638, !tbaa !818
  br label %518, !dbg !1638

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !1641
  call void @llvm.dbg.value(metadata i64 %519, metadata !1209, metadata !DIExpression()), !dbg !1269
  %520 = icmp ult i64 %519, %504, !dbg !1642
  br i1 %520, label %521, label %523, !dbg !1645

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1642
  store i8 39, i8* %522, align 1, !dbg !1642, !tbaa !818
  br label %523, !dbg !1642

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !1645
  call void @llvm.dbg.value(metadata i64 %524, metadata !1209, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 1, metadata !1216, metadata !DIExpression()), !dbg !1269
  br label %525, !dbg !1646

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1336
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1269
  call void @llvm.dbg.value(metadata i8 %527, metadata !1216, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %526, metadata !1209, metadata !DIExpression()), !dbg !1269
  %528 = icmp ult i64 %526, %504, !dbg !1647
  br i1 %528, label %529, label %531, !dbg !1650

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1647
  store i8 92, i8* %530, align 1, !dbg !1647, !tbaa !818
  br label %531, !dbg !1647

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !1650
  call void @llvm.dbg.value(metadata i64 %543, metadata !1200, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 %542, metadata !1226, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i8 %541, metadata !1225, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i8 %540, metadata !1219, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i8 %539, metadata !1217, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 %538, metadata !1216, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %537, metadata !1202, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %536, metadata !1210, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %535, metadata !1209, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %534, metadata !1208, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.label(metadata !1267), !dbg !1651
  br label %560, !dbg !1652

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !1627
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1269
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1274
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !1618
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1278
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1279
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !1655
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1336
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1336
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1200, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 %542, metadata !1226, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i8 %541, metadata !1225, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i8 %540, metadata !1219, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i8 %539, metadata !1217, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 %538, metadata !1216, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %537, metadata !1202, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %536, metadata !1210, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %535, metadata !1209, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %534, metadata !1208, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.label(metadata !1267), !dbg !1651
  %544 = and i8 %538, 1, !dbg !1652
  %545 = icmp ne i8 %544, 0, !dbg !1652
  %546 = and i8 %541, 1, !dbg !1652
  %547 = icmp eq i8 %546, 0, !dbg !1652
  %548 = and i1 %545, %547, !dbg !1652
  br i1 %548, label %549, label %560, !dbg !1652

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !1656
  br i1 %550, label %551, label %553, !dbg !1660

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !1656
  store i8 39, i8* %552, align 1, !dbg !1656, !tbaa !818
  br label %553, !dbg !1656

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !1660
  call void @llvm.dbg.value(metadata i64 %554, metadata !1209, metadata !DIExpression()), !dbg !1269
  %555 = icmp ult i64 %554, %543, !dbg !1661
  br i1 %555, label %556, label %558, !dbg !1664

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !1661
  store i8 39, i8* %557, align 1, !dbg !1661, !tbaa !818
  br label %558, !dbg !1661

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !1664
  call void @llvm.dbg.value(metadata i64 %559, metadata !1209, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 0, metadata !1216, metadata !DIExpression()), !dbg !1269
  br label %560, !dbg !1665

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1336
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1269
  call void @llvm.dbg.value(metadata i8 %569, metadata !1216, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %568, metadata !1209, metadata !DIExpression()), !dbg !1269
  %570 = icmp ult i64 %568, %561, !dbg !1666
  br i1 %570, label %571, label %573, !dbg !1669

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !1666
  store i8 %563, i8* %572, align 1, !dbg !1666, !tbaa !818
  br label %573, !dbg !1666

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !1669
  call void @llvm.dbg.value(metadata i64 %574, metadata !1209, metadata !DIExpression()), !dbg !1269
  %575 = icmp eq i8 %562, 0, !dbg !1670
  %576 = select i1 %575, i8 0, i8 %128, !dbg !1672
  call void @llvm.dbg.value(metadata i8 %576, metadata !1218, metadata !DIExpression()), !dbg !1269
  br label %577, !dbg !1673

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !1627
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1269
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1274
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !1618
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1278
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1269
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1280
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1200, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 %584, metadata !1218, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 %583, metadata !1217, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 %582, metadata !1216, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %581, metadata !1202, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %580, metadata !1210, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %579, metadata !1209, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %578, metadata !1208, metadata !DIExpression()), !dbg !1269
  %586 = add i64 %578, 1, !dbg !1674
  call void @llvm.dbg.value(metadata i64 %586, metadata !1208, metadata !DIExpression()), !dbg !1269
  br label %121, !dbg !1675, !llvm.loop !1676

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !1678
  %590 = and i1 %110, %589, !dbg !1680
  %591 = xor i1 %590, true, !dbg !1680
  %592 = or i1 %109, %591, !dbg !1680
  br i1 %592, label %593, label %635, !dbg !1680

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !1681
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !1681
  br i1 %597, label %598, label %607, !dbg !1681

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !1683
  %600 = icmp eq i8 %599, 0, !dbg !1683
  br i1 %600, label %603, label %601, !dbg !1686

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !1687
  br label %652, !dbg !1688

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !1689
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !1691
  br i1 %606, label %26, label %607, !dbg !1691

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !1692
  %610 = and i1 %609, %608, !dbg !1694
  br i1 %610, label %611, label %626, !dbg !1694

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1211, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %123, metadata !1209, metadata !DIExpression()), !dbg !1269
  %612 = load i8, i8* %97, align 1, !dbg !1695, !tbaa !818
  %613 = icmp eq i8 %612, 0, !dbg !1698
  br i1 %613, label %626, label %614, !dbg !1698

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1211, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %617, metadata !1209, metadata !DIExpression()), !dbg !1269
  %618 = icmp ult i64 %617, %129, !dbg !1699
  br i1 %618, label %619, label %621, !dbg !1702

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !1699
  store i8 %615, i8* %620, align 1, !dbg !1699, !tbaa !818
  br label %621, !dbg !1699

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !1702
  call void @llvm.dbg.value(metadata i64 %622, metadata !1209, metadata !DIExpression()), !dbg !1269
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !1703
  call void @llvm.dbg.value(metadata i8* %623, metadata !1211, metadata !DIExpression()), !dbg !1269
  %624 = load i8, i8* %623, align 1, !dbg !1695, !tbaa !818
  %625 = icmp eq i8 %624, 0, !dbg !1698
  br i1 %625, label %626, label %614, !dbg !1698, !llvm.loop !1704

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1311
  call void @llvm.dbg.value(metadata i64 %627, metadata !1209, metadata !DIExpression()), !dbg !1269
  %628 = icmp ult i64 %627, %129, !dbg !1706
  br i1 %628, label %629, label %652, !dbg !1708

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !1709
  store i8 0, i8* %630, align 1, !dbg !1710, !tbaa !818
  br label %652, !dbg !1709

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1200, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %637, metadata !1202, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.label(metadata !1268), !dbg !1711
  %633 = icmp eq i8 %101, 0, !dbg !1712
  %634 = select i1 %633, i32 2, i32 4, !dbg !1712
  br label %642, !dbg !1712

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1200, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %637, metadata !1202, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.label(metadata !1268), !dbg !1711
  %639 = icmp eq i32 %93, 2, !dbg !1714
  %640 = icmp eq i8 %636, 0, !dbg !1712
  %641 = select i1 %640, i32 2, i32 4, !dbg !1712
  br i1 %639, label %642, label %646, !dbg !1712

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !1712

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1203, metadata !DIExpression()), !dbg !1269
  %650 = and i32 %5, -3, !dbg !1715
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !1716
  br label %652, !dbg !1717

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !1718
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !1719 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1723, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i32 %1, metadata !1724, metadata !DIExpression()), !dbg !1727
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #26, !dbg !1728
  call void @llvm.dbg.value(metadata i8* %3, metadata !1725, metadata !DIExpression()), !dbg !1727
  %4 = icmp eq i8* %3, %0, !dbg !1729
  br i1 %4, label %5, label %72, !dbg !1731

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #26, !dbg !1732
  call void @llvm.dbg.value(metadata i8* %6, metadata !1726, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i8* %6, metadata !1733, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata i8* undef, metadata !1739, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata i8 85, metadata !1740, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata i8 84, metadata !1741, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata i8 70, metadata !1742, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata i8 45, metadata !1743, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata i8 56, metadata !1744, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata i8 0, metadata !1745, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata i8 0, metadata !1746, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata i8 0, metadata !1747, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata i8 0, metadata !1748, metadata !DIExpression()), !dbg !1749
  %7 = load i8, i8* %6, align 1, !dbg !1752, !tbaa !818
  %8 = and i8 %7, -33, !dbg !1752
  %9 = sext i8 %8 to i32, !dbg !1752
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !1752

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1754, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8* undef, metadata !1759, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 84, metadata !1760, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 70, metadata !1761, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 45, metadata !1762, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 56, metadata !1763, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 0, metadata !1764, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 0, metadata !1765, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 0, metadata !1766, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 0, metadata !1767, metadata !DIExpression()), !dbg !1768
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1772
  %12 = load i8, i8* %11, align 1, !dbg !1772, !tbaa !818
  %13 = and i8 %12, -33, !dbg !1772
  %14 = icmp eq i8 %13, 84, !dbg !1772
  br i1 %14, label %15, label %69, !dbg !1772

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !1774, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8* undef, metadata !1779, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 70, metadata !1780, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 45, metadata !1781, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 56, metadata !1782, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 0, metadata !1783, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 0, metadata !1784, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 0, metadata !1785, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 0, metadata !1786, metadata !DIExpression()), !dbg !1787
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1791
  %17 = load i8, i8* %16, align 1, !dbg !1791, !tbaa !818
  %18 = and i8 %17, -33, !dbg !1791
  %19 = icmp eq i8 %18, 70, !dbg !1791
  br i1 %19, label %20, label %69, !dbg !1791

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !1793, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8* undef, metadata !1798, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 45, metadata !1799, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 56, metadata !1800, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 0, metadata !1801, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 0, metadata !1802, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 0, metadata !1803, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 0, metadata !1804, metadata !DIExpression()), !dbg !1805
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1809
  %22 = load i8, i8* %21, align 1, !dbg !1809, !tbaa !818
  %23 = icmp eq i8 %22, 45, !dbg !1809
  br i1 %23, label %24, label %69, !dbg !1811

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !1812, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i8* undef, metadata !1817, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i8 56, metadata !1818, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i8 0, metadata !1819, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i8 0, metadata !1820, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i8 0, metadata !1821, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i8 0, metadata !1822, metadata !DIExpression()), !dbg !1823
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1827
  %26 = load i8, i8* %25, align 1, !dbg !1827, !tbaa !818
  %27 = icmp eq i8 %26, 56, !dbg !1827
  br i1 %27, label %28, label %69, !dbg !1829

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !1830, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8* undef, metadata !1835, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8 0, metadata !1836, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8 0, metadata !1837, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8 0, metadata !1838, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8 0, metadata !1839, metadata !DIExpression()), !dbg !1840
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1844
  %30 = load i8, i8* %29, align 1, !dbg !1844, !tbaa !818
  %31 = icmp eq i8 %30, 0, !dbg !1844
  br i1 %31, label %32, label %69, !dbg !1846

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !1847, !tbaa !818
  %34 = icmp eq i8 %33, 96, !dbg !1848
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.64, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.65, i64 0, i64 0), !dbg !1847
  br label %72, !dbg !1849

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1754, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i8* undef, metadata !1759, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i8 66, metadata !1760, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i8 49, metadata !1761, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i8 56, metadata !1762, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i8 48, metadata !1763, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i8 51, metadata !1764, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i8 48, metadata !1765, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i8 0, metadata !1766, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i8 0, metadata !1767, metadata !DIExpression()), !dbg !1850
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1854
  %38 = load i8, i8* %37, align 1, !dbg !1854, !tbaa !818
  %39 = and i8 %38, -33, !dbg !1854
  %40 = icmp eq i8 %39, 66, !dbg !1854
  br i1 %40, label %41, label %69, !dbg !1854

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !1774, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* undef, metadata !1779, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 49, metadata !1780, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 56, metadata !1781, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 48, metadata !1782, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 51, metadata !1783, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 48, metadata !1784, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 0, metadata !1785, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 0, metadata !1786, metadata !DIExpression()), !dbg !1855
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1857
  %43 = load i8, i8* %42, align 1, !dbg !1857, !tbaa !818
  %44 = icmp eq i8 %43, 49, !dbg !1857
  br i1 %44, label %45, label %69, !dbg !1858

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !1793, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8* undef, metadata !1798, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8 56, metadata !1799, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8 48, metadata !1800, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8 51, metadata !1801, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8 48, metadata !1802, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8 0, metadata !1803, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8 0, metadata !1804, metadata !DIExpression()), !dbg !1859
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1861
  %47 = load i8, i8* %46, align 1, !dbg !1861, !tbaa !818
  %48 = icmp eq i8 %47, 56, !dbg !1861
  br i1 %48, label %49, label %69, !dbg !1862

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* undef, metadata !1817, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 48, metadata !1818, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 51, metadata !1819, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 48, metadata !1820, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 0, metadata !1821, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 0, metadata !1822, metadata !DIExpression()), !dbg !1863
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1865
  %51 = load i8, i8* %50, align 1, !dbg !1865, !tbaa !818
  %52 = icmp eq i8 %51, 48, !dbg !1865
  br i1 %52, label %53, label %69, !dbg !1866

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !1830, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i8* undef, metadata !1835, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i8 51, metadata !1836, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i8 48, metadata !1837, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i8 0, metadata !1838, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i8 0, metadata !1839, metadata !DIExpression()), !dbg !1867
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1869
  %55 = load i8, i8* %54, align 1, !dbg !1869, !tbaa !818
  %56 = icmp eq i8 %55, 51, !dbg !1869
  br i1 %56, label %57, label %69, !dbg !1870

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !1871, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8* undef, metadata !1876, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 48, metadata !1877, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 0, metadata !1878, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 0, metadata !1879, metadata !DIExpression()), !dbg !1880
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1884
  %59 = load i8, i8* %58, align 1, !dbg !1884, !tbaa !818
  %60 = icmp eq i8 %59, 48, !dbg !1884
  br i1 %60, label %61, label %69, !dbg !1886

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !1887, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8* undef, metadata !1892, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 0, metadata !1893, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 0, metadata !1894, metadata !DIExpression()), !dbg !1895
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1899
  %63 = load i8, i8* %62, align 1, !dbg !1899, !tbaa !818
  %64 = icmp eq i8 %63, 0, !dbg !1899
  br i1 %64, label %65, label %69, !dbg !1901

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !1902, !tbaa !818
  %67 = icmp eq i8 %66, 96, !dbg !1903
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.66, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.67, i64 0, i64 0), !dbg !1902
  br label %72, !dbg !1904

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !1905
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), !dbg !1906
  br label %72, !dbg !1907

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !1727
  ret i8* %73, !dbg !1908
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #16

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1909 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !1913 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !1919 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1923, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i64 %1, metadata !1924, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1925, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i8* %0, metadata !1927, metadata !DIExpression()) #26, !dbg !1940
  call void @llvm.dbg.value(metadata i64 %1, metadata !1932, metadata !DIExpression()) #26, !dbg !1940
  call void @llvm.dbg.value(metadata i64* null, metadata !1933, metadata !DIExpression()) #26, !dbg !1940
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1934, metadata !DIExpression()) #26, !dbg !1940
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1942
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1942
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1935, metadata !DIExpression()) #26, !dbg !1940
  %6 = tail call i32* @__errno_location() #29, !dbg !1943
  %7 = load i32, i32* %6, align 4, !dbg !1943, !tbaa !762
  call void @llvm.dbg.value(metadata i32 %7, metadata !1936, metadata !DIExpression()) #26, !dbg !1940
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1944
  %9 = load i32, i32* %8, align 4, !dbg !1944, !tbaa !1143
  %10 = or i32 %9, 1, !dbg !1945
  call void @llvm.dbg.value(metadata i32 %10, metadata !1937, metadata !DIExpression()) #26, !dbg !1940
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1946
  %12 = load i32, i32* %11, align 8, !dbg !1946, !tbaa !1091
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1947
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1948
  %15 = load i8*, i8** %14, align 8, !dbg !1948, !tbaa !1165
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1949
  %17 = load i8*, i8** %16, align 8, !dbg !1949, !tbaa !1168
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #26, !dbg !1950
  %19 = add i64 %18, 1, !dbg !1951
  call void @llvm.dbg.value(metadata i64 %19, metadata !1938, metadata !DIExpression()) #26, !dbg !1940
  call void @llvm.dbg.value(metadata i64 %19, metadata !1952, metadata !DIExpression()) #26, !dbg !1957
  %20 = tail call noalias i8* @xmalloc(i64 %19) #26, !dbg !1959
  call void @llvm.dbg.value(metadata i8* %20, metadata !1939, metadata !DIExpression()) #26, !dbg !1940
  %21 = load i32, i32* %11, align 8, !dbg !1960, !tbaa !1091
  %22 = load i8*, i8** %14, align 8, !dbg !1961, !tbaa !1165
  %23 = load i8*, i8** %16, align 8, !dbg !1962, !tbaa !1168
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #26, !dbg !1963
  store i32 %7, i32* %6, align 4, !dbg !1964, !tbaa !762
  ret i8* %20, !dbg !1965
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !1928 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1927, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %1, metadata !1932, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64* %2, metadata !1933, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1934, metadata !DIExpression()), !dbg !1966
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1967
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1967
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1935, metadata !DIExpression()), !dbg !1966
  %7 = tail call i32* @__errno_location() #29, !dbg !1968
  %8 = load i32, i32* %7, align 4, !dbg !1968, !tbaa !762
  call void @llvm.dbg.value(metadata i32 %8, metadata !1936, metadata !DIExpression()), !dbg !1966
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1969
  %10 = load i32, i32* %9, align 4, !dbg !1969, !tbaa !1143
  %11 = icmp eq i64* %2, null, !dbg !1970
  %12 = zext i1 %11 to i32, !dbg !1970
  %13 = or i32 %10, %12, !dbg !1971
  call void @llvm.dbg.value(metadata i32 %13, metadata !1937, metadata !DIExpression()), !dbg !1966
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1972
  %15 = load i32, i32* %14, align 8, !dbg !1972, !tbaa !1091
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1973
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1974
  %18 = load i8*, i8** %17, align 8, !dbg !1974, !tbaa !1165
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1975
  %20 = load i8*, i8** %19, align 8, !dbg !1975, !tbaa !1168
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !1976
  %22 = add i64 %21, 1, !dbg !1977
  call void @llvm.dbg.value(metadata i64 %22, metadata !1938, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %22, metadata !1952, metadata !DIExpression()) #26, !dbg !1978
  %23 = tail call noalias i8* @xmalloc(i64 %22) #26, !dbg !1980
  call void @llvm.dbg.value(metadata i8* %23, metadata !1939, metadata !DIExpression()), !dbg !1966
  %24 = load i32, i32* %14, align 8, !dbg !1981, !tbaa !1091
  %25 = load i8*, i8** %17, align 8, !dbg !1982, !tbaa !1165
  %26 = load i8*, i8** %19, align 8, !dbg !1983, !tbaa !1168
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !1984
  store i32 %8, i32* %7, align 4, !dbg !1985, !tbaa !762
  br i1 %11, label %29, label %28, !dbg !1986

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !1987, !tbaa !1989
  br label %29, !dbg !1991

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !1992
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !1993 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1997, !tbaa !605
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !1995, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata i32 1, metadata !1996, metadata !DIExpression()), !dbg !1998
  %2 = load i32, i32* @nslots, align 4, !dbg !1999, !tbaa !762
  %3 = icmp sgt i32 %2, 1, !dbg !2002
  br i1 %3, label %4, label %12, !dbg !2003

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2002
  br label %6, !dbg !2003

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !1996, metadata !DIExpression()), !dbg !1998
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !2004
  %9 = load i8*, i8** %8, align 8, !dbg !2004, !tbaa !2005
  tail call void @free(i8* %9) #26, !dbg !2007
  %10 = add nuw nsw i64 %7, 1, !dbg !2008
  call void @llvm.dbg.value(metadata i64 %10, metadata !1996, metadata !DIExpression()), !dbg !1998
  %11 = icmp eq i64 %10, %5, !dbg !2002
  br i1 %11, label %12, label %6, !dbg !2003, !llvm.loop !2009

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2011
  %14 = load i8*, i8** %13, align 8, !dbg !2011, !tbaa !2005
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2013
  br i1 %15, label %17, label %16, !dbg !2014

16:                                               ; preds = %12
  tail call void @free(i8* %14) #26, !dbg !2015
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2017, !tbaa !2018
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2019, !tbaa !2005
  br label %17, !dbg !2020

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2021
  br i1 %18, label %21, label %19, !dbg !2023

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2024
  tail call void @free(i8* %20) #26, !dbg !2026
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2027, !tbaa !605
  br label %21, !dbg !2028

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2029, !tbaa !762
  ret void, !dbg !2030
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2031 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2033, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i8* %1, metadata !2034, metadata !DIExpression()), !dbg !2035
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2036
  ret i8* %3, !dbg !2037
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2038 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2042, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i8* %1, metadata !2043, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i64 %2, metadata !2044, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2045, metadata !DIExpression()), !dbg !2057
  %5 = tail call i32* @__errno_location() #29, !dbg !2058
  %6 = load i32, i32* %5, align 4, !dbg !2058, !tbaa !762
  call void @llvm.dbg.value(metadata i32 %6, metadata !2046, metadata !DIExpression()), !dbg !2057
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2059, !tbaa !605
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2047, metadata !DIExpression()), !dbg !2057
  %8 = icmp slt i32 %0, 0, !dbg !2060
  br i1 %8, label %9, label %10, !dbg !2062

9:                                                ; preds = %4
  tail call void @abort() #28, !dbg !2063
  unreachable, !dbg !2063

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2064, !tbaa !762
  %12 = icmp sgt i32 %11, %0, !dbg !2065
  br i1 %12, label %34, label %13, !dbg !2066

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2067
  call void @llvm.dbg.value(metadata i1 %14, metadata !2048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2068
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2051, metadata !DIExpression()), !dbg !2068
  %15 = icmp eq i32 %0, 2147483647, !dbg !2069
  br i1 %15, label %16, label %17, !dbg !2071

16:                                               ; preds = %13
  tail call void @xalloc_die() #28, !dbg !2072
  unreachable, !dbg !2072

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2073
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2073
  %20 = add nuw nsw i32 %0, 1, !dbg !2074
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2075
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #26, !dbg !2076
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2076
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2047, metadata !DIExpression()), !dbg !2057
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2077, !tbaa !605
  br i1 %14, label %25, label %26, !dbg !2078

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2079, !tbaa.struct !2081
  br label %26, !dbg !2082

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2083, !tbaa !762
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2084
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2085
  %31 = sub nsw i32 %20, %27, !dbg !2086
  %32 = sext i32 %31 to i64, !dbg !2087
  %33 = shl nsw i64 %32, 4, !dbg !2088
  call void @llvm.dbg.value(metadata i8* %30, metadata !1480, metadata !DIExpression()) #26, !dbg !2089
  call void @llvm.dbg.value(metadata i32 0, metadata !1485, metadata !DIExpression()) #26, !dbg !2089
  call void @llvm.dbg.value(metadata i64 %33, metadata !1486, metadata !DIExpression()) #26, !dbg !2089
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #26, !dbg !2091
  store i32 %20, i32* @nslots, align 4, !dbg !2092, !tbaa !762
  br label %34, !dbg !2093

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2057
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2047, metadata !DIExpression()), !dbg !2057
  %36 = zext i32 %0 to i64, !dbg !2094
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2095
  %38 = load i64, i64* %37, align 8, !dbg !2095, !tbaa !2018
  call void @llvm.dbg.value(metadata i64 %38, metadata !2052, metadata !DIExpression()), !dbg !2096
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2097
  %40 = load i8*, i8** %39, align 8, !dbg !2097, !tbaa !2005
  call void @llvm.dbg.value(metadata i8* %40, metadata !2054, metadata !DIExpression()), !dbg !2096
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2098
  %42 = load i32, i32* %41, align 4, !dbg !2098, !tbaa !1143
  %43 = or i32 %42, 1, !dbg !2099
  call void @llvm.dbg.value(metadata i32 %43, metadata !2055, metadata !DIExpression()), !dbg !2096
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2100
  %45 = load i32, i32* %44, align 8, !dbg !2100, !tbaa !1091
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2101
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2102
  %48 = load i8*, i8** %47, align 8, !dbg !2102, !tbaa !1165
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2103
  %50 = load i8*, i8** %49, align 8, !dbg !2103, !tbaa !1168
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2104
  call void @llvm.dbg.value(metadata i64 %51, metadata !2056, metadata !DIExpression()), !dbg !2096
  %52 = icmp ugt i64 %38, %51, !dbg !2105
  br i1 %52, label %63, label %53, !dbg !2107

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2108
  call void @llvm.dbg.value(metadata i64 %54, metadata !2052, metadata !DIExpression()), !dbg !2096
  store i64 %54, i64* %37, align 8, !dbg !2110, !tbaa !2018
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2111
  br i1 %55, label %57, label %56, !dbg !2113

56:                                               ; preds = %53
  tail call void @free(i8* %40) #26, !dbg !2114
  br label %57, !dbg !2114

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !1952, metadata !DIExpression()) #26, !dbg !2115
  %58 = tail call noalias i8* @xmalloc(i64 %54) #26, !dbg !2117
  call void @llvm.dbg.value(metadata i8* %58, metadata !2054, metadata !DIExpression()), !dbg !2096
  store i8* %58, i8** %39, align 8, !dbg !2118, !tbaa !2005
  %59 = load i32, i32* %44, align 8, !dbg !2119, !tbaa !1091
  %60 = load i8*, i8** %47, align 8, !dbg !2120, !tbaa !1165
  %61 = load i8*, i8** %49, align 8, !dbg !2121, !tbaa !1168
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2122
  br label %63, !dbg !2123

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2096
  call void @llvm.dbg.value(metadata i8* %64, metadata !2054, metadata !DIExpression()), !dbg !2096
  store i32 %6, i32* %5, align 4, !dbg !2124, !tbaa !762
  ret i8* %64, !dbg !2125
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2126 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2130, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i8* %1, metadata !2131, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i64 %2, metadata !2132, metadata !DIExpression()), !dbg !2133
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2134
  ret i8* %4, !dbg !2135
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2136 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2138, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i32 0, metadata !2033, metadata !DIExpression()) #26, !dbg !2140
  call void @llvm.dbg.value(metadata i8* %0, metadata !2034, metadata !DIExpression()) #26, !dbg !2140
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #26, !dbg !2142
  ret i8* %2, !dbg !2143
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2144 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2148, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.value(metadata i64 %1, metadata !2149, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.value(metadata i32 0, metadata !2130, metadata !DIExpression()) #26, !dbg !2151
  call void @llvm.dbg.value(metadata i8* %0, metadata !2131, metadata !DIExpression()) #26, !dbg !2151
  call void @llvm.dbg.value(metadata i64 %1, metadata !2132, metadata !DIExpression()) #26, !dbg !2151
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #26, !dbg !2153
  ret i8* %3, !dbg !2154
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2155 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2159, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i32 %1, metadata !2160, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i8* %2, metadata !2161, metadata !DIExpression()), !dbg !2163
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2164
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2164
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2162, metadata !DIExpression()), !dbg !2165
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2166), !dbg !2169
  call void @llvm.dbg.value(metadata i32 %1, metadata !2170, metadata !DIExpression()) #26, !dbg !2176
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2175, metadata !DIExpression()) #26, !dbg !2178
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #26, !dbg !2178, !alias.scope !2166
  %6 = icmp eq i32 %1, 10, !dbg !2179
  br i1 %6, label %7, label %8, !dbg !2181

7:                                                ; preds = %3
  tail call void @abort() #28, !dbg !2182, !noalias !2166
  unreachable, !dbg !2182

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2183
  store i32 %1, i32* %9, align 8, !dbg !2184, !tbaa !1091, !alias.scope !2166
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2185
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2186
  ret i8* %10, !dbg !2187
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2188 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2192, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata i32 %1, metadata !2193, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata i8* %2, metadata !2194, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata i64 %3, metadata !2195, metadata !DIExpression()), !dbg !2197
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2198
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2198
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2196, metadata !DIExpression()), !dbg !2199
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2200), !dbg !2203
  call void @llvm.dbg.value(metadata i32 %1, metadata !2170, metadata !DIExpression()) #26, !dbg !2204
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2175, metadata !DIExpression()) #26, !dbg !2206
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #26, !dbg !2206, !alias.scope !2200
  %7 = icmp eq i32 %1, 10, !dbg !2207
  br i1 %7, label %8, label %9, !dbg !2208

8:                                                ; preds = %4
  tail call void @abort() #28, !dbg !2209, !noalias !2200
  unreachable, !dbg !2209

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2210
  store i32 %1, i32* %10, align 8, !dbg !2211, !tbaa !1091, !alias.scope !2200
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2212
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2213
  ret i8* %11, !dbg !2214
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2215 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2219, metadata !DIExpression()), !dbg !2221
  call void @llvm.dbg.value(metadata i8* %1, metadata !2220, metadata !DIExpression()), !dbg !2221
  call void @llvm.dbg.value(metadata i32 0, metadata !2159, metadata !DIExpression()) #26, !dbg !2222
  call void @llvm.dbg.value(metadata i32 %0, metadata !2160, metadata !DIExpression()) #26, !dbg !2222
  call void @llvm.dbg.value(metadata i8* %1, metadata !2161, metadata !DIExpression()) #26, !dbg !2222
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2224
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2224
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2162, metadata !DIExpression()) #26, !dbg !2225
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2226) #26, !dbg !2229
  call void @llvm.dbg.value(metadata i32 %0, metadata !2170, metadata !DIExpression()) #26, !dbg !2230
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2175, metadata !DIExpression()) #26, !dbg !2232
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #26, !dbg !2232, !alias.scope !2226
  %5 = icmp eq i32 %0, 10, !dbg !2233
  br i1 %5, label %6, label %7, !dbg !2234

6:                                                ; preds = %2
  tail call void @abort() #28, !dbg !2235, !noalias !2226
  unreachable, !dbg !2235

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2236
  store i32 %0, i32* %8, align 8, !dbg !2237, !tbaa !1091, !alias.scope !2226
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #26, !dbg !2238
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2239
  ret i8* %9, !dbg !2240
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2241 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2245, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %1, metadata !2246, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %2, metadata !2247, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i32 0, metadata !2192, metadata !DIExpression()) #26, !dbg !2249
  call void @llvm.dbg.value(metadata i32 %0, metadata !2193, metadata !DIExpression()) #26, !dbg !2249
  call void @llvm.dbg.value(metadata i8* %1, metadata !2194, metadata !DIExpression()) #26, !dbg !2249
  call void @llvm.dbg.value(metadata i64 %2, metadata !2195, metadata !DIExpression()) #26, !dbg !2249
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2251
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2251
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2196, metadata !DIExpression()) #26, !dbg !2252
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2253) #26, !dbg !2256
  call void @llvm.dbg.value(metadata i32 %0, metadata !2170, metadata !DIExpression()) #26, !dbg !2257
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2175, metadata !DIExpression()) #26, !dbg !2259
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #26, !dbg !2259, !alias.scope !2253
  %6 = icmp eq i32 %0, 10, !dbg !2260
  br i1 %6, label %7, label %8, !dbg !2261

7:                                                ; preds = %3
  tail call void @abort() #28, !dbg !2262, !noalias !2253
  unreachable, !dbg !2262

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2263
  store i32 %0, i32* %9, align 8, !dbg !2264, !tbaa !1091, !alias.scope !2253
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #26, !dbg !2265
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2266
  ret i8* %10, !dbg !2267
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2268 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2272, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i64 %1, metadata !2273, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8 %2, metadata !2274, metadata !DIExpression()), !dbg !2276
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2277
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2277
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2275, metadata !DIExpression()), !dbg !2278
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2279, !tbaa.struct !2280
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1109, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 %2, metadata !1110, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i32 1, metadata !1111, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 %2, metadata !1112, metadata !DIExpression()), !dbg !2281
  %6 = lshr i8 %2, 5, !dbg !2283
  %7 = zext i8 %6 to i64, !dbg !2283
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2284
  call void @llvm.dbg.value(metadata i32* %8, metadata !1114, metadata !DIExpression()), !dbg !2281
  %9 = and i8 %2, 31, !dbg !2285
  %10 = zext i8 %9 to i32, !dbg !2285
  call void @llvm.dbg.value(metadata i32 %10, metadata !1116, metadata !DIExpression()), !dbg !2281
  %11 = load i32, i32* %8, align 4, !dbg !2286, !tbaa !762
  %12 = lshr i32 %11, %10, !dbg !2287
  %13 = and i32 %12, 1, !dbg !2288
  call void @llvm.dbg.value(metadata i32 %13, metadata !1117, metadata !DIExpression()), !dbg !2281
  %14 = xor i32 %13, 1, !dbg !2289
  %15 = shl i32 %14, %10, !dbg !2290
  %16 = xor i32 %15, %11, !dbg !2291
  store i32 %16, i32* %8, align 4, !dbg !2291, !tbaa !762
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2292
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2293
  ret i8* %17, !dbg !2294
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2295 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2299, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 %1, metadata !2300, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8* %0, metadata !2272, metadata !DIExpression()) #26, !dbg !2302
  call void @llvm.dbg.value(metadata i64 -1, metadata !2273, metadata !DIExpression()) #26, !dbg !2302
  call void @llvm.dbg.value(metadata i8 %1, metadata !2274, metadata !DIExpression()) #26, !dbg !2302
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2304
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2304
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2275, metadata !DIExpression()) #26, !dbg !2305
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #26, !dbg !2306, !tbaa.struct !2280
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1109, metadata !DIExpression()) #26, !dbg !2307
  call void @llvm.dbg.value(metadata i8 %1, metadata !1110, metadata !DIExpression()) #26, !dbg !2307
  call void @llvm.dbg.value(metadata i32 1, metadata !1111, metadata !DIExpression()) #26, !dbg !2307
  call void @llvm.dbg.value(metadata i8 %1, metadata !1112, metadata !DIExpression()) #26, !dbg !2307
  %5 = lshr i8 %1, 5, !dbg !2309
  %6 = zext i8 %5 to i64, !dbg !2309
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2310
  call void @llvm.dbg.value(metadata i32* %7, metadata !1114, metadata !DIExpression()) #26, !dbg !2307
  %8 = and i8 %1, 31, !dbg !2311
  %9 = zext i8 %8 to i32, !dbg !2311
  call void @llvm.dbg.value(metadata i32 %9, metadata !1116, metadata !DIExpression()) #26, !dbg !2307
  %10 = load i32, i32* %7, align 4, !dbg !2312, !tbaa !762
  %11 = lshr i32 %10, %9, !dbg !2313
  %12 = and i32 %11, 1, !dbg !2314
  call void @llvm.dbg.value(metadata i32 %12, metadata !1117, metadata !DIExpression()) #26, !dbg !2307
  %13 = xor i32 %12, 1, !dbg !2315
  %14 = shl i32 %13, %9, !dbg !2316
  %15 = xor i32 %14, %10, !dbg !2317
  store i32 %15, i32* %7, align 4, !dbg !2317, !tbaa !762
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #26, !dbg !2318
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2319
  ret i8* %16, !dbg !2320
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2321 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2323, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i8* %0, metadata !2299, metadata !DIExpression()) #26, !dbg !2325
  call void @llvm.dbg.value(metadata i8 58, metadata !2300, metadata !DIExpression()) #26, !dbg !2325
  call void @llvm.dbg.value(metadata i8* %0, metadata !2272, metadata !DIExpression()) #26, !dbg !2327
  call void @llvm.dbg.value(metadata i64 -1, metadata !2273, metadata !DIExpression()) #26, !dbg !2327
  call void @llvm.dbg.value(metadata i8 58, metadata !2274, metadata !DIExpression()) #26, !dbg !2327
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2329
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #26, !dbg !2329
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2275, metadata !DIExpression()) #26, !dbg !2330
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #26, !dbg !2331, !tbaa.struct !2280
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1109, metadata !DIExpression()) #26, !dbg !2332
  call void @llvm.dbg.value(metadata i8 58, metadata !1110, metadata !DIExpression()) #26, !dbg !2332
  call void @llvm.dbg.value(metadata i32 1, metadata !1111, metadata !DIExpression()) #26, !dbg !2332
  call void @llvm.dbg.value(metadata i8 58, metadata !1112, metadata !DIExpression()) #26, !dbg !2332
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2334
  call void @llvm.dbg.value(metadata i32* %4, metadata !1114, metadata !DIExpression()) #26, !dbg !2332
  call void @llvm.dbg.value(metadata i32 26, metadata !1116, metadata !DIExpression()) #26, !dbg !2332
  %5 = load i32, i32* %4, align 4, !dbg !2335, !tbaa !762
  call void @llvm.dbg.value(metadata i32 %5, metadata !1117, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #26, !dbg !2332
  %6 = or i32 %5, 67108864, !dbg !2336
  store i32 %6, i32* %4, align 4, !dbg !2336, !tbaa !762
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #26, !dbg !2337
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #26, !dbg !2338
  ret i8* %7, !dbg !2339
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2340 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2342, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i64 %1, metadata !2343, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i8* %0, metadata !2272, metadata !DIExpression()) #26, !dbg !2345
  call void @llvm.dbg.value(metadata i64 %1, metadata !2273, metadata !DIExpression()) #26, !dbg !2345
  call void @llvm.dbg.value(metadata i8 58, metadata !2274, metadata !DIExpression()) #26, !dbg !2345
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2347
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2347
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2275, metadata !DIExpression()) #26, !dbg !2348
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #26, !dbg !2349, !tbaa.struct !2280
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1109, metadata !DIExpression()) #26, !dbg !2350
  call void @llvm.dbg.value(metadata i8 58, metadata !1110, metadata !DIExpression()) #26, !dbg !2350
  call void @llvm.dbg.value(metadata i32 1, metadata !1111, metadata !DIExpression()) #26, !dbg !2350
  call void @llvm.dbg.value(metadata i8 58, metadata !1112, metadata !DIExpression()) #26, !dbg !2350
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2352
  call void @llvm.dbg.value(metadata i32* %5, metadata !1114, metadata !DIExpression()) #26, !dbg !2350
  call void @llvm.dbg.value(metadata i32 26, metadata !1116, metadata !DIExpression()) #26, !dbg !2350
  %6 = load i32, i32* %5, align 4, !dbg !2353, !tbaa !762
  call void @llvm.dbg.value(metadata i32 %6, metadata !1117, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #26, !dbg !2350
  %7 = or i32 %6, 67108864, !dbg !2354
  store i32 %7, i32* %5, align 4, !dbg !2354, !tbaa !762
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #26, !dbg !2355
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2356
  ret i8* %8, !dbg !2357
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2358 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2175, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2364
  call void @llvm.dbg.value(metadata i32 %0, metadata !2360, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i32 %1, metadata !2361, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i8* %2, metadata !2362, metadata !DIExpression()), !dbg !2366
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2367
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2367
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2363, metadata !DIExpression()), !dbg !2368
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2369
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2369
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2370), !dbg !2369
  call void @llvm.dbg.value(metadata i32 %1, metadata !2170, metadata !DIExpression()) #26, !dbg !2373
  call void @llvm.dbg.value(metadata i32 0, metadata !2175, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2373
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2364, !alias.scope !2370
  %8 = icmp eq i32 %1, 10, !dbg !2374
  br i1 %8, label %9, label %10, !dbg !2375

9:                                                ; preds = %3
  tail call void @abort() #28, !dbg !2376, !noalias !2370
  unreachable, !dbg !2376

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2175, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2373
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2369
  store i32 %1, i32* %11, align 8, !dbg !2369, !tbaa.struct !2280
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2369
  %13 = bitcast i32* %12 to i8*, !dbg !2369
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2369, !tbaa.struct !2377
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2369
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1109, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i8 58, metadata !1110, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i32 1, metadata !1111, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i8 58, metadata !1112, metadata !DIExpression()), !dbg !2378
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2380
  call void @llvm.dbg.value(metadata i32* %14, metadata !1114, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i32 26, metadata !1116, metadata !DIExpression()), !dbg !2378
  %15 = load i32, i32* %14, align 4, !dbg !2381, !tbaa !762
  call void @llvm.dbg.value(metadata i32 %15, metadata !1117, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2378
  %16 = or i32 %15, 67108864, !dbg !2382
  store i32 %16, i32* %14, align 4, !dbg !2382, !tbaa !762
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2383
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2384
  ret i8* %17, !dbg !2385
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2386 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2390, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i8* %1, metadata !2391, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i8* %2, metadata !2392, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i8* %3, metadata !2393, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i32 %0, metadata !2395, metadata !DIExpression()) #26, !dbg !2405
  call void @llvm.dbg.value(metadata i8* %1, metadata !2400, metadata !DIExpression()) #26, !dbg !2405
  call void @llvm.dbg.value(metadata i8* %2, metadata !2401, metadata !DIExpression()) #26, !dbg !2405
  call void @llvm.dbg.value(metadata i8* %3, metadata !2402, metadata !DIExpression()) #26, !dbg !2405
  call void @llvm.dbg.value(metadata i64 -1, metadata !2403, metadata !DIExpression()) #26, !dbg !2405
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2407
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2407
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2404, metadata !DIExpression()) #26, !dbg !2408
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #26, !dbg !2409, !tbaa.struct !2280
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1150, metadata !DIExpression()) #26, !dbg !2410
  call void @llvm.dbg.value(metadata i8* %1, metadata !1151, metadata !DIExpression()) #26, !dbg !2410
  call void @llvm.dbg.value(metadata i8* %2, metadata !1152, metadata !DIExpression()) #26, !dbg !2410
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1150, metadata !DIExpression()) #26, !dbg !2410
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2412
  store i32 10, i32* %7, align 8, !dbg !2413, !tbaa !1091
  %8 = icmp ne i8* %1, null, !dbg !2414
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2415
  br i1 %10, label %12, label %11, !dbg !2415

11:                                               ; preds = %4
  tail call void @abort() #28, !dbg !2416
  unreachable, !dbg !2416

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2417
  store i8* %1, i8** %13, align 8, !dbg !2418, !tbaa !1165
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2419
  store i8* %2, i8** %14, align 8, !dbg !2420, !tbaa !1168
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #26, !dbg !2421
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2422
  ret i8* %15, !dbg !2423
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2396 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2395, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i8* %1, metadata !2400, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i8* %2, metadata !2401, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i8* %3, metadata !2402, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i64 %4, metadata !2403, metadata !DIExpression()), !dbg !2424
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2425
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #26, !dbg !2425
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2404, metadata !DIExpression()), !dbg !2426
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2427, !tbaa.struct !2280
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1150, metadata !DIExpression()) #26, !dbg !2428
  call void @llvm.dbg.value(metadata i8* %1, metadata !1151, metadata !DIExpression()) #26, !dbg !2428
  call void @llvm.dbg.value(metadata i8* %2, metadata !1152, metadata !DIExpression()) #26, !dbg !2428
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1150, metadata !DIExpression()) #26, !dbg !2428
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2430
  store i32 10, i32* %8, align 8, !dbg !2431, !tbaa !1091
  %9 = icmp ne i8* %1, null, !dbg !2432
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2433
  br i1 %11, label %13, label %12, !dbg !2433

12:                                               ; preds = %5
  tail call void @abort() #28, !dbg !2434
  unreachable, !dbg !2434

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2435
  store i8* %1, i8** %14, align 8, !dbg !2436, !tbaa !1165
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2437
  store i8* %2, i8** %15, align 8, !dbg !2438, !tbaa !1168
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2439
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #26, !dbg !2440
  ret i8* %16, !dbg !2441
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2442 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2446, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i8* %1, metadata !2447, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i8* %2, metadata !2448, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i32 0, metadata !2390, metadata !DIExpression()) #26, !dbg !2450
  call void @llvm.dbg.value(metadata i8* %0, metadata !2391, metadata !DIExpression()) #26, !dbg !2450
  call void @llvm.dbg.value(metadata i8* %1, metadata !2392, metadata !DIExpression()) #26, !dbg !2450
  call void @llvm.dbg.value(metadata i8* %2, metadata !2393, metadata !DIExpression()) #26, !dbg !2450
  call void @llvm.dbg.value(metadata i32 0, metadata !2395, metadata !DIExpression()) #26, !dbg !2452
  call void @llvm.dbg.value(metadata i8* %0, metadata !2400, metadata !DIExpression()) #26, !dbg !2452
  call void @llvm.dbg.value(metadata i8* %1, metadata !2401, metadata !DIExpression()) #26, !dbg !2452
  call void @llvm.dbg.value(metadata i8* %2, metadata !2402, metadata !DIExpression()) #26, !dbg !2452
  call void @llvm.dbg.value(metadata i64 -1, metadata !2403, metadata !DIExpression()) #26, !dbg !2452
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2454
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2454
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2404, metadata !DIExpression()) #26, !dbg !2455
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #26, !dbg !2456, !tbaa.struct !2280
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1150, metadata !DIExpression()) #26, !dbg !2457
  call void @llvm.dbg.value(metadata i8* %0, metadata !1151, metadata !DIExpression()) #26, !dbg !2457
  call void @llvm.dbg.value(metadata i8* %1, metadata !1152, metadata !DIExpression()) #26, !dbg !2457
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1150, metadata !DIExpression()) #26, !dbg !2457
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2459
  store i32 10, i32* %6, align 8, !dbg !2460, !tbaa !1091
  %7 = icmp ne i8* %0, null, !dbg !2461
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2462
  br i1 %9, label %11, label %10, !dbg !2462

10:                                               ; preds = %3
  tail call void @abort() #28, !dbg !2463
  unreachable, !dbg !2463

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2464
  store i8* %0, i8** %12, align 8, !dbg !2465, !tbaa !1165
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2466
  store i8* %1, i8** %13, align 8, !dbg !2467, !tbaa !1168
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #26, !dbg !2468
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2469
  ret i8* %14, !dbg !2470
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2471 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2475, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8* %1, metadata !2476, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8* %2, metadata !2477, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i64 %3, metadata !2478, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i32 0, metadata !2395, metadata !DIExpression()) #26, !dbg !2480
  call void @llvm.dbg.value(metadata i8* %0, metadata !2400, metadata !DIExpression()) #26, !dbg !2480
  call void @llvm.dbg.value(metadata i8* %1, metadata !2401, metadata !DIExpression()) #26, !dbg !2480
  call void @llvm.dbg.value(metadata i8* %2, metadata !2402, metadata !DIExpression()) #26, !dbg !2480
  call void @llvm.dbg.value(metadata i64 %3, metadata !2403, metadata !DIExpression()) #26, !dbg !2480
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2482
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2482
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2404, metadata !DIExpression()) #26, !dbg !2483
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #26, !dbg !2484, !tbaa.struct !2280
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1150, metadata !DIExpression()) #26, !dbg !2485
  call void @llvm.dbg.value(metadata i8* %0, metadata !1151, metadata !DIExpression()) #26, !dbg !2485
  call void @llvm.dbg.value(metadata i8* %1, metadata !1152, metadata !DIExpression()) #26, !dbg !2485
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1150, metadata !DIExpression()) #26, !dbg !2485
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2487
  store i32 10, i32* %7, align 8, !dbg !2488, !tbaa !1091
  %8 = icmp ne i8* %0, null, !dbg !2489
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2490
  br i1 %10, label %12, label %11, !dbg !2490

11:                                               ; preds = %4
  tail call void @abort() #28, !dbg !2491
  unreachable, !dbg !2491

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2492
  store i8* %0, i8** %13, align 8, !dbg !2493, !tbaa !1165
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2494
  store i8* %1, i8** %14, align 8, !dbg !2495, !tbaa !1168
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #26, !dbg !2496
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2497
  ret i8* %15, !dbg !2498
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2499 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2503, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i8* %1, metadata !2504, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i64 %2, metadata !2505, metadata !DIExpression()), !dbg !2506
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2507
  ret i8* %4, !dbg !2508
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2509 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2513, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata i64 %1, metadata !2514, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata i32 0, metadata !2503, metadata !DIExpression()) #26, !dbg !2516
  call void @llvm.dbg.value(metadata i8* %0, metadata !2504, metadata !DIExpression()) #26, !dbg !2516
  call void @llvm.dbg.value(metadata i64 %1, metadata !2505, metadata !DIExpression()) #26, !dbg !2516
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #26, !dbg !2518
  ret i8* %3, !dbg !2519
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2520 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2524, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8* %1, metadata !2525, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i32 %0, metadata !2503, metadata !DIExpression()) #26, !dbg !2527
  call void @llvm.dbg.value(metadata i8* %1, metadata !2504, metadata !DIExpression()) #26, !dbg !2527
  call void @llvm.dbg.value(metadata i64 -1, metadata !2505, metadata !DIExpression()) #26, !dbg !2527
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #26, !dbg !2529
  ret i8* %3, !dbg !2530
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2531 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2535, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i32 0, metadata !2524, metadata !DIExpression()) #26, !dbg !2537
  call void @llvm.dbg.value(metadata i8* %0, metadata !2525, metadata !DIExpression()) #26, !dbg !2537
  call void @llvm.dbg.value(metadata i32 0, metadata !2503, metadata !DIExpression()) #26, !dbg !2539
  call void @llvm.dbg.value(metadata i8* %0, metadata !2504, metadata !DIExpression()) #26, !dbg !2539
  call void @llvm.dbg.value(metadata i64 -1, metadata !2505, metadata !DIExpression()) #26, !dbg !2539
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #26, !dbg !2541
  ret i8* %2, !dbg !2542
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i64 @safe_write(i32 %0, i8* nocapture readonly %1, i64 %2) local_unnamed_addr #21 !dbg !2543 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2546, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i8* %1, metadata !2547, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i64 %2, metadata !2548, metadata !DIExpression()), !dbg !2556
  %4 = tail call i64 @write(i32 %0, i8* %1, i64 %2) #26, !dbg !2557
  call void @llvm.dbg.value(metadata i64 %4, metadata !2549, metadata !DIExpression()), !dbg !2558
  %5 = icmp sgt i64 %4, -1, !dbg !2559
  br i1 %5, label %21, label %6, !dbg !2561

6:                                                ; preds = %3
  %7 = tail call i32* @__errno_location() #29, !dbg !2556
  br label %8, !dbg !2561

8:                                                ; preds = %6, %17
  %9 = phi i64 [ %4, %6 ], [ %19, %17 ]
  %10 = phi i64 [ %2, %6 ], [ %18, %17 ]
  call void @llvm.dbg.value(metadata i64 %10, metadata !2548, metadata !DIExpression()), !dbg !2556
  %11 = load i32, i32* %7, align 4, !dbg !2562, !tbaa !762
  %12 = icmp eq i32 %11, 4, !dbg !2562
  br i1 %12, label %17, label %13, !dbg !2564, !llvm.loop !2565

13:                                               ; preds = %8
  %14 = icmp eq i32 %11, 22, !dbg !2568
  %15 = icmp ugt i64 %10, 2146435072
  %16 = and i1 %15, %14, !dbg !2570
  br i1 %16, label %17, label %21, !dbg !2570

17:                                               ; preds = %13, %8
  %18 = phi i64 [ %10, %8 ], [ 2146435072, %13 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !2548, metadata !DIExpression()), !dbg !2556
  %19 = tail call i64 @write(i32 %0, i8* %1, i64 %18) #26, !dbg !2557
  call void @llvm.dbg.value(metadata i64 %19, metadata !2549, metadata !DIExpression()), !dbg !2558
  %20 = icmp sgt i64 %19, -1, !dbg !2559
  br i1 %20, label %21, label %8, !dbg !2561

21:                                               ; preds = %17, %13, %3
  %22 = phi i64 [ %4, %3 ], [ %9, %13 ], [ %19, %17 ], !dbg !2557
  call void @llvm.dbg.value(metadata i64 %18, metadata !2548, metadata !DIExpression()), !dbg !2556
  ret i64 %22, !dbg !2571
}

; Function Attrs: nofree
declare !dbg !2572 noundef i64 @write(i32 noundef, i8* nocapture noundef readonly, i64 noundef) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2576 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2616, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i8* %1, metadata !2617, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i8* %2, metadata !2618, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i8* %3, metadata !2619, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i8** %4, metadata !2620, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i64 %5, metadata !2621, metadata !DIExpression()), !dbg !2622
  %7 = icmp eq i8* %1, null, !dbg !2623
  br i1 %7, label %10, label %8, !dbg !2625

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.72, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #26, !dbg !2626
  br label %12, !dbg !2626

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.73, i64 0, i64 0), i8* %2, i8* %3) #26, !dbg !2627
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.74, i64 0, i64 0), i32 5) #26, !dbg !2628
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #26, !dbg !2628
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.75, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2629
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.76, i64 0, i64 0), i32 5) #26, !dbg !2630
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.77, i64 0, i64 0)) #26, !dbg !2630
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.75, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2631
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
  ], !dbg !2632

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.78, i64 0, i64 0), i32 5) #26, !dbg !2633
  %21 = load i8*, i8** %4, align 8, !dbg !2633, !tbaa !605
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #26, !dbg !2633
  br label %147, !dbg !2635

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.79, i64 0, i64 0), i32 5) #26, !dbg !2636
  %25 = load i8*, i8** %4, align 8, !dbg !2636, !tbaa !605
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2636
  %27 = load i8*, i8** %26, align 8, !dbg !2636, !tbaa !605
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #26, !dbg !2636
  br label %147, !dbg !2637

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.80, i64 0, i64 0), i32 5) #26, !dbg !2638
  %31 = load i8*, i8** %4, align 8, !dbg !2638, !tbaa !605
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2638
  %33 = load i8*, i8** %32, align 8, !dbg !2638, !tbaa !605
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2638
  %35 = load i8*, i8** %34, align 8, !dbg !2638, !tbaa !605
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #26, !dbg !2638
  br label %147, !dbg !2639

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.81, i64 0, i64 0), i32 5) #26, !dbg !2640
  %39 = load i8*, i8** %4, align 8, !dbg !2640, !tbaa !605
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2640
  %41 = load i8*, i8** %40, align 8, !dbg !2640, !tbaa !605
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2640
  %43 = load i8*, i8** %42, align 8, !dbg !2640, !tbaa !605
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2640
  %45 = load i8*, i8** %44, align 8, !dbg !2640, !tbaa !605
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #26, !dbg !2640
  br label %147, !dbg !2641

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.82, i64 0, i64 0), i32 5) #26, !dbg !2642
  %49 = load i8*, i8** %4, align 8, !dbg !2642, !tbaa !605
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2642
  %51 = load i8*, i8** %50, align 8, !dbg !2642, !tbaa !605
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2642
  %53 = load i8*, i8** %52, align 8, !dbg !2642, !tbaa !605
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2642
  %55 = load i8*, i8** %54, align 8, !dbg !2642, !tbaa !605
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2642
  %57 = load i8*, i8** %56, align 8, !dbg !2642, !tbaa !605
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #26, !dbg !2642
  br label %147, !dbg !2643

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.83, i64 0, i64 0), i32 5) #26, !dbg !2644
  %61 = load i8*, i8** %4, align 8, !dbg !2644, !tbaa !605
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2644
  %63 = load i8*, i8** %62, align 8, !dbg !2644, !tbaa !605
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2644
  %65 = load i8*, i8** %64, align 8, !dbg !2644, !tbaa !605
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2644
  %67 = load i8*, i8** %66, align 8, !dbg !2644, !tbaa !605
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2644
  %69 = load i8*, i8** %68, align 8, !dbg !2644, !tbaa !605
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2644
  %71 = load i8*, i8** %70, align 8, !dbg !2644, !tbaa !605
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #26, !dbg !2644
  br label %147, !dbg !2645

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.84, i64 0, i64 0), i32 5) #26, !dbg !2646
  %75 = load i8*, i8** %4, align 8, !dbg !2646, !tbaa !605
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2646
  %77 = load i8*, i8** %76, align 8, !dbg !2646, !tbaa !605
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2646
  %79 = load i8*, i8** %78, align 8, !dbg !2646, !tbaa !605
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2646
  %81 = load i8*, i8** %80, align 8, !dbg !2646, !tbaa !605
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2646
  %83 = load i8*, i8** %82, align 8, !dbg !2646, !tbaa !605
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2646
  %85 = load i8*, i8** %84, align 8, !dbg !2646, !tbaa !605
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2646
  %87 = load i8*, i8** %86, align 8, !dbg !2646, !tbaa !605
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #26, !dbg !2646
  br label %147, !dbg !2647

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.85, i64 0, i64 0), i32 5) #26, !dbg !2648
  %91 = load i8*, i8** %4, align 8, !dbg !2648, !tbaa !605
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2648
  %93 = load i8*, i8** %92, align 8, !dbg !2648, !tbaa !605
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2648
  %95 = load i8*, i8** %94, align 8, !dbg !2648, !tbaa !605
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2648
  %97 = load i8*, i8** %96, align 8, !dbg !2648, !tbaa !605
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2648
  %99 = load i8*, i8** %98, align 8, !dbg !2648, !tbaa !605
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2648
  %101 = load i8*, i8** %100, align 8, !dbg !2648, !tbaa !605
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2648
  %103 = load i8*, i8** %102, align 8, !dbg !2648, !tbaa !605
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2648
  %105 = load i8*, i8** %104, align 8, !dbg !2648, !tbaa !605
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #26, !dbg !2648
  br label %147, !dbg !2649

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.86, i64 0, i64 0), i32 5) #26, !dbg !2650
  %109 = load i8*, i8** %4, align 8, !dbg !2650, !tbaa !605
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2650
  %111 = load i8*, i8** %110, align 8, !dbg !2650, !tbaa !605
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2650
  %113 = load i8*, i8** %112, align 8, !dbg !2650, !tbaa !605
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2650
  %115 = load i8*, i8** %114, align 8, !dbg !2650, !tbaa !605
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2650
  %117 = load i8*, i8** %116, align 8, !dbg !2650, !tbaa !605
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2650
  %119 = load i8*, i8** %118, align 8, !dbg !2650, !tbaa !605
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2650
  %121 = load i8*, i8** %120, align 8, !dbg !2650, !tbaa !605
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2650
  %123 = load i8*, i8** %122, align 8, !dbg !2650, !tbaa !605
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2650
  %125 = load i8*, i8** %124, align 8, !dbg !2650, !tbaa !605
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #26, !dbg !2650
  br label %147, !dbg !2651

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.87, i64 0, i64 0), i32 5) #26, !dbg !2652
  %129 = load i8*, i8** %4, align 8, !dbg !2652, !tbaa !605
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2652
  %131 = load i8*, i8** %130, align 8, !dbg !2652, !tbaa !605
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2652
  %133 = load i8*, i8** %132, align 8, !dbg !2652, !tbaa !605
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2652
  %135 = load i8*, i8** %134, align 8, !dbg !2652, !tbaa !605
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2652
  %137 = load i8*, i8** %136, align 8, !dbg !2652, !tbaa !605
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2652
  %139 = load i8*, i8** %138, align 8, !dbg !2652, !tbaa !605
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2652
  %141 = load i8*, i8** %140, align 8, !dbg !2652, !tbaa !605
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2652
  %143 = load i8*, i8** %142, align 8, !dbg !2652, !tbaa !605
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2652
  %145 = load i8*, i8** %144, align 8, !dbg !2652, !tbaa !605
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #26, !dbg !2652
  br label %147, !dbg !2653

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2654
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !2655 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2659, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i8* %1, metadata !2660, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i8* %2, metadata !2661, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i8* %3, metadata !2662, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i8** %4, metadata !2663, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i64 0, metadata !2664, metadata !DIExpression()), !dbg !2665
  br label %6, !dbg !2666

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2668
  call void @llvm.dbg.value(metadata i64 %7, metadata !2664, metadata !DIExpression()), !dbg !2665
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2669
  %9 = load i8*, i8** %8, align 8, !dbg !2669, !tbaa !605
  %10 = icmp eq i8* %9, null, !dbg !2671
  %11 = add i64 %7, 1, !dbg !2672
  call void @llvm.dbg.value(metadata i64 %11, metadata !2664, metadata !DIExpression()), !dbg !2665
  br i1 %10, label %12, label %6, !dbg !2671, !llvm.loop !2673

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2675
  ret void, !dbg !2676
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !2677 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2688, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i8* %1, metadata !2689, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i8* %2, metadata !2690, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i8* %3, metadata !2691, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2692, metadata !DIExpression()), !dbg !2696
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2697
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #26, !dbg !2697
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2694, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i64 0, metadata !2693, metadata !DIExpression()), !dbg !2696
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !2693, metadata !DIExpression()), !dbg !2696
  %11 = load i32, i32* %8, align 8, !dbg !2699
  %12 = icmp ult i32 %11, 41, !dbg !2699
  br i1 %12, label %13, label %18, !dbg !2699

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2699
  %15 = zext i32 %11 to i64, !dbg !2699
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2699
  %17 = add nuw nsw i32 %11, 8, !dbg !2699
  store i32 %17, i32* %8, align 8, !dbg !2699
  br label %21, !dbg !2699

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2699
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2699
  store i8* %20, i8** %9, align 8, !dbg !2699
  br label %21, !dbg !2699

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2699
  %25 = load i8*, i8** %24, align 8, !dbg !2699
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2702
  store i8* %25, i8** %26, align 16, !dbg !2703, !tbaa !605
  %27 = icmp eq i8* %25, null, !dbg !2704
  br i1 %27, label %30, label %28, !dbg !2705

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2693, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i64 1, metadata !2693, metadata !DIExpression()), !dbg !2696
  %29 = icmp ult i32 %22, 41, !dbg !2699
  br i1 %29, label %35, label %32, !dbg !2699

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2706
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2707
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #26, !dbg !2708
  ret void, !dbg !2708

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2699
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2699
  store i8* %34, i8** %9, align 8, !dbg !2699
  br label %40, !dbg !2699

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2699
  %37 = zext i32 %22 to i64, !dbg !2699
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2699
  %39 = add nuw nsw i32 %22, 8, !dbg !2699
  store i32 %39, i32* %8, align 8, !dbg !2699
  br label %40, !dbg !2699

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2699
  %44 = load i8*, i8** %43, align 8, !dbg !2699
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2702
  store i8* %44, i8** %45, align 8, !dbg !2703, !tbaa !605
  %46 = icmp eq i8* %44, null, !dbg !2704
  br i1 %46, label %30, label %47, !dbg !2705

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2693, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i64 2, metadata !2693, metadata !DIExpression()), !dbg !2696
  %48 = icmp ult i32 %41, 41, !dbg !2699
  br i1 %48, label %52, label %49, !dbg !2699

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2699
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2699
  store i8* %51, i8** %9, align 8, !dbg !2699
  br label %57, !dbg !2699

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2699
  %54 = zext i32 %41 to i64, !dbg !2699
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2699
  %56 = add nuw nsw i32 %41, 8, !dbg !2699
  store i32 %56, i32* %8, align 8, !dbg !2699
  br label %57, !dbg !2699

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2699
  %61 = load i8*, i8** %60, align 8, !dbg !2699
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2702
  store i8* %61, i8** %62, align 16, !dbg !2703, !tbaa !605
  %63 = icmp eq i8* %61, null, !dbg !2704
  br i1 %63, label %30, label %64, !dbg !2705

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2693, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i64 3, metadata !2693, metadata !DIExpression()), !dbg !2696
  %65 = icmp ult i32 %58, 41, !dbg !2699
  br i1 %65, label %69, label %66, !dbg !2699

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2699
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2699
  store i8* %68, i8** %9, align 8, !dbg !2699
  br label %74, !dbg !2699

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2699
  %71 = zext i32 %58 to i64, !dbg !2699
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2699
  %73 = add nuw nsw i32 %58, 8, !dbg !2699
  store i32 %73, i32* %8, align 8, !dbg !2699
  br label %74, !dbg !2699

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2699
  %78 = load i8*, i8** %77, align 8, !dbg !2699
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2702
  store i8* %78, i8** %79, align 8, !dbg !2703, !tbaa !605
  %80 = icmp eq i8* %78, null, !dbg !2704
  br i1 %80, label %30, label %81, !dbg !2705

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2693, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i64 4, metadata !2693, metadata !DIExpression()), !dbg !2696
  %82 = icmp ult i32 %75, 41, !dbg !2699
  br i1 %82, label %86, label %83, !dbg !2699

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2699
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2699
  store i8* %85, i8** %9, align 8, !dbg !2699
  br label %91, !dbg !2699

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2699
  %88 = zext i32 %75 to i64, !dbg !2699
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2699
  %90 = add nuw nsw i32 %75, 8, !dbg !2699
  store i32 %90, i32* %8, align 8, !dbg !2699
  br label %91, !dbg !2699

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2699
  %95 = load i8*, i8** %94, align 8, !dbg !2699
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2702
  store i8* %95, i8** %96, align 16, !dbg !2703, !tbaa !605
  %97 = icmp eq i8* %95, null, !dbg !2704
  br i1 %97, label %30, label %98, !dbg !2705

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2693, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i64 5, metadata !2693, metadata !DIExpression()), !dbg !2696
  %99 = icmp ult i32 %92, 41, !dbg !2699
  br i1 %99, label %103, label %100, !dbg !2699

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2699
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2699
  store i8* %102, i8** %9, align 8, !dbg !2699
  br label %108, !dbg !2699

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2699
  %105 = zext i32 %92 to i64, !dbg !2699
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2699
  %107 = add nuw nsw i32 %92, 8, !dbg !2699
  store i32 %107, i32* %8, align 8, !dbg !2699
  br label %108, !dbg !2699

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2699
  %111 = load i8*, i8** %110, align 8, !dbg !2699
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2702
  store i8* %111, i8** %112, align 8, !dbg !2703, !tbaa !605
  %113 = icmp eq i8* %111, null, !dbg !2704
  br i1 %113, label %30, label %114, !dbg !2705

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2693, metadata !DIExpression()), !dbg !2696
  %115 = load i8*, i8** %9, align 8, !dbg !2699
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2699
  store i8* %116, i8** %9, align 8, !dbg !2699
  %117 = bitcast i8* %115 to i8**, !dbg !2699
  %118 = load i8*, i8** %117, align 8, !dbg !2699
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2702
  store i8* %118, i8** %119, align 16, !dbg !2703, !tbaa !605
  %120 = icmp eq i8* %118, null, !dbg !2704
  br i1 %120, label %30, label %121, !dbg !2705

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2693, metadata !DIExpression()), !dbg !2696
  %122 = load i8*, i8** %9, align 8, !dbg !2699
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2699
  store i8* %123, i8** %9, align 8, !dbg !2699
  %124 = bitcast i8* %122 to i8**, !dbg !2699
  %125 = load i8*, i8** %124, align 8, !dbg !2699
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2702
  store i8* %125, i8** %126, align 8, !dbg !2703, !tbaa !605
  %127 = icmp eq i8* %125, null, !dbg !2704
  br i1 %127, label %30, label %128, !dbg !2705

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2693, metadata !DIExpression()), !dbg !2696
  %129 = load i8*, i8** %9, align 8, !dbg !2699
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2699
  store i8* %130, i8** %9, align 8, !dbg !2699
  %131 = bitcast i8* %129 to i8**, !dbg !2699
  %132 = load i8*, i8** %131, align 8, !dbg !2699
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2702
  store i8* %132, i8** %133, align 16, !dbg !2703, !tbaa !605
  %134 = icmp eq i8* %132, null, !dbg !2704
  br i1 %134, label %30, label %135, !dbg !2705

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2693, metadata !DIExpression()), !dbg !2696
  %136 = load i8*, i8** %9, align 8, !dbg !2699
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2699
  store i8* %137, i8** %9, align 8, !dbg !2699
  %138 = bitcast i8* %136 to i8**, !dbg !2699
  %139 = load i8*, i8** %138, align 8, !dbg !2699
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2702
  store i8* %139, i8** %140, align 8, !dbg !2703, !tbaa !605
  %141 = icmp eq i8* %139, null, !dbg !2704
  %142 = select i1 %141, i64 9, i64 10, !dbg !2705
  br label %30, !dbg !2705
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !2709 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2713, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i8* %1, metadata !2714, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i8* %2, metadata !2715, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i8* %3, metadata !2716, metadata !DIExpression()), !dbg !2722
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2723
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #26, !dbg !2723
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2717, metadata !DIExpression()), !dbg !2724
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2725
  call void @llvm.va_start(i8* nonnull %6), !dbg !2725
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2726
  call void @llvm.va_end(i8* nonnull %6), !dbg !2727
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #26, !dbg !2728
  ret void, !dbg !2728
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !2729 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2730, !tbaa !605
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.75, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2730
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.90, i64 0, i64 0), i32 5) #26, !dbg !2731
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.91, i64 0, i64 0)) #26, !dbg !2731
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.92, i64 0, i64 0), i32 5) #26, !dbg !2732
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.93, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.94, i64 0, i64 0)) #26, !dbg !2732
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.95, i64 0, i64 0), i32 5) #26, !dbg !2733
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.96, i64 0, i64 0)) #26, !dbg !2733
  ret void, !dbg !2734
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #23 !dbg !2735 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2739, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata i64 %1, metadata !2740, metadata !DIExpression()), !dbg !2741
  %3 = udiv i64 9223372036854775807, %1, !dbg !2742
  %4 = icmp ult i64 %3, %0, !dbg !2742
  br i1 %4, label %5, label %6, !dbg !2744

5:                                                ; preds = %2
  tail call void @xalloc_die() #28, !dbg !2745
  unreachable, !dbg !2745

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2746
  call void @llvm.dbg.value(metadata i64 %7, metadata !2747, metadata !DIExpression()) #26, !dbg !2753
  %8 = tail call noalias i8* @malloc(i64 %7) #26, !dbg !2755
  call void @llvm.dbg.value(metadata i8* %8, metadata !2752, metadata !DIExpression()) #26, !dbg !2753
  %9 = icmp eq i8* %8, null, !dbg !2756
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !2758
  br i1 %11, label %12, label %13, !dbg !2758

12:                                               ; preds = %6
  tail call void @xalloc_die() #28, !dbg !2759
  unreachable, !dbg !2759

13:                                               ; preds = %6
  ret i8* %8, !dbg !2760
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #24

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !2748 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2747, metadata !DIExpression()), !dbg !2761
  %2 = tail call noalias i8* @malloc(i64 %0) #26, !dbg !2762
  call void @llvm.dbg.value(metadata i8* %2, metadata !2752, metadata !DIExpression()), !dbg !2761
  %3 = icmp eq i8* %2, null, !dbg !2763
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2764
  br i1 %5, label %6, label %7, !dbg !2764

6:                                                ; preds = %1
  tail call void @xalloc_die() #28, !dbg !2765
  unreachable, !dbg !2765

7:                                                ; preds = %1
  ret i8* %2, !dbg !2766
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #23 !dbg !2767 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2771, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata i64 %1, metadata !2772, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata i64 %2, metadata !2773, metadata !DIExpression()), !dbg !2774
  %4 = udiv i64 9223372036854775807, %2, !dbg !2775
  %5 = icmp ult i64 %4, %1, !dbg !2775
  br i1 %5, label %6, label %7, !dbg !2777

6:                                                ; preds = %3
  tail call void @xalloc_die() #28, !dbg !2778
  unreachable, !dbg !2778

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2779
  call void @llvm.dbg.value(metadata i8* %0, metadata !2780, metadata !DIExpression()) #26, !dbg !2786
  call void @llvm.dbg.value(metadata i64 %8, metadata !2785, metadata !DIExpression()) #26, !dbg !2786
  %9 = icmp eq i64 %8, 0, !dbg !2788
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !2790
  br i1 %11, label %12, label %13, !dbg !2790

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #26, !dbg !2791
  br label %19, !dbg !2793

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #26, !dbg !2794
  call void @llvm.dbg.value(metadata i8* %14, metadata !2780, metadata !DIExpression()) #26, !dbg !2786
  %15 = icmp eq i8* %14, null, !dbg !2795
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !2797
  br i1 %17, label %18, label %19, !dbg !2797

18:                                               ; preds = %13
  tail call void @xalloc_die() #28, !dbg !2798
  unreachable, !dbg !2798

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2786
  ret i8* %20, !dbg !2799
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2781 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2780, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i64 %1, metadata !2785, metadata !DIExpression()), !dbg !2800
  %3 = icmp eq i64 %1, 0, !dbg !2801
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !2802
  br i1 %5, label %6, label %7, !dbg !2802

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #26, !dbg !2803
  br label %13, !dbg !2804

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #26, !dbg !2805
  call void @llvm.dbg.value(metadata i8* %8, metadata !2780, metadata !DIExpression()), !dbg !2800
  %9 = icmp eq i8* %8, null, !dbg !2806
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !2807
  br i1 %11, label %12, label %13, !dbg !2807

12:                                               ; preds = %7
  tail call void @xalloc_die() #28, !dbg !2808
  unreachable, !dbg !2808

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2800
  ret i8* %14, !dbg !2809
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #23 !dbg !168 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !173, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i64* %1, metadata !174, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i64 %2, metadata !175, metadata !DIExpression()), !dbg !2810
  %4 = load i64, i64* %1, align 8, !dbg !2811, !tbaa !1989
  call void @llvm.dbg.value(metadata i64 %4, metadata !176, metadata !DIExpression()), !dbg !2810
  %5 = icmp eq i8* %0, null, !dbg !2812
  br i1 %5, label %6, label %20, !dbg !2814

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2815
  br i1 %7, label %8, label %13, !dbg !2818

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2819
  call void @llvm.dbg.value(metadata i64 %9, metadata !176, metadata !DIExpression()), !dbg !2810
  %10 = icmp ugt i64 %2, 128, !dbg !2821
  %11 = zext i1 %10 to i64, !dbg !2821
  %12 = add nuw nsw i64 %9, %11, !dbg !2822
  call void @llvm.dbg.value(metadata i64 %12, metadata !176, metadata !DIExpression()), !dbg !2810
  br label %13, !dbg !2823

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2810
  call void @llvm.dbg.value(metadata i64 %14, metadata !176, metadata !DIExpression()), !dbg !2810
  %15 = udiv i64 9223372036854775807, %2, !dbg !2824
  %16 = icmp ult i64 %15, %14, !dbg !2824
  br i1 %16, label %19, label %17, !dbg !2826

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !176, metadata !DIExpression()), !dbg !2810
  store i64 %14, i64* %1, align 8, !dbg !2827, !tbaa !1989
  %18 = mul i64 %14, %2, !dbg !2828
  call void @llvm.dbg.value(metadata i8* %0, metadata !2780, metadata !DIExpression()) #26, !dbg !2829
  call void @llvm.dbg.value(metadata i64 %28, metadata !2785, metadata !DIExpression()) #26, !dbg !2829
  br label %31, !dbg !2831

19:                                               ; preds = %13
  tail call void @xalloc_die() #28, !dbg !2832
  unreachable, !dbg !2832

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !2833
  %22 = icmp ugt i64 %21, %4, !dbg !2836
  br i1 %22, label %24, label %23, !dbg !2837

23:                                               ; preds = %20
  tail call void @xalloc_die() #28, !dbg !2838
  unreachable, !dbg !2838

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !2839
  %26 = add nuw i64 %4, 1, !dbg !2840
  %27 = add i64 %26, %25, !dbg !2841
  call void @llvm.dbg.value(metadata i64 %27, metadata !176, metadata !DIExpression()), !dbg !2810
  store i64 %27, i64* %1, align 8, !dbg !2827, !tbaa !1989
  %28 = mul i64 %27, %2, !dbg !2828
  call void @llvm.dbg.value(metadata i8* %0, metadata !2780, metadata !DIExpression()) #26, !dbg !2829
  call void @llvm.dbg.value(metadata i64 %28, metadata !2785, metadata !DIExpression()) #26, !dbg !2829
  %29 = icmp eq i64 %28, 0, !dbg !2842
  br i1 %29, label %30, label %31, !dbg !2831

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #26, !dbg !2843
  br label %38, !dbg !2844

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #26, !dbg !2845
  call void @llvm.dbg.value(metadata i8* %33, metadata !2780, metadata !DIExpression()) #26, !dbg !2829
  %34 = icmp eq i8* %33, null, !dbg !2846
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !2847
  br i1 %36, label %37, label %38, !dbg !2847

37:                                               ; preds = %31
  tail call void @xalloc_die() #28, !dbg !2848
  unreachable, !dbg !2848

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !2829
  ret i8* %39, !dbg !2849
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #23 !dbg !2850 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2852, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i64 %0, metadata !2747, metadata !DIExpression()) #26, !dbg !2854
  %2 = tail call noalias i8* @malloc(i64 %0) #26, !dbg !2856
  call void @llvm.dbg.value(metadata i8* %2, metadata !2752, metadata !DIExpression()) #26, !dbg !2854
  %3 = icmp eq i8* %2, null, !dbg !2857
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2858
  br i1 %5, label %6, label %7, !dbg !2858

6:                                                ; preds = %1
  tail call void @xalloc_die() #28, !dbg !2859
  unreachable, !dbg !2859

7:                                                ; preds = %1
  ret i8* %2, !dbg !2860
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !2861 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2865, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i64* %1, metadata !2866, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i8* %0, metadata !173, metadata !DIExpression()) #26, !dbg !2868
  call void @llvm.dbg.value(metadata i64* %1, metadata !174, metadata !DIExpression()) #26, !dbg !2868
  call void @llvm.dbg.value(metadata i64 1, metadata !175, metadata !DIExpression()) #26, !dbg !2868
  %3 = load i64, i64* %1, align 8, !dbg !2870, !tbaa !1989
  call void @llvm.dbg.value(metadata i64 %3, metadata !176, metadata !DIExpression()) #26, !dbg !2868
  %4 = icmp eq i8* %0, null, !dbg !2871
  br i1 %4, label %5, label %10, !dbg !2872

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2873
  br i1 %6, label %17, label %7, !dbg !2874

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !176, metadata !DIExpression()) #26, !dbg !2868
  %8 = icmp slt i64 %3, 0, !dbg !2875
  br i1 %8, label %9, label %17, !dbg !2876

9:                                                ; preds = %7
  tail call void @xalloc_die() #28, !dbg !2877
  unreachable, !dbg !2877

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !2878
  br i1 %11, label %13, label %12, !dbg !2879

12:                                               ; preds = %10
  tail call void @xalloc_die() #28, !dbg !2880
  unreachable, !dbg !2880

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !2881
  %15 = add nuw nsw i64 %3, 1, !dbg !2882
  %16 = add nuw nsw i64 %15, %14, !dbg !2883
  call void @llvm.dbg.value(metadata i64 %16, metadata !176, metadata !DIExpression()) #26, !dbg !2868
  call void @llvm.dbg.value(metadata i8* %0, metadata !2780, metadata !DIExpression()) #26, !dbg !2884
  call void @llvm.dbg.value(metadata i64 %16, metadata !2785, metadata !DIExpression()) #26, !dbg !2884
  br label %17, !dbg !2886

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !2887
  store i64 %18, i64* %1, align 8, !dbg !2887, !tbaa !1989
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #26, !dbg !2888
  call void @llvm.dbg.value(metadata i8* %19, metadata !2780, metadata !DIExpression()) #26, !dbg !2884
  %20 = icmp eq i8* %19, null, !dbg !2889
  br i1 %20, label %21, label %22, !dbg !2890

21:                                               ; preds = %17
  tail call void @xalloc_die() #28, !dbg !2891
  unreachable, !dbg !2891

22:                                               ; preds = %17
  ret i8* %19, !dbg !2892
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !2893 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2895, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.value(metadata i64 %0, metadata !2897, metadata !DIExpression()) #26, !dbg !2902
  call void @llvm.dbg.value(metadata i64 1, metadata !2900, metadata !DIExpression()) #26, !dbg !2902
  %2 = icmp slt i64 %0, 0, !dbg !2904
  br i1 %2, label %6, label %3, !dbg !2906

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #26, !dbg !2907
  call void @llvm.dbg.value(metadata i8* %4, metadata !2901, metadata !DIExpression()) #26, !dbg !2902
  %5 = icmp eq i8* %4, null, !dbg !2908
  br i1 %5, label %6, label %7, !dbg !2909

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #28, !dbg !2910
  unreachable, !dbg !2910

7:                                                ; preds = %3
  ret i8* %4, !dbg !2911
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !2898 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2897, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i64 %1, metadata !2900, metadata !DIExpression()), !dbg !2912
  %3 = udiv i64 9223372036854775807, %1, !dbg !2913
  %4 = icmp ult i64 %3, %0, !dbg !2913
  br i1 %4, label %8, label %5, !dbg !2914

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #26, !dbg !2915
  call void @llvm.dbg.value(metadata i8* %6, metadata !2901, metadata !DIExpression()), !dbg !2912
  %7 = icmp eq i8* %6, null, !dbg !2916
  br i1 %7, label %8, label %9, !dbg !2917

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #28, !dbg !2918
  unreachable, !dbg !2918

9:                                                ; preds = %5
  ret i8* %6, !dbg !2919
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2920 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2924, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i64 %1, metadata !2925, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i64 %1, metadata !2747, metadata !DIExpression()) #26, !dbg !2927
  %3 = tail call noalias i8* @malloc(i64 %1) #26, !dbg !2929
  call void @llvm.dbg.value(metadata i8* %3, metadata !2752, metadata !DIExpression()) #26, !dbg !2927
  %4 = icmp eq i8* %3, null, !dbg !2930
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !2931
  br i1 %6, label %7, label %8, !dbg !2931

7:                                                ; preds = %2
  tail call void @xalloc_die() #28, !dbg !2932
  unreachable, !dbg !2932

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2933, metadata !DIExpression()) #26, !dbg !2938
  call void @llvm.dbg.value(metadata i8* %0, metadata !2936, metadata !DIExpression()) #26, !dbg !2938
  call void @llvm.dbg.value(metadata i64 %1, metadata !2937, metadata !DIExpression()) #26, !dbg !2938
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #26, !dbg !2940
  ret i8* %3, !dbg !2941
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !2942 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2944, metadata !DIExpression()), !dbg !2945
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #27, !dbg !2946
  %3 = add i64 %2, 1, !dbg !2947
  call void @llvm.dbg.value(metadata i8* %0, metadata !2924, metadata !DIExpression()) #26, !dbg !2948
  call void @llvm.dbg.value(metadata i64 %3, metadata !2925, metadata !DIExpression()) #26, !dbg !2948
  call void @llvm.dbg.value(metadata i64 %3, metadata !2747, metadata !DIExpression()) #26, !dbg !2950
  %4 = tail call noalias i8* @malloc(i64 %3) #26, !dbg !2952
  call void @llvm.dbg.value(metadata i8* %4, metadata !2752, metadata !DIExpression()) #26, !dbg !2950
  %5 = icmp eq i8* %4, null, !dbg !2953
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !2954
  br i1 %7, label %8, label %9, !dbg !2954

8:                                                ; preds = %1
  tail call void @xalloc_die() #28, !dbg !2955
  unreachable, !dbg !2955

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !2933, metadata !DIExpression()) #26, !dbg !2956
  call void @llvm.dbg.value(metadata i8* %0, metadata !2936, metadata !DIExpression()) #26, !dbg !2956
  call void @llvm.dbg.value(metadata i64 %3, metadata !2937, metadata !DIExpression()) #26, !dbg !2956
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #26, !dbg !2958
  ret i8* %4, !dbg !2959
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !2960 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !2961, !tbaa !762
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.107, i64 0, i64 0), i32 5) #26, !dbg !2962
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i64 0, i64 0), i8* %2) #26, !dbg !2963
  tail call void @abort() #28, !dbg !2964
  unreachable, !dbg !2964
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #25 !dbg !2965 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2967, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i64 %1, metadata !2968, metadata !DIExpression()), !dbg !2973
  %3 = icmp eq i64 %0, 0, !dbg !2974
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !2975
  br i1 %5, label %11, label %6, !dbg !2975

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !2970, metadata !DIExpression()), !dbg !2976
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !2977
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !2977
  br i1 %8, label %9, label %11, !dbg !2979

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #29, !dbg !2980
  store i32 12, i32* %10, align 4, !dbg !2982, !tbaa !762
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !2967, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i64 %12, metadata !2968, metadata !DIExpression()), !dbg !2973
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #26, !dbg !2983
  call void @llvm.dbg.value(metadata i8* %14, metadata !2969, metadata !DIExpression()), !dbg !2973
  br label %15, !dbg !2984

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !2973
  ret i8* %16, !dbg !2985
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #24

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !2986 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3002, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata i8* %1, metadata !3003, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata i64 %2, metadata !3004, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3005, metadata !DIExpression()), !dbg !3011
  %6 = bitcast i32* %5 to i8*, !dbg !3012
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #26, !dbg !3012
  %7 = icmp eq i32* %0, null, !dbg !3013
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3015
  call void @llvm.dbg.value(metadata i32* %8, metadata !3002, metadata !DIExpression()), !dbg !3011
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #26, !dbg !3016
  call void @llvm.dbg.value(metadata i64 %9, metadata !3006, metadata !DIExpression()), !dbg !3011
  %10 = icmp ugt i64 %9, -3, !dbg !3017
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !3018
  br i1 %12, label %13, label %18, !dbg !3018

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #26, !dbg !3019
  br i1 %14, label %18, label %15, !dbg !3020

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3021, !tbaa !818
  call void @llvm.dbg.value(metadata i8 %16, metadata !3008, metadata !DIExpression()), !dbg !3022
  %17 = zext i8 %16 to i32, !dbg !3023
  store i32 %17, i32* %8, align 4, !dbg !3024, !tbaa !762
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3011
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #26, !dbg !3025
  ret i64 %19, !dbg !3025
}

; Function Attrs: nounwind
declare !dbg !3026 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3030 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3068, metadata !DIExpression()), !dbg !3073
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #26, !dbg !3074
  call void @llvm.dbg.value(metadata i1 undef, metadata !3069, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3073
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3075, metadata !DIExpression()), !dbg !3079
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3081
  %4 = load i32, i32* %3, align 8, !dbg !3081, !tbaa !3082
  %5 = and i32 %4, 32, !dbg !3084
  %6 = icmp eq i32 %5, 0, !dbg !3084
  call void @llvm.dbg.value(metadata i1 %6, metadata !3071, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3073
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #26, !dbg !3085
  %8 = icmp eq i32 %7, 0, !dbg !3086
  call void @llvm.dbg.value(metadata i1 %8, metadata !3072, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3073
  br i1 %6, label %9, label %19, !dbg !3087

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3089
  call void @llvm.dbg.value(metadata i1 %10, metadata !3069, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3073
  %11 = or i1 %10, %8, !dbg !3090
  %12 = xor i1 %8, true, !dbg !3090
  %13 = sext i1 %12 to i32, !dbg !3090
  br i1 %11, label %22, label %14, !dbg !3090

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #29, !dbg !3091
  %16 = load i32, i32* %15, align 4, !dbg !3091, !tbaa !762
  %17 = icmp ne i32 %16, 9, !dbg !3092
  %18 = sext i1 %17 to i32, !dbg !3093
  br label %22, !dbg !3093

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3094

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #29, !dbg !3096
  store i32 0, i32* %21, align 4, !dbg !3098, !tbaa !762
  br label %22, !dbg !3096

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3073
  ret i32 %23, !dbg !3099
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3100 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3104, metadata !DIExpression()), !dbg !3109
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3110
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #26, !dbg !3110
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3105, metadata !DIExpression()), !dbg !3111
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #26, !dbg !3112
  %5 = icmp eq i32 %4, 0, !dbg !3112
  br i1 %5, label %6, label %13, !dbg !3114

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3115
  %8 = load i16, i16* %7, align 16, !dbg !3115
  %9 = icmp eq i16 %8, 67, !dbg !3115
  br i1 %9, label %13, label %10, !dbg !3116

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.117, i64 0, i64 0), i64 6), !dbg !3117
  %12 = icmp ne i32 %11, 0, !dbg !3118
  br label %13, !dbg !3116

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3109
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #26, !dbg !3119
  ret i1 %14, !dbg !3119
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3120 {
  %1 = tail call i8* @nl_langinfo(i32 14) #26, !dbg !3125
  call void @llvm.dbg.value(metadata i8* %1, metadata !3124, metadata !DIExpression()), !dbg !3126
  %2 = icmp eq i8* %1, null, !dbg !3127
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i64 0, i64 0), i8* %1, !dbg !3129
  call void @llvm.dbg.value(metadata i8* %3, metadata !3124, metadata !DIExpression()), !dbg !3126
  %4 = load i8, i8* %3, align 1, !dbg !3130, !tbaa !818
  %5 = icmp eq i8 %4, 0, !dbg !3134
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.121, i64 0, i64 0), i8* %3, !dbg !3135
  call void @llvm.dbg.value(metadata i8* %6, metadata !3124, metadata !DIExpression()), !dbg !3126
  ret i8* %6, !dbg !3136
}

; Function Attrs: nounwind
declare !dbg !3137 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3140 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3144, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i8* %1, metadata !3145, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i64 %2, metadata !3146, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i32 %0, metadata !3148, metadata !DIExpression()) #26, !dbg !3157
  call void @llvm.dbg.value(metadata i8* %1, metadata !3151, metadata !DIExpression()) #26, !dbg !3157
  call void @llvm.dbg.value(metadata i64 %2, metadata !3152, metadata !DIExpression()) #26, !dbg !3157
  call void @llvm.dbg.value(metadata i32 %0, metadata !3159, metadata !DIExpression()) #26, !dbg !3165
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #26, !dbg !3167
  call void @llvm.dbg.value(metadata i8* %4, metadata !3164, metadata !DIExpression()) #26, !dbg !3165
  call void @llvm.dbg.value(metadata i8* %4, metadata !3153, metadata !DIExpression()) #26, !dbg !3157
  %5 = icmp eq i8* %4, null, !dbg !3168
  br i1 %5, label %6, label %9, !dbg !3169

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3170
  br i1 %7, label %19, label %8, !dbg !3173

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3174, !tbaa !818
  br label %19, !dbg !3175

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #27, !dbg !3176
  call void @llvm.dbg.value(metadata i64 %10, metadata !3154, metadata !DIExpression()) #26, !dbg !3177
  %11 = icmp ult i64 %10, %2, !dbg !3178
  br i1 %11, label %12, label %14, !dbg !3180

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3181
  call void @llvm.dbg.value(metadata i8* %1, metadata !3183, metadata !DIExpression()) #26, !dbg !3188
  call void @llvm.dbg.value(metadata i8* %4, metadata !3186, metadata !DIExpression()) #26, !dbg !3188
  call void @llvm.dbg.value(metadata i64 %13, metadata !3187, metadata !DIExpression()) #26, !dbg !3188
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #26, !dbg !3190
  br label %19, !dbg !3191

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3192
  br i1 %15, label %19, label %16, !dbg !3195

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3196
  call void @llvm.dbg.value(metadata i8* %1, metadata !3183, metadata !DIExpression()) #26, !dbg !3198
  call void @llvm.dbg.value(metadata i8* %4, metadata !3186, metadata !DIExpression()) #26, !dbg !3198
  call void @llvm.dbg.value(metadata i64 %17, metadata !3187, metadata !DIExpression()) #26, !dbg !3198
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #26, !dbg !3200
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3201
  store i8 0, i8* %18, align 1, !dbg !3202, !tbaa !818
  br label %19, !dbg !3203

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3204
  ret i32 %20, !dbg !3205
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3206 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3208, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i32 %0, metadata !3159, metadata !DIExpression()) #26, !dbg !3210
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #26, !dbg !3212
  call void @llvm.dbg.value(metadata i8* %2, metadata !3164, metadata !DIExpression()) #26, !dbg !3210
  ret i8* %2, !dbg !3213
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3214 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3252, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i32 0, metadata !3253, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i32 0, metadata !3255, metadata !DIExpression()), !dbg !3256
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #26, !dbg !3257
  call void @llvm.dbg.value(metadata i32 %2, metadata !3254, metadata !DIExpression()), !dbg !3256
  %3 = icmp slt i32 %2, 0, !dbg !3258
  br i1 %3, label %4, label %6, !dbg !3260

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3261
  br label %24, !dbg !3262

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #26, !dbg !3263
  %8 = icmp eq i32 %7, 0, !dbg !3263
  br i1 %8, label %13, label %9, !dbg !3265

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #26, !dbg !3266
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #26, !dbg !3267
  %12 = icmp eq i64 %11, -1, !dbg !3268
  br i1 %12, label %16, label %13, !dbg !3269

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #26, !dbg !3270
  %15 = icmp eq i32 %14, 0, !dbg !3270
  br i1 %15, label %16, label %18, !dbg !3271

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3253, metadata !DIExpression()), !dbg !3256
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3272
  call void @llvm.dbg.value(metadata i32 %21, metadata !3255, metadata !DIExpression()), !dbg !3256
  br label %24, !dbg !3273

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #29, !dbg !3274
  %20 = load i32, i32* %19, align 4, !dbg !3274, !tbaa !762
  call void @llvm.dbg.value(metadata i32 %20, metadata !3253, metadata !DIExpression()), !dbg !3256
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3272
  call void @llvm.dbg.value(metadata i32 %21, metadata !3255, metadata !DIExpression()), !dbg !3256
  %22 = icmp eq i32 %20, 0, !dbg !3275
  br i1 %22, label %24, label %23, !dbg !3273

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3277, !tbaa !762
  call void @llvm.dbg.value(metadata i32 -1, metadata !3255, metadata !DIExpression()), !dbg !3256
  br label %24, !dbg !3279

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3256
  ret i32 %25, !dbg !3280
}

; Function Attrs: nofree nounwind
declare !dbg !3281 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3284 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3285 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3288 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3326, metadata !DIExpression()), !dbg !3327
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3328
  br i1 %2, label %6, label %3, !dbg !3330

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #26, !dbg !3331
  %5 = icmp eq i32 %4, 0, !dbg !3331
  br i1 %5, label %6, label %8, !dbg !3332

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3333
  br label %17, !dbg !3334

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3335, metadata !DIExpression()) #26, !dbg !3340
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3342
  %10 = load i32, i32* %9, align 8, !dbg !3342, !tbaa !3082
  %11 = and i32 %10, 256, !dbg !3344
  %12 = icmp eq i32 %11, 0, !dbg !3344
  br i1 %12, label %15, label %13, !dbg !3345

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #26, !dbg !3346
  br label %15, !dbg !3346

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3347
  br label %17, !dbg !3348

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3327
  ret i32 %18, !dbg !3349
}

; Function Attrs: nofree nounwind
declare !dbg !3350 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3353 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3392, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i64 %1, metadata !3393, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i32 %2, metadata !3394, metadata !DIExpression()), !dbg !3398
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3399
  %5 = load i8*, i8** %4, align 8, !dbg !3399, !tbaa !3400
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3401
  %7 = load i8*, i8** %6, align 8, !dbg !3401, !tbaa !3402
  %8 = icmp eq i8* %5, %7, !dbg !3403
  br i1 %8, label %9, label %28, !dbg !3404

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3405
  %11 = load i8*, i8** %10, align 8, !dbg !3405, !tbaa !3406
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3407
  %13 = load i8*, i8** %12, align 8, !dbg !3407, !tbaa !3408
  %14 = icmp eq i8* %11, %13, !dbg !3409
  br i1 %14, label %15, label %28, !dbg !3410

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3411
  %17 = load i8*, i8** %16, align 8, !dbg !3411, !tbaa !3412
  %18 = icmp eq i8* %17, null, !dbg !3413
  br i1 %18, label %19, label %28, !dbg !3414

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #26, !dbg !3415
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #26, !dbg !3416
  call void @llvm.dbg.value(metadata i64 %21, metadata !3395, metadata !DIExpression()), !dbg !3417
  %22 = icmp eq i64 %21, -1, !dbg !3418
  br i1 %22, label %30, label %23, !dbg !3420

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3421
  %25 = load i32, i32* %24, align 8, !dbg !3422, !tbaa !3082
  %26 = and i32 %25, -17, !dbg !3422
  store i32 %26, i32* %24, align 8, !dbg !3422, !tbaa !3082
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3423
  store i64 %21, i64* %27, align 8, !dbg !3424, !tbaa !3425
  br label %30, !dbg !3426

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3427
  br label %30, !dbg !3428

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3398
  ret i32 %31, !dbg !3429
}

; Function Attrs: nofree nounwind
declare !dbg !3430 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

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
attributes #21 = { nofree nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { nofree "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #24 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #25 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #26 = { nounwind }
attributes #27 = { nounwind readonly willreturn }
attributes #28 = { noreturn nounwind }
attributes #29 = { nounwind readnone willreturn }
attributes #30 = { cold }

!llvm.dbg.cu = !{!143, !2, !11, !19, !146, !26, !43, !51, !149, !156, !137, !163, !180, !182, !184, !187, !189, !191, !580, !582, !584, !586}
!llvm.ident = !{!588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588}
!llvm.module.flags = !{!589, !590, !591, !592, !593}

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
!144 = !DIFile(filename: "src/yes.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!145 = !{!6, !46, !47}
!146 = distinct !DICompileUnit(language: DW_LANG_C99, file: !147, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !148, splitDebugInlining: false, nameTableKind: None)
!147 = !DIFile(filename: "lib/full-write.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!148 = !{!6, !91}
!149 = distinct !DICompileUnit(language: DW_LANG_C99, file: !150, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !151, splitDebugInlining: false, nameTableKind: None)
!150 = !DIFile(filename: "lib/safe-write.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!151 = !{!152}
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !153, line: 40, baseType: !56, size: 32, elements: !154)
!153 = !DIFile(filename: "./lib/sys-limits.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!154 = !{!155}
!155 = !DIEnumerator(name: "SYS_BUFSIZE_MAX", value: 2146435072, isUnsigned: true)
!156 = distinct !DICompileUnit(language: DW_LANG_C99, file: !157, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !158, retainedTypes: !162, splitDebugInlining: false, nameTableKind: None)
!157 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!158 = !{!159}
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !157, line: 40, baseType: !56, size: 32, elements: !160)
!160 = !{!161}
!161 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!162 = !{!46}
!163 = distinct !DICompileUnit(language: DW_LANG_C99, file: !164, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !165, retainedTypes: !179, splitDebugInlining: false, nameTableKind: None)
!164 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!165 = !{!166}
!166 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !168, file: !167, line: 186, baseType: !56, size: 32, elements: !177)
!167 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!168 = distinct !DISubprogram(name: "x2nrealloc", scope: !167, file: !167, line: 174, type: !169, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !163, retainedNodes: !172)
!169 = !DISubroutineType(types: !170)
!170 = !{!46, !46, !171, !91}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!172 = !{!173, !174, !175, !176}
!173 = !DILocalVariable(name: "p", arg: 1, scope: !168, file: !167, line: 174, type: !46)
!174 = !DILocalVariable(name: "pn", arg: 2, scope: !168, file: !167, line: 174, type: !171)
!175 = !DILocalVariable(name: "s", arg: 3, scope: !168, file: !167, line: 174, type: !91)
!176 = !DILocalVariable(name: "n", scope: !168, file: !167, line: 176, type: !91)
!177 = !{!178}
!178 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!179 = !{!91, !47, !46}
!180 = distinct !DICompileUnit(language: DW_LANG_C99, file: !181, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!181 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!182 = distinct !DICompileUnit(language: DW_LANG_C99, file: !183, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !162, splitDebugInlining: false, nameTableKind: None)
!183 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!184 = distinct !DICompileUnit(language: DW_LANG_C99, file: !185, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !186, splitDebugInlining: false, nameTableKind: None)
!185 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!186 = !{!91}
!187 = distinct !DICompileUnit(language: DW_LANG_C99, file: !188, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!188 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!189 = distinct !DICompileUnit(language: DW_LANG_C99, file: !190, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!190 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!191 = distinct !DICompileUnit(language: DW_LANG_C99, file: !192, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !193, retainedTypes: !162, splitDebugInlining: false, nameTableKind: None)
!192 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!193 = !{!194}
!194 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !195, line: 41, baseType: !56, size: 32, elements: !196)
!195 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!196 = !{!197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579}
!197 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!198 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!199 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!200 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!201 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!202 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!203 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!204 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!205 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!206 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!207 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!208 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!209 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!210 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!211 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!212 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!213 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!214 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!215 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!216 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!217 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!218 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!219 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!220 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!221 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!222 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!223 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!224 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!225 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!226 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!227 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!228 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!229 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!230 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!231 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!232 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!233 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!234 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!235 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!236 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!237 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!238 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!239 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!240 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!241 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!242 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!243 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!244 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!245 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!246 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!247 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!248 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!249 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!250 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!251 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!252 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!253 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!254 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!255 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!256 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!257 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!258 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!259 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!260 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!261 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!262 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!263 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!264 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!265 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!266 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!267 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!268 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!269 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!270 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!271 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!272 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!273 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!274 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!305 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!308 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!309 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!310 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!311 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!312 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!313 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!314 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!315 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!316 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!317 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!318 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!319 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!392 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!465 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!466 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!467 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!468 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!469 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!470 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!471 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!472 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!473 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!474 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!475 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!476 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!477 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!478 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!479 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!481 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!482 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!483 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!484 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!485 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!486 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!512 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!513 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!514 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!515 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!516 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!521 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!522 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!523 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!524 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!580 = distinct !DICompileUnit(language: DW_LANG_C99, file: !581, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !162, splitDebugInlining: false, nameTableKind: None)
!581 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!582 = distinct !DICompileUnit(language: DW_LANG_C99, file: !583, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!583 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!584 = distinct !DICompileUnit(language: DW_LANG_C99, file: !585, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !162, splitDebugInlining: false, nameTableKind: None)
!585 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!586 = distinct !DICompileUnit(language: DW_LANG_C99, file: !587, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !162, splitDebugInlining: false, nameTableKind: None)
!587 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!588 = !{!"clang version 12.0.1"}
!589 = !{i32 7, !"Dwarf Version", i32 4}
!590 = !{i32 2, !"Debug Info Version", i32 3}
!591 = !{i32 1, !"wchar_size", i32 4}
!592 = !{i32 7, !"PIC Level", i32 2}
!593 = !{i32 7, !"PIE Level", i32 2}
!594 = distinct !DISubprogram(name: "usage", scope: !144, file: !144, line: 35, type: !595, scopeLine: 36, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !597)
!595 = !DISubroutineType(types: !596)
!596 = !{null, !23}
!597 = !{!598}
!598 = !DILocalVariable(name: "status", arg: 1, scope: !594, file: !144, line: 35, type: !23)
!599 = !DILocation(line: 0, scope: !594)
!600 = !DILocation(line: 37, column: 14, scope: !601)
!601 = distinct !DILexicalBlock(scope: !594, file: !144, line: 37, column: 7)
!602 = !DILocation(line: 37, column: 7, scope: !594)
!603 = !DILocation(line: 38, column: 5, scope: !604)
!604 = distinct !DILexicalBlock(scope: !601, file: !144, line: 38, column: 5)
!605 = !{!606, !606, i64 0}
!606 = !{!"any pointer", !607, i64 0}
!607 = !{!"omnipotent char", !608, i64 0}
!608 = !{!"Simple C/C++ TBAA"}
!609 = !DILocation(line: 41, column: 7, scope: !610)
!610 = distinct !DILexicalBlock(scope: !601, file: !144, line: 40, column: 5)
!611 = !DILocation(line: 47, column: 7, scope: !610)
!612 = !DILocation(line: 51, column: 7, scope: !610)
!613 = !DILocation(line: 52, column: 7, scope: !610)
!614 = !DILocalVariable(name: "program", arg: 1, scope: !615, file: !616, line: 634, type: !6)
!615 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !616, file: !616, line: 634, type: !617, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !619)
!616 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!617 = !DISubroutineType(types: !618)
!618 = !{null, !6}
!619 = !{!614, !620, !629, !630, !632}
!620 = !DILocalVariable(name: "infomap", scope: !615, file: !616, line: 636, type: !621)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 896, elements: !627)
!622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !623)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !615, file: !616, line: 636, size: 128, elements: !624)
!624 = !{!625, !626}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !623, file: !616, line: 636, baseType: !6, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !623, file: !616, line: 636, baseType: !6, size: 64, offset: 64)
!627 = !{!628}
!628 = !DISubrange(count: 7)
!629 = !DILocalVariable(name: "node", scope: !615, file: !616, line: 646, type: !6)
!630 = !DILocalVariable(name: "map_prog", scope: !615, file: !616, line: 647, type: !631)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!632 = !DILocalVariable(name: "lc_messages", scope: !615, file: !616, line: 659, type: !6)
!633 = !DILocation(line: 0, scope: !615, inlinedAt: !634)
!634 = distinct !DILocation(line: 53, column: 7, scope: !610)
!635 = !DILocation(line: 636, column: 3, scope: !615, inlinedAt: !634)
!636 = !DILocation(line: 636, column: 67, scope: !615, inlinedAt: !634)
!637 = !DILocation(line: 647, column: 36, scope: !615, inlinedAt: !634)
!638 = !DILocation(line: 649, column: 3, scope: !615, inlinedAt: !634)
!639 = !DILocation(line: 649, column: 33, scope: !615, inlinedAt: !634)
!640 = !DILocation(line: 650, column: 13, scope: !615, inlinedAt: !634)
!641 = !DILocation(line: 649, column: 20, scope: !615, inlinedAt: !634)
!642 = !{!643, !606, i64 0}
!643 = !{!"infomap", !606, i64 0, !606, i64 8}
!644 = !DILocation(line: 649, column: 10, scope: !615, inlinedAt: !634)
!645 = !DILocation(line: 649, column: 28, scope: !615, inlinedAt: !634)
!646 = distinct !{!646, !638, !640, !647}
!647 = !{!"llvm.loop.mustprogress"}
!648 = !DILocation(line: 652, column: 17, scope: !649, inlinedAt: !634)
!649 = distinct !DILexicalBlock(scope: !615, file: !616, line: 652, column: 7)
!650 = !{!643, !606, i64 8}
!651 = !DILocation(line: 652, column: 7, scope: !649, inlinedAt: !634)
!652 = !DILocation(line: 652, column: 7, scope: !615, inlinedAt: !634)
!653 = !DILocation(line: 655, column: 3, scope: !615, inlinedAt: !634)
!654 = !DILocation(line: 659, column: 29, scope: !615, inlinedAt: !634)
!655 = !DILocation(line: 660, column: 7, scope: !656, inlinedAt: !634)
!656 = distinct !DILexicalBlock(scope: !615, file: !616, line: 660, column: 7)
!657 = !DILocation(line: 660, column: 19, scope: !656, inlinedAt: !634)
!658 = !DILocation(line: 660, column: 22, scope: !656, inlinedAt: !634)
!659 = !DILocation(line: 660, column: 7, scope: !615, inlinedAt: !634)
!660 = !DILocation(line: 666, column: 7, scope: !661, inlinedAt: !634)
!661 = distinct !DILexicalBlock(scope: !656, file: !616, line: 661, column: 5)
!662 = !DILocation(line: 668, column: 5, scope: !661, inlinedAt: !634)
!663 = !DILocation(line: 669, column: 3, scope: !615, inlinedAt: !634)
!664 = !DILocation(line: 671, column: 3, scope: !615, inlinedAt: !634)
!665 = !DILocation(line: 673, column: 1, scope: !615, inlinedAt: !634)
!666 = !DILocation(line: 55, column: 3, scope: !594)
!667 = !DISubprogram(name: "dcgettext", scope: !668, file: !668, line: 51, type: !669, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!668 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!669 = !DISubroutineType(types: !670)
!670 = !{!47, !6, !6, !23}
!671 = !DISubprogram(name: "fputs_unlocked", scope: !672, file: !672, line: 667, type: !673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!672 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!673 = !DISubroutineType(types: !674)
!674 = !{!23, !6, !675}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !677, line: 49, size: 1728, elements: !678)
!677 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!678 = !{!679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !694, !695, !696, !697, !701, !702, !704, !708, !711, !713, !716, !719, !720, !721, !722, !723}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !676, file: !677, line: 51, baseType: !23, size: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !676, file: !677, line: 54, baseType: !47, size: 64, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !676, file: !677, line: 55, baseType: !47, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !676, file: !677, line: 56, baseType: !47, size: 64, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !676, file: !677, line: 57, baseType: !47, size: 64, offset: 256)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !676, file: !677, line: 58, baseType: !47, size: 64, offset: 320)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !676, file: !677, line: 59, baseType: !47, size: 64, offset: 384)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !676, file: !677, line: 60, baseType: !47, size: 64, offset: 448)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !676, file: !677, line: 61, baseType: !47, size: 64, offset: 512)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !676, file: !677, line: 64, baseType: !47, size: 64, offset: 576)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !676, file: !677, line: 65, baseType: !47, size: 64, offset: 640)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !676, file: !677, line: 66, baseType: !47, size: 64, offset: 704)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !676, file: !677, line: 68, baseType: !692, size: 64, offset: 768)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !677, line: 36, flags: DIFlagFwdDecl)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !676, file: !677, line: 70, baseType: !675, size: 64, offset: 832)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !676, file: !677, line: 72, baseType: !23, size: 32, offset: 896)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !676, file: !677, line: 73, baseType: !23, size: 32, offset: 928)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !676, file: !677, line: 74, baseType: !698, size: 64, offset: 960)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !699, line: 152, baseType: !700)
!699 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!700 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !676, file: !677, line: 77, baseType: !90, size: 16, offset: 1024)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !676, file: !677, line: 78, baseType: !703, size: 8, offset: 1040)
!703 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !676, file: !677, line: 79, baseType: !705, size: 8, offset: 1048)
!705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !706)
!706 = !{!707}
!707 = !DISubrange(count: 1)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !676, file: !677, line: 81, baseType: !709, size: 64, offset: 1088)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !677, line: 43, baseType: null)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !676, file: !677, line: 89, baseType: !712, size: 64, offset: 1152)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !699, line: 153, baseType: !700)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !676, file: !677, line: 91, baseType: !714, size: 64, offset: 1216)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !677, line: 37, flags: DIFlagFwdDecl)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !676, file: !677, line: 92, baseType: !717, size: 64, offset: 1280)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !677, line: 38, flags: DIFlagFwdDecl)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !676, file: !677, line: 93, baseType: !675, size: 64, offset: 1344)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !676, file: !677, line: 94, baseType: !46, size: 64, offset: 1408)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !676, file: !677, line: 95, baseType: !91, size: 64, offset: 1472)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !676, file: !677, line: 96, baseType: !23, size: 32, offset: 1536)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !676, file: !677, line: 98, baseType: !724, size: 160, offset: 1568)
!724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !725)
!725 = !{!726}
!726 = !DISubrange(count: 20)
!727 = !DISubprogram(name: "setlocale", scope: !728, file: !728, line: 122, type: !729, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!728 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!729 = !DISubroutineType(types: !730)
!730 = !{!47, !23, !6}
!731 = distinct !DISubprogram(name: "main", scope: !144, file: !144, line: 59, type: !732, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !735)
!732 = !DISubroutineType(types: !733)
!733 = !{!23, !23, !734}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!735 = !{!736, !737, !738, !739, !740, !741, !742, !743, !745, !746, !747, !749, !750}
!736 = !DILocalVariable(name: "argc", arg: 1, scope: !731, file: !144, line: 59, type: !23)
!737 = !DILocalVariable(name: "argv", arg: 2, scope: !731, file: !144, line: 59, type: !734)
!738 = !DILocalVariable(name: "operands", scope: !731, file: !144, line: 73, type: !734)
!739 = !DILocalVariable(name: "operand_lim", scope: !731, file: !144, line: 74, type: !734)
!740 = !DILocalVariable(name: "bufalloc", scope: !731, file: !144, line: 80, type: !91)
!741 = !DILocalVariable(name: "reuse_operand_strings", scope: !731, file: !144, line: 81, type: !16)
!742 = !DILocalVariable(name: "operandp", scope: !731, file: !144, line: 82, type: !734)
!743 = !DILocalVariable(name: "operand_len", scope: !744, file: !144, line: 85, type: !91)
!744 = distinct !DILexicalBlock(scope: !731, file: !144, line: 84, column: 5)
!745 = !DILocalVariable(name: "buf", scope: !731, file: !144, line: 102, type: !47)
!746 = !DILocalVariable(name: "bufused", scope: !731, file: !144, line: 103, type: !91)
!747 = !DILocalVariable(name: "operand_len", scope: !748, file: !144, line: 107, type: !91)
!748 = distinct !DILexicalBlock(scope: !731, file: !144, line: 106, column: 5)
!749 = !DILocalVariable(name: "copysize", scope: !731, file: !144, line: 118, type: !91)
!750 = !DILocalVariable(name: "copies", scope: !751, file: !144, line: 119, type: !91)
!751 = distinct !DILexicalBlock(scope: !731, file: !144, line: 119, column: 3)
!752 = !DILocation(line: 0, scope: !731)
!753 = !DILocation(line: 62, column: 21, scope: !731)
!754 = !DILocation(line: 62, column: 3, scope: !731)
!755 = !DILocation(line: 63, column: 3, scope: !731)
!756 = !DILocation(line: 64, column: 3, scope: !731)
!757 = !DILocation(line: 65, column: 3, scope: !731)
!758 = !DILocation(line: 67, column: 3, scope: !731)
!759 = !DILocation(line: 70, column: 36, scope: !731)
!760 = !DILocation(line: 69, column: 3, scope: !731)
!761 = !DILocation(line: 73, column: 28, scope: !731)
!762 = !{!763, !763, i64 0}
!763 = !{!"int", !607, i64 0}
!764 = !DILocation(line: 73, column: 26, scope: !731)
!765 = !DILocation(line: 74, column: 29, scope: !731)
!766 = !DILocation(line: 75, column: 14, scope: !767)
!767 = distinct !DILexicalBlock(scope: !731, file: !144, line: 75, column: 7)
!768 = !DILocation(line: 75, column: 7, scope: !731)
!769 = !DILocation(line: 76, column: 17, scope: !767)
!770 = !DILocation(line: 76, column: 20, scope: !767)
!771 = !DILocation(line: 76, column: 5, scope: !767)
!772 = !DILocation(line: 85, column: 36, scope: !744)
!773 = !DILocation(line: 85, column: 28, scope: !744)
!774 = !DILocation(line: 0, scope: !744)
!775 = !DILocation(line: 86, column: 16, scope: !744)
!776 = !DILocation(line: 87, column: 20, scope: !777)
!777 = distinct !DILexicalBlock(scope: !744, file: !144, line: 87, column: 11)
!778 = !DILocation(line: 87, column: 24, scope: !777)
!779 = !DILocation(line: 88, column: 11, scope: !777)
!780 = !DILocation(line: 88, column: 24, scope: !777)
!781 = !DILocation(line: 88, column: 38, scope: !777)
!782 = !DILocation(line: 88, column: 45, scope: !777)
!783 = !DILocation(line: 88, column: 42, scope: !777)
!784 = !DILocation(line: 87, column: 11, scope: !744)
!785 = !DILocation(line: 86, column: 31, scope: !744)
!786 = !DILocation(line: 94, column: 16, scope: !787)
!787 = distinct !DILexicalBlock(scope: !731, file: !144, line: 94, column: 7)
!788 = !DILocation(line: 94, column: 7, scope: !731)
!789 = !DILocation(line: 102, column: 15, scope: !731)
!790 = !DILocation(line: 102, column: 51, scope: !731)
!791 = !DILocation(line: 105, column: 3, scope: !731)
!792 = !DILocation(line: 107, column: 36, scope: !748)
!793 = !DILocation(line: 107, column: 28, scope: !748)
!794 = !DILocation(line: 0, scope: !748)
!795 = !DILocation(line: 108, column: 11, scope: !748)
!796 = !DILocation(line: 109, column: 21, scope: !797)
!797 = distinct !DILexicalBlock(scope: !748, file: !144, line: 108, column: 11)
!798 = !DILocalVariable(name: "__dest", arg: 1, scope: !799, file: !800, line: 26, type: !803)
!799 = distinct !DISubprogram(name: "memcpy", scope: !800, file: !800, line: 26, type: !801, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !807)
!800 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!801 = !DISubroutineType(types: !802)
!802 = !{!46, !803, !804, !91}
!803 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !46)
!804 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !805)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!807 = !{!798, !808, !809}
!808 = !DILocalVariable(name: "__src", arg: 2, scope: !799, file: !800, line: 26, type: !804)
!809 = !DILocalVariable(name: "__len", arg: 3, scope: !799, file: !800, line: 26, type: !91)
!810 = !DILocation(line: 0, scope: !799, inlinedAt: !811)
!811 = distinct !DILocation(line: 109, column: 9, scope: !797)
!812 = !DILocation(line: 29, column: 10, scope: !799, inlinedAt: !811)
!813 = !DILocation(line: 109, column: 9, scope: !797)
!814 = !DILocation(line: 110, column: 15, scope: !748)
!815 = !DILocation(line: 111, column: 18, scope: !748)
!816 = !DILocation(line: 111, column: 7, scope: !748)
!817 = !DILocation(line: 111, column: 22, scope: !748)
!818 = !{!607, !607, i64 0}
!819 = !DILocation(line: 113, column: 10, scope: !731)
!820 = !DILocation(line: 113, column: 21, scope: !731)
!821 = !DILocation(line: 112, column: 5, scope: !748)
!822 = distinct !{!822, !791, !823, !647}
!823 = !DILocation(line: 113, column: 34, scope: !731)
!824 = !DILocation(line: 114, column: 20, scope: !731)
!825 = !DILocation(line: 119, column: 33, scope: !751)
!826 = !DILocation(line: 0, scope: !751)
!827 = !DILocation(line: 119, column: 45, scope: !828)
!828 = distinct !DILexicalBlock(scope: !751, file: !144, line: 119, column: 3)
!829 = !DILocation(line: 119, column: 3, scope: !751)
!830 = !DILocation(line: 121, column: 19, scope: !831)
!831 = distinct !DILexicalBlock(scope: !828, file: !144, line: 120, column: 5)
!832 = !DILocation(line: 0, scope: !799, inlinedAt: !833)
!833 = distinct !DILocation(line: 121, column: 7, scope: !831)
!834 = !DILocation(line: 29, column: 10, scope: !799, inlinedAt: !833)
!835 = !DILocation(line: 122, column: 15, scope: !831)
!836 = distinct !{!836, !837}
!837 = !{!"llvm.loop.unroll.disable"}
!838 = !DILocation(line: 126, column: 3, scope: !731)
!839 = distinct !{!839, !829, !840, !647}
!840 = !DILocation(line: 123, column: 5, scope: !751)
!841 = !DILocation(line: 126, column: 10, scope: !731)
!842 = !DILocation(line: 126, column: 51, scope: !731)
!843 = distinct !{!843, !838, !844, !647}
!844 = !DILocation(line: 127, column: 5, scope: !731)
!845 = !DILocation(line: 128, column: 13, scope: !731)
!846 = !DILocation(line: 128, column: 20, scope: !731)
!847 = !DILocation(line: 128, column: 3, scope: !731)
!848 = !DILocation(line: 130, column: 1, scope: !731)
!849 = !DISubprogram(name: "bindtextdomain", scope: !668, file: !668, line: 86, type: !850, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!850 = !DISubroutineType(types: !851)
!851 = !{!47, !6, !6}
!852 = !DISubprogram(name: "textdomain", scope: !668, file: !668, line: 82, type: !853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!853 = !DISubroutineType(types: !854)
!854 = !{!47, !6}
!855 = !DISubprogram(name: "atexit", scope: !856, file: !856, line: 595, type: !857, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!856 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!857 = !DISubroutineType(types: !858)
!858 = !{!23, !859}
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{null}
!862 = !DISubprogram(name: "error", scope: !863, file: !863, line: 52, type: !864, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!863 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!864 = !DISubroutineType(types: !865)
!865 = !{null, !23, !23, !6, null}
!866 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !12, file: !12, line: 51, type: !617, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !867)
!867 = !{!868}
!868 = !DILocalVariable(name: "file", arg: 1, scope: !866, file: !12, line: 51, type: !6)
!869 = !DILocation(line: 0, scope: !866)
!870 = !DILocation(line: 53, column: 13, scope: !866)
!871 = !DILocation(line: 54, column: 1, scope: !866)
!872 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !12, file: !12, line: 88, type: !873, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !875)
!873 = !DISubroutineType(types: !874)
!874 = !{null, !16}
!875 = !{!876}
!876 = !DILocalVariable(name: "ignore", arg: 1, scope: !872, file: !12, line: 88, type: !16)
!877 = !DILocation(line: 0, scope: !872)
!878 = !DILocation(line: 90, column: 16, scope: !872)
!879 = !{!880, !880, i64 0}
!880 = !{!"_Bool", !607, i64 0}
!881 = !DILocation(line: 91, column: 1, scope: !872)
!882 = distinct !DISubprogram(name: "close_stdout", scope: !12, file: !12, line: 117, type: !860, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !883)
!883 = !{!884}
!884 = !DILocalVariable(name: "write_error", scope: !885, file: !12, line: 122, type: !6)
!885 = distinct !DILexicalBlock(scope: !886, file: !12, line: 121, column: 5)
!886 = distinct !DILexicalBlock(scope: !882, file: !12, line: 119, column: 7)
!887 = !DILocation(line: 119, column: 21, scope: !886)
!888 = !DILocation(line: 119, column: 7, scope: !886)
!889 = !DILocation(line: 119, column: 29, scope: !886)
!890 = !DILocation(line: 120, column: 7, scope: !886)
!891 = !DILocation(line: 120, column: 12, scope: !886)
!892 = !{i8 0, i8 2}
!893 = !DILocation(line: 120, column: 25, scope: !886)
!894 = !DILocation(line: 120, column: 28, scope: !886)
!895 = !DILocation(line: 120, column: 34, scope: !886)
!896 = !DILocation(line: 119, column: 7, scope: !882)
!897 = !DILocation(line: 122, column: 33, scope: !885)
!898 = !DILocation(line: 0, scope: !885)
!899 = !DILocation(line: 123, column: 11, scope: !900)
!900 = distinct !DILexicalBlock(scope: !885, file: !12, line: 123, column: 11)
!901 = !DILocation(line: 0, scope: !900)
!902 = !DILocation(line: 123, column: 11, scope: !885)
!903 = !DILocation(line: 124, column: 36, scope: !900)
!904 = !DILocation(line: 124, column: 9, scope: !900)
!905 = !DILocation(line: 127, column: 9, scope: !900)
!906 = !DILocation(line: 129, column: 14, scope: !885)
!907 = !DILocation(line: 129, column: 7, scope: !885)
!908 = !DILocation(line: 134, column: 42, scope: !909)
!909 = distinct !DILexicalBlock(scope: !882, file: !12, line: 134, column: 7)
!910 = !DILocation(line: 134, column: 28, scope: !909)
!911 = !DILocation(line: 134, column: 50, scope: !909)
!912 = !DILocation(line: 134, column: 7, scope: !882)
!913 = !DILocation(line: 135, column: 12, scope: !909)
!914 = !DILocation(line: 135, column: 5, scope: !909)
!915 = !DILocation(line: 136, column: 1, scope: !882)
!916 = distinct !DISubprogram(name: "full_write", scope: !147, file: !147, line: 58, type: !917, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !146, retainedNodes: !919)
!917 = !DISubroutineType(types: !918)
!918 = !{!91, !23, !805, !91}
!919 = !{!920, !921, !922, !923, !924, !925}
!920 = !DILocalVariable(name: "fd", arg: 1, scope: !916, file: !147, line: 58, type: !23)
!921 = !DILocalVariable(name: "buf", arg: 2, scope: !916, file: !147, line: 58, type: !805)
!922 = !DILocalVariable(name: "count", arg: 3, scope: !916, file: !147, line: 58, type: !91)
!923 = !DILocalVariable(name: "total", scope: !916, file: !147, line: 60, type: !91)
!924 = !DILocalVariable(name: "ptr", scope: !916, file: !147, line: 61, type: !6)
!925 = !DILocalVariable(name: "n_rw", scope: !926, file: !147, line: 65, type: !91)
!926 = distinct !DILexicalBlock(scope: !916, file: !147, line: 64, column: 5)
!927 = !DILocation(line: 0, scope: !916)
!928 = !DILocation(line: 63, column: 16, scope: !916)
!929 = !DILocation(line: 63, column: 3, scope: !916)
!930 = !DILocation(line: 65, column: 21, scope: !926)
!931 = !DILocation(line: 0, scope: !926)
!932 = !DILocation(line: 66, column: 11, scope: !926)
!933 = !DILocation(line: 70, column: 11, scope: !934)
!934 = distinct !DILexicalBlock(scope: !935, file: !147, line: 69, column: 9)
!935 = distinct !DILexicalBlock(scope: !926, file: !147, line: 68, column: 11)
!936 = !DILocation(line: 70, column: 17, scope: !934)
!937 = !DILocation(line: 71, column: 11, scope: !934)
!938 = !DILocation(line: 73, column: 13, scope: !926)
!939 = !DILocation(line: 74, column: 11, scope: !926)
!940 = !DILocation(line: 75, column: 13, scope: !926)
!941 = !DILocation(line: 78, column: 3, scope: !916)
!942 = distinct !DISubprogram(name: "parse_long_options", scope: !27, file: !27, line: 45, type: !943, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !946)
!943 = !DISubroutineType(types: !944)
!944 = !{null, !23, !734, !6, !6, !6, !945, null}
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!946 = !{!947, !948, !949, !950, !951, !952, !953, !954, !955}
!947 = !DILocalVariable(name: "argc", arg: 1, scope: !942, file: !27, line: 45, type: !23)
!948 = !DILocalVariable(name: "argv", arg: 2, scope: !942, file: !27, line: 46, type: !734)
!949 = !DILocalVariable(name: "command_name", arg: 3, scope: !942, file: !27, line: 47, type: !6)
!950 = !DILocalVariable(name: "package", arg: 4, scope: !942, file: !27, line: 48, type: !6)
!951 = !DILocalVariable(name: "version", arg: 5, scope: !942, file: !27, line: 49, type: !6)
!952 = !DILocalVariable(name: "usage_func", arg: 6, scope: !942, file: !27, line: 50, type: !945)
!953 = !DILocalVariable(name: "c", scope: !942, file: !27, line: 53, type: !23)
!954 = !DILocalVariable(name: "saved_opterr", scope: !942, file: !27, line: 54, type: !23)
!955 = !DILocalVariable(name: "authors", scope: !956, file: !27, line: 72, type: !960)
!956 = distinct !DILexicalBlock(scope: !957, file: !27, line: 71, column: 11)
!957 = distinct !DILexicalBlock(scope: !958, file: !27, line: 65, column: 9)
!958 = distinct !DILexicalBlock(scope: !959, file: !27, line: 63, column: 5)
!959 = distinct !DILexicalBlock(scope: !942, file: !27, line: 61, column: 7)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !672, line: 52, baseType: !961)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !962, line: 32, baseType: !963)
!962 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !27, baseType: !964)
!964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !965, size: 192, elements: !706)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !966)
!966 = !{!967, !968, !969, !970}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !965, file: !27, line: 72, baseType: !56, size: 32)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !965, file: !27, line: 72, baseType: !56, size: 32, offset: 32)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !965, file: !27, line: 72, baseType: !46, size: 64, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !965, file: !27, line: 72, baseType: !46, size: 64, offset: 128)
!971 = !DILocation(line: 0, scope: !942)
!972 = !DILocation(line: 56, column: 18, scope: !942)
!973 = !DILocation(line: 59, column: 10, scope: !942)
!974 = !DILocation(line: 61, column: 12, scope: !959)
!975 = !DILocation(line: 62, column: 7, scope: !959)
!976 = !DILocation(line: 62, column: 15, scope: !959)
!977 = !DILocation(line: 61, column: 7, scope: !942)
!978 = !DILocation(line: 67, column: 11, scope: !957)
!979 = !DILocation(line: 68, column: 11, scope: !957)
!980 = !DILocation(line: 72, column: 13, scope: !956)
!981 = !DILocation(line: 72, column: 21, scope: !956)
!982 = !DILocation(line: 73, column: 13, scope: !956)
!983 = !DILocation(line: 74, column: 29, scope: !956)
!984 = !DILocation(line: 74, column: 13, scope: !956)
!985 = !DILocation(line: 75, column: 13, scope: !956)
!986 = !DILocation(line: 85, column: 10, scope: !942)
!987 = !DILocation(line: 89, column: 10, scope: !942)
!988 = !DILocation(line: 90, column: 1, scope: !942)
!989 = !DISubprogram(name: "getopt_long", scope: !32, file: !32, line: 66, type: !990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!990 = !DISubroutineType(types: !991)
!991 = !{!23, !23, !992, !6, !994, !37}
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!995 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !27, file: !27, line: 98, type: !996, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !998)
!996 = !DISubroutineType(types: !997)
!997 = !{null, !23, !734, !6, !6, !6, !16, !945, null}
!998 = !{!999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009}
!999 = !DILocalVariable(name: "argc", arg: 1, scope: !995, file: !27, line: 98, type: !23)
!1000 = !DILocalVariable(name: "argv", arg: 2, scope: !995, file: !27, line: 99, type: !734)
!1001 = !DILocalVariable(name: "command_name", arg: 3, scope: !995, file: !27, line: 100, type: !6)
!1002 = !DILocalVariable(name: "package", arg: 4, scope: !995, file: !27, line: 101, type: !6)
!1003 = !DILocalVariable(name: "version", arg: 5, scope: !995, file: !27, line: 102, type: !6)
!1004 = !DILocalVariable(name: "scan_all", arg: 6, scope: !995, file: !27, line: 103, type: !16)
!1005 = !DILocalVariable(name: "usage_func", arg: 7, scope: !995, file: !27, line: 104, type: !945)
!1006 = !DILocalVariable(name: "c", scope: !995, file: !27, line: 107, type: !23)
!1007 = !DILocalVariable(name: "saved_opterr", scope: !995, file: !27, line: 108, type: !23)
!1008 = !DILocalVariable(name: "optstring", scope: !995, file: !27, line: 113, type: !6)
!1009 = !DILocalVariable(name: "authors", scope: !1010, file: !27, line: 125, type: !960)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !27, line: 124, column: 11)
!1011 = distinct !DILexicalBlock(scope: !1012, file: !27, line: 118, column: 9)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !27, line: 116, column: 5)
!1013 = distinct !DILexicalBlock(scope: !995, file: !27, line: 115, column: 7)
!1014 = !DILocation(line: 0, scope: !995)
!1015 = !DILocation(line: 108, column: 22, scope: !995)
!1016 = !DILocation(line: 111, column: 10, scope: !995)
!1017 = !DILocation(line: 113, column: 27, scope: !995)
!1018 = !DILocation(line: 115, column: 12, scope: !1013)
!1019 = !DILocation(line: 115, column: 7, scope: !995)
!1020 = !DILocation(line: 125, column: 13, scope: !1010)
!1021 = !DILocation(line: 125, column: 21, scope: !1010)
!1022 = !DILocation(line: 126, column: 13, scope: !1010)
!1023 = !DILocation(line: 127, column: 29, scope: !1010)
!1024 = !DILocation(line: 127, column: 13, scope: !1010)
!1025 = !DILocation(line: 128, column: 13, scope: !1010)
!1026 = !DILocation(line: 132, column: 26, scope: !1011)
!1027 = !DILocation(line: 133, column: 11, scope: !1011)
!1028 = !DILocation(line: 0, scope: !1011)
!1029 = !DILocation(line: 138, column: 10, scope: !995)
!1030 = !DILocation(line: 139, column: 1, scope: !995)
!1031 = distinct !DISubprogram(name: "set_program_name", scope: !44, file: !44, line: 39, type: !617, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !43, retainedNodes: !1032)
!1032 = !{!1033, !1034, !1035}
!1033 = !DILocalVariable(name: "argv0", arg: 1, scope: !1031, file: !44, line: 39, type: !6)
!1034 = !DILocalVariable(name: "slash", scope: !1031, file: !44, line: 46, type: !6)
!1035 = !DILocalVariable(name: "base", scope: !1031, file: !44, line: 47, type: !6)
!1036 = !DILocation(line: 0, scope: !1031)
!1037 = !DILocation(line: 51, column: 13, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1031, file: !44, line: 51, column: 7)
!1039 = !DILocation(line: 51, column: 7, scope: !1031)
!1040 = !DILocation(line: 55, column: 14, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1038, file: !44, line: 52, column: 5)
!1042 = !DILocation(line: 54, column: 7, scope: !1041)
!1043 = !DILocation(line: 56, column: 7, scope: !1041)
!1044 = !DILocation(line: 59, column: 11, scope: !1031)
!1045 = !DILocation(line: 60, column: 17, scope: !1031)
!1046 = !DILocation(line: 60, column: 11, scope: !1031)
!1047 = !DILocation(line: 61, column: 12, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1031, file: !44, line: 61, column: 7)
!1049 = !DILocation(line: 61, column: 20, scope: !1048)
!1050 = !DILocation(line: 61, column: 25, scope: !1048)
!1051 = !DILocation(line: 61, column: 42, scope: !1048)
!1052 = !DILocation(line: 61, column: 28, scope: !1048)
!1053 = !DILocation(line: 61, column: 61, scope: !1048)
!1054 = !DILocation(line: 61, column: 7, scope: !1031)
!1055 = !DILocation(line: 64, column: 11, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !44, line: 64, column: 11)
!1057 = distinct !DILexicalBlock(scope: !1048, file: !44, line: 62, column: 5)
!1058 = !DILocation(line: 64, column: 36, scope: !1056)
!1059 = !DILocation(line: 64, column: 11, scope: !1057)
!1060 = !DILocation(line: 66, column: 24, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1056, file: !44, line: 65, column: 9)
!1062 = !DILocation(line: 70, column: 41, scope: !1061)
!1063 = !DILocation(line: 72, column: 9, scope: !1061)
!1064 = !DILocation(line: 84, column: 16, scope: !1031)
!1065 = !DILocation(line: 90, column: 27, scope: !1031)
!1066 = !DILocation(line: 92, column: 1, scope: !1031)
!1067 = distinct !DISubprogram(name: "clone_quoting_options", scope: !52, file: !52, line: 122, type: !1068, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1071)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!1070, !1070}
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!1071 = !{!1072, !1073, !1074}
!1072 = !DILocalVariable(name: "o", arg: 1, scope: !1067, file: !52, line: 122, type: !1070)
!1073 = !DILocalVariable(name: "e", scope: !1067, file: !52, line: 124, type: !23)
!1074 = !DILocalVariable(name: "p", scope: !1067, file: !52, line: 125, type: !1070)
!1075 = !DILocation(line: 0, scope: !1067)
!1076 = !DILocation(line: 124, column: 11, scope: !1067)
!1077 = !DILocation(line: 125, column: 40, scope: !1067)
!1078 = !DILocation(line: 125, column: 31, scope: !1067)
!1079 = !DILocation(line: 127, column: 9, scope: !1067)
!1080 = !DILocation(line: 128, column: 3, scope: !1067)
!1081 = distinct !DISubprogram(name: "get_quoting_style", scope: !52, file: !52, line: 133, type: !1082, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1086)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!54, !1084}
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!1086 = !{!1087}
!1087 = !DILocalVariable(name: "o", arg: 1, scope: !1081, file: !52, line: 133, type: !1084)
!1088 = !DILocation(line: 0, scope: !1081)
!1089 = !DILocation(line: 135, column: 11, scope: !1081)
!1090 = !DILocation(line: 135, column: 46, scope: !1081)
!1091 = !{!1092, !607, i64 0}
!1092 = !{!"quoting_options", !607, i64 0, !763, i64 4, !607, i64 8, !606, i64 40, !606, i64 48}
!1093 = !DILocation(line: 135, column: 3, scope: !1081)
!1094 = distinct !DISubprogram(name: "set_quoting_style", scope: !52, file: !52, line: 141, type: !1095, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1097)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{null, !1070, !54}
!1097 = !{!1098, !1099}
!1098 = !DILocalVariable(name: "o", arg: 1, scope: !1094, file: !52, line: 141, type: !1070)
!1099 = !DILocalVariable(name: "s", arg: 2, scope: !1094, file: !52, line: 141, type: !54)
!1100 = !DILocation(line: 0, scope: !1094)
!1101 = !DILocation(line: 143, column: 4, scope: !1094)
!1102 = !DILocation(line: 143, column: 39, scope: !1094)
!1103 = !DILocation(line: 143, column: 45, scope: !1094)
!1104 = !DILocation(line: 144, column: 1, scope: !1094)
!1105 = distinct !DISubprogram(name: "set_char_quoting", scope: !52, file: !52, line: 152, type: !1106, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1108)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!23, !1070, !8, !23}
!1108 = !{!1109, !1110, !1111, !1112, !1114, !1116, !1117}
!1109 = !DILocalVariable(name: "o", arg: 1, scope: !1105, file: !52, line: 152, type: !1070)
!1110 = !DILocalVariable(name: "c", arg: 2, scope: !1105, file: !52, line: 152, type: !8)
!1111 = !DILocalVariable(name: "i", arg: 3, scope: !1105, file: !52, line: 152, type: !23)
!1112 = !DILocalVariable(name: "uc", scope: !1105, file: !52, line: 154, type: !1113)
!1113 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1114 = !DILocalVariable(name: "p", scope: !1105, file: !52, line: 155, type: !1115)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!1116 = !DILocalVariable(name: "shift", scope: !1105, file: !52, line: 157, type: !23)
!1117 = !DILocalVariable(name: "r", scope: !1105, file: !52, line: 158, type: !23)
!1118 = !DILocation(line: 0, scope: !1105)
!1119 = !DILocation(line: 156, column: 6, scope: !1105)
!1120 = !DILocation(line: 156, column: 62, scope: !1105)
!1121 = !DILocation(line: 156, column: 57, scope: !1105)
!1122 = !DILocation(line: 157, column: 15, scope: !1105)
!1123 = !DILocation(line: 158, column: 12, scope: !1105)
!1124 = !DILocation(line: 158, column: 15, scope: !1105)
!1125 = !DILocation(line: 158, column: 25, scope: !1105)
!1126 = !DILocation(line: 159, column: 13, scope: !1105)
!1127 = !DILocation(line: 159, column: 18, scope: !1105)
!1128 = !DILocation(line: 159, column: 23, scope: !1105)
!1129 = !DILocation(line: 159, column: 6, scope: !1105)
!1130 = !DILocation(line: 160, column: 3, scope: !1105)
!1131 = distinct !DISubprogram(name: "set_quoting_flags", scope: !52, file: !52, line: 168, type: !1132, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1134)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!23, !1070, !23}
!1134 = !{!1135, !1136, !1137}
!1135 = !DILocalVariable(name: "o", arg: 1, scope: !1131, file: !52, line: 168, type: !1070)
!1136 = !DILocalVariable(name: "i", arg: 2, scope: !1131, file: !52, line: 168, type: !23)
!1137 = !DILocalVariable(name: "r", scope: !1131, file: !52, line: 170, type: !23)
!1138 = !DILocation(line: 0, scope: !1131)
!1139 = !DILocation(line: 171, column: 8, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1131, file: !52, line: 171, column: 7)
!1141 = !DILocation(line: 171, column: 7, scope: !1131)
!1142 = !DILocation(line: 173, column: 10, scope: !1131)
!1143 = !{!1092, !763, i64 4}
!1144 = !DILocation(line: 174, column: 12, scope: !1131)
!1145 = !DILocation(line: 175, column: 3, scope: !1131)
!1146 = distinct !DISubprogram(name: "set_custom_quoting", scope: !52, file: !52, line: 179, type: !1147, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1149)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{null, !1070, !6, !6}
!1149 = !{!1150, !1151, !1152}
!1150 = !DILocalVariable(name: "o", arg: 1, scope: !1146, file: !52, line: 179, type: !1070)
!1151 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1146, file: !52, line: 180, type: !6)
!1152 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1146, file: !52, line: 180, type: !6)
!1153 = !DILocation(line: 0, scope: !1146)
!1154 = !DILocation(line: 182, column: 8, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1146, file: !52, line: 182, column: 7)
!1156 = !DILocation(line: 182, column: 7, scope: !1146)
!1157 = !DILocation(line: 184, column: 6, scope: !1146)
!1158 = !DILocation(line: 184, column: 12, scope: !1146)
!1159 = !DILocation(line: 185, column: 8, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1146, file: !52, line: 185, column: 7)
!1161 = !DILocation(line: 185, column: 19, scope: !1160)
!1162 = !DILocation(line: 186, column: 5, scope: !1160)
!1163 = !DILocation(line: 187, column: 6, scope: !1146)
!1164 = !DILocation(line: 187, column: 17, scope: !1146)
!1165 = !{!1092, !606, i64 40}
!1166 = !DILocation(line: 188, column: 6, scope: !1146)
!1167 = !DILocation(line: 188, column: 18, scope: !1146)
!1168 = !{!1092, !606, i64 48}
!1169 = !DILocation(line: 189, column: 1, scope: !1146)
!1170 = distinct !DISubprogram(name: "quotearg_buffer", scope: !52, file: !52, line: 784, type: !1171, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1173)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!91, !47, !91, !6, !91, !1084}
!1173 = !{!1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181}
!1174 = !DILocalVariable(name: "buffer", arg: 1, scope: !1170, file: !52, line: 784, type: !47)
!1175 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1170, file: !52, line: 784, type: !91)
!1176 = !DILocalVariable(name: "arg", arg: 3, scope: !1170, file: !52, line: 785, type: !6)
!1177 = !DILocalVariable(name: "argsize", arg: 4, scope: !1170, file: !52, line: 785, type: !91)
!1178 = !DILocalVariable(name: "o", arg: 5, scope: !1170, file: !52, line: 786, type: !1084)
!1179 = !DILocalVariable(name: "p", scope: !1170, file: !52, line: 788, type: !1084)
!1180 = !DILocalVariable(name: "e", scope: !1170, file: !52, line: 789, type: !23)
!1181 = !DILocalVariable(name: "r", scope: !1170, file: !52, line: 790, type: !91)
!1182 = !DILocation(line: 0, scope: !1170)
!1183 = !DILocation(line: 788, column: 37, scope: !1170)
!1184 = !DILocation(line: 789, column: 11, scope: !1170)
!1185 = !DILocation(line: 791, column: 43, scope: !1170)
!1186 = !DILocation(line: 791, column: 53, scope: !1170)
!1187 = !DILocation(line: 791, column: 60, scope: !1170)
!1188 = !DILocation(line: 792, column: 43, scope: !1170)
!1189 = !DILocation(line: 792, column: 58, scope: !1170)
!1190 = !DILocation(line: 790, column: 14, scope: !1170)
!1191 = !DILocation(line: 793, column: 9, scope: !1170)
!1192 = !DILocation(line: 794, column: 3, scope: !1170)
!1193 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !52, file: !52, line: 256, type: !1194, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1198)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!91, !47, !91, !6, !91, !54, !23, !1196, !6, !6}
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!1198 = !{!1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1223, !1224, !1225, !1226, !1227, !1230, !1231, !1249, !1252, !1253, !1260, !1263, !1264, !1265, !1266, !1267, !1268}
!1199 = !DILocalVariable(name: "buffer", arg: 1, scope: !1193, file: !52, line: 256, type: !47)
!1200 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1193, file: !52, line: 256, type: !91)
!1201 = !DILocalVariable(name: "arg", arg: 3, scope: !1193, file: !52, line: 257, type: !6)
!1202 = !DILocalVariable(name: "argsize", arg: 4, scope: !1193, file: !52, line: 257, type: !91)
!1203 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1193, file: !52, line: 258, type: !54)
!1204 = !DILocalVariable(name: "flags", arg: 6, scope: !1193, file: !52, line: 258, type: !23)
!1205 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1193, file: !52, line: 259, type: !1196)
!1206 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1193, file: !52, line: 260, type: !6)
!1207 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1193, file: !52, line: 261, type: !6)
!1208 = !DILocalVariable(name: "i", scope: !1193, file: !52, line: 263, type: !91)
!1209 = !DILocalVariable(name: "len", scope: !1193, file: !52, line: 264, type: !91)
!1210 = !DILocalVariable(name: "orig_buffersize", scope: !1193, file: !52, line: 265, type: !91)
!1211 = !DILocalVariable(name: "quote_string", scope: !1193, file: !52, line: 266, type: !6)
!1212 = !DILocalVariable(name: "quote_string_len", scope: !1193, file: !52, line: 267, type: !91)
!1213 = !DILocalVariable(name: "backslash_escapes", scope: !1193, file: !52, line: 268, type: !16)
!1214 = !DILocalVariable(name: "unibyte_locale", scope: !1193, file: !52, line: 269, type: !16)
!1215 = !DILocalVariable(name: "elide_outer_quotes", scope: !1193, file: !52, line: 270, type: !16)
!1216 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1193, file: !52, line: 271, type: !16)
!1217 = !DILocalVariable(name: "encountered_single_quote", scope: !1193, file: !52, line: 272, type: !16)
!1218 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1193, file: !52, line: 273, type: !16)
!1219 = !DILocalVariable(name: "c", scope: !1220, file: !52, line: 402, type: !1113)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !52, line: 401, column: 5)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !52, line: 400, column: 3)
!1222 = distinct !DILexicalBlock(scope: !1193, file: !52, line: 400, column: 3)
!1223 = !DILocalVariable(name: "esc", scope: !1220, file: !52, line: 403, type: !1113)
!1224 = !DILocalVariable(name: "is_right_quote", scope: !1220, file: !52, line: 404, type: !16)
!1225 = !DILocalVariable(name: "escaping", scope: !1220, file: !52, line: 405, type: !16)
!1226 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1220, file: !52, line: 406, type: !16)
!1227 = !DILocalVariable(name: "m", scope: !1228, file: !52, line: 610, type: !91)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !52, line: 608, column: 11)
!1229 = distinct !DILexicalBlock(scope: !1220, file: !52, line: 426, column: 9)
!1230 = !DILocalVariable(name: "printable", scope: !1228, file: !52, line: 612, type: !16)
!1231 = !DILocalVariable(name: "mbstate", scope: !1232, file: !52, line: 621, type: !1234)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !52, line: 620, column: 15)
!1233 = distinct !DILexicalBlock(scope: !1228, file: !52, line: 614, column: 17)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1235, line: 6, baseType: !1236)
!1235 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1237, line: 21, baseType: !1238)
!1237 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1237, line: 13, size: 64, elements: !1239)
!1239 = !{!1240, !1241}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1238, file: !1237, line: 15, baseType: !23, size: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1238, file: !1237, line: 20, baseType: !1242, size: 32, offset: 32)
!1242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1238, file: !1237, line: 16, size: 32, elements: !1243)
!1243 = !{!1244, !1245}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1242, file: !1237, line: 18, baseType: !56, size: 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1242, file: !1237, line: 19, baseType: !1246, size: 32)
!1246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !1247)
!1247 = !{!1248}
!1248 = !DISubrange(count: 4)
!1249 = !DILocalVariable(name: "w", scope: !1250, file: !52, line: 631, type: !1251)
!1250 = distinct !DILexicalBlock(scope: !1232, file: !52, line: 630, column: 19)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !92, line: 74, baseType: !23)
!1252 = !DILocalVariable(name: "bytes", scope: !1250, file: !52, line: 632, type: !91)
!1253 = !DILocalVariable(name: "j", scope: !1254, file: !52, line: 657, type: !91)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !52, line: 656, column: 27)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !52, line: 654, column: 29)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !52, line: 649, column: 23)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !52, line: 641, column: 30)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !52, line: 636, column: 30)
!1259 = distinct !DILexicalBlock(scope: !1250, file: !52, line: 634, column: 25)
!1260 = !DILocalVariable(name: "ilim", scope: !1261, file: !52, line: 684, type: !91)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !52, line: 681, column: 15)
!1262 = distinct !DILexicalBlock(scope: !1228, file: !52, line: 680, column: 17)
!1263 = !DILabel(scope: !1193, name: "process_input", file: !52, line: 314)
!1264 = !DILabel(scope: !1229, name: "c_and_shell_escape", file: !52, line: 512)
!1265 = !DILabel(scope: !1229, name: "c_escape", file: !52, line: 517)
!1266 = !DILabel(scope: !1220, name: "store_escape", file: !52, line: 719)
!1267 = !DILabel(scope: !1220, name: "store_c", file: !52, line: 722)
!1268 = !DILabel(scope: !1193, name: "force_outer_quoting_style", file: !52, line: 763)
!1269 = !DILocation(line: 0, scope: !1193)
!1270 = !DILocation(line: 269, column: 25, scope: !1193)
!1271 = !DILocation(line: 269, column: 36, scope: !1193)
!1272 = !DILocation(line: 270, column: 8, scope: !1193)
!1273 = !DILocation(line: 273, column: 3, scope: !1193)
!1274 = !DILocation(line: 265, column: 10, scope: !1193)
!1275 = !DILocation(line: 266, column: 15, scope: !1193)
!1276 = !DILocation(line: 267, column: 10, scope: !1193)
!1277 = !DILocation(line: 268, column: 8, scope: !1193)
!1278 = !DILocation(line: 271, column: 8, scope: !1193)
!1279 = !DILocation(line: 272, column: 8, scope: !1193)
!1280 = !DILocation(line: 273, column: 8, scope: !1193)
!1281 = !DILocation(line: 314, column: 2, scope: !1193)
!1282 = !DILocation(line: 316, column: 3, scope: !1193)
!1283 = !DILocation(line: 323, column: 11, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1193, file: !52, line: 317, column: 5)
!1285 = !DILocation(line: 323, column: 12, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1284, file: !52, line: 323, column: 11)
!1287 = !DILocation(line: 324, column: 9, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !52, line: 324, column: 9)
!1289 = distinct !DILexicalBlock(scope: !1286, file: !52, line: 324, column: 9)
!1290 = !DILocation(line: 324, column: 9, scope: !1289)
!1291 = !DILocation(line: 362, column: 26, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !52, line: 340, column: 11)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !52, line: 339, column: 13)
!1294 = distinct !DILexicalBlock(scope: !1284, file: !52, line: 338, column: 7)
!1295 = !DILocation(line: 363, column: 27, scope: !1292)
!1296 = !DILocation(line: 364, column: 11, scope: !1292)
!1297 = !DILocation(line: 365, column: 14, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1294, file: !52, line: 365, column: 13)
!1299 = !DILocation(line: 365, column: 13, scope: !1294)
!1300 = !DILocation(line: 366, column: 43, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !52, line: 366, column: 11)
!1302 = distinct !DILexicalBlock(scope: !1298, file: !52, line: 366, column: 11)
!1303 = !DILocation(line: 366, column: 11, scope: !1302)
!1304 = !DILocation(line: 367, column: 13, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !52, line: 367, column: 13)
!1306 = distinct !DILexicalBlock(scope: !1301, file: !52, line: 367, column: 13)
!1307 = !DILocation(line: 367, column: 13, scope: !1306)
!1308 = !DILocation(line: 366, column: 70, scope: !1301)
!1309 = distinct !{!1309, !1303, !1310, !647}
!1310 = !DILocation(line: 367, column: 13, scope: !1302)
!1311 = !DILocation(line: 264, column: 10, scope: !1193)
!1312 = !DILocation(line: 370, column: 28, scope: !1294)
!1313 = !DILocation(line: 372, column: 7, scope: !1284)
!1314 = !DILocation(line: 376, column: 7, scope: !1284)
!1315 = !DILocation(line: 379, column: 7, scope: !1284)
!1316 = !DILocation(line: 381, column: 12, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1284, file: !52, line: 381, column: 11)
!1318 = !DILocation(line: 381, column: 11, scope: !1284)
!1319 = !DILocation(line: 386, column: 12, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1284, file: !52, line: 386, column: 11)
!1321 = !DILocation(line: 386, column: 11, scope: !1284)
!1322 = !DILocation(line: 387, column: 9, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !52, line: 387, column: 9)
!1324 = distinct !DILexicalBlock(scope: !1320, file: !52, line: 387, column: 9)
!1325 = !DILocation(line: 387, column: 9, scope: !1324)
!1326 = !DILocation(line: 394, column: 7, scope: !1284)
!1327 = !DILocation(line: 397, column: 7, scope: !1284)
!1328 = !DILocation(line: 400, column: 8, scope: !1222)
!1329 = !DILocation(line: 0, scope: !1222)
!1330 = !DILocation(line: 400, column: 27, scope: !1221)
!1331 = !DILocation(line: 400, column: 19, scope: !1221)
!1332 = !DILocation(line: 400, column: 41, scope: !1221)
!1333 = !DILocation(line: 400, column: 48, scope: !1221)
!1334 = !DILocation(line: 400, column: 3, scope: !1222)
!1335 = !DILocation(line: 400, column: 60, scope: !1221)
!1336 = !DILocation(line: 0, scope: !1220)
!1337 = !DILocation(line: 409, column: 11, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1220, file: !52, line: 408, column: 11)
!1339 = !DILocation(line: 411, column: 17, scope: !1338)
!1340 = !DILocation(line: 412, column: 39, scope: !1338)
!1341 = !DILocation(line: 416, column: 32, scope: !1338)
!1342 = !DILocation(line: 412, column: 19, scope: !1338)
!1343 = !DILocation(line: 412, column: 15, scope: !1338)
!1344 = !DILocation(line: 417, column: 11, scope: !1338)
!1345 = !DILocation(line: 417, column: 26, scope: !1338)
!1346 = !DILocation(line: 417, column: 14, scope: !1338)
!1347 = !DILocation(line: 417, column: 63, scope: !1338)
!1348 = !DILocation(line: 408, column: 11, scope: !1220)
!1349 = !DILocation(line: 424, column: 11, scope: !1220)
!1350 = !DILocation(line: 425, column: 7, scope: !1220)
!1351 = !DILocation(line: 428, column: 15, scope: !1229)
!1352 = !DILocation(line: 430, column: 15, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !52, line: 430, column: 15)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !52, line: 429, column: 13)
!1355 = distinct !DILexicalBlock(scope: !1229, file: !52, line: 428, column: 15)
!1356 = !DILocation(line: 430, column: 15, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1353, file: !52, line: 430, column: 15)
!1358 = !DILocation(line: 430, column: 15, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !52, line: 430, column: 15)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !52, line: 430, column: 15)
!1361 = distinct !DILexicalBlock(scope: !1357, file: !52, line: 430, column: 15)
!1362 = !DILocation(line: 430, column: 15, scope: !1360)
!1363 = !DILocation(line: 430, column: 15, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !52, line: 430, column: 15)
!1365 = distinct !DILexicalBlock(scope: !1361, file: !52, line: 430, column: 15)
!1366 = !DILocation(line: 430, column: 15, scope: !1365)
!1367 = !DILocation(line: 430, column: 15, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !52, line: 430, column: 15)
!1369 = distinct !DILexicalBlock(scope: !1361, file: !52, line: 430, column: 15)
!1370 = !DILocation(line: 430, column: 15, scope: !1369)
!1371 = !DILocation(line: 430, column: 15, scope: !1361)
!1372 = !DILocation(line: 430, column: 15, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !52, line: 430, column: 15)
!1374 = distinct !DILexicalBlock(scope: !1353, file: !52, line: 430, column: 15)
!1375 = !DILocation(line: 430, column: 15, scope: !1374)
!1376 = !DILocation(line: 438, column: 19, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1354, file: !52, line: 437, column: 19)
!1378 = !DILocation(line: 438, column: 48, scope: !1377)
!1379 = !DILocation(line: 438, column: 59, scope: !1377)
!1380 = !DILocation(line: 440, column: 19, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !52, line: 440, column: 19)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !52, line: 440, column: 19)
!1383 = distinct !DILexicalBlock(scope: !1377, file: !52, line: 439, column: 17)
!1384 = !DILocation(line: 440, column: 19, scope: !1382)
!1385 = !DILocation(line: 441, column: 19, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !52, line: 441, column: 19)
!1387 = distinct !DILexicalBlock(scope: !1383, file: !52, line: 441, column: 19)
!1388 = !DILocation(line: 441, column: 19, scope: !1387)
!1389 = !DILocation(line: 442, column: 17, scope: !1383)
!1390 = !DILocation(line: 449, column: 20, scope: !1355)
!1391 = !DILocation(line: 454, column: 11, scope: !1229)
!1392 = !DILocation(line: 457, column: 19, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1229, file: !52, line: 455, column: 13)
!1394 = !DILocation(line: 463, column: 19, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1393, file: !52, line: 462, column: 19)
!1396 = !DILocation(line: 463, column: 47, scope: !1395)
!1397 = !DILocation(line: 463, column: 41, scope: !1395)
!1398 = !DILocation(line: 463, column: 52, scope: !1395)
!1399 = !DILocation(line: 462, column: 19, scope: !1393)
!1400 = !DILocation(line: 464, column: 25, scope: !1395)
!1401 = !DILocation(line: 464, column: 17, scope: !1395)
!1402 = !DILocation(line: 471, column: 25, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1395, file: !52, line: 465, column: 19)
!1404 = !DILocation(line: 475, column: 21, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !52, line: 475, column: 21)
!1406 = distinct !DILexicalBlock(scope: !1403, file: !52, line: 475, column: 21)
!1407 = !DILocation(line: 475, column: 21, scope: !1406)
!1408 = !DILocation(line: 476, column: 21, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !52, line: 476, column: 21)
!1410 = distinct !DILexicalBlock(scope: !1403, file: !52, line: 476, column: 21)
!1411 = !DILocation(line: 476, column: 21, scope: !1410)
!1412 = !DILocation(line: 477, column: 21, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !52, line: 477, column: 21)
!1414 = distinct !DILexicalBlock(scope: !1403, file: !52, line: 477, column: 21)
!1415 = !DILocation(line: 477, column: 21, scope: !1414)
!1416 = !DILocation(line: 478, column: 21, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !52, line: 478, column: 21)
!1418 = distinct !DILexicalBlock(scope: !1403, file: !52, line: 478, column: 21)
!1419 = !DILocation(line: 478, column: 21, scope: !1418)
!1420 = !DILocation(line: 479, column: 21, scope: !1403)
!1421 = !DILocation(line: 492, column: 31, scope: !1229)
!1422 = !DILocation(line: 493, column: 31, scope: !1229)
!1423 = !DILocation(line: 495, column: 31, scope: !1229)
!1424 = !DILocation(line: 496, column: 31, scope: !1229)
!1425 = !DILocation(line: 497, column: 31, scope: !1229)
!1426 = !DILocation(line: 500, column: 15, scope: !1229)
!1427 = !DILocation(line: 502, column: 19, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !52, line: 501, column: 13)
!1429 = distinct !DILexicalBlock(scope: !1229, file: !52, line: 500, column: 15)
!1430 = !DILocation(line: 509, column: 33, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1229, file: !52, line: 509, column: 15)
!1432 = !DILocation(line: 0, scope: !1229)
!1433 = !DILocation(line: 512, column: 9, scope: !1229)
!1434 = !DILocation(line: 514, column: 15, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1229, file: !52, line: 513, column: 15)
!1436 = !DILocation(line: 517, column: 9, scope: !1229)
!1437 = !DILocation(line: 518, column: 15, scope: !1229)
!1438 = !DILocation(line: 526, column: 15, scope: !1229)
!1439 = !DILocation(line: 526, column: 40, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1229, file: !52, line: 526, column: 15)
!1441 = !DILocation(line: 526, column: 47, scope: !1440)
!1442 = !DILocation(line: 526, column: 18, scope: !1440)
!1443 = !DILocation(line: 530, column: 17, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1229, file: !52, line: 530, column: 15)
!1445 = !DILocation(line: 530, column: 15, scope: !1229)
!1446 = !DILocation(line: 535, column: 11, scope: !1229)
!1447 = !DILocation(line: 549, column: 15, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1229, file: !52, line: 548, column: 15)
!1449 = !DILocation(line: 556, column: 15, scope: !1229)
!1450 = !DILocation(line: 558, column: 19, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !52, line: 557, column: 13)
!1452 = distinct !DILexicalBlock(scope: !1229, file: !52, line: 556, column: 15)
!1453 = !DILocation(line: 561, column: 19, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1451, file: !52, line: 561, column: 19)
!1455 = !DILocation(line: 561, column: 30, scope: !1454)
!1456 = !DILocation(line: 570, column: 15, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !52, line: 570, column: 15)
!1458 = distinct !DILexicalBlock(scope: !1451, file: !52, line: 570, column: 15)
!1459 = !DILocation(line: 570, column: 15, scope: !1458)
!1460 = !DILocation(line: 571, column: 15, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !52, line: 571, column: 15)
!1462 = distinct !DILexicalBlock(scope: !1451, file: !52, line: 571, column: 15)
!1463 = !DILocation(line: 571, column: 15, scope: !1462)
!1464 = !DILocation(line: 572, column: 15, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !52, line: 572, column: 15)
!1466 = distinct !DILexicalBlock(scope: !1451, file: !52, line: 572, column: 15)
!1467 = !DILocation(line: 572, column: 15, scope: !1466)
!1468 = !DILocation(line: 574, column: 13, scope: !1451)
!1469 = !DILocation(line: 614, column: 17, scope: !1228)
!1470 = !DILocation(line: 0, scope: !1228)
!1471 = !DILocation(line: 617, column: 29, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1233, file: !52, line: 615, column: 15)
!1473 = !{!1474, !1474, i64 0}
!1474 = !{!"short", !607, i64 0}
!1475 = !DILocation(line: 617, column: 27, scope: !1472)
!1476 = !DILocation(line: 678, column: 40, scope: !1228)
!1477 = !DILocation(line: 680, column: 23, scope: !1262)
!1478 = !DILocation(line: 621, column: 17, scope: !1232)
!1479 = !DILocation(line: 621, column: 27, scope: !1232)
!1480 = !DILocalVariable(name: "__dest", arg: 1, scope: !1481, file: !800, line: 57, type: !46)
!1481 = distinct !DISubprogram(name: "memset", scope: !800, file: !800, line: 57, type: !1482, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1484)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!46, !46, !23, !91}
!1484 = !{!1480, !1485, !1486}
!1485 = !DILocalVariable(name: "__ch", arg: 2, scope: !1481, file: !800, line: 57, type: !23)
!1486 = !DILocalVariable(name: "__len", arg: 3, scope: !1481, file: !800, line: 57, type: !91)
!1487 = !DILocation(line: 0, scope: !1481, inlinedAt: !1488)
!1488 = distinct !DILocation(line: 622, column: 17, scope: !1232)
!1489 = !DILocation(line: 59, column: 10, scope: !1481, inlinedAt: !1488)
!1490 = !DILocation(line: 626, column: 29, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1232, file: !52, line: 626, column: 21)
!1492 = !DILocation(line: 626, column: 21, scope: !1232)
!1493 = !DILocation(line: 627, column: 29, scope: !1491)
!1494 = !DILocation(line: 627, column: 19, scope: !1491)
!1495 = !DILocation(line: 629, column: 17, scope: !1232)
!1496 = !DILocation(line: 624, column: 19, scope: !1232)
!1497 = !DILocation(line: 625, column: 27, scope: !1232)
!1498 = !DILocation(line: 631, column: 21, scope: !1250)
!1499 = !DILocation(line: 632, column: 56, scope: !1250)
!1500 = !DILocation(line: 632, column: 50, scope: !1250)
!1501 = !DILocation(line: 633, column: 53, scope: !1250)
!1502 = !DILocation(line: 0, scope: !1250)
!1503 = !DILocation(line: 632, column: 36, scope: !1250)
!1504 = !DILocation(line: 634, column: 25, scope: !1250)
!1505 = !DILocation(line: 644, column: 38, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1257, file: !52, line: 642, column: 23)
!1507 = !DILocation(line: 644, column: 48, scope: !1506)
!1508 = !DILocation(line: 644, column: 25, scope: !1506)
!1509 = !DILocation(line: 644, column: 51, scope: !1506)
!1510 = !DILocation(line: 645, column: 28, scope: !1506)
!1511 = !DILocation(line: 644, column: 34, scope: !1506)
!1512 = distinct !{!1512, !1508, !1510, !647}
!1513 = !DILocation(line: 655, column: 29, scope: !1255)
!1514 = !DILocation(line: 0, scope: !1254)
!1515 = !DILocation(line: 659, column: 49, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !52, line: 658, column: 29)
!1517 = distinct !DILexicalBlock(scope: !1254, file: !52, line: 658, column: 29)
!1518 = !DILocation(line: 659, column: 39, scope: !1516)
!1519 = !DILocation(line: 659, column: 31, scope: !1516)
!1520 = !DILocation(line: 658, column: 53, scope: !1516)
!1521 = !DILocation(line: 658, column: 43, scope: !1516)
!1522 = !DILocation(line: 658, column: 29, scope: !1517)
!1523 = distinct !{!1523, !1522, !1524, !647}
!1524 = !DILocation(line: 667, column: 33, scope: !1517)
!1525 = !DILocation(line: 674, column: 19, scope: !1232)
!1526 = !DILocation(line: 670, column: 41, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1256, file: !52, line: 670, column: 29)
!1528 = !DILocation(line: 670, column: 31, scope: !1527)
!1529 = !DILocation(line: 670, column: 29, scope: !1256)
!1530 = !DILocation(line: 672, column: 27, scope: !1256)
!1531 = !DILocation(line: 675, column: 26, scope: !1232)
!1532 = !DILocation(line: 675, column: 24, scope: !1232)
!1533 = !DILocation(line: 674, column: 19, scope: !1250)
!1534 = distinct !{!1534, !1495, !1535, !647}
!1535 = !DILocation(line: 675, column: 44, scope: !1232)
!1536 = !DILocation(line: 676, column: 15, scope: !1233)
!1537 = !DILocation(line: 680, column: 19, scope: !1262)
!1538 = !DILocation(line: 680, column: 45, scope: !1262)
!1539 = !DILocation(line: 684, column: 33, scope: !1261)
!1540 = !DILocation(line: 0, scope: !1261)
!1541 = !DILocation(line: 686, column: 17, scope: !1261)
!1542 = !DILocation(line: 405, column: 12, scope: !1220)
!1543 = !DILocation(line: 688, column: 43, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !52, line: 688, column: 25)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !52, line: 687, column: 19)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !52, line: 686, column: 17)
!1547 = distinct !DILexicalBlock(scope: !1261, file: !52, line: 686, column: 17)
!1548 = !DILocation(line: 690, column: 25, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !52, line: 690, column: 25)
!1550 = distinct !DILexicalBlock(scope: !1544, file: !52, line: 689, column: 23)
!1551 = !DILocation(line: 690, column: 25, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1549, file: !52, line: 690, column: 25)
!1553 = !DILocation(line: 690, column: 25, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !52, line: 690, column: 25)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !52, line: 690, column: 25)
!1556 = distinct !DILexicalBlock(scope: !1552, file: !52, line: 690, column: 25)
!1557 = !DILocation(line: 690, column: 25, scope: !1555)
!1558 = !DILocation(line: 690, column: 25, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !52, line: 690, column: 25)
!1560 = distinct !DILexicalBlock(scope: !1556, file: !52, line: 690, column: 25)
!1561 = !DILocation(line: 690, column: 25, scope: !1560)
!1562 = !DILocation(line: 690, column: 25, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !52, line: 690, column: 25)
!1564 = distinct !DILexicalBlock(scope: !1556, file: !52, line: 690, column: 25)
!1565 = !DILocation(line: 690, column: 25, scope: !1564)
!1566 = !DILocation(line: 690, column: 25, scope: !1556)
!1567 = !DILocation(line: 690, column: 25, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !52, line: 690, column: 25)
!1569 = distinct !DILexicalBlock(scope: !1549, file: !52, line: 690, column: 25)
!1570 = !DILocation(line: 690, column: 25, scope: !1569)
!1571 = !DILocation(line: 691, column: 25, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !52, line: 691, column: 25)
!1573 = distinct !DILexicalBlock(scope: !1550, file: !52, line: 691, column: 25)
!1574 = !DILocation(line: 691, column: 25, scope: !1573)
!1575 = !DILocation(line: 692, column: 25, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !52, line: 692, column: 25)
!1577 = distinct !DILexicalBlock(scope: !1550, file: !52, line: 692, column: 25)
!1578 = !DILocation(line: 692, column: 25, scope: !1577)
!1579 = !DILocation(line: 693, column: 38, scope: !1550)
!1580 = !DILocation(line: 693, column: 33, scope: !1550)
!1581 = !DILocation(line: 694, column: 23, scope: !1550)
!1582 = !DILocation(line: 695, column: 30, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1544, file: !52, line: 695, column: 30)
!1584 = !DILocation(line: 695, column: 30, scope: !1544)
!1585 = !DILocation(line: 697, column: 25, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !52, line: 697, column: 25)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !52, line: 697, column: 25)
!1588 = distinct !DILexicalBlock(scope: !1583, file: !52, line: 696, column: 23)
!1589 = !DILocation(line: 697, column: 25, scope: !1587)
!1590 = !DILocation(line: 699, column: 23, scope: !1588)
!1591 = !DILocation(line: 700, column: 35, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1545, file: !52, line: 700, column: 25)
!1593 = !DILocation(line: 700, column: 30, scope: !1592)
!1594 = !DILocation(line: 700, column: 25, scope: !1545)
!1595 = !DILocation(line: 702, column: 21, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !52, line: 702, column: 21)
!1597 = distinct !DILexicalBlock(scope: !1545, file: !52, line: 702, column: 21)
!1598 = !DILocation(line: 702, column: 21, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !52, line: 702, column: 21)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !52, line: 702, column: 21)
!1601 = distinct !DILexicalBlock(scope: !1596, file: !52, line: 702, column: 21)
!1602 = !DILocation(line: 702, column: 21, scope: !1600)
!1603 = !DILocation(line: 702, column: 21, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !52, line: 702, column: 21)
!1605 = distinct !DILexicalBlock(scope: !1601, file: !52, line: 702, column: 21)
!1606 = !DILocation(line: 702, column: 21, scope: !1605)
!1607 = !DILocation(line: 702, column: 21, scope: !1601)
!1608 = !DILocation(line: 0, scope: !1545)
!1609 = !DILocation(line: 703, column: 21, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !52, line: 703, column: 21)
!1611 = distinct !DILexicalBlock(scope: !1545, file: !52, line: 703, column: 21)
!1612 = !DILocation(line: 703, column: 21, scope: !1611)
!1613 = !DILocation(line: 704, column: 25, scope: !1545)
!1614 = !DILocation(line: 686, column: 17, scope: !1546)
!1615 = distinct !{!1615, !1616, !1617}
!1616 = !DILocation(line: 686, column: 17, scope: !1547)
!1617 = !DILocation(line: 705, column: 19, scope: !1547)
!1618 = !DILocation(line: 416, column: 30, scope: !1338)
!1619 = !DILocation(line: 712, column: 34, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1220, file: !52, line: 712, column: 11)
!1621 = !DILocation(line: 715, column: 35, scope: !1620)
!1622 = !DILocation(line: 715, column: 17, scope: !1620)
!1623 = !DILocation(line: 715, column: 47, scope: !1620)
!1624 = !DILocation(line: 715, column: 65, scope: !1620)
!1625 = !DILocation(line: 716, column: 11, scope: !1620)
!1626 = !DILocation(line: 712, column: 11, scope: !1220)
!1627 = !DILocation(line: 400, column: 10, scope: !1222)
!1628 = !DILocation(line: 719, column: 5, scope: !1220)
!1629 = !DILocation(line: 720, column: 7, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1220, file: !52, line: 720, column: 7)
!1631 = !DILocation(line: 720, column: 7, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1630, file: !52, line: 720, column: 7)
!1633 = !DILocation(line: 720, column: 7, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !52, line: 720, column: 7)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !52, line: 720, column: 7)
!1636 = distinct !DILexicalBlock(scope: !1632, file: !52, line: 720, column: 7)
!1637 = !DILocation(line: 720, column: 7, scope: !1635)
!1638 = !DILocation(line: 720, column: 7, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !52, line: 720, column: 7)
!1640 = distinct !DILexicalBlock(scope: !1636, file: !52, line: 720, column: 7)
!1641 = !DILocation(line: 720, column: 7, scope: !1640)
!1642 = !DILocation(line: 720, column: 7, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !52, line: 720, column: 7)
!1644 = distinct !DILexicalBlock(scope: !1636, file: !52, line: 720, column: 7)
!1645 = !DILocation(line: 720, column: 7, scope: !1644)
!1646 = !DILocation(line: 720, column: 7, scope: !1636)
!1647 = !DILocation(line: 720, column: 7, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !52, line: 720, column: 7)
!1649 = distinct !DILexicalBlock(scope: !1630, file: !52, line: 720, column: 7)
!1650 = !DILocation(line: 720, column: 7, scope: !1649)
!1651 = !DILocation(line: 722, column: 5, scope: !1220)
!1652 = !DILocation(line: 723, column: 7, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1654, file: !52, line: 723, column: 7)
!1654 = distinct !DILexicalBlock(scope: !1220, file: !52, line: 723, column: 7)
!1655 = !DILocation(line: 424, column: 9, scope: !1220)
!1656 = !DILocation(line: 723, column: 7, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !52, line: 723, column: 7)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !52, line: 723, column: 7)
!1659 = distinct !DILexicalBlock(scope: !1653, file: !52, line: 723, column: 7)
!1660 = !DILocation(line: 723, column: 7, scope: !1658)
!1661 = !DILocation(line: 723, column: 7, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !52, line: 723, column: 7)
!1663 = distinct !DILexicalBlock(scope: !1659, file: !52, line: 723, column: 7)
!1664 = !DILocation(line: 723, column: 7, scope: !1663)
!1665 = !DILocation(line: 723, column: 7, scope: !1659)
!1666 = !DILocation(line: 724, column: 7, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !52, line: 724, column: 7)
!1668 = distinct !DILexicalBlock(scope: !1220, file: !52, line: 724, column: 7)
!1669 = !DILocation(line: 724, column: 7, scope: !1668)
!1670 = !DILocation(line: 726, column: 13, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1220, file: !52, line: 726, column: 11)
!1672 = !DILocation(line: 726, column: 11, scope: !1220)
!1673 = !DILocation(line: 728, column: 5, scope: !1221)
!1674 = !DILocation(line: 400, column: 75, scope: !1221)
!1675 = !DILocation(line: 400, column: 3, scope: !1221)
!1676 = distinct !{!1676, !1334, !1677, !647}
!1677 = !DILocation(line: 728, column: 5, scope: !1222)
!1678 = !DILocation(line: 730, column: 11, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1193, file: !52, line: 730, column: 7)
!1680 = !DILocation(line: 730, column: 16, scope: !1679)
!1681 = !DILocation(line: 738, column: 51, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1193, file: !52, line: 738, column: 7)
!1683 = !DILocation(line: 741, column: 11, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !52, line: 741, column: 11)
!1685 = distinct !DILexicalBlock(scope: !1682, file: !52, line: 740, column: 5)
!1686 = !DILocation(line: 741, column: 11, scope: !1685)
!1687 = !DILocation(line: 742, column: 16, scope: !1684)
!1688 = !DILocation(line: 742, column: 9, scope: !1684)
!1689 = !DILocation(line: 746, column: 18, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1684, file: !52, line: 746, column: 16)
!1691 = !DILocation(line: 746, column: 29, scope: !1690)
!1692 = !DILocation(line: 755, column: 7, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1193, file: !52, line: 755, column: 7)
!1694 = !DILocation(line: 755, column: 20, scope: !1693)
!1695 = !DILocation(line: 756, column: 12, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !52, line: 756, column: 5)
!1697 = distinct !DILexicalBlock(scope: !1693, file: !52, line: 756, column: 5)
!1698 = !DILocation(line: 756, column: 5, scope: !1697)
!1699 = !DILocation(line: 757, column: 7, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1701, file: !52, line: 757, column: 7)
!1701 = distinct !DILexicalBlock(scope: !1696, file: !52, line: 757, column: 7)
!1702 = !DILocation(line: 757, column: 7, scope: !1701)
!1703 = !DILocation(line: 756, column: 39, scope: !1696)
!1704 = distinct !{!1704, !1698, !1705, !647}
!1705 = !DILocation(line: 757, column: 7, scope: !1697)
!1706 = !DILocation(line: 759, column: 11, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1193, file: !52, line: 759, column: 7)
!1708 = !DILocation(line: 759, column: 7, scope: !1193)
!1709 = !DILocation(line: 760, column: 5, scope: !1707)
!1710 = !DILocation(line: 760, column: 17, scope: !1707)
!1711 = !DILocation(line: 763, column: 2, scope: !1193)
!1712 = !DILocation(line: 766, column: 51, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1193, file: !52, line: 766, column: 7)
!1714 = !DILocation(line: 766, column: 21, scope: !1713)
!1715 = !DILocation(line: 770, column: 42, scope: !1193)
!1716 = !DILocation(line: 768, column: 10, scope: !1193)
!1717 = !DILocation(line: 768, column: 3, scope: !1193)
!1718 = !DILocation(line: 772, column: 1, scope: !1193)
!1719 = distinct !DISubprogram(name: "gettext_quote", scope: !52, file: !52, line: 207, type: !1720, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1722)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!6, !6, !54}
!1722 = !{!1723, !1724, !1725, !1726}
!1723 = !DILocalVariable(name: "msgid", arg: 1, scope: !1719, file: !52, line: 207, type: !6)
!1724 = !DILocalVariable(name: "s", arg: 2, scope: !1719, file: !52, line: 207, type: !54)
!1725 = !DILocalVariable(name: "translation", scope: !1719, file: !52, line: 209, type: !6)
!1726 = !DILocalVariable(name: "locale_code", scope: !1719, file: !52, line: 210, type: !6)
!1727 = !DILocation(line: 0, scope: !1719)
!1728 = !DILocation(line: 209, column: 29, scope: !1719)
!1729 = !DILocation(line: 212, column: 19, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1719, file: !52, line: 212, column: 7)
!1731 = !DILocation(line: 212, column: 7, scope: !1719)
!1732 = !DILocation(line: 233, column: 17, scope: !1719)
!1733 = !DILocalVariable(name: "s1", arg: 1, scope: !1734, file: !1735, line: 160, type: !6)
!1734 = distinct !DISubprogram(name: "strcaseeq0", scope: !1735, file: !1735, line: 160, type: !1736, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1738)
!1735 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1738 = !{!1733, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748}
!1739 = !DILocalVariable(name: "s2", arg: 2, scope: !1734, file: !1735, line: 160, type: !6)
!1740 = !DILocalVariable(name: "s20", arg: 3, scope: !1734, file: !1735, line: 160, type: !8)
!1741 = !DILocalVariable(name: "s21", arg: 4, scope: !1734, file: !1735, line: 160, type: !8)
!1742 = !DILocalVariable(name: "s22", arg: 5, scope: !1734, file: !1735, line: 160, type: !8)
!1743 = !DILocalVariable(name: "s23", arg: 6, scope: !1734, file: !1735, line: 160, type: !8)
!1744 = !DILocalVariable(name: "s24", arg: 7, scope: !1734, file: !1735, line: 160, type: !8)
!1745 = !DILocalVariable(name: "s25", arg: 8, scope: !1734, file: !1735, line: 160, type: !8)
!1746 = !DILocalVariable(name: "s26", arg: 9, scope: !1734, file: !1735, line: 160, type: !8)
!1747 = !DILocalVariable(name: "s27", arg: 10, scope: !1734, file: !1735, line: 160, type: !8)
!1748 = !DILocalVariable(name: "s28", arg: 11, scope: !1734, file: !1735, line: 160, type: !8)
!1749 = !DILocation(line: 0, scope: !1734, inlinedAt: !1750)
!1750 = distinct !DILocation(line: 234, column: 7, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1719, file: !52, line: 234, column: 7)
!1752 = !DILocation(line: 162, column: 7, scope: !1753, inlinedAt: !1750)
!1753 = distinct !DILexicalBlock(scope: !1734, file: !1735, line: 162, column: 7)
!1754 = !DILocalVariable(name: "s1", arg: 1, scope: !1755, file: !1735, line: 146, type: !6)
!1755 = distinct !DISubprogram(name: "strcaseeq1", scope: !1735, file: !1735, line: 146, type: !1756, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1758)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1758 = !{!1754, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767}
!1759 = !DILocalVariable(name: "s2", arg: 2, scope: !1755, file: !1735, line: 146, type: !6)
!1760 = !DILocalVariable(name: "s21", arg: 3, scope: !1755, file: !1735, line: 146, type: !8)
!1761 = !DILocalVariable(name: "s22", arg: 4, scope: !1755, file: !1735, line: 146, type: !8)
!1762 = !DILocalVariable(name: "s23", arg: 5, scope: !1755, file: !1735, line: 146, type: !8)
!1763 = !DILocalVariable(name: "s24", arg: 6, scope: !1755, file: !1735, line: 146, type: !8)
!1764 = !DILocalVariable(name: "s25", arg: 7, scope: !1755, file: !1735, line: 146, type: !8)
!1765 = !DILocalVariable(name: "s26", arg: 8, scope: !1755, file: !1735, line: 146, type: !8)
!1766 = !DILocalVariable(name: "s27", arg: 9, scope: !1755, file: !1735, line: 146, type: !8)
!1767 = !DILocalVariable(name: "s28", arg: 10, scope: !1755, file: !1735, line: 146, type: !8)
!1768 = !DILocation(line: 0, scope: !1755, inlinedAt: !1769)
!1769 = distinct !DILocation(line: 167, column: 16, scope: !1770, inlinedAt: !1750)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !1735, line: 164, column: 11)
!1771 = distinct !DILexicalBlock(scope: !1753, file: !1735, line: 163, column: 5)
!1772 = !DILocation(line: 148, column: 7, scope: !1773, inlinedAt: !1769)
!1773 = distinct !DILexicalBlock(scope: !1755, file: !1735, line: 148, column: 7)
!1774 = !DILocalVariable(name: "s1", arg: 1, scope: !1775, file: !1735, line: 132, type: !6)
!1775 = distinct !DISubprogram(name: "strcaseeq2", scope: !1735, file: !1735, line: 132, type: !1776, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1778)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1778 = !{!1774, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786}
!1779 = !DILocalVariable(name: "s2", arg: 2, scope: !1775, file: !1735, line: 132, type: !6)
!1780 = !DILocalVariable(name: "s22", arg: 3, scope: !1775, file: !1735, line: 132, type: !8)
!1781 = !DILocalVariable(name: "s23", arg: 4, scope: !1775, file: !1735, line: 132, type: !8)
!1782 = !DILocalVariable(name: "s24", arg: 5, scope: !1775, file: !1735, line: 132, type: !8)
!1783 = !DILocalVariable(name: "s25", arg: 6, scope: !1775, file: !1735, line: 132, type: !8)
!1784 = !DILocalVariable(name: "s26", arg: 7, scope: !1775, file: !1735, line: 132, type: !8)
!1785 = !DILocalVariable(name: "s27", arg: 8, scope: !1775, file: !1735, line: 132, type: !8)
!1786 = !DILocalVariable(name: "s28", arg: 9, scope: !1775, file: !1735, line: 132, type: !8)
!1787 = !DILocation(line: 0, scope: !1775, inlinedAt: !1788)
!1788 = distinct !DILocation(line: 153, column: 16, scope: !1789, inlinedAt: !1769)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !1735, line: 150, column: 11)
!1790 = distinct !DILexicalBlock(scope: !1773, file: !1735, line: 149, column: 5)
!1791 = !DILocation(line: 134, column: 7, scope: !1792, inlinedAt: !1788)
!1792 = distinct !DILexicalBlock(scope: !1775, file: !1735, line: 134, column: 7)
!1793 = !DILocalVariable(name: "s1", arg: 1, scope: !1794, file: !1735, line: 118, type: !6)
!1794 = distinct !DISubprogram(name: "strcaseeq3", scope: !1735, file: !1735, line: 118, type: !1795, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1797)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8}
!1797 = !{!1793, !1798, !1799, !1800, !1801, !1802, !1803, !1804}
!1798 = !DILocalVariable(name: "s2", arg: 2, scope: !1794, file: !1735, line: 118, type: !6)
!1799 = !DILocalVariable(name: "s23", arg: 3, scope: !1794, file: !1735, line: 118, type: !8)
!1800 = !DILocalVariable(name: "s24", arg: 4, scope: !1794, file: !1735, line: 118, type: !8)
!1801 = !DILocalVariable(name: "s25", arg: 5, scope: !1794, file: !1735, line: 118, type: !8)
!1802 = !DILocalVariable(name: "s26", arg: 6, scope: !1794, file: !1735, line: 118, type: !8)
!1803 = !DILocalVariable(name: "s27", arg: 7, scope: !1794, file: !1735, line: 118, type: !8)
!1804 = !DILocalVariable(name: "s28", arg: 8, scope: !1794, file: !1735, line: 118, type: !8)
!1805 = !DILocation(line: 0, scope: !1794, inlinedAt: !1806)
!1806 = distinct !DILocation(line: 139, column: 16, scope: !1807, inlinedAt: !1788)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !1735, line: 136, column: 11)
!1808 = distinct !DILexicalBlock(scope: !1792, file: !1735, line: 135, column: 5)
!1809 = !DILocation(line: 120, column: 7, scope: !1810, inlinedAt: !1806)
!1810 = distinct !DILexicalBlock(scope: !1794, file: !1735, line: 120, column: 7)
!1811 = !DILocation(line: 120, column: 7, scope: !1794, inlinedAt: !1806)
!1812 = !DILocalVariable(name: "s1", arg: 1, scope: !1813, file: !1735, line: 104, type: !6)
!1813 = distinct !DISubprogram(name: "strcaseeq4", scope: !1735, file: !1735, line: 104, type: !1814, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1816)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!23, !6, !6, !8, !8, !8, !8, !8}
!1816 = !{!1812, !1817, !1818, !1819, !1820, !1821, !1822}
!1817 = !DILocalVariable(name: "s2", arg: 2, scope: !1813, file: !1735, line: 104, type: !6)
!1818 = !DILocalVariable(name: "s24", arg: 3, scope: !1813, file: !1735, line: 104, type: !8)
!1819 = !DILocalVariable(name: "s25", arg: 4, scope: !1813, file: !1735, line: 104, type: !8)
!1820 = !DILocalVariable(name: "s26", arg: 5, scope: !1813, file: !1735, line: 104, type: !8)
!1821 = !DILocalVariable(name: "s27", arg: 6, scope: !1813, file: !1735, line: 104, type: !8)
!1822 = !DILocalVariable(name: "s28", arg: 7, scope: !1813, file: !1735, line: 104, type: !8)
!1823 = !DILocation(line: 0, scope: !1813, inlinedAt: !1824)
!1824 = distinct !DILocation(line: 125, column: 16, scope: !1825, inlinedAt: !1806)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !1735, line: 122, column: 11)
!1826 = distinct !DILexicalBlock(scope: !1810, file: !1735, line: 121, column: 5)
!1827 = !DILocation(line: 106, column: 7, scope: !1828, inlinedAt: !1824)
!1828 = distinct !DILexicalBlock(scope: !1813, file: !1735, line: 106, column: 7)
!1829 = !DILocation(line: 106, column: 7, scope: !1813, inlinedAt: !1824)
!1830 = !DILocalVariable(name: "s1", arg: 1, scope: !1831, file: !1735, line: 90, type: !6)
!1831 = distinct !DISubprogram(name: "strcaseeq5", scope: !1735, file: !1735, line: 90, type: !1832, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1834)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!23, !6, !6, !8, !8, !8, !8}
!1834 = !{!1830, !1835, !1836, !1837, !1838, !1839}
!1835 = !DILocalVariable(name: "s2", arg: 2, scope: !1831, file: !1735, line: 90, type: !6)
!1836 = !DILocalVariable(name: "s25", arg: 3, scope: !1831, file: !1735, line: 90, type: !8)
!1837 = !DILocalVariable(name: "s26", arg: 4, scope: !1831, file: !1735, line: 90, type: !8)
!1838 = !DILocalVariable(name: "s27", arg: 5, scope: !1831, file: !1735, line: 90, type: !8)
!1839 = !DILocalVariable(name: "s28", arg: 6, scope: !1831, file: !1735, line: 90, type: !8)
!1840 = !DILocation(line: 0, scope: !1831, inlinedAt: !1841)
!1841 = distinct !DILocation(line: 111, column: 16, scope: !1842, inlinedAt: !1824)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !1735, line: 108, column: 11)
!1843 = distinct !DILexicalBlock(scope: !1828, file: !1735, line: 107, column: 5)
!1844 = !DILocation(line: 92, column: 7, scope: !1845, inlinedAt: !1841)
!1845 = distinct !DILexicalBlock(scope: !1831, file: !1735, line: 92, column: 7)
!1846 = !DILocation(line: 92, column: 7, scope: !1831, inlinedAt: !1841)
!1847 = !DILocation(line: 235, column: 12, scope: !1751)
!1848 = !DILocation(line: 235, column: 21, scope: !1751)
!1849 = !DILocation(line: 235, column: 5, scope: !1751)
!1850 = !DILocation(line: 0, scope: !1755, inlinedAt: !1851)
!1851 = distinct !DILocation(line: 167, column: 16, scope: !1770, inlinedAt: !1852)
!1852 = distinct !DILocation(line: 236, column: 7, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1719, file: !52, line: 236, column: 7)
!1854 = !DILocation(line: 148, column: 7, scope: !1773, inlinedAt: !1851)
!1855 = !DILocation(line: 0, scope: !1775, inlinedAt: !1856)
!1856 = distinct !DILocation(line: 153, column: 16, scope: !1789, inlinedAt: !1851)
!1857 = !DILocation(line: 134, column: 7, scope: !1792, inlinedAt: !1856)
!1858 = !DILocation(line: 134, column: 7, scope: !1775, inlinedAt: !1856)
!1859 = !DILocation(line: 0, scope: !1794, inlinedAt: !1860)
!1860 = distinct !DILocation(line: 139, column: 16, scope: !1807, inlinedAt: !1856)
!1861 = !DILocation(line: 120, column: 7, scope: !1810, inlinedAt: !1860)
!1862 = !DILocation(line: 120, column: 7, scope: !1794, inlinedAt: !1860)
!1863 = !DILocation(line: 0, scope: !1813, inlinedAt: !1864)
!1864 = distinct !DILocation(line: 125, column: 16, scope: !1825, inlinedAt: !1860)
!1865 = !DILocation(line: 106, column: 7, scope: !1828, inlinedAt: !1864)
!1866 = !DILocation(line: 106, column: 7, scope: !1813, inlinedAt: !1864)
!1867 = !DILocation(line: 0, scope: !1831, inlinedAt: !1868)
!1868 = distinct !DILocation(line: 111, column: 16, scope: !1842, inlinedAt: !1864)
!1869 = !DILocation(line: 92, column: 7, scope: !1845, inlinedAt: !1868)
!1870 = !DILocation(line: 92, column: 7, scope: !1831, inlinedAt: !1868)
!1871 = !DILocalVariable(name: "s1", arg: 1, scope: !1872, file: !1735, line: 76, type: !6)
!1872 = distinct !DISubprogram(name: "strcaseeq6", scope: !1735, file: !1735, line: 76, type: !1873, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1875)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!23, !6, !6, !8, !8, !8}
!1875 = !{!1871, !1876, !1877, !1878, !1879}
!1876 = !DILocalVariable(name: "s2", arg: 2, scope: !1872, file: !1735, line: 76, type: !6)
!1877 = !DILocalVariable(name: "s26", arg: 3, scope: !1872, file: !1735, line: 76, type: !8)
!1878 = !DILocalVariable(name: "s27", arg: 4, scope: !1872, file: !1735, line: 76, type: !8)
!1879 = !DILocalVariable(name: "s28", arg: 5, scope: !1872, file: !1735, line: 76, type: !8)
!1880 = !DILocation(line: 0, scope: !1872, inlinedAt: !1881)
!1881 = distinct !DILocation(line: 97, column: 16, scope: !1882, inlinedAt: !1868)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !1735, line: 94, column: 11)
!1883 = distinct !DILexicalBlock(scope: !1845, file: !1735, line: 93, column: 5)
!1884 = !DILocation(line: 78, column: 7, scope: !1885, inlinedAt: !1881)
!1885 = distinct !DILexicalBlock(scope: !1872, file: !1735, line: 78, column: 7)
!1886 = !DILocation(line: 78, column: 7, scope: !1872, inlinedAt: !1881)
!1887 = !DILocalVariable(name: "s1", arg: 1, scope: !1888, file: !1735, line: 62, type: !6)
!1888 = distinct !DISubprogram(name: "strcaseeq7", scope: !1735, file: !1735, line: 62, type: !1889, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1891)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!23, !6, !6, !8, !8}
!1891 = !{!1887, !1892, !1893, !1894}
!1892 = !DILocalVariable(name: "s2", arg: 2, scope: !1888, file: !1735, line: 62, type: !6)
!1893 = !DILocalVariable(name: "s27", arg: 3, scope: !1888, file: !1735, line: 62, type: !8)
!1894 = !DILocalVariable(name: "s28", arg: 4, scope: !1888, file: !1735, line: 62, type: !8)
!1895 = !DILocation(line: 0, scope: !1888, inlinedAt: !1896)
!1896 = distinct !DILocation(line: 83, column: 16, scope: !1897, inlinedAt: !1881)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !1735, line: 80, column: 11)
!1898 = distinct !DILexicalBlock(scope: !1885, file: !1735, line: 79, column: 5)
!1899 = !DILocation(line: 64, column: 7, scope: !1900, inlinedAt: !1896)
!1900 = distinct !DILexicalBlock(scope: !1888, file: !1735, line: 64, column: 7)
!1901 = !DILocation(line: 236, column: 7, scope: !1719)
!1902 = !DILocation(line: 237, column: 12, scope: !1853)
!1903 = !DILocation(line: 237, column: 21, scope: !1853)
!1904 = !DILocation(line: 237, column: 5, scope: !1853)
!1905 = !DILocation(line: 239, column: 13, scope: !1719)
!1906 = !DILocation(line: 239, column: 11, scope: !1719)
!1907 = !DILocation(line: 239, column: 3, scope: !1719)
!1908 = !DILocation(line: 240, column: 1, scope: !1719)
!1909 = !DISubprogram(name: "iswprint", scope: !1910, file: !1910, line: 120, type: !1911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1910 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!23, !56}
!1913 = !DISubprogram(name: "mbsinit", scope: !1914, file: !1914, line: 292, type: !1915, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1914 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!23, !1917}
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1238)
!1919 = distinct !DISubprogram(name: "quotearg_alloc", scope: !52, file: !52, line: 799, type: !1920, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1922)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!47, !6, !91, !1084}
!1922 = !{!1923, !1924, !1925}
!1923 = !DILocalVariable(name: "arg", arg: 1, scope: !1919, file: !52, line: 799, type: !6)
!1924 = !DILocalVariable(name: "argsize", arg: 2, scope: !1919, file: !52, line: 799, type: !91)
!1925 = !DILocalVariable(name: "o", arg: 3, scope: !1919, file: !52, line: 800, type: !1084)
!1926 = !DILocation(line: 0, scope: !1919)
!1927 = !DILocalVariable(name: "arg", arg: 1, scope: !1928, file: !52, line: 812, type: !6)
!1928 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !52, file: !52, line: 812, type: !1929, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1931)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!47, !6, !91, !171, !1084}
!1931 = !{!1927, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939}
!1932 = !DILocalVariable(name: "argsize", arg: 2, scope: !1928, file: !52, line: 812, type: !91)
!1933 = !DILocalVariable(name: "size", arg: 3, scope: !1928, file: !52, line: 812, type: !171)
!1934 = !DILocalVariable(name: "o", arg: 4, scope: !1928, file: !52, line: 813, type: !1084)
!1935 = !DILocalVariable(name: "p", scope: !1928, file: !52, line: 815, type: !1084)
!1936 = !DILocalVariable(name: "e", scope: !1928, file: !52, line: 816, type: !23)
!1937 = !DILocalVariable(name: "flags", scope: !1928, file: !52, line: 818, type: !23)
!1938 = !DILocalVariable(name: "bufsize", scope: !1928, file: !52, line: 819, type: !91)
!1939 = !DILocalVariable(name: "buf", scope: !1928, file: !52, line: 823, type: !47)
!1940 = !DILocation(line: 0, scope: !1928, inlinedAt: !1941)
!1941 = distinct !DILocation(line: 802, column: 10, scope: !1919)
!1942 = !DILocation(line: 815, column: 37, scope: !1928, inlinedAt: !1941)
!1943 = !DILocation(line: 816, column: 11, scope: !1928, inlinedAt: !1941)
!1944 = !DILocation(line: 818, column: 18, scope: !1928, inlinedAt: !1941)
!1945 = !DILocation(line: 818, column: 24, scope: !1928, inlinedAt: !1941)
!1946 = !DILocation(line: 819, column: 69, scope: !1928, inlinedAt: !1941)
!1947 = !DILocation(line: 820, column: 53, scope: !1928, inlinedAt: !1941)
!1948 = !DILocation(line: 821, column: 49, scope: !1928, inlinedAt: !1941)
!1949 = !DILocation(line: 822, column: 49, scope: !1928, inlinedAt: !1941)
!1950 = !DILocation(line: 819, column: 20, scope: !1928, inlinedAt: !1941)
!1951 = !DILocation(line: 822, column: 62, scope: !1928, inlinedAt: !1941)
!1952 = !DILocalVariable(name: "n", arg: 1, scope: !1953, file: !167, line: 216, type: !91)
!1953 = distinct !DISubprogram(name: "xcharalloc", scope: !167, file: !167, line: 216, type: !1954, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1956)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!47, !91}
!1956 = !{!1952}
!1957 = !DILocation(line: 0, scope: !1953, inlinedAt: !1958)
!1958 = distinct !DILocation(line: 823, column: 15, scope: !1928, inlinedAt: !1941)
!1959 = !DILocation(line: 218, column: 10, scope: !1953, inlinedAt: !1958)
!1960 = !DILocation(line: 824, column: 60, scope: !1928, inlinedAt: !1941)
!1961 = !DILocation(line: 826, column: 32, scope: !1928, inlinedAt: !1941)
!1962 = !DILocation(line: 826, column: 47, scope: !1928, inlinedAt: !1941)
!1963 = !DILocation(line: 824, column: 3, scope: !1928, inlinedAt: !1941)
!1964 = !DILocation(line: 827, column: 9, scope: !1928, inlinedAt: !1941)
!1965 = !DILocation(line: 802, column: 3, scope: !1919)
!1966 = !DILocation(line: 0, scope: !1928)
!1967 = !DILocation(line: 815, column: 37, scope: !1928)
!1968 = !DILocation(line: 816, column: 11, scope: !1928)
!1969 = !DILocation(line: 818, column: 18, scope: !1928)
!1970 = !DILocation(line: 818, column: 27, scope: !1928)
!1971 = !DILocation(line: 818, column: 24, scope: !1928)
!1972 = !DILocation(line: 819, column: 69, scope: !1928)
!1973 = !DILocation(line: 820, column: 53, scope: !1928)
!1974 = !DILocation(line: 821, column: 49, scope: !1928)
!1975 = !DILocation(line: 822, column: 49, scope: !1928)
!1976 = !DILocation(line: 819, column: 20, scope: !1928)
!1977 = !DILocation(line: 822, column: 62, scope: !1928)
!1978 = !DILocation(line: 0, scope: !1953, inlinedAt: !1979)
!1979 = distinct !DILocation(line: 823, column: 15, scope: !1928)
!1980 = !DILocation(line: 218, column: 10, scope: !1953, inlinedAt: !1979)
!1981 = !DILocation(line: 824, column: 60, scope: !1928)
!1982 = !DILocation(line: 826, column: 32, scope: !1928)
!1983 = !DILocation(line: 826, column: 47, scope: !1928)
!1984 = !DILocation(line: 824, column: 3, scope: !1928)
!1985 = !DILocation(line: 827, column: 9, scope: !1928)
!1986 = !DILocation(line: 828, column: 7, scope: !1928)
!1987 = !DILocation(line: 829, column: 11, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1928, file: !52, line: 828, column: 7)
!1989 = !{!1990, !1990, i64 0}
!1990 = !{!"long", !607, i64 0}
!1991 = !DILocation(line: 829, column: 5, scope: !1988)
!1992 = !DILocation(line: 830, column: 3, scope: !1928)
!1993 = distinct !DISubprogram(name: "quotearg_free", scope: !52, file: !52, line: 848, type: !860, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1994)
!1994 = !{!1995, !1996}
!1995 = !DILocalVariable(name: "sv", scope: !1993, file: !52, line: 850, type: !122)
!1996 = !DILocalVariable(name: "i", scope: !1993, file: !52, line: 851, type: !23)
!1997 = !DILocation(line: 850, column: 24, scope: !1993)
!1998 = !DILocation(line: 0, scope: !1993)
!1999 = !DILocation(line: 852, column: 19, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !52, line: 852, column: 3)
!2001 = distinct !DILexicalBlock(scope: !1993, file: !52, line: 852, column: 3)
!2002 = !DILocation(line: 852, column: 17, scope: !2000)
!2003 = !DILocation(line: 852, column: 3, scope: !2001)
!2004 = !DILocation(line: 853, column: 17, scope: !2000)
!2005 = !{!2006, !606, i64 8}
!2006 = !{!"slotvec", !1990, i64 0, !606, i64 8}
!2007 = !DILocation(line: 853, column: 5, scope: !2000)
!2008 = !DILocation(line: 852, column: 28, scope: !2000)
!2009 = distinct !{!2009, !2003, !2010, !647}
!2010 = !DILocation(line: 853, column: 20, scope: !2001)
!2011 = !DILocation(line: 854, column: 13, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !1993, file: !52, line: 854, column: 7)
!2013 = !DILocation(line: 854, column: 17, scope: !2012)
!2014 = !DILocation(line: 854, column: 7, scope: !1993)
!2015 = !DILocation(line: 856, column: 7, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2012, file: !52, line: 855, column: 5)
!2017 = !DILocation(line: 857, column: 21, scope: !2016)
!2018 = !{!2006, !1990, i64 0}
!2019 = !DILocation(line: 858, column: 20, scope: !2016)
!2020 = !DILocation(line: 859, column: 5, scope: !2016)
!2021 = !DILocation(line: 860, column: 10, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1993, file: !52, line: 860, column: 7)
!2023 = !DILocation(line: 860, column: 7, scope: !1993)
!2024 = !DILocation(line: 862, column: 13, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2022, file: !52, line: 861, column: 5)
!2026 = !DILocation(line: 862, column: 7, scope: !2025)
!2027 = !DILocation(line: 863, column: 15, scope: !2025)
!2028 = !DILocation(line: 864, column: 5, scope: !2025)
!2029 = !DILocation(line: 865, column: 10, scope: !1993)
!2030 = !DILocation(line: 866, column: 1, scope: !1993)
!2031 = distinct !DISubprogram(name: "quotearg_n", scope: !52, file: !52, line: 931, type: !729, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2032)
!2032 = !{!2033, !2034}
!2033 = !DILocalVariable(name: "n", arg: 1, scope: !2031, file: !52, line: 931, type: !23)
!2034 = !DILocalVariable(name: "arg", arg: 2, scope: !2031, file: !52, line: 931, type: !6)
!2035 = !DILocation(line: 0, scope: !2031)
!2036 = !DILocation(line: 933, column: 10, scope: !2031)
!2037 = !DILocation(line: 933, column: 3, scope: !2031)
!2038 = distinct !DISubprogram(name: "quotearg_n_options", scope: !52, file: !52, line: 877, type: !2039, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2041)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!47, !23, !6, !91, !1084}
!2041 = !{!2042, !2043, !2044, !2045, !2046, !2047, !2048, !2051, !2052, !2054, !2055, !2056}
!2042 = !DILocalVariable(name: "n", arg: 1, scope: !2038, file: !52, line: 877, type: !23)
!2043 = !DILocalVariable(name: "arg", arg: 2, scope: !2038, file: !52, line: 877, type: !6)
!2044 = !DILocalVariable(name: "argsize", arg: 3, scope: !2038, file: !52, line: 877, type: !91)
!2045 = !DILocalVariable(name: "options", arg: 4, scope: !2038, file: !52, line: 878, type: !1084)
!2046 = !DILocalVariable(name: "e", scope: !2038, file: !52, line: 880, type: !23)
!2047 = !DILocalVariable(name: "sv", scope: !2038, file: !52, line: 882, type: !122)
!2048 = !DILocalVariable(name: "preallocated", scope: !2049, file: !52, line: 889, type: !16)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !52, line: 888, column: 5)
!2050 = distinct !DILexicalBlock(scope: !2038, file: !52, line: 887, column: 7)
!2051 = !DILocalVariable(name: "nmax", scope: !2049, file: !52, line: 890, type: !23)
!2052 = !DILocalVariable(name: "size", scope: !2053, file: !52, line: 903, type: !91)
!2053 = distinct !DILexicalBlock(scope: !2038, file: !52, line: 902, column: 3)
!2054 = !DILocalVariable(name: "val", scope: !2053, file: !52, line: 904, type: !47)
!2055 = !DILocalVariable(name: "flags", scope: !2053, file: !52, line: 906, type: !23)
!2056 = !DILocalVariable(name: "qsize", scope: !2053, file: !52, line: 907, type: !91)
!2057 = !DILocation(line: 0, scope: !2038)
!2058 = !DILocation(line: 880, column: 11, scope: !2038)
!2059 = !DILocation(line: 882, column: 24, scope: !2038)
!2060 = !DILocation(line: 884, column: 9, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2038, file: !52, line: 884, column: 7)
!2062 = !DILocation(line: 884, column: 7, scope: !2038)
!2063 = !DILocation(line: 885, column: 5, scope: !2061)
!2064 = !DILocation(line: 887, column: 7, scope: !2050)
!2065 = !DILocation(line: 887, column: 14, scope: !2050)
!2066 = !DILocation(line: 887, column: 7, scope: !2038)
!2067 = !DILocation(line: 889, column: 31, scope: !2049)
!2068 = !DILocation(line: 0, scope: !2049)
!2069 = !DILocation(line: 892, column: 16, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2049, file: !52, line: 892, column: 11)
!2071 = !DILocation(line: 892, column: 11, scope: !2049)
!2072 = !DILocation(line: 893, column: 9, scope: !2070)
!2073 = !DILocation(line: 895, column: 32, scope: !2049)
!2074 = !DILocation(line: 895, column: 61, scope: !2049)
!2075 = !DILocation(line: 895, column: 66, scope: !2049)
!2076 = !DILocation(line: 895, column: 22, scope: !2049)
!2077 = !DILocation(line: 895, column: 15, scope: !2049)
!2078 = !DILocation(line: 896, column: 11, scope: !2049)
!2079 = !DILocation(line: 897, column: 15, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2049, file: !52, line: 896, column: 11)
!2081 = !{i64 0, i64 8, !1989, i64 8, i64 8, !605}
!2082 = !DILocation(line: 897, column: 9, scope: !2080)
!2083 = !DILocation(line: 898, column: 20, scope: !2049)
!2084 = !DILocation(line: 898, column: 18, scope: !2049)
!2085 = !DILocation(line: 898, column: 15, scope: !2049)
!2086 = !DILocation(line: 898, column: 38, scope: !2049)
!2087 = !DILocation(line: 898, column: 31, scope: !2049)
!2088 = !DILocation(line: 898, column: 48, scope: !2049)
!2089 = !DILocation(line: 0, scope: !1481, inlinedAt: !2090)
!2090 = distinct !DILocation(line: 898, column: 7, scope: !2049)
!2091 = !DILocation(line: 59, column: 10, scope: !1481, inlinedAt: !2090)
!2092 = !DILocation(line: 899, column: 14, scope: !2049)
!2093 = !DILocation(line: 900, column: 5, scope: !2049)
!2094 = !DILocation(line: 903, column: 19, scope: !2053)
!2095 = !DILocation(line: 903, column: 25, scope: !2053)
!2096 = !DILocation(line: 0, scope: !2053)
!2097 = !DILocation(line: 904, column: 23, scope: !2053)
!2098 = !DILocation(line: 906, column: 26, scope: !2053)
!2099 = !DILocation(line: 906, column: 32, scope: !2053)
!2100 = !DILocation(line: 908, column: 55, scope: !2053)
!2101 = !DILocation(line: 909, column: 46, scope: !2053)
!2102 = !DILocation(line: 910, column: 55, scope: !2053)
!2103 = !DILocation(line: 911, column: 55, scope: !2053)
!2104 = !DILocation(line: 907, column: 20, scope: !2053)
!2105 = !DILocation(line: 913, column: 14, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2053, file: !52, line: 913, column: 9)
!2107 = !DILocation(line: 913, column: 9, scope: !2053)
!2108 = !DILocation(line: 915, column: 35, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2106, file: !52, line: 914, column: 7)
!2110 = !DILocation(line: 915, column: 20, scope: !2109)
!2111 = !DILocation(line: 916, column: 17, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2109, file: !52, line: 916, column: 13)
!2113 = !DILocation(line: 916, column: 13, scope: !2109)
!2114 = !DILocation(line: 917, column: 11, scope: !2112)
!2115 = !DILocation(line: 0, scope: !1953, inlinedAt: !2116)
!2116 = distinct !DILocation(line: 918, column: 27, scope: !2109)
!2117 = !DILocation(line: 218, column: 10, scope: !1953, inlinedAt: !2116)
!2118 = !DILocation(line: 918, column: 19, scope: !2109)
!2119 = !DILocation(line: 919, column: 69, scope: !2109)
!2120 = !DILocation(line: 921, column: 44, scope: !2109)
!2121 = !DILocation(line: 922, column: 44, scope: !2109)
!2122 = !DILocation(line: 919, column: 9, scope: !2109)
!2123 = !DILocation(line: 923, column: 7, scope: !2109)
!2124 = !DILocation(line: 925, column: 11, scope: !2053)
!2125 = !DILocation(line: 926, column: 5, scope: !2053)
!2126 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !52, file: !52, line: 937, type: !2127, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2129)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!47, !23, !6, !91}
!2129 = !{!2130, !2131, !2132}
!2130 = !DILocalVariable(name: "n", arg: 1, scope: !2126, file: !52, line: 937, type: !23)
!2131 = !DILocalVariable(name: "arg", arg: 2, scope: !2126, file: !52, line: 937, type: !6)
!2132 = !DILocalVariable(name: "argsize", arg: 3, scope: !2126, file: !52, line: 937, type: !91)
!2133 = !DILocation(line: 0, scope: !2126)
!2134 = !DILocation(line: 939, column: 10, scope: !2126)
!2135 = !DILocation(line: 939, column: 3, scope: !2126)
!2136 = distinct !DISubprogram(name: "quotearg", scope: !52, file: !52, line: 943, type: !853, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2137)
!2137 = !{!2138}
!2138 = !DILocalVariable(name: "arg", arg: 1, scope: !2136, file: !52, line: 943, type: !6)
!2139 = !DILocation(line: 0, scope: !2136)
!2140 = !DILocation(line: 0, scope: !2031, inlinedAt: !2141)
!2141 = distinct !DILocation(line: 945, column: 10, scope: !2136)
!2142 = !DILocation(line: 933, column: 10, scope: !2031, inlinedAt: !2141)
!2143 = !DILocation(line: 945, column: 3, scope: !2136)
!2144 = distinct !DISubprogram(name: "quotearg_mem", scope: !52, file: !52, line: 949, type: !2145, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2147)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!47, !6, !91}
!2147 = !{!2148, !2149}
!2148 = !DILocalVariable(name: "arg", arg: 1, scope: !2144, file: !52, line: 949, type: !6)
!2149 = !DILocalVariable(name: "argsize", arg: 2, scope: !2144, file: !52, line: 949, type: !91)
!2150 = !DILocation(line: 0, scope: !2144)
!2151 = !DILocation(line: 0, scope: !2126, inlinedAt: !2152)
!2152 = distinct !DILocation(line: 951, column: 10, scope: !2144)
!2153 = !DILocation(line: 939, column: 10, scope: !2126, inlinedAt: !2152)
!2154 = !DILocation(line: 951, column: 3, scope: !2144)
!2155 = distinct !DISubprogram(name: "quotearg_n_style", scope: !52, file: !52, line: 955, type: !2156, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2158)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!47, !23, !54, !6}
!2158 = !{!2159, !2160, !2161, !2162}
!2159 = !DILocalVariable(name: "n", arg: 1, scope: !2155, file: !52, line: 955, type: !23)
!2160 = !DILocalVariable(name: "s", arg: 2, scope: !2155, file: !52, line: 955, type: !54)
!2161 = !DILocalVariable(name: "arg", arg: 3, scope: !2155, file: !52, line: 955, type: !6)
!2162 = !DILocalVariable(name: "o", scope: !2155, file: !52, line: 957, type: !1085)
!2163 = !DILocation(line: 0, scope: !2155)
!2164 = !DILocation(line: 957, column: 3, scope: !2155)
!2165 = !DILocation(line: 957, column: 32, scope: !2155)
!2166 = !{!2167}
!2167 = distinct !{!2167, !2168, !"quoting_options_from_style: argument 0"}
!2168 = distinct !{!2168, !"quoting_options_from_style"}
!2169 = !DILocation(line: 957, column: 36, scope: !2155)
!2170 = !DILocalVariable(name: "style", arg: 1, scope: !2171, file: !52, line: 193, type: !54)
!2171 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !52, file: !52, line: 193, type: !2172, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2174)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!103, !54}
!2174 = !{!2170, !2175}
!2175 = !DILocalVariable(name: "o", scope: !2171, file: !52, line: 195, type: !103)
!2176 = !DILocation(line: 0, scope: !2171, inlinedAt: !2177)
!2177 = distinct !DILocation(line: 957, column: 36, scope: !2155)
!2178 = !DILocation(line: 195, column: 26, scope: !2171, inlinedAt: !2177)
!2179 = !DILocation(line: 196, column: 13, scope: !2180, inlinedAt: !2177)
!2180 = distinct !DILexicalBlock(scope: !2171, file: !52, line: 196, column: 7)
!2181 = !DILocation(line: 196, column: 7, scope: !2171, inlinedAt: !2177)
!2182 = !DILocation(line: 197, column: 5, scope: !2180, inlinedAt: !2177)
!2183 = !DILocation(line: 198, column: 5, scope: !2171, inlinedAt: !2177)
!2184 = !DILocation(line: 198, column: 11, scope: !2171, inlinedAt: !2177)
!2185 = !DILocation(line: 958, column: 10, scope: !2155)
!2186 = !DILocation(line: 959, column: 1, scope: !2155)
!2187 = !DILocation(line: 958, column: 3, scope: !2155)
!2188 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !52, file: !52, line: 962, type: !2189, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2191)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{!47, !23, !54, !6, !91}
!2191 = !{!2192, !2193, !2194, !2195, !2196}
!2192 = !DILocalVariable(name: "n", arg: 1, scope: !2188, file: !52, line: 962, type: !23)
!2193 = !DILocalVariable(name: "s", arg: 2, scope: !2188, file: !52, line: 962, type: !54)
!2194 = !DILocalVariable(name: "arg", arg: 3, scope: !2188, file: !52, line: 963, type: !6)
!2195 = !DILocalVariable(name: "argsize", arg: 4, scope: !2188, file: !52, line: 963, type: !91)
!2196 = !DILocalVariable(name: "o", scope: !2188, file: !52, line: 965, type: !1085)
!2197 = !DILocation(line: 0, scope: !2188)
!2198 = !DILocation(line: 965, column: 3, scope: !2188)
!2199 = !DILocation(line: 965, column: 32, scope: !2188)
!2200 = !{!2201}
!2201 = distinct !{!2201, !2202, !"quoting_options_from_style: argument 0"}
!2202 = distinct !{!2202, !"quoting_options_from_style"}
!2203 = !DILocation(line: 965, column: 36, scope: !2188)
!2204 = !DILocation(line: 0, scope: !2171, inlinedAt: !2205)
!2205 = distinct !DILocation(line: 965, column: 36, scope: !2188)
!2206 = !DILocation(line: 195, column: 26, scope: !2171, inlinedAt: !2205)
!2207 = !DILocation(line: 196, column: 13, scope: !2180, inlinedAt: !2205)
!2208 = !DILocation(line: 196, column: 7, scope: !2171, inlinedAt: !2205)
!2209 = !DILocation(line: 197, column: 5, scope: !2180, inlinedAt: !2205)
!2210 = !DILocation(line: 198, column: 5, scope: !2171, inlinedAt: !2205)
!2211 = !DILocation(line: 198, column: 11, scope: !2171, inlinedAt: !2205)
!2212 = !DILocation(line: 966, column: 10, scope: !2188)
!2213 = !DILocation(line: 967, column: 1, scope: !2188)
!2214 = !DILocation(line: 966, column: 3, scope: !2188)
!2215 = distinct !DISubprogram(name: "quotearg_style", scope: !52, file: !52, line: 970, type: !2216, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2218)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!47, !54, !6}
!2218 = !{!2219, !2220}
!2219 = !DILocalVariable(name: "s", arg: 1, scope: !2215, file: !52, line: 970, type: !54)
!2220 = !DILocalVariable(name: "arg", arg: 2, scope: !2215, file: !52, line: 970, type: !6)
!2221 = !DILocation(line: 0, scope: !2215)
!2222 = !DILocation(line: 0, scope: !2155, inlinedAt: !2223)
!2223 = distinct !DILocation(line: 972, column: 10, scope: !2215)
!2224 = !DILocation(line: 957, column: 3, scope: !2155, inlinedAt: !2223)
!2225 = !DILocation(line: 957, column: 32, scope: !2155, inlinedAt: !2223)
!2226 = !{!2227}
!2227 = distinct !{!2227, !2228, !"quoting_options_from_style: argument 0"}
!2228 = distinct !{!2228, !"quoting_options_from_style"}
!2229 = !DILocation(line: 957, column: 36, scope: !2155, inlinedAt: !2223)
!2230 = !DILocation(line: 0, scope: !2171, inlinedAt: !2231)
!2231 = distinct !DILocation(line: 957, column: 36, scope: !2155, inlinedAt: !2223)
!2232 = !DILocation(line: 195, column: 26, scope: !2171, inlinedAt: !2231)
!2233 = !DILocation(line: 196, column: 13, scope: !2180, inlinedAt: !2231)
!2234 = !DILocation(line: 196, column: 7, scope: !2171, inlinedAt: !2231)
!2235 = !DILocation(line: 197, column: 5, scope: !2180, inlinedAt: !2231)
!2236 = !DILocation(line: 198, column: 5, scope: !2171, inlinedAt: !2231)
!2237 = !DILocation(line: 198, column: 11, scope: !2171, inlinedAt: !2231)
!2238 = !DILocation(line: 958, column: 10, scope: !2155, inlinedAt: !2223)
!2239 = !DILocation(line: 959, column: 1, scope: !2155, inlinedAt: !2223)
!2240 = !DILocation(line: 972, column: 3, scope: !2215)
!2241 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !52, file: !52, line: 976, type: !2242, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2244)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!47, !54, !6, !91}
!2244 = !{!2245, !2246, !2247}
!2245 = !DILocalVariable(name: "s", arg: 1, scope: !2241, file: !52, line: 976, type: !54)
!2246 = !DILocalVariable(name: "arg", arg: 2, scope: !2241, file: !52, line: 976, type: !6)
!2247 = !DILocalVariable(name: "argsize", arg: 3, scope: !2241, file: !52, line: 976, type: !91)
!2248 = !DILocation(line: 0, scope: !2241)
!2249 = !DILocation(line: 0, scope: !2188, inlinedAt: !2250)
!2250 = distinct !DILocation(line: 978, column: 10, scope: !2241)
!2251 = !DILocation(line: 965, column: 3, scope: !2188, inlinedAt: !2250)
!2252 = !DILocation(line: 965, column: 32, scope: !2188, inlinedAt: !2250)
!2253 = !{!2254}
!2254 = distinct !{!2254, !2255, !"quoting_options_from_style: argument 0"}
!2255 = distinct !{!2255, !"quoting_options_from_style"}
!2256 = !DILocation(line: 965, column: 36, scope: !2188, inlinedAt: !2250)
!2257 = !DILocation(line: 0, scope: !2171, inlinedAt: !2258)
!2258 = distinct !DILocation(line: 965, column: 36, scope: !2188, inlinedAt: !2250)
!2259 = !DILocation(line: 195, column: 26, scope: !2171, inlinedAt: !2258)
!2260 = !DILocation(line: 196, column: 13, scope: !2180, inlinedAt: !2258)
!2261 = !DILocation(line: 196, column: 7, scope: !2171, inlinedAt: !2258)
!2262 = !DILocation(line: 197, column: 5, scope: !2180, inlinedAt: !2258)
!2263 = !DILocation(line: 198, column: 5, scope: !2171, inlinedAt: !2258)
!2264 = !DILocation(line: 198, column: 11, scope: !2171, inlinedAt: !2258)
!2265 = !DILocation(line: 966, column: 10, scope: !2188, inlinedAt: !2250)
!2266 = !DILocation(line: 967, column: 1, scope: !2188, inlinedAt: !2250)
!2267 = !DILocation(line: 978, column: 3, scope: !2241)
!2268 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !52, file: !52, line: 982, type: !2269, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2271)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!47, !6, !91, !8}
!2271 = !{!2272, !2273, !2274, !2275}
!2272 = !DILocalVariable(name: "arg", arg: 1, scope: !2268, file: !52, line: 982, type: !6)
!2273 = !DILocalVariable(name: "argsize", arg: 2, scope: !2268, file: !52, line: 982, type: !91)
!2274 = !DILocalVariable(name: "ch", arg: 3, scope: !2268, file: !52, line: 982, type: !8)
!2275 = !DILocalVariable(name: "options", scope: !2268, file: !52, line: 984, type: !103)
!2276 = !DILocation(line: 0, scope: !2268)
!2277 = !DILocation(line: 984, column: 3, scope: !2268)
!2278 = !DILocation(line: 984, column: 26, scope: !2268)
!2279 = !DILocation(line: 985, column: 13, scope: !2268)
!2280 = !{i64 0, i64 4, !818, i64 4, i64 4, !762, i64 8, i64 32, !818, i64 40, i64 8, !605, i64 48, i64 8, !605}
!2281 = !DILocation(line: 0, scope: !1105, inlinedAt: !2282)
!2282 = distinct !DILocation(line: 986, column: 3, scope: !2268)
!2283 = !DILocation(line: 156, column: 62, scope: !1105, inlinedAt: !2282)
!2284 = !DILocation(line: 156, column: 57, scope: !1105, inlinedAt: !2282)
!2285 = !DILocation(line: 157, column: 15, scope: !1105, inlinedAt: !2282)
!2286 = !DILocation(line: 158, column: 12, scope: !1105, inlinedAt: !2282)
!2287 = !DILocation(line: 158, column: 15, scope: !1105, inlinedAt: !2282)
!2288 = !DILocation(line: 158, column: 25, scope: !1105, inlinedAt: !2282)
!2289 = !DILocation(line: 159, column: 18, scope: !1105, inlinedAt: !2282)
!2290 = !DILocation(line: 159, column: 23, scope: !1105, inlinedAt: !2282)
!2291 = !DILocation(line: 159, column: 6, scope: !1105, inlinedAt: !2282)
!2292 = !DILocation(line: 987, column: 10, scope: !2268)
!2293 = !DILocation(line: 988, column: 1, scope: !2268)
!2294 = !DILocation(line: 987, column: 3, scope: !2268)
!2295 = distinct !DISubprogram(name: "quotearg_char", scope: !52, file: !52, line: 991, type: !2296, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2298)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!47, !6, !8}
!2298 = !{!2299, !2300}
!2299 = !DILocalVariable(name: "arg", arg: 1, scope: !2295, file: !52, line: 991, type: !6)
!2300 = !DILocalVariable(name: "ch", arg: 2, scope: !2295, file: !52, line: 991, type: !8)
!2301 = !DILocation(line: 0, scope: !2295)
!2302 = !DILocation(line: 0, scope: !2268, inlinedAt: !2303)
!2303 = distinct !DILocation(line: 993, column: 10, scope: !2295)
!2304 = !DILocation(line: 984, column: 3, scope: !2268, inlinedAt: !2303)
!2305 = !DILocation(line: 984, column: 26, scope: !2268, inlinedAt: !2303)
!2306 = !DILocation(line: 985, column: 13, scope: !2268, inlinedAt: !2303)
!2307 = !DILocation(line: 0, scope: !1105, inlinedAt: !2308)
!2308 = distinct !DILocation(line: 986, column: 3, scope: !2268, inlinedAt: !2303)
!2309 = !DILocation(line: 156, column: 62, scope: !1105, inlinedAt: !2308)
!2310 = !DILocation(line: 156, column: 57, scope: !1105, inlinedAt: !2308)
!2311 = !DILocation(line: 157, column: 15, scope: !1105, inlinedAt: !2308)
!2312 = !DILocation(line: 158, column: 12, scope: !1105, inlinedAt: !2308)
!2313 = !DILocation(line: 158, column: 15, scope: !1105, inlinedAt: !2308)
!2314 = !DILocation(line: 158, column: 25, scope: !1105, inlinedAt: !2308)
!2315 = !DILocation(line: 159, column: 18, scope: !1105, inlinedAt: !2308)
!2316 = !DILocation(line: 159, column: 23, scope: !1105, inlinedAt: !2308)
!2317 = !DILocation(line: 159, column: 6, scope: !1105, inlinedAt: !2308)
!2318 = !DILocation(line: 987, column: 10, scope: !2268, inlinedAt: !2303)
!2319 = !DILocation(line: 988, column: 1, scope: !2268, inlinedAt: !2303)
!2320 = !DILocation(line: 993, column: 3, scope: !2295)
!2321 = distinct !DISubprogram(name: "quotearg_colon", scope: !52, file: !52, line: 997, type: !853, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2322)
!2322 = !{!2323}
!2323 = !DILocalVariable(name: "arg", arg: 1, scope: !2321, file: !52, line: 997, type: !6)
!2324 = !DILocation(line: 0, scope: !2321)
!2325 = !DILocation(line: 0, scope: !2295, inlinedAt: !2326)
!2326 = distinct !DILocation(line: 999, column: 10, scope: !2321)
!2327 = !DILocation(line: 0, scope: !2268, inlinedAt: !2328)
!2328 = distinct !DILocation(line: 993, column: 10, scope: !2295, inlinedAt: !2326)
!2329 = !DILocation(line: 984, column: 3, scope: !2268, inlinedAt: !2328)
!2330 = !DILocation(line: 984, column: 26, scope: !2268, inlinedAt: !2328)
!2331 = !DILocation(line: 985, column: 13, scope: !2268, inlinedAt: !2328)
!2332 = !DILocation(line: 0, scope: !1105, inlinedAt: !2333)
!2333 = distinct !DILocation(line: 986, column: 3, scope: !2268, inlinedAt: !2328)
!2334 = !DILocation(line: 156, column: 57, scope: !1105, inlinedAt: !2333)
!2335 = !DILocation(line: 158, column: 12, scope: !1105, inlinedAt: !2333)
!2336 = !DILocation(line: 159, column: 6, scope: !1105, inlinedAt: !2333)
!2337 = !DILocation(line: 987, column: 10, scope: !2268, inlinedAt: !2328)
!2338 = !DILocation(line: 988, column: 1, scope: !2268, inlinedAt: !2328)
!2339 = !DILocation(line: 999, column: 3, scope: !2321)
!2340 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !52, file: !52, line: 1003, type: !2145, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2341)
!2341 = !{!2342, !2343}
!2342 = !DILocalVariable(name: "arg", arg: 1, scope: !2340, file: !52, line: 1003, type: !6)
!2343 = !DILocalVariable(name: "argsize", arg: 2, scope: !2340, file: !52, line: 1003, type: !91)
!2344 = !DILocation(line: 0, scope: !2340)
!2345 = !DILocation(line: 0, scope: !2268, inlinedAt: !2346)
!2346 = distinct !DILocation(line: 1005, column: 10, scope: !2340)
!2347 = !DILocation(line: 984, column: 3, scope: !2268, inlinedAt: !2346)
!2348 = !DILocation(line: 984, column: 26, scope: !2268, inlinedAt: !2346)
!2349 = !DILocation(line: 985, column: 13, scope: !2268, inlinedAt: !2346)
!2350 = !DILocation(line: 0, scope: !1105, inlinedAt: !2351)
!2351 = distinct !DILocation(line: 986, column: 3, scope: !2268, inlinedAt: !2346)
!2352 = !DILocation(line: 156, column: 57, scope: !1105, inlinedAt: !2351)
!2353 = !DILocation(line: 158, column: 12, scope: !1105, inlinedAt: !2351)
!2354 = !DILocation(line: 159, column: 6, scope: !1105, inlinedAt: !2351)
!2355 = !DILocation(line: 987, column: 10, scope: !2268, inlinedAt: !2346)
!2356 = !DILocation(line: 988, column: 1, scope: !2268, inlinedAt: !2346)
!2357 = !DILocation(line: 1005, column: 3, scope: !2340)
!2358 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !52, file: !52, line: 1009, type: !2156, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2359)
!2359 = !{!2360, !2361, !2362, !2363}
!2360 = !DILocalVariable(name: "n", arg: 1, scope: !2358, file: !52, line: 1009, type: !23)
!2361 = !DILocalVariable(name: "s", arg: 2, scope: !2358, file: !52, line: 1009, type: !54)
!2362 = !DILocalVariable(name: "arg", arg: 3, scope: !2358, file: !52, line: 1009, type: !6)
!2363 = !DILocalVariable(name: "options", scope: !2358, file: !52, line: 1011, type: !103)
!2364 = !DILocation(line: 195, column: 26, scope: !2171, inlinedAt: !2365)
!2365 = distinct !DILocation(line: 1012, column: 13, scope: !2358)
!2366 = !DILocation(line: 0, scope: !2358)
!2367 = !DILocation(line: 1011, column: 3, scope: !2358)
!2368 = !DILocation(line: 1011, column: 26, scope: !2358)
!2369 = !DILocation(line: 1012, column: 13, scope: !2358)
!2370 = !{!2371}
!2371 = distinct !{!2371, !2372, !"quoting_options_from_style: argument 0"}
!2372 = distinct !{!2372, !"quoting_options_from_style"}
!2373 = !DILocation(line: 0, scope: !2171, inlinedAt: !2365)
!2374 = !DILocation(line: 196, column: 13, scope: !2180, inlinedAt: !2365)
!2375 = !DILocation(line: 196, column: 7, scope: !2171, inlinedAt: !2365)
!2376 = !DILocation(line: 197, column: 5, scope: !2180, inlinedAt: !2365)
!2377 = !{i64 0, i64 4, !762, i64 4, i64 32, !818, i64 36, i64 8, !605, i64 44, i64 8, !605}
!2378 = !DILocation(line: 0, scope: !1105, inlinedAt: !2379)
!2379 = distinct !DILocation(line: 1013, column: 3, scope: !2358)
!2380 = !DILocation(line: 156, column: 57, scope: !1105, inlinedAt: !2379)
!2381 = !DILocation(line: 158, column: 12, scope: !1105, inlinedAt: !2379)
!2382 = !DILocation(line: 159, column: 6, scope: !1105, inlinedAt: !2379)
!2383 = !DILocation(line: 1014, column: 10, scope: !2358)
!2384 = !DILocation(line: 1015, column: 1, scope: !2358)
!2385 = !DILocation(line: 1014, column: 3, scope: !2358)
!2386 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !52, file: !52, line: 1018, type: !2387, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2389)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!47, !23, !6, !6, !6}
!2389 = !{!2390, !2391, !2392, !2393}
!2390 = !DILocalVariable(name: "n", arg: 1, scope: !2386, file: !52, line: 1018, type: !23)
!2391 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2386, file: !52, line: 1018, type: !6)
!2392 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2386, file: !52, line: 1019, type: !6)
!2393 = !DILocalVariable(name: "arg", arg: 4, scope: !2386, file: !52, line: 1019, type: !6)
!2394 = !DILocation(line: 0, scope: !2386)
!2395 = !DILocalVariable(name: "n", arg: 1, scope: !2396, file: !52, line: 1026, type: !23)
!2396 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !52, file: !52, line: 1026, type: !2397, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2399)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!47, !23, !6, !6, !6, !91}
!2399 = !{!2395, !2400, !2401, !2402, !2403, !2404}
!2400 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2396, file: !52, line: 1026, type: !6)
!2401 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2396, file: !52, line: 1027, type: !6)
!2402 = !DILocalVariable(name: "arg", arg: 4, scope: !2396, file: !52, line: 1028, type: !6)
!2403 = !DILocalVariable(name: "argsize", arg: 5, scope: !2396, file: !52, line: 1028, type: !91)
!2404 = !DILocalVariable(name: "o", scope: !2396, file: !52, line: 1030, type: !103)
!2405 = !DILocation(line: 0, scope: !2396, inlinedAt: !2406)
!2406 = distinct !DILocation(line: 1021, column: 10, scope: !2386)
!2407 = !DILocation(line: 1030, column: 3, scope: !2396, inlinedAt: !2406)
!2408 = !DILocation(line: 1030, column: 26, scope: !2396, inlinedAt: !2406)
!2409 = !DILocation(line: 1030, column: 30, scope: !2396, inlinedAt: !2406)
!2410 = !DILocation(line: 0, scope: !1146, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 1031, column: 3, scope: !2396, inlinedAt: !2406)
!2412 = !DILocation(line: 184, column: 6, scope: !1146, inlinedAt: !2411)
!2413 = !DILocation(line: 184, column: 12, scope: !1146, inlinedAt: !2411)
!2414 = !DILocation(line: 185, column: 8, scope: !1160, inlinedAt: !2411)
!2415 = !DILocation(line: 185, column: 19, scope: !1160, inlinedAt: !2411)
!2416 = !DILocation(line: 186, column: 5, scope: !1160, inlinedAt: !2411)
!2417 = !DILocation(line: 187, column: 6, scope: !1146, inlinedAt: !2411)
!2418 = !DILocation(line: 187, column: 17, scope: !1146, inlinedAt: !2411)
!2419 = !DILocation(line: 188, column: 6, scope: !1146, inlinedAt: !2411)
!2420 = !DILocation(line: 188, column: 18, scope: !1146, inlinedAt: !2411)
!2421 = !DILocation(line: 1032, column: 10, scope: !2396, inlinedAt: !2406)
!2422 = !DILocation(line: 1033, column: 1, scope: !2396, inlinedAt: !2406)
!2423 = !DILocation(line: 1021, column: 3, scope: !2386)
!2424 = !DILocation(line: 0, scope: !2396)
!2425 = !DILocation(line: 1030, column: 3, scope: !2396)
!2426 = !DILocation(line: 1030, column: 26, scope: !2396)
!2427 = !DILocation(line: 1030, column: 30, scope: !2396)
!2428 = !DILocation(line: 0, scope: !1146, inlinedAt: !2429)
!2429 = distinct !DILocation(line: 1031, column: 3, scope: !2396)
!2430 = !DILocation(line: 184, column: 6, scope: !1146, inlinedAt: !2429)
!2431 = !DILocation(line: 184, column: 12, scope: !1146, inlinedAt: !2429)
!2432 = !DILocation(line: 185, column: 8, scope: !1160, inlinedAt: !2429)
!2433 = !DILocation(line: 185, column: 19, scope: !1160, inlinedAt: !2429)
!2434 = !DILocation(line: 186, column: 5, scope: !1160, inlinedAt: !2429)
!2435 = !DILocation(line: 187, column: 6, scope: !1146, inlinedAt: !2429)
!2436 = !DILocation(line: 187, column: 17, scope: !1146, inlinedAt: !2429)
!2437 = !DILocation(line: 188, column: 6, scope: !1146, inlinedAt: !2429)
!2438 = !DILocation(line: 188, column: 18, scope: !1146, inlinedAt: !2429)
!2439 = !DILocation(line: 1032, column: 10, scope: !2396)
!2440 = !DILocation(line: 1033, column: 1, scope: !2396)
!2441 = !DILocation(line: 1032, column: 3, scope: !2396)
!2442 = distinct !DISubprogram(name: "quotearg_custom", scope: !52, file: !52, line: 1036, type: !2443, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2445)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!47, !6, !6, !6}
!2445 = !{!2446, !2447, !2448}
!2446 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2442, file: !52, line: 1036, type: !6)
!2447 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2442, file: !52, line: 1036, type: !6)
!2448 = !DILocalVariable(name: "arg", arg: 3, scope: !2442, file: !52, line: 1037, type: !6)
!2449 = !DILocation(line: 0, scope: !2442)
!2450 = !DILocation(line: 0, scope: !2386, inlinedAt: !2451)
!2451 = distinct !DILocation(line: 1039, column: 10, scope: !2442)
!2452 = !DILocation(line: 0, scope: !2396, inlinedAt: !2453)
!2453 = distinct !DILocation(line: 1021, column: 10, scope: !2386, inlinedAt: !2451)
!2454 = !DILocation(line: 1030, column: 3, scope: !2396, inlinedAt: !2453)
!2455 = !DILocation(line: 1030, column: 26, scope: !2396, inlinedAt: !2453)
!2456 = !DILocation(line: 1030, column: 30, scope: !2396, inlinedAt: !2453)
!2457 = !DILocation(line: 0, scope: !1146, inlinedAt: !2458)
!2458 = distinct !DILocation(line: 1031, column: 3, scope: !2396, inlinedAt: !2453)
!2459 = !DILocation(line: 184, column: 6, scope: !1146, inlinedAt: !2458)
!2460 = !DILocation(line: 184, column: 12, scope: !1146, inlinedAt: !2458)
!2461 = !DILocation(line: 185, column: 8, scope: !1160, inlinedAt: !2458)
!2462 = !DILocation(line: 185, column: 19, scope: !1160, inlinedAt: !2458)
!2463 = !DILocation(line: 186, column: 5, scope: !1160, inlinedAt: !2458)
!2464 = !DILocation(line: 187, column: 6, scope: !1146, inlinedAt: !2458)
!2465 = !DILocation(line: 187, column: 17, scope: !1146, inlinedAt: !2458)
!2466 = !DILocation(line: 188, column: 6, scope: !1146, inlinedAt: !2458)
!2467 = !DILocation(line: 188, column: 18, scope: !1146, inlinedAt: !2458)
!2468 = !DILocation(line: 1032, column: 10, scope: !2396, inlinedAt: !2453)
!2469 = !DILocation(line: 1033, column: 1, scope: !2396, inlinedAt: !2453)
!2470 = !DILocation(line: 1039, column: 3, scope: !2442)
!2471 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !52, file: !52, line: 1043, type: !2472, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2474)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!47, !6, !6, !6, !91}
!2474 = !{!2475, !2476, !2477, !2478}
!2475 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2471, file: !52, line: 1043, type: !6)
!2476 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2471, file: !52, line: 1043, type: !6)
!2477 = !DILocalVariable(name: "arg", arg: 3, scope: !2471, file: !52, line: 1044, type: !6)
!2478 = !DILocalVariable(name: "argsize", arg: 4, scope: !2471, file: !52, line: 1044, type: !91)
!2479 = !DILocation(line: 0, scope: !2471)
!2480 = !DILocation(line: 0, scope: !2396, inlinedAt: !2481)
!2481 = distinct !DILocation(line: 1046, column: 10, scope: !2471)
!2482 = !DILocation(line: 1030, column: 3, scope: !2396, inlinedAt: !2481)
!2483 = !DILocation(line: 1030, column: 26, scope: !2396, inlinedAt: !2481)
!2484 = !DILocation(line: 1030, column: 30, scope: !2396, inlinedAt: !2481)
!2485 = !DILocation(line: 0, scope: !1146, inlinedAt: !2486)
!2486 = distinct !DILocation(line: 1031, column: 3, scope: !2396, inlinedAt: !2481)
!2487 = !DILocation(line: 184, column: 6, scope: !1146, inlinedAt: !2486)
!2488 = !DILocation(line: 184, column: 12, scope: !1146, inlinedAt: !2486)
!2489 = !DILocation(line: 185, column: 8, scope: !1160, inlinedAt: !2486)
!2490 = !DILocation(line: 185, column: 19, scope: !1160, inlinedAt: !2486)
!2491 = !DILocation(line: 186, column: 5, scope: !1160, inlinedAt: !2486)
!2492 = !DILocation(line: 187, column: 6, scope: !1146, inlinedAt: !2486)
!2493 = !DILocation(line: 187, column: 17, scope: !1146, inlinedAt: !2486)
!2494 = !DILocation(line: 188, column: 6, scope: !1146, inlinedAt: !2486)
!2495 = !DILocation(line: 188, column: 18, scope: !1146, inlinedAt: !2486)
!2496 = !DILocation(line: 1032, column: 10, scope: !2396, inlinedAt: !2481)
!2497 = !DILocation(line: 1033, column: 1, scope: !2396, inlinedAt: !2481)
!2498 = !DILocation(line: 1046, column: 3, scope: !2471)
!2499 = distinct !DISubprogram(name: "quote_n_mem", scope: !52, file: !52, line: 1061, type: !2500, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2502)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!6, !23, !6, !91}
!2502 = !{!2503, !2504, !2505}
!2503 = !DILocalVariable(name: "n", arg: 1, scope: !2499, file: !52, line: 1061, type: !23)
!2504 = !DILocalVariable(name: "arg", arg: 2, scope: !2499, file: !52, line: 1061, type: !6)
!2505 = !DILocalVariable(name: "argsize", arg: 3, scope: !2499, file: !52, line: 1061, type: !91)
!2506 = !DILocation(line: 0, scope: !2499)
!2507 = !DILocation(line: 1063, column: 10, scope: !2499)
!2508 = !DILocation(line: 1063, column: 3, scope: !2499)
!2509 = distinct !DISubprogram(name: "quote_mem", scope: !52, file: !52, line: 1067, type: !2510, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2512)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!6, !6, !91}
!2512 = !{!2513, !2514}
!2513 = !DILocalVariable(name: "arg", arg: 1, scope: !2509, file: !52, line: 1067, type: !6)
!2514 = !DILocalVariable(name: "argsize", arg: 2, scope: !2509, file: !52, line: 1067, type: !91)
!2515 = !DILocation(line: 0, scope: !2509)
!2516 = !DILocation(line: 0, scope: !2499, inlinedAt: !2517)
!2517 = distinct !DILocation(line: 1069, column: 10, scope: !2509)
!2518 = !DILocation(line: 1063, column: 10, scope: !2499, inlinedAt: !2517)
!2519 = !DILocation(line: 1069, column: 3, scope: !2509)
!2520 = distinct !DISubprogram(name: "quote_n", scope: !52, file: !52, line: 1073, type: !2521, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2523)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!6, !23, !6}
!2523 = !{!2524, !2525}
!2524 = !DILocalVariable(name: "n", arg: 1, scope: !2520, file: !52, line: 1073, type: !23)
!2525 = !DILocalVariable(name: "arg", arg: 2, scope: !2520, file: !52, line: 1073, type: !6)
!2526 = !DILocation(line: 0, scope: !2520)
!2527 = !DILocation(line: 0, scope: !2499, inlinedAt: !2528)
!2528 = distinct !DILocation(line: 1075, column: 10, scope: !2520)
!2529 = !DILocation(line: 1063, column: 10, scope: !2499, inlinedAt: !2528)
!2530 = !DILocation(line: 1075, column: 3, scope: !2520)
!2531 = distinct !DISubprogram(name: "quote", scope: !52, file: !52, line: 1079, type: !2532, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2534)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!6, !6}
!2534 = !{!2535}
!2535 = !DILocalVariable(name: "arg", arg: 1, scope: !2531, file: !52, line: 1079, type: !6)
!2536 = !DILocation(line: 0, scope: !2531)
!2537 = !DILocation(line: 0, scope: !2520, inlinedAt: !2538)
!2538 = distinct !DILocation(line: 1081, column: 10, scope: !2531)
!2539 = !DILocation(line: 0, scope: !2499, inlinedAt: !2540)
!2540 = distinct !DILocation(line: 1075, column: 10, scope: !2520, inlinedAt: !2538)
!2541 = !DILocation(line: 1063, column: 10, scope: !2499, inlinedAt: !2540)
!2542 = !DILocation(line: 1081, column: 3, scope: !2531)
!2543 = distinct !DISubprogram(name: "safe_write", scope: !2544, file: !2544, line: 56, type: !917, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !149, retainedNodes: !2545)
!2544 = !DIFile(filename: "./lib/safe-read.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2545 = !{!2546, !2547, !2548, !2549}
!2546 = !DILocalVariable(name: "fd", arg: 1, scope: !2543, file: !2544, line: 56, type: !23)
!2547 = !DILocalVariable(name: "buf", arg: 2, scope: !2543, file: !2544, line: 56, type: !805)
!2548 = !DILocalVariable(name: "count", arg: 3, scope: !2543, file: !2544, line: 56, type: !91)
!2549 = !DILocalVariable(name: "result", scope: !2550, file: !2544, line: 60, type: !2553)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !2544, line: 59, column: 5)
!2551 = distinct !DILexicalBlock(scope: !2552, file: !2544, line: 58, column: 3)
!2552 = distinct !DILexicalBlock(scope: !2543, file: !2544, line: 58, column: 3)
!2553 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !2554, line: 108, baseType: !2555)
!2554 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!2555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !699, line: 194, baseType: !700)
!2556 = !DILocation(line: 0, scope: !2543)
!2557 = !DILocation(line: 60, column: 24, scope: !2550)
!2558 = !DILocation(line: 0, scope: !2550)
!2559 = !DILocation(line: 62, column: 13, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2550, file: !2544, line: 62, column: 11)
!2561 = !DILocation(line: 62, column: 11, scope: !2550)
!2562 = !DILocation(line: 64, column: 16, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2560, file: !2544, line: 64, column: 16)
!2564 = !DILocation(line: 64, column: 16, scope: !2560)
!2565 = distinct !{!2565, !2566, !2567}
!2566 = !DILocation(line: 58, column: 3, scope: !2552)
!2567 = !DILocation(line: 70, column: 5, scope: !2552)
!2568 = !DILocation(line: 66, column: 22, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2563, file: !2544, line: 66, column: 16)
!2570 = !DILocation(line: 66, column: 32, scope: !2569)
!2571 = !DILocation(line: 71, column: 1, scope: !2543)
!2572 = !DISubprogram(name: "write", scope: !2573, file: !2573, line: 367, type: !2574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2573 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!700, !23, !805, !93}
!2576 = distinct !DISubprogram(name: "version_etc_arn", scope: !157, file: !157, line: 61, type: !2577, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !156, retainedNodes: !2615)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{null, !2579, !6, !6, !6, !2614, !91}
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2581, line: 7, baseType: !2582)
!2581 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !677, line: 49, size: 1728, elements: !2583)
!2583 = !{!2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2582, file: !677, line: 51, baseType: !23, size: 32)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2582, file: !677, line: 54, baseType: !47, size: 64, offset: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2582, file: !677, line: 55, baseType: !47, size: 64, offset: 128)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2582, file: !677, line: 56, baseType: !47, size: 64, offset: 192)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2582, file: !677, line: 57, baseType: !47, size: 64, offset: 256)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2582, file: !677, line: 58, baseType: !47, size: 64, offset: 320)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2582, file: !677, line: 59, baseType: !47, size: 64, offset: 384)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2582, file: !677, line: 60, baseType: !47, size: 64, offset: 448)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2582, file: !677, line: 61, baseType: !47, size: 64, offset: 512)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2582, file: !677, line: 64, baseType: !47, size: 64, offset: 576)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2582, file: !677, line: 65, baseType: !47, size: 64, offset: 640)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2582, file: !677, line: 66, baseType: !47, size: 64, offset: 704)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2582, file: !677, line: 68, baseType: !692, size: 64, offset: 768)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2582, file: !677, line: 70, baseType: !2598, size: 64, offset: 832)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2582, file: !677, line: 72, baseType: !23, size: 32, offset: 896)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2582, file: !677, line: 73, baseType: !23, size: 32, offset: 928)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2582, file: !677, line: 74, baseType: !698, size: 64, offset: 960)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2582, file: !677, line: 77, baseType: !90, size: 16, offset: 1024)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2582, file: !677, line: 78, baseType: !703, size: 8, offset: 1040)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2582, file: !677, line: 79, baseType: !705, size: 8, offset: 1048)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2582, file: !677, line: 81, baseType: !709, size: 64, offset: 1088)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2582, file: !677, line: 89, baseType: !712, size: 64, offset: 1152)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2582, file: !677, line: 91, baseType: !714, size: 64, offset: 1216)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2582, file: !677, line: 92, baseType: !717, size: 64, offset: 1280)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2582, file: !677, line: 93, baseType: !2598, size: 64, offset: 1344)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2582, file: !677, line: 94, baseType: !46, size: 64, offset: 1408)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2582, file: !677, line: 95, baseType: !91, size: 64, offset: 1472)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2582, file: !677, line: 96, baseType: !23, size: 32, offset: 1536)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2582, file: !677, line: 98, baseType: !724, size: 160, offset: 1568)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!2615 = !{!2616, !2617, !2618, !2619, !2620, !2621}
!2616 = !DILocalVariable(name: "stream", arg: 1, scope: !2576, file: !157, line: 61, type: !2579)
!2617 = !DILocalVariable(name: "command_name", arg: 2, scope: !2576, file: !157, line: 62, type: !6)
!2618 = !DILocalVariable(name: "package", arg: 3, scope: !2576, file: !157, line: 62, type: !6)
!2619 = !DILocalVariable(name: "version", arg: 4, scope: !2576, file: !157, line: 63, type: !6)
!2620 = !DILocalVariable(name: "authors", arg: 5, scope: !2576, file: !157, line: 64, type: !2614)
!2621 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2576, file: !157, line: 64, type: !91)
!2622 = !DILocation(line: 0, scope: !2576)
!2623 = !DILocation(line: 66, column: 7, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2576, file: !157, line: 66, column: 7)
!2625 = !DILocation(line: 66, column: 7, scope: !2576)
!2626 = !DILocation(line: 67, column: 5, scope: !2624)
!2627 = !DILocation(line: 69, column: 5, scope: !2624)
!2628 = !DILocation(line: 83, column: 3, scope: !2576)
!2629 = !DILocation(line: 85, column: 3, scope: !2576)
!2630 = !DILocation(line: 88, column: 3, scope: !2576)
!2631 = !DILocation(line: 95, column: 3, scope: !2576)
!2632 = !DILocation(line: 97, column: 3, scope: !2576)
!2633 = !DILocation(line: 105, column: 7, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2576, file: !157, line: 98, column: 5)
!2635 = !DILocation(line: 106, column: 7, scope: !2634)
!2636 = !DILocation(line: 109, column: 7, scope: !2634)
!2637 = !DILocation(line: 110, column: 7, scope: !2634)
!2638 = !DILocation(line: 113, column: 7, scope: !2634)
!2639 = !DILocation(line: 115, column: 7, scope: !2634)
!2640 = !DILocation(line: 120, column: 7, scope: !2634)
!2641 = !DILocation(line: 122, column: 7, scope: !2634)
!2642 = !DILocation(line: 127, column: 7, scope: !2634)
!2643 = !DILocation(line: 129, column: 7, scope: !2634)
!2644 = !DILocation(line: 134, column: 7, scope: !2634)
!2645 = !DILocation(line: 137, column: 7, scope: !2634)
!2646 = !DILocation(line: 142, column: 7, scope: !2634)
!2647 = !DILocation(line: 145, column: 7, scope: !2634)
!2648 = !DILocation(line: 150, column: 7, scope: !2634)
!2649 = !DILocation(line: 154, column: 7, scope: !2634)
!2650 = !DILocation(line: 159, column: 7, scope: !2634)
!2651 = !DILocation(line: 163, column: 7, scope: !2634)
!2652 = !DILocation(line: 170, column: 7, scope: !2634)
!2653 = !DILocation(line: 174, column: 7, scope: !2634)
!2654 = !DILocation(line: 176, column: 1, scope: !2576)
!2655 = distinct !DISubprogram(name: "version_etc_ar", scope: !157, file: !157, line: 183, type: !2656, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !156, retainedNodes: !2658)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{null, !2579, !6, !6, !6, !2614}
!2658 = !{!2659, !2660, !2661, !2662, !2663, !2664}
!2659 = !DILocalVariable(name: "stream", arg: 1, scope: !2655, file: !157, line: 183, type: !2579)
!2660 = !DILocalVariable(name: "command_name", arg: 2, scope: !2655, file: !157, line: 184, type: !6)
!2661 = !DILocalVariable(name: "package", arg: 3, scope: !2655, file: !157, line: 184, type: !6)
!2662 = !DILocalVariable(name: "version", arg: 4, scope: !2655, file: !157, line: 185, type: !6)
!2663 = !DILocalVariable(name: "authors", arg: 5, scope: !2655, file: !157, line: 185, type: !2614)
!2664 = !DILocalVariable(name: "n_authors", scope: !2655, file: !157, line: 187, type: !91)
!2665 = !DILocation(line: 0, scope: !2655)
!2666 = !DILocation(line: 189, column: 8, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2655, file: !157, line: 189, column: 3)
!2668 = !DILocation(line: 0, scope: !2667)
!2669 = !DILocation(line: 189, column: 23, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2667, file: !157, line: 189, column: 3)
!2671 = !DILocation(line: 189, column: 3, scope: !2667)
!2672 = !DILocation(line: 189, column: 52, scope: !2670)
!2673 = distinct !{!2673, !2671, !2674, !647}
!2674 = !DILocation(line: 190, column: 5, scope: !2667)
!2675 = !DILocation(line: 191, column: 3, scope: !2655)
!2676 = !DILocation(line: 192, column: 1, scope: !2655)
!2677 = distinct !DISubprogram(name: "version_etc_va", scope: !157, file: !157, line: 199, type: !2678, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !156, retainedNodes: !2687)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{null, !2579, !6, !6, !6, !2680}
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2682)
!2682 = !{!2683, !2684, !2685, !2686}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2681, file: !157, line: 192, baseType: !56, size: 32)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2681, file: !157, line: 192, baseType: !56, size: 32, offset: 32)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2681, file: !157, line: 192, baseType: !46, size: 64, offset: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2681, file: !157, line: 192, baseType: !46, size: 64, offset: 128)
!2687 = !{!2688, !2689, !2690, !2691, !2692, !2693, !2694}
!2688 = !DILocalVariable(name: "stream", arg: 1, scope: !2677, file: !157, line: 199, type: !2579)
!2689 = !DILocalVariable(name: "command_name", arg: 2, scope: !2677, file: !157, line: 200, type: !6)
!2690 = !DILocalVariable(name: "package", arg: 3, scope: !2677, file: !157, line: 200, type: !6)
!2691 = !DILocalVariable(name: "version", arg: 4, scope: !2677, file: !157, line: 201, type: !6)
!2692 = !DILocalVariable(name: "authors", arg: 5, scope: !2677, file: !157, line: 201, type: !2680)
!2693 = !DILocalVariable(name: "n_authors", scope: !2677, file: !157, line: 203, type: !91)
!2694 = !DILocalVariable(name: "authtab", scope: !2677, file: !157, line: 204, type: !2695)
!2695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !99)
!2696 = !DILocation(line: 0, scope: !2677)
!2697 = !DILocation(line: 204, column: 3, scope: !2677)
!2698 = !DILocation(line: 204, column: 15, scope: !2677)
!2699 = !DILocation(line: 208, column: 35, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2701, file: !157, line: 206, column: 3)
!2701 = distinct !DILexicalBlock(scope: !2677, file: !157, line: 206, column: 3)
!2702 = !DILocation(line: 208, column: 14, scope: !2700)
!2703 = !DILocation(line: 208, column: 33, scope: !2700)
!2704 = !DILocation(line: 208, column: 67, scope: !2700)
!2705 = !DILocation(line: 206, column: 3, scope: !2701)
!2706 = !DILocation(line: 0, scope: !2701)
!2707 = !DILocation(line: 211, column: 3, scope: !2677)
!2708 = !DILocation(line: 213, column: 1, scope: !2677)
!2709 = distinct !DISubprogram(name: "version_etc", scope: !157, file: !157, line: 230, type: !2710, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !156, retainedNodes: !2712)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{null, !2579, !6, !6, !6, null}
!2712 = !{!2713, !2714, !2715, !2716, !2717}
!2713 = !DILocalVariable(name: "stream", arg: 1, scope: !2709, file: !157, line: 230, type: !2579)
!2714 = !DILocalVariable(name: "command_name", arg: 2, scope: !2709, file: !157, line: 231, type: !6)
!2715 = !DILocalVariable(name: "package", arg: 3, scope: !2709, file: !157, line: 231, type: !6)
!2716 = !DILocalVariable(name: "version", arg: 4, scope: !2709, file: !157, line: 232, type: !6)
!2717 = !DILocalVariable(name: "authors", scope: !2709, file: !157, line: 234, type: !2718)
!2718 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !672, line: 52, baseType: !2719)
!2719 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !962, line: 32, baseType: !2720)
!2720 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !157, baseType: !2721)
!2721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2681, size: 192, elements: !706)
!2722 = !DILocation(line: 0, scope: !2709)
!2723 = !DILocation(line: 234, column: 3, scope: !2709)
!2724 = !DILocation(line: 234, column: 11, scope: !2709)
!2725 = !DILocation(line: 236, column: 3, scope: !2709)
!2726 = !DILocation(line: 237, column: 3, scope: !2709)
!2727 = !DILocation(line: 238, column: 3, scope: !2709)
!2728 = !DILocation(line: 239, column: 1, scope: !2709)
!2729 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !157, file: !157, line: 242, type: !860, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !156, retainedNodes: !4)
!2730 = !DILocation(line: 244, column: 3, scope: !2729)
!2731 = !DILocation(line: 249, column: 3, scope: !2729)
!2732 = !DILocation(line: 255, column: 3, scope: !2729)
!2733 = !DILocation(line: 260, column: 3, scope: !2729)
!2734 = !DILocation(line: 262, column: 1, scope: !2729)
!2735 = distinct !DISubprogram(name: "xnmalloc", scope: !167, file: !167, line: 99, type: !2736, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !163, retainedNodes: !2738)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!46, !91, !91}
!2738 = !{!2739, !2740}
!2739 = !DILocalVariable(name: "n", arg: 1, scope: !2735, file: !167, line: 99, type: !91)
!2740 = !DILocalVariable(name: "s", arg: 2, scope: !2735, file: !167, line: 99, type: !91)
!2741 = !DILocation(line: 0, scope: !2735)
!2742 = !DILocation(line: 101, column: 7, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2735, file: !167, line: 101, column: 7)
!2744 = !DILocation(line: 101, column: 7, scope: !2735)
!2745 = !DILocation(line: 102, column: 5, scope: !2743)
!2746 = !DILocation(line: 103, column: 21, scope: !2735)
!2747 = !DILocalVariable(name: "n", arg: 1, scope: !2748, file: !164, line: 39, type: !91)
!2748 = distinct !DISubprogram(name: "xmalloc", scope: !164, file: !164, line: 39, type: !2749, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !163, retainedNodes: !2751)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!46, !91}
!2751 = !{!2747, !2752}
!2752 = !DILocalVariable(name: "p", scope: !2748, file: !164, line: 41, type: !46)
!2753 = !DILocation(line: 0, scope: !2748, inlinedAt: !2754)
!2754 = distinct !DILocation(line: 103, column: 10, scope: !2735)
!2755 = !DILocation(line: 41, column: 13, scope: !2748, inlinedAt: !2754)
!2756 = !DILocation(line: 42, column: 8, scope: !2757, inlinedAt: !2754)
!2757 = distinct !DILexicalBlock(scope: !2748, file: !164, line: 42, column: 7)
!2758 = !DILocation(line: 42, column: 10, scope: !2757, inlinedAt: !2754)
!2759 = !DILocation(line: 43, column: 5, scope: !2757, inlinedAt: !2754)
!2760 = !DILocation(line: 103, column: 3, scope: !2735)
!2761 = !DILocation(line: 0, scope: !2748)
!2762 = !DILocation(line: 41, column: 13, scope: !2748)
!2763 = !DILocation(line: 42, column: 8, scope: !2757)
!2764 = !DILocation(line: 42, column: 10, scope: !2757)
!2765 = !DILocation(line: 43, column: 5, scope: !2757)
!2766 = !DILocation(line: 44, column: 3, scope: !2748)
!2767 = distinct !DISubprogram(name: "xnrealloc", scope: !167, file: !167, line: 112, type: !2768, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !163, retainedNodes: !2770)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!46, !46, !91, !91}
!2770 = !{!2771, !2772, !2773}
!2771 = !DILocalVariable(name: "p", arg: 1, scope: !2767, file: !167, line: 112, type: !46)
!2772 = !DILocalVariable(name: "n", arg: 2, scope: !2767, file: !167, line: 112, type: !91)
!2773 = !DILocalVariable(name: "s", arg: 3, scope: !2767, file: !167, line: 112, type: !91)
!2774 = !DILocation(line: 0, scope: !2767)
!2775 = !DILocation(line: 114, column: 7, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2767, file: !167, line: 114, column: 7)
!2777 = !DILocation(line: 114, column: 7, scope: !2767)
!2778 = !DILocation(line: 115, column: 5, scope: !2776)
!2779 = !DILocation(line: 116, column: 25, scope: !2767)
!2780 = !DILocalVariable(name: "p", arg: 1, scope: !2781, file: !164, line: 51, type: !46)
!2781 = distinct !DISubprogram(name: "xrealloc", scope: !164, file: !164, line: 51, type: !2782, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !163, retainedNodes: !2784)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!46, !46, !91}
!2784 = !{!2780, !2785}
!2785 = !DILocalVariable(name: "n", arg: 2, scope: !2781, file: !164, line: 51, type: !91)
!2786 = !DILocation(line: 0, scope: !2781, inlinedAt: !2787)
!2787 = distinct !DILocation(line: 116, column: 10, scope: !2767)
!2788 = !DILocation(line: 53, column: 8, scope: !2789, inlinedAt: !2787)
!2789 = distinct !DILexicalBlock(scope: !2781, file: !164, line: 53, column: 7)
!2790 = !DILocation(line: 53, column: 10, scope: !2789, inlinedAt: !2787)
!2791 = !DILocation(line: 57, column: 7, scope: !2792, inlinedAt: !2787)
!2792 = distinct !DILexicalBlock(scope: !2789, file: !164, line: 54, column: 5)
!2793 = !DILocation(line: 58, column: 7, scope: !2792, inlinedAt: !2787)
!2794 = !DILocation(line: 61, column: 7, scope: !2781, inlinedAt: !2787)
!2795 = !DILocation(line: 62, column: 8, scope: !2796, inlinedAt: !2787)
!2796 = distinct !DILexicalBlock(scope: !2781, file: !164, line: 62, column: 7)
!2797 = !DILocation(line: 62, column: 10, scope: !2796, inlinedAt: !2787)
!2798 = !DILocation(line: 63, column: 5, scope: !2796, inlinedAt: !2787)
!2799 = !DILocation(line: 116, column: 3, scope: !2767)
!2800 = !DILocation(line: 0, scope: !2781)
!2801 = !DILocation(line: 53, column: 8, scope: !2789)
!2802 = !DILocation(line: 53, column: 10, scope: !2789)
!2803 = !DILocation(line: 57, column: 7, scope: !2792)
!2804 = !DILocation(line: 58, column: 7, scope: !2792)
!2805 = !DILocation(line: 61, column: 7, scope: !2781)
!2806 = !DILocation(line: 62, column: 8, scope: !2796)
!2807 = !DILocation(line: 62, column: 10, scope: !2796)
!2808 = !DILocation(line: 63, column: 5, scope: !2796)
!2809 = !DILocation(line: 65, column: 1, scope: !2781)
!2810 = !DILocation(line: 0, scope: !168)
!2811 = !DILocation(line: 176, column: 14, scope: !168)
!2812 = !DILocation(line: 178, column: 9, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !168, file: !167, line: 178, column: 7)
!2814 = !DILocation(line: 178, column: 7, scope: !168)
!2815 = !DILocation(line: 180, column: 13, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2817, file: !167, line: 180, column: 11)
!2817 = distinct !DILexicalBlock(scope: !2813, file: !167, line: 179, column: 5)
!2818 = !DILocation(line: 180, column: 11, scope: !2817)
!2819 = !DILocation(line: 188, column: 30, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2816, file: !167, line: 181, column: 9)
!2821 = !DILocation(line: 189, column: 16, scope: !2820)
!2822 = !DILocation(line: 189, column: 13, scope: !2820)
!2823 = !DILocation(line: 190, column: 9, scope: !2820)
!2824 = !DILocation(line: 191, column: 11, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2817, file: !167, line: 191, column: 11)
!2826 = !DILocation(line: 191, column: 11, scope: !2817)
!2827 = !DILocation(line: 206, column: 7, scope: !168)
!2828 = !DILocation(line: 207, column: 25, scope: !168)
!2829 = !DILocation(line: 0, scope: !2781, inlinedAt: !2830)
!2830 = distinct !DILocation(line: 207, column: 10, scope: !168)
!2831 = !DILocation(line: 53, column: 10, scope: !2789, inlinedAt: !2830)
!2832 = !DILocation(line: 192, column: 9, scope: !2825)
!2833 = !DILocation(line: 200, column: 69, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2835, file: !167, line: 200, column: 11)
!2835 = distinct !DILexicalBlock(scope: !2813, file: !167, line: 195, column: 5)
!2836 = !DILocation(line: 201, column: 11, scope: !2834)
!2837 = !DILocation(line: 200, column: 11, scope: !2835)
!2838 = !DILocation(line: 202, column: 9, scope: !2834)
!2839 = !DILocation(line: 203, column: 14, scope: !2835)
!2840 = !DILocation(line: 203, column: 18, scope: !2835)
!2841 = !DILocation(line: 203, column: 9, scope: !2835)
!2842 = !DILocation(line: 53, column: 8, scope: !2789, inlinedAt: !2830)
!2843 = !DILocation(line: 57, column: 7, scope: !2792, inlinedAt: !2830)
!2844 = !DILocation(line: 58, column: 7, scope: !2792, inlinedAt: !2830)
!2845 = !DILocation(line: 61, column: 7, scope: !2781, inlinedAt: !2830)
!2846 = !DILocation(line: 62, column: 8, scope: !2796, inlinedAt: !2830)
!2847 = !DILocation(line: 62, column: 10, scope: !2796, inlinedAt: !2830)
!2848 = !DILocation(line: 63, column: 5, scope: !2796, inlinedAt: !2830)
!2849 = !DILocation(line: 207, column: 3, scope: !168)
!2850 = distinct !DISubprogram(name: "xcharalloc", scope: !167, file: !167, line: 216, type: !1954, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !163, retainedNodes: !2851)
!2851 = !{!2852}
!2852 = !DILocalVariable(name: "n", arg: 1, scope: !2850, file: !167, line: 216, type: !91)
!2853 = !DILocation(line: 0, scope: !2850)
!2854 = !DILocation(line: 0, scope: !2748, inlinedAt: !2855)
!2855 = distinct !DILocation(line: 218, column: 10, scope: !2850)
!2856 = !DILocation(line: 41, column: 13, scope: !2748, inlinedAt: !2855)
!2857 = !DILocation(line: 42, column: 8, scope: !2757, inlinedAt: !2855)
!2858 = !DILocation(line: 42, column: 10, scope: !2757, inlinedAt: !2855)
!2859 = !DILocation(line: 43, column: 5, scope: !2757, inlinedAt: !2855)
!2860 = !DILocation(line: 218, column: 3, scope: !2850)
!2861 = distinct !DISubprogram(name: "x2realloc", scope: !164, file: !164, line: 74, type: !2862, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !163, retainedNodes: !2864)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!46, !46, !171}
!2864 = !{!2865, !2866}
!2865 = !DILocalVariable(name: "p", arg: 1, scope: !2861, file: !164, line: 74, type: !46)
!2866 = !DILocalVariable(name: "pn", arg: 2, scope: !2861, file: !164, line: 74, type: !171)
!2867 = !DILocation(line: 0, scope: !2861)
!2868 = !DILocation(line: 0, scope: !168, inlinedAt: !2869)
!2869 = distinct !DILocation(line: 76, column: 10, scope: !2861)
!2870 = !DILocation(line: 176, column: 14, scope: !168, inlinedAt: !2869)
!2871 = !DILocation(line: 178, column: 9, scope: !2813, inlinedAt: !2869)
!2872 = !DILocation(line: 178, column: 7, scope: !168, inlinedAt: !2869)
!2873 = !DILocation(line: 180, column: 13, scope: !2816, inlinedAt: !2869)
!2874 = !DILocation(line: 180, column: 11, scope: !2817, inlinedAt: !2869)
!2875 = !DILocation(line: 191, column: 11, scope: !2825, inlinedAt: !2869)
!2876 = !DILocation(line: 191, column: 11, scope: !2817, inlinedAt: !2869)
!2877 = !DILocation(line: 192, column: 9, scope: !2825, inlinedAt: !2869)
!2878 = !DILocation(line: 201, column: 11, scope: !2834, inlinedAt: !2869)
!2879 = !DILocation(line: 200, column: 11, scope: !2835, inlinedAt: !2869)
!2880 = !DILocation(line: 202, column: 9, scope: !2834, inlinedAt: !2869)
!2881 = !DILocation(line: 203, column: 14, scope: !2835, inlinedAt: !2869)
!2882 = !DILocation(line: 203, column: 18, scope: !2835, inlinedAt: !2869)
!2883 = !DILocation(line: 203, column: 9, scope: !2835, inlinedAt: !2869)
!2884 = !DILocation(line: 0, scope: !2781, inlinedAt: !2885)
!2885 = distinct !DILocation(line: 207, column: 10, scope: !168, inlinedAt: !2869)
!2886 = !DILocation(line: 53, column: 10, scope: !2789, inlinedAt: !2885)
!2887 = !DILocation(line: 206, column: 7, scope: !168, inlinedAt: !2869)
!2888 = !DILocation(line: 61, column: 7, scope: !2781, inlinedAt: !2885)
!2889 = !DILocation(line: 62, column: 8, scope: !2796, inlinedAt: !2885)
!2890 = !DILocation(line: 62, column: 10, scope: !2796, inlinedAt: !2885)
!2891 = !DILocation(line: 63, column: 5, scope: !2796, inlinedAt: !2885)
!2892 = !DILocation(line: 76, column: 3, scope: !2861)
!2893 = distinct !DISubprogram(name: "xzalloc", scope: !164, file: !164, line: 84, type: !2749, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !163, retainedNodes: !2894)
!2894 = !{!2895}
!2895 = !DILocalVariable(name: "n", arg: 1, scope: !2893, file: !164, line: 84, type: !91)
!2896 = !DILocation(line: 0, scope: !2893)
!2897 = !DILocalVariable(name: "n", arg: 1, scope: !2898, file: !164, line: 93, type: !91)
!2898 = distinct !DISubprogram(name: "xcalloc", scope: !164, file: !164, line: 93, type: !2736, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !163, retainedNodes: !2899)
!2899 = !{!2897, !2900, !2901}
!2900 = !DILocalVariable(name: "s", arg: 2, scope: !2898, file: !164, line: 93, type: !91)
!2901 = !DILocalVariable(name: "p", scope: !2898, file: !164, line: 95, type: !46)
!2902 = !DILocation(line: 0, scope: !2898, inlinedAt: !2903)
!2903 = distinct !DILocation(line: 86, column: 10, scope: !2893)
!2904 = !DILocation(line: 100, column: 7, scope: !2905, inlinedAt: !2903)
!2905 = distinct !DILexicalBlock(scope: !2898, file: !164, line: 100, column: 7)
!2906 = !DILocation(line: 101, column: 7, scope: !2905, inlinedAt: !2903)
!2907 = !DILocation(line: 101, column: 18, scope: !2905, inlinedAt: !2903)
!2908 = !DILocation(line: 101, column: 16, scope: !2905, inlinedAt: !2903)
!2909 = !DILocation(line: 100, column: 7, scope: !2898, inlinedAt: !2903)
!2910 = !DILocation(line: 102, column: 5, scope: !2905, inlinedAt: !2903)
!2911 = !DILocation(line: 86, column: 3, scope: !2893)
!2912 = !DILocation(line: 0, scope: !2898)
!2913 = !DILocation(line: 100, column: 7, scope: !2905)
!2914 = !DILocation(line: 101, column: 7, scope: !2905)
!2915 = !DILocation(line: 101, column: 18, scope: !2905)
!2916 = !DILocation(line: 101, column: 16, scope: !2905)
!2917 = !DILocation(line: 100, column: 7, scope: !2898)
!2918 = !DILocation(line: 102, column: 5, scope: !2905)
!2919 = !DILocation(line: 103, column: 3, scope: !2898)
!2920 = distinct !DISubprogram(name: "xmemdup", scope: !164, file: !164, line: 111, type: !2921, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !163, retainedNodes: !2923)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!46, !805, !91}
!2923 = !{!2924, !2925}
!2924 = !DILocalVariable(name: "p", arg: 1, scope: !2920, file: !164, line: 111, type: !805)
!2925 = !DILocalVariable(name: "s", arg: 2, scope: !2920, file: !164, line: 111, type: !91)
!2926 = !DILocation(line: 0, scope: !2920)
!2927 = !DILocation(line: 0, scope: !2748, inlinedAt: !2928)
!2928 = distinct !DILocation(line: 113, column: 18, scope: !2920)
!2929 = !DILocation(line: 41, column: 13, scope: !2748, inlinedAt: !2928)
!2930 = !DILocation(line: 42, column: 8, scope: !2757, inlinedAt: !2928)
!2931 = !DILocation(line: 42, column: 10, scope: !2757, inlinedAt: !2928)
!2932 = !DILocation(line: 43, column: 5, scope: !2757, inlinedAt: !2928)
!2933 = !DILocalVariable(name: "__dest", arg: 1, scope: !2934, file: !800, line: 26, type: !803)
!2934 = distinct !DISubprogram(name: "memcpy", scope: !800, file: !800, line: 26, type: !801, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !163, retainedNodes: !2935)
!2935 = !{!2933, !2936, !2937}
!2936 = !DILocalVariable(name: "__src", arg: 2, scope: !2934, file: !800, line: 26, type: !804)
!2937 = !DILocalVariable(name: "__len", arg: 3, scope: !2934, file: !800, line: 26, type: !91)
!2938 = !DILocation(line: 0, scope: !2934, inlinedAt: !2939)
!2939 = distinct !DILocation(line: 113, column: 10, scope: !2920)
!2940 = !DILocation(line: 29, column: 10, scope: !2934, inlinedAt: !2939)
!2941 = !DILocation(line: 113, column: 3, scope: !2920)
!2942 = distinct !DISubprogram(name: "xstrdup", scope: !164, file: !164, line: 119, type: !853, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !163, retainedNodes: !2943)
!2943 = !{!2944}
!2944 = !DILocalVariable(name: "string", arg: 1, scope: !2942, file: !164, line: 119, type: !6)
!2945 = !DILocation(line: 0, scope: !2942)
!2946 = !DILocation(line: 121, column: 27, scope: !2942)
!2947 = !DILocation(line: 121, column: 43, scope: !2942)
!2948 = !DILocation(line: 0, scope: !2920, inlinedAt: !2949)
!2949 = distinct !DILocation(line: 121, column: 10, scope: !2942)
!2950 = !DILocation(line: 0, scope: !2748, inlinedAt: !2951)
!2951 = distinct !DILocation(line: 113, column: 18, scope: !2920, inlinedAt: !2949)
!2952 = !DILocation(line: 41, column: 13, scope: !2748, inlinedAt: !2951)
!2953 = !DILocation(line: 42, column: 8, scope: !2757, inlinedAt: !2951)
!2954 = !DILocation(line: 42, column: 10, scope: !2757, inlinedAt: !2951)
!2955 = !DILocation(line: 43, column: 5, scope: !2757, inlinedAt: !2951)
!2956 = !DILocation(line: 0, scope: !2934, inlinedAt: !2957)
!2957 = distinct !DILocation(line: 113, column: 10, scope: !2920, inlinedAt: !2949)
!2958 = !DILocation(line: 29, column: 10, scope: !2934, inlinedAt: !2957)
!2959 = !DILocation(line: 121, column: 3, scope: !2942)
!2960 = distinct !DISubprogram(name: "xalloc_die", scope: !181, file: !181, line: 32, type: !860, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !180, retainedNodes: !4)
!2961 = !DILocation(line: 34, column: 10, scope: !2960)
!2962 = !DILocation(line: 34, column: 33, scope: !2960)
!2963 = !DILocation(line: 34, column: 3, scope: !2960)
!2964 = !DILocation(line: 40, column: 3, scope: !2960)
!2965 = distinct !DISubprogram(name: "rpl_calloc", scope: !183, file: !183, line: 42, type: !2736, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !2966)
!2966 = !{!2967, !2968, !2969, !2970}
!2967 = !DILocalVariable(name: "n", arg: 1, scope: !2965, file: !183, line: 42, type: !91)
!2968 = !DILocalVariable(name: "s", arg: 2, scope: !2965, file: !183, line: 42, type: !91)
!2969 = !DILocalVariable(name: "result", scope: !2965, file: !183, line: 44, type: !46)
!2970 = !DILocalVariable(name: "bytes", scope: !2971, file: !183, line: 56, type: !91)
!2971 = distinct !DILexicalBlock(scope: !2972, file: !183, line: 53, column: 5)
!2972 = distinct !DILexicalBlock(scope: !2965, file: !183, line: 47, column: 7)
!2973 = !DILocation(line: 0, scope: !2965)
!2974 = !DILocation(line: 47, column: 9, scope: !2972)
!2975 = !DILocation(line: 47, column: 14, scope: !2972)
!2976 = !DILocation(line: 0, scope: !2971)
!2977 = !DILocation(line: 57, column: 21, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2971, file: !183, line: 57, column: 11)
!2979 = !DILocation(line: 57, column: 11, scope: !2971)
!2980 = !DILocation(line: 59, column: 11, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2978, file: !183, line: 58, column: 9)
!2982 = !DILocation(line: 59, column: 17, scope: !2981)
!2983 = !DILocation(line: 65, column: 12, scope: !2965)
!2984 = !DILocation(line: 72, column: 3, scope: !2965)
!2985 = !DILocation(line: 73, column: 1, scope: !2965)
!2986 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !185, file: !185, line: 86, type: !2987, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !184, retainedNodes: !3001)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!91, !2989, !6, !91, !2990}
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1235, line: 6, baseType: !2992)
!2992 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1237, line: 21, baseType: !2993)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1237, line: 13, size: 64, elements: !2994)
!2994 = !{!2995, !2996}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2993, file: !1237, line: 15, baseType: !23, size: 32)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2993, file: !1237, line: 20, baseType: !2997, size: 32, offset: 32)
!2997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2993, file: !1237, line: 16, size: 32, elements: !2998)
!2998 = !{!2999, !3000}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2997, file: !1237, line: 18, baseType: !56, size: 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2997, file: !1237, line: 19, baseType: !1246, size: 32)
!3001 = !{!3002, !3003, !3004, !3005, !3006, !3007, !3008}
!3002 = !DILocalVariable(name: "pwc", arg: 1, scope: !2986, file: !185, line: 86, type: !2989)
!3003 = !DILocalVariable(name: "s", arg: 2, scope: !2986, file: !185, line: 86, type: !6)
!3004 = !DILocalVariable(name: "n", arg: 3, scope: !2986, file: !185, line: 86, type: !91)
!3005 = !DILocalVariable(name: "ps", arg: 4, scope: !2986, file: !185, line: 86, type: !2990)
!3006 = !DILocalVariable(name: "ret", scope: !2986, file: !185, line: 88, type: !91)
!3007 = !DILocalVariable(name: "wc", scope: !2986, file: !185, line: 89, type: !1251)
!3008 = !DILocalVariable(name: "uc", scope: !3009, file: !185, line: 156, type: !1113)
!3009 = distinct !DILexicalBlock(scope: !3010, file: !185, line: 155, column: 5)
!3010 = distinct !DILexicalBlock(scope: !2986, file: !185, line: 154, column: 7)
!3011 = !DILocation(line: 0, scope: !2986)
!3012 = !DILocation(line: 89, column: 3, scope: !2986)
!3013 = !DILocation(line: 105, column: 9, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !2986, file: !185, line: 105, column: 7)
!3015 = !DILocation(line: 105, column: 7, scope: !2986)
!3016 = !DILocation(line: 145, column: 9, scope: !2986)
!3017 = !DILocation(line: 154, column: 19, scope: !3010)
!3018 = !DILocation(line: 154, column: 26, scope: !3010)
!3019 = !DILocation(line: 154, column: 41, scope: !3010)
!3020 = !DILocation(line: 154, column: 7, scope: !2986)
!3021 = !DILocation(line: 156, column: 26, scope: !3009)
!3022 = !DILocation(line: 0, scope: !3009)
!3023 = !DILocation(line: 157, column: 14, scope: !3009)
!3024 = !DILocation(line: 157, column: 12, scope: !3009)
!3025 = !DILocation(line: 163, column: 1, scope: !2986)
!3026 = !DISubprogram(name: "mbrtowc", scope: !1914, file: !1914, line: 296, type: !3027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!93, !37, !6, !93, !3029}
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!3030 = distinct !DISubprogram(name: "close_stream", scope: !188, file: !188, line: 56, type: !3031, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3067)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!23, !3033}
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2581, line: 7, baseType: !3035)
!3035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !677, line: 49, size: 1728, elements: !3036)
!3036 = !{!3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3035, file: !677, line: 51, baseType: !23, size: 32)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3035, file: !677, line: 54, baseType: !47, size: 64, offset: 64)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3035, file: !677, line: 55, baseType: !47, size: 64, offset: 128)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3035, file: !677, line: 56, baseType: !47, size: 64, offset: 192)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3035, file: !677, line: 57, baseType: !47, size: 64, offset: 256)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3035, file: !677, line: 58, baseType: !47, size: 64, offset: 320)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3035, file: !677, line: 59, baseType: !47, size: 64, offset: 384)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3035, file: !677, line: 60, baseType: !47, size: 64, offset: 448)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3035, file: !677, line: 61, baseType: !47, size: 64, offset: 512)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3035, file: !677, line: 64, baseType: !47, size: 64, offset: 576)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3035, file: !677, line: 65, baseType: !47, size: 64, offset: 640)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3035, file: !677, line: 66, baseType: !47, size: 64, offset: 704)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3035, file: !677, line: 68, baseType: !692, size: 64, offset: 768)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3035, file: !677, line: 70, baseType: !3051, size: 64, offset: 832)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3035, file: !677, line: 72, baseType: !23, size: 32, offset: 896)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3035, file: !677, line: 73, baseType: !23, size: 32, offset: 928)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3035, file: !677, line: 74, baseType: !698, size: 64, offset: 960)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3035, file: !677, line: 77, baseType: !90, size: 16, offset: 1024)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3035, file: !677, line: 78, baseType: !703, size: 8, offset: 1040)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3035, file: !677, line: 79, baseType: !705, size: 8, offset: 1048)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3035, file: !677, line: 81, baseType: !709, size: 64, offset: 1088)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3035, file: !677, line: 89, baseType: !712, size: 64, offset: 1152)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3035, file: !677, line: 91, baseType: !714, size: 64, offset: 1216)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3035, file: !677, line: 92, baseType: !717, size: 64, offset: 1280)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3035, file: !677, line: 93, baseType: !3051, size: 64, offset: 1344)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3035, file: !677, line: 94, baseType: !46, size: 64, offset: 1408)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3035, file: !677, line: 95, baseType: !91, size: 64, offset: 1472)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3035, file: !677, line: 96, baseType: !23, size: 32, offset: 1536)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3035, file: !677, line: 98, baseType: !724, size: 160, offset: 1568)
!3067 = !{!3068, !3069, !3071, !3072}
!3068 = !DILocalVariable(name: "stream", arg: 1, scope: !3030, file: !188, line: 56, type: !3033)
!3069 = !DILocalVariable(name: "some_pending", scope: !3030, file: !188, line: 58, type: !3070)
!3070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!3071 = !DILocalVariable(name: "prev_fail", scope: !3030, file: !188, line: 59, type: !3070)
!3072 = !DILocalVariable(name: "fclose_fail", scope: !3030, file: !188, line: 60, type: !3070)
!3073 = !DILocation(line: 0, scope: !3030)
!3074 = !DILocation(line: 58, column: 30, scope: !3030)
!3075 = !DILocalVariable(name: "__stream", arg: 1, scope: !3076, file: !3077, line: 135, type: !3033)
!3076 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3077, file: !3077, line: 135, type: !3031, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3078)
!3077 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!3078 = !{!3075}
!3079 = !DILocation(line: 0, scope: !3076, inlinedAt: !3080)
!3080 = distinct !DILocation(line: 59, column: 27, scope: !3030)
!3081 = !DILocation(line: 137, column: 10, scope: !3076, inlinedAt: !3080)
!3082 = !{!3083, !763, i64 0}
!3083 = !{!"_IO_FILE", !763, i64 0, !606, i64 8, !606, i64 16, !606, i64 24, !606, i64 32, !606, i64 40, !606, i64 48, !606, i64 56, !606, i64 64, !606, i64 72, !606, i64 80, !606, i64 88, !606, i64 96, !606, i64 104, !763, i64 112, !763, i64 116, !1990, i64 120, !1474, i64 128, !607, i64 130, !607, i64 131, !606, i64 136, !1990, i64 144, !606, i64 152, !606, i64 160, !606, i64 168, !606, i64 176, !1990, i64 184, !763, i64 192, !607, i64 196}
!3084 = !DILocation(line: 59, column: 43, scope: !3030)
!3085 = !DILocation(line: 60, column: 29, scope: !3030)
!3086 = !DILocation(line: 60, column: 45, scope: !3030)
!3087 = !DILocation(line: 70, column: 17, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3030, file: !188, line: 70, column: 7)
!3089 = !DILocation(line: 58, column: 50, scope: !3030)
!3090 = !DILocation(line: 70, column: 33, scope: !3088)
!3091 = !DILocation(line: 70, column: 53, scope: !3088)
!3092 = !DILocation(line: 70, column: 59, scope: !3088)
!3093 = !DILocation(line: 70, column: 7, scope: !3030)
!3094 = !DILocation(line: 72, column: 11, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3088, file: !188, line: 71, column: 5)
!3096 = !DILocation(line: 73, column: 9, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3095, file: !188, line: 72, column: 11)
!3098 = !DILocation(line: 73, column: 15, scope: !3097)
!3099 = !DILocation(line: 78, column: 1, scope: !3030)
!3100 = distinct !DISubprogram(name: "hard_locale", scope: !190, file: !190, line: 27, type: !3101, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !3103)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!16, !23}
!3103 = !{!3104, !3105}
!3104 = !DILocalVariable(name: "category", arg: 1, scope: !3100, file: !190, line: 27, type: !23)
!3105 = !DILocalVariable(name: "locale", scope: !3100, file: !190, line: 29, type: !3106)
!3106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !3107)
!3107 = !{!3108}
!3108 = !DISubrange(count: 257)
!3109 = !DILocation(line: 0, scope: !3100)
!3110 = !DILocation(line: 29, column: 3, scope: !3100)
!3111 = !DILocation(line: 29, column: 8, scope: !3100)
!3112 = !DILocation(line: 31, column: 7, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3100, file: !190, line: 31, column: 7)
!3114 = !DILocation(line: 31, column: 7, scope: !3100)
!3115 = !DILocation(line: 34, column: 12, scope: !3100)
!3116 = !DILocation(line: 34, column: 38, scope: !3100)
!3117 = !DILocation(line: 34, column: 41, scope: !3100)
!3118 = !DILocation(line: 34, column: 66, scope: !3100)
!3119 = !DILocation(line: 35, column: 1, scope: !3100)
!3120 = distinct !DISubprogram(name: "locale_charset", scope: !192, file: !192, line: 831, type: !3121, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !191, retainedNodes: !3123)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!6}
!3123 = !{!3124}
!3124 = !DILocalVariable(name: "codeset", scope: !3120, file: !192, line: 833, type: !6)
!3125 = !DILocation(line: 847, column: 13, scope: !3120)
!3126 = !DILocation(line: 0, scope: !3120)
!3127 = !DILocation(line: 911, column: 15, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3120, file: !192, line: 911, column: 7)
!3129 = !DILocation(line: 911, column: 7, scope: !3120)
!3130 = !DILocation(line: 1070, column: 13, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3132, file: !192, line: 1070, column: 13)
!3132 = distinct !DILexicalBlock(scope: !3133, file: !192, line: 1060, column: 7)
!3133 = distinct !DILexicalBlock(scope: !3120, file: !192, line: 1019, column: 3)
!3134 = !DILocation(line: 1070, column: 24, scope: !3131)
!3135 = !DILocation(line: 1070, column: 13, scope: !3132)
!3136 = !DILocation(line: 1158, column: 3, scope: !3120)
!3137 = !DISubprogram(name: "nl_langinfo", scope: !195, file: !195, line: 661, type: !3138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!47, !23}
!3140 = distinct !DISubprogram(name: "setlocale_null_r", scope: !581, file: !581, line: 269, type: !3141, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !580, retainedNodes: !3143)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!23, !23, !47, !91}
!3143 = !{!3144, !3145, !3146}
!3144 = !DILocalVariable(name: "category", arg: 1, scope: !3140, file: !581, line: 269, type: !23)
!3145 = !DILocalVariable(name: "buf", arg: 2, scope: !3140, file: !581, line: 269, type: !47)
!3146 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3140, file: !581, line: 269, type: !91)
!3147 = !DILocation(line: 0, scope: !3140)
!3148 = !DILocalVariable(name: "category", arg: 1, scope: !3149, file: !581, line: 91, type: !23)
!3149 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !581, file: !581, line: 91, type: !3141, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !580, retainedNodes: !3150)
!3150 = !{!3148, !3151, !3152, !3153, !3154}
!3151 = !DILocalVariable(name: "buf", arg: 2, scope: !3149, file: !581, line: 91, type: !47)
!3152 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3149, file: !581, line: 91, type: !91)
!3153 = !DILocalVariable(name: "result", scope: !3149, file: !581, line: 140, type: !6)
!3154 = !DILocalVariable(name: "length", scope: !3155, file: !581, line: 154, type: !91)
!3155 = distinct !DILexicalBlock(scope: !3156, file: !581, line: 153, column: 5)
!3156 = distinct !DILexicalBlock(scope: !3149, file: !581, line: 142, column: 7)
!3157 = !DILocation(line: 0, scope: !3149, inlinedAt: !3158)
!3158 = distinct !DILocation(line: 274, column: 10, scope: !3140)
!3159 = !DILocalVariable(name: "category", arg: 1, scope: !3160, file: !581, line: 60, type: !23)
!3160 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !581, file: !581, line: 60, type: !3161, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !580, retainedNodes: !3163)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!6, !23}
!3163 = !{!3159, !3164}
!3164 = !DILocalVariable(name: "result", scope: !3160, file: !581, line: 62, type: !6)
!3165 = !DILocation(line: 0, scope: !3160, inlinedAt: !3166)
!3166 = distinct !DILocation(line: 140, column: 24, scope: !3149, inlinedAt: !3158)
!3167 = !DILocation(line: 62, column: 24, scope: !3160, inlinedAt: !3166)
!3168 = !DILocation(line: 142, column: 14, scope: !3156, inlinedAt: !3158)
!3169 = !DILocation(line: 142, column: 7, scope: !3149, inlinedAt: !3158)
!3170 = !DILocation(line: 145, column: 19, scope: !3171, inlinedAt: !3158)
!3171 = distinct !DILexicalBlock(scope: !3172, file: !581, line: 145, column: 11)
!3172 = distinct !DILexicalBlock(scope: !3156, file: !581, line: 143, column: 5)
!3173 = !DILocation(line: 145, column: 11, scope: !3172, inlinedAt: !3158)
!3174 = !DILocation(line: 149, column: 16, scope: !3171, inlinedAt: !3158)
!3175 = !DILocation(line: 149, column: 9, scope: !3171, inlinedAt: !3158)
!3176 = !DILocation(line: 154, column: 23, scope: !3155, inlinedAt: !3158)
!3177 = !DILocation(line: 0, scope: !3155, inlinedAt: !3158)
!3178 = !DILocation(line: 155, column: 18, scope: !3179, inlinedAt: !3158)
!3179 = distinct !DILexicalBlock(scope: !3155, file: !581, line: 155, column: 11)
!3180 = !DILocation(line: 155, column: 11, scope: !3155, inlinedAt: !3158)
!3181 = !DILocation(line: 157, column: 39, scope: !3182, inlinedAt: !3158)
!3182 = distinct !DILexicalBlock(scope: !3179, file: !581, line: 156, column: 9)
!3183 = !DILocalVariable(name: "__dest", arg: 1, scope: !3184, file: !800, line: 26, type: !803)
!3184 = distinct !DISubprogram(name: "memcpy", scope: !800, file: !800, line: 26, type: !801, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !580, retainedNodes: !3185)
!3185 = !{!3183, !3186, !3187}
!3186 = !DILocalVariable(name: "__src", arg: 2, scope: !3184, file: !800, line: 26, type: !804)
!3187 = !DILocalVariable(name: "__len", arg: 3, scope: !3184, file: !800, line: 26, type: !91)
!3188 = !DILocation(line: 0, scope: !3184, inlinedAt: !3189)
!3189 = distinct !DILocation(line: 157, column: 11, scope: !3182, inlinedAt: !3158)
!3190 = !DILocation(line: 29, column: 10, scope: !3184, inlinedAt: !3189)
!3191 = !DILocation(line: 158, column: 11, scope: !3182, inlinedAt: !3158)
!3192 = !DILocation(line: 162, column: 23, scope: !3193, inlinedAt: !3158)
!3193 = distinct !DILexicalBlock(scope: !3194, file: !581, line: 162, column: 15)
!3194 = distinct !DILexicalBlock(scope: !3179, file: !581, line: 161, column: 9)
!3195 = !DILocation(line: 162, column: 15, scope: !3194, inlinedAt: !3158)
!3196 = !DILocation(line: 167, column: 44, scope: !3197, inlinedAt: !3158)
!3197 = distinct !DILexicalBlock(scope: !3193, file: !581, line: 163, column: 13)
!3198 = !DILocation(line: 0, scope: !3184, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 167, column: 15, scope: !3197, inlinedAt: !3158)
!3200 = !DILocation(line: 29, column: 10, scope: !3184, inlinedAt: !3199)
!3201 = !DILocation(line: 168, column: 15, scope: !3197, inlinedAt: !3158)
!3202 = !DILocation(line: 168, column: 32, scope: !3197, inlinedAt: !3158)
!3203 = !DILocation(line: 169, column: 13, scope: !3197, inlinedAt: !3158)
!3204 = !DILocation(line: 0, scope: !3156, inlinedAt: !3158)
!3205 = !DILocation(line: 274, column: 3, scope: !3140)
!3206 = distinct !DISubprogram(name: "setlocale_null", scope: !581, file: !581, line: 301, type: !3161, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !580, retainedNodes: !3207)
!3207 = !{!3208}
!3208 = !DILocalVariable(name: "category", arg: 1, scope: !3206, file: !581, line: 301, type: !23)
!3209 = !DILocation(line: 0, scope: !3206)
!3210 = !DILocation(line: 0, scope: !3160, inlinedAt: !3211)
!3211 = distinct !DILocation(line: 304, column: 10, scope: !3206)
!3212 = !DILocation(line: 62, column: 24, scope: !3160, inlinedAt: !3211)
!3213 = !DILocation(line: 304, column: 3, scope: !3206)
!3214 = distinct !DISubprogram(name: "rpl_fclose", scope: !583, file: !583, line: 58, type: !3215, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !3251)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!23, !3217}
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2581, line: 7, baseType: !3219)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !677, line: 49, size: 1728, elements: !3220)
!3220 = !{!3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3219, file: !677, line: 51, baseType: !23, size: 32)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3219, file: !677, line: 54, baseType: !47, size: 64, offset: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3219, file: !677, line: 55, baseType: !47, size: 64, offset: 128)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3219, file: !677, line: 56, baseType: !47, size: 64, offset: 192)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3219, file: !677, line: 57, baseType: !47, size: 64, offset: 256)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3219, file: !677, line: 58, baseType: !47, size: 64, offset: 320)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3219, file: !677, line: 59, baseType: !47, size: 64, offset: 384)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3219, file: !677, line: 60, baseType: !47, size: 64, offset: 448)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3219, file: !677, line: 61, baseType: !47, size: 64, offset: 512)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3219, file: !677, line: 64, baseType: !47, size: 64, offset: 576)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3219, file: !677, line: 65, baseType: !47, size: 64, offset: 640)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3219, file: !677, line: 66, baseType: !47, size: 64, offset: 704)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3219, file: !677, line: 68, baseType: !692, size: 64, offset: 768)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3219, file: !677, line: 70, baseType: !3235, size: 64, offset: 832)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3219, file: !677, line: 72, baseType: !23, size: 32, offset: 896)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3219, file: !677, line: 73, baseType: !23, size: 32, offset: 928)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3219, file: !677, line: 74, baseType: !698, size: 64, offset: 960)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3219, file: !677, line: 77, baseType: !90, size: 16, offset: 1024)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3219, file: !677, line: 78, baseType: !703, size: 8, offset: 1040)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3219, file: !677, line: 79, baseType: !705, size: 8, offset: 1048)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3219, file: !677, line: 81, baseType: !709, size: 64, offset: 1088)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3219, file: !677, line: 89, baseType: !712, size: 64, offset: 1152)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3219, file: !677, line: 91, baseType: !714, size: 64, offset: 1216)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3219, file: !677, line: 92, baseType: !717, size: 64, offset: 1280)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3219, file: !677, line: 93, baseType: !3235, size: 64, offset: 1344)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3219, file: !677, line: 94, baseType: !46, size: 64, offset: 1408)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3219, file: !677, line: 95, baseType: !91, size: 64, offset: 1472)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3219, file: !677, line: 96, baseType: !23, size: 32, offset: 1536)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3219, file: !677, line: 98, baseType: !724, size: 160, offset: 1568)
!3251 = !{!3252, !3253, !3254, !3255}
!3252 = !DILocalVariable(name: "fp", arg: 1, scope: !3214, file: !583, line: 58, type: !3217)
!3253 = !DILocalVariable(name: "saved_errno", scope: !3214, file: !583, line: 60, type: !23)
!3254 = !DILocalVariable(name: "fd", scope: !3214, file: !583, line: 61, type: !23)
!3255 = !DILocalVariable(name: "result", scope: !3214, file: !583, line: 62, type: !23)
!3256 = !DILocation(line: 0, scope: !3214)
!3257 = !DILocation(line: 65, column: 8, scope: !3214)
!3258 = !DILocation(line: 66, column: 10, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3214, file: !583, line: 66, column: 7)
!3260 = !DILocation(line: 66, column: 7, scope: !3214)
!3261 = !DILocation(line: 67, column: 12, scope: !3259)
!3262 = !DILocation(line: 67, column: 5, scope: !3259)
!3263 = !DILocation(line: 72, column: 9, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3214, file: !583, line: 72, column: 7)
!3265 = !DILocation(line: 72, column: 23, scope: !3264)
!3266 = !DILocation(line: 72, column: 33, scope: !3264)
!3267 = !DILocation(line: 72, column: 26, scope: !3264)
!3268 = !DILocation(line: 72, column: 59, scope: !3264)
!3269 = !DILocation(line: 73, column: 7, scope: !3264)
!3270 = !DILocation(line: 73, column: 10, scope: !3264)
!3271 = !DILocation(line: 72, column: 7, scope: !3214)
!3272 = !DILocation(line: 100, column: 12, scope: !3214)
!3273 = !DILocation(line: 105, column: 7, scope: !3214)
!3274 = !DILocation(line: 74, column: 19, scope: !3264)
!3275 = !DILocation(line: 105, column: 19, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3214, file: !583, line: 105, column: 7)
!3277 = !DILocation(line: 107, column: 13, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3276, file: !583, line: 106, column: 5)
!3279 = !DILocation(line: 109, column: 5, scope: !3278)
!3280 = !DILocation(line: 112, column: 1, scope: !3214)
!3281 = !DISubprogram(name: "fileno", scope: !672, file: !672, line: 785, type: !3282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!23, !3235}
!3284 = !DISubprogram(name: "fclose", scope: !672, file: !672, line: 213, type: !3282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3285 = !DISubprogram(name: "lseek", scope: !2573, file: !2573, line: 334, type: !3286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!700, !23, !700, !23}
!3288 = distinct !DISubprogram(name: "rpl_fflush", scope: !585, file: !585, line: 129, type: !3289, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !584, retainedNodes: !3325)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{!23, !3291}
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2581, line: 7, baseType: !3293)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !677, line: 49, size: 1728, elements: !3294)
!3294 = !{!3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3293, file: !677, line: 51, baseType: !23, size: 32)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3293, file: !677, line: 54, baseType: !47, size: 64, offset: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3293, file: !677, line: 55, baseType: !47, size: 64, offset: 128)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3293, file: !677, line: 56, baseType: !47, size: 64, offset: 192)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3293, file: !677, line: 57, baseType: !47, size: 64, offset: 256)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3293, file: !677, line: 58, baseType: !47, size: 64, offset: 320)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3293, file: !677, line: 59, baseType: !47, size: 64, offset: 384)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3293, file: !677, line: 60, baseType: !47, size: 64, offset: 448)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3293, file: !677, line: 61, baseType: !47, size: 64, offset: 512)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3293, file: !677, line: 64, baseType: !47, size: 64, offset: 576)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3293, file: !677, line: 65, baseType: !47, size: 64, offset: 640)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3293, file: !677, line: 66, baseType: !47, size: 64, offset: 704)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3293, file: !677, line: 68, baseType: !692, size: 64, offset: 768)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3293, file: !677, line: 70, baseType: !3309, size: 64, offset: 832)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3293, file: !677, line: 72, baseType: !23, size: 32, offset: 896)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3293, file: !677, line: 73, baseType: !23, size: 32, offset: 928)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3293, file: !677, line: 74, baseType: !698, size: 64, offset: 960)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3293, file: !677, line: 77, baseType: !90, size: 16, offset: 1024)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3293, file: !677, line: 78, baseType: !703, size: 8, offset: 1040)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3293, file: !677, line: 79, baseType: !705, size: 8, offset: 1048)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3293, file: !677, line: 81, baseType: !709, size: 64, offset: 1088)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3293, file: !677, line: 89, baseType: !712, size: 64, offset: 1152)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3293, file: !677, line: 91, baseType: !714, size: 64, offset: 1216)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3293, file: !677, line: 92, baseType: !717, size: 64, offset: 1280)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3293, file: !677, line: 93, baseType: !3309, size: 64, offset: 1344)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3293, file: !677, line: 94, baseType: !46, size: 64, offset: 1408)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3293, file: !677, line: 95, baseType: !91, size: 64, offset: 1472)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3293, file: !677, line: 96, baseType: !23, size: 32, offset: 1536)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3293, file: !677, line: 98, baseType: !724, size: 160, offset: 1568)
!3325 = !{!3326}
!3326 = !DILocalVariable(name: "stream", arg: 1, scope: !3288, file: !585, line: 129, type: !3291)
!3327 = !DILocation(line: 0, scope: !3288)
!3328 = !DILocation(line: 150, column: 14, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3288, file: !585, line: 150, column: 7)
!3330 = !DILocation(line: 150, column: 22, scope: !3329)
!3331 = !DILocation(line: 150, column: 27, scope: !3329)
!3332 = !DILocation(line: 150, column: 7, scope: !3288)
!3333 = !DILocation(line: 151, column: 12, scope: !3329)
!3334 = !DILocation(line: 151, column: 5, scope: !3329)
!3335 = !DILocalVariable(name: "fp", arg: 1, scope: !3336, file: !585, line: 41, type: !3291)
!3336 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !585, file: !585, line: 41, type: !3337, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !584, retainedNodes: !3339)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{null, !3291}
!3339 = !{!3335}
!3340 = !DILocation(line: 0, scope: !3336, inlinedAt: !3341)
!3341 = distinct !DILocation(line: 156, column: 3, scope: !3288)
!3342 = !DILocation(line: 43, column: 11, scope: !3343, inlinedAt: !3341)
!3343 = distinct !DILexicalBlock(scope: !3336, file: !585, line: 43, column: 7)
!3344 = !DILocation(line: 43, column: 18, scope: !3343, inlinedAt: !3341)
!3345 = !DILocation(line: 43, column: 7, scope: !3336, inlinedAt: !3341)
!3346 = !DILocation(line: 45, column: 5, scope: !3343, inlinedAt: !3341)
!3347 = !DILocation(line: 158, column: 10, scope: !3288)
!3348 = !DILocation(line: 158, column: 3, scope: !3288)
!3349 = !DILocation(line: 235, column: 1, scope: !3288)
!3350 = !DISubprogram(name: "fflush", scope: !672, file: !672, line: 218, type: !3351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!23, !3309}
!3353 = distinct !DISubprogram(name: "rpl_fseeko", scope: !587, file: !587, line: 28, type: !3354, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !3391)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!23, !3356, !3390, !23}
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2581, line: 7, baseType: !3358)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !677, line: 49, size: 1728, elements: !3359)
!3359 = !{!3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3358, file: !677, line: 51, baseType: !23, size: 32)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3358, file: !677, line: 54, baseType: !47, size: 64, offset: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3358, file: !677, line: 55, baseType: !47, size: 64, offset: 128)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3358, file: !677, line: 56, baseType: !47, size: 64, offset: 192)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3358, file: !677, line: 57, baseType: !47, size: 64, offset: 256)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3358, file: !677, line: 58, baseType: !47, size: 64, offset: 320)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3358, file: !677, line: 59, baseType: !47, size: 64, offset: 384)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3358, file: !677, line: 60, baseType: !47, size: 64, offset: 448)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3358, file: !677, line: 61, baseType: !47, size: 64, offset: 512)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3358, file: !677, line: 64, baseType: !47, size: 64, offset: 576)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3358, file: !677, line: 65, baseType: !47, size: 64, offset: 640)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3358, file: !677, line: 66, baseType: !47, size: 64, offset: 704)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3358, file: !677, line: 68, baseType: !692, size: 64, offset: 768)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3358, file: !677, line: 70, baseType: !3374, size: 64, offset: 832)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3358, file: !677, line: 72, baseType: !23, size: 32, offset: 896)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3358, file: !677, line: 73, baseType: !23, size: 32, offset: 928)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3358, file: !677, line: 74, baseType: !698, size: 64, offset: 960)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3358, file: !677, line: 77, baseType: !90, size: 16, offset: 1024)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3358, file: !677, line: 78, baseType: !703, size: 8, offset: 1040)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3358, file: !677, line: 79, baseType: !705, size: 8, offset: 1048)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3358, file: !677, line: 81, baseType: !709, size: 64, offset: 1088)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3358, file: !677, line: 89, baseType: !712, size: 64, offset: 1152)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3358, file: !677, line: 91, baseType: !714, size: 64, offset: 1216)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3358, file: !677, line: 92, baseType: !717, size: 64, offset: 1280)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3358, file: !677, line: 93, baseType: !3374, size: 64, offset: 1344)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3358, file: !677, line: 94, baseType: !46, size: 64, offset: 1408)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3358, file: !677, line: 95, baseType: !91, size: 64, offset: 1472)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3358, file: !677, line: 96, baseType: !23, size: 32, offset: 1536)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3358, file: !677, line: 98, baseType: !724, size: 160, offset: 1568)
!3390 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !672, line: 63, baseType: !698)
!3391 = !{!3392, !3393, !3394, !3395}
!3392 = !DILocalVariable(name: "fp", arg: 1, scope: !3353, file: !587, line: 28, type: !3356)
!3393 = !DILocalVariable(name: "offset", arg: 2, scope: !3353, file: !587, line: 28, type: !3390)
!3394 = !DILocalVariable(name: "whence", arg: 3, scope: !3353, file: !587, line: 28, type: !23)
!3395 = !DILocalVariable(name: "pos", scope: !3396, file: !587, line: 117, type: !3390)
!3396 = distinct !DILexicalBlock(scope: !3397, file: !587, line: 113, column: 5)
!3397 = distinct !DILexicalBlock(scope: !3353, file: !587, line: 52, column: 7)
!3398 = !DILocation(line: 0, scope: !3353)
!3399 = !DILocation(line: 52, column: 11, scope: !3397)
!3400 = !{!3083, !606, i64 16}
!3401 = !DILocation(line: 52, column: 31, scope: !3397)
!3402 = !{!3083, !606, i64 8}
!3403 = !DILocation(line: 52, column: 24, scope: !3397)
!3404 = !DILocation(line: 53, column: 7, scope: !3397)
!3405 = !DILocation(line: 53, column: 14, scope: !3397)
!3406 = !{!3083, !606, i64 40}
!3407 = !DILocation(line: 53, column: 35, scope: !3397)
!3408 = !{!3083, !606, i64 32}
!3409 = !DILocation(line: 53, column: 28, scope: !3397)
!3410 = !DILocation(line: 54, column: 7, scope: !3397)
!3411 = !DILocation(line: 54, column: 14, scope: !3397)
!3412 = !{!3083, !606, i64 72}
!3413 = !DILocation(line: 54, column: 28, scope: !3397)
!3414 = !DILocation(line: 52, column: 7, scope: !3353)
!3415 = !DILocation(line: 117, column: 26, scope: !3396)
!3416 = !DILocation(line: 117, column: 19, scope: !3396)
!3417 = !DILocation(line: 0, scope: !3396)
!3418 = !DILocation(line: 118, column: 15, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3396, file: !587, line: 118, column: 11)
!3420 = !DILocation(line: 118, column: 11, scope: !3396)
!3421 = !DILocation(line: 129, column: 11, scope: !3396)
!3422 = !DILocation(line: 129, column: 18, scope: !3396)
!3423 = !DILocation(line: 130, column: 11, scope: !3396)
!3424 = !DILocation(line: 130, column: 19, scope: !3396)
!3425 = !{!3083, !1990, i64 144}
!3426 = !DILocation(line: 161, column: 7, scope: !3396)
!3427 = !DILocation(line: 163, column: 10, scope: !3353)
!3428 = !DILocation(line: 163, column: 3, scope: !3353)
!3429 = !DILocation(line: 164, column: 1, scope: !3353)
!3430 = !DISubprogram(name: "fseeko", scope: !672, file: !672, line: 712, type: !3431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!23, !3374, !700, !23}
