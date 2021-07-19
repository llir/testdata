; ModuleID = 'coreutils-8.32/src/tty.bc'
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
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [135 x i8] c"Print the file name of the terminal connected to standard input.\0A\0A  -s, --silent, --quiet   print nothing, only return an exit status\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"tty\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.14 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
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
@silent = internal unnamed_addr global i1 false, align 1, !dbg !0
@.str.9 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@longopts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !17
@.str.11 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"not a tty\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"silent\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), align 8, !dbg !35
@.str.33 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !41
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !46
@.str.36 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.37 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.38 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !48
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !54
@.str.45 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.46 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.47 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.49, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.50, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.51, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.52, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.53, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.54, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.55, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.56, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.57, i32 0, i32 0), i8* null], align 16, !dbg !60
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !105
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !111
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !123
@.str.11.58 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.59 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.60 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.61 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.62 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.63 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.64 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !130
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !137
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !125
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !139
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !145
@.str.1.104 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.114 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.117 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.118 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !591 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !595, metadata !DIExpression()), !dbg !596
  %3 = icmp eq i32 %0, 0, !dbg !597
  br i1 %3, label %9, label %4, !dbg !599

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !600, !tbaa !602
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #24, !dbg !600
  %7 = load i8*, i8** @program_name, align 8, !dbg !600, !tbaa !602
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #24, !dbg !600
  br label %58, !dbg !600

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 5) #24, !dbg !606
  %11 = load i8*, i8** @program_name, align 8, !dbg !606, !tbaa !602
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #24, !dbg !606
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.2, i64 0, i64 0), i32 5) #24, !dbg !608
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !608, !tbaa !602
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !608
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #24, !dbg !609
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !609, !tbaa !602
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !609
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #24, !dbg !610
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !610, !tbaa !602
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !610
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), metadata !611, metadata !DIExpression()) #24, !dbg !630
  %22 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !632
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %22) #24, !dbg !632
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !617, metadata !DIExpression()) #24, !dbg !633
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %22, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #24, !dbg !633
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), metadata !626, metadata !DIExpression()) #24, !dbg !630
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !627, metadata !DIExpression()) #24, !dbg !630
  %23 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !634
  call void @llvm.dbg.value(metadata %struct.infomap* %23, metadata !627, metadata !DIExpression()) #24, !dbg !630
  br label %24, !dbg !635

24:                                               ; preds = %29, %9
  %25 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), %9 ]
  %26 = phi %struct.infomap* [ %30, %29 ], [ %23, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !627, metadata !DIExpression()) #24, !dbg !630
  %27 = tail call i32 @strcmp(i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* nonnull %25) #25, !dbg !636
  %28 = icmp eq i32 %27, 0, !dbg !636
  br i1 %28, label %34, label %29, !dbg !635

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i64 1, !dbg !637
  call void @llvm.dbg.value(metadata %struct.infomap* %30, metadata !627, metadata !DIExpression()) #24, !dbg !630
  %31 = getelementptr inbounds %struct.infomap, %struct.infomap* %30, i64 0, i32 0, !dbg !638
  %32 = load i8*, i8** %31, align 8, !dbg !638, !tbaa !639
  %33 = icmp eq i8* %32, null, !dbg !641
  br i1 %33, label %34, label %24, !dbg !642, !llvm.loop !643

34:                                               ; preds = %29, %24
  %35 = phi %struct.infomap* [ %26, %24 ], [ %30, %29 ]
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 0, i32 1, !dbg !645
  %37 = load i8*, i8** %36, align 8, !dbg !645, !tbaa !647
  %38 = icmp eq i8* %37, null, !dbg !648
  %39 = select i1 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %37, !dbg !649
  call void @llvm.dbg.value(metadata i8* %39, metadata !626, metadata !DIExpression()) #24, !dbg !630
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 5) #24, !dbg !650
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0)) #24, !dbg !650
  %42 = tail call i8* @setlocale(i32 5, i8* null) #24, !dbg !651
  call void @llvm.dbg.value(metadata i8* %42, metadata !629, metadata !DIExpression()) #24, !dbg !630
  %43 = icmp eq i8* %42, null, !dbg !652
  br i1 %43, label %51, label %44, !dbg !654

44:                                               ; preds = %34
  %45 = tail call i32 @strncmp(i8* nonnull %42, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #25, !dbg !655
  %46 = icmp eq i32 %45, 0, !dbg !655
  br i1 %46, label %51, label %47, !dbg !656

47:                                               ; preds = %44
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.25, i64 0, i64 0), i32 5) #24, !dbg !657
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !657, !tbaa !602
  %50 = tail call i32 @fputs_unlocked(i8* %48, %struct._IO_FILE* %49) #24, !dbg !657
  br label %51, !dbg !659

51:                                               ; preds = %34, %44, %47
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0), i32 5) #24, !dbg !660
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #24, !dbg !660
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i32 5) #24, !dbg !661
  %55 = icmp eq i8* %39, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), !dbg !661
  %56 = select i1 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !661
  %57 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %54, i8* %39, i8* %56) #24, !dbg !661
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %22) #24, !dbg !662
  br label %58

58:                                               ; preds = %51, %4
  tail call void @exit(i32 %0) #26, !dbg !663
  unreachable, !dbg !663
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !664 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !668 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !724 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !728 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !733, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata i8** %1, metadata !734, metadata !DIExpression()), !dbg !738
  %3 = load i8*, i8** %1, align 8, !dbg !739, !tbaa !602
  tail call void @set_program_name(i8* %3) #24, !dbg !740
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #24, !dbg !741
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #24, !dbg !742
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #24, !dbg !743
  call void @llvm.dbg.value(metadata i32 3, metadata !744, metadata !DIExpression()), !dbg !747
  store volatile i32 3, i32* @exit_failure, align 4, !dbg !749, !tbaa !751
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #24, !dbg !753
  br label %8, !dbg !754

8:                                                ; preds = %8, %2
  %9 = phi i1 [ false, %2 ], [ true, %8 ], !dbg !738
  store i1 %9, i1* @silent, align 1, !dbg !738
  %10 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #24, !dbg !755
  call void @llvm.dbg.value(metadata i32 %10, metadata !735, metadata !DIExpression()), !dbg !738
  switch i32 %10, label %15 [
    i32 -1, label %16
    i32 115, label %8
    i32 -130, label %11
    i32 -131, label %12
  ], !dbg !754, !llvm.loop !756

11:                                               ; preds = %8
  tail call void @usage(i32 0) #27, !dbg !758
  unreachable, !dbg !758

12:                                               ; preds = %8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !761, !tbaa !602
  %14 = load i8*, i8** @Version, align 8, !dbg !761, !tbaa !602
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* null) #24, !dbg !761
  tail call void @exit(i32 0) #26, !dbg !761
  unreachable, !dbg !761

15:                                               ; preds = %8
  tail call void @usage(i32 2) #27, !dbg !762
  unreachable, !dbg !762

16:                                               ; preds = %8
  %17 = load i32, i32* @optind, align 4, !dbg !763, !tbaa !751
  %18 = icmp slt i32 %17, %0, !dbg !765
  br i1 %18, label %19, label %26, !dbg !766

19:                                               ; preds = %16
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 5) #24, !dbg !767
  %21 = load i32, i32* @optind, align 4, !dbg !769, !tbaa !751
  %22 = sext i32 %21 to i64, !dbg !770
  %23 = getelementptr inbounds i8*, i8** %1, i64 %22, !dbg !770
  %24 = load i8*, i8** %23, align 8, !dbg !770, !tbaa !602
  %25 = tail call i8* @quote(i8* %24) #24, !dbg !771
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %20, i8* %25) #24, !dbg !772
  tail call void @usage(i32 2) #27, !dbg !773
  unreachable, !dbg !773

26:                                               ; preds = %16
  %27 = tail call i32* @__errno_location() #28, !dbg !774
  store i32 2, i32* %27, align 4, !dbg !775, !tbaa !751
  %28 = load i1, i1* @silent, align 1, !dbg !776
  br i1 %28, label %29, label %33, !dbg !778

29:                                               ; preds = %26
  %30 = tail call i32 @isatty(i32 0) #24, !dbg !779
  %31 = icmp eq i32 %30, 0, !dbg !779
  %32 = zext i1 %31 to i32, !dbg !779
  br label %42, !dbg !780

33:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 0, metadata !736, metadata !DIExpression()), !dbg !738
  %34 = tail call i8* @ttyname(i32 0) #24, !dbg !781
  call void @llvm.dbg.value(metadata i8* %34, metadata !737, metadata !DIExpression()), !dbg !738
  %35 = icmp eq i8* %34, null, !dbg !782
  br i1 %35, label %36, label %38, !dbg !784

36:                                               ; preds = %33
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 5) #24, !dbg !785
  call void @llvm.dbg.value(metadata i8* %37, metadata !737, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata i32 1, metadata !736, metadata !DIExpression()), !dbg !738
  br label %38, !dbg !787

38:                                               ; preds = %36, %33
  %39 = phi i32 [ 0, %33 ], [ 1, %36 ], !dbg !738
  %40 = phi i8* [ %34, %33 ], [ %37, %36 ], !dbg !738
  call void @llvm.dbg.value(metadata i8* %40, metadata !737, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata i32 %39, metadata !736, metadata !DIExpression()), !dbg !738
  %41 = tail call i32 @puts(i8* nonnull dereferenceable(1) %40), !dbg !788
  br label %42

42:                                               ; preds = %38, %29
  %43 = phi i32 [ %32, %29 ], [ %39, %38 ], !dbg !738
  ret i32 %43, !dbg !789
}

; Function Attrs: nounwind
declare !dbg !790 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !793 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !796 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !803 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !809 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !813 i32 @isatty(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !817 i8* @ttyname(i32) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !820 noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #10 !dbg !823 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !825, metadata !DIExpression()), !dbg !826
  store i8* %0, i8** @file_name, align 8, !dbg !827, !tbaa !602
  ret void, !dbg !828
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #10 !dbg !829 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !833, metadata !DIExpression()), !dbg !834
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !835, !tbaa !836
  ret void, !dbg !838
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !839 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !844, !tbaa !602
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #24, !dbg !845
  %3 = icmp eq i32 %2, 0, !dbg !846
  br i1 %3, label %22, label %4, !dbg !847

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !848, !tbaa !836, !range !849
  %6 = icmp eq i8 %5, 0, !dbg !848
  br i1 %6, label %11, label %7, !dbg !850

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #28, !dbg !851
  %9 = load i32, i32* %8, align 4, !dbg !851, !tbaa !751
  %10 = icmp eq i32 %9, 32, !dbg !852
  br i1 %10, label %22, label %11, !dbg !853

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i32 5) #24, !dbg !854
  call void @llvm.dbg.value(metadata i8* %12, metadata !841, metadata !DIExpression()), !dbg !855
  %13 = load i8*, i8** @file_name, align 8, !dbg !856, !tbaa !602
  %14 = icmp eq i8* %13, null, !dbg !856
  %15 = tail call i32* @__errno_location() #28, !dbg !858
  %16 = load i32, i32* %15, align 4, !dbg !858, !tbaa !751
  br i1 %14, label %19, label %17, !dbg !859

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #24, !dbg !860
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.37, i64 0, i64 0), i8* %18, i8* %12) #24, !dbg !861
  br label %20, !dbg !861

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.38, i64 0, i64 0), i8* %12) #24, !dbg !862
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !863, !tbaa !751
  tail call void @_exit(i32 %21) #26, !dbg !864
  unreachable, !dbg !864

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !865, !tbaa !602
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #24, !dbg !867
  %25 = icmp eq i32 %24, 0, !dbg !868
  br i1 %25, label %28, label %26, !dbg !869

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !870, !tbaa !751
  tail call void @_exit(i32 %27) #26, !dbg !871
  unreachable, !dbg !871

28:                                               ; preds = %22
  ret void, !dbg !872
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !873 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !875, metadata !DIExpression()), !dbg !878
  %2 = icmp eq i8* %0, null, !dbg !879
  br i1 %2, label %3, label %6, !dbg !881

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !882, !tbaa !602
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.45, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #29, !dbg !884
  tail call void @abort() #26, !dbg !885
  unreachable, !dbg !885

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #25, !dbg !886
  call void @llvm.dbg.value(metadata i8* %7, metadata !876, metadata !DIExpression()), !dbg !878
  %8 = icmp eq i8* %7, null, !dbg !887
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !888
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !888
  call void @llvm.dbg.value(metadata i8* %10, metadata !877, metadata !DIExpression()), !dbg !878
  %11 = ptrtoint i8* %10 to i64, !dbg !889
  %12 = ptrtoint i8* %0 to i64, !dbg !889
  %13 = sub i64 %11, %12, !dbg !889
  %14 = icmp sgt i64 %13, 6, !dbg !891
  br i1 %14, label %15, label %24, !dbg !892

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !893
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.46, i64 0, i64 0), i64 7) #25, !dbg !894
  %18 = icmp eq i32 %17, 0, !dbg !895
  br i1 %18, label %19, label %24, !dbg !896

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !875, metadata !DIExpression()), !dbg !878
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.47, i64 0, i64 0), i64 3) #25, !dbg !897
  %21 = icmp eq i32 %20, 0, !dbg !900
  br i1 %21, label %22, label %24, !dbg !901

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !902
  call void @llvm.dbg.value(metadata i8* %23, metadata !875, metadata !DIExpression()), !dbg !878
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !904, !tbaa !602
  br label %24, !dbg !905

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !875, metadata !DIExpression()), !dbg !878
  store i8* %25, i8** @program_name, align 8, !dbg !906, !tbaa !602
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !907, !tbaa !602
  ret void, !dbg !908
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !909 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !914, metadata !DIExpression()), !dbg !917
  %2 = tail call i32* @__errno_location() #28, !dbg !918
  %3 = load i32, i32* %2, align 4, !dbg !918, !tbaa !751
  call void @llvm.dbg.value(metadata i32 %3, metadata !915, metadata !DIExpression()), !dbg !917
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !919
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !919
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !919
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #24, !dbg !920
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !920
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !916, metadata !DIExpression()), !dbg !917
  store i32 %3, i32* %2, align 4, !dbg !921, !tbaa !751
  ret %struct.quoting_options* %8, !dbg !922
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #13 !dbg !923 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !929, metadata !DIExpression()), !dbg !930
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !931
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !931
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !932
  %5 = load i32, i32* %4, align 8, !dbg !932, !tbaa !933
  ret i32 %5, !dbg !935
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !936 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !940, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.value(metadata i32 %1, metadata !941, metadata !DIExpression()), !dbg !942
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !943
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !943
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !944
  store i32 %1, i32* %5, align 8, !dbg !945, !tbaa !933
  ret void, !dbg !946
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #14 !dbg !947 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !951, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata i8 %1, metadata !952, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata i32 %2, metadata !953, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata i8 %1, metadata !954, metadata !DIExpression()), !dbg !960
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !961
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !961
  %6 = lshr i8 %1, 5, !dbg !962
  %7 = zext i8 %6 to i64, !dbg !962
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !963
  call void @llvm.dbg.value(metadata i32* %8, metadata !956, metadata !DIExpression()), !dbg !960
  %9 = and i8 %1, 31, !dbg !964
  %10 = zext i8 %9 to i32, !dbg !964
  call void @llvm.dbg.value(metadata i32 %10, metadata !958, metadata !DIExpression()), !dbg !960
  %11 = load i32, i32* %8, align 4, !dbg !965, !tbaa !751
  %12 = lshr i32 %11, %10, !dbg !966
  %13 = and i32 %12, 1, !dbg !967
  call void @llvm.dbg.value(metadata i32 %13, metadata !959, metadata !DIExpression()), !dbg !960
  %14 = and i32 %2, 1, !dbg !968
  %15 = xor i32 %13, %14, !dbg !969
  %16 = shl i32 %15, %10, !dbg !970
  %17 = xor i32 %16, %11, !dbg !971
  store i32 %17, i32* %8, align 4, !dbg !971, !tbaa !751
  ret i32 %13, !dbg !972
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #14 !dbg !973 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !977, metadata !DIExpression()), !dbg !980
  call void @llvm.dbg.value(metadata i32 %1, metadata !978, metadata !DIExpression()), !dbg !980
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !981
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !983
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !977, metadata !DIExpression()), !dbg !980
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !984
  %6 = load i32, i32* %5, align 4, !dbg !984, !tbaa !985
  call void @llvm.dbg.value(metadata i32 %6, metadata !979, metadata !DIExpression()), !dbg !980
  store i32 %1, i32* %5, align 4, !dbg !986, !tbaa !985
  ret i32 %6, !dbg !987
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !988 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !992, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.value(metadata i8* %1, metadata !993, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.value(metadata i8* %2, metadata !994, metadata !DIExpression()), !dbg !995
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !996
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !998
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !992, metadata !DIExpression()), !dbg !995
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !999
  store i32 10, i32* %6, align 8, !dbg !1000, !tbaa !933
  %7 = icmp ne i8* %1, null, !dbg !1001
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1003
  br i1 %9, label %11, label %10, !dbg !1003

10:                                               ; preds = %3
  tail call void @abort() #26, !dbg !1004
  unreachable, !dbg !1004

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1005
  store i8* %1, i8** %12, align 8, !dbg !1006, !tbaa !1007
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1008
  store i8* %2, i8** %13, align 8, !dbg !1009, !tbaa !1010
  ret void, !dbg !1011
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1012 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1016, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i64 %1, metadata !1017, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i8* %2, metadata !1018, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i64 %3, metadata !1019, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1020, metadata !DIExpression()), !dbg !1024
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1025
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1025
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1021, metadata !DIExpression()), !dbg !1024
  %8 = tail call i32* @__errno_location() #28, !dbg !1026
  %9 = load i32, i32* %8, align 4, !dbg !1026, !tbaa !751
  call void @llvm.dbg.value(metadata i32 %9, metadata !1022, metadata !DIExpression()), !dbg !1024
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1027
  %11 = load i32, i32* %10, align 8, !dbg !1027, !tbaa !933
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1028
  %13 = load i32, i32* %12, align 4, !dbg !1028, !tbaa !985
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1029
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1030
  %16 = load i8*, i8** %15, align 8, !dbg !1030, !tbaa !1007
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1031
  %18 = load i8*, i8** %17, align 8, !dbg !1031, !tbaa !1010
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1032
  call void @llvm.dbg.value(metadata i64 %19, metadata !1023, metadata !DIExpression()), !dbg !1024
  store i32 %9, i32* %8, align 4, !dbg !1033, !tbaa !751
  ret i64 %19, !dbg !1034
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1035 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1041, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %1, metadata !1042, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %2, metadata !1043, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %3, metadata !1044, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i32 %4, metadata !1045, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i32 %5, metadata !1046, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i32* %6, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %7, metadata !1048, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %8, metadata !1049, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 0, metadata !1051, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 0, metadata !1052, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* null, metadata !1053, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 0, metadata !1054, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 0, metadata !1055, metadata !DIExpression()), !dbg !1111
  %13 = tail call i64 @__ctype_get_mb_cur_max() #24, !dbg !1112
  %14 = icmp eq i64 %13, 1, !dbg !1113
  call void @llvm.dbg.value(metadata i1 %14, metadata !1056, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1111
  %15 = lshr i32 %5, 1, !dbg !1114
  %16 = trunc i32 %15 to i8, !dbg !1114
  %17 = and i8 %16, 1, !dbg !1114
  call void @llvm.dbg.value(metadata i8 %17, metadata !1057, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 0, metadata !1058, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 0, metadata !1059, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 1, metadata !1060, metadata !DIExpression()), !dbg !1111
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1115

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1116
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1117
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1118
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1119
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1111
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1120
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1121
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1122
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1042, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %38, metadata !1060, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %37, metadata !1059, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %36, metadata !1058, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %35, metadata !1057, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %34, metadata !1044, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %33, metadata !1055, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %32, metadata !1054, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %31, metadata !1053, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %30, metadata !1052, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 0, metadata !1051, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %29, metadata !1049, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %28, metadata !1048, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i32 %27, metadata !1045, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.label(metadata !1105), !dbg !1123
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
  ], !dbg !1124

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1057, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i32 5, metadata !1045, metadata !DIExpression()), !dbg !1111
  br label %92, !dbg !1125

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1057, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i32 5, metadata !1045, metadata !DIExpression()), !dbg !1111
  %42 = and i8 %35, 1, !dbg !1127
  %43 = icmp eq i8 %42, 0, !dbg !1127
  br i1 %43, label %44, label %92, !dbg !1125

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1129
  br i1 %45, label %92, label %46, !dbg !1132

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1129, !tbaa !1133
  br label %92, !dbg !1129

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.58, i64 0, i64 0), i32 %27), !dbg !1134
  call void @llvm.dbg.value(metadata i8* %48, metadata !1048, metadata !DIExpression()), !dbg !1111
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), i32 %27), !dbg !1138
  call void @llvm.dbg.value(metadata i8* %49, metadata !1049, metadata !DIExpression()), !dbg !1111
  br label %50, !dbg !1139

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1049, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %51, metadata !1048, metadata !DIExpression()), !dbg !1111
  %53 = and i8 %35, 1, !dbg !1140
  %54 = icmp eq i8 %53, 0, !dbg !1140
  br i1 %54, label %55, label %70, !dbg !1142

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1053, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 0, metadata !1051, metadata !DIExpression()), !dbg !1111
  %56 = load i8, i8* %51, align 1, !dbg !1143, !tbaa !1133
  %57 = icmp eq i8 %56, 0, !dbg !1146
  br i1 %57, label %70, label %58, !dbg !1146

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1053, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %61, metadata !1051, metadata !DIExpression()), !dbg !1111
  %62 = icmp ult i64 %61, %39, !dbg !1147
  br i1 %62, label %63, label %65, !dbg !1150

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1147
  store i8 %59, i8* %64, align 1, !dbg !1147, !tbaa !1133
  br label %65, !dbg !1147

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1150
  call void @llvm.dbg.value(metadata i64 %66, metadata !1051, metadata !DIExpression()), !dbg !1111
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1151
  call void @llvm.dbg.value(metadata i8* %67, metadata !1053, metadata !DIExpression()), !dbg !1111
  %68 = load i8, i8* %67, align 1, !dbg !1143, !tbaa !1133
  %69 = icmp eq i8 %68, 0, !dbg !1146
  br i1 %69, label %70, label %58, !dbg !1146, !llvm.loop !1152

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1154
  call void @llvm.dbg.value(metadata i64 %71, metadata !1051, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 1, metadata !1055, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %52, metadata !1053, metadata !DIExpression()), !dbg !1111
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #25, !dbg !1155
  call void @llvm.dbg.value(metadata i64 %72, metadata !1054, metadata !DIExpression()), !dbg !1111
  br label %92, !dbg !1156

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1055, metadata !DIExpression()), !dbg !1111
  br label %74, !dbg !1157

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1111
  call void @llvm.dbg.value(metadata i8 %75, metadata !1055, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 1, metadata !1057, metadata !DIExpression()), !dbg !1111
  br label %76, !dbg !1158

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1119
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1111
  call void @llvm.dbg.value(metadata i8 %78, metadata !1057, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %77, metadata !1055, metadata !DIExpression()), !dbg !1111
  %79 = and i8 %78, 1, !dbg !1159
  %80 = icmp eq i8 %79, 0, !dbg !1159
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1161
  br label %82, !dbg !1161

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1111
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1114
  call void @llvm.dbg.value(metadata i8 %84, metadata !1057, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %83, metadata !1055, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i32 2, metadata !1045, metadata !DIExpression()), !dbg !1111
  %85 = and i8 %84, 1, !dbg !1162
  %86 = icmp eq i8 %85, 0, !dbg !1162
  br i1 %86, label %87, label %92, !dbg !1164

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1165
  br i1 %88, label %92, label %89, !dbg !1168

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1165, !tbaa !1133
  br label %92, !dbg !1165

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1057, metadata !DIExpression()), !dbg !1111
  br label %92, !dbg !1169

91:                                               ; preds = %26
  call void @abort() #26, !dbg !1170
  unreachable, !dbg !1170

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1154
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %40 ], !dbg !1111
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1111
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1111
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1111
  call void @llvm.dbg.value(metadata i8 %100, metadata !1057, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %99, metadata !1055, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %98, metadata !1054, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %97, metadata !1053, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %96, metadata !1051, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %95, metadata !1049, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %94, metadata !1048, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i32 %93, metadata !1045, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 0, metadata !1050, metadata !DIExpression()), !dbg !1111
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
  br label %121, !dbg !1171

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1172
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1154
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1116
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1120
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1121
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1122
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1042, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %128, metadata !1060, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %127, metadata !1059, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %126, metadata !1058, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %125, metadata !1044, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %124, metadata !1052, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %123, metadata !1051, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %122, metadata !1050, metadata !DIExpression()), !dbg !1111
  %130 = icmp eq i64 %125, -1, !dbg !1173
  br i1 %130, label %131, label %135, !dbg !1174

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1175
  %133 = load i8, i8* %132, align 1, !dbg !1175, !tbaa !1133
  %134 = icmp eq i8 %133, 0, !dbg !1176
  br i1 %134, label %587, label %137, !dbg !1177

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1178
  br i1 %136, label %587, label %137, !dbg !1177

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1066, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8 0, metadata !1067, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8 0, metadata !1068, metadata !DIExpression()), !dbg !1179
  br i1 %106, label %138, label %153, !dbg !1180

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1182
  %140 = and i1 %107, %130, !dbg !1183
  br i1 %140, label %141, label %143, !dbg !1183

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #25, !dbg !1184
  call void @llvm.dbg.value(metadata i64 %142, metadata !1044, metadata !DIExpression()), !dbg !1111
  br label %143, !dbg !1185

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1185
  call void @llvm.dbg.value(metadata i64 %144, metadata !1044, metadata !DIExpression()), !dbg !1111
  %145 = icmp ugt i64 %139, %144, !dbg !1186
  br i1 %145, label %153, label %146, !dbg !1187

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1188
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1189
  %149 = icmp ne i32 %148, 0, !dbg !1190
  %150 = or i1 %149, %109, !dbg !1191
  %151 = xor i1 %149, true, !dbg !1191
  %152 = zext i1 %151 to i8, !dbg !1191
  br i1 %150, label %153, label %646, !dbg !1191

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1179
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1179
  call void @llvm.dbg.value(metadata i8 %156, metadata !1066, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %154, metadata !1044, metadata !DIExpression()), !dbg !1111
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1192
  %158 = load i8, i8* %157, align 1, !dbg !1192, !tbaa !1133
  call void @llvm.dbg.value(metadata i8 %158, metadata !1061, metadata !DIExpression()), !dbg !1179
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
  ], !dbg !1193

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1194

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1195

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1067, metadata !DIExpression()), !dbg !1179
  %162 = and i8 %126, 1, !dbg !1199
  %163 = icmp eq i8 %162, 0, !dbg !1199
  %164 = and i1 %110, %163, !dbg !1199
  br i1 %164, label %165, label %181, !dbg !1199

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1201
  br i1 %166, label %167, label %169, !dbg !1205

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1201
  store i8 39, i8* %168, align 1, !dbg !1201, !tbaa !1133
  br label %169, !dbg !1201

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1205
  call void @llvm.dbg.value(metadata i64 %170, metadata !1051, metadata !DIExpression()), !dbg !1111
  %171 = icmp ult i64 %170, %129, !dbg !1206
  br i1 %171, label %172, label %174, !dbg !1209

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1206
  store i8 36, i8* %173, align 1, !dbg !1206, !tbaa !1133
  br label %174, !dbg !1206

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1209
  call void @llvm.dbg.value(metadata i64 %175, metadata !1051, metadata !DIExpression()), !dbg !1111
  %176 = icmp ult i64 %175, %129, !dbg !1210
  br i1 %176, label %177, label %179, !dbg !1213

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1210
  store i8 39, i8* %178, align 1, !dbg !1210, !tbaa !1133
  br label %179, !dbg !1210

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1213
  call void @llvm.dbg.value(metadata i64 %180, metadata !1051, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 1, metadata !1058, metadata !DIExpression()), !dbg !1111
  br label %181, !dbg !1214

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1111
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1111
  call void @llvm.dbg.value(metadata i8 %183, metadata !1058, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %182, metadata !1051, metadata !DIExpression()), !dbg !1111
  %184 = icmp ult i64 %182, %129, !dbg !1215
  br i1 %184, label %185, label %187, !dbg !1218

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1215
  store i8 92, i8* %186, align 1, !dbg !1215, !tbaa !1133
  br label %187, !dbg !1215

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1218
  call void @llvm.dbg.value(metadata i64 %188, metadata !1051, metadata !DIExpression()), !dbg !1111
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1219
  br i1 %191, label %192, label %473, !dbg !1219

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1221
  %194 = load i8, i8* %193, align 1, !dbg !1221, !tbaa !1133
  %195 = add i8 %194, -48, !dbg !1222
  %196 = icmp ult i8 %195, 10, !dbg !1222
  br i1 %196, label %197, label %473, !dbg !1222

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1223
  br i1 %198, label %199, label %201, !dbg !1227

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1223
  store i8 48, i8* %200, align 1, !dbg !1223, !tbaa !1133
  br label %201, !dbg !1223

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1227
  call void @llvm.dbg.value(metadata i64 %202, metadata !1051, metadata !DIExpression()), !dbg !1111
  %203 = icmp ult i64 %202, %129, !dbg !1228
  br i1 %203, label %204, label %206, !dbg !1231

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1228
  store i8 48, i8* %205, align 1, !dbg !1228, !tbaa !1133
  br label %206, !dbg !1228

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1231
  call void @llvm.dbg.value(metadata i64 %207, metadata !1051, metadata !DIExpression()), !dbg !1111
  br label %473, !dbg !1232

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1233

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1234

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1235

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1237
  br i1 %214, label %215, label %473, !dbg !1237

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1239
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1240
  %218 = load i8, i8* %217, align 1, !dbg !1240, !tbaa !1133
  %219 = icmp eq i8 %218, 63, !dbg !1241
  br i1 %219, label %220, label %473, !dbg !1242

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1243
  %222 = load i8, i8* %221, align 1, !dbg !1243, !tbaa !1133
  %223 = sext i8 %222 to i32, !dbg !1243
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
  ], !dbg !1244

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1245

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1061, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i64 undef, metadata !1050, metadata !DIExpression()), !dbg !1111
  %226 = icmp ult i64 %123, %129, !dbg !1247
  br i1 %226, label %227, label %229, !dbg !1250

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1247
  store i8 63, i8* %228, align 1, !dbg !1247, !tbaa !1133
  br label %229, !dbg !1247

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !1250
  call void @llvm.dbg.value(metadata i64 %230, metadata !1051, metadata !DIExpression()), !dbg !1111
  %231 = icmp ult i64 %230, %129, !dbg !1251
  br i1 %231, label %232, label %234, !dbg !1254

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1251
  store i8 34, i8* %233, align 1, !dbg !1251, !tbaa !1133
  br label %234, !dbg !1251

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !1254
  call void @llvm.dbg.value(metadata i64 %235, metadata !1051, metadata !DIExpression()), !dbg !1111
  %236 = icmp ult i64 %235, %129, !dbg !1255
  br i1 %236, label %237, label %239, !dbg !1258

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1255
  store i8 34, i8* %238, align 1, !dbg !1255, !tbaa !1133
  br label %239, !dbg !1255

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !1258
  call void @llvm.dbg.value(metadata i64 %240, metadata !1051, metadata !DIExpression()), !dbg !1111
  %241 = icmp ult i64 %240, %129, !dbg !1259
  br i1 %241, label %242, label %244, !dbg !1262

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1259
  store i8 63, i8* %243, align 1, !dbg !1259, !tbaa !1133
  br label %244, !dbg !1259

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !1262
  call void @llvm.dbg.value(metadata i64 %245, metadata !1051, metadata !DIExpression()), !dbg !1111
  br label %473, !dbg !1263

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1065, metadata !DIExpression()), !dbg !1179
  br label %256, !dbg !1264

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1065, metadata !DIExpression()), !dbg !1179
  br label %256, !dbg !1265

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1065, metadata !DIExpression()), !dbg !1179
  br label %254, !dbg !1266

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1065, metadata !DIExpression()), !dbg !1179
  br label %254, !dbg !1267

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1065, metadata !DIExpression()), !dbg !1179
  br label %256, !dbg !1268

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1065, metadata !DIExpression()), !dbg !1179
  br i1 %110, label %252, label %253, !dbg !1269

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !1270

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !1273

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !1275
  call void @llvm.dbg.value(metadata i8 %255, metadata !1065, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.label(metadata !1106), !dbg !1276
  br i1 %111, label %256, label %631, !dbg !1277

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !1275
  call void @llvm.dbg.value(metadata i8 %257, metadata !1065, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.label(metadata !1107), !dbg !1279
  br i1 %102, label %495, label %473, !dbg !1280

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1281

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1282, !tbaa !1133
  %261 = icmp eq i8 %260, 0, !dbg !1284
  br i1 %261, label %262, label %473, !dbg !1285

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !1286
  br i1 %263, label %264, label %473, !dbg !1288

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1068, metadata !DIExpression()), !dbg !1179
  br label %265, !dbg !1289

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1179
  call void @llvm.dbg.value(metadata i8 %266, metadata !1068, metadata !DIExpression()), !dbg !1179
  br i1 %111, label %473, label %631, !dbg !1290

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1059, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 1, metadata !1068, metadata !DIExpression()), !dbg !1179
  br i1 %110, label %268, label %473, !dbg !1292

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !1293

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !1296
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !1298
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !1298
  %274 = select i1 %272, i64 %129, i64 0, !dbg !1298
  call void @llvm.dbg.value(metadata i64 %274, metadata !1042, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %273, metadata !1052, metadata !DIExpression()), !dbg !1111
  %275 = icmp ult i64 %123, %274, !dbg !1299
  br i1 %275, label %276, label %278, !dbg !1302

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1299
  store i8 39, i8* %277, align 1, !dbg !1299, !tbaa !1133
  br label %278, !dbg !1299

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !1302
  call void @llvm.dbg.value(metadata i64 %279, metadata !1051, metadata !DIExpression()), !dbg !1111
  %280 = icmp ult i64 %279, %274, !dbg !1303
  br i1 %280, label %281, label %283, !dbg !1306

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1303
  store i8 92, i8* %282, align 1, !dbg !1303, !tbaa !1133
  br label %283, !dbg !1303

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !1306
  call void @llvm.dbg.value(metadata i64 %284, metadata !1051, metadata !DIExpression()), !dbg !1111
  %285 = icmp ult i64 %284, %274, !dbg !1307
  br i1 %285, label %286, label %288, !dbg !1310

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1307
  store i8 39, i8* %287, align 1, !dbg !1307, !tbaa !1133
  br label %288, !dbg !1307

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !1310
  call void @llvm.dbg.value(metadata i64 %289, metadata !1051, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 0, metadata !1058, metadata !DIExpression()), !dbg !1111
  br label %473, !dbg !1311

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !1312

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1069, metadata !DIExpression()), !dbg !1313
  %292 = tail call i16** @__ctype_b_loc() #28, !dbg !1314
  %293 = load i16*, i16** %292, align 8, !dbg !1314, !tbaa !602
  %294 = zext i8 %158 to i64, !dbg !1314
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1314
  %296 = load i16, i16* %295, align 2, !dbg !1314, !tbaa !1316
  %297 = lshr i16 %296, 14, !dbg !1318
  %298 = trunc i16 %297 to i8, !dbg !1318
  %299 = and i8 %298, 1, !dbg !1318
  call void @llvm.dbg.value(metadata i8 %354, metadata !1072, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i64 %355, metadata !1069, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i64 %306, metadata !1044, metadata !DIExpression()), !dbg !1111
  %300 = icmp eq i8 %299, 0, !dbg !1319
  call void @llvm.dbg.value(metadata i1 %357, metadata !1068, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1179
  br label %359, !dbg !1320

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #24, !dbg !1321
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1073, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i8* %23, metadata !1323, metadata !DIExpression()) #24, !dbg !1331
  call void @llvm.dbg.value(metadata i32 0, metadata !1329, metadata !DIExpression()) #24, !dbg !1331
  call void @llvm.dbg.value(metadata i64 8, metadata !1330, metadata !DIExpression()) #24, !dbg !1331
  store i64 0, i64* %10, align 8, !dbg !1333
  call void @llvm.dbg.value(metadata i64 0, metadata !1069, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i8 1, metadata !1072, metadata !DIExpression()), !dbg !1313
  %302 = icmp eq i64 %154, -1, !dbg !1334
  br i1 %302, label %303, label %305, !dbg !1336

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #25, !dbg !1337
  call void @llvm.dbg.value(metadata i64 %304, metadata !1044, metadata !DIExpression()), !dbg !1111
  br label %305, !dbg !1338

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1179
  call void @llvm.dbg.value(metadata i64 %306, metadata !1044, metadata !DIExpression()), !dbg !1111
  br label %307, !dbg !1339

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !1340
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !1341
  call void @llvm.dbg.value(metadata i8 %309, metadata !1072, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i64 %308, metadata !1069, metadata !DIExpression()), !dbg !1313
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1342
  %310 = add i64 %308, %122, !dbg !1343
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !1344
  %312 = sub i64 %306, %310, !dbg !1345
  call void @llvm.dbg.value(metadata i32* %12, metadata !1091, metadata !DIExpression(DW_OP_deref)), !dbg !1346
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #24, !dbg !1347
  call void @llvm.dbg.value(metadata i64 %313, metadata !1094, metadata !DIExpression()), !dbg !1346
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !1348

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1069, metadata !DIExpression()), !dbg !1313
  %315 = icmp ugt i64 %306, %310, !dbg !1349
  br i1 %315, label %316, label %341, !dbg !1351

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !1352
  br label %318, !dbg !1352

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1069, metadata !DIExpression()), !dbg !1313
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !1353
  %322 = load i8, i8* %321, align 1, !dbg !1353, !tbaa !1133
  %323 = icmp eq i8 %322, 0, !dbg !1351
  br i1 %323, label %341, label %324, !dbg !1352

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !1354
  call void @llvm.dbg.value(metadata i64 %325, metadata !1069, metadata !DIExpression()), !dbg !1313
  %326 = add i64 %325, %122, !dbg !1355
  %327 = icmp ult i64 %326, %306, !dbg !1349
  br i1 %327, label %318, label %341, !dbg !1351, !llvm.loop !1356

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !1357
  call void @llvm.dbg.value(metadata i64 1, metadata !1095, metadata !DIExpression()), !dbg !1358
  br i1 %330, label %331, label %344, !dbg !1357

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1095, metadata !DIExpression()), !dbg !1358
  %333 = add i64 %332, %310, !dbg !1359
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !1362
  %335 = load i8, i8* %334, align 1, !dbg !1362, !tbaa !1133
  %336 = sext i8 %335 to i32, !dbg !1362
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !1363

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !1364
  call void @llvm.dbg.value(metadata i64 %338, metadata !1095, metadata !DIExpression()), !dbg !1358
  %339 = icmp eq i64 %338, %313, !dbg !1365
  br i1 %339, label %344, label %331, !dbg !1366, !llvm.loop !1367

340:                                              ; preds = %307
  br label %341, !dbg !1369

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1072, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i64 undef, metadata !1069, metadata !DIExpression()), !dbg !1313
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1369
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !1370, !tbaa !751
  call void @llvm.dbg.value(metadata i32 %345, metadata !1091, metadata !DIExpression()), !dbg !1346
  %346 = call i32 @iswprint(i32 %345) #24, !dbg !1372
  %347 = icmp eq i32 %346, 0, !dbg !1372
  %348 = select i1 %347, i8 0, i8 %309, !dbg !1373
  call void @llvm.dbg.value(metadata i8 %348, metadata !1072, metadata !DIExpression()), !dbg !1313
  %349 = add i64 %313, %308, !dbg !1374
  call void @llvm.dbg.value(metadata i64 %349, metadata !1069, metadata !DIExpression()), !dbg !1313
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1369
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #25, !dbg !1375
  %351 = icmp eq i32 %350, 0, !dbg !1376
  br i1 %351, label %307, label %353, !dbg !1377, !llvm.loop !1378

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1072, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i64 undef, metadata !1069, metadata !DIExpression()), !dbg !1313
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1369
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #24, !dbg !1380
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #24, !dbg !1380
  call void @llvm.dbg.value(metadata i8 %354, metadata !1072, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i64 %355, metadata !1069, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i64 %306, metadata !1044, metadata !DIExpression()), !dbg !1111
  %356 = and i8 %354, 1, !dbg !1319
  %357 = icmp eq i8 %356, 0, !dbg !1319
  call void @llvm.dbg.value(metadata i1 %357, metadata !1068, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1179
  %358 = icmp ugt i64 %355, 1, !dbg !1381
  br i1 %358, label %367, label %359, !dbg !1320

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !1382
  br i1 %364, label %367, label %365, !dbg !1382

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1179
  call void @llvm.dbg.value(metadata i8 %472, metadata !1068, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8 %441, metadata !1067, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8 %440, metadata !1066, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8 %439, metadata !1061, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8 %438, metadata !1058, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %371, metadata !1044, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %437, metadata !1051, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %375, metadata !1050, metadata !DIExpression()), !dbg !1111
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !1383
  call void @llvm.dbg.value(metadata i64 %372, metadata !1102, metadata !DIExpression()), !dbg !1384
  %373 = and i1 %102, %368
  br label %374, !dbg !1385

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1172
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1111
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1120
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1179
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1179
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !1386
  call void @llvm.dbg.value(metadata i8 %380, metadata !1067, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8 %379, metadata !1066, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8 %378, metadata !1061, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8 %377, metadata !1058, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %376, metadata !1051, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %375, metadata !1050, metadata !DIExpression()), !dbg !1111
  br i1 %373, label %381, label %427, !dbg !1387

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !1392

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1067, metadata !DIExpression()), !dbg !1179
  %383 = and i8 %377, 1, !dbg !1395
  %384 = icmp eq i8 %383, 0, !dbg !1395
  %385 = and i1 %110, %384, !dbg !1395
  br i1 %385, label %386, label %402, !dbg !1395

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !1397
  br i1 %387, label %388, label %390, !dbg !1401

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1397
  store i8 39, i8* %389, align 1, !dbg !1397, !tbaa !1133
  br label %390, !dbg !1397

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !1401
  call void @llvm.dbg.value(metadata i64 %391, metadata !1051, metadata !DIExpression()), !dbg !1111
  %392 = icmp ult i64 %391, %129, !dbg !1402
  br i1 %392, label %393, label %395, !dbg !1405

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !1402
  store i8 36, i8* %394, align 1, !dbg !1402, !tbaa !1133
  br label %395, !dbg !1402

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !1405
  call void @llvm.dbg.value(metadata i64 %396, metadata !1051, metadata !DIExpression()), !dbg !1111
  %397 = icmp ult i64 %396, %129, !dbg !1406
  br i1 %397, label %398, label %400, !dbg !1409

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1406
  store i8 39, i8* %399, align 1, !dbg !1406, !tbaa !1133
  br label %400, !dbg !1406

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !1409
  call void @llvm.dbg.value(metadata i64 %401, metadata !1051, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 1, metadata !1058, metadata !DIExpression()), !dbg !1111
  br label %402, !dbg !1410

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1111
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1111
  call void @llvm.dbg.value(metadata i8 %404, metadata !1058, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %403, metadata !1051, metadata !DIExpression()), !dbg !1111
  %405 = icmp ult i64 %403, %129, !dbg !1411
  br i1 %405, label %406, label %408, !dbg !1414

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1411
  store i8 92, i8* %407, align 1, !dbg !1411, !tbaa !1133
  br label %408, !dbg !1411

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !1414
  call void @llvm.dbg.value(metadata i64 %409, metadata !1051, metadata !DIExpression()), !dbg !1111
  %410 = icmp ult i64 %409, %129, !dbg !1415
  br i1 %410, label %411, label %415, !dbg !1418

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !1415
  %413 = or i8 %412, 48, !dbg !1415
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !1415
  store i8 %413, i8* %414, align 1, !dbg !1415, !tbaa !1133
  br label %415, !dbg !1415

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !1418
  call void @llvm.dbg.value(metadata i64 %416, metadata !1051, metadata !DIExpression()), !dbg !1111
  %417 = icmp ult i64 %416, %129, !dbg !1419
  br i1 %417, label %418, label %423, !dbg !1422

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !1419
  %420 = and i8 %419, 7, !dbg !1419
  %421 = or i8 %420, 48, !dbg !1419
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !1419
  store i8 %421, i8* %422, align 1, !dbg !1419, !tbaa !1133
  br label %423, !dbg !1419

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !1422
  call void @llvm.dbg.value(metadata i64 %424, metadata !1051, metadata !DIExpression()), !dbg !1111
  %425 = and i8 %378, 7, !dbg !1423
  %426 = or i8 %425, 48, !dbg !1424
  call void @llvm.dbg.value(metadata i8 %426, metadata !1061, metadata !DIExpression()), !dbg !1179
  br label %436, !dbg !1425

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !1426
  %429 = icmp eq i8 %428, 0, !dbg !1426
  br i1 %429, label %436, label %430, !dbg !1428

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !1429
  br i1 %431, label %432, label %434, !dbg !1433

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1429
  store i8 92, i8* %433, align 1, !dbg !1429, !tbaa !1133
  br label %434, !dbg !1429

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !1433
  call void @llvm.dbg.value(metadata i64 %435, metadata !1051, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 0, metadata !1066, metadata !DIExpression()), !dbg !1179
  br label %436, !dbg !1434

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1111
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1120
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1179
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1179
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1179
  call void @llvm.dbg.value(metadata i8 %441, metadata !1067, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8 %440, metadata !1066, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8 %439, metadata !1061, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8 %438, metadata !1058, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %437, metadata !1051, metadata !DIExpression()), !dbg !1111
  %442 = add i64 %375, 1, !dbg !1435
  %443 = icmp ugt i64 %372, %442, !dbg !1437
  br i1 %443, label %444, label %471, !dbg !1438

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !1439
  %446 = icmp ne i8 %445, 0, !dbg !1439
  %447 = and i8 %441, 1, !dbg !1439
  %448 = icmp eq i8 %447, 0, !dbg !1439
  %449 = and i1 %446, %448, !dbg !1439
  br i1 %449, label %450, label %461, !dbg !1439

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !1442
  br i1 %451, label %452, label %454, !dbg !1446

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !1442
  store i8 39, i8* %453, align 1, !dbg !1442, !tbaa !1133
  br label %454, !dbg !1442

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !1446
  call void @llvm.dbg.value(metadata i64 %455, metadata !1051, metadata !DIExpression()), !dbg !1111
  %456 = icmp ult i64 %455, %129, !dbg !1447
  br i1 %456, label %457, label %459, !dbg !1450

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !1447
  store i8 39, i8* %458, align 1, !dbg !1447, !tbaa !1133
  br label %459, !dbg !1447

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !1450
  call void @llvm.dbg.value(metadata i64 %460, metadata !1051, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 0, metadata !1058, metadata !DIExpression()), !dbg !1111
  br label %461, !dbg !1451

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !1452
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1111
  call void @llvm.dbg.value(metadata i8 %463, metadata !1058, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %462, metadata !1051, metadata !DIExpression()), !dbg !1111
  %464 = icmp ult i64 %462, %129, !dbg !1453
  br i1 %464, label %465, label %467, !dbg !1456

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !1453
  store i8 %439, i8* %466, align 1, !dbg !1453, !tbaa !1133
  br label %467, !dbg !1453

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %468, metadata !1051, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %442, metadata !1050, metadata !DIExpression()), !dbg !1111
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !1457
  %470 = load i8, i8* %469, align 1, !dbg !1457, !tbaa !1133
  call void @llvm.dbg.value(metadata i8 %470, metadata !1061, metadata !DIExpression()), !dbg !1179
  br label %374, !dbg !1458, !llvm.loop !1459

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1179
  call void @llvm.dbg.value(metadata i8 %472, metadata !1068, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8 %441, metadata !1067, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8 %440, metadata !1066, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8 %439, metadata !1061, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8 %438, metadata !1058, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %371, metadata !1044, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %437, metadata !1051, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %375, metadata !1050, metadata !DIExpression()), !dbg !1111
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1172
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1111
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1116
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !1462
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1111
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1111
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1179
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1179
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1179
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1042, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %482, metadata !1068, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8 %481, metadata !1067, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8 %156, metadata !1066, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8 %480, metadata !1061, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8 %479, metadata !1059, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %478, metadata !1058, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %477, metadata !1044, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %476, metadata !1052, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %475, metadata !1051, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %474, metadata !1050, metadata !DIExpression()), !dbg !1111
  br i1 %116, label %494, label %484, !dbg !1463

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !1465
  %486 = zext i8 %485 to i64, !dbg !1465
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !1466
  %488 = load i32, i32* %487, align 4, !dbg !1466, !tbaa !751
  %489 = and i8 %480, 31, !dbg !1467
  %490 = zext i8 %489 to i32, !dbg !1467
  %491 = shl nuw i32 1, %490, !dbg !1468
  %492 = and i32 %488, %491, !dbg !1468
  %493 = icmp eq i32 %492, 0, !dbg !1468
  br i1 %493, label %494, label %495, !dbg !1469

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !1470

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !1471
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1111
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1116
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !1462
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1120
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1121
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1179
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1179
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1042, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %503, metadata !1068, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8 %502, metadata !1061, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8 %501, metadata !1059, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %500, metadata !1058, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %499, metadata !1044, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %498, metadata !1052, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %497, metadata !1051, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %496, metadata !1050, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.label(metadata !1108), !dbg !1472
  br i1 %109, label %505, label %635, !dbg !1473

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1067, metadata !DIExpression()), !dbg !1179
  %506 = and i8 %500, 1, !dbg !1475
  %507 = icmp eq i8 %506, 0, !dbg !1475
  %508 = and i1 %110, %507, !dbg !1475
  br i1 %508, label %509, label %525, !dbg !1475

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !1477
  br i1 %510, label %511, label %513, !dbg !1481

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !1477
  store i8 39, i8* %512, align 1, !dbg !1477, !tbaa !1133
  br label %513, !dbg !1477

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !1481
  call void @llvm.dbg.value(metadata i64 %514, metadata !1051, metadata !DIExpression()), !dbg !1111
  %515 = icmp ult i64 %514, %504, !dbg !1482
  br i1 %515, label %516, label %518, !dbg !1485

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !1482
  store i8 36, i8* %517, align 1, !dbg !1482, !tbaa !1133
  br label %518, !dbg !1482

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !1485
  call void @llvm.dbg.value(metadata i64 %519, metadata !1051, metadata !DIExpression()), !dbg !1111
  %520 = icmp ult i64 %519, %504, !dbg !1486
  br i1 %520, label %521, label %523, !dbg !1489

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1486
  store i8 39, i8* %522, align 1, !dbg !1486, !tbaa !1133
  br label %523, !dbg !1486

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !1489
  call void @llvm.dbg.value(metadata i64 %524, metadata !1051, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 1, metadata !1058, metadata !DIExpression()), !dbg !1111
  br label %525, !dbg !1490

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1179
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1111
  call void @llvm.dbg.value(metadata i8 %527, metadata !1058, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %526, metadata !1051, metadata !DIExpression()), !dbg !1111
  %528 = icmp ult i64 %526, %504, !dbg !1491
  br i1 %528, label %529, label %531, !dbg !1494

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1491
  store i8 92, i8* %530, align 1, !dbg !1491, !tbaa !1133
  br label %531, !dbg !1491

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !1494
  call void @llvm.dbg.value(metadata i64 %543, metadata !1042, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %542, metadata !1068, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8 %541, metadata !1067, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8 %540, metadata !1061, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8 %539, metadata !1059, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %538, metadata !1058, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %537, metadata !1044, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %536, metadata !1052, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %535, metadata !1051, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %534, metadata !1050, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.label(metadata !1109), !dbg !1495
  br label %560, !dbg !1496

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !1471
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1111
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1116
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !1462
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1120
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1121
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !1499
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1179
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1179
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1042, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %542, metadata !1068, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8 %541, metadata !1067, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8 %540, metadata !1061, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8 %539, metadata !1059, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %538, metadata !1058, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %537, metadata !1044, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %536, metadata !1052, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %535, metadata !1051, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %534, metadata !1050, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.label(metadata !1109), !dbg !1495
  %544 = and i8 %538, 1, !dbg !1496
  %545 = icmp ne i8 %544, 0, !dbg !1496
  %546 = and i8 %541, 1, !dbg !1496
  %547 = icmp eq i8 %546, 0, !dbg !1496
  %548 = and i1 %545, %547, !dbg !1496
  br i1 %548, label %549, label %560, !dbg !1496

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !1500
  br i1 %550, label %551, label %553, !dbg !1504

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !1500
  store i8 39, i8* %552, align 1, !dbg !1500, !tbaa !1133
  br label %553, !dbg !1500

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !1504
  call void @llvm.dbg.value(metadata i64 %554, metadata !1051, metadata !DIExpression()), !dbg !1111
  %555 = icmp ult i64 %554, %543, !dbg !1505
  br i1 %555, label %556, label %558, !dbg !1508

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !1505
  store i8 39, i8* %557, align 1, !dbg !1505, !tbaa !1133
  br label %558, !dbg !1505

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !1508
  call void @llvm.dbg.value(metadata i64 %559, metadata !1051, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 0, metadata !1058, metadata !DIExpression()), !dbg !1111
  br label %560, !dbg !1509

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1179
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1111
  call void @llvm.dbg.value(metadata i8 %569, metadata !1058, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %568, metadata !1051, metadata !DIExpression()), !dbg !1111
  %570 = icmp ult i64 %568, %561, !dbg !1510
  br i1 %570, label %571, label %573, !dbg !1513

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !1510
  store i8 %563, i8* %572, align 1, !dbg !1510, !tbaa !1133
  br label %573, !dbg !1510

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !1513
  call void @llvm.dbg.value(metadata i64 %574, metadata !1051, metadata !DIExpression()), !dbg !1111
  %575 = icmp eq i8 %562, 0, !dbg !1514
  %576 = select i1 %575, i8 0, i8 %128, !dbg !1516
  call void @llvm.dbg.value(metadata i8 %576, metadata !1060, metadata !DIExpression()), !dbg !1111
  br label %577, !dbg !1517

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !1471
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1111
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1116
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !1462
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1120
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1111
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1122
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1042, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %584, metadata !1060, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %583, metadata !1059, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %582, metadata !1058, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %581, metadata !1044, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %580, metadata !1052, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %579, metadata !1051, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %578, metadata !1050, metadata !DIExpression()), !dbg !1111
  %586 = add i64 %578, 1, !dbg !1518
  call void @llvm.dbg.value(metadata i64 %586, metadata !1050, metadata !DIExpression()), !dbg !1111
  br label %121, !dbg !1519, !llvm.loop !1520

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !1522
  %590 = and i1 %110, %589, !dbg !1524
  %591 = xor i1 %590, true, !dbg !1524
  %592 = or i1 %109, %591, !dbg !1524
  br i1 %592, label %593, label %635, !dbg !1524

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !1525
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !1525
  br i1 %597, label %598, label %607, !dbg !1525

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !1527
  %600 = icmp eq i8 %599, 0, !dbg !1527
  br i1 %600, label %603, label %601, !dbg !1530

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !1531
  br label %652, !dbg !1532

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !1533
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !1535
  br i1 %606, label %26, label %607, !dbg !1535

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !1536
  %610 = and i1 %609, %608, !dbg !1538
  br i1 %610, label %611, label %626, !dbg !1538

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1053, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %123, metadata !1051, metadata !DIExpression()), !dbg !1111
  %612 = load i8, i8* %97, align 1, !dbg !1539, !tbaa !1133
  %613 = icmp eq i8 %612, 0, !dbg !1542
  br i1 %613, label %626, label %614, !dbg !1542

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1053, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %617, metadata !1051, metadata !DIExpression()), !dbg !1111
  %618 = icmp ult i64 %617, %129, !dbg !1543
  br i1 %618, label %619, label %621, !dbg !1546

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !1543
  store i8 %615, i8* %620, align 1, !dbg !1543, !tbaa !1133
  br label %621, !dbg !1543

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !1546
  call void @llvm.dbg.value(metadata i64 %622, metadata !1051, metadata !DIExpression()), !dbg !1111
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !1547
  call void @llvm.dbg.value(metadata i8* %623, metadata !1053, metadata !DIExpression()), !dbg !1111
  %624 = load i8, i8* %623, align 1, !dbg !1539, !tbaa !1133
  %625 = icmp eq i8 %624, 0, !dbg !1542
  br i1 %625, label %626, label %614, !dbg !1542, !llvm.loop !1548

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1154
  call void @llvm.dbg.value(metadata i64 %627, metadata !1051, metadata !DIExpression()), !dbg !1111
  %628 = icmp ult i64 %627, %129, !dbg !1550
  br i1 %628, label %629, label %652, !dbg !1552

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !1553
  store i8 0, i8* %630, align 1, !dbg !1554, !tbaa !1133
  br label %652, !dbg !1553

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1042, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %637, metadata !1044, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.label(metadata !1110), !dbg !1555
  %633 = icmp eq i8 %101, 0, !dbg !1556
  %634 = select i1 %633, i32 2, i32 4, !dbg !1556
  br label %642, !dbg !1556

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1042, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %637, metadata !1044, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.label(metadata !1110), !dbg !1555
  %639 = icmp eq i32 %93, 2, !dbg !1558
  %640 = icmp eq i8 %636, 0, !dbg !1556
  %641 = select i1 %640, i32 2, i32 4, !dbg !1556
  br i1 %639, label %642, label %646, !dbg !1556

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !1556

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1045, metadata !DIExpression()), !dbg !1111
  %650 = and i32 %5, -3, !dbg !1559
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !1560
  br label %652, !dbg !1561

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !1562
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !1563 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1567, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i32 %1, metadata !1568, metadata !DIExpression()), !dbg !1571
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #24, !dbg !1572
  call void @llvm.dbg.value(metadata i8* %3, metadata !1569, metadata !DIExpression()), !dbg !1571
  %4 = icmp eq i8* %3, %0, !dbg !1573
  br i1 %4, label %5, label %72, !dbg !1575

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #24, !dbg !1576
  call void @llvm.dbg.value(metadata i8* %6, metadata !1570, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i8* %6, metadata !1577, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i8* undef, metadata !1583, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i8 85, metadata !1584, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i8 84, metadata !1585, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i8 70, metadata !1586, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i8 45, metadata !1587, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i8 56, metadata !1588, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i8 0, metadata !1589, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i8 0, metadata !1590, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i8 0, metadata !1591, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i8 0, metadata !1592, metadata !DIExpression()), !dbg !1593
  %7 = load i8, i8* %6, align 1, !dbg !1596, !tbaa !1133
  %8 = and i8 %7, -33, !dbg !1596
  %9 = sext i8 %8 to i32, !dbg !1596
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !1596

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1598, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata i8* undef, metadata !1603, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata i8 84, metadata !1604, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata i8 70, metadata !1605, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata i8 45, metadata !1606, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata i8 56, metadata !1607, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata i8 0, metadata !1608, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata i8 0, metadata !1609, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata i8 0, metadata !1610, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata i8 0, metadata !1611, metadata !DIExpression()), !dbg !1612
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1616
  %12 = load i8, i8* %11, align 1, !dbg !1616, !tbaa !1133
  %13 = and i8 %12, -33, !dbg !1616
  %14 = icmp eq i8 %13, 84, !dbg !1616
  br i1 %14, label %15, label %69, !dbg !1616

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !1618, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata i8* undef, metadata !1623, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata i8 70, metadata !1624, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata i8 45, metadata !1625, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata i8 56, metadata !1626, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata i8 0, metadata !1627, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata i8 0, metadata !1628, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata i8 0, metadata !1629, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata i8 0, metadata !1630, metadata !DIExpression()), !dbg !1631
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1635
  %17 = load i8, i8* %16, align 1, !dbg !1635, !tbaa !1133
  %18 = and i8 %17, -33, !dbg !1635
  %19 = icmp eq i8 %18, 70, !dbg !1635
  br i1 %19, label %20, label %69, !dbg !1635

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !1637, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8* undef, metadata !1642, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 45, metadata !1643, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 56, metadata !1644, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 0, metadata !1645, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 0, metadata !1646, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 0, metadata !1647, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 0, metadata !1648, metadata !DIExpression()), !dbg !1649
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1653
  %22 = load i8, i8* %21, align 1, !dbg !1653, !tbaa !1133
  %23 = icmp eq i8 %22, 45, !dbg !1653
  br i1 %23, label %24, label %69, !dbg !1655

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !1656, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i8* undef, metadata !1661, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i8 56, metadata !1662, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i8 0, metadata !1663, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i8 0, metadata !1664, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i8 0, metadata !1665, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i8 0, metadata !1666, metadata !DIExpression()), !dbg !1667
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1671
  %26 = load i8, i8* %25, align 1, !dbg !1671, !tbaa !1133
  %27 = icmp eq i8 %26, 56, !dbg !1671
  br i1 %27, label %28, label %69, !dbg !1673

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !1674, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8* undef, metadata !1679, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 0, metadata !1680, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 0, metadata !1681, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 0, metadata !1682, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 0, metadata !1683, metadata !DIExpression()), !dbg !1684
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1688
  %30 = load i8, i8* %29, align 1, !dbg !1688, !tbaa !1133
  %31 = icmp eq i8 %30, 0, !dbg !1688
  br i1 %31, label %32, label %69, !dbg !1690

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !1691, !tbaa !1133
  %34 = icmp eq i8 %33, 96, !dbg !1692
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.61, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.62, i64 0, i64 0), !dbg !1691
  br label %72, !dbg !1693

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1598, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8* undef, metadata !1603, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 66, metadata !1604, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 49, metadata !1605, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 56, metadata !1606, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 48, metadata !1607, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 51, metadata !1608, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 48, metadata !1609, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 0, metadata !1610, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 0, metadata !1611, metadata !DIExpression()), !dbg !1694
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1698
  %38 = load i8, i8* %37, align 1, !dbg !1698, !tbaa !1133
  %39 = and i8 %38, -33, !dbg !1698
  %40 = icmp eq i8 %39, 66, !dbg !1698
  br i1 %40, label %41, label %69, !dbg !1698

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !1618, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8* undef, metadata !1623, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 49, metadata !1624, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 56, metadata !1625, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 48, metadata !1626, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 51, metadata !1627, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 48, metadata !1628, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 0, metadata !1629, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 0, metadata !1630, metadata !DIExpression()), !dbg !1699
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1701
  %43 = load i8, i8* %42, align 1, !dbg !1701, !tbaa !1133
  %44 = icmp eq i8 %43, 49, !dbg !1701
  br i1 %44, label %45, label %69, !dbg !1702

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !1637, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i8* undef, metadata !1642, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i8 56, metadata !1643, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i8 48, metadata !1644, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i8 51, metadata !1645, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i8 48, metadata !1646, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i8 0, metadata !1647, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i8 0, metadata !1648, metadata !DIExpression()), !dbg !1703
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1705
  %47 = load i8, i8* %46, align 1, !dbg !1705, !tbaa !1133
  %48 = icmp eq i8 %47, 56, !dbg !1705
  br i1 %48, label %49, label %69, !dbg !1706

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !1656, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8* undef, metadata !1661, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 48, metadata !1662, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 51, metadata !1663, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 48, metadata !1664, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 0, metadata !1665, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 0, metadata !1666, metadata !DIExpression()), !dbg !1707
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1709
  %51 = load i8, i8* %50, align 1, !dbg !1709, !tbaa !1133
  %52 = icmp eq i8 %51, 48, !dbg !1709
  br i1 %52, label %53, label %69, !dbg !1710

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !1674, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i8* undef, metadata !1679, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i8 51, metadata !1680, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i8 48, metadata !1681, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i8 0, metadata !1682, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i8 0, metadata !1683, metadata !DIExpression()), !dbg !1711
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1713
  %55 = load i8, i8* %54, align 1, !dbg !1713, !tbaa !1133
  %56 = icmp eq i8 %55, 51, !dbg !1713
  br i1 %56, label %57, label %69, !dbg !1714

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !1715, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i8* undef, metadata !1720, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i8 48, metadata !1721, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i8 0, metadata !1722, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i8 0, metadata !1723, metadata !DIExpression()), !dbg !1724
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1728
  %59 = load i8, i8* %58, align 1, !dbg !1728, !tbaa !1133
  %60 = icmp eq i8 %59, 48, !dbg !1728
  br i1 %60, label %61, label %69, !dbg !1730

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !1731, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8* undef, metadata !1736, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8 0, metadata !1737, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8 0, metadata !1738, metadata !DIExpression()), !dbg !1739
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1743
  %63 = load i8, i8* %62, align 1, !dbg !1743, !tbaa !1133
  %64 = icmp eq i8 %63, 0, !dbg !1743
  br i1 %64, label %65, label %69, !dbg !1745

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !1746, !tbaa !1133
  %67 = icmp eq i8 %66, 96, !dbg !1747
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.63, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.64, i64 0, i64 0), !dbg !1746
  br label %72, !dbg !1748

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !1749
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), !dbg !1750
  br label %72, !dbg !1751

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !1571
  ret i8* %73, !dbg !1752
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #15

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1753 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !1757 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #16

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !1763 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1767, metadata !DIExpression()), !dbg !1770
  call void @llvm.dbg.value(metadata i64 %1, metadata !1768, metadata !DIExpression()), !dbg !1770
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1769, metadata !DIExpression()), !dbg !1770
  call void @llvm.dbg.value(metadata i8* %0, metadata !1771, metadata !DIExpression()) #24, !dbg !1784
  call void @llvm.dbg.value(metadata i64 %1, metadata !1776, metadata !DIExpression()) #24, !dbg !1784
  call void @llvm.dbg.value(metadata i64* null, metadata !1777, metadata !DIExpression()) #24, !dbg !1784
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1778, metadata !DIExpression()) #24, !dbg !1784
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1786
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1786
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1779, metadata !DIExpression()) #24, !dbg !1784
  %6 = tail call i32* @__errno_location() #28, !dbg !1787
  %7 = load i32, i32* %6, align 4, !dbg !1787, !tbaa !751
  call void @llvm.dbg.value(metadata i32 %7, metadata !1780, metadata !DIExpression()) #24, !dbg !1784
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1788
  %9 = load i32, i32* %8, align 4, !dbg !1788, !tbaa !985
  %10 = or i32 %9, 1, !dbg !1789
  call void @llvm.dbg.value(metadata i32 %10, metadata !1781, metadata !DIExpression()) #24, !dbg !1784
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1790
  %12 = load i32, i32* %11, align 8, !dbg !1790, !tbaa !933
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1791
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1792
  %15 = load i8*, i8** %14, align 8, !dbg !1792, !tbaa !1007
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1793
  %17 = load i8*, i8** %16, align 8, !dbg !1793, !tbaa !1010
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #24, !dbg !1794
  %19 = add i64 %18, 1, !dbg !1795
  call void @llvm.dbg.value(metadata i64 %19, metadata !1782, metadata !DIExpression()) #24, !dbg !1784
  call void @llvm.dbg.value(metadata i64 %19, metadata !1796, metadata !DIExpression()) #24, !dbg !1801
  %20 = tail call noalias i8* @xmalloc(i64 %19) #24, !dbg !1803
  call void @llvm.dbg.value(metadata i8* %20, metadata !1783, metadata !DIExpression()) #24, !dbg !1784
  %21 = load i32, i32* %11, align 8, !dbg !1804, !tbaa !933
  %22 = load i8*, i8** %14, align 8, !dbg !1805, !tbaa !1007
  %23 = load i8*, i8** %16, align 8, !dbg !1806, !tbaa !1010
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #24, !dbg !1807
  store i32 %7, i32* %6, align 4, !dbg !1808, !tbaa !751
  ret i8* %20, !dbg !1809
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !1772 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1771, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %1, metadata !1776, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64* %2, metadata !1777, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1778, metadata !DIExpression()), !dbg !1810
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1811
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1811
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1779, metadata !DIExpression()), !dbg !1810
  %7 = tail call i32* @__errno_location() #28, !dbg !1812
  %8 = load i32, i32* %7, align 4, !dbg !1812, !tbaa !751
  call void @llvm.dbg.value(metadata i32 %8, metadata !1780, metadata !DIExpression()), !dbg !1810
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1813
  %10 = load i32, i32* %9, align 4, !dbg !1813, !tbaa !985
  %11 = icmp eq i64* %2, null, !dbg !1814
  %12 = zext i1 %11 to i32, !dbg !1814
  %13 = or i32 %10, %12, !dbg !1815
  call void @llvm.dbg.value(metadata i32 %13, metadata !1781, metadata !DIExpression()), !dbg !1810
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1816
  %15 = load i32, i32* %14, align 8, !dbg !1816, !tbaa !933
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1817
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1818
  %18 = load i8*, i8** %17, align 8, !dbg !1818, !tbaa !1007
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1819
  %20 = load i8*, i8** %19, align 8, !dbg !1819, !tbaa !1010
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !1820
  %22 = add i64 %21, 1, !dbg !1821
  call void @llvm.dbg.value(metadata i64 %22, metadata !1782, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %22, metadata !1796, metadata !DIExpression()) #24, !dbg !1822
  %23 = tail call noalias i8* @xmalloc(i64 %22) #24, !dbg !1824
  call void @llvm.dbg.value(metadata i8* %23, metadata !1783, metadata !DIExpression()), !dbg !1810
  %24 = load i32, i32* %14, align 8, !dbg !1825, !tbaa !933
  %25 = load i8*, i8** %17, align 8, !dbg !1826, !tbaa !1007
  %26 = load i8*, i8** %19, align 8, !dbg !1827, !tbaa !1010
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !1828
  store i32 %8, i32* %7, align 4, !dbg !1829, !tbaa !751
  br i1 %11, label %29, label %28, !dbg !1830

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !1831, !tbaa !1833
  br label %29, !dbg !1835

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !1836
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !1837 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1841, !tbaa !602
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !1839, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i32 1, metadata !1840, metadata !DIExpression()), !dbg !1842
  %2 = load i32, i32* @nslots, align 4, !dbg !1843, !tbaa !751
  %3 = icmp sgt i32 %2, 1, !dbg !1846
  br i1 %3, label %4, label %12, !dbg !1847

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !1846
  br label %6, !dbg !1847

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !1840, metadata !DIExpression()), !dbg !1842
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !1848
  %9 = load i8*, i8** %8, align 8, !dbg !1848, !tbaa !1849
  tail call void @free(i8* %9) #24, !dbg !1851
  %10 = add nuw nsw i64 %7, 1, !dbg !1852
  call void @llvm.dbg.value(metadata i64 %10, metadata !1840, metadata !DIExpression()), !dbg !1842
  %11 = icmp eq i64 %10, %5, !dbg !1846
  br i1 %11, label %12, label %6, !dbg !1847, !llvm.loop !1853

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1855
  %14 = load i8*, i8** %13, align 8, !dbg !1855, !tbaa !1849
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1857
  br i1 %15, label %17, label %16, !dbg !1858

16:                                               ; preds = %12
  tail call void @free(i8* %14) #24, !dbg !1859
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1861, !tbaa !1862
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1863, !tbaa !1849
  br label %17, !dbg !1864

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1865
  br i1 %18, label %21, label %19, !dbg !1867

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !1868
  tail call void @free(i8* %20) #24, !dbg !1870
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1871, !tbaa !602
  br label %21, !dbg !1872

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !1873, !tbaa !751
  ret void, !dbg !1874
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !1875 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1877, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata i8* %1, metadata !1878, metadata !DIExpression()), !dbg !1879
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1880
  ret i8* %3, !dbg !1881
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !1882 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1886, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i8* %1, metadata !1887, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i64 %2, metadata !1888, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1889, metadata !DIExpression()), !dbg !1901
  %5 = tail call i32* @__errno_location() #28, !dbg !1902
  %6 = load i32, i32* %5, align 4, !dbg !1902, !tbaa !751
  call void @llvm.dbg.value(metadata i32 %6, metadata !1890, metadata !DIExpression()), !dbg !1901
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1903, !tbaa !602
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !1891, metadata !DIExpression()), !dbg !1901
  %8 = icmp slt i32 %0, 0, !dbg !1904
  br i1 %8, label %9, label %10, !dbg !1906

9:                                                ; preds = %4
  tail call void @abort() #26, !dbg !1907
  unreachable, !dbg !1907

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !1908, !tbaa !751
  %12 = icmp sgt i32 %11, %0, !dbg !1909
  br i1 %12, label %34, label %13, !dbg !1910

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !1911
  call void @llvm.dbg.value(metadata i1 %14, metadata !1892, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1912
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !1895, metadata !DIExpression()), !dbg !1912
  %15 = icmp eq i32 %0, 2147483647, !dbg !1913
  br i1 %15, label %16, label %17, !dbg !1915

16:                                               ; preds = %13
  tail call void @xalloc_die() #26, !dbg !1916
  unreachable, !dbg !1916

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !1917
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !1917
  %20 = add nuw nsw i32 %0, 1, !dbg !1918
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !1919
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #24, !dbg !1920
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !1920
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !1891, metadata !DIExpression()), !dbg !1901
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !1921, !tbaa !602
  br i1 %14, label %25, label %26, !dbg !1922

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !1923, !tbaa.struct !1925
  br label %26, !dbg !1926

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !1927, !tbaa !751
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !1928
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !1929
  %31 = sub nsw i32 %20, %27, !dbg !1930
  %32 = sext i32 %31 to i64, !dbg !1931
  %33 = shl nsw i64 %32, 4, !dbg !1932
  call void @llvm.dbg.value(metadata i8* %30, metadata !1323, metadata !DIExpression()) #24, !dbg !1933
  call void @llvm.dbg.value(metadata i32 0, metadata !1329, metadata !DIExpression()) #24, !dbg !1933
  call void @llvm.dbg.value(metadata i64 %33, metadata !1330, metadata !DIExpression()) #24, !dbg !1933
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #24, !dbg !1935
  store i32 %20, i32* @nslots, align 4, !dbg !1936, !tbaa !751
  br label %34, !dbg !1937

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !1901
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !1891, metadata !DIExpression()), !dbg !1901
  %36 = zext i32 %0 to i64, !dbg !1938
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !1939
  %38 = load i64, i64* %37, align 8, !dbg !1939, !tbaa !1862
  call void @llvm.dbg.value(metadata i64 %38, metadata !1896, metadata !DIExpression()), !dbg !1940
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !1941
  %40 = load i8*, i8** %39, align 8, !dbg !1941, !tbaa !1849
  call void @llvm.dbg.value(metadata i8* %40, metadata !1898, metadata !DIExpression()), !dbg !1940
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !1942
  %42 = load i32, i32* %41, align 4, !dbg !1942, !tbaa !985
  %43 = or i32 %42, 1, !dbg !1943
  call void @llvm.dbg.value(metadata i32 %43, metadata !1899, metadata !DIExpression()), !dbg !1940
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1944
  %45 = load i32, i32* %44, align 8, !dbg !1944, !tbaa !933
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !1945
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !1946
  %48 = load i8*, i8** %47, align 8, !dbg !1946, !tbaa !1007
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !1947
  %50 = load i8*, i8** %49, align 8, !dbg !1947, !tbaa !1010
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !1948
  call void @llvm.dbg.value(metadata i64 %51, metadata !1900, metadata !DIExpression()), !dbg !1940
  %52 = icmp ugt i64 %38, %51, !dbg !1949
  br i1 %52, label %63, label %53, !dbg !1951

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !1952
  call void @llvm.dbg.value(metadata i64 %54, metadata !1896, metadata !DIExpression()), !dbg !1940
  store i64 %54, i64* %37, align 8, !dbg !1954, !tbaa !1862
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1955
  br i1 %55, label %57, label %56, !dbg !1957

56:                                               ; preds = %53
  tail call void @free(i8* %40) #24, !dbg !1958
  br label %57, !dbg !1958

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !1796, metadata !DIExpression()) #24, !dbg !1959
  %58 = tail call noalias i8* @xmalloc(i64 %54) #24, !dbg !1961
  call void @llvm.dbg.value(metadata i8* %58, metadata !1898, metadata !DIExpression()), !dbg !1940
  store i8* %58, i8** %39, align 8, !dbg !1962, !tbaa !1849
  %59 = load i32, i32* %44, align 8, !dbg !1963, !tbaa !933
  %60 = load i8*, i8** %47, align 8, !dbg !1964, !tbaa !1007
  %61 = load i8*, i8** %49, align 8, !dbg !1965, !tbaa !1010
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !1966
  br label %63, !dbg !1967

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !1940
  call void @llvm.dbg.value(metadata i8* %64, metadata !1898, metadata !DIExpression()), !dbg !1940
  store i32 %6, i32* %5, align 4, !dbg !1968, !tbaa !751
  ret i8* %64, !dbg !1969
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !1970 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1974, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i8* %1, metadata !1975, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i64 %2, metadata !1976, metadata !DIExpression()), !dbg !1977
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1978
  ret i8* %4, !dbg !1979
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !1980 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1982, metadata !DIExpression()), !dbg !1983
  call void @llvm.dbg.value(metadata i32 0, metadata !1877, metadata !DIExpression()) #24, !dbg !1984
  call void @llvm.dbg.value(metadata i8* %0, metadata !1878, metadata !DIExpression()) #24, !dbg !1984
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #24, !dbg !1986
  ret i8* %2, !dbg !1987
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !1988 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1992, metadata !DIExpression()), !dbg !1994
  call void @llvm.dbg.value(metadata i64 %1, metadata !1993, metadata !DIExpression()), !dbg !1994
  call void @llvm.dbg.value(metadata i32 0, metadata !1974, metadata !DIExpression()) #24, !dbg !1995
  call void @llvm.dbg.value(metadata i8* %0, metadata !1975, metadata !DIExpression()) #24, !dbg !1995
  call void @llvm.dbg.value(metadata i64 %1, metadata !1976, metadata !DIExpression()) #24, !dbg !1995
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #24, !dbg !1997
  ret i8* %3, !dbg !1998
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !1999 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2003, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i32 %1, metadata !2004, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i8* %2, metadata !2005, metadata !DIExpression()), !dbg !2007
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2008
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2008
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2006, metadata !DIExpression()), !dbg !2009
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2010), !dbg !2013
  call void @llvm.dbg.value(metadata i32 %1, metadata !2014, metadata !DIExpression()) #24, !dbg !2020
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2019, metadata !DIExpression()) #24, !dbg !2022
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #24, !dbg !2022, !alias.scope !2010
  %6 = icmp eq i32 %1, 10, !dbg !2023
  br i1 %6, label %7, label %8, !dbg !2025

7:                                                ; preds = %3
  tail call void @abort() #26, !dbg !2026, !noalias !2010
  unreachable, !dbg !2026

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2027
  store i32 %1, i32* %9, align 8, !dbg !2028, !tbaa !933, !alias.scope !2010
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2029
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2030
  ret i8* %10, !dbg !2031
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2032 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2036, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i32 %1, metadata !2037, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i8* %2, metadata !2038, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i64 %3, metadata !2039, metadata !DIExpression()), !dbg !2041
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2042
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2042
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2040, metadata !DIExpression()), !dbg !2043
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2044), !dbg !2047
  call void @llvm.dbg.value(metadata i32 %1, metadata !2014, metadata !DIExpression()) #24, !dbg !2048
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2019, metadata !DIExpression()) #24, !dbg !2050
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #24, !dbg !2050, !alias.scope !2044
  %7 = icmp eq i32 %1, 10, !dbg !2051
  br i1 %7, label %8, label %9, !dbg !2052

8:                                                ; preds = %4
  tail call void @abort() #26, !dbg !2053, !noalias !2044
  unreachable, !dbg !2053

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2054
  store i32 %1, i32* %10, align 8, !dbg !2055, !tbaa !933, !alias.scope !2044
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2056
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2057
  ret i8* %11, !dbg !2058
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2059 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2063, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8* %1, metadata !2064, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i32 0, metadata !2003, metadata !DIExpression()) #24, !dbg !2066
  call void @llvm.dbg.value(metadata i32 %0, metadata !2004, metadata !DIExpression()) #24, !dbg !2066
  call void @llvm.dbg.value(metadata i8* %1, metadata !2005, metadata !DIExpression()) #24, !dbg !2066
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2068
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2068
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2006, metadata !DIExpression()) #24, !dbg !2069
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2070) #24, !dbg !2073
  call void @llvm.dbg.value(metadata i32 %0, metadata !2014, metadata !DIExpression()) #24, !dbg !2074
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2019, metadata !DIExpression()) #24, !dbg !2076
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #24, !dbg !2076, !alias.scope !2070
  %5 = icmp eq i32 %0, 10, !dbg !2077
  br i1 %5, label %6, label %7, !dbg !2078

6:                                                ; preds = %2
  tail call void @abort() #26, !dbg !2079, !noalias !2070
  unreachable, !dbg !2079

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2080
  store i32 %0, i32* %8, align 8, !dbg !2081, !tbaa !933, !alias.scope !2070
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #24, !dbg !2082
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2083
  ret i8* %9, !dbg !2084
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2085 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2089, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8* %1, metadata !2090, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %2, metadata !2091, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i32 0, metadata !2036, metadata !DIExpression()) #24, !dbg !2093
  call void @llvm.dbg.value(metadata i32 %0, metadata !2037, metadata !DIExpression()) #24, !dbg !2093
  call void @llvm.dbg.value(metadata i8* %1, metadata !2038, metadata !DIExpression()) #24, !dbg !2093
  call void @llvm.dbg.value(metadata i64 %2, metadata !2039, metadata !DIExpression()) #24, !dbg !2093
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2095
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2095
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2040, metadata !DIExpression()) #24, !dbg !2096
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2097) #24, !dbg !2100
  call void @llvm.dbg.value(metadata i32 %0, metadata !2014, metadata !DIExpression()) #24, !dbg !2101
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2019, metadata !DIExpression()) #24, !dbg !2103
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #24, !dbg !2103, !alias.scope !2097
  %6 = icmp eq i32 %0, 10, !dbg !2104
  br i1 %6, label %7, label %8, !dbg !2105

7:                                                ; preds = %3
  tail call void @abort() #26, !dbg !2106, !noalias !2097
  unreachable, !dbg !2106

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2107
  store i32 %0, i32* %9, align 8, !dbg !2108, !tbaa !933, !alias.scope !2097
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #24, !dbg !2109
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2110
  ret i8* %10, !dbg !2111
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2112 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2116, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i64 %1, metadata !2117, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 %2, metadata !2118, metadata !DIExpression()), !dbg !2120
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2121
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2121
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2119, metadata !DIExpression()), !dbg !2122
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2123, !tbaa.struct !2124
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !951, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i8 %2, metadata !952, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i32 1, metadata !953, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i8 %2, metadata !954, metadata !DIExpression()), !dbg !2125
  %6 = lshr i8 %2, 5, !dbg !2127
  %7 = zext i8 %6 to i64, !dbg !2127
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2128
  call void @llvm.dbg.value(metadata i32* %8, metadata !956, metadata !DIExpression()), !dbg !2125
  %9 = and i8 %2, 31, !dbg !2129
  %10 = zext i8 %9 to i32, !dbg !2129
  call void @llvm.dbg.value(metadata i32 %10, metadata !958, metadata !DIExpression()), !dbg !2125
  %11 = load i32, i32* %8, align 4, !dbg !2130, !tbaa !751
  %12 = lshr i32 %11, %10, !dbg !2131
  %13 = and i32 %12, 1, !dbg !2132
  call void @llvm.dbg.value(metadata i32 %13, metadata !959, metadata !DIExpression()), !dbg !2125
  %14 = xor i32 %13, 1, !dbg !2133
  %15 = shl i32 %14, %10, !dbg !2134
  %16 = xor i32 %15, %11, !dbg !2135
  store i32 %16, i32* %8, align 4, !dbg !2135, !tbaa !751
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2136
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2137
  ret i8* %17, !dbg !2138
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2139 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2143, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i8 %1, metadata !2144, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i8* %0, metadata !2116, metadata !DIExpression()) #24, !dbg !2146
  call void @llvm.dbg.value(metadata i64 -1, metadata !2117, metadata !DIExpression()) #24, !dbg !2146
  call void @llvm.dbg.value(metadata i8 %1, metadata !2118, metadata !DIExpression()) #24, !dbg !2146
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2148
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2148
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2119, metadata !DIExpression()) #24, !dbg !2149
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #24, !dbg !2150, !tbaa.struct !2124
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !951, metadata !DIExpression()) #24, !dbg !2151
  call void @llvm.dbg.value(metadata i8 %1, metadata !952, metadata !DIExpression()) #24, !dbg !2151
  call void @llvm.dbg.value(metadata i32 1, metadata !953, metadata !DIExpression()) #24, !dbg !2151
  call void @llvm.dbg.value(metadata i8 %1, metadata !954, metadata !DIExpression()) #24, !dbg !2151
  %5 = lshr i8 %1, 5, !dbg !2153
  %6 = zext i8 %5 to i64, !dbg !2153
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2154
  call void @llvm.dbg.value(metadata i32* %7, metadata !956, metadata !DIExpression()) #24, !dbg !2151
  %8 = and i8 %1, 31, !dbg !2155
  %9 = zext i8 %8 to i32, !dbg !2155
  call void @llvm.dbg.value(metadata i32 %9, metadata !958, metadata !DIExpression()) #24, !dbg !2151
  %10 = load i32, i32* %7, align 4, !dbg !2156, !tbaa !751
  %11 = lshr i32 %10, %9, !dbg !2157
  %12 = and i32 %11, 1, !dbg !2158
  call void @llvm.dbg.value(metadata i32 %12, metadata !959, metadata !DIExpression()) #24, !dbg !2151
  %13 = xor i32 %12, 1, !dbg !2159
  %14 = shl i32 %13, %9, !dbg !2160
  %15 = xor i32 %14, %10, !dbg !2161
  store i32 %15, i32* %7, align 4, !dbg !2161, !tbaa !751
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #24, !dbg !2162
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2163
  ret i8* %16, !dbg !2164
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2165 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2167, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i8* %0, metadata !2143, metadata !DIExpression()) #24, !dbg !2169
  call void @llvm.dbg.value(metadata i8 58, metadata !2144, metadata !DIExpression()) #24, !dbg !2169
  call void @llvm.dbg.value(metadata i8* %0, metadata !2116, metadata !DIExpression()) #24, !dbg !2171
  call void @llvm.dbg.value(metadata i64 -1, metadata !2117, metadata !DIExpression()) #24, !dbg !2171
  call void @llvm.dbg.value(metadata i8 58, metadata !2118, metadata !DIExpression()) #24, !dbg !2171
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2173
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #24, !dbg !2173
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2119, metadata !DIExpression()) #24, !dbg !2174
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #24, !dbg !2175, !tbaa.struct !2124
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !951, metadata !DIExpression()) #24, !dbg !2176
  call void @llvm.dbg.value(metadata i8 58, metadata !952, metadata !DIExpression()) #24, !dbg !2176
  call void @llvm.dbg.value(metadata i32 1, metadata !953, metadata !DIExpression()) #24, !dbg !2176
  call void @llvm.dbg.value(metadata i8 58, metadata !954, metadata !DIExpression()) #24, !dbg !2176
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2178
  call void @llvm.dbg.value(metadata i32* %4, metadata !956, metadata !DIExpression()) #24, !dbg !2176
  call void @llvm.dbg.value(metadata i32 26, metadata !958, metadata !DIExpression()) #24, !dbg !2176
  %5 = load i32, i32* %4, align 4, !dbg !2179, !tbaa !751
  call void @llvm.dbg.value(metadata i32 %5, metadata !959, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #24, !dbg !2176
  %6 = or i32 %5, 67108864, !dbg !2180
  store i32 %6, i32* %4, align 4, !dbg !2180, !tbaa !751
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #24, !dbg !2181
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #24, !dbg !2182
  ret i8* %7, !dbg !2183
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2184 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2186, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.value(metadata i64 %1, metadata !2187, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.value(metadata i8* %0, metadata !2116, metadata !DIExpression()) #24, !dbg !2189
  call void @llvm.dbg.value(metadata i64 %1, metadata !2117, metadata !DIExpression()) #24, !dbg !2189
  call void @llvm.dbg.value(metadata i8 58, metadata !2118, metadata !DIExpression()) #24, !dbg !2189
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2191
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2191
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2119, metadata !DIExpression()) #24, !dbg !2192
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #24, !dbg !2193, !tbaa.struct !2124
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !951, metadata !DIExpression()) #24, !dbg !2194
  call void @llvm.dbg.value(metadata i8 58, metadata !952, metadata !DIExpression()) #24, !dbg !2194
  call void @llvm.dbg.value(metadata i32 1, metadata !953, metadata !DIExpression()) #24, !dbg !2194
  call void @llvm.dbg.value(metadata i8 58, metadata !954, metadata !DIExpression()) #24, !dbg !2194
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2196
  call void @llvm.dbg.value(metadata i32* %5, metadata !956, metadata !DIExpression()) #24, !dbg !2194
  call void @llvm.dbg.value(metadata i32 26, metadata !958, metadata !DIExpression()) #24, !dbg !2194
  %6 = load i32, i32* %5, align 4, !dbg !2197, !tbaa !751
  call void @llvm.dbg.value(metadata i32 %6, metadata !959, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #24, !dbg !2194
  %7 = or i32 %6, 67108864, !dbg !2198
  store i32 %7, i32* %5, align 4, !dbg !2198, !tbaa !751
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #24, !dbg !2199
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2200
  ret i8* %8, !dbg !2201
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2202 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2019, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2208
  call void @llvm.dbg.value(metadata i32 %0, metadata !2204, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i32 %1, metadata !2205, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i8* %2, metadata !2206, metadata !DIExpression()), !dbg !2210
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2211
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2211
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2207, metadata !DIExpression()), !dbg !2212
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2213
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2213
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2214), !dbg !2213
  call void @llvm.dbg.value(metadata i32 %1, metadata !2014, metadata !DIExpression()) #24, !dbg !2217
  call void @llvm.dbg.value(metadata i32 0, metadata !2019, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2217
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2208, !alias.scope !2214
  %8 = icmp eq i32 %1, 10, !dbg !2218
  br i1 %8, label %9, label %10, !dbg !2219

9:                                                ; preds = %3
  tail call void @abort() #26, !dbg !2220, !noalias !2214
  unreachable, !dbg !2220

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2019, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2217
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2213
  store i32 %1, i32* %11, align 8, !dbg !2213, !tbaa.struct !2124
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2213
  %13 = bitcast i32* %12 to i8*, !dbg !2213
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2213, !tbaa.struct !2221
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2213
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !951, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 58, metadata !952, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i32 1, metadata !953, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 58, metadata !954, metadata !DIExpression()), !dbg !2222
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2224
  call void @llvm.dbg.value(metadata i32* %14, metadata !956, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i32 26, metadata !958, metadata !DIExpression()), !dbg !2222
  %15 = load i32, i32* %14, align 4, !dbg !2225, !tbaa !751
  call void @llvm.dbg.value(metadata i32 %15, metadata !959, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2222
  %16 = or i32 %15, 67108864, !dbg !2226
  store i32 %16, i32* %14, align 4, !dbg !2226, !tbaa !751
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2227
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2228
  ret i8* %17, !dbg !2229
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2230 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2234, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.value(metadata i8* %1, metadata !2235, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.value(metadata i8* %2, metadata !2236, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.value(metadata i8* %3, metadata !2237, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.value(metadata i32 %0, metadata !2239, metadata !DIExpression()) #24, !dbg !2249
  call void @llvm.dbg.value(metadata i8* %1, metadata !2244, metadata !DIExpression()) #24, !dbg !2249
  call void @llvm.dbg.value(metadata i8* %2, metadata !2245, metadata !DIExpression()) #24, !dbg !2249
  call void @llvm.dbg.value(metadata i8* %3, metadata !2246, metadata !DIExpression()) #24, !dbg !2249
  call void @llvm.dbg.value(metadata i64 -1, metadata !2247, metadata !DIExpression()) #24, !dbg !2249
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2251
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2251
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2248, metadata !DIExpression()) #24, !dbg !2252
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #24, !dbg !2253, !tbaa.struct !2124
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !992, metadata !DIExpression()) #24, !dbg !2254
  call void @llvm.dbg.value(metadata i8* %1, metadata !993, metadata !DIExpression()) #24, !dbg !2254
  call void @llvm.dbg.value(metadata i8* %2, metadata !994, metadata !DIExpression()) #24, !dbg !2254
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !992, metadata !DIExpression()) #24, !dbg !2254
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2256
  store i32 10, i32* %7, align 8, !dbg !2257, !tbaa !933
  %8 = icmp ne i8* %1, null, !dbg !2258
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2259
  br i1 %10, label %12, label %11, !dbg !2259

11:                                               ; preds = %4
  tail call void @abort() #26, !dbg !2260
  unreachable, !dbg !2260

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2261
  store i8* %1, i8** %13, align 8, !dbg !2262, !tbaa !1007
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2263
  store i8* %2, i8** %14, align 8, !dbg !2264, !tbaa !1010
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #24, !dbg !2265
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2266
  ret i8* %15, !dbg !2267
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2240 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2239, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i8* %1, metadata !2244, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i8* %2, metadata !2245, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i8* %3, metadata !2246, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i64 %4, metadata !2247, metadata !DIExpression()), !dbg !2268
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2269
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #24, !dbg !2269
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2248, metadata !DIExpression()), !dbg !2270
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2271, !tbaa.struct !2124
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !992, metadata !DIExpression()) #24, !dbg !2272
  call void @llvm.dbg.value(metadata i8* %1, metadata !993, metadata !DIExpression()) #24, !dbg !2272
  call void @llvm.dbg.value(metadata i8* %2, metadata !994, metadata !DIExpression()) #24, !dbg !2272
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !992, metadata !DIExpression()) #24, !dbg !2272
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2274
  store i32 10, i32* %8, align 8, !dbg !2275, !tbaa !933
  %9 = icmp ne i8* %1, null, !dbg !2276
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2277
  br i1 %11, label %13, label %12, !dbg !2277

12:                                               ; preds = %5
  tail call void @abort() #26, !dbg !2278
  unreachable, !dbg !2278

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2279
  store i8* %1, i8** %14, align 8, !dbg !2280, !tbaa !1007
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2281
  store i8* %2, i8** %15, align 8, !dbg !2282, !tbaa !1010
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2283
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #24, !dbg !2284
  ret i8* %16, !dbg !2285
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2286 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2290, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i8* %1, metadata !2291, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i8* %2, metadata !2292, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i32 0, metadata !2234, metadata !DIExpression()) #24, !dbg !2294
  call void @llvm.dbg.value(metadata i8* %0, metadata !2235, metadata !DIExpression()) #24, !dbg !2294
  call void @llvm.dbg.value(metadata i8* %1, metadata !2236, metadata !DIExpression()) #24, !dbg !2294
  call void @llvm.dbg.value(metadata i8* %2, metadata !2237, metadata !DIExpression()) #24, !dbg !2294
  call void @llvm.dbg.value(metadata i32 0, metadata !2239, metadata !DIExpression()) #24, !dbg !2296
  call void @llvm.dbg.value(metadata i8* %0, metadata !2244, metadata !DIExpression()) #24, !dbg !2296
  call void @llvm.dbg.value(metadata i8* %1, metadata !2245, metadata !DIExpression()) #24, !dbg !2296
  call void @llvm.dbg.value(metadata i8* %2, metadata !2246, metadata !DIExpression()) #24, !dbg !2296
  call void @llvm.dbg.value(metadata i64 -1, metadata !2247, metadata !DIExpression()) #24, !dbg !2296
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2298
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2298
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2248, metadata !DIExpression()) #24, !dbg !2299
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #24, !dbg !2300, !tbaa.struct !2124
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !992, metadata !DIExpression()) #24, !dbg !2301
  call void @llvm.dbg.value(metadata i8* %0, metadata !993, metadata !DIExpression()) #24, !dbg !2301
  call void @llvm.dbg.value(metadata i8* %1, metadata !994, metadata !DIExpression()) #24, !dbg !2301
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !992, metadata !DIExpression()) #24, !dbg !2301
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2303
  store i32 10, i32* %6, align 8, !dbg !2304, !tbaa !933
  %7 = icmp ne i8* %0, null, !dbg !2305
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2306
  br i1 %9, label %11, label %10, !dbg !2306

10:                                               ; preds = %3
  tail call void @abort() #26, !dbg !2307
  unreachable, !dbg !2307

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2308
  store i8* %0, i8** %12, align 8, !dbg !2309, !tbaa !1007
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2310
  store i8* %1, i8** %13, align 8, !dbg !2311, !tbaa !1010
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #24, !dbg !2312
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2313
  ret i8* %14, !dbg !2314
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2315 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2319, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata i8* %1, metadata !2320, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata i8* %2, metadata !2321, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata i64 %3, metadata !2322, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata i32 0, metadata !2239, metadata !DIExpression()) #24, !dbg !2324
  call void @llvm.dbg.value(metadata i8* %0, metadata !2244, metadata !DIExpression()) #24, !dbg !2324
  call void @llvm.dbg.value(metadata i8* %1, metadata !2245, metadata !DIExpression()) #24, !dbg !2324
  call void @llvm.dbg.value(metadata i8* %2, metadata !2246, metadata !DIExpression()) #24, !dbg !2324
  call void @llvm.dbg.value(metadata i64 %3, metadata !2247, metadata !DIExpression()) #24, !dbg !2324
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2326
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2326
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2248, metadata !DIExpression()) #24, !dbg !2327
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #24, !dbg !2328, !tbaa.struct !2124
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !992, metadata !DIExpression()) #24, !dbg !2329
  call void @llvm.dbg.value(metadata i8* %0, metadata !993, metadata !DIExpression()) #24, !dbg !2329
  call void @llvm.dbg.value(metadata i8* %1, metadata !994, metadata !DIExpression()) #24, !dbg !2329
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !992, metadata !DIExpression()) #24, !dbg !2329
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2331
  store i32 10, i32* %7, align 8, !dbg !2332, !tbaa !933
  %8 = icmp ne i8* %0, null, !dbg !2333
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2334
  br i1 %10, label %12, label %11, !dbg !2334

11:                                               ; preds = %4
  tail call void @abort() #26, !dbg !2335
  unreachable, !dbg !2335

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2336
  store i8* %0, i8** %13, align 8, !dbg !2337, !tbaa !1007
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2338
  store i8* %1, i8** %14, align 8, !dbg !2339, !tbaa !1010
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #24, !dbg !2340
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2341
  ret i8* %15, !dbg !2342
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2343 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2347, metadata !DIExpression()), !dbg !2350
  call void @llvm.dbg.value(metadata i8* %1, metadata !2348, metadata !DIExpression()), !dbg !2350
  call void @llvm.dbg.value(metadata i64 %2, metadata !2349, metadata !DIExpression()), !dbg !2350
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2351
  ret i8* %4, !dbg !2352
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2353 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2357, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i64 %1, metadata !2358, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i32 0, metadata !2347, metadata !DIExpression()) #24, !dbg !2360
  call void @llvm.dbg.value(metadata i8* %0, metadata !2348, metadata !DIExpression()) #24, !dbg !2360
  call void @llvm.dbg.value(metadata i64 %1, metadata !2349, metadata !DIExpression()) #24, !dbg !2360
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #24, !dbg !2362
  ret i8* %3, !dbg !2363
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2364 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2368, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata i8* %1, metadata !2369, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata i32 %0, metadata !2347, metadata !DIExpression()) #24, !dbg !2371
  call void @llvm.dbg.value(metadata i8* %1, metadata !2348, metadata !DIExpression()) #24, !dbg !2371
  call void @llvm.dbg.value(metadata i64 -1, metadata !2349, metadata !DIExpression()) #24, !dbg !2371
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #24, !dbg !2373
  ret i8* %3, !dbg !2374
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2375 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2379, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i32 0, metadata !2368, metadata !DIExpression()) #24, !dbg !2381
  call void @llvm.dbg.value(metadata i8* %0, metadata !2369, metadata !DIExpression()) #24, !dbg !2381
  call void @llvm.dbg.value(metadata i32 0, metadata !2347, metadata !DIExpression()) #24, !dbg !2383
  call void @llvm.dbg.value(metadata i8* %0, metadata !2348, metadata !DIExpression()) #24, !dbg !2383
  call void @llvm.dbg.value(metadata i64 -1, metadata !2349, metadata !DIExpression()) #24, !dbg !2383
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #24, !dbg !2385
  ret i8* %2, !dbg !2386
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2387 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2427, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i8* %1, metadata !2428, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i8* %2, metadata !2429, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i8* %3, metadata !2430, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i8** %4, metadata !2431, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i64 %5, metadata !2432, metadata !DIExpression()), !dbg !2433
  %7 = icmp eq i8* %1, null, !dbg !2434
  br i1 %7, label %10, label %8, !dbg !2436

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.69, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #24, !dbg !2437
  br label %12, !dbg !2437

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.70, i64 0, i64 0), i8* %2, i8* %3) #24, !dbg !2438
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.71, i64 0, i64 0), i32 5) #24, !dbg !2439
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #24, !dbg !2439
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.72, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2440
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.73, i64 0, i64 0), i32 5) #24, !dbg !2441
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.74, i64 0, i64 0)) #24, !dbg !2441
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.72, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2442
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
  ], !dbg !2443

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.75, i64 0, i64 0), i32 5) #24, !dbg !2444
  %21 = load i8*, i8** %4, align 8, !dbg !2444, !tbaa !602
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #24, !dbg !2444
  br label %147, !dbg !2446

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.76, i64 0, i64 0), i32 5) #24, !dbg !2447
  %25 = load i8*, i8** %4, align 8, !dbg !2447, !tbaa !602
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2447
  %27 = load i8*, i8** %26, align 8, !dbg !2447, !tbaa !602
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #24, !dbg !2447
  br label %147, !dbg !2448

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.77, i64 0, i64 0), i32 5) #24, !dbg !2449
  %31 = load i8*, i8** %4, align 8, !dbg !2449, !tbaa !602
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2449
  %33 = load i8*, i8** %32, align 8, !dbg !2449, !tbaa !602
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2449
  %35 = load i8*, i8** %34, align 8, !dbg !2449, !tbaa !602
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #24, !dbg !2449
  br label %147, !dbg !2450

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.78, i64 0, i64 0), i32 5) #24, !dbg !2451
  %39 = load i8*, i8** %4, align 8, !dbg !2451, !tbaa !602
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2451
  %41 = load i8*, i8** %40, align 8, !dbg !2451, !tbaa !602
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2451
  %43 = load i8*, i8** %42, align 8, !dbg !2451, !tbaa !602
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2451
  %45 = load i8*, i8** %44, align 8, !dbg !2451, !tbaa !602
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #24, !dbg !2451
  br label %147, !dbg !2452

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.79, i64 0, i64 0), i32 5) #24, !dbg !2453
  %49 = load i8*, i8** %4, align 8, !dbg !2453, !tbaa !602
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2453
  %51 = load i8*, i8** %50, align 8, !dbg !2453, !tbaa !602
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2453
  %53 = load i8*, i8** %52, align 8, !dbg !2453, !tbaa !602
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2453
  %55 = load i8*, i8** %54, align 8, !dbg !2453, !tbaa !602
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2453
  %57 = load i8*, i8** %56, align 8, !dbg !2453, !tbaa !602
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #24, !dbg !2453
  br label %147, !dbg !2454

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.80, i64 0, i64 0), i32 5) #24, !dbg !2455
  %61 = load i8*, i8** %4, align 8, !dbg !2455, !tbaa !602
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2455
  %63 = load i8*, i8** %62, align 8, !dbg !2455, !tbaa !602
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2455
  %65 = load i8*, i8** %64, align 8, !dbg !2455, !tbaa !602
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2455
  %67 = load i8*, i8** %66, align 8, !dbg !2455, !tbaa !602
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2455
  %69 = load i8*, i8** %68, align 8, !dbg !2455, !tbaa !602
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2455
  %71 = load i8*, i8** %70, align 8, !dbg !2455, !tbaa !602
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #24, !dbg !2455
  br label %147, !dbg !2456

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.81, i64 0, i64 0), i32 5) #24, !dbg !2457
  %75 = load i8*, i8** %4, align 8, !dbg !2457, !tbaa !602
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2457
  %77 = load i8*, i8** %76, align 8, !dbg !2457, !tbaa !602
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2457
  %79 = load i8*, i8** %78, align 8, !dbg !2457, !tbaa !602
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2457
  %81 = load i8*, i8** %80, align 8, !dbg !2457, !tbaa !602
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2457
  %83 = load i8*, i8** %82, align 8, !dbg !2457, !tbaa !602
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2457
  %85 = load i8*, i8** %84, align 8, !dbg !2457, !tbaa !602
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2457
  %87 = load i8*, i8** %86, align 8, !dbg !2457, !tbaa !602
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #24, !dbg !2457
  br label %147, !dbg !2458

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.82, i64 0, i64 0), i32 5) #24, !dbg !2459
  %91 = load i8*, i8** %4, align 8, !dbg !2459, !tbaa !602
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2459
  %93 = load i8*, i8** %92, align 8, !dbg !2459, !tbaa !602
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2459
  %95 = load i8*, i8** %94, align 8, !dbg !2459, !tbaa !602
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2459
  %97 = load i8*, i8** %96, align 8, !dbg !2459, !tbaa !602
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2459
  %99 = load i8*, i8** %98, align 8, !dbg !2459, !tbaa !602
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2459
  %101 = load i8*, i8** %100, align 8, !dbg !2459, !tbaa !602
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2459
  %103 = load i8*, i8** %102, align 8, !dbg !2459, !tbaa !602
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2459
  %105 = load i8*, i8** %104, align 8, !dbg !2459, !tbaa !602
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #24, !dbg !2459
  br label %147, !dbg !2460

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.83, i64 0, i64 0), i32 5) #24, !dbg !2461
  %109 = load i8*, i8** %4, align 8, !dbg !2461, !tbaa !602
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2461
  %111 = load i8*, i8** %110, align 8, !dbg !2461, !tbaa !602
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2461
  %113 = load i8*, i8** %112, align 8, !dbg !2461, !tbaa !602
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2461
  %115 = load i8*, i8** %114, align 8, !dbg !2461, !tbaa !602
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2461
  %117 = load i8*, i8** %116, align 8, !dbg !2461, !tbaa !602
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2461
  %119 = load i8*, i8** %118, align 8, !dbg !2461, !tbaa !602
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2461
  %121 = load i8*, i8** %120, align 8, !dbg !2461, !tbaa !602
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2461
  %123 = load i8*, i8** %122, align 8, !dbg !2461, !tbaa !602
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2461
  %125 = load i8*, i8** %124, align 8, !dbg !2461, !tbaa !602
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #24, !dbg !2461
  br label %147, !dbg !2462

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.84, i64 0, i64 0), i32 5) #24, !dbg !2463
  %129 = load i8*, i8** %4, align 8, !dbg !2463, !tbaa !602
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2463
  %131 = load i8*, i8** %130, align 8, !dbg !2463, !tbaa !602
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2463
  %133 = load i8*, i8** %132, align 8, !dbg !2463, !tbaa !602
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2463
  %135 = load i8*, i8** %134, align 8, !dbg !2463, !tbaa !602
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2463
  %137 = load i8*, i8** %136, align 8, !dbg !2463, !tbaa !602
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2463
  %139 = load i8*, i8** %138, align 8, !dbg !2463, !tbaa !602
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2463
  %141 = load i8*, i8** %140, align 8, !dbg !2463, !tbaa !602
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2463
  %143 = load i8*, i8** %142, align 8, !dbg !2463, !tbaa !602
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2463
  %145 = load i8*, i8** %144, align 8, !dbg !2463, !tbaa !602
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #24, !dbg !2463
  br label %147, !dbg !2464

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2465
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !2466 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2470, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i8* %1, metadata !2471, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i8* %2, metadata !2472, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i8* %3, metadata !2473, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i8** %4, metadata !2474, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i64 0, metadata !2475, metadata !DIExpression()), !dbg !2476
  br label %6, !dbg !2477

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2479
  call void @llvm.dbg.value(metadata i64 %7, metadata !2475, metadata !DIExpression()), !dbg !2476
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2480
  %9 = load i8*, i8** %8, align 8, !dbg !2480, !tbaa !602
  %10 = icmp eq i8* %9, null, !dbg !2482
  %11 = add i64 %7, 1, !dbg !2483
  call void @llvm.dbg.value(metadata i64 %11, metadata !2475, metadata !DIExpression()), !dbg !2476
  br i1 %10, label %12, label %6, !dbg !2482, !llvm.loop !2484

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2486
  ret void, !dbg !2487
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !2488 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2499, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8* %1, metadata !2500, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8* %2, metadata !2501, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8* %3, metadata !2502, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2503, metadata !DIExpression()), !dbg !2507
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2508
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #24, !dbg !2508
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2505, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i64 0, metadata !2504, metadata !DIExpression()), !dbg !2507
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !2504, metadata !DIExpression()), !dbg !2507
  %11 = load i32, i32* %8, align 8, !dbg !2510
  %12 = icmp ult i32 %11, 41, !dbg !2510
  br i1 %12, label %13, label %18, !dbg !2510

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2510
  %15 = zext i32 %11 to i64, !dbg !2510
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2510
  %17 = add nuw nsw i32 %11, 8, !dbg !2510
  store i32 %17, i32* %8, align 8, !dbg !2510
  br label %21, !dbg !2510

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2510
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2510
  store i8* %20, i8** %9, align 8, !dbg !2510
  br label %21, !dbg !2510

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2510
  %25 = load i8*, i8** %24, align 8, !dbg !2510
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2513
  store i8* %25, i8** %26, align 16, !dbg !2514, !tbaa !602
  %27 = icmp eq i8* %25, null, !dbg !2515
  br i1 %27, label %30, label %28, !dbg !2516

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2504, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i64 1, metadata !2504, metadata !DIExpression()), !dbg !2507
  %29 = icmp ult i32 %22, 41, !dbg !2510
  br i1 %29, label %35, label %32, !dbg !2510

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2517
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2518
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #24, !dbg !2519
  ret void, !dbg !2519

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2510
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2510
  store i8* %34, i8** %9, align 8, !dbg !2510
  br label %40, !dbg !2510

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2510
  %37 = zext i32 %22 to i64, !dbg !2510
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2510
  %39 = add nuw nsw i32 %22, 8, !dbg !2510
  store i32 %39, i32* %8, align 8, !dbg !2510
  br label %40, !dbg !2510

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2510
  %44 = load i8*, i8** %43, align 8, !dbg !2510
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2513
  store i8* %44, i8** %45, align 8, !dbg !2514, !tbaa !602
  %46 = icmp eq i8* %44, null, !dbg !2515
  br i1 %46, label %30, label %47, !dbg !2516

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2504, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i64 2, metadata !2504, metadata !DIExpression()), !dbg !2507
  %48 = icmp ult i32 %41, 41, !dbg !2510
  br i1 %48, label %52, label %49, !dbg !2510

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2510
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2510
  store i8* %51, i8** %9, align 8, !dbg !2510
  br label %57, !dbg !2510

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2510
  %54 = zext i32 %41 to i64, !dbg !2510
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2510
  %56 = add nuw nsw i32 %41, 8, !dbg !2510
  store i32 %56, i32* %8, align 8, !dbg !2510
  br label %57, !dbg !2510

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2510
  %61 = load i8*, i8** %60, align 8, !dbg !2510
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2513
  store i8* %61, i8** %62, align 16, !dbg !2514, !tbaa !602
  %63 = icmp eq i8* %61, null, !dbg !2515
  br i1 %63, label %30, label %64, !dbg !2516

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2504, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i64 3, metadata !2504, metadata !DIExpression()), !dbg !2507
  %65 = icmp ult i32 %58, 41, !dbg !2510
  br i1 %65, label %69, label %66, !dbg !2510

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2510
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2510
  store i8* %68, i8** %9, align 8, !dbg !2510
  br label %74, !dbg !2510

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2510
  %71 = zext i32 %58 to i64, !dbg !2510
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2510
  %73 = add nuw nsw i32 %58, 8, !dbg !2510
  store i32 %73, i32* %8, align 8, !dbg !2510
  br label %74, !dbg !2510

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2510
  %78 = load i8*, i8** %77, align 8, !dbg !2510
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2513
  store i8* %78, i8** %79, align 8, !dbg !2514, !tbaa !602
  %80 = icmp eq i8* %78, null, !dbg !2515
  br i1 %80, label %30, label %81, !dbg !2516

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2504, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i64 4, metadata !2504, metadata !DIExpression()), !dbg !2507
  %82 = icmp ult i32 %75, 41, !dbg !2510
  br i1 %82, label %86, label %83, !dbg !2510

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2510
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2510
  store i8* %85, i8** %9, align 8, !dbg !2510
  br label %91, !dbg !2510

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2510
  %88 = zext i32 %75 to i64, !dbg !2510
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2510
  %90 = add nuw nsw i32 %75, 8, !dbg !2510
  store i32 %90, i32* %8, align 8, !dbg !2510
  br label %91, !dbg !2510

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2510
  %95 = load i8*, i8** %94, align 8, !dbg !2510
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2513
  store i8* %95, i8** %96, align 16, !dbg !2514, !tbaa !602
  %97 = icmp eq i8* %95, null, !dbg !2515
  br i1 %97, label %30, label %98, !dbg !2516

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2504, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i64 5, metadata !2504, metadata !DIExpression()), !dbg !2507
  %99 = icmp ult i32 %92, 41, !dbg !2510
  br i1 %99, label %103, label %100, !dbg !2510

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2510
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2510
  store i8* %102, i8** %9, align 8, !dbg !2510
  br label %108, !dbg !2510

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2510
  %105 = zext i32 %92 to i64, !dbg !2510
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2510
  %107 = add nuw nsw i32 %92, 8, !dbg !2510
  store i32 %107, i32* %8, align 8, !dbg !2510
  br label %108, !dbg !2510

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2510
  %111 = load i8*, i8** %110, align 8, !dbg !2510
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2513
  store i8* %111, i8** %112, align 8, !dbg !2514, !tbaa !602
  %113 = icmp eq i8* %111, null, !dbg !2515
  br i1 %113, label %30, label %114, !dbg !2516

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2504, metadata !DIExpression()), !dbg !2507
  %115 = load i8*, i8** %9, align 8, !dbg !2510
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2510
  store i8* %116, i8** %9, align 8, !dbg !2510
  %117 = bitcast i8* %115 to i8**, !dbg !2510
  %118 = load i8*, i8** %117, align 8, !dbg !2510
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2513
  store i8* %118, i8** %119, align 16, !dbg !2514, !tbaa !602
  %120 = icmp eq i8* %118, null, !dbg !2515
  br i1 %120, label %30, label %121, !dbg !2516

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2504, metadata !DIExpression()), !dbg !2507
  %122 = load i8*, i8** %9, align 8, !dbg !2510
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2510
  store i8* %123, i8** %9, align 8, !dbg !2510
  %124 = bitcast i8* %122 to i8**, !dbg !2510
  %125 = load i8*, i8** %124, align 8, !dbg !2510
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2513
  store i8* %125, i8** %126, align 8, !dbg !2514, !tbaa !602
  %127 = icmp eq i8* %125, null, !dbg !2515
  br i1 %127, label %30, label %128, !dbg !2516

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2504, metadata !DIExpression()), !dbg !2507
  %129 = load i8*, i8** %9, align 8, !dbg !2510
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2510
  store i8* %130, i8** %9, align 8, !dbg !2510
  %131 = bitcast i8* %129 to i8**, !dbg !2510
  %132 = load i8*, i8** %131, align 8, !dbg !2510
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2513
  store i8* %132, i8** %133, align 16, !dbg !2514, !tbaa !602
  %134 = icmp eq i8* %132, null, !dbg !2515
  br i1 %134, label %30, label %135, !dbg !2516

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2504, metadata !DIExpression()), !dbg !2507
  %136 = load i8*, i8** %9, align 8, !dbg !2510
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2510
  store i8* %137, i8** %9, align 8, !dbg !2510
  %138 = bitcast i8* %136 to i8**, !dbg !2510
  %139 = load i8*, i8** %138, align 8, !dbg !2510
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2513
  store i8* %139, i8** %140, align 8, !dbg !2514, !tbaa !602
  %141 = icmp eq i8* %139, null, !dbg !2515
  %142 = select i1 %141, i64 9, i64 10, !dbg !2516
  br label %30, !dbg !2516
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !2520 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2524, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i8* %1, metadata !2525, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i8* %2, metadata !2526, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i8* %3, metadata !2527, metadata !DIExpression()), !dbg !2534
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2535
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #24, !dbg !2535
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2528, metadata !DIExpression()), !dbg !2536
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2537
  call void @llvm.va_start(i8* nonnull %6), !dbg !2537
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2538
  call void @llvm.va_end(i8* nonnull %6), !dbg !2539
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #24, !dbg !2540
  ret void, !dbg !2540
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #20

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !2541 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2542, !tbaa !602
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.72, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2542
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.87, i64 0, i64 0), i32 5) #24, !dbg !2543
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.88, i64 0, i64 0)) #24, !dbg !2543
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.89, i64 0, i64 0), i32 5) #24, !dbg !2544
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.90, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.91, i64 0, i64 0)) #24, !dbg !2544
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.92, i64 0, i64 0), i32 5) #24, !dbg !2545
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.93, i64 0, i64 0)) #24, !dbg !2545
  ret void, !dbg !2546
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #21 !dbg !2547 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2551, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i64 %1, metadata !2552, metadata !DIExpression()), !dbg !2553
  %3 = udiv i64 9223372036854775807, %1, !dbg !2554
  %4 = icmp ult i64 %3, %0, !dbg !2554
  br i1 %4, label %5, label %6, !dbg !2556

5:                                                ; preds = %2
  tail call void @xalloc_die() #26, !dbg !2557
  unreachable, !dbg !2557

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2558
  call void @llvm.dbg.value(metadata i64 %7, metadata !2559, metadata !DIExpression()) #24, !dbg !2565
  %8 = tail call noalias i8* @malloc(i64 %7) #24, !dbg !2567
  call void @llvm.dbg.value(metadata i8* %8, metadata !2564, metadata !DIExpression()) #24, !dbg !2565
  %9 = icmp eq i8* %8, null, !dbg !2568
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !2570
  br i1 %11, label %12, label %13, !dbg !2570

12:                                               ; preds = %6
  tail call void @xalloc_die() #26, !dbg !2571
  unreachable, !dbg !2571

13:                                               ; preds = %6
  ret i8* %8, !dbg !2572
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !2560 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2559, metadata !DIExpression()), !dbg !2573
  %2 = tail call noalias i8* @malloc(i64 %0) #24, !dbg !2574
  call void @llvm.dbg.value(metadata i8* %2, metadata !2564, metadata !DIExpression()), !dbg !2573
  %3 = icmp eq i8* %2, null, !dbg !2575
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2576
  br i1 %5, label %6, label %7, !dbg !2576

6:                                                ; preds = %1
  tail call void @xalloc_die() #26, !dbg !2577
  unreachable, !dbg !2577

7:                                                ; preds = %1
  ret i8* %2, !dbg !2578
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #21 !dbg !2579 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2583, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i64 %1, metadata !2584, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i64 %2, metadata !2585, metadata !DIExpression()), !dbg !2586
  %4 = udiv i64 9223372036854775807, %2, !dbg !2587
  %5 = icmp ult i64 %4, %1, !dbg !2587
  br i1 %5, label %6, label %7, !dbg !2589

6:                                                ; preds = %3
  tail call void @xalloc_die() #26, !dbg !2590
  unreachable, !dbg !2590

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2591
  call void @llvm.dbg.value(metadata i8* %0, metadata !2592, metadata !DIExpression()) #24, !dbg !2598
  call void @llvm.dbg.value(metadata i64 %8, metadata !2597, metadata !DIExpression()) #24, !dbg !2598
  %9 = icmp eq i64 %8, 0, !dbg !2600
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !2602
  br i1 %11, label %12, label %13, !dbg !2602

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #24, !dbg !2603
  br label %19, !dbg !2605

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #24, !dbg !2606
  call void @llvm.dbg.value(metadata i8* %14, metadata !2592, metadata !DIExpression()) #24, !dbg !2598
  %15 = icmp eq i8* %14, null, !dbg !2607
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !2609
  br i1 %17, label %18, label %19, !dbg !2609

18:                                               ; preds = %13
  tail call void @xalloc_die() #26, !dbg !2610
  unreachable, !dbg !2610

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2598
  ret i8* %20, !dbg !2611
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2593 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2592, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i64 %1, metadata !2597, metadata !DIExpression()), !dbg !2612
  %3 = icmp eq i64 %1, 0, !dbg !2613
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !2614
  br i1 %5, label %6, label %7, !dbg !2614

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #24, !dbg !2615
  br label %13, !dbg !2616

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #24, !dbg !2617
  call void @llvm.dbg.value(metadata i8* %8, metadata !2592, metadata !DIExpression()), !dbg !2612
  %9 = icmp eq i8* %8, null, !dbg !2618
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !2619
  br i1 %11, label %12, label %13, !dbg !2619

12:                                               ; preds = %7
  tail call void @xalloc_die() #26, !dbg !2620
  unreachable, !dbg !2620

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2612
  ret i8* %14, !dbg !2621
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #21 !dbg !165 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !170, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i64* %1, metadata !171, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i64 %2, metadata !172, metadata !DIExpression()), !dbg !2622
  %4 = load i64, i64* %1, align 8, !dbg !2623, !tbaa !1833
  call void @llvm.dbg.value(metadata i64 %4, metadata !173, metadata !DIExpression()), !dbg !2622
  %5 = icmp eq i8* %0, null, !dbg !2624
  br i1 %5, label %6, label %20, !dbg !2626

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2627
  br i1 %7, label %8, label %13, !dbg !2630

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2631
  call void @llvm.dbg.value(metadata i64 %9, metadata !173, metadata !DIExpression()), !dbg !2622
  %10 = icmp ugt i64 %2, 128, !dbg !2633
  %11 = zext i1 %10 to i64, !dbg !2633
  %12 = add nuw nsw i64 %9, %11, !dbg !2634
  call void @llvm.dbg.value(metadata i64 %12, metadata !173, metadata !DIExpression()), !dbg !2622
  br label %13, !dbg !2635

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2622
  call void @llvm.dbg.value(metadata i64 %14, metadata !173, metadata !DIExpression()), !dbg !2622
  %15 = udiv i64 9223372036854775807, %2, !dbg !2636
  %16 = icmp ult i64 %15, %14, !dbg !2636
  br i1 %16, label %19, label %17, !dbg !2638

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !173, metadata !DIExpression()), !dbg !2622
  store i64 %14, i64* %1, align 8, !dbg !2639, !tbaa !1833
  %18 = mul i64 %14, %2, !dbg !2640
  call void @llvm.dbg.value(metadata i8* %0, metadata !2592, metadata !DIExpression()) #24, !dbg !2641
  call void @llvm.dbg.value(metadata i64 %28, metadata !2597, metadata !DIExpression()) #24, !dbg !2641
  br label %31, !dbg !2643

19:                                               ; preds = %13
  tail call void @xalloc_die() #26, !dbg !2644
  unreachable, !dbg !2644

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !2645
  %22 = icmp ugt i64 %21, %4, !dbg !2648
  br i1 %22, label %24, label %23, !dbg !2649

23:                                               ; preds = %20
  tail call void @xalloc_die() #26, !dbg !2650
  unreachable, !dbg !2650

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !2651
  %26 = add nuw i64 %4, 1, !dbg !2652
  %27 = add i64 %26, %25, !dbg !2653
  call void @llvm.dbg.value(metadata i64 %27, metadata !173, metadata !DIExpression()), !dbg !2622
  store i64 %27, i64* %1, align 8, !dbg !2639, !tbaa !1833
  %28 = mul i64 %27, %2, !dbg !2640
  call void @llvm.dbg.value(metadata i8* %0, metadata !2592, metadata !DIExpression()) #24, !dbg !2641
  call void @llvm.dbg.value(metadata i64 %28, metadata !2597, metadata !DIExpression()) #24, !dbg !2641
  %29 = icmp eq i64 %28, 0, !dbg !2654
  br i1 %29, label %30, label %31, !dbg !2643

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #24, !dbg !2655
  br label %38, !dbg !2656

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #24, !dbg !2657
  call void @llvm.dbg.value(metadata i8* %33, metadata !2592, metadata !DIExpression()) #24, !dbg !2641
  %34 = icmp eq i8* %33, null, !dbg !2658
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !2659
  br i1 %36, label %37, label %38, !dbg !2659

37:                                               ; preds = %31
  tail call void @xalloc_die() #26, !dbg !2660
  unreachable, !dbg !2660

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !2641
  ret i8* %39, !dbg !2661
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #21 !dbg !2662 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2664, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i64 %0, metadata !2559, metadata !DIExpression()) #24, !dbg !2666
  %2 = tail call noalias i8* @malloc(i64 %0) #24, !dbg !2668
  call void @llvm.dbg.value(metadata i8* %2, metadata !2564, metadata !DIExpression()) #24, !dbg !2666
  %3 = icmp eq i8* %2, null, !dbg !2669
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2670
  br i1 %5, label %6, label %7, !dbg !2670

6:                                                ; preds = %1
  tail call void @xalloc_die() #26, !dbg !2671
  unreachable, !dbg !2671

7:                                                ; preds = %1
  ret i8* %2, !dbg !2672
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !2673 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2677, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i64* %1, metadata !2678, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i8* %0, metadata !170, metadata !DIExpression()) #24, !dbg !2680
  call void @llvm.dbg.value(metadata i64* %1, metadata !171, metadata !DIExpression()) #24, !dbg !2680
  call void @llvm.dbg.value(metadata i64 1, metadata !172, metadata !DIExpression()) #24, !dbg !2680
  %3 = load i64, i64* %1, align 8, !dbg !2682, !tbaa !1833
  call void @llvm.dbg.value(metadata i64 %3, metadata !173, metadata !DIExpression()) #24, !dbg !2680
  %4 = icmp eq i8* %0, null, !dbg !2683
  br i1 %4, label %5, label %10, !dbg !2684

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2685
  br i1 %6, label %17, label %7, !dbg !2686

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !173, metadata !DIExpression()) #24, !dbg !2680
  %8 = icmp slt i64 %3, 0, !dbg !2687
  br i1 %8, label %9, label %17, !dbg !2688

9:                                                ; preds = %7
  tail call void @xalloc_die() #26, !dbg !2689
  unreachable, !dbg !2689

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !2690
  br i1 %11, label %13, label %12, !dbg !2691

12:                                               ; preds = %10
  tail call void @xalloc_die() #26, !dbg !2692
  unreachable, !dbg !2692

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !2693
  %15 = add nuw nsw i64 %3, 1, !dbg !2694
  %16 = add nuw nsw i64 %15, %14, !dbg !2695
  call void @llvm.dbg.value(metadata i64 %16, metadata !173, metadata !DIExpression()) #24, !dbg !2680
  call void @llvm.dbg.value(metadata i8* %0, metadata !2592, metadata !DIExpression()) #24, !dbg !2696
  call void @llvm.dbg.value(metadata i64 %16, metadata !2597, metadata !DIExpression()) #24, !dbg !2696
  br label %17, !dbg !2698

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !2699
  store i64 %18, i64* %1, align 8, !dbg !2699, !tbaa !1833
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #24, !dbg !2700
  call void @llvm.dbg.value(metadata i8* %19, metadata !2592, metadata !DIExpression()) #24, !dbg !2696
  %20 = icmp eq i8* %19, null, !dbg !2701
  br i1 %20, label %21, label %22, !dbg !2702

21:                                               ; preds = %17
  tail call void @xalloc_die() #26, !dbg !2703
  unreachable, !dbg !2703

22:                                               ; preds = %17
  ret i8* %19, !dbg !2704
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !2705 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2707, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i64 %0, metadata !2709, metadata !DIExpression()) #24, !dbg !2714
  call void @llvm.dbg.value(metadata i64 1, metadata !2712, metadata !DIExpression()) #24, !dbg !2714
  %2 = icmp slt i64 %0, 0, !dbg !2716
  br i1 %2, label %6, label %3, !dbg !2718

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #24, !dbg !2719
  call void @llvm.dbg.value(metadata i8* %4, metadata !2713, metadata !DIExpression()) #24, !dbg !2714
  %5 = icmp eq i8* %4, null, !dbg !2720
  br i1 %5, label %6, label %7, !dbg !2721

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #26, !dbg !2722
  unreachable, !dbg !2722

7:                                                ; preds = %3
  ret i8* %4, !dbg !2723
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !2710 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2709, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i64 %1, metadata !2712, metadata !DIExpression()), !dbg !2724
  %3 = udiv i64 9223372036854775807, %1, !dbg !2725
  %4 = icmp ult i64 %3, %0, !dbg !2725
  br i1 %4, label %8, label %5, !dbg !2726

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #24, !dbg !2727
  call void @llvm.dbg.value(metadata i8* %6, metadata !2713, metadata !DIExpression()), !dbg !2724
  %7 = icmp eq i8* %6, null, !dbg !2728
  br i1 %7, label %8, label %9, !dbg !2729

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #26, !dbg !2730
  unreachable, !dbg !2730

9:                                                ; preds = %5
  ret i8* %6, !dbg !2731
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2732 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2738, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i64 %1, metadata !2739, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i64 %1, metadata !2559, metadata !DIExpression()) #24, !dbg !2741
  %3 = tail call noalias i8* @malloc(i64 %1) #24, !dbg !2743
  call void @llvm.dbg.value(metadata i8* %3, metadata !2564, metadata !DIExpression()) #24, !dbg !2741
  %4 = icmp eq i8* %3, null, !dbg !2744
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !2745
  br i1 %6, label %7, label %8, !dbg !2745

7:                                                ; preds = %2
  tail call void @xalloc_die() #26, !dbg !2746
  unreachable, !dbg !2746

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2747, metadata !DIExpression()) #24, !dbg !2756
  call void @llvm.dbg.value(metadata i8* %0, metadata !2754, metadata !DIExpression()) #24, !dbg !2756
  call void @llvm.dbg.value(metadata i64 %1, metadata !2755, metadata !DIExpression()) #24, !dbg !2756
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #24, !dbg !2758
  ret i8* %3, !dbg !2759
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !2760 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2762, metadata !DIExpression()), !dbg !2763
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #25, !dbg !2764
  %3 = add i64 %2, 1, !dbg !2765
  call void @llvm.dbg.value(metadata i8* %0, metadata !2738, metadata !DIExpression()) #24, !dbg !2766
  call void @llvm.dbg.value(metadata i64 %3, metadata !2739, metadata !DIExpression()) #24, !dbg !2766
  call void @llvm.dbg.value(metadata i64 %3, metadata !2559, metadata !DIExpression()) #24, !dbg !2768
  %4 = tail call noalias i8* @malloc(i64 %3) #24, !dbg !2770
  call void @llvm.dbg.value(metadata i8* %4, metadata !2564, metadata !DIExpression()) #24, !dbg !2768
  %5 = icmp eq i8* %4, null, !dbg !2771
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !2772
  br i1 %7, label %8, label %9, !dbg !2772

8:                                                ; preds = %1
  tail call void @xalloc_die() #26, !dbg !2773
  unreachable, !dbg !2773

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !2747, metadata !DIExpression()) #24, !dbg !2774
  call void @llvm.dbg.value(metadata i8* %0, metadata !2754, metadata !DIExpression()) #24, !dbg !2774
  call void @llvm.dbg.value(metadata i64 %3, metadata !2755, metadata !DIExpression()) #24, !dbg !2774
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #24, !dbg !2776
  ret i8* %4, !dbg !2777
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !2778 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !2779, !tbaa !751
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.104, i64 0, i64 0), i32 5) #24, !dbg !2780
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i64 0, i64 0), i8* %2) #24, !dbg !2781
  tail call void @abort() #26, !dbg !2782
  unreachable, !dbg !2782
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #23 !dbg !2783 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2785, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i64 %1, metadata !2786, metadata !DIExpression()), !dbg !2791
  %3 = icmp eq i64 %0, 0, !dbg !2792
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !2793
  br i1 %5, label %11, label %6, !dbg !2793

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !2788, metadata !DIExpression()), !dbg !2794
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !2795
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !2795
  br i1 %8, label %9, label %11, !dbg !2797

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #28, !dbg !2798
  store i32 12, i32* %10, align 4, !dbg !2800, !tbaa !751
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !2785, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i64 %12, metadata !2786, metadata !DIExpression()), !dbg !2791
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #24, !dbg !2801
  call void @llvm.dbg.value(metadata i8* %14, metadata !2787, metadata !DIExpression()), !dbg !2791
  br label %15, !dbg !2802

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !2791
  ret i8* %16, !dbg !2803
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !2804 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !2820, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i8* %1, metadata !2821, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i64 %2, metadata !2822, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !2823, metadata !DIExpression()), !dbg !2829
  %6 = bitcast i32* %5 to i8*, !dbg !2830
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #24, !dbg !2830
  %7 = icmp eq i32* %0, null, !dbg !2831
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !2833
  call void @llvm.dbg.value(metadata i32* %8, metadata !2820, metadata !DIExpression()), !dbg !2829
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #24, !dbg !2834
  call void @llvm.dbg.value(metadata i64 %9, metadata !2824, metadata !DIExpression()), !dbg !2829
  %10 = icmp ugt i64 %9, -3, !dbg !2835
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !2836
  br i1 %12, label %13, label %18, !dbg !2836

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #24, !dbg !2837
  br i1 %14, label %18, label %15, !dbg !2838

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !2839, !tbaa !1133
  call void @llvm.dbg.value(metadata i8 %16, metadata !2826, metadata !DIExpression()), !dbg !2840
  %17 = zext i8 %16 to i32, !dbg !2841
  store i32 %17, i32* %8, align 4, !dbg !2842, !tbaa !751
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !2829
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #24, !dbg !2843
  ret i64 %19, !dbg !2843
}

; Function Attrs: nounwind
declare !dbg !2844 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !2848 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2886, metadata !DIExpression()), !dbg !2891
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #24, !dbg !2892
  call void @llvm.dbg.value(metadata i1 undef, metadata !2887, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2891
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2893, metadata !DIExpression()), !dbg !2897
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !2899
  %4 = load i32, i32* %3, align 8, !dbg !2899, !tbaa !2900
  %5 = and i32 %4, 32, !dbg !2902
  %6 = icmp eq i32 %5, 0, !dbg !2902
  call void @llvm.dbg.value(metadata i1 %6, metadata !2889, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2891
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #24, !dbg !2903
  %8 = icmp eq i32 %7, 0, !dbg !2904
  call void @llvm.dbg.value(metadata i1 %8, metadata !2890, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2891
  br i1 %6, label %9, label %19, !dbg !2905

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !2907
  call void @llvm.dbg.value(metadata i1 %10, metadata !2887, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2891
  %11 = or i1 %10, %8, !dbg !2908
  %12 = xor i1 %8, true, !dbg !2908
  %13 = sext i1 %12 to i32, !dbg !2908
  br i1 %11, label %22, label %14, !dbg !2908

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #28, !dbg !2909
  %16 = load i32, i32* %15, align 4, !dbg !2909, !tbaa !751
  %17 = icmp ne i32 %16, 9, !dbg !2910
  %18 = sext i1 %17 to i32, !dbg !2911
  br label %22, !dbg !2911

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !2912

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #28, !dbg !2914
  store i32 0, i32* %21, align 4, !dbg !2916, !tbaa !751
  br label %22, !dbg !2914

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !2891
  ret i32 %23, !dbg !2917
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !2918 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2922, metadata !DIExpression()), !dbg !2927
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !2928
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #24, !dbg !2928
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !2923, metadata !DIExpression()), !dbg !2929
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #24, !dbg !2930
  %5 = icmp eq i32 %4, 0, !dbg !2930
  br i1 %5, label %6, label %13, !dbg !2932

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !2933
  %8 = load i16, i16* %7, align 16, !dbg !2933
  %9 = icmp eq i16 %8, 67, !dbg !2933
  br i1 %9, label %13, label %10, !dbg !2934

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.114, i64 0, i64 0), i64 6), !dbg !2935
  %12 = icmp ne i32 %11, 0, !dbg !2936
  br label %13, !dbg !2934

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !2927
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #24, !dbg !2937
  ret i1 %14, !dbg !2937
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !2938 {
  %1 = tail call i8* @nl_langinfo(i32 14) #24, !dbg !2943
  call void @llvm.dbg.value(metadata i8* %1, metadata !2942, metadata !DIExpression()), !dbg !2944
  %2 = icmp eq i8* %1, null, !dbg !2945
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.117, i64 0, i64 0), i8* %1, !dbg !2947
  call void @llvm.dbg.value(metadata i8* %3, metadata !2942, metadata !DIExpression()), !dbg !2944
  %4 = load i8, i8* %3, align 1, !dbg !2948, !tbaa !1133
  %5 = icmp eq i8 %4, 0, !dbg !2952
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.118, i64 0, i64 0), i8* %3, !dbg !2953
  call void @llvm.dbg.value(metadata i8* %6, metadata !2942, metadata !DIExpression()), !dbg !2944
  ret i8* %6, !dbg !2954
}

; Function Attrs: nounwind
declare !dbg !2955 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !2956 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2960, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i8* %1, metadata !2961, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i64 %2, metadata !2962, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i32 %0, metadata !2964, metadata !DIExpression()) #24, !dbg !2973
  call void @llvm.dbg.value(metadata i8* %1, metadata !2967, metadata !DIExpression()) #24, !dbg !2973
  call void @llvm.dbg.value(metadata i64 %2, metadata !2968, metadata !DIExpression()) #24, !dbg !2973
  call void @llvm.dbg.value(metadata i32 %0, metadata !2975, metadata !DIExpression()) #24, !dbg !2981
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #24, !dbg !2983
  call void @llvm.dbg.value(metadata i8* %4, metadata !2980, metadata !DIExpression()) #24, !dbg !2981
  call void @llvm.dbg.value(metadata i8* %4, metadata !2969, metadata !DIExpression()) #24, !dbg !2973
  %5 = icmp eq i8* %4, null, !dbg !2984
  br i1 %5, label %6, label %9, !dbg !2985

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !2986
  br i1 %7, label %19, label %8, !dbg !2989

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !2990, !tbaa !1133
  br label %19, !dbg !2991

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #25, !dbg !2992
  call void @llvm.dbg.value(metadata i64 %10, metadata !2970, metadata !DIExpression()) #24, !dbg !2993
  %11 = icmp ult i64 %10, %2, !dbg !2994
  br i1 %11, label %12, label %14, !dbg !2996

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !2997
  call void @llvm.dbg.value(metadata i8* %1, metadata !2999, metadata !DIExpression()) #24, !dbg !3004
  call void @llvm.dbg.value(metadata i8* %4, metadata !3002, metadata !DIExpression()) #24, !dbg !3004
  call void @llvm.dbg.value(metadata i64 %13, metadata !3003, metadata !DIExpression()) #24, !dbg !3004
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #24, !dbg !3006
  br label %19, !dbg !3007

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3008
  br i1 %15, label %19, label %16, !dbg !3011

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3012
  call void @llvm.dbg.value(metadata i8* %1, metadata !2999, metadata !DIExpression()) #24, !dbg !3014
  call void @llvm.dbg.value(metadata i8* %4, metadata !3002, metadata !DIExpression()) #24, !dbg !3014
  call void @llvm.dbg.value(metadata i64 %17, metadata !3003, metadata !DIExpression()) #24, !dbg !3014
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #24, !dbg !3016
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3017
  store i8 0, i8* %18, align 1, !dbg !3018, !tbaa !1133
  br label %19, !dbg !3019

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3020
  ret i32 %20, !dbg !3021
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3022 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3024, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i32 %0, metadata !2975, metadata !DIExpression()) #24, !dbg !3026
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #24, !dbg !3028
  call void @llvm.dbg.value(metadata i8* %2, metadata !2980, metadata !DIExpression()) #24, !dbg !3026
  ret i8* %2, !dbg !3029
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3030 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3068, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i32 0, metadata !3069, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i32 0, metadata !3071, metadata !DIExpression()), !dbg !3072
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !3073
  call void @llvm.dbg.value(metadata i32 %2, metadata !3070, metadata !DIExpression()), !dbg !3072
  %3 = icmp slt i32 %2, 0, !dbg !3074
  br i1 %3, label %4, label %6, !dbg !3076

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3077
  br label %24, !dbg !3078

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #24, !dbg !3079
  %8 = icmp eq i32 %7, 0, !dbg !3079
  br i1 %8, label %13, label %9, !dbg !3081

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !3082
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #24, !dbg !3083
  %12 = icmp eq i64 %11, -1, !dbg !3084
  br i1 %12, label %16, label %13, !dbg !3085

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #24, !dbg !3086
  %15 = icmp eq i32 %14, 0, !dbg !3086
  br i1 %15, label %16, label %18, !dbg !3087

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3069, metadata !DIExpression()), !dbg !3072
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3088
  call void @llvm.dbg.value(metadata i32 %21, metadata !3071, metadata !DIExpression()), !dbg !3072
  br label %24, !dbg !3089

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #28, !dbg !3090
  %20 = load i32, i32* %19, align 4, !dbg !3090, !tbaa !751
  call void @llvm.dbg.value(metadata i32 %20, metadata !3069, metadata !DIExpression()), !dbg !3072
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3088
  call void @llvm.dbg.value(metadata i32 %21, metadata !3071, metadata !DIExpression()), !dbg !3072
  %22 = icmp eq i32 %20, 0, !dbg !3091
  br i1 %22, label %24, label %23, !dbg !3089

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3093, !tbaa !751
  call void @llvm.dbg.value(metadata i32 -1, metadata !3071, metadata !DIExpression()), !dbg !3072
  br label %24, !dbg !3095

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3072
  ret i32 %25, !dbg !3096
}

; Function Attrs: nofree nounwind
declare !dbg !3097 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3100 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3101 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3104 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3142, metadata !DIExpression()), !dbg !3143
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3144
  br i1 %2, label %6, label %3, !dbg !3146

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #24, !dbg !3147
  %5 = icmp eq i32 %4, 0, !dbg !3147
  br i1 %5, label %6, label %8, !dbg !3148

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3149
  br label %17, !dbg !3150

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3151, metadata !DIExpression()) #24, !dbg !3156
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3158
  %10 = load i32, i32* %9, align 8, !dbg !3158, !tbaa !2900
  %11 = and i32 %10, 256, !dbg !3160
  %12 = icmp eq i32 %11, 0, !dbg !3160
  br i1 %12, label %15, label %13, !dbg !3161

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #24, !dbg !3162
  br label %15, !dbg !3162

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3163
  br label %17, !dbg !3164

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3143
  ret i32 %18, !dbg !3165
}

; Function Attrs: nofree nounwind
declare !dbg !3166 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3169 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3208, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i64 %1, metadata !3209, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i32 %2, metadata !3210, metadata !DIExpression()), !dbg !3214
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3215
  %5 = load i8*, i8** %4, align 8, !dbg !3215, !tbaa !3216
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3217
  %7 = load i8*, i8** %6, align 8, !dbg !3217, !tbaa !3218
  %8 = icmp eq i8* %5, %7, !dbg !3219
  br i1 %8, label %9, label %28, !dbg !3220

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3221
  %11 = load i8*, i8** %10, align 8, !dbg !3221, !tbaa !3222
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3223
  %13 = load i8*, i8** %12, align 8, !dbg !3223, !tbaa !3224
  %14 = icmp eq i8* %11, %13, !dbg !3225
  br i1 %14, label %15, label %28, !dbg !3226

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3227
  %17 = load i8*, i8** %16, align 8, !dbg !3227, !tbaa !3228
  %18 = icmp eq i8* %17, null, !dbg !3229
  br i1 %18, label %19, label %28, !dbg !3230

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !3231
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #24, !dbg !3232
  call void @llvm.dbg.value(metadata i64 %21, metadata !3211, metadata !DIExpression()), !dbg !3233
  %22 = icmp eq i64 %21, -1, !dbg !3234
  br i1 %22, label %30, label %23, !dbg !3236

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3237
  %25 = load i32, i32* %24, align 8, !dbg !3238, !tbaa !2900
  %26 = and i32 %25, -17, !dbg !3238
  store i32 %26, i32* %24, align 8, !dbg !3238, !tbaa !2900
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3239
  store i64 %21, i64* %27, align 8, !dbg !3240, !tbaa !3241
  br label %30, !dbg !3242

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3243
  br label %30, !dbg !3244

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3214
  ret i32 %31, !dbg !3245
}

; Function Attrs: nofree nounwind
declare !dbg !3246 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

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

!llvm.dbg.cu = !{!2, !37, !43, !50, !56, !62, !153, !147, !160, !177, !179, !181, !184, !186, !188, !577, !579, !581, !583}
!llvm.ident = !{!585, !585, !585, !585, !585, !585, !585, !585, !585, !585, !585, !585, !585, !585, !585, !585, !585, !585, !585}
!llvm.module.flags = !{!586, !587, !588, !589, !590}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "silent", scope: !2, file: !3, line: 47, type: !34, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !15, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/tty.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 34, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10}
!8 = !DIEnumerator(name: "TTY_STDIN_NOTTY", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "TTY_FAILURE", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "TTY_WRITE_ERROR", value: 3, isUnsigned: true)
!11 = !{!12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !{!16, !17}
!16 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 49, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 1280, elements: !32)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !22, line: 50, size: 256, elements: !23)
!22 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!23 = !{!24, !27, !29, !31}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !21, file: !22, line: 52, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !21, file: !22, line: 55, baseType: !28, size: 32, offset: 64)
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !21, file: !22, line: 56, baseType: !30, size: 64, offset: 128)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !21, file: !22, line: 57, baseType: !28, size: 32, offset: 192)
!32 = !{!33}
!33 = !DISubrange(count: 5)
!34 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "Version", scope: !37, file: !38, line: 2, type: !25, isLocal: false, isDefinition: true)
!37 = distinct !DICompileUnit(language: DW_LANG_C99, file: !38, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, globals: !40, splitDebugInlining: false, nameTableKind: None)
!38 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!39 = !{}
!40 = !{!35}
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "file_name", scope: !43, file: !44, line: 46, type: !25, isLocal: true, isDefinition: true)
!43 = distinct !DICompileUnit(language: DW_LANG_C99, file: !44, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, globals: !45, splitDebugInlining: false, nameTableKind: None)
!44 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!45 = !{!41, !46}
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !43, file: !44, line: 56, type: !34, isLocal: true, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "exit_failure", scope: !50, file: !51, line: 24, type: !53, isLocal: false, isDefinition: true)
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, globals: !52, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!52 = !{!48}
!53 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !28)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "program_name", scope: !56, file: !57, line: 33, type: !25, isLocal: false, isDefinition: true)
!56 = distinct !DICompileUnit(language: DW_LANG_C99, file: !57, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !58, globals: !59, splitDebugInlining: false, nameTableKind: None)
!57 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!58 = !{!14, !12}
!59 = !{!54}
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !62, file: !63, line: 85, type: !141, isLocal: false, isDefinition: true)
!62 = distinct !DICompileUnit(language: DW_LANG_C99, file: !63, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, retainedTypes: !99, globals: !104, splitDebugInlining: false, nameTableKind: None)
!63 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!64 = !{!65, !79, !84}
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !66, line: 32, baseType: !6, size: 32, elements: !67)
!66 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!67 = !{!68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78}
!68 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!69 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!70 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!71 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!72 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!73 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!74 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!75 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!76 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!77 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!78 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !66, line: 242, baseType: !6, size: 32, elements: !80)
!80 = !{!81, !82, !83}
!81 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!82 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!83 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !85, line: 46, baseType: !6, size: 32, elements: !86)
!85 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!86 = !{!87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98}
!87 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!88 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!89 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!90 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!91 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!92 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!93 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!94 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!95 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!96 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!97 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!98 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!99 = !{!28, !100, !101, !12}
!100 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !102, line: 46, baseType: !103)
!102 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!103 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!104 = !{!60, !105, !111, !123, !125, !130, !137, !139}
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !62, file: !63, line: 101, type: !107, isLocal: false, isDefinition: true)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 320, elements: !109)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!109 = !{!110}
!110 = !DISubrange(count: 10)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !62, file: !63, line: 1052, type: !113, isLocal: false, isDefinition: true)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !63, line: 65, size: 448, elements: !114)
!114 = !{!115, !116, !117, !121, !122}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !113, file: !63, line: 68, baseType: !65, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !113, file: !63, line: 71, baseType: !28, size: 32, offset: 32)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !113, file: !63, line: 75, baseType: !118, size: 256, offset: 64)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 8)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !113, file: !63, line: 78, baseType: !25, size: 64, offset: 320)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !113, file: !63, line: 81, baseType: !25, size: 64, offset: 384)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !62, file: !63, line: 116, type: !113, isLocal: true, isDefinition: true)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(name: "slot0", scope: !62, file: !63, line: 842, type: !127, isLocal: true, isDefinition: true)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 2048, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 256)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "slotvec", scope: !62, file: !63, line: 845, type: !132, isLocal: true, isDefinition: true)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !63, line: 834, size: 128, elements: !134)
!134 = !{!135, !136}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !133, file: !63, line: 836, baseType: !101, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !133, file: !63, line: 837, baseType: !12, size: 64, offset: 64)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(name: "nslots", scope: !62, file: !63, line: 843, type: !28, isLocal: true, isDefinition: true)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(name: "slotvec0", scope: !62, file: !63, line: 844, type: !133, isLocal: true, isDefinition: true)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 704, elements: !143)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!143 = !{!144}
!144 = !DISubrange(count: 11)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !147, file: !148, line: 26, type: !150, isLocal: false, isDefinition: true)
!147 = distinct !DICompileUnit(language: DW_LANG_C99, file: !148, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, globals: !149, splitDebugInlining: false, nameTableKind: None)
!148 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!149 = !{!145}
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 376, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 47)
!153 = distinct !DICompileUnit(language: DW_LANG_C99, file: !154, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !155, retainedTypes: !159, splitDebugInlining: false, nameTableKind: None)
!154 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!155 = !{!156}
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !154, line: 40, baseType: !6, size: 32, elements: !157)
!157 = !{!158}
!158 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!159 = !{!14}
!160 = distinct !DICompileUnit(language: DW_LANG_C99, file: !161, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !162, retainedTypes: !176, splitDebugInlining: false, nameTableKind: None)
!161 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!162 = !{!163}
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !165, file: !164, line: 186, baseType: !6, size: 32, elements: !174)
!164 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!165 = distinct !DISubprogram(name: "x2nrealloc", scope: !164, file: !164, line: 174, type: !166, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !169)
!166 = !DISubroutineType(types: !167)
!167 = !{!14, !14, !168, !101}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!169 = !{!170, !171, !172, !173}
!170 = !DILocalVariable(name: "p", arg: 1, scope: !165, file: !164, line: 174, type: !14)
!171 = !DILocalVariable(name: "pn", arg: 2, scope: !165, file: !164, line: 174, type: !168)
!172 = !DILocalVariable(name: "s", arg: 3, scope: !165, file: !164, line: 174, type: !101)
!173 = !DILocalVariable(name: "n", scope: !165, file: !164, line: 176, type: !101)
!174 = !{!175}
!175 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!176 = !{!101, !12, !14}
!177 = distinct !DICompileUnit(language: DW_LANG_C99, file: !178, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, splitDebugInlining: false, nameTableKind: None)
!178 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!179 = distinct !DICompileUnit(language: DW_LANG_C99, file: !180, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !159, splitDebugInlining: false, nameTableKind: None)
!180 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!181 = distinct !DICompileUnit(language: DW_LANG_C99, file: !182, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !183, splitDebugInlining: false, nameTableKind: None)
!182 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!183 = !{!101}
!184 = distinct !DICompileUnit(language: DW_LANG_C99, file: !185, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, splitDebugInlining: false, nameTableKind: None)
!185 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!186 = distinct !DICompileUnit(language: DW_LANG_C99, file: !187, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, splitDebugInlining: false, nameTableKind: None)
!187 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!188 = distinct !DICompileUnit(language: DW_LANG_C99, file: !189, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !190, retainedTypes: !159, splitDebugInlining: false, nameTableKind: None)
!189 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!190 = !{!191}
!191 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !192, line: 41, baseType: !6, size: 32, elements: !193)
!192 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!193 = !{!194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576}
!194 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!195 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!196 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!197 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!198 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!199 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!200 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!201 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!202 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!203 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!204 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!205 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!206 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!207 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!208 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!209 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!210 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!211 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!212 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!213 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!214 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!215 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!216 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!217 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!218 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!219 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!220 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!221 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!222 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!223 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!224 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!225 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!226 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!227 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!228 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!229 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!230 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!231 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!232 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!233 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!234 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!235 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!236 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!237 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!238 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!239 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!240 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!241 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!242 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!243 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!244 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!245 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!246 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!247 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!248 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!249 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!250 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!251 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!252 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!253 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!254 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!255 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!256 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!257 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!258 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!259 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!260 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!261 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!262 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!263 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!264 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!265 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!266 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!267 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!268 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!269 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!270 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!271 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!272 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!273 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!274 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!302 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!305 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!306 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!307 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!308 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!309 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!310 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!311 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!312 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!313 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!314 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!315 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!316 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!389 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!462 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!463 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!464 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!465 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!466 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!467 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!468 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!469 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!470 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!471 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!472 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!473 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!474 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!475 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!476 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!478 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!479 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!480 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!481 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!482 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!483 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!509 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!510 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!511 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!512 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!513 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!518 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!519 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!520 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!521 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!577 = distinct !DICompileUnit(language: DW_LANG_C99, file: !578, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !159, splitDebugInlining: false, nameTableKind: None)
!578 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!579 = distinct !DICompileUnit(language: DW_LANG_C99, file: !580, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, splitDebugInlining: false, nameTableKind: None)
!580 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!581 = distinct !DICompileUnit(language: DW_LANG_C99, file: !582, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !159, splitDebugInlining: false, nameTableKind: None)
!582 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!583 = distinct !DICompileUnit(language: DW_LANG_C99, file: !584, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !159, splitDebugInlining: false, nameTableKind: None)
!584 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!585 = !{!"clang version 12.0.1"}
!586 = !{i32 7, !"Dwarf Version", i32 4}
!587 = !{i32 2, !"Debug Info Version", i32 3}
!588 = !{i32 1, !"wchar_size", i32 4}
!589 = !{i32 7, !"PIC Level", i32 2}
!590 = !{i32 7, !"PIE Level", i32 2}
!591 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 59, type: !592, scopeLine: 60, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !594)
!592 = !DISubroutineType(types: !593)
!593 = !{null, !28}
!594 = !{!595}
!595 = !DILocalVariable(name: "status", arg: 1, scope: !591, file: !3, line: 59, type: !28)
!596 = !DILocation(line: 0, scope: !591)
!597 = !DILocation(line: 61, column: 14, scope: !598)
!598 = distinct !DILexicalBlock(scope: !591, file: !3, line: 61, column: 7)
!599 = !DILocation(line: 61, column: 7, scope: !591)
!600 = !DILocation(line: 62, column: 5, scope: !601)
!601 = distinct !DILexicalBlock(scope: !598, file: !3, line: 62, column: 5)
!602 = !{!603, !603, i64 0}
!603 = !{!"any pointer", !604, i64 0}
!604 = !{!"omnipotent char", !605, i64 0}
!605 = !{!"Simple C/C++ TBAA"}
!606 = !DILocation(line: 65, column: 7, scope: !607)
!607 = distinct !DILexicalBlock(scope: !598, file: !3, line: 64, column: 5)
!608 = !DILocation(line: 66, column: 7, scope: !607)
!609 = !DILocation(line: 71, column: 7, scope: !607)
!610 = !DILocation(line: 72, column: 7, scope: !607)
!611 = !DILocalVariable(name: "program", arg: 1, scope: !612, file: !613, line: 634, type: !25)
!612 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !613, file: !613, line: 634, type: !614, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !616)
!613 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!614 = !DISubroutineType(types: !615)
!615 = !{null, !25}
!616 = !{!611, !617, !626, !627, !629}
!617 = !DILocalVariable(name: "infomap", scope: !612, file: !613, line: 636, type: !618)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !619, size: 896, elements: !624)
!619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !620)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !612, file: !613, line: 636, size: 128, elements: !621)
!621 = !{!622, !623}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !620, file: !613, line: 636, baseType: !25, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !620, file: !613, line: 636, baseType: !25, size: 64, offset: 64)
!624 = !{!625}
!625 = !DISubrange(count: 7)
!626 = !DILocalVariable(name: "node", scope: !612, file: !613, line: 646, type: !25)
!627 = !DILocalVariable(name: "map_prog", scope: !612, file: !613, line: 647, type: !628)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!629 = !DILocalVariable(name: "lc_messages", scope: !612, file: !613, line: 659, type: !25)
!630 = !DILocation(line: 0, scope: !612, inlinedAt: !631)
!631 = distinct !DILocation(line: 73, column: 7, scope: !607)
!632 = !DILocation(line: 636, column: 3, scope: !612, inlinedAt: !631)
!633 = !DILocation(line: 636, column: 67, scope: !612, inlinedAt: !631)
!634 = !DILocation(line: 647, column: 36, scope: !612, inlinedAt: !631)
!635 = !DILocation(line: 649, column: 3, scope: !612, inlinedAt: !631)
!636 = !DILocation(line: 649, column: 33, scope: !612, inlinedAt: !631)
!637 = !DILocation(line: 650, column: 13, scope: !612, inlinedAt: !631)
!638 = !DILocation(line: 649, column: 20, scope: !612, inlinedAt: !631)
!639 = !{!640, !603, i64 0}
!640 = !{!"infomap", !603, i64 0, !603, i64 8}
!641 = !DILocation(line: 649, column: 10, scope: !612, inlinedAt: !631)
!642 = !DILocation(line: 649, column: 28, scope: !612, inlinedAt: !631)
!643 = distinct !{!643, !635, !637, !644}
!644 = !{!"llvm.loop.mustprogress"}
!645 = !DILocation(line: 652, column: 17, scope: !646, inlinedAt: !631)
!646 = distinct !DILexicalBlock(scope: !612, file: !613, line: 652, column: 7)
!647 = !{!640, !603, i64 8}
!648 = !DILocation(line: 652, column: 7, scope: !646, inlinedAt: !631)
!649 = !DILocation(line: 652, column: 7, scope: !612, inlinedAt: !631)
!650 = !DILocation(line: 655, column: 3, scope: !612, inlinedAt: !631)
!651 = !DILocation(line: 659, column: 29, scope: !612, inlinedAt: !631)
!652 = !DILocation(line: 660, column: 7, scope: !653, inlinedAt: !631)
!653 = distinct !DILexicalBlock(scope: !612, file: !613, line: 660, column: 7)
!654 = !DILocation(line: 660, column: 19, scope: !653, inlinedAt: !631)
!655 = !DILocation(line: 660, column: 22, scope: !653, inlinedAt: !631)
!656 = !DILocation(line: 660, column: 7, scope: !612, inlinedAt: !631)
!657 = !DILocation(line: 666, column: 7, scope: !658, inlinedAt: !631)
!658 = distinct !DILexicalBlock(scope: !653, file: !613, line: 661, column: 5)
!659 = !DILocation(line: 668, column: 5, scope: !658, inlinedAt: !631)
!660 = !DILocation(line: 669, column: 3, scope: !612, inlinedAt: !631)
!661 = !DILocation(line: 671, column: 3, scope: !612, inlinedAt: !631)
!662 = !DILocation(line: 673, column: 1, scope: !612, inlinedAt: !631)
!663 = !DILocation(line: 75, column: 3, scope: !591)
!664 = !DISubprogram(name: "dcgettext", scope: !665, file: !665, line: 51, type: !666, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!665 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!666 = !DISubroutineType(types: !667)
!667 = !{!12, !25, !25, !28}
!668 = !DISubprogram(name: "fputs_unlocked", scope: !669, file: !669, line: 667, type: !670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!669 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!670 = !DISubroutineType(types: !671)
!671 = !{!28, !25, !672}
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !674, line: 49, size: 1728, elements: !675)
!674 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!675 = !{!676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !691, !692, !693, !694, !698, !699, !701, !705, !708, !710, !713, !716, !717, !718, !719, !720}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !673, file: !674, line: 51, baseType: !28, size: 32)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !673, file: !674, line: 54, baseType: !12, size: 64, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !673, file: !674, line: 55, baseType: !12, size: 64, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !673, file: !674, line: 56, baseType: !12, size: 64, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !673, file: !674, line: 57, baseType: !12, size: 64, offset: 256)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !673, file: !674, line: 58, baseType: !12, size: 64, offset: 320)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !673, file: !674, line: 59, baseType: !12, size: 64, offset: 384)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !673, file: !674, line: 60, baseType: !12, size: 64, offset: 448)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !673, file: !674, line: 61, baseType: !12, size: 64, offset: 512)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !673, file: !674, line: 64, baseType: !12, size: 64, offset: 576)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !673, file: !674, line: 65, baseType: !12, size: 64, offset: 640)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !673, file: !674, line: 66, baseType: !12, size: 64, offset: 704)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !673, file: !674, line: 68, baseType: !689, size: 64, offset: 768)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !674, line: 36, flags: DIFlagFwdDecl)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !673, file: !674, line: 70, baseType: !672, size: 64, offset: 832)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !673, file: !674, line: 72, baseType: !28, size: 32, offset: 896)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !673, file: !674, line: 73, baseType: !28, size: 32, offset: 928)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !673, file: !674, line: 74, baseType: !695, size: 64, offset: 960)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !696, line: 152, baseType: !697)
!696 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!697 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !673, file: !674, line: 77, baseType: !100, size: 16, offset: 1024)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !673, file: !674, line: 78, baseType: !700, size: 8, offset: 1040)
!700 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !673, file: !674, line: 79, baseType: !702, size: 8, offset: 1048)
!702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8, elements: !703)
!703 = !{!704}
!704 = !DISubrange(count: 1)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !673, file: !674, line: 81, baseType: !706, size: 64, offset: 1088)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !674, line: 43, baseType: null)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !673, file: !674, line: 89, baseType: !709, size: 64, offset: 1152)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !696, line: 153, baseType: !697)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !673, file: !674, line: 91, baseType: !711, size: 64, offset: 1216)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !674, line: 37, flags: DIFlagFwdDecl)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !673, file: !674, line: 92, baseType: !714, size: 64, offset: 1280)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !674, line: 38, flags: DIFlagFwdDecl)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !673, file: !674, line: 93, baseType: !672, size: 64, offset: 1344)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !673, file: !674, line: 94, baseType: !14, size: 64, offset: 1408)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !673, file: !674, line: 95, baseType: !101, size: 64, offset: 1472)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !673, file: !674, line: 96, baseType: !28, size: 32, offset: 1536)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !673, file: !674, line: 98, baseType: !721, size: 160, offset: 1568)
!721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 160, elements: !722)
!722 = !{!723}
!723 = !DISubrange(count: 20)
!724 = !DISubprogram(name: "setlocale", scope: !725, file: !725, line: 122, type: !726, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!725 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!726 = !DISubroutineType(types: !727)
!727 = !{!12, !28, !25}
!728 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 79, type: !729, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !732)
!729 = !DISubroutineType(types: !730)
!730 = !{!28, !28, !731}
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!732 = !{!733, !734, !735, !736, !737}
!733 = !DILocalVariable(name: "argc", arg: 1, scope: !728, file: !3, line: 79, type: !28)
!734 = !DILocalVariable(name: "argv", arg: 2, scope: !728, file: !3, line: 79, type: !731)
!735 = !DILocalVariable(name: "optc", scope: !728, file: !3, line: 81, type: !28)
!736 = !DILocalVariable(name: "status", scope: !728, file: !3, line: 122, type: !28)
!737 = !DILocalVariable(name: "tty", scope: !728, file: !3, line: 123, type: !25)
!738 = !DILocation(line: 0, scope: !728)
!739 = !DILocation(line: 84, column: 21, scope: !728)
!740 = !DILocation(line: 84, column: 3, scope: !728)
!741 = !DILocation(line: 85, column: 3, scope: !728)
!742 = !DILocation(line: 86, column: 3, scope: !728)
!743 = !DILocation(line: 87, column: 3, scope: !728)
!744 = !DILocalVariable(name: "status", arg: 1, scope: !745, file: !613, line: 99, type: !28)
!745 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !613, file: !613, line: 99, type: !592, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !746)
!746 = !{!744}
!747 = !DILocation(line: 0, scope: !745, inlinedAt: !748)
!748 = distinct !DILocation(line: 89, column: 3, scope: !728)
!749 = !DILocation(line: 102, column: 18, scope: !750, inlinedAt: !748)
!750 = distinct !DILexicalBlock(scope: !745, file: !613, line: 101, column: 7)
!751 = !{!752, !752, i64 0}
!752 = !{!"int", !604, i64 0}
!753 = !DILocation(line: 90, column: 3, scope: !728)
!754 = !DILocation(line: 94, column: 3, scope: !728)
!755 = !DILocation(line: 94, column: 18, scope: !728)
!756 = distinct !{!756, !754, !757, !644}
!757 = !DILocation(line: 109, column: 5, scope: !728)
!758 = !DILocation(line: 102, column: 9, scope: !759)
!759 = distinct !DILexicalBlock(scope: !760, file: !3, line: 97, column: 9)
!760 = distinct !DILexicalBlock(scope: !728, file: !3, line: 95, column: 5)
!761 = !DILocation(line: 104, column: 9, scope: !759)
!762 = !DILocation(line: 107, column: 11, scope: !759)
!763 = !DILocation(line: 111, column: 7, scope: !764)
!764 = distinct !DILexicalBlock(scope: !728, file: !3, line: 111, column: 7)
!765 = !DILocation(line: 111, column: 14, scope: !764)
!766 = !DILocation(line: 111, column: 7, scope: !728)
!767 = !DILocation(line: 113, column: 20, scope: !768)
!768 = distinct !DILexicalBlock(scope: !764, file: !3, line: 112, column: 5)
!769 = !DILocation(line: 113, column: 55, scope: !768)
!770 = !DILocation(line: 113, column: 50, scope: !768)
!771 = !DILocation(line: 113, column: 43, scope: !768)
!772 = !DILocation(line: 113, column: 7, scope: !768)
!773 = !DILocation(line: 114, column: 7, scope: !768)
!774 = !DILocation(line: 117, column: 3, scope: !728)
!775 = !DILocation(line: 117, column: 9, scope: !728)
!776 = !DILocation(line: 119, column: 7, scope: !777)
!777 = distinct !DILexicalBlock(scope: !728, file: !3, line: 119, column: 7)
!778 = !DILocation(line: 119, column: 7, scope: !728)
!779 = !DILocation(line: 120, column: 12, scope: !777)
!780 = !DILocation(line: 120, column: 5, scope: !777)
!781 = !DILocation(line: 123, column: 21, scope: !728)
!782 = !DILocation(line: 125, column: 9, scope: !783)
!783 = distinct !DILexicalBlock(scope: !728, file: !3, line: 125, column: 7)
!784 = !DILocation(line: 125, column: 7, scope: !728)
!785 = !DILocation(line: 127, column: 13, scope: !786)
!786 = distinct !DILexicalBlock(scope: !783, file: !3, line: 126, column: 5)
!787 = !DILocation(line: 129, column: 5, scope: !786)
!788 = !DILocation(line: 131, column: 3, scope: !728)
!789 = !DILocation(line: 133, column: 1, scope: !728)
!790 = !DISubprogram(name: "bindtextdomain", scope: !665, file: !665, line: 86, type: !791, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!791 = !DISubroutineType(types: !792)
!792 = !{!12, !25, !25}
!793 = !DISubprogram(name: "textdomain", scope: !665, file: !665, line: 82, type: !794, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!794 = !DISubroutineType(types: !795)
!795 = !{!12, !25}
!796 = !DISubprogram(name: "atexit", scope: !797, file: !797, line: 595, type: !798, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!797 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!798 = !DISubroutineType(types: !799)
!799 = !{!28, !800}
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{null}
!803 = !DISubprogram(name: "getopt_long", scope: !22, file: !22, line: 66, type: !804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!804 = !DISubroutineType(types: !805)
!805 = !{!28, !28, !806, !25, !808, !30}
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!809 = !DISubprogram(name: "error", scope: !810, file: !810, line: 52, type: !811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!810 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!811 = !DISubroutineType(types: !812)
!812 = !{null, !28, !28, !25, null}
!813 = !DISubprogram(name: "isatty", scope: !814, file: !814, line: 791, type: !815, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!814 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!815 = !DISubroutineType(types: !816)
!816 = !{!28, !28}
!817 = !DISubprogram(name: "ttyname", scope: !814, file: !814, line: 782, type: !818, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!818 = !DISubroutineType(types: !819)
!819 = !{!12, !28}
!820 = !DISubprogram(name: "puts", scope: !669, file: !669, line: 637, type: !821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!821 = !DISubroutineType(types: !822)
!822 = !{!28, !25}
!823 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !44, file: !44, line: 51, type: !614, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !43, retainedNodes: !824)
!824 = !{!825}
!825 = !DILocalVariable(name: "file", arg: 1, scope: !823, file: !44, line: 51, type: !25)
!826 = !DILocation(line: 0, scope: !823)
!827 = !DILocation(line: 53, column: 13, scope: !823)
!828 = !DILocation(line: 54, column: 1, scope: !823)
!829 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !44, file: !44, line: 88, type: !830, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !43, retainedNodes: !832)
!830 = !DISubroutineType(types: !831)
!831 = !{null, !34}
!832 = !{!833}
!833 = !DILocalVariable(name: "ignore", arg: 1, scope: !829, file: !44, line: 88, type: !34)
!834 = !DILocation(line: 0, scope: !829)
!835 = !DILocation(line: 90, column: 16, scope: !829)
!836 = !{!837, !837, i64 0}
!837 = !{!"_Bool", !604, i64 0}
!838 = !DILocation(line: 91, column: 1, scope: !829)
!839 = distinct !DISubprogram(name: "close_stdout", scope: !44, file: !44, line: 117, type: !801, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !43, retainedNodes: !840)
!840 = !{!841}
!841 = !DILocalVariable(name: "write_error", scope: !842, file: !44, line: 122, type: !25)
!842 = distinct !DILexicalBlock(scope: !843, file: !44, line: 121, column: 5)
!843 = distinct !DILexicalBlock(scope: !839, file: !44, line: 119, column: 7)
!844 = !DILocation(line: 119, column: 21, scope: !843)
!845 = !DILocation(line: 119, column: 7, scope: !843)
!846 = !DILocation(line: 119, column: 29, scope: !843)
!847 = !DILocation(line: 120, column: 7, scope: !843)
!848 = !DILocation(line: 120, column: 12, scope: !843)
!849 = !{i8 0, i8 2}
!850 = !DILocation(line: 120, column: 25, scope: !843)
!851 = !DILocation(line: 120, column: 28, scope: !843)
!852 = !DILocation(line: 120, column: 34, scope: !843)
!853 = !DILocation(line: 119, column: 7, scope: !839)
!854 = !DILocation(line: 122, column: 33, scope: !842)
!855 = !DILocation(line: 0, scope: !842)
!856 = !DILocation(line: 123, column: 11, scope: !857)
!857 = distinct !DILexicalBlock(scope: !842, file: !44, line: 123, column: 11)
!858 = !DILocation(line: 0, scope: !857)
!859 = !DILocation(line: 123, column: 11, scope: !842)
!860 = !DILocation(line: 124, column: 36, scope: !857)
!861 = !DILocation(line: 124, column: 9, scope: !857)
!862 = !DILocation(line: 127, column: 9, scope: !857)
!863 = !DILocation(line: 129, column: 14, scope: !842)
!864 = !DILocation(line: 129, column: 7, scope: !842)
!865 = !DILocation(line: 134, column: 42, scope: !866)
!866 = distinct !DILexicalBlock(scope: !839, file: !44, line: 134, column: 7)
!867 = !DILocation(line: 134, column: 28, scope: !866)
!868 = !DILocation(line: 134, column: 50, scope: !866)
!869 = !DILocation(line: 134, column: 7, scope: !839)
!870 = !DILocation(line: 135, column: 12, scope: !866)
!871 = !DILocation(line: 135, column: 5, scope: !866)
!872 = !DILocation(line: 136, column: 1, scope: !839)
!873 = distinct !DISubprogram(name: "set_program_name", scope: !57, file: !57, line: 39, type: !614, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !874)
!874 = !{!875, !876, !877}
!875 = !DILocalVariable(name: "argv0", arg: 1, scope: !873, file: !57, line: 39, type: !25)
!876 = !DILocalVariable(name: "slash", scope: !873, file: !57, line: 46, type: !25)
!877 = !DILocalVariable(name: "base", scope: !873, file: !57, line: 47, type: !25)
!878 = !DILocation(line: 0, scope: !873)
!879 = !DILocation(line: 51, column: 13, scope: !880)
!880 = distinct !DILexicalBlock(scope: !873, file: !57, line: 51, column: 7)
!881 = !DILocation(line: 51, column: 7, scope: !873)
!882 = !DILocation(line: 55, column: 14, scope: !883)
!883 = distinct !DILexicalBlock(scope: !880, file: !57, line: 52, column: 5)
!884 = !DILocation(line: 54, column: 7, scope: !883)
!885 = !DILocation(line: 56, column: 7, scope: !883)
!886 = !DILocation(line: 59, column: 11, scope: !873)
!887 = !DILocation(line: 60, column: 17, scope: !873)
!888 = !DILocation(line: 60, column: 11, scope: !873)
!889 = !DILocation(line: 61, column: 12, scope: !890)
!890 = distinct !DILexicalBlock(scope: !873, file: !57, line: 61, column: 7)
!891 = !DILocation(line: 61, column: 20, scope: !890)
!892 = !DILocation(line: 61, column: 25, scope: !890)
!893 = !DILocation(line: 61, column: 42, scope: !890)
!894 = !DILocation(line: 61, column: 28, scope: !890)
!895 = !DILocation(line: 61, column: 61, scope: !890)
!896 = !DILocation(line: 61, column: 7, scope: !873)
!897 = !DILocation(line: 64, column: 11, scope: !898)
!898 = distinct !DILexicalBlock(scope: !899, file: !57, line: 64, column: 11)
!899 = distinct !DILexicalBlock(scope: !890, file: !57, line: 62, column: 5)
!900 = !DILocation(line: 64, column: 36, scope: !898)
!901 = !DILocation(line: 64, column: 11, scope: !899)
!902 = !DILocation(line: 66, column: 24, scope: !903)
!903 = distinct !DILexicalBlock(scope: !898, file: !57, line: 65, column: 9)
!904 = !DILocation(line: 70, column: 41, scope: !903)
!905 = !DILocation(line: 72, column: 9, scope: !903)
!906 = !DILocation(line: 84, column: 16, scope: !873)
!907 = !DILocation(line: 90, column: 27, scope: !873)
!908 = !DILocation(line: 92, column: 1, scope: !873)
!909 = distinct !DISubprogram(name: "clone_quoting_options", scope: !63, file: !63, line: 122, type: !910, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !913)
!910 = !DISubroutineType(types: !911)
!911 = !{!912, !912}
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!913 = !{!914, !915, !916}
!914 = !DILocalVariable(name: "o", arg: 1, scope: !909, file: !63, line: 122, type: !912)
!915 = !DILocalVariable(name: "e", scope: !909, file: !63, line: 124, type: !28)
!916 = !DILocalVariable(name: "p", scope: !909, file: !63, line: 125, type: !912)
!917 = !DILocation(line: 0, scope: !909)
!918 = !DILocation(line: 124, column: 11, scope: !909)
!919 = !DILocation(line: 125, column: 40, scope: !909)
!920 = !DILocation(line: 125, column: 31, scope: !909)
!921 = !DILocation(line: 127, column: 9, scope: !909)
!922 = !DILocation(line: 128, column: 3, scope: !909)
!923 = distinct !DISubprogram(name: "get_quoting_style", scope: !63, file: !63, line: 133, type: !924, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !928)
!924 = !DISubroutineType(types: !925)
!925 = !{!65, !926}
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!928 = !{!929}
!929 = !DILocalVariable(name: "o", arg: 1, scope: !923, file: !63, line: 133, type: !926)
!930 = !DILocation(line: 0, scope: !923)
!931 = !DILocation(line: 135, column: 11, scope: !923)
!932 = !DILocation(line: 135, column: 46, scope: !923)
!933 = !{!934, !604, i64 0}
!934 = !{!"quoting_options", !604, i64 0, !752, i64 4, !604, i64 8, !603, i64 40, !603, i64 48}
!935 = !DILocation(line: 135, column: 3, scope: !923)
!936 = distinct !DISubprogram(name: "set_quoting_style", scope: !63, file: !63, line: 141, type: !937, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !939)
!937 = !DISubroutineType(types: !938)
!938 = !{null, !912, !65}
!939 = !{!940, !941}
!940 = !DILocalVariable(name: "o", arg: 1, scope: !936, file: !63, line: 141, type: !912)
!941 = !DILocalVariable(name: "s", arg: 2, scope: !936, file: !63, line: 141, type: !65)
!942 = !DILocation(line: 0, scope: !936)
!943 = !DILocation(line: 143, column: 4, scope: !936)
!944 = !DILocation(line: 143, column: 39, scope: !936)
!945 = !DILocation(line: 143, column: 45, scope: !936)
!946 = !DILocation(line: 144, column: 1, scope: !936)
!947 = distinct !DISubprogram(name: "set_char_quoting", scope: !63, file: !63, line: 152, type: !948, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !950)
!948 = !DISubroutineType(types: !949)
!949 = !{!28, !912, !13, !28}
!950 = !{!951, !952, !953, !954, !956, !958, !959}
!951 = !DILocalVariable(name: "o", arg: 1, scope: !947, file: !63, line: 152, type: !912)
!952 = !DILocalVariable(name: "c", arg: 2, scope: !947, file: !63, line: 152, type: !13)
!953 = !DILocalVariable(name: "i", arg: 3, scope: !947, file: !63, line: 152, type: !28)
!954 = !DILocalVariable(name: "uc", scope: !947, file: !63, line: 154, type: !955)
!955 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!956 = !DILocalVariable(name: "p", scope: !947, file: !63, line: 155, type: !957)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!958 = !DILocalVariable(name: "shift", scope: !947, file: !63, line: 157, type: !28)
!959 = !DILocalVariable(name: "r", scope: !947, file: !63, line: 158, type: !28)
!960 = !DILocation(line: 0, scope: !947)
!961 = !DILocation(line: 156, column: 6, scope: !947)
!962 = !DILocation(line: 156, column: 62, scope: !947)
!963 = !DILocation(line: 156, column: 57, scope: !947)
!964 = !DILocation(line: 157, column: 15, scope: !947)
!965 = !DILocation(line: 158, column: 12, scope: !947)
!966 = !DILocation(line: 158, column: 15, scope: !947)
!967 = !DILocation(line: 158, column: 25, scope: !947)
!968 = !DILocation(line: 159, column: 13, scope: !947)
!969 = !DILocation(line: 159, column: 18, scope: !947)
!970 = !DILocation(line: 159, column: 23, scope: !947)
!971 = !DILocation(line: 159, column: 6, scope: !947)
!972 = !DILocation(line: 160, column: 3, scope: !947)
!973 = distinct !DISubprogram(name: "set_quoting_flags", scope: !63, file: !63, line: 168, type: !974, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !976)
!974 = !DISubroutineType(types: !975)
!975 = !{!28, !912, !28}
!976 = !{!977, !978, !979}
!977 = !DILocalVariable(name: "o", arg: 1, scope: !973, file: !63, line: 168, type: !912)
!978 = !DILocalVariable(name: "i", arg: 2, scope: !973, file: !63, line: 168, type: !28)
!979 = !DILocalVariable(name: "r", scope: !973, file: !63, line: 170, type: !28)
!980 = !DILocation(line: 0, scope: !973)
!981 = !DILocation(line: 171, column: 8, scope: !982)
!982 = distinct !DILexicalBlock(scope: !973, file: !63, line: 171, column: 7)
!983 = !DILocation(line: 171, column: 7, scope: !973)
!984 = !DILocation(line: 173, column: 10, scope: !973)
!985 = !{!934, !752, i64 4}
!986 = !DILocation(line: 174, column: 12, scope: !973)
!987 = !DILocation(line: 175, column: 3, scope: !973)
!988 = distinct !DISubprogram(name: "set_custom_quoting", scope: !63, file: !63, line: 179, type: !989, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !991)
!989 = !DISubroutineType(types: !990)
!990 = !{null, !912, !25, !25}
!991 = !{!992, !993, !994}
!992 = !DILocalVariable(name: "o", arg: 1, scope: !988, file: !63, line: 179, type: !912)
!993 = !DILocalVariable(name: "left_quote", arg: 2, scope: !988, file: !63, line: 180, type: !25)
!994 = !DILocalVariable(name: "right_quote", arg: 3, scope: !988, file: !63, line: 180, type: !25)
!995 = !DILocation(line: 0, scope: !988)
!996 = !DILocation(line: 182, column: 8, scope: !997)
!997 = distinct !DILexicalBlock(scope: !988, file: !63, line: 182, column: 7)
!998 = !DILocation(line: 182, column: 7, scope: !988)
!999 = !DILocation(line: 184, column: 6, scope: !988)
!1000 = !DILocation(line: 184, column: 12, scope: !988)
!1001 = !DILocation(line: 185, column: 8, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !988, file: !63, line: 185, column: 7)
!1003 = !DILocation(line: 185, column: 19, scope: !1002)
!1004 = !DILocation(line: 186, column: 5, scope: !1002)
!1005 = !DILocation(line: 187, column: 6, scope: !988)
!1006 = !DILocation(line: 187, column: 17, scope: !988)
!1007 = !{!934, !603, i64 40}
!1008 = !DILocation(line: 188, column: 6, scope: !988)
!1009 = !DILocation(line: 188, column: 18, scope: !988)
!1010 = !{!934, !603, i64 48}
!1011 = !DILocation(line: 189, column: 1, scope: !988)
!1012 = distinct !DISubprogram(name: "quotearg_buffer", scope: !63, file: !63, line: 784, type: !1013, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !1015)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!101, !12, !101, !25, !101, !926}
!1015 = !{!1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023}
!1016 = !DILocalVariable(name: "buffer", arg: 1, scope: !1012, file: !63, line: 784, type: !12)
!1017 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1012, file: !63, line: 784, type: !101)
!1018 = !DILocalVariable(name: "arg", arg: 3, scope: !1012, file: !63, line: 785, type: !25)
!1019 = !DILocalVariable(name: "argsize", arg: 4, scope: !1012, file: !63, line: 785, type: !101)
!1020 = !DILocalVariable(name: "o", arg: 5, scope: !1012, file: !63, line: 786, type: !926)
!1021 = !DILocalVariable(name: "p", scope: !1012, file: !63, line: 788, type: !926)
!1022 = !DILocalVariable(name: "e", scope: !1012, file: !63, line: 789, type: !28)
!1023 = !DILocalVariable(name: "r", scope: !1012, file: !63, line: 790, type: !101)
!1024 = !DILocation(line: 0, scope: !1012)
!1025 = !DILocation(line: 788, column: 37, scope: !1012)
!1026 = !DILocation(line: 789, column: 11, scope: !1012)
!1027 = !DILocation(line: 791, column: 43, scope: !1012)
!1028 = !DILocation(line: 791, column: 53, scope: !1012)
!1029 = !DILocation(line: 791, column: 60, scope: !1012)
!1030 = !DILocation(line: 792, column: 43, scope: !1012)
!1031 = !DILocation(line: 792, column: 58, scope: !1012)
!1032 = !DILocation(line: 790, column: 14, scope: !1012)
!1033 = !DILocation(line: 793, column: 9, scope: !1012)
!1034 = !DILocation(line: 794, column: 3, scope: !1012)
!1035 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !63, file: !63, line: 256, type: !1036, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !1040)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!101, !12, !101, !25, !101, !65, !28, !1038, !25, !25}
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1040 = !{!1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1065, !1066, !1067, !1068, !1069, !1072, !1073, !1091, !1094, !1095, !1102, !1105, !1106, !1107, !1108, !1109, !1110}
!1041 = !DILocalVariable(name: "buffer", arg: 1, scope: !1035, file: !63, line: 256, type: !12)
!1042 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1035, file: !63, line: 256, type: !101)
!1043 = !DILocalVariable(name: "arg", arg: 3, scope: !1035, file: !63, line: 257, type: !25)
!1044 = !DILocalVariable(name: "argsize", arg: 4, scope: !1035, file: !63, line: 257, type: !101)
!1045 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1035, file: !63, line: 258, type: !65)
!1046 = !DILocalVariable(name: "flags", arg: 6, scope: !1035, file: !63, line: 258, type: !28)
!1047 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1035, file: !63, line: 259, type: !1038)
!1048 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1035, file: !63, line: 260, type: !25)
!1049 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1035, file: !63, line: 261, type: !25)
!1050 = !DILocalVariable(name: "i", scope: !1035, file: !63, line: 263, type: !101)
!1051 = !DILocalVariable(name: "len", scope: !1035, file: !63, line: 264, type: !101)
!1052 = !DILocalVariable(name: "orig_buffersize", scope: !1035, file: !63, line: 265, type: !101)
!1053 = !DILocalVariable(name: "quote_string", scope: !1035, file: !63, line: 266, type: !25)
!1054 = !DILocalVariable(name: "quote_string_len", scope: !1035, file: !63, line: 267, type: !101)
!1055 = !DILocalVariable(name: "backslash_escapes", scope: !1035, file: !63, line: 268, type: !34)
!1056 = !DILocalVariable(name: "unibyte_locale", scope: !1035, file: !63, line: 269, type: !34)
!1057 = !DILocalVariable(name: "elide_outer_quotes", scope: !1035, file: !63, line: 270, type: !34)
!1058 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1035, file: !63, line: 271, type: !34)
!1059 = !DILocalVariable(name: "encountered_single_quote", scope: !1035, file: !63, line: 272, type: !34)
!1060 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1035, file: !63, line: 273, type: !34)
!1061 = !DILocalVariable(name: "c", scope: !1062, file: !63, line: 402, type: !955)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !63, line: 401, column: 5)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !63, line: 400, column: 3)
!1064 = distinct !DILexicalBlock(scope: !1035, file: !63, line: 400, column: 3)
!1065 = !DILocalVariable(name: "esc", scope: !1062, file: !63, line: 403, type: !955)
!1066 = !DILocalVariable(name: "is_right_quote", scope: !1062, file: !63, line: 404, type: !34)
!1067 = !DILocalVariable(name: "escaping", scope: !1062, file: !63, line: 405, type: !34)
!1068 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1062, file: !63, line: 406, type: !34)
!1069 = !DILocalVariable(name: "m", scope: !1070, file: !63, line: 610, type: !101)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !63, line: 608, column: 11)
!1071 = distinct !DILexicalBlock(scope: !1062, file: !63, line: 426, column: 9)
!1072 = !DILocalVariable(name: "printable", scope: !1070, file: !63, line: 612, type: !34)
!1073 = !DILocalVariable(name: "mbstate", scope: !1074, file: !63, line: 621, type: !1076)
!1074 = distinct !DILexicalBlock(scope: !1075, file: !63, line: 620, column: 15)
!1075 = distinct !DILexicalBlock(scope: !1070, file: !63, line: 614, column: 17)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1077, line: 6, baseType: !1078)
!1077 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1079, line: 21, baseType: !1080)
!1079 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1079, line: 13, size: 64, elements: !1081)
!1081 = !{!1082, !1083}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1080, file: !1079, line: 15, baseType: !28, size: 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1080, file: !1079, line: 20, baseType: !1084, size: 32, offset: 32)
!1084 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1080, file: !1079, line: 16, size: 32, elements: !1085)
!1085 = !{!1086, !1087}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1084, file: !1079, line: 18, baseType: !6, size: 32)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1084, file: !1079, line: 19, baseType: !1088, size: 32)
!1088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 32, elements: !1089)
!1089 = !{!1090}
!1090 = !DISubrange(count: 4)
!1091 = !DILocalVariable(name: "w", scope: !1092, file: !63, line: 631, type: !1093)
!1092 = distinct !DILexicalBlock(scope: !1074, file: !63, line: 630, column: 19)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !102, line: 74, baseType: !28)
!1094 = !DILocalVariable(name: "bytes", scope: !1092, file: !63, line: 632, type: !101)
!1095 = !DILocalVariable(name: "j", scope: !1096, file: !63, line: 657, type: !101)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !63, line: 656, column: 27)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !63, line: 654, column: 29)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !63, line: 649, column: 23)
!1099 = distinct !DILexicalBlock(scope: !1100, file: !63, line: 641, column: 30)
!1100 = distinct !DILexicalBlock(scope: !1101, file: !63, line: 636, column: 30)
!1101 = distinct !DILexicalBlock(scope: !1092, file: !63, line: 634, column: 25)
!1102 = !DILocalVariable(name: "ilim", scope: !1103, file: !63, line: 684, type: !101)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !63, line: 681, column: 15)
!1104 = distinct !DILexicalBlock(scope: !1070, file: !63, line: 680, column: 17)
!1105 = !DILabel(scope: !1035, name: "process_input", file: !63, line: 314)
!1106 = !DILabel(scope: !1071, name: "c_and_shell_escape", file: !63, line: 512)
!1107 = !DILabel(scope: !1071, name: "c_escape", file: !63, line: 517)
!1108 = !DILabel(scope: !1062, name: "store_escape", file: !63, line: 719)
!1109 = !DILabel(scope: !1062, name: "store_c", file: !63, line: 722)
!1110 = !DILabel(scope: !1035, name: "force_outer_quoting_style", file: !63, line: 763)
!1111 = !DILocation(line: 0, scope: !1035)
!1112 = !DILocation(line: 269, column: 25, scope: !1035)
!1113 = !DILocation(line: 269, column: 36, scope: !1035)
!1114 = !DILocation(line: 270, column: 8, scope: !1035)
!1115 = !DILocation(line: 273, column: 3, scope: !1035)
!1116 = !DILocation(line: 265, column: 10, scope: !1035)
!1117 = !DILocation(line: 266, column: 15, scope: !1035)
!1118 = !DILocation(line: 267, column: 10, scope: !1035)
!1119 = !DILocation(line: 268, column: 8, scope: !1035)
!1120 = !DILocation(line: 271, column: 8, scope: !1035)
!1121 = !DILocation(line: 272, column: 8, scope: !1035)
!1122 = !DILocation(line: 273, column: 8, scope: !1035)
!1123 = !DILocation(line: 314, column: 2, scope: !1035)
!1124 = !DILocation(line: 316, column: 3, scope: !1035)
!1125 = !DILocation(line: 323, column: 11, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1035, file: !63, line: 317, column: 5)
!1127 = !DILocation(line: 323, column: 12, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1126, file: !63, line: 323, column: 11)
!1129 = !DILocation(line: 324, column: 9, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !63, line: 324, column: 9)
!1131 = distinct !DILexicalBlock(scope: !1128, file: !63, line: 324, column: 9)
!1132 = !DILocation(line: 324, column: 9, scope: !1131)
!1133 = !{!604, !604, i64 0}
!1134 = !DILocation(line: 362, column: 26, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !63, line: 340, column: 11)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !63, line: 339, column: 13)
!1137 = distinct !DILexicalBlock(scope: !1126, file: !63, line: 338, column: 7)
!1138 = !DILocation(line: 363, column: 27, scope: !1135)
!1139 = !DILocation(line: 364, column: 11, scope: !1135)
!1140 = !DILocation(line: 365, column: 14, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1137, file: !63, line: 365, column: 13)
!1142 = !DILocation(line: 365, column: 13, scope: !1137)
!1143 = !DILocation(line: 366, column: 43, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !63, line: 366, column: 11)
!1145 = distinct !DILexicalBlock(scope: !1141, file: !63, line: 366, column: 11)
!1146 = !DILocation(line: 366, column: 11, scope: !1145)
!1147 = !DILocation(line: 367, column: 13, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !63, line: 367, column: 13)
!1149 = distinct !DILexicalBlock(scope: !1144, file: !63, line: 367, column: 13)
!1150 = !DILocation(line: 367, column: 13, scope: !1149)
!1151 = !DILocation(line: 366, column: 70, scope: !1144)
!1152 = distinct !{!1152, !1146, !1153, !644}
!1153 = !DILocation(line: 367, column: 13, scope: !1145)
!1154 = !DILocation(line: 264, column: 10, scope: !1035)
!1155 = !DILocation(line: 370, column: 28, scope: !1137)
!1156 = !DILocation(line: 372, column: 7, scope: !1126)
!1157 = !DILocation(line: 376, column: 7, scope: !1126)
!1158 = !DILocation(line: 379, column: 7, scope: !1126)
!1159 = !DILocation(line: 381, column: 12, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1126, file: !63, line: 381, column: 11)
!1161 = !DILocation(line: 381, column: 11, scope: !1126)
!1162 = !DILocation(line: 386, column: 12, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1126, file: !63, line: 386, column: 11)
!1164 = !DILocation(line: 386, column: 11, scope: !1126)
!1165 = !DILocation(line: 387, column: 9, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !63, line: 387, column: 9)
!1167 = distinct !DILexicalBlock(scope: !1163, file: !63, line: 387, column: 9)
!1168 = !DILocation(line: 387, column: 9, scope: !1167)
!1169 = !DILocation(line: 394, column: 7, scope: !1126)
!1170 = !DILocation(line: 397, column: 7, scope: !1126)
!1171 = !DILocation(line: 400, column: 8, scope: !1064)
!1172 = !DILocation(line: 0, scope: !1064)
!1173 = !DILocation(line: 400, column: 27, scope: !1063)
!1174 = !DILocation(line: 400, column: 19, scope: !1063)
!1175 = !DILocation(line: 400, column: 41, scope: !1063)
!1176 = !DILocation(line: 400, column: 48, scope: !1063)
!1177 = !DILocation(line: 400, column: 3, scope: !1064)
!1178 = !DILocation(line: 400, column: 60, scope: !1063)
!1179 = !DILocation(line: 0, scope: !1062)
!1180 = !DILocation(line: 409, column: 11, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1062, file: !63, line: 408, column: 11)
!1182 = !DILocation(line: 411, column: 17, scope: !1181)
!1183 = !DILocation(line: 412, column: 39, scope: !1181)
!1184 = !DILocation(line: 416, column: 32, scope: !1181)
!1185 = !DILocation(line: 412, column: 19, scope: !1181)
!1186 = !DILocation(line: 412, column: 15, scope: !1181)
!1187 = !DILocation(line: 417, column: 11, scope: !1181)
!1188 = !DILocation(line: 417, column: 26, scope: !1181)
!1189 = !DILocation(line: 417, column: 14, scope: !1181)
!1190 = !DILocation(line: 417, column: 63, scope: !1181)
!1191 = !DILocation(line: 408, column: 11, scope: !1062)
!1192 = !DILocation(line: 424, column: 11, scope: !1062)
!1193 = !DILocation(line: 425, column: 7, scope: !1062)
!1194 = !DILocation(line: 428, column: 15, scope: !1071)
!1195 = !DILocation(line: 430, column: 15, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !63, line: 430, column: 15)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !63, line: 429, column: 13)
!1198 = distinct !DILexicalBlock(scope: !1071, file: !63, line: 428, column: 15)
!1199 = !DILocation(line: 430, column: 15, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1196, file: !63, line: 430, column: 15)
!1201 = !DILocation(line: 430, column: 15, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !63, line: 430, column: 15)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !63, line: 430, column: 15)
!1204 = distinct !DILexicalBlock(scope: !1200, file: !63, line: 430, column: 15)
!1205 = !DILocation(line: 430, column: 15, scope: !1203)
!1206 = !DILocation(line: 430, column: 15, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !63, line: 430, column: 15)
!1208 = distinct !DILexicalBlock(scope: !1204, file: !63, line: 430, column: 15)
!1209 = !DILocation(line: 430, column: 15, scope: !1208)
!1210 = !DILocation(line: 430, column: 15, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !63, line: 430, column: 15)
!1212 = distinct !DILexicalBlock(scope: !1204, file: !63, line: 430, column: 15)
!1213 = !DILocation(line: 430, column: 15, scope: !1212)
!1214 = !DILocation(line: 430, column: 15, scope: !1204)
!1215 = !DILocation(line: 430, column: 15, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !63, line: 430, column: 15)
!1217 = distinct !DILexicalBlock(scope: !1196, file: !63, line: 430, column: 15)
!1218 = !DILocation(line: 430, column: 15, scope: !1217)
!1219 = !DILocation(line: 438, column: 19, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1197, file: !63, line: 437, column: 19)
!1221 = !DILocation(line: 438, column: 48, scope: !1220)
!1222 = !DILocation(line: 438, column: 59, scope: !1220)
!1223 = !DILocation(line: 440, column: 19, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !63, line: 440, column: 19)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !63, line: 440, column: 19)
!1226 = distinct !DILexicalBlock(scope: !1220, file: !63, line: 439, column: 17)
!1227 = !DILocation(line: 440, column: 19, scope: !1225)
!1228 = !DILocation(line: 441, column: 19, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !63, line: 441, column: 19)
!1230 = distinct !DILexicalBlock(scope: !1226, file: !63, line: 441, column: 19)
!1231 = !DILocation(line: 441, column: 19, scope: !1230)
!1232 = !DILocation(line: 442, column: 17, scope: !1226)
!1233 = !DILocation(line: 449, column: 20, scope: !1198)
!1234 = !DILocation(line: 454, column: 11, scope: !1071)
!1235 = !DILocation(line: 457, column: 19, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1071, file: !63, line: 455, column: 13)
!1237 = !DILocation(line: 463, column: 19, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1236, file: !63, line: 462, column: 19)
!1239 = !DILocation(line: 463, column: 47, scope: !1238)
!1240 = !DILocation(line: 463, column: 41, scope: !1238)
!1241 = !DILocation(line: 463, column: 52, scope: !1238)
!1242 = !DILocation(line: 462, column: 19, scope: !1236)
!1243 = !DILocation(line: 464, column: 25, scope: !1238)
!1244 = !DILocation(line: 464, column: 17, scope: !1238)
!1245 = !DILocation(line: 471, column: 25, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1238, file: !63, line: 465, column: 19)
!1247 = !DILocation(line: 475, column: 21, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !63, line: 475, column: 21)
!1249 = distinct !DILexicalBlock(scope: !1246, file: !63, line: 475, column: 21)
!1250 = !DILocation(line: 475, column: 21, scope: !1249)
!1251 = !DILocation(line: 476, column: 21, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !63, line: 476, column: 21)
!1253 = distinct !DILexicalBlock(scope: !1246, file: !63, line: 476, column: 21)
!1254 = !DILocation(line: 476, column: 21, scope: !1253)
!1255 = !DILocation(line: 477, column: 21, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !63, line: 477, column: 21)
!1257 = distinct !DILexicalBlock(scope: !1246, file: !63, line: 477, column: 21)
!1258 = !DILocation(line: 477, column: 21, scope: !1257)
!1259 = !DILocation(line: 478, column: 21, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !63, line: 478, column: 21)
!1261 = distinct !DILexicalBlock(scope: !1246, file: !63, line: 478, column: 21)
!1262 = !DILocation(line: 478, column: 21, scope: !1261)
!1263 = !DILocation(line: 479, column: 21, scope: !1246)
!1264 = !DILocation(line: 492, column: 31, scope: !1071)
!1265 = !DILocation(line: 493, column: 31, scope: !1071)
!1266 = !DILocation(line: 495, column: 31, scope: !1071)
!1267 = !DILocation(line: 496, column: 31, scope: !1071)
!1268 = !DILocation(line: 497, column: 31, scope: !1071)
!1269 = !DILocation(line: 500, column: 15, scope: !1071)
!1270 = !DILocation(line: 502, column: 19, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !63, line: 501, column: 13)
!1272 = distinct !DILexicalBlock(scope: !1071, file: !63, line: 500, column: 15)
!1273 = !DILocation(line: 509, column: 33, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1071, file: !63, line: 509, column: 15)
!1275 = !DILocation(line: 0, scope: !1071)
!1276 = !DILocation(line: 512, column: 9, scope: !1071)
!1277 = !DILocation(line: 514, column: 15, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1071, file: !63, line: 513, column: 15)
!1279 = !DILocation(line: 517, column: 9, scope: !1071)
!1280 = !DILocation(line: 518, column: 15, scope: !1071)
!1281 = !DILocation(line: 526, column: 15, scope: !1071)
!1282 = !DILocation(line: 526, column: 40, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1071, file: !63, line: 526, column: 15)
!1284 = !DILocation(line: 526, column: 47, scope: !1283)
!1285 = !DILocation(line: 526, column: 18, scope: !1283)
!1286 = !DILocation(line: 530, column: 17, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1071, file: !63, line: 530, column: 15)
!1288 = !DILocation(line: 530, column: 15, scope: !1071)
!1289 = !DILocation(line: 535, column: 11, scope: !1071)
!1290 = !DILocation(line: 549, column: 15, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1071, file: !63, line: 548, column: 15)
!1292 = !DILocation(line: 556, column: 15, scope: !1071)
!1293 = !DILocation(line: 558, column: 19, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !63, line: 557, column: 13)
!1295 = distinct !DILexicalBlock(scope: !1071, file: !63, line: 556, column: 15)
!1296 = !DILocation(line: 561, column: 19, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1294, file: !63, line: 561, column: 19)
!1298 = !DILocation(line: 561, column: 30, scope: !1297)
!1299 = !DILocation(line: 570, column: 15, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !63, line: 570, column: 15)
!1301 = distinct !DILexicalBlock(scope: !1294, file: !63, line: 570, column: 15)
!1302 = !DILocation(line: 570, column: 15, scope: !1301)
!1303 = !DILocation(line: 571, column: 15, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !63, line: 571, column: 15)
!1305 = distinct !DILexicalBlock(scope: !1294, file: !63, line: 571, column: 15)
!1306 = !DILocation(line: 571, column: 15, scope: !1305)
!1307 = !DILocation(line: 572, column: 15, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !63, line: 572, column: 15)
!1309 = distinct !DILexicalBlock(scope: !1294, file: !63, line: 572, column: 15)
!1310 = !DILocation(line: 572, column: 15, scope: !1309)
!1311 = !DILocation(line: 574, column: 13, scope: !1294)
!1312 = !DILocation(line: 614, column: 17, scope: !1070)
!1313 = !DILocation(line: 0, scope: !1070)
!1314 = !DILocation(line: 617, column: 29, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1075, file: !63, line: 615, column: 15)
!1316 = !{!1317, !1317, i64 0}
!1317 = !{!"short", !604, i64 0}
!1318 = !DILocation(line: 617, column: 27, scope: !1315)
!1319 = !DILocation(line: 678, column: 40, scope: !1070)
!1320 = !DILocation(line: 680, column: 23, scope: !1104)
!1321 = !DILocation(line: 621, column: 17, scope: !1074)
!1322 = !DILocation(line: 621, column: 27, scope: !1074)
!1323 = !DILocalVariable(name: "__dest", arg: 1, scope: !1324, file: !1325, line: 57, type: !14)
!1324 = distinct !DISubprogram(name: "memset", scope: !1325, file: !1325, line: 57, type: !1326, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !1328)
!1325 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!14, !14, !28, !101}
!1328 = !{!1323, !1329, !1330}
!1329 = !DILocalVariable(name: "__ch", arg: 2, scope: !1324, file: !1325, line: 57, type: !28)
!1330 = !DILocalVariable(name: "__len", arg: 3, scope: !1324, file: !1325, line: 57, type: !101)
!1331 = !DILocation(line: 0, scope: !1324, inlinedAt: !1332)
!1332 = distinct !DILocation(line: 622, column: 17, scope: !1074)
!1333 = !DILocation(line: 59, column: 10, scope: !1324, inlinedAt: !1332)
!1334 = !DILocation(line: 626, column: 29, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1074, file: !63, line: 626, column: 21)
!1336 = !DILocation(line: 626, column: 21, scope: !1074)
!1337 = !DILocation(line: 627, column: 29, scope: !1335)
!1338 = !DILocation(line: 627, column: 19, scope: !1335)
!1339 = !DILocation(line: 629, column: 17, scope: !1074)
!1340 = !DILocation(line: 624, column: 19, scope: !1074)
!1341 = !DILocation(line: 625, column: 27, scope: !1074)
!1342 = !DILocation(line: 631, column: 21, scope: !1092)
!1343 = !DILocation(line: 632, column: 56, scope: !1092)
!1344 = !DILocation(line: 632, column: 50, scope: !1092)
!1345 = !DILocation(line: 633, column: 53, scope: !1092)
!1346 = !DILocation(line: 0, scope: !1092)
!1347 = !DILocation(line: 632, column: 36, scope: !1092)
!1348 = !DILocation(line: 634, column: 25, scope: !1092)
!1349 = !DILocation(line: 644, column: 38, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1099, file: !63, line: 642, column: 23)
!1351 = !DILocation(line: 644, column: 48, scope: !1350)
!1352 = !DILocation(line: 644, column: 25, scope: !1350)
!1353 = !DILocation(line: 644, column: 51, scope: !1350)
!1354 = !DILocation(line: 645, column: 28, scope: !1350)
!1355 = !DILocation(line: 644, column: 34, scope: !1350)
!1356 = distinct !{!1356, !1352, !1354, !644}
!1357 = !DILocation(line: 655, column: 29, scope: !1097)
!1358 = !DILocation(line: 0, scope: !1096)
!1359 = !DILocation(line: 659, column: 49, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !63, line: 658, column: 29)
!1361 = distinct !DILexicalBlock(scope: !1096, file: !63, line: 658, column: 29)
!1362 = !DILocation(line: 659, column: 39, scope: !1360)
!1363 = !DILocation(line: 659, column: 31, scope: !1360)
!1364 = !DILocation(line: 658, column: 53, scope: !1360)
!1365 = !DILocation(line: 658, column: 43, scope: !1360)
!1366 = !DILocation(line: 658, column: 29, scope: !1361)
!1367 = distinct !{!1367, !1366, !1368, !644}
!1368 = !DILocation(line: 667, column: 33, scope: !1361)
!1369 = !DILocation(line: 674, column: 19, scope: !1074)
!1370 = !DILocation(line: 670, column: 41, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1098, file: !63, line: 670, column: 29)
!1372 = !DILocation(line: 670, column: 31, scope: !1371)
!1373 = !DILocation(line: 670, column: 29, scope: !1098)
!1374 = !DILocation(line: 672, column: 27, scope: !1098)
!1375 = !DILocation(line: 675, column: 26, scope: !1074)
!1376 = !DILocation(line: 675, column: 24, scope: !1074)
!1377 = !DILocation(line: 674, column: 19, scope: !1092)
!1378 = distinct !{!1378, !1339, !1379, !644}
!1379 = !DILocation(line: 675, column: 44, scope: !1074)
!1380 = !DILocation(line: 676, column: 15, scope: !1075)
!1381 = !DILocation(line: 680, column: 19, scope: !1104)
!1382 = !DILocation(line: 680, column: 45, scope: !1104)
!1383 = !DILocation(line: 684, column: 33, scope: !1103)
!1384 = !DILocation(line: 0, scope: !1103)
!1385 = !DILocation(line: 686, column: 17, scope: !1103)
!1386 = !DILocation(line: 405, column: 12, scope: !1062)
!1387 = !DILocation(line: 688, column: 43, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !63, line: 688, column: 25)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !63, line: 687, column: 19)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !63, line: 686, column: 17)
!1391 = distinct !DILexicalBlock(scope: !1103, file: !63, line: 686, column: 17)
!1392 = !DILocation(line: 690, column: 25, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !63, line: 690, column: 25)
!1394 = distinct !DILexicalBlock(scope: !1388, file: !63, line: 689, column: 23)
!1395 = !DILocation(line: 690, column: 25, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1393, file: !63, line: 690, column: 25)
!1397 = !DILocation(line: 690, column: 25, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !63, line: 690, column: 25)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !63, line: 690, column: 25)
!1400 = distinct !DILexicalBlock(scope: !1396, file: !63, line: 690, column: 25)
!1401 = !DILocation(line: 690, column: 25, scope: !1399)
!1402 = !DILocation(line: 690, column: 25, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !63, line: 690, column: 25)
!1404 = distinct !DILexicalBlock(scope: !1400, file: !63, line: 690, column: 25)
!1405 = !DILocation(line: 690, column: 25, scope: !1404)
!1406 = !DILocation(line: 690, column: 25, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !63, line: 690, column: 25)
!1408 = distinct !DILexicalBlock(scope: !1400, file: !63, line: 690, column: 25)
!1409 = !DILocation(line: 690, column: 25, scope: !1408)
!1410 = !DILocation(line: 690, column: 25, scope: !1400)
!1411 = !DILocation(line: 690, column: 25, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !63, line: 690, column: 25)
!1413 = distinct !DILexicalBlock(scope: !1393, file: !63, line: 690, column: 25)
!1414 = !DILocation(line: 690, column: 25, scope: !1413)
!1415 = !DILocation(line: 691, column: 25, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !63, line: 691, column: 25)
!1417 = distinct !DILexicalBlock(scope: !1394, file: !63, line: 691, column: 25)
!1418 = !DILocation(line: 691, column: 25, scope: !1417)
!1419 = !DILocation(line: 692, column: 25, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !63, line: 692, column: 25)
!1421 = distinct !DILexicalBlock(scope: !1394, file: !63, line: 692, column: 25)
!1422 = !DILocation(line: 692, column: 25, scope: !1421)
!1423 = !DILocation(line: 693, column: 38, scope: !1394)
!1424 = !DILocation(line: 693, column: 33, scope: !1394)
!1425 = !DILocation(line: 694, column: 23, scope: !1394)
!1426 = !DILocation(line: 695, column: 30, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1388, file: !63, line: 695, column: 30)
!1428 = !DILocation(line: 695, column: 30, scope: !1388)
!1429 = !DILocation(line: 697, column: 25, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !63, line: 697, column: 25)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !63, line: 697, column: 25)
!1432 = distinct !DILexicalBlock(scope: !1427, file: !63, line: 696, column: 23)
!1433 = !DILocation(line: 697, column: 25, scope: !1431)
!1434 = !DILocation(line: 699, column: 23, scope: !1432)
!1435 = !DILocation(line: 700, column: 35, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1389, file: !63, line: 700, column: 25)
!1437 = !DILocation(line: 700, column: 30, scope: !1436)
!1438 = !DILocation(line: 700, column: 25, scope: !1389)
!1439 = !DILocation(line: 702, column: 21, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !63, line: 702, column: 21)
!1441 = distinct !DILexicalBlock(scope: !1389, file: !63, line: 702, column: 21)
!1442 = !DILocation(line: 702, column: 21, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !63, line: 702, column: 21)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !63, line: 702, column: 21)
!1445 = distinct !DILexicalBlock(scope: !1440, file: !63, line: 702, column: 21)
!1446 = !DILocation(line: 702, column: 21, scope: !1444)
!1447 = !DILocation(line: 702, column: 21, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !63, line: 702, column: 21)
!1449 = distinct !DILexicalBlock(scope: !1445, file: !63, line: 702, column: 21)
!1450 = !DILocation(line: 702, column: 21, scope: !1449)
!1451 = !DILocation(line: 702, column: 21, scope: !1445)
!1452 = !DILocation(line: 0, scope: !1389)
!1453 = !DILocation(line: 703, column: 21, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !63, line: 703, column: 21)
!1455 = distinct !DILexicalBlock(scope: !1389, file: !63, line: 703, column: 21)
!1456 = !DILocation(line: 703, column: 21, scope: !1455)
!1457 = !DILocation(line: 704, column: 25, scope: !1389)
!1458 = !DILocation(line: 686, column: 17, scope: !1390)
!1459 = distinct !{!1459, !1460, !1461}
!1460 = !DILocation(line: 686, column: 17, scope: !1391)
!1461 = !DILocation(line: 705, column: 19, scope: !1391)
!1462 = !DILocation(line: 416, column: 30, scope: !1181)
!1463 = !DILocation(line: 712, column: 34, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1062, file: !63, line: 712, column: 11)
!1465 = !DILocation(line: 715, column: 35, scope: !1464)
!1466 = !DILocation(line: 715, column: 17, scope: !1464)
!1467 = !DILocation(line: 715, column: 47, scope: !1464)
!1468 = !DILocation(line: 715, column: 65, scope: !1464)
!1469 = !DILocation(line: 716, column: 11, scope: !1464)
!1470 = !DILocation(line: 712, column: 11, scope: !1062)
!1471 = !DILocation(line: 400, column: 10, scope: !1064)
!1472 = !DILocation(line: 719, column: 5, scope: !1062)
!1473 = !DILocation(line: 720, column: 7, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1062, file: !63, line: 720, column: 7)
!1475 = !DILocation(line: 720, column: 7, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1474, file: !63, line: 720, column: 7)
!1477 = !DILocation(line: 720, column: 7, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !63, line: 720, column: 7)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !63, line: 720, column: 7)
!1480 = distinct !DILexicalBlock(scope: !1476, file: !63, line: 720, column: 7)
!1481 = !DILocation(line: 720, column: 7, scope: !1479)
!1482 = !DILocation(line: 720, column: 7, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !63, line: 720, column: 7)
!1484 = distinct !DILexicalBlock(scope: !1480, file: !63, line: 720, column: 7)
!1485 = !DILocation(line: 720, column: 7, scope: !1484)
!1486 = !DILocation(line: 720, column: 7, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1488, file: !63, line: 720, column: 7)
!1488 = distinct !DILexicalBlock(scope: !1480, file: !63, line: 720, column: 7)
!1489 = !DILocation(line: 720, column: 7, scope: !1488)
!1490 = !DILocation(line: 720, column: 7, scope: !1480)
!1491 = !DILocation(line: 720, column: 7, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !63, line: 720, column: 7)
!1493 = distinct !DILexicalBlock(scope: !1474, file: !63, line: 720, column: 7)
!1494 = !DILocation(line: 720, column: 7, scope: !1493)
!1495 = !DILocation(line: 722, column: 5, scope: !1062)
!1496 = !DILocation(line: 723, column: 7, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !63, line: 723, column: 7)
!1498 = distinct !DILexicalBlock(scope: !1062, file: !63, line: 723, column: 7)
!1499 = !DILocation(line: 424, column: 9, scope: !1062)
!1500 = !DILocation(line: 723, column: 7, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !63, line: 723, column: 7)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !63, line: 723, column: 7)
!1503 = distinct !DILexicalBlock(scope: !1497, file: !63, line: 723, column: 7)
!1504 = !DILocation(line: 723, column: 7, scope: !1502)
!1505 = !DILocation(line: 723, column: 7, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !63, line: 723, column: 7)
!1507 = distinct !DILexicalBlock(scope: !1503, file: !63, line: 723, column: 7)
!1508 = !DILocation(line: 723, column: 7, scope: !1507)
!1509 = !DILocation(line: 723, column: 7, scope: !1503)
!1510 = !DILocation(line: 724, column: 7, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !63, line: 724, column: 7)
!1512 = distinct !DILexicalBlock(scope: !1062, file: !63, line: 724, column: 7)
!1513 = !DILocation(line: 724, column: 7, scope: !1512)
!1514 = !DILocation(line: 726, column: 13, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1062, file: !63, line: 726, column: 11)
!1516 = !DILocation(line: 726, column: 11, scope: !1062)
!1517 = !DILocation(line: 728, column: 5, scope: !1063)
!1518 = !DILocation(line: 400, column: 75, scope: !1063)
!1519 = !DILocation(line: 400, column: 3, scope: !1063)
!1520 = distinct !{!1520, !1177, !1521, !644}
!1521 = !DILocation(line: 728, column: 5, scope: !1064)
!1522 = !DILocation(line: 730, column: 11, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1035, file: !63, line: 730, column: 7)
!1524 = !DILocation(line: 730, column: 16, scope: !1523)
!1525 = !DILocation(line: 738, column: 51, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1035, file: !63, line: 738, column: 7)
!1527 = !DILocation(line: 741, column: 11, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !63, line: 741, column: 11)
!1529 = distinct !DILexicalBlock(scope: !1526, file: !63, line: 740, column: 5)
!1530 = !DILocation(line: 741, column: 11, scope: !1529)
!1531 = !DILocation(line: 742, column: 16, scope: !1528)
!1532 = !DILocation(line: 742, column: 9, scope: !1528)
!1533 = !DILocation(line: 746, column: 18, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1528, file: !63, line: 746, column: 16)
!1535 = !DILocation(line: 746, column: 29, scope: !1534)
!1536 = !DILocation(line: 755, column: 7, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1035, file: !63, line: 755, column: 7)
!1538 = !DILocation(line: 755, column: 20, scope: !1537)
!1539 = !DILocation(line: 756, column: 12, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !63, line: 756, column: 5)
!1541 = distinct !DILexicalBlock(scope: !1537, file: !63, line: 756, column: 5)
!1542 = !DILocation(line: 756, column: 5, scope: !1541)
!1543 = !DILocation(line: 757, column: 7, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !63, line: 757, column: 7)
!1545 = distinct !DILexicalBlock(scope: !1540, file: !63, line: 757, column: 7)
!1546 = !DILocation(line: 757, column: 7, scope: !1545)
!1547 = !DILocation(line: 756, column: 39, scope: !1540)
!1548 = distinct !{!1548, !1542, !1549, !644}
!1549 = !DILocation(line: 757, column: 7, scope: !1541)
!1550 = !DILocation(line: 759, column: 11, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1035, file: !63, line: 759, column: 7)
!1552 = !DILocation(line: 759, column: 7, scope: !1035)
!1553 = !DILocation(line: 760, column: 5, scope: !1551)
!1554 = !DILocation(line: 760, column: 17, scope: !1551)
!1555 = !DILocation(line: 763, column: 2, scope: !1035)
!1556 = !DILocation(line: 766, column: 51, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1035, file: !63, line: 766, column: 7)
!1558 = !DILocation(line: 766, column: 21, scope: !1557)
!1559 = !DILocation(line: 770, column: 42, scope: !1035)
!1560 = !DILocation(line: 768, column: 10, scope: !1035)
!1561 = !DILocation(line: 768, column: 3, scope: !1035)
!1562 = !DILocation(line: 772, column: 1, scope: !1035)
!1563 = distinct !DISubprogram(name: "gettext_quote", scope: !63, file: !63, line: 207, type: !1564, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !1566)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!25, !25, !65}
!1566 = !{!1567, !1568, !1569, !1570}
!1567 = !DILocalVariable(name: "msgid", arg: 1, scope: !1563, file: !63, line: 207, type: !25)
!1568 = !DILocalVariable(name: "s", arg: 2, scope: !1563, file: !63, line: 207, type: !65)
!1569 = !DILocalVariable(name: "translation", scope: !1563, file: !63, line: 209, type: !25)
!1570 = !DILocalVariable(name: "locale_code", scope: !1563, file: !63, line: 210, type: !25)
!1571 = !DILocation(line: 0, scope: !1563)
!1572 = !DILocation(line: 209, column: 29, scope: !1563)
!1573 = !DILocation(line: 212, column: 19, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1563, file: !63, line: 212, column: 7)
!1575 = !DILocation(line: 212, column: 7, scope: !1563)
!1576 = !DILocation(line: 233, column: 17, scope: !1563)
!1577 = !DILocalVariable(name: "s1", arg: 1, scope: !1578, file: !1579, line: 160, type: !25)
!1578 = distinct !DISubprogram(name: "strcaseeq0", scope: !1579, file: !1579, line: 160, type: !1580, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !1582)
!1579 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!28, !25, !25, !13, !13, !13, !13, !13, !13, !13, !13, !13}
!1582 = !{!1577, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592}
!1583 = !DILocalVariable(name: "s2", arg: 2, scope: !1578, file: !1579, line: 160, type: !25)
!1584 = !DILocalVariable(name: "s20", arg: 3, scope: !1578, file: !1579, line: 160, type: !13)
!1585 = !DILocalVariable(name: "s21", arg: 4, scope: !1578, file: !1579, line: 160, type: !13)
!1586 = !DILocalVariable(name: "s22", arg: 5, scope: !1578, file: !1579, line: 160, type: !13)
!1587 = !DILocalVariable(name: "s23", arg: 6, scope: !1578, file: !1579, line: 160, type: !13)
!1588 = !DILocalVariable(name: "s24", arg: 7, scope: !1578, file: !1579, line: 160, type: !13)
!1589 = !DILocalVariable(name: "s25", arg: 8, scope: !1578, file: !1579, line: 160, type: !13)
!1590 = !DILocalVariable(name: "s26", arg: 9, scope: !1578, file: !1579, line: 160, type: !13)
!1591 = !DILocalVariable(name: "s27", arg: 10, scope: !1578, file: !1579, line: 160, type: !13)
!1592 = !DILocalVariable(name: "s28", arg: 11, scope: !1578, file: !1579, line: 160, type: !13)
!1593 = !DILocation(line: 0, scope: !1578, inlinedAt: !1594)
!1594 = distinct !DILocation(line: 234, column: 7, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1563, file: !63, line: 234, column: 7)
!1596 = !DILocation(line: 162, column: 7, scope: !1597, inlinedAt: !1594)
!1597 = distinct !DILexicalBlock(scope: !1578, file: !1579, line: 162, column: 7)
!1598 = !DILocalVariable(name: "s1", arg: 1, scope: !1599, file: !1579, line: 146, type: !25)
!1599 = distinct !DISubprogram(name: "strcaseeq1", scope: !1579, file: !1579, line: 146, type: !1600, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !1602)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!28, !25, !25, !13, !13, !13, !13, !13, !13, !13, !13}
!1602 = !{!1598, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611}
!1603 = !DILocalVariable(name: "s2", arg: 2, scope: !1599, file: !1579, line: 146, type: !25)
!1604 = !DILocalVariable(name: "s21", arg: 3, scope: !1599, file: !1579, line: 146, type: !13)
!1605 = !DILocalVariable(name: "s22", arg: 4, scope: !1599, file: !1579, line: 146, type: !13)
!1606 = !DILocalVariable(name: "s23", arg: 5, scope: !1599, file: !1579, line: 146, type: !13)
!1607 = !DILocalVariable(name: "s24", arg: 6, scope: !1599, file: !1579, line: 146, type: !13)
!1608 = !DILocalVariable(name: "s25", arg: 7, scope: !1599, file: !1579, line: 146, type: !13)
!1609 = !DILocalVariable(name: "s26", arg: 8, scope: !1599, file: !1579, line: 146, type: !13)
!1610 = !DILocalVariable(name: "s27", arg: 9, scope: !1599, file: !1579, line: 146, type: !13)
!1611 = !DILocalVariable(name: "s28", arg: 10, scope: !1599, file: !1579, line: 146, type: !13)
!1612 = !DILocation(line: 0, scope: !1599, inlinedAt: !1613)
!1613 = distinct !DILocation(line: 167, column: 16, scope: !1614, inlinedAt: !1594)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !1579, line: 164, column: 11)
!1615 = distinct !DILexicalBlock(scope: !1597, file: !1579, line: 163, column: 5)
!1616 = !DILocation(line: 148, column: 7, scope: !1617, inlinedAt: !1613)
!1617 = distinct !DILexicalBlock(scope: !1599, file: !1579, line: 148, column: 7)
!1618 = !DILocalVariable(name: "s1", arg: 1, scope: !1619, file: !1579, line: 132, type: !25)
!1619 = distinct !DISubprogram(name: "strcaseeq2", scope: !1579, file: !1579, line: 132, type: !1620, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !1622)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!28, !25, !25, !13, !13, !13, !13, !13, !13, !13}
!1622 = !{!1618, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630}
!1623 = !DILocalVariable(name: "s2", arg: 2, scope: !1619, file: !1579, line: 132, type: !25)
!1624 = !DILocalVariable(name: "s22", arg: 3, scope: !1619, file: !1579, line: 132, type: !13)
!1625 = !DILocalVariable(name: "s23", arg: 4, scope: !1619, file: !1579, line: 132, type: !13)
!1626 = !DILocalVariable(name: "s24", arg: 5, scope: !1619, file: !1579, line: 132, type: !13)
!1627 = !DILocalVariable(name: "s25", arg: 6, scope: !1619, file: !1579, line: 132, type: !13)
!1628 = !DILocalVariable(name: "s26", arg: 7, scope: !1619, file: !1579, line: 132, type: !13)
!1629 = !DILocalVariable(name: "s27", arg: 8, scope: !1619, file: !1579, line: 132, type: !13)
!1630 = !DILocalVariable(name: "s28", arg: 9, scope: !1619, file: !1579, line: 132, type: !13)
!1631 = !DILocation(line: 0, scope: !1619, inlinedAt: !1632)
!1632 = distinct !DILocation(line: 153, column: 16, scope: !1633, inlinedAt: !1613)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !1579, line: 150, column: 11)
!1634 = distinct !DILexicalBlock(scope: !1617, file: !1579, line: 149, column: 5)
!1635 = !DILocation(line: 134, column: 7, scope: !1636, inlinedAt: !1632)
!1636 = distinct !DILexicalBlock(scope: !1619, file: !1579, line: 134, column: 7)
!1637 = !DILocalVariable(name: "s1", arg: 1, scope: !1638, file: !1579, line: 118, type: !25)
!1638 = distinct !DISubprogram(name: "strcaseeq3", scope: !1579, file: !1579, line: 118, type: !1639, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !1641)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!28, !25, !25, !13, !13, !13, !13, !13, !13}
!1641 = !{!1637, !1642, !1643, !1644, !1645, !1646, !1647, !1648}
!1642 = !DILocalVariable(name: "s2", arg: 2, scope: !1638, file: !1579, line: 118, type: !25)
!1643 = !DILocalVariable(name: "s23", arg: 3, scope: !1638, file: !1579, line: 118, type: !13)
!1644 = !DILocalVariable(name: "s24", arg: 4, scope: !1638, file: !1579, line: 118, type: !13)
!1645 = !DILocalVariable(name: "s25", arg: 5, scope: !1638, file: !1579, line: 118, type: !13)
!1646 = !DILocalVariable(name: "s26", arg: 6, scope: !1638, file: !1579, line: 118, type: !13)
!1647 = !DILocalVariable(name: "s27", arg: 7, scope: !1638, file: !1579, line: 118, type: !13)
!1648 = !DILocalVariable(name: "s28", arg: 8, scope: !1638, file: !1579, line: 118, type: !13)
!1649 = !DILocation(line: 0, scope: !1638, inlinedAt: !1650)
!1650 = distinct !DILocation(line: 139, column: 16, scope: !1651, inlinedAt: !1632)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !1579, line: 136, column: 11)
!1652 = distinct !DILexicalBlock(scope: !1636, file: !1579, line: 135, column: 5)
!1653 = !DILocation(line: 120, column: 7, scope: !1654, inlinedAt: !1650)
!1654 = distinct !DILexicalBlock(scope: !1638, file: !1579, line: 120, column: 7)
!1655 = !DILocation(line: 120, column: 7, scope: !1638, inlinedAt: !1650)
!1656 = !DILocalVariable(name: "s1", arg: 1, scope: !1657, file: !1579, line: 104, type: !25)
!1657 = distinct !DISubprogram(name: "strcaseeq4", scope: !1579, file: !1579, line: 104, type: !1658, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !1660)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!28, !25, !25, !13, !13, !13, !13, !13}
!1660 = !{!1656, !1661, !1662, !1663, !1664, !1665, !1666}
!1661 = !DILocalVariable(name: "s2", arg: 2, scope: !1657, file: !1579, line: 104, type: !25)
!1662 = !DILocalVariable(name: "s24", arg: 3, scope: !1657, file: !1579, line: 104, type: !13)
!1663 = !DILocalVariable(name: "s25", arg: 4, scope: !1657, file: !1579, line: 104, type: !13)
!1664 = !DILocalVariable(name: "s26", arg: 5, scope: !1657, file: !1579, line: 104, type: !13)
!1665 = !DILocalVariable(name: "s27", arg: 6, scope: !1657, file: !1579, line: 104, type: !13)
!1666 = !DILocalVariable(name: "s28", arg: 7, scope: !1657, file: !1579, line: 104, type: !13)
!1667 = !DILocation(line: 0, scope: !1657, inlinedAt: !1668)
!1668 = distinct !DILocation(line: 125, column: 16, scope: !1669, inlinedAt: !1650)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !1579, line: 122, column: 11)
!1670 = distinct !DILexicalBlock(scope: !1654, file: !1579, line: 121, column: 5)
!1671 = !DILocation(line: 106, column: 7, scope: !1672, inlinedAt: !1668)
!1672 = distinct !DILexicalBlock(scope: !1657, file: !1579, line: 106, column: 7)
!1673 = !DILocation(line: 106, column: 7, scope: !1657, inlinedAt: !1668)
!1674 = !DILocalVariable(name: "s1", arg: 1, scope: !1675, file: !1579, line: 90, type: !25)
!1675 = distinct !DISubprogram(name: "strcaseeq5", scope: !1579, file: !1579, line: 90, type: !1676, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !1678)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!28, !25, !25, !13, !13, !13, !13}
!1678 = !{!1674, !1679, !1680, !1681, !1682, !1683}
!1679 = !DILocalVariable(name: "s2", arg: 2, scope: !1675, file: !1579, line: 90, type: !25)
!1680 = !DILocalVariable(name: "s25", arg: 3, scope: !1675, file: !1579, line: 90, type: !13)
!1681 = !DILocalVariable(name: "s26", arg: 4, scope: !1675, file: !1579, line: 90, type: !13)
!1682 = !DILocalVariable(name: "s27", arg: 5, scope: !1675, file: !1579, line: 90, type: !13)
!1683 = !DILocalVariable(name: "s28", arg: 6, scope: !1675, file: !1579, line: 90, type: !13)
!1684 = !DILocation(line: 0, scope: !1675, inlinedAt: !1685)
!1685 = distinct !DILocation(line: 111, column: 16, scope: !1686, inlinedAt: !1668)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !1579, line: 108, column: 11)
!1687 = distinct !DILexicalBlock(scope: !1672, file: !1579, line: 107, column: 5)
!1688 = !DILocation(line: 92, column: 7, scope: !1689, inlinedAt: !1685)
!1689 = distinct !DILexicalBlock(scope: !1675, file: !1579, line: 92, column: 7)
!1690 = !DILocation(line: 92, column: 7, scope: !1675, inlinedAt: !1685)
!1691 = !DILocation(line: 235, column: 12, scope: !1595)
!1692 = !DILocation(line: 235, column: 21, scope: !1595)
!1693 = !DILocation(line: 235, column: 5, scope: !1595)
!1694 = !DILocation(line: 0, scope: !1599, inlinedAt: !1695)
!1695 = distinct !DILocation(line: 167, column: 16, scope: !1614, inlinedAt: !1696)
!1696 = distinct !DILocation(line: 236, column: 7, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1563, file: !63, line: 236, column: 7)
!1698 = !DILocation(line: 148, column: 7, scope: !1617, inlinedAt: !1695)
!1699 = !DILocation(line: 0, scope: !1619, inlinedAt: !1700)
!1700 = distinct !DILocation(line: 153, column: 16, scope: !1633, inlinedAt: !1695)
!1701 = !DILocation(line: 134, column: 7, scope: !1636, inlinedAt: !1700)
!1702 = !DILocation(line: 134, column: 7, scope: !1619, inlinedAt: !1700)
!1703 = !DILocation(line: 0, scope: !1638, inlinedAt: !1704)
!1704 = distinct !DILocation(line: 139, column: 16, scope: !1651, inlinedAt: !1700)
!1705 = !DILocation(line: 120, column: 7, scope: !1654, inlinedAt: !1704)
!1706 = !DILocation(line: 120, column: 7, scope: !1638, inlinedAt: !1704)
!1707 = !DILocation(line: 0, scope: !1657, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 125, column: 16, scope: !1669, inlinedAt: !1704)
!1709 = !DILocation(line: 106, column: 7, scope: !1672, inlinedAt: !1708)
!1710 = !DILocation(line: 106, column: 7, scope: !1657, inlinedAt: !1708)
!1711 = !DILocation(line: 0, scope: !1675, inlinedAt: !1712)
!1712 = distinct !DILocation(line: 111, column: 16, scope: !1686, inlinedAt: !1708)
!1713 = !DILocation(line: 92, column: 7, scope: !1689, inlinedAt: !1712)
!1714 = !DILocation(line: 92, column: 7, scope: !1675, inlinedAt: !1712)
!1715 = !DILocalVariable(name: "s1", arg: 1, scope: !1716, file: !1579, line: 76, type: !25)
!1716 = distinct !DISubprogram(name: "strcaseeq6", scope: !1579, file: !1579, line: 76, type: !1717, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !1719)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!28, !25, !25, !13, !13, !13}
!1719 = !{!1715, !1720, !1721, !1722, !1723}
!1720 = !DILocalVariable(name: "s2", arg: 2, scope: !1716, file: !1579, line: 76, type: !25)
!1721 = !DILocalVariable(name: "s26", arg: 3, scope: !1716, file: !1579, line: 76, type: !13)
!1722 = !DILocalVariable(name: "s27", arg: 4, scope: !1716, file: !1579, line: 76, type: !13)
!1723 = !DILocalVariable(name: "s28", arg: 5, scope: !1716, file: !1579, line: 76, type: !13)
!1724 = !DILocation(line: 0, scope: !1716, inlinedAt: !1725)
!1725 = distinct !DILocation(line: 97, column: 16, scope: !1726, inlinedAt: !1712)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !1579, line: 94, column: 11)
!1727 = distinct !DILexicalBlock(scope: !1689, file: !1579, line: 93, column: 5)
!1728 = !DILocation(line: 78, column: 7, scope: !1729, inlinedAt: !1725)
!1729 = distinct !DILexicalBlock(scope: !1716, file: !1579, line: 78, column: 7)
!1730 = !DILocation(line: 78, column: 7, scope: !1716, inlinedAt: !1725)
!1731 = !DILocalVariable(name: "s1", arg: 1, scope: !1732, file: !1579, line: 62, type: !25)
!1732 = distinct !DISubprogram(name: "strcaseeq7", scope: !1579, file: !1579, line: 62, type: !1733, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !1735)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!28, !25, !25, !13, !13}
!1735 = !{!1731, !1736, !1737, !1738}
!1736 = !DILocalVariable(name: "s2", arg: 2, scope: !1732, file: !1579, line: 62, type: !25)
!1737 = !DILocalVariable(name: "s27", arg: 3, scope: !1732, file: !1579, line: 62, type: !13)
!1738 = !DILocalVariable(name: "s28", arg: 4, scope: !1732, file: !1579, line: 62, type: !13)
!1739 = !DILocation(line: 0, scope: !1732, inlinedAt: !1740)
!1740 = distinct !DILocation(line: 83, column: 16, scope: !1741, inlinedAt: !1725)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !1579, line: 80, column: 11)
!1742 = distinct !DILexicalBlock(scope: !1729, file: !1579, line: 79, column: 5)
!1743 = !DILocation(line: 64, column: 7, scope: !1744, inlinedAt: !1740)
!1744 = distinct !DILexicalBlock(scope: !1732, file: !1579, line: 64, column: 7)
!1745 = !DILocation(line: 236, column: 7, scope: !1563)
!1746 = !DILocation(line: 237, column: 12, scope: !1697)
!1747 = !DILocation(line: 237, column: 21, scope: !1697)
!1748 = !DILocation(line: 237, column: 5, scope: !1697)
!1749 = !DILocation(line: 239, column: 13, scope: !1563)
!1750 = !DILocation(line: 239, column: 11, scope: !1563)
!1751 = !DILocation(line: 239, column: 3, scope: !1563)
!1752 = !DILocation(line: 240, column: 1, scope: !1563)
!1753 = !DISubprogram(name: "iswprint", scope: !1754, file: !1754, line: 120, type: !1755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!1754 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!28, !6}
!1757 = !DISubprogram(name: "mbsinit", scope: !1758, file: !1758, line: 292, type: !1759, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!1758 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!28, !1761}
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1080)
!1763 = distinct !DISubprogram(name: "quotearg_alloc", scope: !63, file: !63, line: 799, type: !1764, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !1766)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!12, !25, !101, !926}
!1766 = !{!1767, !1768, !1769}
!1767 = !DILocalVariable(name: "arg", arg: 1, scope: !1763, file: !63, line: 799, type: !25)
!1768 = !DILocalVariable(name: "argsize", arg: 2, scope: !1763, file: !63, line: 799, type: !101)
!1769 = !DILocalVariable(name: "o", arg: 3, scope: !1763, file: !63, line: 800, type: !926)
!1770 = !DILocation(line: 0, scope: !1763)
!1771 = !DILocalVariable(name: "arg", arg: 1, scope: !1772, file: !63, line: 812, type: !25)
!1772 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !63, file: !63, line: 812, type: !1773, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !1775)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!12, !25, !101, !168, !926}
!1775 = !{!1771, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783}
!1776 = !DILocalVariable(name: "argsize", arg: 2, scope: !1772, file: !63, line: 812, type: !101)
!1777 = !DILocalVariable(name: "size", arg: 3, scope: !1772, file: !63, line: 812, type: !168)
!1778 = !DILocalVariable(name: "o", arg: 4, scope: !1772, file: !63, line: 813, type: !926)
!1779 = !DILocalVariable(name: "p", scope: !1772, file: !63, line: 815, type: !926)
!1780 = !DILocalVariable(name: "e", scope: !1772, file: !63, line: 816, type: !28)
!1781 = !DILocalVariable(name: "flags", scope: !1772, file: !63, line: 818, type: !28)
!1782 = !DILocalVariable(name: "bufsize", scope: !1772, file: !63, line: 819, type: !101)
!1783 = !DILocalVariable(name: "buf", scope: !1772, file: !63, line: 823, type: !12)
!1784 = !DILocation(line: 0, scope: !1772, inlinedAt: !1785)
!1785 = distinct !DILocation(line: 802, column: 10, scope: !1763)
!1786 = !DILocation(line: 815, column: 37, scope: !1772, inlinedAt: !1785)
!1787 = !DILocation(line: 816, column: 11, scope: !1772, inlinedAt: !1785)
!1788 = !DILocation(line: 818, column: 18, scope: !1772, inlinedAt: !1785)
!1789 = !DILocation(line: 818, column: 24, scope: !1772, inlinedAt: !1785)
!1790 = !DILocation(line: 819, column: 69, scope: !1772, inlinedAt: !1785)
!1791 = !DILocation(line: 820, column: 53, scope: !1772, inlinedAt: !1785)
!1792 = !DILocation(line: 821, column: 49, scope: !1772, inlinedAt: !1785)
!1793 = !DILocation(line: 822, column: 49, scope: !1772, inlinedAt: !1785)
!1794 = !DILocation(line: 819, column: 20, scope: !1772, inlinedAt: !1785)
!1795 = !DILocation(line: 822, column: 62, scope: !1772, inlinedAt: !1785)
!1796 = !DILocalVariable(name: "n", arg: 1, scope: !1797, file: !164, line: 216, type: !101)
!1797 = distinct !DISubprogram(name: "xcharalloc", scope: !164, file: !164, line: 216, type: !1798, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !1800)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!12, !101}
!1800 = !{!1796}
!1801 = !DILocation(line: 0, scope: !1797, inlinedAt: !1802)
!1802 = distinct !DILocation(line: 823, column: 15, scope: !1772, inlinedAt: !1785)
!1803 = !DILocation(line: 218, column: 10, scope: !1797, inlinedAt: !1802)
!1804 = !DILocation(line: 824, column: 60, scope: !1772, inlinedAt: !1785)
!1805 = !DILocation(line: 826, column: 32, scope: !1772, inlinedAt: !1785)
!1806 = !DILocation(line: 826, column: 47, scope: !1772, inlinedAt: !1785)
!1807 = !DILocation(line: 824, column: 3, scope: !1772, inlinedAt: !1785)
!1808 = !DILocation(line: 827, column: 9, scope: !1772, inlinedAt: !1785)
!1809 = !DILocation(line: 802, column: 3, scope: !1763)
!1810 = !DILocation(line: 0, scope: !1772)
!1811 = !DILocation(line: 815, column: 37, scope: !1772)
!1812 = !DILocation(line: 816, column: 11, scope: !1772)
!1813 = !DILocation(line: 818, column: 18, scope: !1772)
!1814 = !DILocation(line: 818, column: 27, scope: !1772)
!1815 = !DILocation(line: 818, column: 24, scope: !1772)
!1816 = !DILocation(line: 819, column: 69, scope: !1772)
!1817 = !DILocation(line: 820, column: 53, scope: !1772)
!1818 = !DILocation(line: 821, column: 49, scope: !1772)
!1819 = !DILocation(line: 822, column: 49, scope: !1772)
!1820 = !DILocation(line: 819, column: 20, scope: !1772)
!1821 = !DILocation(line: 822, column: 62, scope: !1772)
!1822 = !DILocation(line: 0, scope: !1797, inlinedAt: !1823)
!1823 = distinct !DILocation(line: 823, column: 15, scope: !1772)
!1824 = !DILocation(line: 218, column: 10, scope: !1797, inlinedAt: !1823)
!1825 = !DILocation(line: 824, column: 60, scope: !1772)
!1826 = !DILocation(line: 826, column: 32, scope: !1772)
!1827 = !DILocation(line: 826, column: 47, scope: !1772)
!1828 = !DILocation(line: 824, column: 3, scope: !1772)
!1829 = !DILocation(line: 827, column: 9, scope: !1772)
!1830 = !DILocation(line: 828, column: 7, scope: !1772)
!1831 = !DILocation(line: 829, column: 11, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1772, file: !63, line: 828, column: 7)
!1833 = !{!1834, !1834, i64 0}
!1834 = !{!"long", !604, i64 0}
!1835 = !DILocation(line: 829, column: 5, scope: !1832)
!1836 = !DILocation(line: 830, column: 3, scope: !1772)
!1837 = distinct !DISubprogram(name: "quotearg_free", scope: !63, file: !63, line: 848, type: !801, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !1838)
!1838 = !{!1839, !1840}
!1839 = !DILocalVariable(name: "sv", scope: !1837, file: !63, line: 850, type: !132)
!1840 = !DILocalVariable(name: "i", scope: !1837, file: !63, line: 851, type: !28)
!1841 = !DILocation(line: 850, column: 24, scope: !1837)
!1842 = !DILocation(line: 0, scope: !1837)
!1843 = !DILocation(line: 852, column: 19, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !63, line: 852, column: 3)
!1845 = distinct !DILexicalBlock(scope: !1837, file: !63, line: 852, column: 3)
!1846 = !DILocation(line: 852, column: 17, scope: !1844)
!1847 = !DILocation(line: 852, column: 3, scope: !1845)
!1848 = !DILocation(line: 853, column: 17, scope: !1844)
!1849 = !{!1850, !603, i64 8}
!1850 = !{!"slotvec", !1834, i64 0, !603, i64 8}
!1851 = !DILocation(line: 853, column: 5, scope: !1844)
!1852 = !DILocation(line: 852, column: 28, scope: !1844)
!1853 = distinct !{!1853, !1847, !1854, !644}
!1854 = !DILocation(line: 853, column: 20, scope: !1845)
!1855 = !DILocation(line: 854, column: 13, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1837, file: !63, line: 854, column: 7)
!1857 = !DILocation(line: 854, column: 17, scope: !1856)
!1858 = !DILocation(line: 854, column: 7, scope: !1837)
!1859 = !DILocation(line: 856, column: 7, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1856, file: !63, line: 855, column: 5)
!1861 = !DILocation(line: 857, column: 21, scope: !1860)
!1862 = !{!1850, !1834, i64 0}
!1863 = !DILocation(line: 858, column: 20, scope: !1860)
!1864 = !DILocation(line: 859, column: 5, scope: !1860)
!1865 = !DILocation(line: 860, column: 10, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1837, file: !63, line: 860, column: 7)
!1867 = !DILocation(line: 860, column: 7, scope: !1837)
!1868 = !DILocation(line: 862, column: 13, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1866, file: !63, line: 861, column: 5)
!1870 = !DILocation(line: 862, column: 7, scope: !1869)
!1871 = !DILocation(line: 863, column: 15, scope: !1869)
!1872 = !DILocation(line: 864, column: 5, scope: !1869)
!1873 = !DILocation(line: 865, column: 10, scope: !1837)
!1874 = !DILocation(line: 866, column: 1, scope: !1837)
!1875 = distinct !DISubprogram(name: "quotearg_n", scope: !63, file: !63, line: 931, type: !726, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !1876)
!1876 = !{!1877, !1878}
!1877 = !DILocalVariable(name: "n", arg: 1, scope: !1875, file: !63, line: 931, type: !28)
!1878 = !DILocalVariable(name: "arg", arg: 2, scope: !1875, file: !63, line: 931, type: !25)
!1879 = !DILocation(line: 0, scope: !1875)
!1880 = !DILocation(line: 933, column: 10, scope: !1875)
!1881 = !DILocation(line: 933, column: 3, scope: !1875)
!1882 = distinct !DISubprogram(name: "quotearg_n_options", scope: !63, file: !63, line: 877, type: !1883, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !1885)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!12, !28, !25, !101, !926}
!1885 = !{!1886, !1887, !1888, !1889, !1890, !1891, !1892, !1895, !1896, !1898, !1899, !1900}
!1886 = !DILocalVariable(name: "n", arg: 1, scope: !1882, file: !63, line: 877, type: !28)
!1887 = !DILocalVariable(name: "arg", arg: 2, scope: !1882, file: !63, line: 877, type: !25)
!1888 = !DILocalVariable(name: "argsize", arg: 3, scope: !1882, file: !63, line: 877, type: !101)
!1889 = !DILocalVariable(name: "options", arg: 4, scope: !1882, file: !63, line: 878, type: !926)
!1890 = !DILocalVariable(name: "e", scope: !1882, file: !63, line: 880, type: !28)
!1891 = !DILocalVariable(name: "sv", scope: !1882, file: !63, line: 882, type: !132)
!1892 = !DILocalVariable(name: "preallocated", scope: !1893, file: !63, line: 889, type: !34)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !63, line: 888, column: 5)
!1894 = distinct !DILexicalBlock(scope: !1882, file: !63, line: 887, column: 7)
!1895 = !DILocalVariable(name: "nmax", scope: !1893, file: !63, line: 890, type: !28)
!1896 = !DILocalVariable(name: "size", scope: !1897, file: !63, line: 903, type: !101)
!1897 = distinct !DILexicalBlock(scope: !1882, file: !63, line: 902, column: 3)
!1898 = !DILocalVariable(name: "val", scope: !1897, file: !63, line: 904, type: !12)
!1899 = !DILocalVariable(name: "flags", scope: !1897, file: !63, line: 906, type: !28)
!1900 = !DILocalVariable(name: "qsize", scope: !1897, file: !63, line: 907, type: !101)
!1901 = !DILocation(line: 0, scope: !1882)
!1902 = !DILocation(line: 880, column: 11, scope: !1882)
!1903 = !DILocation(line: 882, column: 24, scope: !1882)
!1904 = !DILocation(line: 884, column: 9, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1882, file: !63, line: 884, column: 7)
!1906 = !DILocation(line: 884, column: 7, scope: !1882)
!1907 = !DILocation(line: 885, column: 5, scope: !1905)
!1908 = !DILocation(line: 887, column: 7, scope: !1894)
!1909 = !DILocation(line: 887, column: 14, scope: !1894)
!1910 = !DILocation(line: 887, column: 7, scope: !1882)
!1911 = !DILocation(line: 889, column: 31, scope: !1893)
!1912 = !DILocation(line: 0, scope: !1893)
!1913 = !DILocation(line: 892, column: 16, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1893, file: !63, line: 892, column: 11)
!1915 = !DILocation(line: 892, column: 11, scope: !1893)
!1916 = !DILocation(line: 893, column: 9, scope: !1914)
!1917 = !DILocation(line: 895, column: 32, scope: !1893)
!1918 = !DILocation(line: 895, column: 61, scope: !1893)
!1919 = !DILocation(line: 895, column: 66, scope: !1893)
!1920 = !DILocation(line: 895, column: 22, scope: !1893)
!1921 = !DILocation(line: 895, column: 15, scope: !1893)
!1922 = !DILocation(line: 896, column: 11, scope: !1893)
!1923 = !DILocation(line: 897, column: 15, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1893, file: !63, line: 896, column: 11)
!1925 = !{i64 0, i64 8, !1833, i64 8, i64 8, !602}
!1926 = !DILocation(line: 897, column: 9, scope: !1924)
!1927 = !DILocation(line: 898, column: 20, scope: !1893)
!1928 = !DILocation(line: 898, column: 18, scope: !1893)
!1929 = !DILocation(line: 898, column: 15, scope: !1893)
!1930 = !DILocation(line: 898, column: 38, scope: !1893)
!1931 = !DILocation(line: 898, column: 31, scope: !1893)
!1932 = !DILocation(line: 898, column: 48, scope: !1893)
!1933 = !DILocation(line: 0, scope: !1324, inlinedAt: !1934)
!1934 = distinct !DILocation(line: 898, column: 7, scope: !1893)
!1935 = !DILocation(line: 59, column: 10, scope: !1324, inlinedAt: !1934)
!1936 = !DILocation(line: 899, column: 14, scope: !1893)
!1937 = !DILocation(line: 900, column: 5, scope: !1893)
!1938 = !DILocation(line: 903, column: 19, scope: !1897)
!1939 = !DILocation(line: 903, column: 25, scope: !1897)
!1940 = !DILocation(line: 0, scope: !1897)
!1941 = !DILocation(line: 904, column: 23, scope: !1897)
!1942 = !DILocation(line: 906, column: 26, scope: !1897)
!1943 = !DILocation(line: 906, column: 32, scope: !1897)
!1944 = !DILocation(line: 908, column: 55, scope: !1897)
!1945 = !DILocation(line: 909, column: 46, scope: !1897)
!1946 = !DILocation(line: 910, column: 55, scope: !1897)
!1947 = !DILocation(line: 911, column: 55, scope: !1897)
!1948 = !DILocation(line: 907, column: 20, scope: !1897)
!1949 = !DILocation(line: 913, column: 14, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1897, file: !63, line: 913, column: 9)
!1951 = !DILocation(line: 913, column: 9, scope: !1897)
!1952 = !DILocation(line: 915, column: 35, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1950, file: !63, line: 914, column: 7)
!1954 = !DILocation(line: 915, column: 20, scope: !1953)
!1955 = !DILocation(line: 916, column: 17, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1953, file: !63, line: 916, column: 13)
!1957 = !DILocation(line: 916, column: 13, scope: !1953)
!1958 = !DILocation(line: 917, column: 11, scope: !1956)
!1959 = !DILocation(line: 0, scope: !1797, inlinedAt: !1960)
!1960 = distinct !DILocation(line: 918, column: 27, scope: !1953)
!1961 = !DILocation(line: 218, column: 10, scope: !1797, inlinedAt: !1960)
!1962 = !DILocation(line: 918, column: 19, scope: !1953)
!1963 = !DILocation(line: 919, column: 69, scope: !1953)
!1964 = !DILocation(line: 921, column: 44, scope: !1953)
!1965 = !DILocation(line: 922, column: 44, scope: !1953)
!1966 = !DILocation(line: 919, column: 9, scope: !1953)
!1967 = !DILocation(line: 923, column: 7, scope: !1953)
!1968 = !DILocation(line: 925, column: 11, scope: !1897)
!1969 = !DILocation(line: 926, column: 5, scope: !1897)
!1970 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !63, file: !63, line: 937, type: !1971, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !1973)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!12, !28, !25, !101}
!1973 = !{!1974, !1975, !1976}
!1974 = !DILocalVariable(name: "n", arg: 1, scope: !1970, file: !63, line: 937, type: !28)
!1975 = !DILocalVariable(name: "arg", arg: 2, scope: !1970, file: !63, line: 937, type: !25)
!1976 = !DILocalVariable(name: "argsize", arg: 3, scope: !1970, file: !63, line: 937, type: !101)
!1977 = !DILocation(line: 0, scope: !1970)
!1978 = !DILocation(line: 939, column: 10, scope: !1970)
!1979 = !DILocation(line: 939, column: 3, scope: !1970)
!1980 = distinct !DISubprogram(name: "quotearg", scope: !63, file: !63, line: 943, type: !794, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !1981)
!1981 = !{!1982}
!1982 = !DILocalVariable(name: "arg", arg: 1, scope: !1980, file: !63, line: 943, type: !25)
!1983 = !DILocation(line: 0, scope: !1980)
!1984 = !DILocation(line: 0, scope: !1875, inlinedAt: !1985)
!1985 = distinct !DILocation(line: 945, column: 10, scope: !1980)
!1986 = !DILocation(line: 933, column: 10, scope: !1875, inlinedAt: !1985)
!1987 = !DILocation(line: 945, column: 3, scope: !1980)
!1988 = distinct !DISubprogram(name: "quotearg_mem", scope: !63, file: !63, line: 949, type: !1989, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !1991)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!12, !25, !101}
!1991 = !{!1992, !1993}
!1992 = !DILocalVariable(name: "arg", arg: 1, scope: !1988, file: !63, line: 949, type: !25)
!1993 = !DILocalVariable(name: "argsize", arg: 2, scope: !1988, file: !63, line: 949, type: !101)
!1994 = !DILocation(line: 0, scope: !1988)
!1995 = !DILocation(line: 0, scope: !1970, inlinedAt: !1996)
!1996 = distinct !DILocation(line: 951, column: 10, scope: !1988)
!1997 = !DILocation(line: 939, column: 10, scope: !1970, inlinedAt: !1996)
!1998 = !DILocation(line: 951, column: 3, scope: !1988)
!1999 = distinct !DISubprogram(name: "quotearg_n_style", scope: !63, file: !63, line: 955, type: !2000, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !2002)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!12, !28, !65, !25}
!2002 = !{!2003, !2004, !2005, !2006}
!2003 = !DILocalVariable(name: "n", arg: 1, scope: !1999, file: !63, line: 955, type: !28)
!2004 = !DILocalVariable(name: "s", arg: 2, scope: !1999, file: !63, line: 955, type: !65)
!2005 = !DILocalVariable(name: "arg", arg: 3, scope: !1999, file: !63, line: 955, type: !25)
!2006 = !DILocalVariable(name: "o", scope: !1999, file: !63, line: 957, type: !927)
!2007 = !DILocation(line: 0, scope: !1999)
!2008 = !DILocation(line: 957, column: 3, scope: !1999)
!2009 = !DILocation(line: 957, column: 32, scope: !1999)
!2010 = !{!2011}
!2011 = distinct !{!2011, !2012, !"quoting_options_from_style: argument 0"}
!2012 = distinct !{!2012, !"quoting_options_from_style"}
!2013 = !DILocation(line: 957, column: 36, scope: !1999)
!2014 = !DILocalVariable(name: "style", arg: 1, scope: !2015, file: !63, line: 193, type: !65)
!2015 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !63, file: !63, line: 193, type: !2016, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !2018)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!113, !65}
!2018 = !{!2014, !2019}
!2019 = !DILocalVariable(name: "o", scope: !2015, file: !63, line: 195, type: !113)
!2020 = !DILocation(line: 0, scope: !2015, inlinedAt: !2021)
!2021 = distinct !DILocation(line: 957, column: 36, scope: !1999)
!2022 = !DILocation(line: 195, column: 26, scope: !2015, inlinedAt: !2021)
!2023 = !DILocation(line: 196, column: 13, scope: !2024, inlinedAt: !2021)
!2024 = distinct !DILexicalBlock(scope: !2015, file: !63, line: 196, column: 7)
!2025 = !DILocation(line: 196, column: 7, scope: !2015, inlinedAt: !2021)
!2026 = !DILocation(line: 197, column: 5, scope: !2024, inlinedAt: !2021)
!2027 = !DILocation(line: 198, column: 5, scope: !2015, inlinedAt: !2021)
!2028 = !DILocation(line: 198, column: 11, scope: !2015, inlinedAt: !2021)
!2029 = !DILocation(line: 958, column: 10, scope: !1999)
!2030 = !DILocation(line: 959, column: 1, scope: !1999)
!2031 = !DILocation(line: 958, column: 3, scope: !1999)
!2032 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !63, file: !63, line: 962, type: !2033, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !2035)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!12, !28, !65, !25, !101}
!2035 = !{!2036, !2037, !2038, !2039, !2040}
!2036 = !DILocalVariable(name: "n", arg: 1, scope: !2032, file: !63, line: 962, type: !28)
!2037 = !DILocalVariable(name: "s", arg: 2, scope: !2032, file: !63, line: 962, type: !65)
!2038 = !DILocalVariable(name: "arg", arg: 3, scope: !2032, file: !63, line: 963, type: !25)
!2039 = !DILocalVariable(name: "argsize", arg: 4, scope: !2032, file: !63, line: 963, type: !101)
!2040 = !DILocalVariable(name: "o", scope: !2032, file: !63, line: 965, type: !927)
!2041 = !DILocation(line: 0, scope: !2032)
!2042 = !DILocation(line: 965, column: 3, scope: !2032)
!2043 = !DILocation(line: 965, column: 32, scope: !2032)
!2044 = !{!2045}
!2045 = distinct !{!2045, !2046, !"quoting_options_from_style: argument 0"}
!2046 = distinct !{!2046, !"quoting_options_from_style"}
!2047 = !DILocation(line: 965, column: 36, scope: !2032)
!2048 = !DILocation(line: 0, scope: !2015, inlinedAt: !2049)
!2049 = distinct !DILocation(line: 965, column: 36, scope: !2032)
!2050 = !DILocation(line: 195, column: 26, scope: !2015, inlinedAt: !2049)
!2051 = !DILocation(line: 196, column: 13, scope: !2024, inlinedAt: !2049)
!2052 = !DILocation(line: 196, column: 7, scope: !2015, inlinedAt: !2049)
!2053 = !DILocation(line: 197, column: 5, scope: !2024, inlinedAt: !2049)
!2054 = !DILocation(line: 198, column: 5, scope: !2015, inlinedAt: !2049)
!2055 = !DILocation(line: 198, column: 11, scope: !2015, inlinedAt: !2049)
!2056 = !DILocation(line: 966, column: 10, scope: !2032)
!2057 = !DILocation(line: 967, column: 1, scope: !2032)
!2058 = !DILocation(line: 966, column: 3, scope: !2032)
!2059 = distinct !DISubprogram(name: "quotearg_style", scope: !63, file: !63, line: 970, type: !2060, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !2062)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!12, !65, !25}
!2062 = !{!2063, !2064}
!2063 = !DILocalVariable(name: "s", arg: 1, scope: !2059, file: !63, line: 970, type: !65)
!2064 = !DILocalVariable(name: "arg", arg: 2, scope: !2059, file: !63, line: 970, type: !25)
!2065 = !DILocation(line: 0, scope: !2059)
!2066 = !DILocation(line: 0, scope: !1999, inlinedAt: !2067)
!2067 = distinct !DILocation(line: 972, column: 10, scope: !2059)
!2068 = !DILocation(line: 957, column: 3, scope: !1999, inlinedAt: !2067)
!2069 = !DILocation(line: 957, column: 32, scope: !1999, inlinedAt: !2067)
!2070 = !{!2071}
!2071 = distinct !{!2071, !2072, !"quoting_options_from_style: argument 0"}
!2072 = distinct !{!2072, !"quoting_options_from_style"}
!2073 = !DILocation(line: 957, column: 36, scope: !1999, inlinedAt: !2067)
!2074 = !DILocation(line: 0, scope: !2015, inlinedAt: !2075)
!2075 = distinct !DILocation(line: 957, column: 36, scope: !1999, inlinedAt: !2067)
!2076 = !DILocation(line: 195, column: 26, scope: !2015, inlinedAt: !2075)
!2077 = !DILocation(line: 196, column: 13, scope: !2024, inlinedAt: !2075)
!2078 = !DILocation(line: 196, column: 7, scope: !2015, inlinedAt: !2075)
!2079 = !DILocation(line: 197, column: 5, scope: !2024, inlinedAt: !2075)
!2080 = !DILocation(line: 198, column: 5, scope: !2015, inlinedAt: !2075)
!2081 = !DILocation(line: 198, column: 11, scope: !2015, inlinedAt: !2075)
!2082 = !DILocation(line: 958, column: 10, scope: !1999, inlinedAt: !2067)
!2083 = !DILocation(line: 959, column: 1, scope: !1999, inlinedAt: !2067)
!2084 = !DILocation(line: 972, column: 3, scope: !2059)
!2085 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !63, file: !63, line: 976, type: !2086, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !2088)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!12, !65, !25, !101}
!2088 = !{!2089, !2090, !2091}
!2089 = !DILocalVariable(name: "s", arg: 1, scope: !2085, file: !63, line: 976, type: !65)
!2090 = !DILocalVariable(name: "arg", arg: 2, scope: !2085, file: !63, line: 976, type: !25)
!2091 = !DILocalVariable(name: "argsize", arg: 3, scope: !2085, file: !63, line: 976, type: !101)
!2092 = !DILocation(line: 0, scope: !2085)
!2093 = !DILocation(line: 0, scope: !2032, inlinedAt: !2094)
!2094 = distinct !DILocation(line: 978, column: 10, scope: !2085)
!2095 = !DILocation(line: 965, column: 3, scope: !2032, inlinedAt: !2094)
!2096 = !DILocation(line: 965, column: 32, scope: !2032, inlinedAt: !2094)
!2097 = !{!2098}
!2098 = distinct !{!2098, !2099, !"quoting_options_from_style: argument 0"}
!2099 = distinct !{!2099, !"quoting_options_from_style"}
!2100 = !DILocation(line: 965, column: 36, scope: !2032, inlinedAt: !2094)
!2101 = !DILocation(line: 0, scope: !2015, inlinedAt: !2102)
!2102 = distinct !DILocation(line: 965, column: 36, scope: !2032, inlinedAt: !2094)
!2103 = !DILocation(line: 195, column: 26, scope: !2015, inlinedAt: !2102)
!2104 = !DILocation(line: 196, column: 13, scope: !2024, inlinedAt: !2102)
!2105 = !DILocation(line: 196, column: 7, scope: !2015, inlinedAt: !2102)
!2106 = !DILocation(line: 197, column: 5, scope: !2024, inlinedAt: !2102)
!2107 = !DILocation(line: 198, column: 5, scope: !2015, inlinedAt: !2102)
!2108 = !DILocation(line: 198, column: 11, scope: !2015, inlinedAt: !2102)
!2109 = !DILocation(line: 966, column: 10, scope: !2032, inlinedAt: !2094)
!2110 = !DILocation(line: 967, column: 1, scope: !2032, inlinedAt: !2094)
!2111 = !DILocation(line: 978, column: 3, scope: !2085)
!2112 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !63, file: !63, line: 982, type: !2113, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !2115)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!12, !25, !101, !13}
!2115 = !{!2116, !2117, !2118, !2119}
!2116 = !DILocalVariable(name: "arg", arg: 1, scope: !2112, file: !63, line: 982, type: !25)
!2117 = !DILocalVariable(name: "argsize", arg: 2, scope: !2112, file: !63, line: 982, type: !101)
!2118 = !DILocalVariable(name: "ch", arg: 3, scope: !2112, file: !63, line: 982, type: !13)
!2119 = !DILocalVariable(name: "options", scope: !2112, file: !63, line: 984, type: !113)
!2120 = !DILocation(line: 0, scope: !2112)
!2121 = !DILocation(line: 984, column: 3, scope: !2112)
!2122 = !DILocation(line: 984, column: 26, scope: !2112)
!2123 = !DILocation(line: 985, column: 13, scope: !2112)
!2124 = !{i64 0, i64 4, !1133, i64 4, i64 4, !751, i64 8, i64 32, !1133, i64 40, i64 8, !602, i64 48, i64 8, !602}
!2125 = !DILocation(line: 0, scope: !947, inlinedAt: !2126)
!2126 = distinct !DILocation(line: 986, column: 3, scope: !2112)
!2127 = !DILocation(line: 156, column: 62, scope: !947, inlinedAt: !2126)
!2128 = !DILocation(line: 156, column: 57, scope: !947, inlinedAt: !2126)
!2129 = !DILocation(line: 157, column: 15, scope: !947, inlinedAt: !2126)
!2130 = !DILocation(line: 158, column: 12, scope: !947, inlinedAt: !2126)
!2131 = !DILocation(line: 158, column: 15, scope: !947, inlinedAt: !2126)
!2132 = !DILocation(line: 158, column: 25, scope: !947, inlinedAt: !2126)
!2133 = !DILocation(line: 159, column: 18, scope: !947, inlinedAt: !2126)
!2134 = !DILocation(line: 159, column: 23, scope: !947, inlinedAt: !2126)
!2135 = !DILocation(line: 159, column: 6, scope: !947, inlinedAt: !2126)
!2136 = !DILocation(line: 987, column: 10, scope: !2112)
!2137 = !DILocation(line: 988, column: 1, scope: !2112)
!2138 = !DILocation(line: 987, column: 3, scope: !2112)
!2139 = distinct !DISubprogram(name: "quotearg_char", scope: !63, file: !63, line: 991, type: !2140, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !2142)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!12, !25, !13}
!2142 = !{!2143, !2144}
!2143 = !DILocalVariable(name: "arg", arg: 1, scope: !2139, file: !63, line: 991, type: !25)
!2144 = !DILocalVariable(name: "ch", arg: 2, scope: !2139, file: !63, line: 991, type: !13)
!2145 = !DILocation(line: 0, scope: !2139)
!2146 = !DILocation(line: 0, scope: !2112, inlinedAt: !2147)
!2147 = distinct !DILocation(line: 993, column: 10, scope: !2139)
!2148 = !DILocation(line: 984, column: 3, scope: !2112, inlinedAt: !2147)
!2149 = !DILocation(line: 984, column: 26, scope: !2112, inlinedAt: !2147)
!2150 = !DILocation(line: 985, column: 13, scope: !2112, inlinedAt: !2147)
!2151 = !DILocation(line: 0, scope: !947, inlinedAt: !2152)
!2152 = distinct !DILocation(line: 986, column: 3, scope: !2112, inlinedAt: !2147)
!2153 = !DILocation(line: 156, column: 62, scope: !947, inlinedAt: !2152)
!2154 = !DILocation(line: 156, column: 57, scope: !947, inlinedAt: !2152)
!2155 = !DILocation(line: 157, column: 15, scope: !947, inlinedAt: !2152)
!2156 = !DILocation(line: 158, column: 12, scope: !947, inlinedAt: !2152)
!2157 = !DILocation(line: 158, column: 15, scope: !947, inlinedAt: !2152)
!2158 = !DILocation(line: 158, column: 25, scope: !947, inlinedAt: !2152)
!2159 = !DILocation(line: 159, column: 18, scope: !947, inlinedAt: !2152)
!2160 = !DILocation(line: 159, column: 23, scope: !947, inlinedAt: !2152)
!2161 = !DILocation(line: 159, column: 6, scope: !947, inlinedAt: !2152)
!2162 = !DILocation(line: 987, column: 10, scope: !2112, inlinedAt: !2147)
!2163 = !DILocation(line: 988, column: 1, scope: !2112, inlinedAt: !2147)
!2164 = !DILocation(line: 993, column: 3, scope: !2139)
!2165 = distinct !DISubprogram(name: "quotearg_colon", scope: !63, file: !63, line: 997, type: !794, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !2166)
!2166 = !{!2167}
!2167 = !DILocalVariable(name: "arg", arg: 1, scope: !2165, file: !63, line: 997, type: !25)
!2168 = !DILocation(line: 0, scope: !2165)
!2169 = !DILocation(line: 0, scope: !2139, inlinedAt: !2170)
!2170 = distinct !DILocation(line: 999, column: 10, scope: !2165)
!2171 = !DILocation(line: 0, scope: !2112, inlinedAt: !2172)
!2172 = distinct !DILocation(line: 993, column: 10, scope: !2139, inlinedAt: !2170)
!2173 = !DILocation(line: 984, column: 3, scope: !2112, inlinedAt: !2172)
!2174 = !DILocation(line: 984, column: 26, scope: !2112, inlinedAt: !2172)
!2175 = !DILocation(line: 985, column: 13, scope: !2112, inlinedAt: !2172)
!2176 = !DILocation(line: 0, scope: !947, inlinedAt: !2177)
!2177 = distinct !DILocation(line: 986, column: 3, scope: !2112, inlinedAt: !2172)
!2178 = !DILocation(line: 156, column: 57, scope: !947, inlinedAt: !2177)
!2179 = !DILocation(line: 158, column: 12, scope: !947, inlinedAt: !2177)
!2180 = !DILocation(line: 159, column: 6, scope: !947, inlinedAt: !2177)
!2181 = !DILocation(line: 987, column: 10, scope: !2112, inlinedAt: !2172)
!2182 = !DILocation(line: 988, column: 1, scope: !2112, inlinedAt: !2172)
!2183 = !DILocation(line: 999, column: 3, scope: !2165)
!2184 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !63, file: !63, line: 1003, type: !1989, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !2185)
!2185 = !{!2186, !2187}
!2186 = !DILocalVariable(name: "arg", arg: 1, scope: !2184, file: !63, line: 1003, type: !25)
!2187 = !DILocalVariable(name: "argsize", arg: 2, scope: !2184, file: !63, line: 1003, type: !101)
!2188 = !DILocation(line: 0, scope: !2184)
!2189 = !DILocation(line: 0, scope: !2112, inlinedAt: !2190)
!2190 = distinct !DILocation(line: 1005, column: 10, scope: !2184)
!2191 = !DILocation(line: 984, column: 3, scope: !2112, inlinedAt: !2190)
!2192 = !DILocation(line: 984, column: 26, scope: !2112, inlinedAt: !2190)
!2193 = !DILocation(line: 985, column: 13, scope: !2112, inlinedAt: !2190)
!2194 = !DILocation(line: 0, scope: !947, inlinedAt: !2195)
!2195 = distinct !DILocation(line: 986, column: 3, scope: !2112, inlinedAt: !2190)
!2196 = !DILocation(line: 156, column: 57, scope: !947, inlinedAt: !2195)
!2197 = !DILocation(line: 158, column: 12, scope: !947, inlinedAt: !2195)
!2198 = !DILocation(line: 159, column: 6, scope: !947, inlinedAt: !2195)
!2199 = !DILocation(line: 987, column: 10, scope: !2112, inlinedAt: !2190)
!2200 = !DILocation(line: 988, column: 1, scope: !2112, inlinedAt: !2190)
!2201 = !DILocation(line: 1005, column: 3, scope: !2184)
!2202 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !63, file: !63, line: 1009, type: !2000, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !2203)
!2203 = !{!2204, !2205, !2206, !2207}
!2204 = !DILocalVariable(name: "n", arg: 1, scope: !2202, file: !63, line: 1009, type: !28)
!2205 = !DILocalVariable(name: "s", arg: 2, scope: !2202, file: !63, line: 1009, type: !65)
!2206 = !DILocalVariable(name: "arg", arg: 3, scope: !2202, file: !63, line: 1009, type: !25)
!2207 = !DILocalVariable(name: "options", scope: !2202, file: !63, line: 1011, type: !113)
!2208 = !DILocation(line: 195, column: 26, scope: !2015, inlinedAt: !2209)
!2209 = distinct !DILocation(line: 1012, column: 13, scope: !2202)
!2210 = !DILocation(line: 0, scope: !2202)
!2211 = !DILocation(line: 1011, column: 3, scope: !2202)
!2212 = !DILocation(line: 1011, column: 26, scope: !2202)
!2213 = !DILocation(line: 1012, column: 13, scope: !2202)
!2214 = !{!2215}
!2215 = distinct !{!2215, !2216, !"quoting_options_from_style: argument 0"}
!2216 = distinct !{!2216, !"quoting_options_from_style"}
!2217 = !DILocation(line: 0, scope: !2015, inlinedAt: !2209)
!2218 = !DILocation(line: 196, column: 13, scope: !2024, inlinedAt: !2209)
!2219 = !DILocation(line: 196, column: 7, scope: !2015, inlinedAt: !2209)
!2220 = !DILocation(line: 197, column: 5, scope: !2024, inlinedAt: !2209)
!2221 = !{i64 0, i64 4, !751, i64 4, i64 32, !1133, i64 36, i64 8, !602, i64 44, i64 8, !602}
!2222 = !DILocation(line: 0, scope: !947, inlinedAt: !2223)
!2223 = distinct !DILocation(line: 1013, column: 3, scope: !2202)
!2224 = !DILocation(line: 156, column: 57, scope: !947, inlinedAt: !2223)
!2225 = !DILocation(line: 158, column: 12, scope: !947, inlinedAt: !2223)
!2226 = !DILocation(line: 159, column: 6, scope: !947, inlinedAt: !2223)
!2227 = !DILocation(line: 1014, column: 10, scope: !2202)
!2228 = !DILocation(line: 1015, column: 1, scope: !2202)
!2229 = !DILocation(line: 1014, column: 3, scope: !2202)
!2230 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !63, file: !63, line: 1018, type: !2231, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !2233)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!12, !28, !25, !25, !25}
!2233 = !{!2234, !2235, !2236, !2237}
!2234 = !DILocalVariable(name: "n", arg: 1, scope: !2230, file: !63, line: 1018, type: !28)
!2235 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2230, file: !63, line: 1018, type: !25)
!2236 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2230, file: !63, line: 1019, type: !25)
!2237 = !DILocalVariable(name: "arg", arg: 4, scope: !2230, file: !63, line: 1019, type: !25)
!2238 = !DILocation(line: 0, scope: !2230)
!2239 = !DILocalVariable(name: "n", arg: 1, scope: !2240, file: !63, line: 1026, type: !28)
!2240 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !63, file: !63, line: 1026, type: !2241, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !2243)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!12, !28, !25, !25, !25, !101}
!2243 = !{!2239, !2244, !2245, !2246, !2247, !2248}
!2244 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2240, file: !63, line: 1026, type: !25)
!2245 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2240, file: !63, line: 1027, type: !25)
!2246 = !DILocalVariable(name: "arg", arg: 4, scope: !2240, file: !63, line: 1028, type: !25)
!2247 = !DILocalVariable(name: "argsize", arg: 5, scope: !2240, file: !63, line: 1028, type: !101)
!2248 = !DILocalVariable(name: "o", scope: !2240, file: !63, line: 1030, type: !113)
!2249 = !DILocation(line: 0, scope: !2240, inlinedAt: !2250)
!2250 = distinct !DILocation(line: 1021, column: 10, scope: !2230)
!2251 = !DILocation(line: 1030, column: 3, scope: !2240, inlinedAt: !2250)
!2252 = !DILocation(line: 1030, column: 26, scope: !2240, inlinedAt: !2250)
!2253 = !DILocation(line: 1030, column: 30, scope: !2240, inlinedAt: !2250)
!2254 = !DILocation(line: 0, scope: !988, inlinedAt: !2255)
!2255 = distinct !DILocation(line: 1031, column: 3, scope: !2240, inlinedAt: !2250)
!2256 = !DILocation(line: 184, column: 6, scope: !988, inlinedAt: !2255)
!2257 = !DILocation(line: 184, column: 12, scope: !988, inlinedAt: !2255)
!2258 = !DILocation(line: 185, column: 8, scope: !1002, inlinedAt: !2255)
!2259 = !DILocation(line: 185, column: 19, scope: !1002, inlinedAt: !2255)
!2260 = !DILocation(line: 186, column: 5, scope: !1002, inlinedAt: !2255)
!2261 = !DILocation(line: 187, column: 6, scope: !988, inlinedAt: !2255)
!2262 = !DILocation(line: 187, column: 17, scope: !988, inlinedAt: !2255)
!2263 = !DILocation(line: 188, column: 6, scope: !988, inlinedAt: !2255)
!2264 = !DILocation(line: 188, column: 18, scope: !988, inlinedAt: !2255)
!2265 = !DILocation(line: 1032, column: 10, scope: !2240, inlinedAt: !2250)
!2266 = !DILocation(line: 1033, column: 1, scope: !2240, inlinedAt: !2250)
!2267 = !DILocation(line: 1021, column: 3, scope: !2230)
!2268 = !DILocation(line: 0, scope: !2240)
!2269 = !DILocation(line: 1030, column: 3, scope: !2240)
!2270 = !DILocation(line: 1030, column: 26, scope: !2240)
!2271 = !DILocation(line: 1030, column: 30, scope: !2240)
!2272 = !DILocation(line: 0, scope: !988, inlinedAt: !2273)
!2273 = distinct !DILocation(line: 1031, column: 3, scope: !2240)
!2274 = !DILocation(line: 184, column: 6, scope: !988, inlinedAt: !2273)
!2275 = !DILocation(line: 184, column: 12, scope: !988, inlinedAt: !2273)
!2276 = !DILocation(line: 185, column: 8, scope: !1002, inlinedAt: !2273)
!2277 = !DILocation(line: 185, column: 19, scope: !1002, inlinedAt: !2273)
!2278 = !DILocation(line: 186, column: 5, scope: !1002, inlinedAt: !2273)
!2279 = !DILocation(line: 187, column: 6, scope: !988, inlinedAt: !2273)
!2280 = !DILocation(line: 187, column: 17, scope: !988, inlinedAt: !2273)
!2281 = !DILocation(line: 188, column: 6, scope: !988, inlinedAt: !2273)
!2282 = !DILocation(line: 188, column: 18, scope: !988, inlinedAt: !2273)
!2283 = !DILocation(line: 1032, column: 10, scope: !2240)
!2284 = !DILocation(line: 1033, column: 1, scope: !2240)
!2285 = !DILocation(line: 1032, column: 3, scope: !2240)
!2286 = distinct !DISubprogram(name: "quotearg_custom", scope: !63, file: !63, line: 1036, type: !2287, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !2289)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!12, !25, !25, !25}
!2289 = !{!2290, !2291, !2292}
!2290 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2286, file: !63, line: 1036, type: !25)
!2291 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2286, file: !63, line: 1036, type: !25)
!2292 = !DILocalVariable(name: "arg", arg: 3, scope: !2286, file: !63, line: 1037, type: !25)
!2293 = !DILocation(line: 0, scope: !2286)
!2294 = !DILocation(line: 0, scope: !2230, inlinedAt: !2295)
!2295 = distinct !DILocation(line: 1039, column: 10, scope: !2286)
!2296 = !DILocation(line: 0, scope: !2240, inlinedAt: !2297)
!2297 = distinct !DILocation(line: 1021, column: 10, scope: !2230, inlinedAt: !2295)
!2298 = !DILocation(line: 1030, column: 3, scope: !2240, inlinedAt: !2297)
!2299 = !DILocation(line: 1030, column: 26, scope: !2240, inlinedAt: !2297)
!2300 = !DILocation(line: 1030, column: 30, scope: !2240, inlinedAt: !2297)
!2301 = !DILocation(line: 0, scope: !988, inlinedAt: !2302)
!2302 = distinct !DILocation(line: 1031, column: 3, scope: !2240, inlinedAt: !2297)
!2303 = !DILocation(line: 184, column: 6, scope: !988, inlinedAt: !2302)
!2304 = !DILocation(line: 184, column: 12, scope: !988, inlinedAt: !2302)
!2305 = !DILocation(line: 185, column: 8, scope: !1002, inlinedAt: !2302)
!2306 = !DILocation(line: 185, column: 19, scope: !1002, inlinedAt: !2302)
!2307 = !DILocation(line: 186, column: 5, scope: !1002, inlinedAt: !2302)
!2308 = !DILocation(line: 187, column: 6, scope: !988, inlinedAt: !2302)
!2309 = !DILocation(line: 187, column: 17, scope: !988, inlinedAt: !2302)
!2310 = !DILocation(line: 188, column: 6, scope: !988, inlinedAt: !2302)
!2311 = !DILocation(line: 188, column: 18, scope: !988, inlinedAt: !2302)
!2312 = !DILocation(line: 1032, column: 10, scope: !2240, inlinedAt: !2297)
!2313 = !DILocation(line: 1033, column: 1, scope: !2240, inlinedAt: !2297)
!2314 = !DILocation(line: 1039, column: 3, scope: !2286)
!2315 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !63, file: !63, line: 1043, type: !2316, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !2318)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!12, !25, !25, !25, !101}
!2318 = !{!2319, !2320, !2321, !2322}
!2319 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2315, file: !63, line: 1043, type: !25)
!2320 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2315, file: !63, line: 1043, type: !25)
!2321 = !DILocalVariable(name: "arg", arg: 3, scope: !2315, file: !63, line: 1044, type: !25)
!2322 = !DILocalVariable(name: "argsize", arg: 4, scope: !2315, file: !63, line: 1044, type: !101)
!2323 = !DILocation(line: 0, scope: !2315)
!2324 = !DILocation(line: 0, scope: !2240, inlinedAt: !2325)
!2325 = distinct !DILocation(line: 1046, column: 10, scope: !2315)
!2326 = !DILocation(line: 1030, column: 3, scope: !2240, inlinedAt: !2325)
!2327 = !DILocation(line: 1030, column: 26, scope: !2240, inlinedAt: !2325)
!2328 = !DILocation(line: 1030, column: 30, scope: !2240, inlinedAt: !2325)
!2329 = !DILocation(line: 0, scope: !988, inlinedAt: !2330)
!2330 = distinct !DILocation(line: 1031, column: 3, scope: !2240, inlinedAt: !2325)
!2331 = !DILocation(line: 184, column: 6, scope: !988, inlinedAt: !2330)
!2332 = !DILocation(line: 184, column: 12, scope: !988, inlinedAt: !2330)
!2333 = !DILocation(line: 185, column: 8, scope: !1002, inlinedAt: !2330)
!2334 = !DILocation(line: 185, column: 19, scope: !1002, inlinedAt: !2330)
!2335 = !DILocation(line: 186, column: 5, scope: !1002, inlinedAt: !2330)
!2336 = !DILocation(line: 187, column: 6, scope: !988, inlinedAt: !2330)
!2337 = !DILocation(line: 187, column: 17, scope: !988, inlinedAt: !2330)
!2338 = !DILocation(line: 188, column: 6, scope: !988, inlinedAt: !2330)
!2339 = !DILocation(line: 188, column: 18, scope: !988, inlinedAt: !2330)
!2340 = !DILocation(line: 1032, column: 10, scope: !2240, inlinedAt: !2325)
!2341 = !DILocation(line: 1033, column: 1, scope: !2240, inlinedAt: !2325)
!2342 = !DILocation(line: 1046, column: 3, scope: !2315)
!2343 = distinct !DISubprogram(name: "quote_n_mem", scope: !63, file: !63, line: 1061, type: !2344, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !2346)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!25, !28, !25, !101}
!2346 = !{!2347, !2348, !2349}
!2347 = !DILocalVariable(name: "n", arg: 1, scope: !2343, file: !63, line: 1061, type: !28)
!2348 = !DILocalVariable(name: "arg", arg: 2, scope: !2343, file: !63, line: 1061, type: !25)
!2349 = !DILocalVariable(name: "argsize", arg: 3, scope: !2343, file: !63, line: 1061, type: !101)
!2350 = !DILocation(line: 0, scope: !2343)
!2351 = !DILocation(line: 1063, column: 10, scope: !2343)
!2352 = !DILocation(line: 1063, column: 3, scope: !2343)
!2353 = distinct !DISubprogram(name: "quote_mem", scope: !63, file: !63, line: 1067, type: !2354, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !2356)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!25, !25, !101}
!2356 = !{!2357, !2358}
!2357 = !DILocalVariable(name: "arg", arg: 1, scope: !2353, file: !63, line: 1067, type: !25)
!2358 = !DILocalVariable(name: "argsize", arg: 2, scope: !2353, file: !63, line: 1067, type: !101)
!2359 = !DILocation(line: 0, scope: !2353)
!2360 = !DILocation(line: 0, scope: !2343, inlinedAt: !2361)
!2361 = distinct !DILocation(line: 1069, column: 10, scope: !2353)
!2362 = !DILocation(line: 1063, column: 10, scope: !2343, inlinedAt: !2361)
!2363 = !DILocation(line: 1069, column: 3, scope: !2353)
!2364 = distinct !DISubprogram(name: "quote_n", scope: !63, file: !63, line: 1073, type: !2365, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !2367)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!25, !28, !25}
!2367 = !{!2368, !2369}
!2368 = !DILocalVariable(name: "n", arg: 1, scope: !2364, file: !63, line: 1073, type: !28)
!2369 = !DILocalVariable(name: "arg", arg: 2, scope: !2364, file: !63, line: 1073, type: !25)
!2370 = !DILocation(line: 0, scope: !2364)
!2371 = !DILocation(line: 0, scope: !2343, inlinedAt: !2372)
!2372 = distinct !DILocation(line: 1075, column: 10, scope: !2364)
!2373 = !DILocation(line: 1063, column: 10, scope: !2343, inlinedAt: !2372)
!2374 = !DILocation(line: 1075, column: 3, scope: !2364)
!2375 = distinct !DISubprogram(name: "quote", scope: !63, file: !63, line: 1079, type: !2376, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !2378)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!25, !25}
!2378 = !{!2379}
!2379 = !DILocalVariable(name: "arg", arg: 1, scope: !2375, file: !63, line: 1079, type: !25)
!2380 = !DILocation(line: 0, scope: !2375)
!2381 = !DILocation(line: 0, scope: !2364, inlinedAt: !2382)
!2382 = distinct !DILocation(line: 1081, column: 10, scope: !2375)
!2383 = !DILocation(line: 0, scope: !2343, inlinedAt: !2384)
!2384 = distinct !DILocation(line: 1075, column: 10, scope: !2364, inlinedAt: !2382)
!2385 = !DILocation(line: 1063, column: 10, scope: !2343, inlinedAt: !2384)
!2386 = !DILocation(line: 1081, column: 3, scope: !2375)
!2387 = distinct !DISubprogram(name: "version_etc_arn", scope: !154, file: !154, line: 61, type: !2388, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !2426)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{null, !2390, !25, !25, !25, !2425, !101}
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2392, line: 7, baseType: !2393)
!2392 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !674, line: 49, size: 1728, elements: !2394)
!2394 = !{!2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2393, file: !674, line: 51, baseType: !28, size: 32)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2393, file: !674, line: 54, baseType: !12, size: 64, offset: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2393, file: !674, line: 55, baseType: !12, size: 64, offset: 128)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2393, file: !674, line: 56, baseType: !12, size: 64, offset: 192)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2393, file: !674, line: 57, baseType: !12, size: 64, offset: 256)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2393, file: !674, line: 58, baseType: !12, size: 64, offset: 320)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2393, file: !674, line: 59, baseType: !12, size: 64, offset: 384)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2393, file: !674, line: 60, baseType: !12, size: 64, offset: 448)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2393, file: !674, line: 61, baseType: !12, size: 64, offset: 512)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2393, file: !674, line: 64, baseType: !12, size: 64, offset: 576)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2393, file: !674, line: 65, baseType: !12, size: 64, offset: 640)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2393, file: !674, line: 66, baseType: !12, size: 64, offset: 704)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2393, file: !674, line: 68, baseType: !689, size: 64, offset: 768)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2393, file: !674, line: 70, baseType: !2409, size: 64, offset: 832)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2393, file: !674, line: 72, baseType: !28, size: 32, offset: 896)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2393, file: !674, line: 73, baseType: !28, size: 32, offset: 928)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2393, file: !674, line: 74, baseType: !695, size: 64, offset: 960)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2393, file: !674, line: 77, baseType: !100, size: 16, offset: 1024)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2393, file: !674, line: 78, baseType: !700, size: 8, offset: 1040)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2393, file: !674, line: 79, baseType: !702, size: 8, offset: 1048)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2393, file: !674, line: 81, baseType: !706, size: 64, offset: 1088)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2393, file: !674, line: 89, baseType: !709, size: 64, offset: 1152)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2393, file: !674, line: 91, baseType: !711, size: 64, offset: 1216)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2393, file: !674, line: 92, baseType: !714, size: 64, offset: 1280)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2393, file: !674, line: 93, baseType: !2409, size: 64, offset: 1344)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2393, file: !674, line: 94, baseType: !14, size: 64, offset: 1408)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2393, file: !674, line: 95, baseType: !101, size: 64, offset: 1472)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2393, file: !674, line: 96, baseType: !28, size: 32, offset: 1536)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2393, file: !674, line: 98, baseType: !721, size: 160, offset: 1568)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!2426 = !{!2427, !2428, !2429, !2430, !2431, !2432}
!2427 = !DILocalVariable(name: "stream", arg: 1, scope: !2387, file: !154, line: 61, type: !2390)
!2428 = !DILocalVariable(name: "command_name", arg: 2, scope: !2387, file: !154, line: 62, type: !25)
!2429 = !DILocalVariable(name: "package", arg: 3, scope: !2387, file: !154, line: 62, type: !25)
!2430 = !DILocalVariable(name: "version", arg: 4, scope: !2387, file: !154, line: 63, type: !25)
!2431 = !DILocalVariable(name: "authors", arg: 5, scope: !2387, file: !154, line: 64, type: !2425)
!2432 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2387, file: !154, line: 64, type: !101)
!2433 = !DILocation(line: 0, scope: !2387)
!2434 = !DILocation(line: 66, column: 7, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2387, file: !154, line: 66, column: 7)
!2436 = !DILocation(line: 66, column: 7, scope: !2387)
!2437 = !DILocation(line: 67, column: 5, scope: !2435)
!2438 = !DILocation(line: 69, column: 5, scope: !2435)
!2439 = !DILocation(line: 83, column: 3, scope: !2387)
!2440 = !DILocation(line: 85, column: 3, scope: !2387)
!2441 = !DILocation(line: 88, column: 3, scope: !2387)
!2442 = !DILocation(line: 95, column: 3, scope: !2387)
!2443 = !DILocation(line: 97, column: 3, scope: !2387)
!2444 = !DILocation(line: 105, column: 7, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2387, file: !154, line: 98, column: 5)
!2446 = !DILocation(line: 106, column: 7, scope: !2445)
!2447 = !DILocation(line: 109, column: 7, scope: !2445)
!2448 = !DILocation(line: 110, column: 7, scope: !2445)
!2449 = !DILocation(line: 113, column: 7, scope: !2445)
!2450 = !DILocation(line: 115, column: 7, scope: !2445)
!2451 = !DILocation(line: 120, column: 7, scope: !2445)
!2452 = !DILocation(line: 122, column: 7, scope: !2445)
!2453 = !DILocation(line: 127, column: 7, scope: !2445)
!2454 = !DILocation(line: 129, column: 7, scope: !2445)
!2455 = !DILocation(line: 134, column: 7, scope: !2445)
!2456 = !DILocation(line: 137, column: 7, scope: !2445)
!2457 = !DILocation(line: 142, column: 7, scope: !2445)
!2458 = !DILocation(line: 145, column: 7, scope: !2445)
!2459 = !DILocation(line: 150, column: 7, scope: !2445)
!2460 = !DILocation(line: 154, column: 7, scope: !2445)
!2461 = !DILocation(line: 159, column: 7, scope: !2445)
!2462 = !DILocation(line: 163, column: 7, scope: !2445)
!2463 = !DILocation(line: 170, column: 7, scope: !2445)
!2464 = !DILocation(line: 174, column: 7, scope: !2445)
!2465 = !DILocation(line: 176, column: 1, scope: !2387)
!2466 = distinct !DISubprogram(name: "version_etc_ar", scope: !154, file: !154, line: 183, type: !2467, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !2469)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{null, !2390, !25, !25, !25, !2425}
!2469 = !{!2470, !2471, !2472, !2473, !2474, !2475}
!2470 = !DILocalVariable(name: "stream", arg: 1, scope: !2466, file: !154, line: 183, type: !2390)
!2471 = !DILocalVariable(name: "command_name", arg: 2, scope: !2466, file: !154, line: 184, type: !25)
!2472 = !DILocalVariable(name: "package", arg: 3, scope: !2466, file: !154, line: 184, type: !25)
!2473 = !DILocalVariable(name: "version", arg: 4, scope: !2466, file: !154, line: 185, type: !25)
!2474 = !DILocalVariable(name: "authors", arg: 5, scope: !2466, file: !154, line: 185, type: !2425)
!2475 = !DILocalVariable(name: "n_authors", scope: !2466, file: !154, line: 187, type: !101)
!2476 = !DILocation(line: 0, scope: !2466)
!2477 = !DILocation(line: 189, column: 8, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2466, file: !154, line: 189, column: 3)
!2479 = !DILocation(line: 0, scope: !2478)
!2480 = !DILocation(line: 189, column: 23, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2478, file: !154, line: 189, column: 3)
!2482 = !DILocation(line: 189, column: 3, scope: !2478)
!2483 = !DILocation(line: 189, column: 52, scope: !2481)
!2484 = distinct !{!2484, !2482, !2485, !644}
!2485 = !DILocation(line: 190, column: 5, scope: !2478)
!2486 = !DILocation(line: 191, column: 3, scope: !2466)
!2487 = !DILocation(line: 192, column: 1, scope: !2466)
!2488 = distinct !DISubprogram(name: "version_etc_va", scope: !154, file: !154, line: 199, type: !2489, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !2498)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{null, !2390, !25, !25, !25, !2491}
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2493)
!2493 = !{!2494, !2495, !2496, !2497}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2492, file: !154, line: 192, baseType: !6, size: 32)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2492, file: !154, line: 192, baseType: !6, size: 32, offset: 32)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2492, file: !154, line: 192, baseType: !14, size: 64, offset: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2492, file: !154, line: 192, baseType: !14, size: 64, offset: 128)
!2498 = !{!2499, !2500, !2501, !2502, !2503, !2504, !2505}
!2499 = !DILocalVariable(name: "stream", arg: 1, scope: !2488, file: !154, line: 199, type: !2390)
!2500 = !DILocalVariable(name: "command_name", arg: 2, scope: !2488, file: !154, line: 200, type: !25)
!2501 = !DILocalVariable(name: "package", arg: 3, scope: !2488, file: !154, line: 200, type: !25)
!2502 = !DILocalVariable(name: "version", arg: 4, scope: !2488, file: !154, line: 201, type: !25)
!2503 = !DILocalVariable(name: "authors", arg: 5, scope: !2488, file: !154, line: 201, type: !2491)
!2504 = !DILocalVariable(name: "n_authors", scope: !2488, file: !154, line: 203, type: !101)
!2505 = !DILocalVariable(name: "authtab", scope: !2488, file: !154, line: 204, type: !2506)
!2506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 640, elements: !109)
!2507 = !DILocation(line: 0, scope: !2488)
!2508 = !DILocation(line: 204, column: 3, scope: !2488)
!2509 = !DILocation(line: 204, column: 15, scope: !2488)
!2510 = !DILocation(line: 208, column: 35, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2512, file: !154, line: 206, column: 3)
!2512 = distinct !DILexicalBlock(scope: !2488, file: !154, line: 206, column: 3)
!2513 = !DILocation(line: 208, column: 14, scope: !2511)
!2514 = !DILocation(line: 208, column: 33, scope: !2511)
!2515 = !DILocation(line: 208, column: 67, scope: !2511)
!2516 = !DILocation(line: 206, column: 3, scope: !2512)
!2517 = !DILocation(line: 0, scope: !2512)
!2518 = !DILocation(line: 211, column: 3, scope: !2488)
!2519 = !DILocation(line: 213, column: 1, scope: !2488)
!2520 = distinct !DISubprogram(name: "version_etc", scope: !154, file: !154, line: 230, type: !2521, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !2523)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{null, !2390, !25, !25, !25, null}
!2523 = !{!2524, !2525, !2526, !2527, !2528}
!2524 = !DILocalVariable(name: "stream", arg: 1, scope: !2520, file: !154, line: 230, type: !2390)
!2525 = !DILocalVariable(name: "command_name", arg: 2, scope: !2520, file: !154, line: 231, type: !25)
!2526 = !DILocalVariable(name: "package", arg: 3, scope: !2520, file: !154, line: 231, type: !25)
!2527 = !DILocalVariable(name: "version", arg: 4, scope: !2520, file: !154, line: 232, type: !25)
!2528 = !DILocalVariable(name: "authors", scope: !2520, file: !154, line: 234, type: !2529)
!2529 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !669, line: 52, baseType: !2530)
!2530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2531, line: 32, baseType: !2532)
!2531 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!2532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !154, baseType: !2533)
!2533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2492, size: 192, elements: !703)
!2534 = !DILocation(line: 0, scope: !2520)
!2535 = !DILocation(line: 234, column: 3, scope: !2520)
!2536 = !DILocation(line: 234, column: 11, scope: !2520)
!2537 = !DILocation(line: 236, column: 3, scope: !2520)
!2538 = !DILocation(line: 237, column: 3, scope: !2520)
!2539 = !DILocation(line: 238, column: 3, scope: !2520)
!2540 = !DILocation(line: 239, column: 1, scope: !2520)
!2541 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !154, file: !154, line: 242, type: !801, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !39)
!2542 = !DILocation(line: 244, column: 3, scope: !2541)
!2543 = !DILocation(line: 249, column: 3, scope: !2541)
!2544 = !DILocation(line: 255, column: 3, scope: !2541)
!2545 = !DILocation(line: 260, column: 3, scope: !2541)
!2546 = !DILocation(line: 262, column: 1, scope: !2541)
!2547 = distinct !DISubprogram(name: "xnmalloc", scope: !164, file: !164, line: 99, type: !2548, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !2550)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!14, !101, !101}
!2550 = !{!2551, !2552}
!2551 = !DILocalVariable(name: "n", arg: 1, scope: !2547, file: !164, line: 99, type: !101)
!2552 = !DILocalVariable(name: "s", arg: 2, scope: !2547, file: !164, line: 99, type: !101)
!2553 = !DILocation(line: 0, scope: !2547)
!2554 = !DILocation(line: 101, column: 7, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2547, file: !164, line: 101, column: 7)
!2556 = !DILocation(line: 101, column: 7, scope: !2547)
!2557 = !DILocation(line: 102, column: 5, scope: !2555)
!2558 = !DILocation(line: 103, column: 21, scope: !2547)
!2559 = !DILocalVariable(name: "n", arg: 1, scope: !2560, file: !161, line: 39, type: !101)
!2560 = distinct !DISubprogram(name: "xmalloc", scope: !161, file: !161, line: 39, type: !2561, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !2563)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!14, !101}
!2563 = !{!2559, !2564}
!2564 = !DILocalVariable(name: "p", scope: !2560, file: !161, line: 41, type: !14)
!2565 = !DILocation(line: 0, scope: !2560, inlinedAt: !2566)
!2566 = distinct !DILocation(line: 103, column: 10, scope: !2547)
!2567 = !DILocation(line: 41, column: 13, scope: !2560, inlinedAt: !2566)
!2568 = !DILocation(line: 42, column: 8, scope: !2569, inlinedAt: !2566)
!2569 = distinct !DILexicalBlock(scope: !2560, file: !161, line: 42, column: 7)
!2570 = !DILocation(line: 42, column: 10, scope: !2569, inlinedAt: !2566)
!2571 = !DILocation(line: 43, column: 5, scope: !2569, inlinedAt: !2566)
!2572 = !DILocation(line: 103, column: 3, scope: !2547)
!2573 = !DILocation(line: 0, scope: !2560)
!2574 = !DILocation(line: 41, column: 13, scope: !2560)
!2575 = !DILocation(line: 42, column: 8, scope: !2569)
!2576 = !DILocation(line: 42, column: 10, scope: !2569)
!2577 = !DILocation(line: 43, column: 5, scope: !2569)
!2578 = !DILocation(line: 44, column: 3, scope: !2560)
!2579 = distinct !DISubprogram(name: "xnrealloc", scope: !164, file: !164, line: 112, type: !2580, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !2582)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!14, !14, !101, !101}
!2582 = !{!2583, !2584, !2585}
!2583 = !DILocalVariable(name: "p", arg: 1, scope: !2579, file: !164, line: 112, type: !14)
!2584 = !DILocalVariable(name: "n", arg: 2, scope: !2579, file: !164, line: 112, type: !101)
!2585 = !DILocalVariable(name: "s", arg: 3, scope: !2579, file: !164, line: 112, type: !101)
!2586 = !DILocation(line: 0, scope: !2579)
!2587 = !DILocation(line: 114, column: 7, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2579, file: !164, line: 114, column: 7)
!2589 = !DILocation(line: 114, column: 7, scope: !2579)
!2590 = !DILocation(line: 115, column: 5, scope: !2588)
!2591 = !DILocation(line: 116, column: 25, scope: !2579)
!2592 = !DILocalVariable(name: "p", arg: 1, scope: !2593, file: !161, line: 51, type: !14)
!2593 = distinct !DISubprogram(name: "xrealloc", scope: !161, file: !161, line: 51, type: !2594, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !2596)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!14, !14, !101}
!2596 = !{!2592, !2597}
!2597 = !DILocalVariable(name: "n", arg: 2, scope: !2593, file: !161, line: 51, type: !101)
!2598 = !DILocation(line: 0, scope: !2593, inlinedAt: !2599)
!2599 = distinct !DILocation(line: 116, column: 10, scope: !2579)
!2600 = !DILocation(line: 53, column: 8, scope: !2601, inlinedAt: !2599)
!2601 = distinct !DILexicalBlock(scope: !2593, file: !161, line: 53, column: 7)
!2602 = !DILocation(line: 53, column: 10, scope: !2601, inlinedAt: !2599)
!2603 = !DILocation(line: 57, column: 7, scope: !2604, inlinedAt: !2599)
!2604 = distinct !DILexicalBlock(scope: !2601, file: !161, line: 54, column: 5)
!2605 = !DILocation(line: 58, column: 7, scope: !2604, inlinedAt: !2599)
!2606 = !DILocation(line: 61, column: 7, scope: !2593, inlinedAt: !2599)
!2607 = !DILocation(line: 62, column: 8, scope: !2608, inlinedAt: !2599)
!2608 = distinct !DILexicalBlock(scope: !2593, file: !161, line: 62, column: 7)
!2609 = !DILocation(line: 62, column: 10, scope: !2608, inlinedAt: !2599)
!2610 = !DILocation(line: 63, column: 5, scope: !2608, inlinedAt: !2599)
!2611 = !DILocation(line: 116, column: 3, scope: !2579)
!2612 = !DILocation(line: 0, scope: !2593)
!2613 = !DILocation(line: 53, column: 8, scope: !2601)
!2614 = !DILocation(line: 53, column: 10, scope: !2601)
!2615 = !DILocation(line: 57, column: 7, scope: !2604)
!2616 = !DILocation(line: 58, column: 7, scope: !2604)
!2617 = !DILocation(line: 61, column: 7, scope: !2593)
!2618 = !DILocation(line: 62, column: 8, scope: !2608)
!2619 = !DILocation(line: 62, column: 10, scope: !2608)
!2620 = !DILocation(line: 63, column: 5, scope: !2608)
!2621 = !DILocation(line: 65, column: 1, scope: !2593)
!2622 = !DILocation(line: 0, scope: !165)
!2623 = !DILocation(line: 176, column: 14, scope: !165)
!2624 = !DILocation(line: 178, column: 9, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !165, file: !164, line: 178, column: 7)
!2626 = !DILocation(line: 178, column: 7, scope: !165)
!2627 = !DILocation(line: 180, column: 13, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2629, file: !164, line: 180, column: 11)
!2629 = distinct !DILexicalBlock(scope: !2625, file: !164, line: 179, column: 5)
!2630 = !DILocation(line: 180, column: 11, scope: !2629)
!2631 = !DILocation(line: 188, column: 30, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2628, file: !164, line: 181, column: 9)
!2633 = !DILocation(line: 189, column: 16, scope: !2632)
!2634 = !DILocation(line: 189, column: 13, scope: !2632)
!2635 = !DILocation(line: 190, column: 9, scope: !2632)
!2636 = !DILocation(line: 191, column: 11, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2629, file: !164, line: 191, column: 11)
!2638 = !DILocation(line: 191, column: 11, scope: !2629)
!2639 = !DILocation(line: 206, column: 7, scope: !165)
!2640 = !DILocation(line: 207, column: 25, scope: !165)
!2641 = !DILocation(line: 0, scope: !2593, inlinedAt: !2642)
!2642 = distinct !DILocation(line: 207, column: 10, scope: !165)
!2643 = !DILocation(line: 53, column: 10, scope: !2601, inlinedAt: !2642)
!2644 = !DILocation(line: 192, column: 9, scope: !2637)
!2645 = !DILocation(line: 200, column: 69, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2647, file: !164, line: 200, column: 11)
!2647 = distinct !DILexicalBlock(scope: !2625, file: !164, line: 195, column: 5)
!2648 = !DILocation(line: 201, column: 11, scope: !2646)
!2649 = !DILocation(line: 200, column: 11, scope: !2647)
!2650 = !DILocation(line: 202, column: 9, scope: !2646)
!2651 = !DILocation(line: 203, column: 14, scope: !2647)
!2652 = !DILocation(line: 203, column: 18, scope: !2647)
!2653 = !DILocation(line: 203, column: 9, scope: !2647)
!2654 = !DILocation(line: 53, column: 8, scope: !2601, inlinedAt: !2642)
!2655 = !DILocation(line: 57, column: 7, scope: !2604, inlinedAt: !2642)
!2656 = !DILocation(line: 58, column: 7, scope: !2604, inlinedAt: !2642)
!2657 = !DILocation(line: 61, column: 7, scope: !2593, inlinedAt: !2642)
!2658 = !DILocation(line: 62, column: 8, scope: !2608, inlinedAt: !2642)
!2659 = !DILocation(line: 62, column: 10, scope: !2608, inlinedAt: !2642)
!2660 = !DILocation(line: 63, column: 5, scope: !2608, inlinedAt: !2642)
!2661 = !DILocation(line: 207, column: 3, scope: !165)
!2662 = distinct !DISubprogram(name: "xcharalloc", scope: !164, file: !164, line: 216, type: !1798, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !2663)
!2663 = !{!2664}
!2664 = !DILocalVariable(name: "n", arg: 1, scope: !2662, file: !164, line: 216, type: !101)
!2665 = !DILocation(line: 0, scope: !2662)
!2666 = !DILocation(line: 0, scope: !2560, inlinedAt: !2667)
!2667 = distinct !DILocation(line: 218, column: 10, scope: !2662)
!2668 = !DILocation(line: 41, column: 13, scope: !2560, inlinedAt: !2667)
!2669 = !DILocation(line: 42, column: 8, scope: !2569, inlinedAt: !2667)
!2670 = !DILocation(line: 42, column: 10, scope: !2569, inlinedAt: !2667)
!2671 = !DILocation(line: 43, column: 5, scope: !2569, inlinedAt: !2667)
!2672 = !DILocation(line: 218, column: 3, scope: !2662)
!2673 = distinct !DISubprogram(name: "x2realloc", scope: !161, file: !161, line: 74, type: !2674, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !2676)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!14, !14, !168}
!2676 = !{!2677, !2678}
!2677 = !DILocalVariable(name: "p", arg: 1, scope: !2673, file: !161, line: 74, type: !14)
!2678 = !DILocalVariable(name: "pn", arg: 2, scope: !2673, file: !161, line: 74, type: !168)
!2679 = !DILocation(line: 0, scope: !2673)
!2680 = !DILocation(line: 0, scope: !165, inlinedAt: !2681)
!2681 = distinct !DILocation(line: 76, column: 10, scope: !2673)
!2682 = !DILocation(line: 176, column: 14, scope: !165, inlinedAt: !2681)
!2683 = !DILocation(line: 178, column: 9, scope: !2625, inlinedAt: !2681)
!2684 = !DILocation(line: 178, column: 7, scope: !165, inlinedAt: !2681)
!2685 = !DILocation(line: 180, column: 13, scope: !2628, inlinedAt: !2681)
!2686 = !DILocation(line: 180, column: 11, scope: !2629, inlinedAt: !2681)
!2687 = !DILocation(line: 191, column: 11, scope: !2637, inlinedAt: !2681)
!2688 = !DILocation(line: 191, column: 11, scope: !2629, inlinedAt: !2681)
!2689 = !DILocation(line: 192, column: 9, scope: !2637, inlinedAt: !2681)
!2690 = !DILocation(line: 201, column: 11, scope: !2646, inlinedAt: !2681)
!2691 = !DILocation(line: 200, column: 11, scope: !2647, inlinedAt: !2681)
!2692 = !DILocation(line: 202, column: 9, scope: !2646, inlinedAt: !2681)
!2693 = !DILocation(line: 203, column: 14, scope: !2647, inlinedAt: !2681)
!2694 = !DILocation(line: 203, column: 18, scope: !2647, inlinedAt: !2681)
!2695 = !DILocation(line: 203, column: 9, scope: !2647, inlinedAt: !2681)
!2696 = !DILocation(line: 0, scope: !2593, inlinedAt: !2697)
!2697 = distinct !DILocation(line: 207, column: 10, scope: !165, inlinedAt: !2681)
!2698 = !DILocation(line: 53, column: 10, scope: !2601, inlinedAt: !2697)
!2699 = !DILocation(line: 206, column: 7, scope: !165, inlinedAt: !2681)
!2700 = !DILocation(line: 61, column: 7, scope: !2593, inlinedAt: !2697)
!2701 = !DILocation(line: 62, column: 8, scope: !2608, inlinedAt: !2697)
!2702 = !DILocation(line: 62, column: 10, scope: !2608, inlinedAt: !2697)
!2703 = !DILocation(line: 63, column: 5, scope: !2608, inlinedAt: !2697)
!2704 = !DILocation(line: 76, column: 3, scope: !2673)
!2705 = distinct !DISubprogram(name: "xzalloc", scope: !161, file: !161, line: 84, type: !2561, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !2706)
!2706 = !{!2707}
!2707 = !DILocalVariable(name: "n", arg: 1, scope: !2705, file: !161, line: 84, type: !101)
!2708 = !DILocation(line: 0, scope: !2705)
!2709 = !DILocalVariable(name: "n", arg: 1, scope: !2710, file: !161, line: 93, type: !101)
!2710 = distinct !DISubprogram(name: "xcalloc", scope: !161, file: !161, line: 93, type: !2548, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !2711)
!2711 = !{!2709, !2712, !2713}
!2712 = !DILocalVariable(name: "s", arg: 2, scope: !2710, file: !161, line: 93, type: !101)
!2713 = !DILocalVariable(name: "p", scope: !2710, file: !161, line: 95, type: !14)
!2714 = !DILocation(line: 0, scope: !2710, inlinedAt: !2715)
!2715 = distinct !DILocation(line: 86, column: 10, scope: !2705)
!2716 = !DILocation(line: 100, column: 7, scope: !2717, inlinedAt: !2715)
!2717 = distinct !DILexicalBlock(scope: !2710, file: !161, line: 100, column: 7)
!2718 = !DILocation(line: 101, column: 7, scope: !2717, inlinedAt: !2715)
!2719 = !DILocation(line: 101, column: 18, scope: !2717, inlinedAt: !2715)
!2720 = !DILocation(line: 101, column: 16, scope: !2717, inlinedAt: !2715)
!2721 = !DILocation(line: 100, column: 7, scope: !2710, inlinedAt: !2715)
!2722 = !DILocation(line: 102, column: 5, scope: !2717, inlinedAt: !2715)
!2723 = !DILocation(line: 86, column: 3, scope: !2705)
!2724 = !DILocation(line: 0, scope: !2710)
!2725 = !DILocation(line: 100, column: 7, scope: !2717)
!2726 = !DILocation(line: 101, column: 7, scope: !2717)
!2727 = !DILocation(line: 101, column: 18, scope: !2717)
!2728 = !DILocation(line: 101, column: 16, scope: !2717)
!2729 = !DILocation(line: 100, column: 7, scope: !2710)
!2730 = !DILocation(line: 102, column: 5, scope: !2717)
!2731 = !DILocation(line: 103, column: 3, scope: !2710)
!2732 = distinct !DISubprogram(name: "xmemdup", scope: !161, file: !161, line: 111, type: !2733, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !2737)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!14, !2735, !101}
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2737 = !{!2738, !2739}
!2738 = !DILocalVariable(name: "p", arg: 1, scope: !2732, file: !161, line: 111, type: !2735)
!2739 = !DILocalVariable(name: "s", arg: 2, scope: !2732, file: !161, line: 111, type: !101)
!2740 = !DILocation(line: 0, scope: !2732)
!2741 = !DILocation(line: 0, scope: !2560, inlinedAt: !2742)
!2742 = distinct !DILocation(line: 113, column: 18, scope: !2732)
!2743 = !DILocation(line: 41, column: 13, scope: !2560, inlinedAt: !2742)
!2744 = !DILocation(line: 42, column: 8, scope: !2569, inlinedAt: !2742)
!2745 = !DILocation(line: 42, column: 10, scope: !2569, inlinedAt: !2742)
!2746 = !DILocation(line: 43, column: 5, scope: !2569, inlinedAt: !2742)
!2747 = !DILocalVariable(name: "__dest", arg: 1, scope: !2748, file: !1325, line: 26, type: !2751)
!2748 = distinct !DISubprogram(name: "memcpy", scope: !1325, file: !1325, line: 26, type: !2749, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !2753)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!14, !2751, !2752, !101}
!2751 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !14)
!2752 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2735)
!2753 = !{!2747, !2754, !2755}
!2754 = !DILocalVariable(name: "__src", arg: 2, scope: !2748, file: !1325, line: 26, type: !2752)
!2755 = !DILocalVariable(name: "__len", arg: 3, scope: !2748, file: !1325, line: 26, type: !101)
!2756 = !DILocation(line: 0, scope: !2748, inlinedAt: !2757)
!2757 = distinct !DILocation(line: 113, column: 10, scope: !2732)
!2758 = !DILocation(line: 29, column: 10, scope: !2748, inlinedAt: !2757)
!2759 = !DILocation(line: 113, column: 3, scope: !2732)
!2760 = distinct !DISubprogram(name: "xstrdup", scope: !161, file: !161, line: 119, type: !794, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !2761)
!2761 = !{!2762}
!2762 = !DILocalVariable(name: "string", arg: 1, scope: !2760, file: !161, line: 119, type: !25)
!2763 = !DILocation(line: 0, scope: !2760)
!2764 = !DILocation(line: 121, column: 27, scope: !2760)
!2765 = !DILocation(line: 121, column: 43, scope: !2760)
!2766 = !DILocation(line: 0, scope: !2732, inlinedAt: !2767)
!2767 = distinct !DILocation(line: 121, column: 10, scope: !2760)
!2768 = !DILocation(line: 0, scope: !2560, inlinedAt: !2769)
!2769 = distinct !DILocation(line: 113, column: 18, scope: !2732, inlinedAt: !2767)
!2770 = !DILocation(line: 41, column: 13, scope: !2560, inlinedAt: !2769)
!2771 = !DILocation(line: 42, column: 8, scope: !2569, inlinedAt: !2769)
!2772 = !DILocation(line: 42, column: 10, scope: !2569, inlinedAt: !2769)
!2773 = !DILocation(line: 43, column: 5, scope: !2569, inlinedAt: !2769)
!2774 = !DILocation(line: 0, scope: !2748, inlinedAt: !2775)
!2775 = distinct !DILocation(line: 113, column: 10, scope: !2732, inlinedAt: !2767)
!2776 = !DILocation(line: 29, column: 10, scope: !2748, inlinedAt: !2775)
!2777 = !DILocation(line: 121, column: 3, scope: !2760)
!2778 = distinct !DISubprogram(name: "xalloc_die", scope: !178, file: !178, line: 32, type: !801, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !177, retainedNodes: !39)
!2779 = !DILocation(line: 34, column: 10, scope: !2778)
!2780 = !DILocation(line: 34, column: 33, scope: !2778)
!2781 = !DILocation(line: 34, column: 3, scope: !2778)
!2782 = !DILocation(line: 40, column: 3, scope: !2778)
!2783 = distinct !DISubprogram(name: "rpl_calloc", scope: !180, file: !180, line: 42, type: !2548, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !179, retainedNodes: !2784)
!2784 = !{!2785, !2786, !2787, !2788}
!2785 = !DILocalVariable(name: "n", arg: 1, scope: !2783, file: !180, line: 42, type: !101)
!2786 = !DILocalVariable(name: "s", arg: 2, scope: !2783, file: !180, line: 42, type: !101)
!2787 = !DILocalVariable(name: "result", scope: !2783, file: !180, line: 44, type: !14)
!2788 = !DILocalVariable(name: "bytes", scope: !2789, file: !180, line: 56, type: !101)
!2789 = distinct !DILexicalBlock(scope: !2790, file: !180, line: 53, column: 5)
!2790 = distinct !DILexicalBlock(scope: !2783, file: !180, line: 47, column: 7)
!2791 = !DILocation(line: 0, scope: !2783)
!2792 = !DILocation(line: 47, column: 9, scope: !2790)
!2793 = !DILocation(line: 47, column: 14, scope: !2790)
!2794 = !DILocation(line: 0, scope: !2789)
!2795 = !DILocation(line: 57, column: 21, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2789, file: !180, line: 57, column: 11)
!2797 = !DILocation(line: 57, column: 11, scope: !2789)
!2798 = !DILocation(line: 59, column: 11, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2796, file: !180, line: 58, column: 9)
!2800 = !DILocation(line: 59, column: 17, scope: !2799)
!2801 = !DILocation(line: 65, column: 12, scope: !2783)
!2802 = !DILocation(line: 72, column: 3, scope: !2783)
!2803 = !DILocation(line: 73, column: 1, scope: !2783)
!2804 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !182, file: !182, line: 86, type: !2805, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2819)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!101, !2807, !25, !101, !2808}
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1077, line: 6, baseType: !2810)
!2810 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1079, line: 21, baseType: !2811)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1079, line: 13, size: 64, elements: !2812)
!2812 = !{!2813, !2814}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2811, file: !1079, line: 15, baseType: !28, size: 32)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2811, file: !1079, line: 20, baseType: !2815, size: 32, offset: 32)
!2815 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2811, file: !1079, line: 16, size: 32, elements: !2816)
!2816 = !{!2817, !2818}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2815, file: !1079, line: 18, baseType: !6, size: 32)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2815, file: !1079, line: 19, baseType: !1088, size: 32)
!2819 = !{!2820, !2821, !2822, !2823, !2824, !2825, !2826}
!2820 = !DILocalVariable(name: "pwc", arg: 1, scope: !2804, file: !182, line: 86, type: !2807)
!2821 = !DILocalVariable(name: "s", arg: 2, scope: !2804, file: !182, line: 86, type: !25)
!2822 = !DILocalVariable(name: "n", arg: 3, scope: !2804, file: !182, line: 86, type: !101)
!2823 = !DILocalVariable(name: "ps", arg: 4, scope: !2804, file: !182, line: 86, type: !2808)
!2824 = !DILocalVariable(name: "ret", scope: !2804, file: !182, line: 88, type: !101)
!2825 = !DILocalVariable(name: "wc", scope: !2804, file: !182, line: 89, type: !1093)
!2826 = !DILocalVariable(name: "uc", scope: !2827, file: !182, line: 156, type: !955)
!2827 = distinct !DILexicalBlock(scope: !2828, file: !182, line: 155, column: 5)
!2828 = distinct !DILexicalBlock(scope: !2804, file: !182, line: 154, column: 7)
!2829 = !DILocation(line: 0, scope: !2804)
!2830 = !DILocation(line: 89, column: 3, scope: !2804)
!2831 = !DILocation(line: 105, column: 9, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2804, file: !182, line: 105, column: 7)
!2833 = !DILocation(line: 105, column: 7, scope: !2804)
!2834 = !DILocation(line: 145, column: 9, scope: !2804)
!2835 = !DILocation(line: 154, column: 19, scope: !2828)
!2836 = !DILocation(line: 154, column: 26, scope: !2828)
!2837 = !DILocation(line: 154, column: 41, scope: !2828)
!2838 = !DILocation(line: 154, column: 7, scope: !2804)
!2839 = !DILocation(line: 156, column: 26, scope: !2827)
!2840 = !DILocation(line: 0, scope: !2827)
!2841 = !DILocation(line: 157, column: 14, scope: !2827)
!2842 = !DILocation(line: 157, column: 12, scope: !2827)
!2843 = !DILocation(line: 163, column: 1, scope: !2804)
!2844 = !DISubprogram(name: "mbrtowc", scope: !1758, file: !1758, line: 296, type: !2845, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{!103, !30, !25, !103, !2847}
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2848 = distinct !DISubprogram(name: "close_stream", scope: !185, file: !185, line: 56, type: !2849, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !184, retainedNodes: !2885)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!28, !2851}
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2392, line: 7, baseType: !2853)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !674, line: 49, size: 1728, elements: !2854)
!2854 = !{!2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2853, file: !674, line: 51, baseType: !28, size: 32)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2853, file: !674, line: 54, baseType: !12, size: 64, offset: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2853, file: !674, line: 55, baseType: !12, size: 64, offset: 128)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2853, file: !674, line: 56, baseType: !12, size: 64, offset: 192)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2853, file: !674, line: 57, baseType: !12, size: 64, offset: 256)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2853, file: !674, line: 58, baseType: !12, size: 64, offset: 320)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2853, file: !674, line: 59, baseType: !12, size: 64, offset: 384)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2853, file: !674, line: 60, baseType: !12, size: 64, offset: 448)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2853, file: !674, line: 61, baseType: !12, size: 64, offset: 512)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2853, file: !674, line: 64, baseType: !12, size: 64, offset: 576)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2853, file: !674, line: 65, baseType: !12, size: 64, offset: 640)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2853, file: !674, line: 66, baseType: !12, size: 64, offset: 704)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2853, file: !674, line: 68, baseType: !689, size: 64, offset: 768)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2853, file: !674, line: 70, baseType: !2869, size: 64, offset: 832)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2853, file: !674, line: 72, baseType: !28, size: 32, offset: 896)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2853, file: !674, line: 73, baseType: !28, size: 32, offset: 928)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2853, file: !674, line: 74, baseType: !695, size: 64, offset: 960)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2853, file: !674, line: 77, baseType: !100, size: 16, offset: 1024)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2853, file: !674, line: 78, baseType: !700, size: 8, offset: 1040)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2853, file: !674, line: 79, baseType: !702, size: 8, offset: 1048)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2853, file: !674, line: 81, baseType: !706, size: 64, offset: 1088)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2853, file: !674, line: 89, baseType: !709, size: 64, offset: 1152)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2853, file: !674, line: 91, baseType: !711, size: 64, offset: 1216)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2853, file: !674, line: 92, baseType: !714, size: 64, offset: 1280)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2853, file: !674, line: 93, baseType: !2869, size: 64, offset: 1344)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2853, file: !674, line: 94, baseType: !14, size: 64, offset: 1408)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2853, file: !674, line: 95, baseType: !101, size: 64, offset: 1472)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2853, file: !674, line: 96, baseType: !28, size: 32, offset: 1536)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2853, file: !674, line: 98, baseType: !721, size: 160, offset: 1568)
!2885 = !{!2886, !2887, !2889, !2890}
!2886 = !DILocalVariable(name: "stream", arg: 1, scope: !2848, file: !185, line: 56, type: !2851)
!2887 = !DILocalVariable(name: "some_pending", scope: !2848, file: !185, line: 58, type: !2888)
!2888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!2889 = !DILocalVariable(name: "prev_fail", scope: !2848, file: !185, line: 59, type: !2888)
!2890 = !DILocalVariable(name: "fclose_fail", scope: !2848, file: !185, line: 60, type: !2888)
!2891 = !DILocation(line: 0, scope: !2848)
!2892 = !DILocation(line: 58, column: 30, scope: !2848)
!2893 = !DILocalVariable(name: "__stream", arg: 1, scope: !2894, file: !2895, line: 135, type: !2851)
!2894 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2895, file: !2895, line: 135, type: !2849, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !184, retainedNodes: !2896)
!2895 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!2896 = !{!2893}
!2897 = !DILocation(line: 0, scope: !2894, inlinedAt: !2898)
!2898 = distinct !DILocation(line: 59, column: 27, scope: !2848)
!2899 = !DILocation(line: 137, column: 10, scope: !2894, inlinedAt: !2898)
!2900 = !{!2901, !752, i64 0}
!2901 = !{!"_IO_FILE", !752, i64 0, !603, i64 8, !603, i64 16, !603, i64 24, !603, i64 32, !603, i64 40, !603, i64 48, !603, i64 56, !603, i64 64, !603, i64 72, !603, i64 80, !603, i64 88, !603, i64 96, !603, i64 104, !752, i64 112, !752, i64 116, !1834, i64 120, !1317, i64 128, !604, i64 130, !604, i64 131, !603, i64 136, !1834, i64 144, !603, i64 152, !603, i64 160, !603, i64 168, !603, i64 176, !1834, i64 184, !752, i64 192, !604, i64 196}
!2902 = !DILocation(line: 59, column: 43, scope: !2848)
!2903 = !DILocation(line: 60, column: 29, scope: !2848)
!2904 = !DILocation(line: 60, column: 45, scope: !2848)
!2905 = !DILocation(line: 70, column: 17, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2848, file: !185, line: 70, column: 7)
!2907 = !DILocation(line: 58, column: 50, scope: !2848)
!2908 = !DILocation(line: 70, column: 33, scope: !2906)
!2909 = !DILocation(line: 70, column: 53, scope: !2906)
!2910 = !DILocation(line: 70, column: 59, scope: !2906)
!2911 = !DILocation(line: 70, column: 7, scope: !2848)
!2912 = !DILocation(line: 72, column: 11, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2906, file: !185, line: 71, column: 5)
!2914 = !DILocation(line: 73, column: 9, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2913, file: !185, line: 72, column: 11)
!2916 = !DILocation(line: 73, column: 15, scope: !2915)
!2917 = !DILocation(line: 78, column: 1, scope: !2848)
!2918 = distinct !DISubprogram(name: "hard_locale", scope: !187, file: !187, line: 27, type: !2919, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !186, retainedNodes: !2921)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!34, !28}
!2921 = !{!2922, !2923}
!2922 = !DILocalVariable(name: "category", arg: 1, scope: !2918, file: !187, line: 27, type: !28)
!2923 = !DILocalVariable(name: "locale", scope: !2918, file: !187, line: 29, type: !2924)
!2924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 2056, elements: !2925)
!2925 = !{!2926}
!2926 = !DISubrange(count: 257)
!2927 = !DILocation(line: 0, scope: !2918)
!2928 = !DILocation(line: 29, column: 3, scope: !2918)
!2929 = !DILocation(line: 29, column: 8, scope: !2918)
!2930 = !DILocation(line: 31, column: 7, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2918, file: !187, line: 31, column: 7)
!2932 = !DILocation(line: 31, column: 7, scope: !2918)
!2933 = !DILocation(line: 34, column: 12, scope: !2918)
!2934 = !DILocation(line: 34, column: 38, scope: !2918)
!2935 = !DILocation(line: 34, column: 41, scope: !2918)
!2936 = !DILocation(line: 34, column: 66, scope: !2918)
!2937 = !DILocation(line: 35, column: 1, scope: !2918)
!2938 = distinct !DISubprogram(name: "locale_charset", scope: !189, file: !189, line: 831, type: !2939, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !188, retainedNodes: !2941)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{!25}
!2941 = !{!2942}
!2942 = !DILocalVariable(name: "codeset", scope: !2938, file: !189, line: 833, type: !25)
!2943 = !DILocation(line: 847, column: 13, scope: !2938)
!2944 = !DILocation(line: 0, scope: !2938)
!2945 = !DILocation(line: 911, column: 15, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2938, file: !189, line: 911, column: 7)
!2947 = !DILocation(line: 911, column: 7, scope: !2938)
!2948 = !DILocation(line: 1070, column: 13, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2950, file: !189, line: 1070, column: 13)
!2950 = distinct !DILexicalBlock(scope: !2951, file: !189, line: 1060, column: 7)
!2951 = distinct !DILexicalBlock(scope: !2938, file: !189, line: 1019, column: 3)
!2952 = !DILocation(line: 1070, column: 24, scope: !2949)
!2953 = !DILocation(line: 1070, column: 13, scope: !2950)
!2954 = !DILocation(line: 1158, column: 3, scope: !2938)
!2955 = !DISubprogram(name: "nl_langinfo", scope: !192, file: !192, line: 661, type: !818, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!2956 = distinct !DISubprogram(name: "setlocale_null_r", scope: !578, file: !578, line: 269, type: !2957, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !2959)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!28, !28, !12, !101}
!2959 = !{!2960, !2961, !2962}
!2960 = !DILocalVariable(name: "category", arg: 1, scope: !2956, file: !578, line: 269, type: !28)
!2961 = !DILocalVariable(name: "buf", arg: 2, scope: !2956, file: !578, line: 269, type: !12)
!2962 = !DILocalVariable(name: "bufsize", arg: 3, scope: !2956, file: !578, line: 269, type: !101)
!2963 = !DILocation(line: 0, scope: !2956)
!2964 = !DILocalVariable(name: "category", arg: 1, scope: !2965, file: !578, line: 91, type: !28)
!2965 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !578, file: !578, line: 91, type: !2957, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !2966)
!2966 = !{!2964, !2967, !2968, !2969, !2970}
!2967 = !DILocalVariable(name: "buf", arg: 2, scope: !2965, file: !578, line: 91, type: !12)
!2968 = !DILocalVariable(name: "bufsize", arg: 3, scope: !2965, file: !578, line: 91, type: !101)
!2969 = !DILocalVariable(name: "result", scope: !2965, file: !578, line: 140, type: !25)
!2970 = !DILocalVariable(name: "length", scope: !2971, file: !578, line: 154, type: !101)
!2971 = distinct !DILexicalBlock(scope: !2972, file: !578, line: 153, column: 5)
!2972 = distinct !DILexicalBlock(scope: !2965, file: !578, line: 142, column: 7)
!2973 = !DILocation(line: 0, scope: !2965, inlinedAt: !2974)
!2974 = distinct !DILocation(line: 274, column: 10, scope: !2956)
!2975 = !DILocalVariable(name: "category", arg: 1, scope: !2976, file: !578, line: 60, type: !28)
!2976 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !578, file: !578, line: 60, type: !2977, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !2979)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!25, !28}
!2979 = !{!2975, !2980}
!2980 = !DILocalVariable(name: "result", scope: !2976, file: !578, line: 62, type: !25)
!2981 = !DILocation(line: 0, scope: !2976, inlinedAt: !2982)
!2982 = distinct !DILocation(line: 140, column: 24, scope: !2965, inlinedAt: !2974)
!2983 = !DILocation(line: 62, column: 24, scope: !2976, inlinedAt: !2982)
!2984 = !DILocation(line: 142, column: 14, scope: !2972, inlinedAt: !2974)
!2985 = !DILocation(line: 142, column: 7, scope: !2965, inlinedAt: !2974)
!2986 = !DILocation(line: 145, column: 19, scope: !2987, inlinedAt: !2974)
!2987 = distinct !DILexicalBlock(scope: !2988, file: !578, line: 145, column: 11)
!2988 = distinct !DILexicalBlock(scope: !2972, file: !578, line: 143, column: 5)
!2989 = !DILocation(line: 145, column: 11, scope: !2988, inlinedAt: !2974)
!2990 = !DILocation(line: 149, column: 16, scope: !2987, inlinedAt: !2974)
!2991 = !DILocation(line: 149, column: 9, scope: !2987, inlinedAt: !2974)
!2992 = !DILocation(line: 154, column: 23, scope: !2971, inlinedAt: !2974)
!2993 = !DILocation(line: 0, scope: !2971, inlinedAt: !2974)
!2994 = !DILocation(line: 155, column: 18, scope: !2995, inlinedAt: !2974)
!2995 = distinct !DILexicalBlock(scope: !2971, file: !578, line: 155, column: 11)
!2996 = !DILocation(line: 155, column: 11, scope: !2971, inlinedAt: !2974)
!2997 = !DILocation(line: 157, column: 39, scope: !2998, inlinedAt: !2974)
!2998 = distinct !DILexicalBlock(scope: !2995, file: !578, line: 156, column: 9)
!2999 = !DILocalVariable(name: "__dest", arg: 1, scope: !3000, file: !1325, line: 26, type: !2751)
!3000 = distinct !DISubprogram(name: "memcpy", scope: !1325, file: !1325, line: 26, type: !2749, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !3001)
!3001 = !{!2999, !3002, !3003}
!3002 = !DILocalVariable(name: "__src", arg: 2, scope: !3000, file: !1325, line: 26, type: !2752)
!3003 = !DILocalVariable(name: "__len", arg: 3, scope: !3000, file: !1325, line: 26, type: !101)
!3004 = !DILocation(line: 0, scope: !3000, inlinedAt: !3005)
!3005 = distinct !DILocation(line: 157, column: 11, scope: !2998, inlinedAt: !2974)
!3006 = !DILocation(line: 29, column: 10, scope: !3000, inlinedAt: !3005)
!3007 = !DILocation(line: 158, column: 11, scope: !2998, inlinedAt: !2974)
!3008 = !DILocation(line: 162, column: 23, scope: !3009, inlinedAt: !2974)
!3009 = distinct !DILexicalBlock(scope: !3010, file: !578, line: 162, column: 15)
!3010 = distinct !DILexicalBlock(scope: !2995, file: !578, line: 161, column: 9)
!3011 = !DILocation(line: 162, column: 15, scope: !3010, inlinedAt: !2974)
!3012 = !DILocation(line: 167, column: 44, scope: !3013, inlinedAt: !2974)
!3013 = distinct !DILexicalBlock(scope: !3009, file: !578, line: 163, column: 13)
!3014 = !DILocation(line: 0, scope: !3000, inlinedAt: !3015)
!3015 = distinct !DILocation(line: 167, column: 15, scope: !3013, inlinedAt: !2974)
!3016 = !DILocation(line: 29, column: 10, scope: !3000, inlinedAt: !3015)
!3017 = !DILocation(line: 168, column: 15, scope: !3013, inlinedAt: !2974)
!3018 = !DILocation(line: 168, column: 32, scope: !3013, inlinedAt: !2974)
!3019 = !DILocation(line: 169, column: 13, scope: !3013, inlinedAt: !2974)
!3020 = !DILocation(line: 0, scope: !2972, inlinedAt: !2974)
!3021 = !DILocation(line: 274, column: 3, scope: !2956)
!3022 = distinct !DISubprogram(name: "setlocale_null", scope: !578, file: !578, line: 301, type: !2977, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !3023)
!3023 = !{!3024}
!3024 = !DILocalVariable(name: "category", arg: 1, scope: !3022, file: !578, line: 301, type: !28)
!3025 = !DILocation(line: 0, scope: !3022)
!3026 = !DILocation(line: 0, scope: !2976, inlinedAt: !3027)
!3027 = distinct !DILocation(line: 304, column: 10, scope: !3022)
!3028 = !DILocation(line: 62, column: 24, scope: !2976, inlinedAt: !3027)
!3029 = !DILocation(line: 304, column: 3, scope: !3022)
!3030 = distinct !DISubprogram(name: "rpl_fclose", scope: !580, file: !580, line: 58, type: !3031, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !3067)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!28, !3033}
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2392, line: 7, baseType: !3035)
!3035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !674, line: 49, size: 1728, elements: !3036)
!3036 = !{!3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3035, file: !674, line: 51, baseType: !28, size: 32)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3035, file: !674, line: 54, baseType: !12, size: 64, offset: 64)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3035, file: !674, line: 55, baseType: !12, size: 64, offset: 128)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3035, file: !674, line: 56, baseType: !12, size: 64, offset: 192)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3035, file: !674, line: 57, baseType: !12, size: 64, offset: 256)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3035, file: !674, line: 58, baseType: !12, size: 64, offset: 320)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3035, file: !674, line: 59, baseType: !12, size: 64, offset: 384)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3035, file: !674, line: 60, baseType: !12, size: 64, offset: 448)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3035, file: !674, line: 61, baseType: !12, size: 64, offset: 512)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3035, file: !674, line: 64, baseType: !12, size: 64, offset: 576)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3035, file: !674, line: 65, baseType: !12, size: 64, offset: 640)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3035, file: !674, line: 66, baseType: !12, size: 64, offset: 704)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3035, file: !674, line: 68, baseType: !689, size: 64, offset: 768)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3035, file: !674, line: 70, baseType: !3051, size: 64, offset: 832)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3035, file: !674, line: 72, baseType: !28, size: 32, offset: 896)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3035, file: !674, line: 73, baseType: !28, size: 32, offset: 928)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3035, file: !674, line: 74, baseType: !695, size: 64, offset: 960)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3035, file: !674, line: 77, baseType: !100, size: 16, offset: 1024)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3035, file: !674, line: 78, baseType: !700, size: 8, offset: 1040)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3035, file: !674, line: 79, baseType: !702, size: 8, offset: 1048)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3035, file: !674, line: 81, baseType: !706, size: 64, offset: 1088)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3035, file: !674, line: 89, baseType: !709, size: 64, offset: 1152)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3035, file: !674, line: 91, baseType: !711, size: 64, offset: 1216)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3035, file: !674, line: 92, baseType: !714, size: 64, offset: 1280)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3035, file: !674, line: 93, baseType: !3051, size: 64, offset: 1344)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3035, file: !674, line: 94, baseType: !14, size: 64, offset: 1408)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3035, file: !674, line: 95, baseType: !101, size: 64, offset: 1472)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3035, file: !674, line: 96, baseType: !28, size: 32, offset: 1536)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3035, file: !674, line: 98, baseType: !721, size: 160, offset: 1568)
!3067 = !{!3068, !3069, !3070, !3071}
!3068 = !DILocalVariable(name: "fp", arg: 1, scope: !3030, file: !580, line: 58, type: !3033)
!3069 = !DILocalVariable(name: "saved_errno", scope: !3030, file: !580, line: 60, type: !28)
!3070 = !DILocalVariable(name: "fd", scope: !3030, file: !580, line: 61, type: !28)
!3071 = !DILocalVariable(name: "result", scope: !3030, file: !580, line: 62, type: !28)
!3072 = !DILocation(line: 0, scope: !3030)
!3073 = !DILocation(line: 65, column: 8, scope: !3030)
!3074 = !DILocation(line: 66, column: 10, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3030, file: !580, line: 66, column: 7)
!3076 = !DILocation(line: 66, column: 7, scope: !3030)
!3077 = !DILocation(line: 67, column: 12, scope: !3075)
!3078 = !DILocation(line: 67, column: 5, scope: !3075)
!3079 = !DILocation(line: 72, column: 9, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3030, file: !580, line: 72, column: 7)
!3081 = !DILocation(line: 72, column: 23, scope: !3080)
!3082 = !DILocation(line: 72, column: 33, scope: !3080)
!3083 = !DILocation(line: 72, column: 26, scope: !3080)
!3084 = !DILocation(line: 72, column: 59, scope: !3080)
!3085 = !DILocation(line: 73, column: 7, scope: !3080)
!3086 = !DILocation(line: 73, column: 10, scope: !3080)
!3087 = !DILocation(line: 72, column: 7, scope: !3030)
!3088 = !DILocation(line: 100, column: 12, scope: !3030)
!3089 = !DILocation(line: 105, column: 7, scope: !3030)
!3090 = !DILocation(line: 74, column: 19, scope: !3080)
!3091 = !DILocation(line: 105, column: 19, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3030, file: !580, line: 105, column: 7)
!3093 = !DILocation(line: 107, column: 13, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3092, file: !580, line: 106, column: 5)
!3095 = !DILocation(line: 109, column: 5, scope: !3094)
!3096 = !DILocation(line: 112, column: 1, scope: !3030)
!3097 = !DISubprogram(name: "fileno", scope: !669, file: !669, line: 785, type: !3098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!28, !3051}
!3100 = !DISubprogram(name: "fclose", scope: !669, file: !669, line: 213, type: !3098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!3101 = !DISubprogram(name: "lseek", scope: !814, file: !814, line: 334, type: !3102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!697, !28, !697, !28}
!3104 = distinct !DISubprogram(name: "rpl_fflush", scope: !582, file: !582, line: 129, type: !3105, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !581, retainedNodes: !3141)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!28, !3107}
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2392, line: 7, baseType: !3109)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !674, line: 49, size: 1728, elements: !3110)
!3110 = !{!3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3109, file: !674, line: 51, baseType: !28, size: 32)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3109, file: !674, line: 54, baseType: !12, size: 64, offset: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3109, file: !674, line: 55, baseType: !12, size: 64, offset: 128)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3109, file: !674, line: 56, baseType: !12, size: 64, offset: 192)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3109, file: !674, line: 57, baseType: !12, size: 64, offset: 256)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3109, file: !674, line: 58, baseType: !12, size: 64, offset: 320)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3109, file: !674, line: 59, baseType: !12, size: 64, offset: 384)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3109, file: !674, line: 60, baseType: !12, size: 64, offset: 448)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3109, file: !674, line: 61, baseType: !12, size: 64, offset: 512)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3109, file: !674, line: 64, baseType: !12, size: 64, offset: 576)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3109, file: !674, line: 65, baseType: !12, size: 64, offset: 640)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3109, file: !674, line: 66, baseType: !12, size: 64, offset: 704)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3109, file: !674, line: 68, baseType: !689, size: 64, offset: 768)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3109, file: !674, line: 70, baseType: !3125, size: 64, offset: 832)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3109, file: !674, line: 72, baseType: !28, size: 32, offset: 896)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3109, file: !674, line: 73, baseType: !28, size: 32, offset: 928)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3109, file: !674, line: 74, baseType: !695, size: 64, offset: 960)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3109, file: !674, line: 77, baseType: !100, size: 16, offset: 1024)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3109, file: !674, line: 78, baseType: !700, size: 8, offset: 1040)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3109, file: !674, line: 79, baseType: !702, size: 8, offset: 1048)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3109, file: !674, line: 81, baseType: !706, size: 64, offset: 1088)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3109, file: !674, line: 89, baseType: !709, size: 64, offset: 1152)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3109, file: !674, line: 91, baseType: !711, size: 64, offset: 1216)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3109, file: !674, line: 92, baseType: !714, size: 64, offset: 1280)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3109, file: !674, line: 93, baseType: !3125, size: 64, offset: 1344)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3109, file: !674, line: 94, baseType: !14, size: 64, offset: 1408)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3109, file: !674, line: 95, baseType: !101, size: 64, offset: 1472)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3109, file: !674, line: 96, baseType: !28, size: 32, offset: 1536)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3109, file: !674, line: 98, baseType: !721, size: 160, offset: 1568)
!3141 = !{!3142}
!3142 = !DILocalVariable(name: "stream", arg: 1, scope: !3104, file: !582, line: 129, type: !3107)
!3143 = !DILocation(line: 0, scope: !3104)
!3144 = !DILocation(line: 150, column: 14, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3104, file: !582, line: 150, column: 7)
!3146 = !DILocation(line: 150, column: 22, scope: !3145)
!3147 = !DILocation(line: 150, column: 27, scope: !3145)
!3148 = !DILocation(line: 150, column: 7, scope: !3104)
!3149 = !DILocation(line: 151, column: 12, scope: !3145)
!3150 = !DILocation(line: 151, column: 5, scope: !3145)
!3151 = !DILocalVariable(name: "fp", arg: 1, scope: !3152, file: !582, line: 41, type: !3107)
!3152 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !582, file: !582, line: 41, type: !3153, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !581, retainedNodes: !3155)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{null, !3107}
!3155 = !{!3151}
!3156 = !DILocation(line: 0, scope: !3152, inlinedAt: !3157)
!3157 = distinct !DILocation(line: 156, column: 3, scope: !3104)
!3158 = !DILocation(line: 43, column: 11, scope: !3159, inlinedAt: !3157)
!3159 = distinct !DILexicalBlock(scope: !3152, file: !582, line: 43, column: 7)
!3160 = !DILocation(line: 43, column: 18, scope: !3159, inlinedAt: !3157)
!3161 = !DILocation(line: 43, column: 7, scope: !3152, inlinedAt: !3157)
!3162 = !DILocation(line: 45, column: 5, scope: !3159, inlinedAt: !3157)
!3163 = !DILocation(line: 158, column: 10, scope: !3104)
!3164 = !DILocation(line: 158, column: 3, scope: !3104)
!3165 = !DILocation(line: 235, column: 1, scope: !3104)
!3166 = !DISubprogram(name: "fflush", scope: !669, file: !669, line: 218, type: !3167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!28, !3125}
!3169 = distinct !DISubprogram(name: "rpl_fseeko", scope: !584, file: !584, line: 28, type: !3170, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !3207)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!28, !3172, !3206, !28}
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2392, line: 7, baseType: !3174)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !674, line: 49, size: 1728, elements: !3175)
!3175 = !{!3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3174, file: !674, line: 51, baseType: !28, size: 32)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3174, file: !674, line: 54, baseType: !12, size: 64, offset: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3174, file: !674, line: 55, baseType: !12, size: 64, offset: 128)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3174, file: !674, line: 56, baseType: !12, size: 64, offset: 192)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3174, file: !674, line: 57, baseType: !12, size: 64, offset: 256)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3174, file: !674, line: 58, baseType: !12, size: 64, offset: 320)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3174, file: !674, line: 59, baseType: !12, size: 64, offset: 384)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3174, file: !674, line: 60, baseType: !12, size: 64, offset: 448)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3174, file: !674, line: 61, baseType: !12, size: 64, offset: 512)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3174, file: !674, line: 64, baseType: !12, size: 64, offset: 576)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3174, file: !674, line: 65, baseType: !12, size: 64, offset: 640)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3174, file: !674, line: 66, baseType: !12, size: 64, offset: 704)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3174, file: !674, line: 68, baseType: !689, size: 64, offset: 768)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3174, file: !674, line: 70, baseType: !3190, size: 64, offset: 832)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3174, file: !674, line: 72, baseType: !28, size: 32, offset: 896)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3174, file: !674, line: 73, baseType: !28, size: 32, offset: 928)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3174, file: !674, line: 74, baseType: !695, size: 64, offset: 960)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3174, file: !674, line: 77, baseType: !100, size: 16, offset: 1024)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3174, file: !674, line: 78, baseType: !700, size: 8, offset: 1040)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3174, file: !674, line: 79, baseType: !702, size: 8, offset: 1048)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3174, file: !674, line: 81, baseType: !706, size: 64, offset: 1088)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3174, file: !674, line: 89, baseType: !709, size: 64, offset: 1152)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3174, file: !674, line: 91, baseType: !711, size: 64, offset: 1216)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3174, file: !674, line: 92, baseType: !714, size: 64, offset: 1280)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3174, file: !674, line: 93, baseType: !3190, size: 64, offset: 1344)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3174, file: !674, line: 94, baseType: !14, size: 64, offset: 1408)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3174, file: !674, line: 95, baseType: !101, size: 64, offset: 1472)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3174, file: !674, line: 96, baseType: !28, size: 32, offset: 1536)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3174, file: !674, line: 98, baseType: !721, size: 160, offset: 1568)
!3206 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !669, line: 63, baseType: !695)
!3207 = !{!3208, !3209, !3210, !3211}
!3208 = !DILocalVariable(name: "fp", arg: 1, scope: !3169, file: !584, line: 28, type: !3172)
!3209 = !DILocalVariable(name: "offset", arg: 2, scope: !3169, file: !584, line: 28, type: !3206)
!3210 = !DILocalVariable(name: "whence", arg: 3, scope: !3169, file: !584, line: 28, type: !28)
!3211 = !DILocalVariable(name: "pos", scope: !3212, file: !584, line: 117, type: !3206)
!3212 = distinct !DILexicalBlock(scope: !3213, file: !584, line: 113, column: 5)
!3213 = distinct !DILexicalBlock(scope: !3169, file: !584, line: 52, column: 7)
!3214 = !DILocation(line: 0, scope: !3169)
!3215 = !DILocation(line: 52, column: 11, scope: !3213)
!3216 = !{!2901, !603, i64 16}
!3217 = !DILocation(line: 52, column: 31, scope: !3213)
!3218 = !{!2901, !603, i64 8}
!3219 = !DILocation(line: 52, column: 24, scope: !3213)
!3220 = !DILocation(line: 53, column: 7, scope: !3213)
!3221 = !DILocation(line: 53, column: 14, scope: !3213)
!3222 = !{!2901, !603, i64 40}
!3223 = !DILocation(line: 53, column: 35, scope: !3213)
!3224 = !{!2901, !603, i64 32}
!3225 = !DILocation(line: 53, column: 28, scope: !3213)
!3226 = !DILocation(line: 54, column: 7, scope: !3213)
!3227 = !DILocation(line: 54, column: 14, scope: !3213)
!3228 = !{!2901, !603, i64 72}
!3229 = !DILocation(line: 54, column: 28, scope: !3213)
!3230 = !DILocation(line: 52, column: 7, scope: !3169)
!3231 = !DILocation(line: 117, column: 26, scope: !3212)
!3232 = !DILocation(line: 117, column: 19, scope: !3212)
!3233 = !DILocation(line: 0, scope: !3212)
!3234 = !DILocation(line: 118, column: 15, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3212, file: !584, line: 118, column: 11)
!3236 = !DILocation(line: 118, column: 11, scope: !3212)
!3237 = !DILocation(line: 129, column: 11, scope: !3212)
!3238 = !DILocation(line: 129, column: 18, scope: !3212)
!3239 = !DILocation(line: 130, column: 11, scope: !3212)
!3240 = !DILocation(line: 130, column: 19, scope: !3212)
!3241 = !{!2901, !1834, i64 144}
!3242 = !DILocation(line: 161, column: 7, scope: !3212)
!3243 = !DILocation(line: 163, column: 10, scope: !3169)
!3244 = !DILocation(line: 163, column: 3, scope: !3169)
!3245 = !DILocation(line: 164, column: 1, scope: !3169)
!3246 = !DISubprogram(name: "fseeko", scope: !669, file: !669, line: 712, type: !3247, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!28, !3190, !697, !28}
