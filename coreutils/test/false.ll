; ModuleID = 'coreutils-8.32/src/false.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [61 x i8] c"Usage: %s [ignored command line arguments]\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Exit with a status code indicating failure.\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.14 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.25 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), align 8, !dbg !0
@.str.29 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !9
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !14
@.str.32 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.33 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.34 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@exit_failure = dso_local global i32 1, align 4, !dbg !17
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !24
@.str.41 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.42 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.43 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.45, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.46, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.47, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.48, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.49, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.50, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.51, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.52, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.53, i32 0, i32 0), i8* null], align 16, !dbg !32
@.str.44 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.45 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.46 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.47 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.48 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.49 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.50 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.51 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.52 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.53 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !78
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !84
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !96
@.str.11.54 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.55 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.56 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.57 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.58 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.59 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.60 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !103
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !110
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !98
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !112
@.str.63 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.64 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.65 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.66 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.67 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.68 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.69 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.70 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.71 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.72 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.73 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.74 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.75 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.76 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.77 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.78 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.81 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.82 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.83 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.84 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.85 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.86 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.87 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !118
@.str.1.98 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.108 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.111 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.112 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !567 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !572, metadata !DIExpression()), !dbg !573
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 5) #24, !dbg !574
  %3 = load i8*, i8** @program_name, align 8, !dbg !574, !tbaa !575
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %2, i8* %3, i8* %3) #24, !dbg !574
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 5) #24, !dbg !579
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %5) #24, !dbg !579
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #24, !dbg !580
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !580, !tbaa !575
  %9 = tail call i32 @fputs_unlocked(i8* %7, %struct._IO_FILE* %8), !dbg !580
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #24, !dbg !581
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !581, !tbaa !575
  %12 = tail call i32 @fputs_unlocked(i8* %10, %struct._IO_FILE* %11), !dbg !581
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.5, i64 0, i64 0), i32 5) #24, !dbg !582
  %14 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #24, !dbg !582
  tail call fastcc void @emit_ancillary_info(), !dbg !583
  tail call void @exit(i32 %0) #25, !dbg !584
  unreachable, !dbg !584
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !585 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !589 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @emit_ancillary_info() unnamed_addr #5 !dbg !645 {
  %1 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), metadata !650, metadata !DIExpression()), !dbg !664
  %2 = bitcast [7 x %struct.infomap]* %1 to i8*, !dbg !665
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #24, !dbg !665
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %1, metadata !651, metadata !DIExpression()), !dbg !666
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %2, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !666
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), metadata !660, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %1, metadata !661, metadata !DIExpression()), !dbg !664
  %3 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %1, i64 0, i64 0, !dbg !667
  call void @llvm.dbg.value(metadata %struct.infomap* %3, metadata !661, metadata !DIExpression()), !dbg !664
  br label %4, !dbg !668

4:                                                ; preds = %0, %9
  %5 = phi i8* [ %12, %9 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), %0 ]
  %6 = phi %struct.infomap* [ %10, %9 ], [ %3, %0 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %6, metadata !661, metadata !DIExpression()), !dbg !664
  %7 = tail call i32 @strcmp(i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %5) #26, !dbg !669
  %8 = icmp eq i32 %7, 0, !dbg !669
  br i1 %8, label %14, label %9, !dbg !668

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.infomap, %struct.infomap* %6, i64 1, !dbg !670
  call void @llvm.dbg.value(metadata %struct.infomap* %10, metadata !661, metadata !DIExpression()), !dbg !664
  %11 = getelementptr inbounds %struct.infomap, %struct.infomap* %10, i64 0, i32 0, !dbg !671
  %12 = load i8*, i8** %11, align 8, !dbg !671, !tbaa !672
  %13 = icmp eq i8* %12, null, !dbg !674
  br i1 %13, label %14, label %4, !dbg !675, !llvm.loop !676

14:                                               ; preds = %4, %9
  %15 = phi %struct.infomap* [ %6, %4 ], [ %10, %9 ]
  %16 = getelementptr inbounds %struct.infomap, %struct.infomap* %15, i64 0, i32 1, !dbg !678
  %17 = load i8*, i8** %16, align 8, !dbg !678, !tbaa !680
  %18 = icmp eq i8* %17, null, !dbg !681
  %19 = select i1 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %17, !dbg !682
  call void @llvm.dbg.value(metadata i8* %19, metadata !660, metadata !DIExpression()), !dbg !664
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 5) #24, !dbg !683
  %21 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0)) #24, !dbg !683
  %22 = tail call i8* @setlocale(i32 5, i8* null) #24, !dbg !684
  call void @llvm.dbg.value(metadata i8* %22, metadata !663, metadata !DIExpression()), !dbg !664
  %23 = icmp eq i8* %22, null, !dbg !685
  br i1 %23, label %31, label %24, !dbg !687

24:                                               ; preds = %14
  %25 = tail call i32 @strncmp(i8* nonnull %22, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #26, !dbg !688
  %26 = icmp eq i32 %25, 0, !dbg !688
  br i1 %26, label %31, label %27, !dbg !689

27:                                               ; preds = %24
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.25, i64 0, i64 0), i32 5) #24, !dbg !690
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !690, !tbaa !575
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !690
  br label %31, !dbg !692

31:                                               ; preds = %27, %24, %14
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0), i32 5) #24, !dbg !693
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #24, !dbg !693
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i32 5) #24, !dbg !694
  %35 = icmp eq i8* %19, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), !dbg !694
  %36 = select i1 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !694
  %37 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %34, i8* %19, i8* %36) #24, !dbg !694
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #24, !dbg !695
  ret void, !dbg !695
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !696 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #9 !dbg !700 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !705, metadata !DIExpression()), !dbg !707
  call void @llvm.dbg.value(metadata i8** %1, metadata !706, metadata !DIExpression()), !dbg !707
  %3 = icmp eq i32 %0, 2, !dbg !708
  br i1 %3, label %4, label %21, !dbg !710

4:                                                ; preds = %2
  %5 = load i8*, i8** %1, align 8, !dbg !711, !tbaa !575
  tail call void @set_program_name(i8* %5) #24, !dbg !713
  %6 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #24, !dbg !714
  %7 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #24, !dbg !715
  %8 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #24, !dbg !716
  %9 = tail call i32 @atexit(void ()* nonnull @close_stdout) #24, !dbg !717
  %10 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !718
  %11 = load i8*, i8** %10, align 8, !dbg !718, !tbaa !575
  %12 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %11, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #26, !dbg !718
  %13 = icmp eq i32 %12, 0, !dbg !718
  br i1 %13, label %14, label %15, !dbg !720

14:                                               ; preds = %4
  tail call void @usage(i32 1) #27, !dbg !721
  unreachable, !dbg !721

15:                                               ; preds = %4
  %16 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %11, i8* nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #26, !dbg !722
  %17 = icmp eq i32 %16, 0, !dbg !722
  br i1 %17, label %18, label %21, !dbg !724

18:                                               ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !725, !tbaa !575
  %20 = load i8*, i8** @Version, align 8, !dbg !726, !tbaa !575
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* null) #24, !dbg !727
  br label %21, !dbg !727

21:                                               ; preds = %15, %18, %2
  ret i32 1, !dbg !728
}

; Function Attrs: nounwind
declare !dbg !729 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !732 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !735 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #10 !dbg !742 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !744, metadata !DIExpression()), !dbg !745
  store i8* %0, i8** @file_name, align 8, !dbg !746, !tbaa !575
  ret void, !dbg !747
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #10 !dbg !748 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !752, metadata !DIExpression()), !dbg !753
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !754, !tbaa !755
  ret void, !dbg !757
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #9 !dbg !758 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !763, !tbaa !575
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #24, !dbg !764
  %3 = icmp eq i32 %2, 0, !dbg !765
  br i1 %3, label %22, label %4, !dbg !766

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !767, !tbaa !755, !range !768
  %6 = icmp eq i8 %5, 0, !dbg !767
  br i1 %6, label %11, label %7, !dbg !769

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #28, !dbg !770
  %9 = load i32, i32* %8, align 4, !dbg !770, !tbaa !771
  %10 = icmp eq i32 %9, 32, !dbg !773
  br i1 %10, label %22, label %11, !dbg !774

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i32 5) #24, !dbg !775
  call void @llvm.dbg.value(metadata i8* %12, metadata !760, metadata !DIExpression()), !dbg !776
  %13 = load i8*, i8** @file_name, align 8, !dbg !777, !tbaa !575
  %14 = icmp eq i8* %13, null, !dbg !777
  %15 = tail call i32* @__errno_location() #28, !dbg !779
  %16 = load i32, i32* %15, align 4, !dbg !779, !tbaa !771
  br i1 %14, label %19, label %17, !dbg !780

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #24, !dbg !781
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.33, i64 0, i64 0), i8* %18, i8* %12) #24, !dbg !782
  br label %20, !dbg !782

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.34, i64 0, i64 0), i8* %12) #24, !dbg !783
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !784, !tbaa !771
  tail call void @_exit(i32 %21) #25, !dbg !785
  unreachable, !dbg !785

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !786, !tbaa !575
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #24, !dbg !788
  %25 = icmp eq i32 %24, 0, !dbg !789
  br i1 %25, label %28, label %26, !dbg !790

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !791, !tbaa !771
  tail call void @_exit(i32 %27) #25, !dbg !792
  unreachable, !dbg !792

28:                                               ; preds = %22
  ret void, !dbg !793
}

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

declare !dbg !794 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #9 !dbg !798 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !800, metadata !DIExpression()), !dbg !803
  %2 = icmp eq i8* %0, null, !dbg !804
  br i1 %2, label %3, label %6, !dbg !806

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !807, !tbaa !575
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.41, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #29, !dbg !809
  tail call void @abort() #25, !dbg !810
  unreachable, !dbg !810

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #26, !dbg !811
  call void @llvm.dbg.value(metadata i8* %7, metadata !801, metadata !DIExpression()), !dbg !803
  %8 = icmp eq i8* %7, null, !dbg !812
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !813
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !813
  call void @llvm.dbg.value(metadata i8* %10, metadata !802, metadata !DIExpression()), !dbg !803
  %11 = ptrtoint i8* %10 to i64, !dbg !814
  %12 = ptrtoint i8* %0 to i64, !dbg !814
  %13 = sub i64 %11, %12, !dbg !814
  %14 = icmp sgt i64 %13, 6, !dbg !816
  br i1 %14, label %15, label %24, !dbg !817

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !818
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.42, i64 0, i64 0), i64 7) #26, !dbg !819
  %18 = icmp eq i32 %17, 0, !dbg !820
  br i1 %18, label %19, label %24, !dbg !821

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !800, metadata !DIExpression()), !dbg !803
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.43, i64 0, i64 0), i64 3) #26, !dbg !822
  %21 = icmp eq i32 %20, 0, !dbg !825
  br i1 %21, label %22, label %24, !dbg !826

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !827
  call void @llvm.dbg.value(metadata i8* %23, metadata !800, metadata !DIExpression()), !dbg !803
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !829, !tbaa !575
  br label %24, !dbg !830

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !800, metadata !DIExpression()), !dbg !803
  store i8* %25, i8** @program_name, align 8, !dbg !831, !tbaa !575
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !832, !tbaa !575
  ret void, !dbg !833
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #13

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #9 !dbg !834 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !839, metadata !DIExpression()), !dbg !842
  %2 = tail call i32* @__errno_location() #28, !dbg !843
  %3 = load i32, i32* %2, align 4, !dbg !843, !tbaa !771
  call void @llvm.dbg.value(metadata i32 %3, metadata !840, metadata !DIExpression()), !dbg !842
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !844
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !844
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !844
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #24, !dbg !845
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !845
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !841, metadata !DIExpression()), !dbg !842
  store i32 %3, i32* %2, align 4, !dbg !846, !tbaa !771
  ret %struct.quoting_options* %8, !dbg !847
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #14 !dbg !848 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !854, metadata !DIExpression()), !dbg !855
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !856
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !856
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !857
  %5 = load i32, i32* %4, align 8, !dbg !857, !tbaa !858
  ret i32 %5, !dbg !860
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !861 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !865, metadata !DIExpression()), !dbg !867
  call void @llvm.dbg.value(metadata i32 %1, metadata !866, metadata !DIExpression()), !dbg !867
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !868
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !868
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !869
  store i32 %1, i32* %5, align 8, !dbg !870, !tbaa !858
  ret void, !dbg !871
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #15 !dbg !872 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !876, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata i8 %1, metadata !877, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata i32 %2, metadata !878, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata i8 %1, metadata !879, metadata !DIExpression()), !dbg !885
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !886
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !886
  %6 = lshr i8 %1, 5, !dbg !887
  %7 = zext i8 %6 to i64, !dbg !887
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !888
  call void @llvm.dbg.value(metadata i32* %8, metadata !881, metadata !DIExpression()), !dbg !885
  %9 = and i8 %1, 31, !dbg !889
  %10 = zext i8 %9 to i32, !dbg !889
  call void @llvm.dbg.value(metadata i32 %10, metadata !883, metadata !DIExpression()), !dbg !885
  %11 = load i32, i32* %8, align 4, !dbg !890, !tbaa !771
  %12 = lshr i32 %11, %10, !dbg !891
  %13 = and i32 %12, 1, !dbg !892
  call void @llvm.dbg.value(metadata i32 %13, metadata !884, metadata !DIExpression()), !dbg !885
  %14 = and i32 %2, 1, !dbg !893
  %15 = xor i32 %13, %14, !dbg !894
  %16 = shl i32 %15, %10, !dbg !895
  %17 = xor i32 %16, %11, !dbg !896
  store i32 %17, i32* %8, align 4, !dbg !896, !tbaa !771
  ret i32 %13, !dbg !897
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #15 !dbg !898 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !902, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata i32 %1, metadata !903, metadata !DIExpression()), !dbg !905
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !906
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !908
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !902, metadata !DIExpression()), !dbg !905
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !909
  %6 = load i32, i32* %5, align 4, !dbg !909, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %6, metadata !904, metadata !DIExpression()), !dbg !905
  store i32 %1, i32* %5, align 4, !dbg !911, !tbaa !910
  ret i32 %6, !dbg !912
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #9 !dbg !913 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !917, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata i8* %1, metadata !918, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata i8* %2, metadata !919, metadata !DIExpression()), !dbg !920
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !921
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !923
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !917, metadata !DIExpression()), !dbg !920
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !924
  store i32 10, i32* %6, align 8, !dbg !925, !tbaa !858
  %7 = icmp ne i8* %1, null, !dbg !926
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !928
  br i1 %9, label %11, label %10, !dbg !928

10:                                               ; preds = %3
  tail call void @abort() #25, !dbg !929
  unreachable, !dbg !929

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !930
  store i8* %1, i8** %12, align 8, !dbg !931, !tbaa !932
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !933
  store i8* %2, i8** %13, align 8, !dbg !934, !tbaa !935
  ret void, !dbg !936
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #9 !dbg !937 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !941, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata i64 %1, metadata !942, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata i8* %2, metadata !943, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata i64 %3, metadata !944, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !945, metadata !DIExpression()), !dbg !949
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !950
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !950
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !946, metadata !DIExpression()), !dbg !949
  %8 = tail call i32* @__errno_location() #28, !dbg !951
  %9 = load i32, i32* %8, align 4, !dbg !951, !tbaa !771
  call void @llvm.dbg.value(metadata i32 %9, metadata !947, metadata !DIExpression()), !dbg !949
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !952
  %11 = load i32, i32* %10, align 8, !dbg !952, !tbaa !858
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !953
  %13 = load i32, i32* %12, align 4, !dbg !953, !tbaa !910
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !954
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !955
  %16 = load i8*, i8** %15, align 8, !dbg !955, !tbaa !932
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !956
  %18 = load i8*, i8** %17, align 8, !dbg !956, !tbaa !935
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !957
  call void @llvm.dbg.value(metadata i64 %19, metadata !948, metadata !DIExpression()), !dbg !949
  store i32 %9, i32* %8, align 4, !dbg !958, !tbaa !771
  ret i64 %19, !dbg !959
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #9 !dbg !960 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !966, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %1, metadata !967, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8* %2, metadata !968, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %3, metadata !969, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i32 %4, metadata !970, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i32 %5, metadata !971, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i32* %6, metadata !972, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8* %7, metadata !973, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8* %8, metadata !974, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 0, metadata !976, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 0, metadata !977, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8* null, metadata !978, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 0, metadata !979, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 0, metadata !980, metadata !DIExpression()), !dbg !1036
  %13 = tail call i64 @__ctype_get_mb_cur_max() #24, !dbg !1037
  %14 = icmp eq i64 %13, 1, !dbg !1038
  call void @llvm.dbg.value(metadata i1 %14, metadata !981, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1036
  %15 = lshr i32 %5, 1, !dbg !1039
  %16 = trunc i32 %15 to i8, !dbg !1039
  %17 = and i8 %16, 1, !dbg !1039
  call void @llvm.dbg.value(metadata i8 %17, metadata !982, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 0, metadata !983, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 0, metadata !984, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 1, metadata !985, metadata !DIExpression()), !dbg !1036
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1040

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1041
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1042
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1043
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1044
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1036
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1045
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1046
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1047
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !967, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 %38, metadata !985, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 %37, metadata !984, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 %36, metadata !983, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 %35, metadata !982, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %34, metadata !969, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 %33, metadata !980, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %32, metadata !979, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8* %31, metadata !978, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %30, metadata !977, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 0, metadata !976, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8* %29, metadata !974, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8* %28, metadata !973, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i32 %27, metadata !970, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.label(metadata !1030), !dbg !1048
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
  ], !dbg !1049

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !982, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i32 5, metadata !970, metadata !DIExpression()), !dbg !1036
  br label %92, !dbg !1050

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !982, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i32 5, metadata !970, metadata !DIExpression()), !dbg !1036
  %42 = and i8 %35, 1, !dbg !1052
  %43 = icmp eq i8 %42, 0, !dbg !1052
  br i1 %43, label %44, label %92, !dbg !1050

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1054
  br i1 %45, label %92, label %46, !dbg !1057

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1054, !tbaa !1058
  br label %92, !dbg !1054

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.54, i64 0, i64 0), i32 %27), !dbg !1059
  call void @llvm.dbg.value(metadata i8* %48, metadata !973, metadata !DIExpression()), !dbg !1036
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), i32 %27), !dbg !1063
  call void @llvm.dbg.value(metadata i8* %49, metadata !974, metadata !DIExpression()), !dbg !1036
  br label %50, !dbg !1064

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !974, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8* %51, metadata !973, metadata !DIExpression()), !dbg !1036
  %53 = and i8 %35, 1, !dbg !1065
  %54 = icmp eq i8 %53, 0, !dbg !1065
  br i1 %54, label %55, label %70, !dbg !1067

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !978, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 0, metadata !976, metadata !DIExpression()), !dbg !1036
  %56 = load i8, i8* %51, align 1, !dbg !1068, !tbaa !1058
  %57 = icmp eq i8 %56, 0, !dbg !1071
  br i1 %57, label %70, label %58, !dbg !1071

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !978, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %61, metadata !976, metadata !DIExpression()), !dbg !1036
  %62 = icmp ult i64 %61, %39, !dbg !1072
  br i1 %62, label %63, label %65, !dbg !1075

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1072
  store i8 %59, i8* %64, align 1, !dbg !1072, !tbaa !1058
  br label %65, !dbg !1072

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1075
  call void @llvm.dbg.value(metadata i64 %66, metadata !976, metadata !DIExpression()), !dbg !1036
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1076
  call void @llvm.dbg.value(metadata i8* %67, metadata !978, metadata !DIExpression()), !dbg !1036
  %68 = load i8, i8* %67, align 1, !dbg !1068, !tbaa !1058
  %69 = icmp eq i8 %68, 0, !dbg !1071
  br i1 %69, label %70, label %58, !dbg !1071, !llvm.loop !1077

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1079
  call void @llvm.dbg.value(metadata i64 %71, metadata !976, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 1, metadata !980, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8* %52, metadata !978, metadata !DIExpression()), !dbg !1036
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #26, !dbg !1080
  call void @llvm.dbg.value(metadata i64 %72, metadata !979, metadata !DIExpression()), !dbg !1036
  br label %92, !dbg !1081

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !980, metadata !DIExpression()), !dbg !1036
  br label %74, !dbg !1082

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1036
  call void @llvm.dbg.value(metadata i8 %75, metadata !980, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 1, metadata !982, metadata !DIExpression()), !dbg !1036
  br label %76, !dbg !1083

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1044
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1036
  call void @llvm.dbg.value(metadata i8 %78, metadata !982, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 %77, metadata !980, metadata !DIExpression()), !dbg !1036
  %79 = and i8 %78, 1, !dbg !1084
  %80 = icmp eq i8 %79, 0, !dbg !1084
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1086
  br label %82, !dbg !1086

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1036
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1039
  call void @llvm.dbg.value(metadata i8 %84, metadata !982, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 %83, metadata !980, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i32 2, metadata !970, metadata !DIExpression()), !dbg !1036
  %85 = and i8 %84, 1, !dbg !1087
  %86 = icmp eq i8 %85, 0, !dbg !1087
  br i1 %86, label %87, label %92, !dbg !1089

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1090
  br i1 %88, label %92, label %89, !dbg !1093

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1090, !tbaa !1058
  br label %92, !dbg !1090

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !982, metadata !DIExpression()), !dbg !1036
  br label %92, !dbg !1094

91:                                               ; preds = %26
  call void @abort() #25, !dbg !1095
  unreachable, !dbg !1095

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1079
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), %40 ], !dbg !1036
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1036
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1036
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1036
  call void @llvm.dbg.value(metadata i8 %100, metadata !982, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 %99, metadata !980, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %98, metadata !979, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8* %97, metadata !978, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %96, metadata !976, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8* %95, metadata !974, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8* %94, metadata !973, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i32 %93, metadata !970, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 0, metadata !975, metadata !DIExpression()), !dbg !1036
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
  br label %121, !dbg !1096

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1097
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1079
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1041
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1045
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1046
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1047
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !967, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 %128, metadata !985, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 %127, metadata !984, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 %126, metadata !983, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %125, metadata !969, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %124, metadata !977, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %123, metadata !976, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %122, metadata !975, metadata !DIExpression()), !dbg !1036
  %130 = icmp eq i64 %125, -1, !dbg !1098
  br i1 %130, label %131, label %135, !dbg !1099

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1100
  %133 = load i8, i8* %132, align 1, !dbg !1100, !tbaa !1058
  %134 = icmp eq i8 %133, 0, !dbg !1101
  br i1 %134, label %587, label %137, !dbg !1102

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1103
  br i1 %136, label %587, label %137, !dbg !1102

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !991, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 0, metadata !992, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 0, metadata !993, metadata !DIExpression()), !dbg !1104
  br i1 %106, label %138, label %153, !dbg !1105

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1107
  %140 = and i1 %107, %130, !dbg !1108
  br i1 %140, label %141, label %143, !dbg !1108

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #26, !dbg !1109
  call void @llvm.dbg.value(metadata i64 %142, metadata !969, metadata !DIExpression()), !dbg !1036
  br label %143, !dbg !1110

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1110
  call void @llvm.dbg.value(metadata i64 %144, metadata !969, metadata !DIExpression()), !dbg !1036
  %145 = icmp ugt i64 %139, %144, !dbg !1111
  br i1 %145, label %153, label %146, !dbg !1112

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1113
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1114
  %149 = icmp ne i32 %148, 0, !dbg !1115
  %150 = or i1 %149, %109, !dbg !1116
  %151 = xor i1 %149, true, !dbg !1116
  %152 = zext i1 %151 to i8, !dbg !1116
  br i1 %150, label %153, label %646, !dbg !1116

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1104
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1104
  call void @llvm.dbg.value(metadata i8 %156, metadata !991, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %154, metadata !969, metadata !DIExpression()), !dbg !1036
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1117
  %158 = load i8, i8* %157, align 1, !dbg !1117, !tbaa !1058
  call void @llvm.dbg.value(metadata i8 %158, metadata !986, metadata !DIExpression()), !dbg !1104
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
  ], !dbg !1118

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1119

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1120

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !992, metadata !DIExpression()), !dbg !1104
  %162 = and i8 %126, 1, !dbg !1124
  %163 = icmp eq i8 %162, 0, !dbg !1124
  %164 = and i1 %110, %163, !dbg !1124
  br i1 %164, label %165, label %181, !dbg !1124

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1126
  br i1 %166, label %167, label %169, !dbg !1130

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1126
  store i8 39, i8* %168, align 1, !dbg !1126, !tbaa !1058
  br label %169, !dbg !1126

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1130
  call void @llvm.dbg.value(metadata i64 %170, metadata !976, metadata !DIExpression()), !dbg !1036
  %171 = icmp ult i64 %170, %129, !dbg !1131
  br i1 %171, label %172, label %174, !dbg !1134

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1131
  store i8 36, i8* %173, align 1, !dbg !1131, !tbaa !1058
  br label %174, !dbg !1131

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1134
  call void @llvm.dbg.value(metadata i64 %175, metadata !976, metadata !DIExpression()), !dbg !1036
  %176 = icmp ult i64 %175, %129, !dbg !1135
  br i1 %176, label %177, label %179, !dbg !1138

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1135
  store i8 39, i8* %178, align 1, !dbg !1135, !tbaa !1058
  br label %179, !dbg !1135

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1138
  call void @llvm.dbg.value(metadata i64 %180, metadata !976, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 1, metadata !983, metadata !DIExpression()), !dbg !1036
  br label %181, !dbg !1139

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1036
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1036
  call void @llvm.dbg.value(metadata i8 %183, metadata !983, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %182, metadata !976, metadata !DIExpression()), !dbg !1036
  %184 = icmp ult i64 %182, %129, !dbg !1140
  br i1 %184, label %185, label %187, !dbg !1143

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1140
  store i8 92, i8* %186, align 1, !dbg !1140, !tbaa !1058
  br label %187, !dbg !1140

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1143
  call void @llvm.dbg.value(metadata i64 %188, metadata !976, metadata !DIExpression()), !dbg !1036
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1144
  br i1 %191, label %192, label %473, !dbg !1144

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1146
  %194 = load i8, i8* %193, align 1, !dbg !1146, !tbaa !1058
  %195 = add i8 %194, -48, !dbg !1147
  %196 = icmp ult i8 %195, 10, !dbg !1147
  br i1 %196, label %197, label %473, !dbg !1147

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1148
  br i1 %198, label %199, label %201, !dbg !1152

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1148
  store i8 48, i8* %200, align 1, !dbg !1148, !tbaa !1058
  br label %201, !dbg !1148

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1152
  call void @llvm.dbg.value(metadata i64 %202, metadata !976, metadata !DIExpression()), !dbg !1036
  %203 = icmp ult i64 %202, %129, !dbg !1153
  br i1 %203, label %204, label %206, !dbg !1156

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1153
  store i8 48, i8* %205, align 1, !dbg !1153, !tbaa !1058
  br label %206, !dbg !1153

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1156
  call void @llvm.dbg.value(metadata i64 %207, metadata !976, metadata !DIExpression()), !dbg !1036
  br label %473, !dbg !1157

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1158

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1159

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1160

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1162
  br i1 %214, label %215, label %473, !dbg !1162

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1164
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1165
  %218 = load i8, i8* %217, align 1, !dbg !1165, !tbaa !1058
  %219 = icmp eq i8 %218, 63, !dbg !1166
  br i1 %219, label %220, label %473, !dbg !1167

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1168
  %222 = load i8, i8* %221, align 1, !dbg !1168, !tbaa !1058
  %223 = sext i8 %222 to i32, !dbg !1168
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
  ], !dbg !1169

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1170

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !986, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 undef, metadata !975, metadata !DIExpression()), !dbg !1036
  %226 = icmp ult i64 %123, %129, !dbg !1172
  br i1 %226, label %227, label %229, !dbg !1175

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1172
  store i8 63, i8* %228, align 1, !dbg !1172, !tbaa !1058
  br label %229, !dbg !1172

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !1175
  call void @llvm.dbg.value(metadata i64 %230, metadata !976, metadata !DIExpression()), !dbg !1036
  %231 = icmp ult i64 %230, %129, !dbg !1176
  br i1 %231, label %232, label %234, !dbg !1179

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1176
  store i8 34, i8* %233, align 1, !dbg !1176, !tbaa !1058
  br label %234, !dbg !1176

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !1179
  call void @llvm.dbg.value(metadata i64 %235, metadata !976, metadata !DIExpression()), !dbg !1036
  %236 = icmp ult i64 %235, %129, !dbg !1180
  br i1 %236, label %237, label %239, !dbg !1183

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1180
  store i8 34, i8* %238, align 1, !dbg !1180, !tbaa !1058
  br label %239, !dbg !1180

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !1183
  call void @llvm.dbg.value(metadata i64 %240, metadata !976, metadata !DIExpression()), !dbg !1036
  %241 = icmp ult i64 %240, %129, !dbg !1184
  br i1 %241, label %242, label %244, !dbg !1187

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1184
  store i8 63, i8* %243, align 1, !dbg !1184, !tbaa !1058
  br label %244, !dbg !1184

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !1187
  call void @llvm.dbg.value(metadata i64 %245, metadata !976, metadata !DIExpression()), !dbg !1036
  br label %473, !dbg !1188

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !990, metadata !DIExpression()), !dbg !1104
  br label %256, !dbg !1189

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !990, metadata !DIExpression()), !dbg !1104
  br label %256, !dbg !1190

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !990, metadata !DIExpression()), !dbg !1104
  br label %254, !dbg !1191

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !990, metadata !DIExpression()), !dbg !1104
  br label %254, !dbg !1192

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !990, metadata !DIExpression()), !dbg !1104
  br label %256, !dbg !1193

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !990, metadata !DIExpression()), !dbg !1104
  br i1 %110, label %252, label %253, !dbg !1194

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !1195

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !1198

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !1200
  call void @llvm.dbg.value(metadata i8 %255, metadata !990, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.label(metadata !1031), !dbg !1201
  br i1 %111, label %256, label %631, !dbg !1202

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !1200
  call void @llvm.dbg.value(metadata i8 %257, metadata !990, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.label(metadata !1032), !dbg !1204
  br i1 %102, label %495, label %473, !dbg !1205

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1206

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1207, !tbaa !1058
  %261 = icmp eq i8 %260, 0, !dbg !1209
  br i1 %261, label %262, label %473, !dbg !1210

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !1211
  br i1 %263, label %264, label %473, !dbg !1213

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !993, metadata !DIExpression()), !dbg !1104
  br label %265, !dbg !1214

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1104
  call void @llvm.dbg.value(metadata i8 %266, metadata !993, metadata !DIExpression()), !dbg !1104
  br i1 %111, label %473, label %631, !dbg !1215

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !984, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 1, metadata !993, metadata !DIExpression()), !dbg !1104
  br i1 %110, label %268, label %473, !dbg !1217

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !1218

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !1221
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !1223
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !1223
  %274 = select i1 %272, i64 %129, i64 0, !dbg !1223
  call void @llvm.dbg.value(metadata i64 %274, metadata !967, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %273, metadata !977, metadata !DIExpression()), !dbg !1036
  %275 = icmp ult i64 %123, %274, !dbg !1224
  br i1 %275, label %276, label %278, !dbg !1227

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1224
  store i8 39, i8* %277, align 1, !dbg !1224, !tbaa !1058
  br label %278, !dbg !1224

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !1227
  call void @llvm.dbg.value(metadata i64 %279, metadata !976, metadata !DIExpression()), !dbg !1036
  %280 = icmp ult i64 %279, %274, !dbg !1228
  br i1 %280, label %281, label %283, !dbg !1231

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1228
  store i8 92, i8* %282, align 1, !dbg !1228, !tbaa !1058
  br label %283, !dbg !1228

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !1231
  call void @llvm.dbg.value(metadata i64 %284, metadata !976, metadata !DIExpression()), !dbg !1036
  %285 = icmp ult i64 %284, %274, !dbg !1232
  br i1 %285, label %286, label %288, !dbg !1235

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1232
  store i8 39, i8* %287, align 1, !dbg !1232, !tbaa !1058
  br label %288, !dbg !1232

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !1235
  call void @llvm.dbg.value(metadata i64 %289, metadata !976, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 0, metadata !983, metadata !DIExpression()), !dbg !1036
  br label %473, !dbg !1236

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !1237

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !994, metadata !DIExpression()), !dbg !1238
  %292 = tail call i16** @__ctype_b_loc() #28, !dbg !1239
  %293 = load i16*, i16** %292, align 8, !dbg !1239, !tbaa !575
  %294 = zext i8 %158 to i64, !dbg !1239
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1239
  %296 = load i16, i16* %295, align 2, !dbg !1239, !tbaa !1241
  %297 = lshr i16 %296, 14, !dbg !1243
  %298 = trunc i16 %297 to i8, !dbg !1243
  %299 = and i8 %298, 1, !dbg !1243
  call void @llvm.dbg.value(metadata i8 %354, metadata !997, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %355, metadata !994, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %306, metadata !969, metadata !DIExpression()), !dbg !1036
  %300 = icmp eq i8 %299, 0, !dbg !1244
  call void @llvm.dbg.value(metadata i1 %357, metadata !993, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1104
  br label %359, !dbg !1245

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #24, !dbg !1246
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !998, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i8* %23, metadata !1248, metadata !DIExpression()) #24, !dbg !1256
  call void @llvm.dbg.value(metadata i32 0, metadata !1254, metadata !DIExpression()) #24, !dbg !1256
  call void @llvm.dbg.value(metadata i64 8, metadata !1255, metadata !DIExpression()) #24, !dbg !1256
  store i64 0, i64* %10, align 8, !dbg !1258
  call void @llvm.dbg.value(metadata i64 0, metadata !994, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i8 1, metadata !997, metadata !DIExpression()), !dbg !1238
  %302 = icmp eq i64 %154, -1, !dbg !1259
  br i1 %302, label %303, label %305, !dbg !1261

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #26, !dbg !1262
  call void @llvm.dbg.value(metadata i64 %304, metadata !969, metadata !DIExpression()), !dbg !1036
  br label %305, !dbg !1263

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1104
  call void @llvm.dbg.value(metadata i64 %306, metadata !969, metadata !DIExpression()), !dbg !1036
  br label %307, !dbg !1264

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !1265
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !1266
  call void @llvm.dbg.value(metadata i8 %309, metadata !997, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %308, metadata !994, metadata !DIExpression()), !dbg !1238
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1267
  %310 = add i64 %308, %122, !dbg !1268
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !1269
  %312 = sub i64 %306, %310, !dbg !1270
  call void @llvm.dbg.value(metadata i32* %12, metadata !1016, metadata !DIExpression(DW_OP_deref)), !dbg !1271
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #24, !dbg !1272
  call void @llvm.dbg.value(metadata i64 %313, metadata !1019, metadata !DIExpression()), !dbg !1271
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !1273

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !994, metadata !DIExpression()), !dbg !1238
  %315 = icmp ugt i64 %306, %310, !dbg !1274
  br i1 %315, label %316, label %341, !dbg !1276

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !1277
  br label %318, !dbg !1277

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !994, metadata !DIExpression()), !dbg !1238
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !1278
  %322 = load i8, i8* %321, align 1, !dbg !1278, !tbaa !1058
  %323 = icmp eq i8 %322, 0, !dbg !1276
  br i1 %323, label %341, label %324, !dbg !1277

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !1279
  call void @llvm.dbg.value(metadata i64 %325, metadata !994, metadata !DIExpression()), !dbg !1238
  %326 = add i64 %325, %122, !dbg !1280
  %327 = icmp ult i64 %326, %306, !dbg !1274
  br i1 %327, label %318, label %341, !dbg !1276, !llvm.loop !1281

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !1282
  call void @llvm.dbg.value(metadata i64 1, metadata !1020, metadata !DIExpression()), !dbg !1283
  br i1 %330, label %331, label %344, !dbg !1282

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1020, metadata !DIExpression()), !dbg !1283
  %333 = add i64 %332, %310, !dbg !1284
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !1287
  %335 = load i8, i8* %334, align 1, !dbg !1287, !tbaa !1058
  %336 = sext i8 %335 to i32, !dbg !1287
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !1288

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !1289
  call void @llvm.dbg.value(metadata i64 %338, metadata !1020, metadata !DIExpression()), !dbg !1283
  %339 = icmp eq i64 %338, %313, !dbg !1290
  br i1 %339, label %344, label %331, !dbg !1291, !llvm.loop !1292

340:                                              ; preds = %307
  br label %341, !dbg !1294

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !997, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 undef, metadata !994, metadata !DIExpression()), !dbg !1238
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1294
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !1295, !tbaa !771
  call void @llvm.dbg.value(metadata i32 %345, metadata !1016, metadata !DIExpression()), !dbg !1271
  %346 = call i32 @iswprint(i32 %345) #24, !dbg !1297
  %347 = icmp eq i32 %346, 0, !dbg !1297
  %348 = select i1 %347, i8 0, i8 %309, !dbg !1298
  call void @llvm.dbg.value(metadata i8 %348, metadata !997, metadata !DIExpression()), !dbg !1238
  %349 = add i64 %313, %308, !dbg !1299
  call void @llvm.dbg.value(metadata i64 %349, metadata !994, metadata !DIExpression()), !dbg !1238
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1294
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #26, !dbg !1300
  %351 = icmp eq i32 %350, 0, !dbg !1301
  br i1 %351, label %307, label %353, !dbg !1302, !llvm.loop !1303

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !997, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 undef, metadata !994, metadata !DIExpression()), !dbg !1238
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1294
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #24, !dbg !1305
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #24, !dbg !1305
  call void @llvm.dbg.value(metadata i8 %354, metadata !997, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %355, metadata !994, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %306, metadata !969, metadata !DIExpression()), !dbg !1036
  %356 = and i8 %354, 1, !dbg !1244
  %357 = icmp eq i8 %356, 0, !dbg !1244
  call void @llvm.dbg.value(metadata i1 %357, metadata !993, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1104
  %358 = icmp ugt i64 %355, 1, !dbg !1306
  br i1 %358, label %367, label %359, !dbg !1245

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !1307
  br i1 %364, label %367, label %365, !dbg !1307

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1104
  call void @llvm.dbg.value(metadata i8 %472, metadata !993, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %441, metadata !992, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %440, metadata !991, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %439, metadata !986, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %438, metadata !983, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %371, metadata !969, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %437, metadata !976, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %375, metadata !975, metadata !DIExpression()), !dbg !1036
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !1308
  call void @llvm.dbg.value(metadata i64 %372, metadata !1027, metadata !DIExpression()), !dbg !1309
  %373 = and i1 %102, %368
  br label %374, !dbg !1310

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1097
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1036
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1045
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1104
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1104
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !1311
  call void @llvm.dbg.value(metadata i8 %380, metadata !992, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %379, metadata !991, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %378, metadata !986, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %377, metadata !983, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %376, metadata !976, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %375, metadata !975, metadata !DIExpression()), !dbg !1036
  br i1 %373, label %381, label %427, !dbg !1312

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !1317

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !992, metadata !DIExpression()), !dbg !1104
  %383 = and i8 %377, 1, !dbg !1320
  %384 = icmp eq i8 %383, 0, !dbg !1320
  %385 = and i1 %110, %384, !dbg !1320
  br i1 %385, label %386, label %402, !dbg !1320

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !1322
  br i1 %387, label %388, label %390, !dbg !1326

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1322
  store i8 39, i8* %389, align 1, !dbg !1322, !tbaa !1058
  br label %390, !dbg !1322

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !1326
  call void @llvm.dbg.value(metadata i64 %391, metadata !976, metadata !DIExpression()), !dbg !1036
  %392 = icmp ult i64 %391, %129, !dbg !1327
  br i1 %392, label %393, label %395, !dbg !1330

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !1327
  store i8 36, i8* %394, align 1, !dbg !1327, !tbaa !1058
  br label %395, !dbg !1327

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !1330
  call void @llvm.dbg.value(metadata i64 %396, metadata !976, metadata !DIExpression()), !dbg !1036
  %397 = icmp ult i64 %396, %129, !dbg !1331
  br i1 %397, label %398, label %400, !dbg !1334

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1331
  store i8 39, i8* %399, align 1, !dbg !1331, !tbaa !1058
  br label %400, !dbg !1331

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !1334
  call void @llvm.dbg.value(metadata i64 %401, metadata !976, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 1, metadata !983, metadata !DIExpression()), !dbg !1036
  br label %402, !dbg !1335

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1036
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1036
  call void @llvm.dbg.value(metadata i8 %404, metadata !983, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %403, metadata !976, metadata !DIExpression()), !dbg !1036
  %405 = icmp ult i64 %403, %129, !dbg !1336
  br i1 %405, label %406, label %408, !dbg !1339

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1336
  store i8 92, i8* %407, align 1, !dbg !1336, !tbaa !1058
  br label %408, !dbg !1336

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !1339
  call void @llvm.dbg.value(metadata i64 %409, metadata !976, metadata !DIExpression()), !dbg !1036
  %410 = icmp ult i64 %409, %129, !dbg !1340
  br i1 %410, label %411, label %415, !dbg !1343

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !1340
  %413 = or i8 %412, 48, !dbg !1340
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !1340
  store i8 %413, i8* %414, align 1, !dbg !1340, !tbaa !1058
  br label %415, !dbg !1340

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !1343
  call void @llvm.dbg.value(metadata i64 %416, metadata !976, metadata !DIExpression()), !dbg !1036
  %417 = icmp ult i64 %416, %129, !dbg !1344
  br i1 %417, label %418, label %423, !dbg !1347

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !1344
  %420 = and i8 %419, 7, !dbg !1344
  %421 = or i8 %420, 48, !dbg !1344
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !1344
  store i8 %421, i8* %422, align 1, !dbg !1344, !tbaa !1058
  br label %423, !dbg !1344

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !1347
  call void @llvm.dbg.value(metadata i64 %424, metadata !976, metadata !DIExpression()), !dbg !1036
  %425 = and i8 %378, 7, !dbg !1348
  %426 = or i8 %425, 48, !dbg !1349
  call void @llvm.dbg.value(metadata i8 %426, metadata !986, metadata !DIExpression()), !dbg !1104
  br label %436, !dbg !1350

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !1351
  %429 = icmp eq i8 %428, 0, !dbg !1351
  br i1 %429, label %436, label %430, !dbg !1353

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !1354
  br i1 %431, label %432, label %434, !dbg !1358

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1354
  store i8 92, i8* %433, align 1, !dbg !1354, !tbaa !1058
  br label %434, !dbg !1354

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !1358
  call void @llvm.dbg.value(metadata i64 %435, metadata !976, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 0, metadata !991, metadata !DIExpression()), !dbg !1104
  br label %436, !dbg !1359

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1036
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1045
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1104
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1104
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1104
  call void @llvm.dbg.value(metadata i8 %441, metadata !992, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %440, metadata !991, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %439, metadata !986, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %438, metadata !983, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %437, metadata !976, metadata !DIExpression()), !dbg !1036
  %442 = add i64 %375, 1, !dbg !1360
  %443 = icmp ugt i64 %372, %442, !dbg !1362
  br i1 %443, label %444, label %471, !dbg !1363

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !1364
  %446 = icmp ne i8 %445, 0, !dbg !1364
  %447 = and i8 %441, 1, !dbg !1364
  %448 = icmp eq i8 %447, 0, !dbg !1364
  %449 = and i1 %446, %448, !dbg !1364
  br i1 %449, label %450, label %461, !dbg !1364

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !1367
  br i1 %451, label %452, label %454, !dbg !1371

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !1367
  store i8 39, i8* %453, align 1, !dbg !1367, !tbaa !1058
  br label %454, !dbg !1367

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !1371
  call void @llvm.dbg.value(metadata i64 %455, metadata !976, metadata !DIExpression()), !dbg !1036
  %456 = icmp ult i64 %455, %129, !dbg !1372
  br i1 %456, label %457, label %459, !dbg !1375

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !1372
  store i8 39, i8* %458, align 1, !dbg !1372, !tbaa !1058
  br label %459, !dbg !1372

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !1375
  call void @llvm.dbg.value(metadata i64 %460, metadata !976, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 0, metadata !983, metadata !DIExpression()), !dbg !1036
  br label %461, !dbg !1376

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !1377
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1036
  call void @llvm.dbg.value(metadata i8 %463, metadata !983, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %462, metadata !976, metadata !DIExpression()), !dbg !1036
  %464 = icmp ult i64 %462, %129, !dbg !1378
  br i1 %464, label %465, label %467, !dbg !1381

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !1378
  store i8 %439, i8* %466, align 1, !dbg !1378, !tbaa !1058
  br label %467, !dbg !1378

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !1381
  call void @llvm.dbg.value(metadata i64 %468, metadata !976, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %442, metadata !975, metadata !DIExpression()), !dbg !1036
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !1382
  %470 = load i8, i8* %469, align 1, !dbg !1382, !tbaa !1058
  call void @llvm.dbg.value(metadata i8 %470, metadata !986, metadata !DIExpression()), !dbg !1104
  br label %374, !dbg !1383, !llvm.loop !1384

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1104
  call void @llvm.dbg.value(metadata i8 %472, metadata !993, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %441, metadata !992, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %440, metadata !991, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %439, metadata !986, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %438, metadata !983, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %371, metadata !969, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %437, metadata !976, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %375, metadata !975, metadata !DIExpression()), !dbg !1036
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1097
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1036
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1041
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !1387
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1036
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1036
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1104
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1104
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1104
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !967, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 %482, metadata !993, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %481, metadata !992, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %156, metadata !991, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %480, metadata !986, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %479, metadata !984, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 %478, metadata !983, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %477, metadata !969, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %476, metadata !977, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %475, metadata !976, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %474, metadata !975, metadata !DIExpression()), !dbg !1036
  br i1 %116, label %494, label %484, !dbg !1388

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !1390
  %486 = zext i8 %485 to i64, !dbg !1390
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !1391
  %488 = load i32, i32* %487, align 4, !dbg !1391, !tbaa !771
  %489 = and i8 %480, 31, !dbg !1392
  %490 = zext i8 %489 to i32, !dbg !1392
  %491 = shl nuw i32 1, %490, !dbg !1393
  %492 = and i32 %488, %491, !dbg !1393
  %493 = icmp eq i32 %492, 0, !dbg !1393
  br i1 %493, label %494, label %495, !dbg !1394

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !1395

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !1396
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1036
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1041
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !1387
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1045
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1046
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1104
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1104
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !967, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 %503, metadata !993, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %502, metadata !986, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %501, metadata !984, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 %500, metadata !983, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %499, metadata !969, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %498, metadata !977, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %497, metadata !976, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %496, metadata !975, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.label(metadata !1033), !dbg !1397
  br i1 %109, label %505, label %635, !dbg !1398

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !992, metadata !DIExpression()), !dbg !1104
  %506 = and i8 %500, 1, !dbg !1400
  %507 = icmp eq i8 %506, 0, !dbg !1400
  %508 = and i1 %110, %507, !dbg !1400
  br i1 %508, label %509, label %525, !dbg !1400

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !1402
  br i1 %510, label %511, label %513, !dbg !1406

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !1402
  store i8 39, i8* %512, align 1, !dbg !1402, !tbaa !1058
  br label %513, !dbg !1402

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !1406
  call void @llvm.dbg.value(metadata i64 %514, metadata !976, metadata !DIExpression()), !dbg !1036
  %515 = icmp ult i64 %514, %504, !dbg !1407
  br i1 %515, label %516, label %518, !dbg !1410

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !1407
  store i8 36, i8* %517, align 1, !dbg !1407, !tbaa !1058
  br label %518, !dbg !1407

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !1410
  call void @llvm.dbg.value(metadata i64 %519, metadata !976, metadata !DIExpression()), !dbg !1036
  %520 = icmp ult i64 %519, %504, !dbg !1411
  br i1 %520, label %521, label %523, !dbg !1414

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1411
  store i8 39, i8* %522, align 1, !dbg !1411, !tbaa !1058
  br label %523, !dbg !1411

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !1414
  call void @llvm.dbg.value(metadata i64 %524, metadata !976, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 1, metadata !983, metadata !DIExpression()), !dbg !1036
  br label %525, !dbg !1415

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1104
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1036
  call void @llvm.dbg.value(metadata i8 %527, metadata !983, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %526, metadata !976, metadata !DIExpression()), !dbg !1036
  %528 = icmp ult i64 %526, %504, !dbg !1416
  br i1 %528, label %529, label %531, !dbg !1419

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1416
  store i8 92, i8* %530, align 1, !dbg !1416, !tbaa !1058
  br label %531, !dbg !1416

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !1419
  call void @llvm.dbg.value(metadata i64 %543, metadata !967, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 %542, metadata !993, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %541, metadata !992, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %540, metadata !986, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %539, metadata !984, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 %538, metadata !983, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %537, metadata !969, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %536, metadata !977, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %535, metadata !976, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %534, metadata !975, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.label(metadata !1034), !dbg !1420
  br label %560, !dbg !1421

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !1396
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1036
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1041
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !1387
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1045
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1046
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !1424
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1104
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1104
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !967, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 %542, metadata !993, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %541, metadata !992, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %540, metadata !986, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %539, metadata !984, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 %538, metadata !983, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %537, metadata !969, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %536, metadata !977, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %535, metadata !976, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %534, metadata !975, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.label(metadata !1034), !dbg !1420
  %544 = and i8 %538, 1, !dbg !1421
  %545 = icmp ne i8 %544, 0, !dbg !1421
  %546 = and i8 %541, 1, !dbg !1421
  %547 = icmp eq i8 %546, 0, !dbg !1421
  %548 = and i1 %545, %547, !dbg !1421
  br i1 %548, label %549, label %560, !dbg !1421

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !1425
  br i1 %550, label %551, label %553, !dbg !1429

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !1425
  store i8 39, i8* %552, align 1, !dbg !1425, !tbaa !1058
  br label %553, !dbg !1425

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !1429
  call void @llvm.dbg.value(metadata i64 %554, metadata !976, metadata !DIExpression()), !dbg !1036
  %555 = icmp ult i64 %554, %543, !dbg !1430
  br i1 %555, label %556, label %558, !dbg !1433

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !1430
  store i8 39, i8* %557, align 1, !dbg !1430, !tbaa !1058
  br label %558, !dbg !1430

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !1433
  call void @llvm.dbg.value(metadata i64 %559, metadata !976, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 0, metadata !983, metadata !DIExpression()), !dbg !1036
  br label %560, !dbg !1434

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1104
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1036
  call void @llvm.dbg.value(metadata i8 %569, metadata !983, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %568, metadata !976, metadata !DIExpression()), !dbg !1036
  %570 = icmp ult i64 %568, %561, !dbg !1435
  br i1 %570, label %571, label %573, !dbg !1438

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !1435
  store i8 %563, i8* %572, align 1, !dbg !1435, !tbaa !1058
  br label %573, !dbg !1435

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %574, metadata !976, metadata !DIExpression()), !dbg !1036
  %575 = icmp eq i8 %562, 0, !dbg !1439
  %576 = select i1 %575, i8 0, i8 %128, !dbg !1441
  call void @llvm.dbg.value(metadata i8 %576, metadata !985, metadata !DIExpression()), !dbg !1036
  br label %577, !dbg !1442

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !1396
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1036
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1041
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !1387
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1045
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1036
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1047
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !967, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 %584, metadata !985, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 %583, metadata !984, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 %582, metadata !983, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %581, metadata !969, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %580, metadata !977, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %579, metadata !976, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %578, metadata !975, metadata !DIExpression()), !dbg !1036
  %586 = add i64 %578, 1, !dbg !1443
  call void @llvm.dbg.value(metadata i64 %586, metadata !975, metadata !DIExpression()), !dbg !1036
  br label %121, !dbg !1444, !llvm.loop !1445

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !1447
  %590 = and i1 %110, %589, !dbg !1449
  %591 = xor i1 %590, true, !dbg !1449
  %592 = or i1 %109, %591, !dbg !1449
  br i1 %592, label %593, label %635, !dbg !1449

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !1450
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !1450
  br i1 %597, label %598, label %607, !dbg !1450

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !1452
  %600 = icmp eq i8 %599, 0, !dbg !1452
  br i1 %600, label %603, label %601, !dbg !1455

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !1456
  br label %652, !dbg !1457

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !1458
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !1460
  br i1 %606, label %26, label %607, !dbg !1460

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !1461
  %610 = and i1 %609, %608, !dbg !1463
  br i1 %610, label %611, label %626, !dbg !1463

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !978, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %123, metadata !976, metadata !DIExpression()), !dbg !1036
  %612 = load i8, i8* %97, align 1, !dbg !1464, !tbaa !1058
  %613 = icmp eq i8 %612, 0, !dbg !1467
  br i1 %613, label %626, label %614, !dbg !1467

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !978, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %617, metadata !976, metadata !DIExpression()), !dbg !1036
  %618 = icmp ult i64 %617, %129, !dbg !1468
  br i1 %618, label %619, label %621, !dbg !1471

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !1468
  store i8 %615, i8* %620, align 1, !dbg !1468, !tbaa !1058
  br label %621, !dbg !1468

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !1471
  call void @llvm.dbg.value(metadata i64 %622, metadata !976, metadata !DIExpression()), !dbg !1036
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !1472
  call void @llvm.dbg.value(metadata i8* %623, metadata !978, metadata !DIExpression()), !dbg !1036
  %624 = load i8, i8* %623, align 1, !dbg !1464, !tbaa !1058
  %625 = icmp eq i8 %624, 0, !dbg !1467
  br i1 %625, label %626, label %614, !dbg !1467, !llvm.loop !1473

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1079
  call void @llvm.dbg.value(metadata i64 %627, metadata !976, metadata !DIExpression()), !dbg !1036
  %628 = icmp ult i64 %627, %129, !dbg !1475
  br i1 %628, label %629, label %652, !dbg !1477

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !1478
  store i8 0, i8* %630, align 1, !dbg !1479, !tbaa !1058
  br label %652, !dbg !1478

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !967, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %637, metadata !969, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.label(metadata !1035), !dbg !1480
  %633 = icmp eq i8 %101, 0, !dbg !1481
  %634 = select i1 %633, i32 2, i32 4, !dbg !1481
  br label %642, !dbg !1481

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !967, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %637, metadata !969, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.label(metadata !1035), !dbg !1480
  %639 = icmp eq i32 %93, 2, !dbg !1483
  %640 = icmp eq i8 %636, 0, !dbg !1481
  %641 = select i1 %640, i32 2, i32 4, !dbg !1481
  br i1 %639, label %642, label %646, !dbg !1481

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !1481

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !970, metadata !DIExpression()), !dbg !1036
  %650 = and i32 %5, -3, !dbg !1484
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !1485
  br label %652, !dbg !1486

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !1487
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #9 !dbg !1488 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1492, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata i32 %1, metadata !1493, metadata !DIExpression()), !dbg !1496
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #24, !dbg !1497
  call void @llvm.dbg.value(metadata i8* %3, metadata !1494, metadata !DIExpression()), !dbg !1496
  %4 = icmp eq i8* %3, %0, !dbg !1498
  br i1 %4, label %5, label %72, !dbg !1500

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #24, !dbg !1501
  call void @llvm.dbg.value(metadata i8* %6, metadata !1495, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata i8* %6, metadata !1502, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.value(metadata i8* undef, metadata !1508, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.value(metadata i8 85, metadata !1509, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.value(metadata i8 84, metadata !1510, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.value(metadata i8 70, metadata !1511, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.value(metadata i8 45, metadata !1512, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.value(metadata i8 56, metadata !1513, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.value(metadata i8 0, metadata !1514, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.value(metadata i8 0, metadata !1515, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.value(metadata i8 0, metadata !1516, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.value(metadata i8 0, metadata !1517, metadata !DIExpression()), !dbg !1518
  %7 = load i8, i8* %6, align 1, !dbg !1521, !tbaa !1058
  %8 = and i8 %7, -33, !dbg !1521
  %9 = sext i8 %8 to i32, !dbg !1521
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !1521

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1523, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i8* undef, metadata !1528, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i8 84, metadata !1529, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i8 70, metadata !1530, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i8 45, metadata !1531, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i8 56, metadata !1532, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i8 0, metadata !1533, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i8 0, metadata !1534, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i8 0, metadata !1535, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i8 0, metadata !1536, metadata !DIExpression()), !dbg !1537
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1541
  %12 = load i8, i8* %11, align 1, !dbg !1541, !tbaa !1058
  %13 = and i8 %12, -33, !dbg !1541
  %14 = icmp eq i8 %13, 84, !dbg !1541
  br i1 %14, label %15, label %69, !dbg !1541

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !1543, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* undef, metadata !1548, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 70, metadata !1549, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 45, metadata !1550, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 56, metadata !1551, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 0, metadata !1552, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 0, metadata !1553, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 0, metadata !1554, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 0, metadata !1555, metadata !DIExpression()), !dbg !1556
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1560
  %17 = load i8, i8* %16, align 1, !dbg !1560, !tbaa !1058
  %18 = and i8 %17, -33, !dbg !1560
  %19 = icmp eq i8 %18, 70, !dbg !1560
  br i1 %19, label %20, label %69, !dbg !1560

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !1562, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.value(metadata i8* undef, metadata !1567, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.value(metadata i8 45, metadata !1568, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.value(metadata i8 56, metadata !1569, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.value(metadata i8 0, metadata !1570, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.value(metadata i8 0, metadata !1571, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.value(metadata i8 0, metadata !1572, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.value(metadata i8 0, metadata !1573, metadata !DIExpression()), !dbg !1574
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1578
  %22 = load i8, i8* %21, align 1, !dbg !1578, !tbaa !1058
  %23 = icmp eq i8 %22, 45, !dbg !1578
  br i1 %23, label %24, label %69, !dbg !1580

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !1581, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* undef, metadata !1586, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 56, metadata !1587, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 0, metadata !1588, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 0, metadata !1589, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 0, metadata !1590, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 0, metadata !1591, metadata !DIExpression()), !dbg !1592
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1596
  %26 = load i8, i8* %25, align 1, !dbg !1596, !tbaa !1058
  %27 = icmp eq i8 %26, 56, !dbg !1596
  br i1 %27, label %28, label %69, !dbg !1598

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !1599, metadata !DIExpression()), !dbg !1609
  call void @llvm.dbg.value(metadata i8* undef, metadata !1604, metadata !DIExpression()), !dbg !1609
  call void @llvm.dbg.value(metadata i8 0, metadata !1605, metadata !DIExpression()), !dbg !1609
  call void @llvm.dbg.value(metadata i8 0, metadata !1606, metadata !DIExpression()), !dbg !1609
  call void @llvm.dbg.value(metadata i8 0, metadata !1607, metadata !DIExpression()), !dbg !1609
  call void @llvm.dbg.value(metadata i8 0, metadata !1608, metadata !DIExpression()), !dbg !1609
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1613
  %30 = load i8, i8* %29, align 1, !dbg !1613, !tbaa !1058
  %31 = icmp eq i8 %30, 0, !dbg !1613
  br i1 %31, label %32, label %69, !dbg !1615

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !1616, !tbaa !1058
  %34 = icmp eq i8 %33, 96, !dbg !1617
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.57, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.58, i64 0, i64 0), !dbg !1616
  br label %72, !dbg !1618

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1523, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i8* undef, metadata !1528, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i8 66, metadata !1529, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i8 49, metadata !1530, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i8 56, metadata !1531, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i8 48, metadata !1532, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i8 51, metadata !1533, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i8 48, metadata !1534, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i8 0, metadata !1535, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i8 0, metadata !1536, metadata !DIExpression()), !dbg !1619
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1623
  %38 = load i8, i8* %37, align 1, !dbg !1623, !tbaa !1058
  %39 = and i8 %38, -33, !dbg !1623
  %40 = icmp eq i8 %39, 66, !dbg !1623
  br i1 %40, label %41, label %69, !dbg !1623

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !1543, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i8* undef, metadata !1548, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i8 49, metadata !1549, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i8 56, metadata !1550, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i8 48, metadata !1551, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i8 51, metadata !1552, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i8 48, metadata !1553, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i8 0, metadata !1554, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i8 0, metadata !1555, metadata !DIExpression()), !dbg !1624
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1626
  %43 = load i8, i8* %42, align 1, !dbg !1626, !tbaa !1058
  %44 = icmp eq i8 %43, 49, !dbg !1626
  br i1 %44, label %45, label %69, !dbg !1627

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !1562, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i8* undef, metadata !1567, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i8 56, metadata !1568, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i8 48, metadata !1569, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i8 51, metadata !1570, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i8 48, metadata !1571, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i8 0, metadata !1572, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i8 0, metadata !1573, metadata !DIExpression()), !dbg !1628
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1630
  %47 = load i8, i8* %46, align 1, !dbg !1630, !tbaa !1058
  %48 = icmp eq i8 %47, 56, !dbg !1630
  br i1 %48, label %49, label %69, !dbg !1631

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !1581, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i8* undef, metadata !1586, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i8 48, metadata !1587, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i8 51, metadata !1588, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i8 48, metadata !1589, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i8 0, metadata !1590, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i8 0, metadata !1591, metadata !DIExpression()), !dbg !1632
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1634
  %51 = load i8, i8* %50, align 1, !dbg !1634, !tbaa !1058
  %52 = icmp eq i8 %51, 48, !dbg !1634
  br i1 %52, label %53, label %69, !dbg !1635

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !1599, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8* undef, metadata !1604, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 51, metadata !1605, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 48, metadata !1606, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 0, metadata !1607, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 0, metadata !1608, metadata !DIExpression()), !dbg !1636
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1638
  %55 = load i8, i8* %54, align 1, !dbg !1638, !tbaa !1058
  %56 = icmp eq i8 %55, 51, !dbg !1638
  br i1 %56, label %57, label %69, !dbg !1639

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !1640, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8* undef, metadata !1645, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 48, metadata !1646, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 0, metadata !1647, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 0, metadata !1648, metadata !DIExpression()), !dbg !1649
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1653
  %59 = load i8, i8* %58, align 1, !dbg !1653, !tbaa !1058
  %60 = icmp eq i8 %59, 48, !dbg !1653
  br i1 %60, label %61, label %69, !dbg !1655

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !1656, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8* undef, metadata !1661, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8 0, metadata !1662, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8 0, metadata !1663, metadata !DIExpression()), !dbg !1664
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1668
  %63 = load i8, i8* %62, align 1, !dbg !1668, !tbaa !1058
  %64 = icmp eq i8 %63, 0, !dbg !1668
  br i1 %64, label %65, label %69, !dbg !1670

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !1671, !tbaa !1058
  %67 = icmp eq i8 %66, 96, !dbg !1672
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.59, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.60, i64 0, i64 0), !dbg !1671
  br label %72, !dbg !1673

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !1674
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), !dbg !1675
  br label %72, !dbg !1676

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !1496
  ret i8* %73, !dbg !1677
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #16

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: nounwind
declare !dbg !1678 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !1682 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #9 !dbg !1688 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1692, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %1, metadata !1693, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1694, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i8* %0, metadata !1696, metadata !DIExpression()) #24, !dbg !1709
  call void @llvm.dbg.value(metadata i64 %1, metadata !1701, metadata !DIExpression()) #24, !dbg !1709
  call void @llvm.dbg.value(metadata i64* null, metadata !1702, metadata !DIExpression()) #24, !dbg !1709
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1703, metadata !DIExpression()) #24, !dbg !1709
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1711
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1711
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1704, metadata !DIExpression()) #24, !dbg !1709
  %6 = tail call i32* @__errno_location() #28, !dbg !1712
  %7 = load i32, i32* %6, align 4, !dbg !1712, !tbaa !771
  call void @llvm.dbg.value(metadata i32 %7, metadata !1705, metadata !DIExpression()) #24, !dbg !1709
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1713
  %9 = load i32, i32* %8, align 4, !dbg !1713, !tbaa !910
  %10 = or i32 %9, 1, !dbg !1714
  call void @llvm.dbg.value(metadata i32 %10, metadata !1706, metadata !DIExpression()) #24, !dbg !1709
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1715
  %12 = load i32, i32* %11, align 8, !dbg !1715, !tbaa !858
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1716
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1717
  %15 = load i8*, i8** %14, align 8, !dbg !1717, !tbaa !932
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1718
  %17 = load i8*, i8** %16, align 8, !dbg !1718, !tbaa !935
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #24, !dbg !1719
  %19 = add i64 %18, 1, !dbg !1720
  call void @llvm.dbg.value(metadata i64 %19, metadata !1707, metadata !DIExpression()) #24, !dbg !1709
  call void @llvm.dbg.value(metadata i64 %19, metadata !1721, metadata !DIExpression()) #24, !dbg !1726
  %20 = tail call noalias i8* @xmalloc(i64 %19) #24, !dbg !1728
  call void @llvm.dbg.value(metadata i8* %20, metadata !1708, metadata !DIExpression()) #24, !dbg !1709
  %21 = load i32, i32* %11, align 8, !dbg !1729, !tbaa !858
  %22 = load i8*, i8** %14, align 8, !dbg !1730, !tbaa !932
  %23 = load i8*, i8** %16, align 8, !dbg !1731, !tbaa !935
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #24, !dbg !1732
  store i32 %7, i32* %6, align 4, !dbg !1733, !tbaa !771
  ret i8* %20, !dbg !1734
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #9 !dbg !1697 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1696, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i64 %1, metadata !1701, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i64* %2, metadata !1702, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1703, metadata !DIExpression()), !dbg !1735
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1736
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1736
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1704, metadata !DIExpression()), !dbg !1735
  %7 = tail call i32* @__errno_location() #28, !dbg !1737
  %8 = load i32, i32* %7, align 4, !dbg !1737, !tbaa !771
  call void @llvm.dbg.value(metadata i32 %8, metadata !1705, metadata !DIExpression()), !dbg !1735
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1738
  %10 = load i32, i32* %9, align 4, !dbg !1738, !tbaa !910
  %11 = icmp eq i64* %2, null, !dbg !1739
  %12 = zext i1 %11 to i32, !dbg !1739
  %13 = or i32 %10, %12, !dbg !1740
  call void @llvm.dbg.value(metadata i32 %13, metadata !1706, metadata !DIExpression()), !dbg !1735
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1741
  %15 = load i32, i32* %14, align 8, !dbg !1741, !tbaa !858
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1742
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1743
  %18 = load i8*, i8** %17, align 8, !dbg !1743, !tbaa !932
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1744
  %20 = load i8*, i8** %19, align 8, !dbg !1744, !tbaa !935
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !1745
  %22 = add i64 %21, 1, !dbg !1746
  call void @llvm.dbg.value(metadata i64 %22, metadata !1707, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i64 %22, metadata !1721, metadata !DIExpression()) #24, !dbg !1747
  %23 = tail call noalias i8* @xmalloc(i64 %22) #24, !dbg !1749
  call void @llvm.dbg.value(metadata i8* %23, metadata !1708, metadata !DIExpression()), !dbg !1735
  %24 = load i32, i32* %14, align 8, !dbg !1750, !tbaa !858
  %25 = load i8*, i8** %17, align 8, !dbg !1751, !tbaa !932
  %26 = load i8*, i8** %19, align 8, !dbg !1752, !tbaa !935
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !1753
  store i32 %8, i32* %7, align 4, !dbg !1754, !tbaa !771
  br i1 %11, label %29, label %28, !dbg !1755

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !1756, !tbaa !1758
  br label %29, !dbg !1760

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !1761
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #9 !dbg !1762 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1766, !tbaa !575
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !1764, metadata !DIExpression()), !dbg !1767
  call void @llvm.dbg.value(metadata i32 1, metadata !1765, metadata !DIExpression()), !dbg !1767
  %2 = load i32, i32* @nslots, align 4, !dbg !1768, !tbaa !771
  %3 = icmp sgt i32 %2, 1, !dbg !1771
  br i1 %3, label %4, label %12, !dbg !1772

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !1771
  br label %6, !dbg !1772

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !1765, metadata !DIExpression()), !dbg !1767
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !1773
  %9 = load i8*, i8** %8, align 8, !dbg !1773, !tbaa !1774
  tail call void @free(i8* %9) #24, !dbg !1776
  %10 = add nuw nsw i64 %7, 1, !dbg !1777
  call void @llvm.dbg.value(metadata i64 %10, metadata !1765, metadata !DIExpression()), !dbg !1767
  %11 = icmp eq i64 %10, %5, !dbg !1771
  br i1 %11, label %12, label %6, !dbg !1772, !llvm.loop !1778

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1780
  %14 = load i8*, i8** %13, align 8, !dbg !1780, !tbaa !1774
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1782
  br i1 %15, label %17, label %16, !dbg !1783

16:                                               ; preds = %12
  tail call void @free(i8* %14) #24, !dbg !1784
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1786, !tbaa !1787
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1788, !tbaa !1774
  br label %17, !dbg !1789

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1790
  br i1 %18, label %21, label %19, !dbg !1792

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !1793
  tail call void @free(i8* %20) #24, !dbg !1795
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1796, !tbaa !575
  br label %21, !dbg !1797

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !1798, !tbaa !771
  ret void, !dbg !1799
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #9 !dbg !1800 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1802, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8* %1, metadata !1803, metadata !DIExpression()), !dbg !1804
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1805
  ret i8* %3, !dbg !1806
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #9 !dbg !1807 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1811, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.value(metadata i8* %1, metadata !1812, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.value(metadata i64 %2, metadata !1813, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1814, metadata !DIExpression()), !dbg !1826
  %5 = tail call i32* @__errno_location() #28, !dbg !1827
  %6 = load i32, i32* %5, align 4, !dbg !1827, !tbaa !771
  call void @llvm.dbg.value(metadata i32 %6, metadata !1815, metadata !DIExpression()), !dbg !1826
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1828, !tbaa !575
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !1816, metadata !DIExpression()), !dbg !1826
  %8 = icmp slt i32 %0, 0, !dbg !1829
  br i1 %8, label %9, label %10, !dbg !1831

9:                                                ; preds = %4
  tail call void @abort() #25, !dbg !1832
  unreachable, !dbg !1832

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !1833, !tbaa !771
  %12 = icmp sgt i32 %11, %0, !dbg !1834
  br i1 %12, label %34, label %13, !dbg !1835

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !1836
  call void @llvm.dbg.value(metadata i1 %14, metadata !1817, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1837
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !1820, metadata !DIExpression()), !dbg !1837
  %15 = icmp eq i32 %0, 2147483647, !dbg !1838
  br i1 %15, label %16, label %17, !dbg !1840

16:                                               ; preds = %13
  tail call void @xalloc_die() #25, !dbg !1841
  unreachable, !dbg !1841

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !1842
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !1842
  %20 = add nuw nsw i32 %0, 1, !dbg !1843
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !1844
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #24, !dbg !1845
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !1845
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !1816, metadata !DIExpression()), !dbg !1826
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !1846, !tbaa !575
  br i1 %14, label %25, label %26, !dbg !1847

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !1848, !tbaa.struct !1850
  br label %26, !dbg !1851

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !1852, !tbaa !771
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !1853
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !1854
  %31 = sub nsw i32 %20, %27, !dbg !1855
  %32 = sext i32 %31 to i64, !dbg !1856
  %33 = shl nsw i64 %32, 4, !dbg !1857
  call void @llvm.dbg.value(metadata i8* %30, metadata !1248, metadata !DIExpression()) #24, !dbg !1858
  call void @llvm.dbg.value(metadata i32 0, metadata !1254, metadata !DIExpression()) #24, !dbg !1858
  call void @llvm.dbg.value(metadata i64 %33, metadata !1255, metadata !DIExpression()) #24, !dbg !1858
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #24, !dbg !1860
  store i32 %20, i32* @nslots, align 4, !dbg !1861, !tbaa !771
  br label %34, !dbg !1862

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !1826
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !1816, metadata !DIExpression()), !dbg !1826
  %36 = zext i32 %0 to i64, !dbg !1863
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !1864
  %38 = load i64, i64* %37, align 8, !dbg !1864, !tbaa !1787
  call void @llvm.dbg.value(metadata i64 %38, metadata !1821, metadata !DIExpression()), !dbg !1865
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !1866
  %40 = load i8*, i8** %39, align 8, !dbg !1866, !tbaa !1774
  call void @llvm.dbg.value(metadata i8* %40, metadata !1823, metadata !DIExpression()), !dbg !1865
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !1867
  %42 = load i32, i32* %41, align 4, !dbg !1867, !tbaa !910
  %43 = or i32 %42, 1, !dbg !1868
  call void @llvm.dbg.value(metadata i32 %43, metadata !1824, metadata !DIExpression()), !dbg !1865
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1869
  %45 = load i32, i32* %44, align 8, !dbg !1869, !tbaa !858
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !1870
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !1871
  %48 = load i8*, i8** %47, align 8, !dbg !1871, !tbaa !932
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !1872
  %50 = load i8*, i8** %49, align 8, !dbg !1872, !tbaa !935
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %51, metadata !1825, metadata !DIExpression()), !dbg !1865
  %52 = icmp ugt i64 %38, %51, !dbg !1874
  br i1 %52, label %63, label %53, !dbg !1876

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !1877
  call void @llvm.dbg.value(metadata i64 %54, metadata !1821, metadata !DIExpression()), !dbg !1865
  store i64 %54, i64* %37, align 8, !dbg !1879, !tbaa !1787
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1880
  br i1 %55, label %57, label %56, !dbg !1882

56:                                               ; preds = %53
  tail call void @free(i8* %40) #24, !dbg !1883
  br label %57, !dbg !1883

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !1721, metadata !DIExpression()) #24, !dbg !1884
  %58 = tail call noalias i8* @xmalloc(i64 %54) #24, !dbg !1886
  call void @llvm.dbg.value(metadata i8* %58, metadata !1823, metadata !DIExpression()), !dbg !1865
  store i8* %58, i8** %39, align 8, !dbg !1887, !tbaa !1774
  %59 = load i32, i32* %44, align 8, !dbg !1888, !tbaa !858
  %60 = load i8*, i8** %47, align 8, !dbg !1889, !tbaa !932
  %61 = load i8*, i8** %49, align 8, !dbg !1890, !tbaa !935
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !1891
  br label %63, !dbg !1892

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !1865
  call void @llvm.dbg.value(metadata i8* %64, metadata !1823, metadata !DIExpression()), !dbg !1865
  store i32 %6, i32* %5, align 4, !dbg !1893, !tbaa !771
  ret i8* %64, !dbg !1894
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #9 !dbg !1895 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1899, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8* %1, metadata !1900, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i64 %2, metadata !1901, metadata !DIExpression()), !dbg !1902
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1903
  ret i8* %4, !dbg !1904
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #9 !dbg !1905 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1907, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i32 0, metadata !1802, metadata !DIExpression()) #24, !dbg !1909
  call void @llvm.dbg.value(metadata i8* %0, metadata !1803, metadata !DIExpression()) #24, !dbg !1909
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #24, !dbg !1911
  ret i8* %2, !dbg !1912
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #9 !dbg !1913 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1917, metadata !DIExpression()), !dbg !1919
  call void @llvm.dbg.value(metadata i64 %1, metadata !1918, metadata !DIExpression()), !dbg !1919
  call void @llvm.dbg.value(metadata i32 0, metadata !1899, metadata !DIExpression()) #24, !dbg !1920
  call void @llvm.dbg.value(metadata i8* %0, metadata !1900, metadata !DIExpression()) #24, !dbg !1920
  call void @llvm.dbg.value(metadata i64 %1, metadata !1901, metadata !DIExpression()) #24, !dbg !1920
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #24, !dbg !1922
  ret i8* %3, !dbg !1923
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #9 !dbg !1924 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1928, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i32 %1, metadata !1929, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8* %2, metadata !1930, metadata !DIExpression()), !dbg !1932
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !1933
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !1933
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !1931, metadata !DIExpression()), !dbg !1934
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1935), !dbg !1938
  call void @llvm.dbg.value(metadata i32 %1, metadata !1939, metadata !DIExpression()) #24, !dbg !1945
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !1944, metadata !DIExpression()) #24, !dbg !1947
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #24, !dbg !1947, !alias.scope !1935
  %6 = icmp eq i32 %1, 10, !dbg !1948
  br i1 %6, label %7, label %8, !dbg !1950

7:                                                ; preds = %3
  tail call void @abort() #25, !dbg !1951, !noalias !1935
  unreachable, !dbg !1951

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1952
  store i32 %1, i32* %9, align 8, !dbg !1953, !tbaa !858, !alias.scope !1935
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !1954
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !1955
  ret i8* %10, !dbg !1956
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #9 !dbg !1957 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1961, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i32 %1, metadata !1962, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i8* %2, metadata !1963, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %3, metadata !1964, metadata !DIExpression()), !dbg !1966
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1967
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !1967
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !1965, metadata !DIExpression()), !dbg !1968
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1969), !dbg !1972
  call void @llvm.dbg.value(metadata i32 %1, metadata !1939, metadata !DIExpression()) #24, !dbg !1973
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !1944, metadata !DIExpression()) #24, !dbg !1975
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #24, !dbg !1975, !alias.scope !1969
  %7 = icmp eq i32 %1, 10, !dbg !1976
  br i1 %7, label %8, label %9, !dbg !1977

8:                                                ; preds = %4
  tail call void @abort() #25, !dbg !1978, !noalias !1969
  unreachable, !dbg !1978

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1979
  store i32 %1, i32* %10, align 8, !dbg !1980, !tbaa !858, !alias.scope !1969
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !1981
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !1982
  ret i8* %11, !dbg !1983
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #9 !dbg !1984 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1988, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata i8* %1, metadata !1989, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata i32 0, metadata !1928, metadata !DIExpression()) #24, !dbg !1991
  call void @llvm.dbg.value(metadata i32 %0, metadata !1929, metadata !DIExpression()) #24, !dbg !1991
  call void @llvm.dbg.value(metadata i8* %1, metadata !1930, metadata !DIExpression()) #24, !dbg !1991
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !1993
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #24, !dbg !1993
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !1931, metadata !DIExpression()) #24, !dbg !1994
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1995) #24, !dbg !1998
  call void @llvm.dbg.value(metadata i32 %0, metadata !1939, metadata !DIExpression()) #24, !dbg !1999
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !1944, metadata !DIExpression()) #24, !dbg !2001
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #24, !dbg !2001, !alias.scope !1995
  %5 = icmp eq i32 %0, 10, !dbg !2002
  br i1 %5, label %6, label %7, !dbg !2003

6:                                                ; preds = %2
  tail call void @abort() #25, !dbg !2004, !noalias !1995
  unreachable, !dbg !2004

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2005
  store i32 %0, i32* %8, align 8, !dbg !2006, !tbaa !858, !alias.scope !1995
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #24, !dbg !2007
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2008
  ret i8* %9, !dbg !2009
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #9 !dbg !2010 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2014, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i8* %1, metadata !2015, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i64 %2, metadata !2016, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i32 0, metadata !1961, metadata !DIExpression()) #24, !dbg !2018
  call void @llvm.dbg.value(metadata i32 %0, metadata !1962, metadata !DIExpression()) #24, !dbg !2018
  call void @llvm.dbg.value(metadata i8* %1, metadata !1963, metadata !DIExpression()) #24, !dbg !2018
  call void @llvm.dbg.value(metadata i64 %2, metadata !1964, metadata !DIExpression()) #24, !dbg !2018
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2020
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2020
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !1965, metadata !DIExpression()) #24, !dbg !2021
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2022) #24, !dbg !2025
  call void @llvm.dbg.value(metadata i32 %0, metadata !1939, metadata !DIExpression()) #24, !dbg !2026
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !1944, metadata !DIExpression()) #24, !dbg !2028
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #24, !dbg !2028, !alias.scope !2022
  %6 = icmp eq i32 %0, 10, !dbg !2029
  br i1 %6, label %7, label %8, !dbg !2030

7:                                                ; preds = %3
  tail call void @abort() #25, !dbg !2031, !noalias !2022
  unreachable, !dbg !2031

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2032
  store i32 %0, i32* %9, align 8, !dbg !2033, !tbaa !858, !alias.scope !2022
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #24, !dbg !2034
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2035
  ret i8* %10, !dbg !2036
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #9 !dbg !2037 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2041, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %1, metadata !2042, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8 %2, metadata !2043, metadata !DIExpression()), !dbg !2045
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2046
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2046
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2044, metadata !DIExpression()), !dbg !2047
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2048, !tbaa.struct !2049
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !876, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 %2, metadata !877, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i32 1, metadata !878, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 %2, metadata !879, metadata !DIExpression()), !dbg !2050
  %6 = lshr i8 %2, 5, !dbg !2052
  %7 = zext i8 %6 to i64, !dbg !2052
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2053
  call void @llvm.dbg.value(metadata i32* %8, metadata !881, metadata !DIExpression()), !dbg !2050
  %9 = and i8 %2, 31, !dbg !2054
  %10 = zext i8 %9 to i32, !dbg !2054
  call void @llvm.dbg.value(metadata i32 %10, metadata !883, metadata !DIExpression()), !dbg !2050
  %11 = load i32, i32* %8, align 4, !dbg !2055, !tbaa !771
  %12 = lshr i32 %11, %10, !dbg !2056
  %13 = and i32 %12, 1, !dbg !2057
  call void @llvm.dbg.value(metadata i32 %13, metadata !884, metadata !DIExpression()), !dbg !2050
  %14 = xor i32 %13, 1, !dbg !2058
  %15 = shl i32 %14, %10, !dbg !2059
  %16 = xor i32 %15, %11, !dbg !2060
  store i32 %16, i32* %8, align 4, !dbg !2060, !tbaa !771
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2061
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2062
  ret i8* %17, !dbg !2063
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #9 !dbg !2064 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2068, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i8 %1, metadata !2069, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i8* %0, metadata !2041, metadata !DIExpression()) #24, !dbg !2071
  call void @llvm.dbg.value(metadata i64 -1, metadata !2042, metadata !DIExpression()) #24, !dbg !2071
  call void @llvm.dbg.value(metadata i8 %1, metadata !2043, metadata !DIExpression()) #24, !dbg !2071
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2073
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2073
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2044, metadata !DIExpression()) #24, !dbg !2074
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #24, !dbg !2075, !tbaa.struct !2049
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !876, metadata !DIExpression()) #24, !dbg !2076
  call void @llvm.dbg.value(metadata i8 %1, metadata !877, metadata !DIExpression()) #24, !dbg !2076
  call void @llvm.dbg.value(metadata i32 1, metadata !878, metadata !DIExpression()) #24, !dbg !2076
  call void @llvm.dbg.value(metadata i8 %1, metadata !879, metadata !DIExpression()) #24, !dbg !2076
  %5 = lshr i8 %1, 5, !dbg !2078
  %6 = zext i8 %5 to i64, !dbg !2078
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2079
  call void @llvm.dbg.value(metadata i32* %7, metadata !881, metadata !DIExpression()) #24, !dbg !2076
  %8 = and i8 %1, 31, !dbg !2080
  %9 = zext i8 %8 to i32, !dbg !2080
  call void @llvm.dbg.value(metadata i32 %9, metadata !883, metadata !DIExpression()) #24, !dbg !2076
  %10 = load i32, i32* %7, align 4, !dbg !2081, !tbaa !771
  %11 = lshr i32 %10, %9, !dbg !2082
  %12 = and i32 %11, 1, !dbg !2083
  call void @llvm.dbg.value(metadata i32 %12, metadata !884, metadata !DIExpression()) #24, !dbg !2076
  %13 = xor i32 %12, 1, !dbg !2084
  %14 = shl i32 %13, %9, !dbg !2085
  %15 = xor i32 %14, %10, !dbg !2086
  store i32 %15, i32* %7, align 4, !dbg !2086, !tbaa !771
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #24, !dbg !2087
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2088
  ret i8* %16, !dbg !2089
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #9 !dbg !2090 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2092, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i8* %0, metadata !2068, metadata !DIExpression()) #24, !dbg !2094
  call void @llvm.dbg.value(metadata i8 58, metadata !2069, metadata !DIExpression()) #24, !dbg !2094
  call void @llvm.dbg.value(metadata i8* %0, metadata !2041, metadata !DIExpression()) #24, !dbg !2096
  call void @llvm.dbg.value(metadata i64 -1, metadata !2042, metadata !DIExpression()) #24, !dbg !2096
  call void @llvm.dbg.value(metadata i8 58, metadata !2043, metadata !DIExpression()) #24, !dbg !2096
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2098
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #24, !dbg !2098
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2044, metadata !DIExpression()) #24, !dbg !2099
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #24, !dbg !2100, !tbaa.struct !2049
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !876, metadata !DIExpression()) #24, !dbg !2101
  call void @llvm.dbg.value(metadata i8 58, metadata !877, metadata !DIExpression()) #24, !dbg !2101
  call void @llvm.dbg.value(metadata i32 1, metadata !878, metadata !DIExpression()) #24, !dbg !2101
  call void @llvm.dbg.value(metadata i8 58, metadata !879, metadata !DIExpression()) #24, !dbg !2101
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2103
  call void @llvm.dbg.value(metadata i32* %4, metadata !881, metadata !DIExpression()) #24, !dbg !2101
  call void @llvm.dbg.value(metadata i32 26, metadata !883, metadata !DIExpression()) #24, !dbg !2101
  %5 = load i32, i32* %4, align 4, !dbg !2104, !tbaa !771
  call void @llvm.dbg.value(metadata i32 %5, metadata !884, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #24, !dbg !2101
  %6 = or i32 %5, 67108864, !dbg !2105
  store i32 %6, i32* %4, align 4, !dbg !2105, !tbaa !771
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #24, !dbg !2106
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #24, !dbg !2107
  ret i8* %7, !dbg !2108
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #9 !dbg !2109 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2111, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 %1, metadata !2112, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i8* %0, metadata !2041, metadata !DIExpression()) #24, !dbg !2114
  call void @llvm.dbg.value(metadata i64 %1, metadata !2042, metadata !DIExpression()) #24, !dbg !2114
  call void @llvm.dbg.value(metadata i8 58, metadata !2043, metadata !DIExpression()) #24, !dbg !2114
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2116
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2116
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2044, metadata !DIExpression()) #24, !dbg !2117
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #24, !dbg !2118, !tbaa.struct !2049
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !876, metadata !DIExpression()) #24, !dbg !2119
  call void @llvm.dbg.value(metadata i8 58, metadata !877, metadata !DIExpression()) #24, !dbg !2119
  call void @llvm.dbg.value(metadata i32 1, metadata !878, metadata !DIExpression()) #24, !dbg !2119
  call void @llvm.dbg.value(metadata i8 58, metadata !879, metadata !DIExpression()) #24, !dbg !2119
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2121
  call void @llvm.dbg.value(metadata i32* %5, metadata !881, metadata !DIExpression()) #24, !dbg !2119
  call void @llvm.dbg.value(metadata i32 26, metadata !883, metadata !DIExpression()) #24, !dbg !2119
  %6 = load i32, i32* %5, align 4, !dbg !2122, !tbaa !771
  call void @llvm.dbg.value(metadata i32 %6, metadata !884, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #24, !dbg !2119
  %7 = or i32 %6, 67108864, !dbg !2123
  store i32 %7, i32* %5, align 4, !dbg !2123, !tbaa !771
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #24, !dbg !2124
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2125
  ret i8* %8, !dbg !2126
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #9 !dbg !2127 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !1944, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2133
  call void @llvm.dbg.value(metadata i32 %0, metadata !2129, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i32 %1, metadata !2130, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8* %2, metadata !2131, metadata !DIExpression()), !dbg !2135
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2136
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2136
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2132, metadata !DIExpression()), !dbg !2137
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2138
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2138
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2139), !dbg !2138
  call void @llvm.dbg.value(metadata i32 %1, metadata !1939, metadata !DIExpression()) #24, !dbg !2142
  call void @llvm.dbg.value(metadata i32 0, metadata !1944, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2142
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2133, !alias.scope !2139
  %8 = icmp eq i32 %1, 10, !dbg !2143
  br i1 %8, label %9, label %10, !dbg !2144

9:                                                ; preds = %3
  tail call void @abort() #25, !dbg !2145, !noalias !2139
  unreachable, !dbg !2145

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !1944, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2142
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2138
  store i32 %1, i32* %11, align 8, !dbg !2138, !tbaa.struct !2049
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2138
  %13 = bitcast i32* %12 to i8*, !dbg !2138
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2138, !tbaa.struct !2146
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2138
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !876, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i8 58, metadata !877, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i32 1, metadata !878, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i8 58, metadata !879, metadata !DIExpression()), !dbg !2147
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2149
  call void @llvm.dbg.value(metadata i32* %14, metadata !881, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i32 26, metadata !883, metadata !DIExpression()), !dbg !2147
  %15 = load i32, i32* %14, align 4, !dbg !2150, !tbaa !771
  call void @llvm.dbg.value(metadata i32 %15, metadata !884, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2147
  %16 = or i32 %15, 67108864, !dbg !2151
  store i32 %16, i32* %14, align 4, !dbg !2151, !tbaa !771
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2152
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2153
  ret i8* %17, !dbg !2154
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #9 !dbg !2155 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2159, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i8* %1, metadata !2160, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i8* %2, metadata !2161, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i8* %3, metadata !2162, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i32 %0, metadata !2164, metadata !DIExpression()) #24, !dbg !2174
  call void @llvm.dbg.value(metadata i8* %1, metadata !2169, metadata !DIExpression()) #24, !dbg !2174
  call void @llvm.dbg.value(metadata i8* %2, metadata !2170, metadata !DIExpression()) #24, !dbg !2174
  call void @llvm.dbg.value(metadata i8* %3, metadata !2171, metadata !DIExpression()) #24, !dbg !2174
  call void @llvm.dbg.value(metadata i64 -1, metadata !2172, metadata !DIExpression()) #24, !dbg !2174
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2176
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2176
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2173, metadata !DIExpression()) #24, !dbg !2177
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #24, !dbg !2178, !tbaa.struct !2049
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !917, metadata !DIExpression()) #24, !dbg !2179
  call void @llvm.dbg.value(metadata i8* %1, metadata !918, metadata !DIExpression()) #24, !dbg !2179
  call void @llvm.dbg.value(metadata i8* %2, metadata !919, metadata !DIExpression()) #24, !dbg !2179
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !917, metadata !DIExpression()) #24, !dbg !2179
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2181
  store i32 10, i32* %7, align 8, !dbg !2182, !tbaa !858
  %8 = icmp ne i8* %1, null, !dbg !2183
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2184
  br i1 %10, label %12, label %11, !dbg !2184

11:                                               ; preds = %4
  tail call void @abort() #25, !dbg !2185
  unreachable, !dbg !2185

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2186
  store i8* %1, i8** %13, align 8, !dbg !2187, !tbaa !932
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2188
  store i8* %2, i8** %14, align 8, !dbg !2189, !tbaa !935
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #24, !dbg !2190
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2191
  ret i8* %15, !dbg !2192
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #9 !dbg !2165 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2164, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %1, metadata !2169, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %2, metadata !2170, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %3, metadata !2171, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %4, metadata !2172, metadata !DIExpression()), !dbg !2193
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2194
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #24, !dbg !2194
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2173, metadata !DIExpression()), !dbg !2195
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2196, !tbaa.struct !2049
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !917, metadata !DIExpression()) #24, !dbg !2197
  call void @llvm.dbg.value(metadata i8* %1, metadata !918, metadata !DIExpression()) #24, !dbg !2197
  call void @llvm.dbg.value(metadata i8* %2, metadata !919, metadata !DIExpression()) #24, !dbg !2197
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !917, metadata !DIExpression()) #24, !dbg !2197
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2199
  store i32 10, i32* %8, align 8, !dbg !2200, !tbaa !858
  %9 = icmp ne i8* %1, null, !dbg !2201
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2202
  br i1 %11, label %13, label %12, !dbg !2202

12:                                               ; preds = %5
  tail call void @abort() #25, !dbg !2203
  unreachable, !dbg !2203

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2204
  store i8* %1, i8** %14, align 8, !dbg !2205, !tbaa !932
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2206
  store i8* %2, i8** %15, align 8, !dbg !2207, !tbaa !935
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2208
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #24, !dbg !2209
  ret i8* %16, !dbg !2210
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #9 !dbg !2211 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2215, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %1, metadata !2216, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %2, metadata !2217, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i32 0, metadata !2159, metadata !DIExpression()) #24, !dbg !2219
  call void @llvm.dbg.value(metadata i8* %0, metadata !2160, metadata !DIExpression()) #24, !dbg !2219
  call void @llvm.dbg.value(metadata i8* %1, metadata !2161, metadata !DIExpression()) #24, !dbg !2219
  call void @llvm.dbg.value(metadata i8* %2, metadata !2162, metadata !DIExpression()) #24, !dbg !2219
  call void @llvm.dbg.value(metadata i32 0, metadata !2164, metadata !DIExpression()) #24, !dbg !2221
  call void @llvm.dbg.value(metadata i8* %0, metadata !2169, metadata !DIExpression()) #24, !dbg !2221
  call void @llvm.dbg.value(metadata i8* %1, metadata !2170, metadata !DIExpression()) #24, !dbg !2221
  call void @llvm.dbg.value(metadata i8* %2, metadata !2171, metadata !DIExpression()) #24, !dbg !2221
  call void @llvm.dbg.value(metadata i64 -1, metadata !2172, metadata !DIExpression()) #24, !dbg !2221
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2223
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2223
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2173, metadata !DIExpression()) #24, !dbg !2224
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #24, !dbg !2225, !tbaa.struct !2049
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !917, metadata !DIExpression()) #24, !dbg !2226
  call void @llvm.dbg.value(metadata i8* %0, metadata !918, metadata !DIExpression()) #24, !dbg !2226
  call void @llvm.dbg.value(metadata i8* %1, metadata !919, metadata !DIExpression()) #24, !dbg !2226
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !917, metadata !DIExpression()) #24, !dbg !2226
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2228
  store i32 10, i32* %6, align 8, !dbg !2229, !tbaa !858
  %7 = icmp ne i8* %0, null, !dbg !2230
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2231
  br i1 %9, label %11, label %10, !dbg !2231

10:                                               ; preds = %3
  tail call void @abort() #25, !dbg !2232
  unreachable, !dbg !2232

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2233
  store i8* %0, i8** %12, align 8, !dbg !2234, !tbaa !932
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2235
  store i8* %1, i8** %13, align 8, !dbg !2236, !tbaa !935
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #24, !dbg !2237
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2238
  ret i8* %14, !dbg !2239
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #9 !dbg !2240 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2244, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %1, metadata !2245, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %2, metadata !2246, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %3, metadata !2247, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i32 0, metadata !2164, metadata !DIExpression()) #24, !dbg !2249
  call void @llvm.dbg.value(metadata i8* %0, metadata !2169, metadata !DIExpression()) #24, !dbg !2249
  call void @llvm.dbg.value(metadata i8* %1, metadata !2170, metadata !DIExpression()) #24, !dbg !2249
  call void @llvm.dbg.value(metadata i8* %2, metadata !2171, metadata !DIExpression()) #24, !dbg !2249
  call void @llvm.dbg.value(metadata i64 %3, metadata !2172, metadata !DIExpression()) #24, !dbg !2249
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2251
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2251
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2173, metadata !DIExpression()) #24, !dbg !2252
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #24, !dbg !2253, !tbaa.struct !2049
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !917, metadata !DIExpression()) #24, !dbg !2254
  call void @llvm.dbg.value(metadata i8* %0, metadata !918, metadata !DIExpression()) #24, !dbg !2254
  call void @llvm.dbg.value(metadata i8* %1, metadata !919, metadata !DIExpression()) #24, !dbg !2254
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !917, metadata !DIExpression()) #24, !dbg !2254
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2256
  store i32 10, i32* %7, align 8, !dbg !2257, !tbaa !858
  %8 = icmp ne i8* %0, null, !dbg !2258
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2259
  br i1 %10, label %12, label %11, !dbg !2259

11:                                               ; preds = %4
  tail call void @abort() #25, !dbg !2260
  unreachable, !dbg !2260

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2261
  store i8* %0, i8** %13, align 8, !dbg !2262, !tbaa !932
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2263
  store i8* %1, i8** %14, align 8, !dbg !2264, !tbaa !935
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #24, !dbg !2265
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2266
  ret i8* %15, !dbg !2267
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #9 !dbg !2268 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2272, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8* %1, metadata !2273, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i64 %2, metadata !2274, metadata !DIExpression()), !dbg !2275
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2276
  ret i8* %4, !dbg !2277
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #9 !dbg !2278 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2282, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i64 %1, metadata !2283, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i32 0, metadata !2272, metadata !DIExpression()) #24, !dbg !2285
  call void @llvm.dbg.value(metadata i8* %0, metadata !2273, metadata !DIExpression()) #24, !dbg !2285
  call void @llvm.dbg.value(metadata i64 %1, metadata !2274, metadata !DIExpression()) #24, !dbg !2285
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #24, !dbg !2287
  ret i8* %3, !dbg !2288
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #9 !dbg !2289 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2293, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %1, metadata !2294, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i32 %0, metadata !2272, metadata !DIExpression()) #24, !dbg !2296
  call void @llvm.dbg.value(metadata i8* %1, metadata !2273, metadata !DIExpression()) #24, !dbg !2296
  call void @llvm.dbg.value(metadata i64 -1, metadata !2274, metadata !DIExpression()) #24, !dbg !2296
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #24, !dbg !2298
  ret i8* %3, !dbg !2299
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #9 !dbg !2300 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2304, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata i32 0, metadata !2293, metadata !DIExpression()) #24, !dbg !2306
  call void @llvm.dbg.value(metadata i8* %0, metadata !2294, metadata !DIExpression()) #24, !dbg !2306
  call void @llvm.dbg.value(metadata i32 0, metadata !2272, metadata !DIExpression()) #24, !dbg !2308
  call void @llvm.dbg.value(metadata i8* %0, metadata !2273, metadata !DIExpression()) #24, !dbg !2308
  call void @llvm.dbg.value(metadata i64 -1, metadata !2274, metadata !DIExpression()) #24, !dbg !2308
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #24, !dbg !2310
  ret i8* %2, !dbg !2311
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #9 !dbg !2312 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2352, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata i8* %1, metadata !2353, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata i8* %2, metadata !2354, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata i8* %3, metadata !2355, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata i8** %4, metadata !2356, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata i64 %5, metadata !2357, metadata !DIExpression()), !dbg !2358
  %7 = icmp eq i8* %1, null, !dbg !2359
  br i1 %7, label %10, label %8, !dbg !2361

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #24, !dbg !2362
  br label %12, !dbg !2362

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.64, i64 0, i64 0), i8* %2, i8* %3) #24, !dbg !2363
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.65, i64 0, i64 0), i32 5) #24, !dbg !2364
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #24, !dbg !2364
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.66, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2365
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.67, i64 0, i64 0), i32 5) #24, !dbg !2366
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.68, i64 0, i64 0)) #24, !dbg !2366
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.66, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2367
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
  ], !dbg !2368

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.69, i64 0, i64 0), i32 5) #24, !dbg !2369
  %21 = load i8*, i8** %4, align 8, !dbg !2369, !tbaa !575
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #24, !dbg !2369
  br label %147, !dbg !2371

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.70, i64 0, i64 0), i32 5) #24, !dbg !2372
  %25 = load i8*, i8** %4, align 8, !dbg !2372, !tbaa !575
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2372
  %27 = load i8*, i8** %26, align 8, !dbg !2372, !tbaa !575
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #24, !dbg !2372
  br label %147, !dbg !2373

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.71, i64 0, i64 0), i32 5) #24, !dbg !2374
  %31 = load i8*, i8** %4, align 8, !dbg !2374, !tbaa !575
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2374
  %33 = load i8*, i8** %32, align 8, !dbg !2374, !tbaa !575
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2374
  %35 = load i8*, i8** %34, align 8, !dbg !2374, !tbaa !575
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #24, !dbg !2374
  br label %147, !dbg !2375

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.72, i64 0, i64 0), i32 5) #24, !dbg !2376
  %39 = load i8*, i8** %4, align 8, !dbg !2376, !tbaa !575
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2376
  %41 = load i8*, i8** %40, align 8, !dbg !2376, !tbaa !575
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2376
  %43 = load i8*, i8** %42, align 8, !dbg !2376, !tbaa !575
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2376
  %45 = load i8*, i8** %44, align 8, !dbg !2376, !tbaa !575
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #24, !dbg !2376
  br label %147, !dbg !2377

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.73, i64 0, i64 0), i32 5) #24, !dbg !2378
  %49 = load i8*, i8** %4, align 8, !dbg !2378, !tbaa !575
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2378
  %51 = load i8*, i8** %50, align 8, !dbg !2378, !tbaa !575
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2378
  %53 = load i8*, i8** %52, align 8, !dbg !2378, !tbaa !575
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2378
  %55 = load i8*, i8** %54, align 8, !dbg !2378, !tbaa !575
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2378
  %57 = load i8*, i8** %56, align 8, !dbg !2378, !tbaa !575
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #24, !dbg !2378
  br label %147, !dbg !2379

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.74, i64 0, i64 0), i32 5) #24, !dbg !2380
  %61 = load i8*, i8** %4, align 8, !dbg !2380, !tbaa !575
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2380
  %63 = load i8*, i8** %62, align 8, !dbg !2380, !tbaa !575
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2380
  %65 = load i8*, i8** %64, align 8, !dbg !2380, !tbaa !575
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2380
  %67 = load i8*, i8** %66, align 8, !dbg !2380, !tbaa !575
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2380
  %69 = load i8*, i8** %68, align 8, !dbg !2380, !tbaa !575
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2380
  %71 = load i8*, i8** %70, align 8, !dbg !2380, !tbaa !575
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #24, !dbg !2380
  br label %147, !dbg !2381

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.75, i64 0, i64 0), i32 5) #24, !dbg !2382
  %75 = load i8*, i8** %4, align 8, !dbg !2382, !tbaa !575
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2382
  %77 = load i8*, i8** %76, align 8, !dbg !2382, !tbaa !575
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2382
  %79 = load i8*, i8** %78, align 8, !dbg !2382, !tbaa !575
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2382
  %81 = load i8*, i8** %80, align 8, !dbg !2382, !tbaa !575
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2382
  %83 = load i8*, i8** %82, align 8, !dbg !2382, !tbaa !575
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2382
  %85 = load i8*, i8** %84, align 8, !dbg !2382, !tbaa !575
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2382
  %87 = load i8*, i8** %86, align 8, !dbg !2382, !tbaa !575
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #24, !dbg !2382
  br label %147, !dbg !2383

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.76, i64 0, i64 0), i32 5) #24, !dbg !2384
  %91 = load i8*, i8** %4, align 8, !dbg !2384, !tbaa !575
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2384
  %93 = load i8*, i8** %92, align 8, !dbg !2384, !tbaa !575
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2384
  %95 = load i8*, i8** %94, align 8, !dbg !2384, !tbaa !575
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2384
  %97 = load i8*, i8** %96, align 8, !dbg !2384, !tbaa !575
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2384
  %99 = load i8*, i8** %98, align 8, !dbg !2384, !tbaa !575
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2384
  %101 = load i8*, i8** %100, align 8, !dbg !2384, !tbaa !575
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2384
  %103 = load i8*, i8** %102, align 8, !dbg !2384, !tbaa !575
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2384
  %105 = load i8*, i8** %104, align 8, !dbg !2384, !tbaa !575
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #24, !dbg !2384
  br label %147, !dbg !2385

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.77, i64 0, i64 0), i32 5) #24, !dbg !2386
  %109 = load i8*, i8** %4, align 8, !dbg !2386, !tbaa !575
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2386
  %111 = load i8*, i8** %110, align 8, !dbg !2386, !tbaa !575
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2386
  %113 = load i8*, i8** %112, align 8, !dbg !2386, !tbaa !575
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2386
  %115 = load i8*, i8** %114, align 8, !dbg !2386, !tbaa !575
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2386
  %117 = load i8*, i8** %116, align 8, !dbg !2386, !tbaa !575
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2386
  %119 = load i8*, i8** %118, align 8, !dbg !2386, !tbaa !575
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2386
  %121 = load i8*, i8** %120, align 8, !dbg !2386, !tbaa !575
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2386
  %123 = load i8*, i8** %122, align 8, !dbg !2386, !tbaa !575
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2386
  %125 = load i8*, i8** %124, align 8, !dbg !2386, !tbaa !575
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #24, !dbg !2386
  br label %147, !dbg !2387

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.78, i64 0, i64 0), i32 5) #24, !dbg !2388
  %129 = load i8*, i8** %4, align 8, !dbg !2388, !tbaa !575
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2388
  %131 = load i8*, i8** %130, align 8, !dbg !2388, !tbaa !575
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2388
  %133 = load i8*, i8** %132, align 8, !dbg !2388, !tbaa !575
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2388
  %135 = load i8*, i8** %134, align 8, !dbg !2388, !tbaa !575
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2388
  %137 = load i8*, i8** %136, align 8, !dbg !2388, !tbaa !575
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2388
  %139 = load i8*, i8** %138, align 8, !dbg !2388, !tbaa !575
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2388
  %141 = load i8*, i8** %140, align 8, !dbg !2388, !tbaa !575
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2388
  %143 = load i8*, i8** %142, align 8, !dbg !2388, !tbaa !575
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2388
  %145 = load i8*, i8** %144, align 8, !dbg !2388, !tbaa !575
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #24, !dbg !2388
  br label %147, !dbg !2389

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2390
}

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #9 !dbg !2391 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2395, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i8* %1, metadata !2396, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i8* %2, metadata !2397, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i8* %3, metadata !2398, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i8** %4, metadata !2399, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i64 0, metadata !2400, metadata !DIExpression()), !dbg !2401
  br label %6, !dbg !2402

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2404
  call void @llvm.dbg.value(metadata i64 %7, metadata !2400, metadata !DIExpression()), !dbg !2401
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2405
  %9 = load i8*, i8** %8, align 8, !dbg !2405, !tbaa !575
  %10 = icmp eq i8* %9, null, !dbg !2407
  %11 = add i64 %7, 1, !dbg !2408
  call void @llvm.dbg.value(metadata i64 %11, metadata !2400, metadata !DIExpression()), !dbg !2401
  br i1 %10, label %12, label %6, !dbg !2407, !llvm.loop !2409

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2411
  ret void, !dbg !2412
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #9 !dbg !2413 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2424, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i8* %1, metadata !2425, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i8* %2, metadata !2426, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i8* %3, metadata !2427, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2428, metadata !DIExpression()), !dbg !2432
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2433
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #24, !dbg !2433
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2430, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata i64 0, metadata !2429, metadata !DIExpression()), !dbg !2432
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !2429, metadata !DIExpression()), !dbg !2432
  %11 = load i32, i32* %8, align 8, !dbg !2435
  %12 = icmp ult i32 %11, 41, !dbg !2435
  br i1 %12, label %13, label %18, !dbg !2435

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2435
  %15 = zext i32 %11 to i64, !dbg !2435
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2435
  %17 = add nuw nsw i32 %11, 8, !dbg !2435
  store i32 %17, i32* %8, align 8, !dbg !2435
  br label %21, !dbg !2435

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2435
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2435
  store i8* %20, i8** %9, align 8, !dbg !2435
  br label %21, !dbg !2435

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2435
  %25 = load i8*, i8** %24, align 8, !dbg !2435
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2438
  store i8* %25, i8** %26, align 16, !dbg !2439, !tbaa !575
  %27 = icmp eq i8* %25, null, !dbg !2440
  br i1 %27, label %30, label %28, !dbg !2441

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2429, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i64 1, metadata !2429, metadata !DIExpression()), !dbg !2432
  %29 = icmp ult i32 %22, 41, !dbg !2435
  br i1 %29, label %35, label %32, !dbg !2435

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2442
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2443
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #24, !dbg !2444
  ret void, !dbg !2444

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2435
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2435
  store i8* %34, i8** %9, align 8, !dbg !2435
  br label %40, !dbg !2435

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2435
  %37 = zext i32 %22 to i64, !dbg !2435
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2435
  %39 = add nuw nsw i32 %22, 8, !dbg !2435
  store i32 %39, i32* %8, align 8, !dbg !2435
  br label %40, !dbg !2435

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2435
  %44 = load i8*, i8** %43, align 8, !dbg !2435
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2438
  store i8* %44, i8** %45, align 8, !dbg !2439, !tbaa !575
  %46 = icmp eq i8* %44, null, !dbg !2440
  br i1 %46, label %30, label %47, !dbg !2441

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2429, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i64 2, metadata !2429, metadata !DIExpression()), !dbg !2432
  %48 = icmp ult i32 %41, 41, !dbg !2435
  br i1 %48, label %52, label %49, !dbg !2435

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2435
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2435
  store i8* %51, i8** %9, align 8, !dbg !2435
  br label %57, !dbg !2435

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2435
  %54 = zext i32 %41 to i64, !dbg !2435
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2435
  %56 = add nuw nsw i32 %41, 8, !dbg !2435
  store i32 %56, i32* %8, align 8, !dbg !2435
  br label %57, !dbg !2435

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2435
  %61 = load i8*, i8** %60, align 8, !dbg !2435
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2438
  store i8* %61, i8** %62, align 16, !dbg !2439, !tbaa !575
  %63 = icmp eq i8* %61, null, !dbg !2440
  br i1 %63, label %30, label %64, !dbg !2441

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2429, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i64 3, metadata !2429, metadata !DIExpression()), !dbg !2432
  %65 = icmp ult i32 %58, 41, !dbg !2435
  br i1 %65, label %69, label %66, !dbg !2435

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2435
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2435
  store i8* %68, i8** %9, align 8, !dbg !2435
  br label %74, !dbg !2435

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2435
  %71 = zext i32 %58 to i64, !dbg !2435
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2435
  %73 = add nuw nsw i32 %58, 8, !dbg !2435
  store i32 %73, i32* %8, align 8, !dbg !2435
  br label %74, !dbg !2435

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2435
  %78 = load i8*, i8** %77, align 8, !dbg !2435
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2438
  store i8* %78, i8** %79, align 8, !dbg !2439, !tbaa !575
  %80 = icmp eq i8* %78, null, !dbg !2440
  br i1 %80, label %30, label %81, !dbg !2441

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2429, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i64 4, metadata !2429, metadata !DIExpression()), !dbg !2432
  %82 = icmp ult i32 %75, 41, !dbg !2435
  br i1 %82, label %86, label %83, !dbg !2435

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2435
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2435
  store i8* %85, i8** %9, align 8, !dbg !2435
  br label %91, !dbg !2435

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2435
  %88 = zext i32 %75 to i64, !dbg !2435
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2435
  %90 = add nuw nsw i32 %75, 8, !dbg !2435
  store i32 %90, i32* %8, align 8, !dbg !2435
  br label %91, !dbg !2435

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2435
  %95 = load i8*, i8** %94, align 8, !dbg !2435
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2438
  store i8* %95, i8** %96, align 16, !dbg !2439, !tbaa !575
  %97 = icmp eq i8* %95, null, !dbg !2440
  br i1 %97, label %30, label %98, !dbg !2441

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2429, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i64 5, metadata !2429, metadata !DIExpression()), !dbg !2432
  %99 = icmp ult i32 %92, 41, !dbg !2435
  br i1 %99, label %103, label %100, !dbg !2435

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2435
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2435
  store i8* %102, i8** %9, align 8, !dbg !2435
  br label %108, !dbg !2435

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2435
  %105 = zext i32 %92 to i64, !dbg !2435
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2435
  %107 = add nuw nsw i32 %92, 8, !dbg !2435
  store i32 %107, i32* %8, align 8, !dbg !2435
  br label %108, !dbg !2435

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2435
  %111 = load i8*, i8** %110, align 8, !dbg !2435
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2438
  store i8* %111, i8** %112, align 8, !dbg !2439, !tbaa !575
  %113 = icmp eq i8* %111, null, !dbg !2440
  br i1 %113, label %30, label %114, !dbg !2441

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2429, metadata !DIExpression()), !dbg !2432
  %115 = load i8*, i8** %9, align 8, !dbg !2435
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2435
  store i8* %116, i8** %9, align 8, !dbg !2435
  %117 = bitcast i8* %115 to i8**, !dbg !2435
  %118 = load i8*, i8** %117, align 8, !dbg !2435
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2438
  store i8* %118, i8** %119, align 16, !dbg !2439, !tbaa !575
  %120 = icmp eq i8* %118, null, !dbg !2440
  br i1 %120, label %30, label %121, !dbg !2441

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2429, metadata !DIExpression()), !dbg !2432
  %122 = load i8*, i8** %9, align 8, !dbg !2435
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2435
  store i8* %123, i8** %9, align 8, !dbg !2435
  %124 = bitcast i8* %122 to i8**, !dbg !2435
  %125 = load i8*, i8** %124, align 8, !dbg !2435
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2438
  store i8* %125, i8** %126, align 8, !dbg !2439, !tbaa !575
  %127 = icmp eq i8* %125, null, !dbg !2440
  br i1 %127, label %30, label %128, !dbg !2441

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2429, metadata !DIExpression()), !dbg !2432
  %129 = load i8*, i8** %9, align 8, !dbg !2435
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2435
  store i8* %130, i8** %9, align 8, !dbg !2435
  %131 = bitcast i8* %129 to i8**, !dbg !2435
  %132 = load i8*, i8** %131, align 8, !dbg !2435
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2438
  store i8* %132, i8** %133, align 16, !dbg !2439, !tbaa !575
  %134 = icmp eq i8* %132, null, !dbg !2440
  br i1 %134, label %30, label %135, !dbg !2441

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2429, metadata !DIExpression()), !dbg !2432
  %136 = load i8*, i8** %9, align 8, !dbg !2435
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2435
  store i8* %137, i8** %9, align 8, !dbg !2435
  %138 = bitcast i8* %136 to i8**, !dbg !2435
  %139 = load i8*, i8** %138, align 8, !dbg !2435
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2438
  store i8* %139, i8** %140, align 8, !dbg !2439, !tbaa !575
  %141 = icmp eq i8* %139, null, !dbg !2440
  %142 = select i1 %141, i64 9, i64 10, !dbg !2441
  br label %30, !dbg !2441
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #9 !dbg !2445 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2449, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8* %1, metadata !2450, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8* %2, metadata !2451, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8* %3, metadata !2452, metadata !DIExpression()), !dbg !2459
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2460
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #24, !dbg !2460
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2453, metadata !DIExpression()), !dbg !2461
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2462
  call void @llvm.va_start(i8* nonnull %6), !dbg !2462
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2463
  call void @llvm.va_end(i8* nonnull %6), !dbg !2464
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #24, !dbg !2465
  ret void, !dbg !2465
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #21

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #9 !dbg !2466 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2467, !tbaa !575
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.66, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2467
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.81, i64 0, i64 0), i32 5) #24, !dbg !2468
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.82, i64 0, i64 0)) #24, !dbg !2468
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.83, i64 0, i64 0), i32 5) #24, !dbg !2469
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.84, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.85, i64 0, i64 0)) #24, !dbg !2469
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.86, i64 0, i64 0), i32 5) #24, !dbg !2470
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.87, i64 0, i64 0)) #24, !dbg !2470
  ret void, !dbg !2471
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #5 !dbg !2472 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2476, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i64 %1, metadata !2477, metadata !DIExpression()), !dbg !2478
  %3 = udiv i64 9223372036854775807, %1, !dbg !2479
  %4 = icmp ult i64 %3, %0, !dbg !2479
  br i1 %4, label %5, label %6, !dbg !2481

5:                                                ; preds = %2
  tail call void @xalloc_die() #25, !dbg !2482
  unreachable, !dbg !2482

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2483
  call void @llvm.dbg.value(metadata i64 %7, metadata !2484, metadata !DIExpression()) #24, !dbg !2490
  %8 = tail call noalias i8* @malloc(i64 %7) #24, !dbg !2492
  call void @llvm.dbg.value(metadata i8* %8, metadata !2489, metadata !DIExpression()) #24, !dbg !2490
  %9 = icmp eq i8* %8, null, !dbg !2493
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !2495
  br i1 %11, label %12, label %13, !dbg !2495

12:                                               ; preds = %6
  tail call void @xalloc_die() #25, !dbg !2496
  unreachable, !dbg !2496

13:                                               ; preds = %6
  ret i8* %8, !dbg !2497
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #9 !dbg !2485 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2484, metadata !DIExpression()), !dbg !2498
  %2 = tail call noalias i8* @malloc(i64 %0) #24, !dbg !2499
  call void @llvm.dbg.value(metadata i8* %2, metadata !2489, metadata !DIExpression()), !dbg !2498
  %3 = icmp eq i8* %2, null, !dbg !2500
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2501
  br i1 %5, label %6, label %7, !dbg !2501

6:                                                ; preds = %1
  tail call void @xalloc_die() #25, !dbg !2502
  unreachable, !dbg !2502

7:                                                ; preds = %1
  ret i8* %2, !dbg !2503
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #5 !dbg !2504 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2508, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i64 %1, metadata !2509, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i64 %2, metadata !2510, metadata !DIExpression()), !dbg !2511
  %4 = udiv i64 9223372036854775807, %2, !dbg !2512
  %5 = icmp ult i64 %4, %1, !dbg !2512
  br i1 %5, label %6, label %7, !dbg !2514

6:                                                ; preds = %3
  tail call void @xalloc_die() #25, !dbg !2515
  unreachable, !dbg !2515

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2516
  call void @llvm.dbg.value(metadata i8* %0, metadata !2517, metadata !DIExpression()) #24, !dbg !2523
  call void @llvm.dbg.value(metadata i64 %8, metadata !2522, metadata !DIExpression()) #24, !dbg !2523
  %9 = icmp eq i64 %8, 0, !dbg !2525
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !2527
  br i1 %11, label %12, label %13, !dbg !2527

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #24, !dbg !2528
  br label %19, !dbg !2530

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #24, !dbg !2531
  call void @llvm.dbg.value(metadata i8* %14, metadata !2517, metadata !DIExpression()) #24, !dbg !2523
  %15 = icmp eq i8* %14, null, !dbg !2532
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !2534
  br i1 %17, label %18, label %19, !dbg !2534

18:                                               ; preds = %13
  tail call void @xalloc_die() #25, !dbg !2535
  unreachable, !dbg !2535

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2523
  ret i8* %20, !dbg !2536
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #9 !dbg !2518 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2517, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i64 %1, metadata !2522, metadata !DIExpression()), !dbg !2537
  %3 = icmp eq i64 %1, 0, !dbg !2538
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !2539
  br i1 %5, label %6, label %7, !dbg !2539

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #24, !dbg !2540
  br label %13, !dbg !2541

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #24, !dbg !2542
  call void @llvm.dbg.value(metadata i8* %8, metadata !2517, metadata !DIExpression()), !dbg !2537
  %9 = icmp eq i8* %8, null, !dbg !2543
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !2544
  br i1 %11, label %12, label %13, !dbg !2544

12:                                               ; preds = %7
  tail call void @xalloc_die() #25, !dbg !2545
  unreachable, !dbg !2545

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2537
  ret i8* %14, !dbg !2546
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #5 !dbg !141 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !146, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i64* %1, metadata !147, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i64 %2, metadata !148, metadata !DIExpression()), !dbg !2547
  %4 = load i64, i64* %1, align 8, !dbg !2548, !tbaa !1758
  call void @llvm.dbg.value(metadata i64 %4, metadata !149, metadata !DIExpression()), !dbg !2547
  %5 = icmp eq i8* %0, null, !dbg !2549
  br i1 %5, label %6, label %20, !dbg !2551

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2552
  br i1 %7, label %8, label %13, !dbg !2555

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2556
  call void @llvm.dbg.value(metadata i64 %9, metadata !149, metadata !DIExpression()), !dbg !2547
  %10 = icmp ugt i64 %2, 128, !dbg !2558
  %11 = zext i1 %10 to i64, !dbg !2558
  %12 = add nuw nsw i64 %9, %11, !dbg !2559
  call void @llvm.dbg.value(metadata i64 %12, metadata !149, metadata !DIExpression()), !dbg !2547
  br label %13, !dbg !2560

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2547
  call void @llvm.dbg.value(metadata i64 %14, metadata !149, metadata !DIExpression()), !dbg !2547
  %15 = udiv i64 9223372036854775807, %2, !dbg !2561
  %16 = icmp ult i64 %15, %14, !dbg !2561
  br i1 %16, label %19, label %17, !dbg !2563

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !149, metadata !DIExpression()), !dbg !2547
  store i64 %14, i64* %1, align 8, !dbg !2564, !tbaa !1758
  %18 = mul i64 %14, %2, !dbg !2565
  call void @llvm.dbg.value(metadata i8* %0, metadata !2517, metadata !DIExpression()) #24, !dbg !2566
  call void @llvm.dbg.value(metadata i64 %28, metadata !2522, metadata !DIExpression()) #24, !dbg !2566
  br label %31, !dbg !2568

19:                                               ; preds = %13
  tail call void @xalloc_die() #25, !dbg !2569
  unreachable, !dbg !2569

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !2570
  %22 = icmp ugt i64 %21, %4, !dbg !2573
  br i1 %22, label %24, label %23, !dbg !2574

23:                                               ; preds = %20
  tail call void @xalloc_die() #25, !dbg !2575
  unreachable, !dbg !2575

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !2576
  %26 = add nuw i64 %4, 1, !dbg !2577
  %27 = add i64 %26, %25, !dbg !2578
  call void @llvm.dbg.value(metadata i64 %27, metadata !149, metadata !DIExpression()), !dbg !2547
  store i64 %27, i64* %1, align 8, !dbg !2564, !tbaa !1758
  %28 = mul i64 %27, %2, !dbg !2565
  call void @llvm.dbg.value(metadata i8* %0, metadata !2517, metadata !DIExpression()) #24, !dbg !2566
  call void @llvm.dbg.value(metadata i64 %28, metadata !2522, metadata !DIExpression()) #24, !dbg !2566
  %29 = icmp eq i64 %28, 0, !dbg !2579
  br i1 %29, label %30, label %31, !dbg !2568

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #24, !dbg !2580
  br label %38, !dbg !2581

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #24, !dbg !2582
  call void @llvm.dbg.value(metadata i8* %33, metadata !2517, metadata !DIExpression()) #24, !dbg !2566
  %34 = icmp eq i8* %33, null, !dbg !2583
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !2584
  br i1 %36, label %37, label %38, !dbg !2584

37:                                               ; preds = %31
  tail call void @xalloc_die() #25, !dbg !2585
  unreachable, !dbg !2585

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !2566
  ret i8* %39, !dbg !2586
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #5 !dbg !2587 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2589, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata i64 %0, metadata !2484, metadata !DIExpression()) #24, !dbg !2591
  %2 = tail call noalias i8* @malloc(i64 %0) #24, !dbg !2593
  call void @llvm.dbg.value(metadata i8* %2, metadata !2489, metadata !DIExpression()) #24, !dbg !2591
  %3 = icmp eq i8* %2, null, !dbg !2594
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2595
  br i1 %5, label %6, label %7, !dbg !2595

6:                                                ; preds = %1
  tail call void @xalloc_die() #25, !dbg !2596
  unreachable, !dbg !2596

7:                                                ; preds = %1
  ret i8* %2, !dbg !2597
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #9 !dbg !2598 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2602, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i64* %1, metadata !2603, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i8* %0, metadata !146, metadata !DIExpression()) #24, !dbg !2605
  call void @llvm.dbg.value(metadata i64* %1, metadata !147, metadata !DIExpression()) #24, !dbg !2605
  call void @llvm.dbg.value(metadata i64 1, metadata !148, metadata !DIExpression()) #24, !dbg !2605
  %3 = load i64, i64* %1, align 8, !dbg !2607, !tbaa !1758
  call void @llvm.dbg.value(metadata i64 %3, metadata !149, metadata !DIExpression()) #24, !dbg !2605
  %4 = icmp eq i8* %0, null, !dbg !2608
  br i1 %4, label %5, label %10, !dbg !2609

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2610
  br i1 %6, label %17, label %7, !dbg !2611

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !149, metadata !DIExpression()) #24, !dbg !2605
  %8 = icmp slt i64 %3, 0, !dbg !2612
  br i1 %8, label %9, label %17, !dbg !2613

9:                                                ; preds = %7
  tail call void @xalloc_die() #25, !dbg !2614
  unreachable, !dbg !2614

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !2615
  br i1 %11, label %13, label %12, !dbg !2616

12:                                               ; preds = %10
  tail call void @xalloc_die() #25, !dbg !2617
  unreachable, !dbg !2617

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !2618
  %15 = add nuw nsw i64 %3, 1, !dbg !2619
  %16 = add nuw nsw i64 %15, %14, !dbg !2620
  call void @llvm.dbg.value(metadata i64 %16, metadata !149, metadata !DIExpression()) #24, !dbg !2605
  call void @llvm.dbg.value(metadata i8* %0, metadata !2517, metadata !DIExpression()) #24, !dbg !2621
  call void @llvm.dbg.value(metadata i64 %16, metadata !2522, metadata !DIExpression()) #24, !dbg !2621
  br label %17, !dbg !2623

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !2624
  store i64 %18, i64* %1, align 8, !dbg !2624, !tbaa !1758
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #24, !dbg !2625
  call void @llvm.dbg.value(metadata i8* %19, metadata !2517, metadata !DIExpression()) #24, !dbg !2621
  %20 = icmp eq i8* %19, null, !dbg !2626
  br i1 %20, label %21, label %22, !dbg !2627

21:                                               ; preds = %17
  tail call void @xalloc_die() #25, !dbg !2628
  unreachable, !dbg !2628

22:                                               ; preds = %17
  ret i8* %19, !dbg !2629
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #9 !dbg !2630 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2632, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i64 %0, metadata !2634, metadata !DIExpression()) #24, !dbg !2639
  call void @llvm.dbg.value(metadata i64 1, metadata !2637, metadata !DIExpression()) #24, !dbg !2639
  %2 = icmp slt i64 %0, 0, !dbg !2641
  br i1 %2, label %6, label %3, !dbg !2643

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #24, !dbg !2644
  call void @llvm.dbg.value(metadata i8* %4, metadata !2638, metadata !DIExpression()) #24, !dbg !2639
  %5 = icmp eq i8* %4, null, !dbg !2645
  br i1 %5, label %6, label %7, !dbg !2646

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #25, !dbg !2647
  unreachable, !dbg !2647

7:                                                ; preds = %3
  ret i8* %4, !dbg !2648
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #9 !dbg !2635 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2634, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i64 %1, metadata !2637, metadata !DIExpression()), !dbg !2649
  %3 = udiv i64 9223372036854775807, %1, !dbg !2650
  %4 = icmp ult i64 %3, %0, !dbg !2650
  br i1 %4, label %8, label %5, !dbg !2651

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #24, !dbg !2652
  call void @llvm.dbg.value(metadata i8* %6, metadata !2638, metadata !DIExpression()), !dbg !2649
  %7 = icmp eq i8* %6, null, !dbg !2653
  br i1 %7, label %8, label %9, !dbg !2654

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #25, !dbg !2655
  unreachable, !dbg !2655

9:                                                ; preds = %5
  ret i8* %6, !dbg !2656
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #9 !dbg !2657 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2663, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i64 %1, metadata !2664, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i64 %1, metadata !2484, metadata !DIExpression()) #24, !dbg !2666
  %3 = tail call noalias i8* @malloc(i64 %1) #24, !dbg !2668
  call void @llvm.dbg.value(metadata i8* %3, metadata !2489, metadata !DIExpression()) #24, !dbg !2666
  %4 = icmp eq i8* %3, null, !dbg !2669
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !2670
  br i1 %6, label %7, label %8, !dbg !2670

7:                                                ; preds = %2
  tail call void @xalloc_die() #25, !dbg !2671
  unreachable, !dbg !2671

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2672, metadata !DIExpression()) #24, !dbg !2681
  call void @llvm.dbg.value(metadata i8* %0, metadata !2679, metadata !DIExpression()) #24, !dbg !2681
  call void @llvm.dbg.value(metadata i64 %1, metadata !2680, metadata !DIExpression()) #24, !dbg !2681
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #24, !dbg !2683
  ret i8* %3, !dbg !2684
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #9 !dbg !2685 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2687, metadata !DIExpression()), !dbg !2688
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #26, !dbg !2689
  %3 = add i64 %2, 1, !dbg !2690
  call void @llvm.dbg.value(metadata i8* %0, metadata !2663, metadata !DIExpression()) #24, !dbg !2691
  call void @llvm.dbg.value(metadata i64 %3, metadata !2664, metadata !DIExpression()) #24, !dbg !2691
  call void @llvm.dbg.value(metadata i64 %3, metadata !2484, metadata !DIExpression()) #24, !dbg !2693
  %4 = tail call noalias i8* @malloc(i64 %3) #24, !dbg !2695
  call void @llvm.dbg.value(metadata i8* %4, metadata !2489, metadata !DIExpression()) #24, !dbg !2693
  %5 = icmp eq i8* %4, null, !dbg !2696
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !2697
  br i1 %7, label %8, label %9, !dbg !2697

8:                                                ; preds = %1
  tail call void @xalloc_die() #25, !dbg !2698
  unreachable, !dbg !2698

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !2672, metadata !DIExpression()) #24, !dbg !2699
  call void @llvm.dbg.value(metadata i8* %0, metadata !2679, metadata !DIExpression()) #24, !dbg !2699
  call void @llvm.dbg.value(metadata i64 %3, metadata !2680, metadata !DIExpression()) #24, !dbg !2699
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #24, !dbg !2701
  ret i8* %4, !dbg !2702
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !2703 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !2704, !tbaa !771
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.98, i64 0, i64 0), i32 5) #24, !dbg !2705
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.99, i64 0, i64 0), i8* %2) #24, !dbg !2706
  tail call void @abort() #25, !dbg !2707
  unreachable, !dbg !2707
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #23 !dbg !2708 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2710, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i64 %1, metadata !2711, metadata !DIExpression()), !dbg !2716
  %3 = icmp eq i64 %0, 0, !dbg !2717
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !2718
  br i1 %5, label %11, label %6, !dbg !2718

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !2713, metadata !DIExpression()), !dbg !2719
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !2720
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !2720
  br i1 %8, label %9, label %11, !dbg !2722

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #28, !dbg !2723
  store i32 12, i32* %10, align 4, !dbg !2725, !tbaa !771
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !2710, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i64 %12, metadata !2711, metadata !DIExpression()), !dbg !2716
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #24, !dbg !2726
  call void @llvm.dbg.value(metadata i8* %14, metadata !2712, metadata !DIExpression()), !dbg !2716
  br label %15, !dbg !2727

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !2716
  ret i8* %16, !dbg !2728
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #9 !dbg !2729 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !2745, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %1, metadata !2746, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %2, metadata !2747, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !2748, metadata !DIExpression()), !dbg !2754
  %6 = bitcast i32* %5 to i8*, !dbg !2755
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #24, !dbg !2755
  %7 = icmp eq i32* %0, null, !dbg !2756
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !2758
  call void @llvm.dbg.value(metadata i32* %8, metadata !2745, metadata !DIExpression()), !dbg !2754
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #24, !dbg !2759
  call void @llvm.dbg.value(metadata i64 %9, metadata !2749, metadata !DIExpression()), !dbg !2754
  %10 = icmp ugt i64 %9, -3, !dbg !2760
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !2761
  br i1 %12, label %13, label %18, !dbg !2761

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #24, !dbg !2762
  br i1 %14, label %18, label %15, !dbg !2763

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !2764, !tbaa !1058
  call void @llvm.dbg.value(metadata i8 %16, metadata !2751, metadata !DIExpression()), !dbg !2765
  %17 = zext i8 %16 to i32, !dbg !2766
  store i32 %17, i32* %8, align 4, !dbg !2767, !tbaa !771
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !2754
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #24, !dbg !2768
  ret i64 %19, !dbg !2768
}

; Function Attrs: nounwind
declare !dbg !2769 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #9 !dbg !2774 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2812, metadata !DIExpression()), !dbg !2817
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #24, !dbg !2818
  call void @llvm.dbg.value(metadata i1 undef, metadata !2813, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2817
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2819, metadata !DIExpression()), !dbg !2823
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !2825
  %4 = load i32, i32* %3, align 8, !dbg !2825, !tbaa !2826
  %5 = and i32 %4, 32, !dbg !2828
  %6 = icmp eq i32 %5, 0, !dbg !2828
  call void @llvm.dbg.value(metadata i1 %6, metadata !2815, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2817
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #24, !dbg !2829
  %8 = icmp eq i32 %7, 0, !dbg !2830
  call void @llvm.dbg.value(metadata i1 %8, metadata !2816, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2817
  br i1 %6, label %9, label %19, !dbg !2831

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !2833
  call void @llvm.dbg.value(metadata i1 %10, metadata !2813, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2817
  %11 = or i1 %10, %8, !dbg !2834
  %12 = xor i1 %8, true, !dbg !2834
  %13 = sext i1 %12 to i32, !dbg !2834
  br i1 %11, label %22, label %14, !dbg !2834

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #28, !dbg !2835
  %16 = load i32, i32* %15, align 4, !dbg !2835, !tbaa !771
  %17 = icmp ne i32 %16, 9, !dbg !2836
  %18 = sext i1 %17 to i32, !dbg !2837
  br label %22, !dbg !2837

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !2838

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #28, !dbg !2840
  store i32 0, i32* %21, align 4, !dbg !2842, !tbaa !771
  br label %22, !dbg !2840

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !2817
  ret i32 %23, !dbg !2843
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #9 !dbg !2844 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2848, metadata !DIExpression()), !dbg !2853
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !2854
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #24, !dbg !2854
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !2849, metadata !DIExpression()), !dbg !2855
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #24, !dbg !2856
  %5 = icmp eq i32 %4, 0, !dbg !2856
  br i1 %5, label %6, label %13, !dbg !2858

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !2859
  %8 = load i16, i16* %7, align 16, !dbg !2859
  %9 = icmp eq i16 %8, 67, !dbg !2859
  br i1 %9, label %13, label %10, !dbg !2860

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.108, i64 0, i64 0), i64 6), !dbg !2861
  %12 = icmp ne i32 %11, 0, !dbg !2862
  br label %13, !dbg !2860

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !2853
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #24, !dbg !2863
  ret i1 %14, !dbg !2863
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #9 !dbg !2864 {
  %1 = tail call i8* @nl_langinfo(i32 14) #24, !dbg !2869
  call void @llvm.dbg.value(metadata i8* %1, metadata !2868, metadata !DIExpression()), !dbg !2870
  %2 = icmp eq i8* %1, null, !dbg !2871
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.111, i64 0, i64 0), i8* %1, !dbg !2873
  call void @llvm.dbg.value(metadata i8* %3, metadata !2868, metadata !DIExpression()), !dbg !2870
  %4 = load i8, i8* %3, align 1, !dbg !2874, !tbaa !1058
  %5 = icmp eq i8 %4, 0, !dbg !2878
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.112, i64 0, i64 0), i8* %3, !dbg !2879
  call void @llvm.dbg.value(metadata i8* %6, metadata !2868, metadata !DIExpression()), !dbg !2870
  ret i8* %6, !dbg !2880
}

; Function Attrs: nounwind
declare !dbg !2881 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #9 !dbg !2884 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2888, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i8* %1, metadata !2889, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i64 %2, metadata !2890, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i32 %0, metadata !2892, metadata !DIExpression()) #24, !dbg !2901
  call void @llvm.dbg.value(metadata i8* %1, metadata !2895, metadata !DIExpression()) #24, !dbg !2901
  call void @llvm.dbg.value(metadata i64 %2, metadata !2896, metadata !DIExpression()) #24, !dbg !2901
  call void @llvm.dbg.value(metadata i32 %0, metadata !2903, metadata !DIExpression()) #24, !dbg !2909
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #24, !dbg !2911
  call void @llvm.dbg.value(metadata i8* %4, metadata !2908, metadata !DIExpression()) #24, !dbg !2909
  call void @llvm.dbg.value(metadata i8* %4, metadata !2897, metadata !DIExpression()) #24, !dbg !2901
  %5 = icmp eq i8* %4, null, !dbg !2912
  br i1 %5, label %6, label %9, !dbg !2913

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !2914
  br i1 %7, label %19, label %8, !dbg !2917

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !2918, !tbaa !1058
  br label %19, !dbg !2919

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #26, !dbg !2920
  call void @llvm.dbg.value(metadata i64 %10, metadata !2898, metadata !DIExpression()) #24, !dbg !2921
  %11 = icmp ult i64 %10, %2, !dbg !2922
  br i1 %11, label %12, label %14, !dbg !2924

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !2925
  call void @llvm.dbg.value(metadata i8* %1, metadata !2927, metadata !DIExpression()) #24, !dbg !2932
  call void @llvm.dbg.value(metadata i8* %4, metadata !2930, metadata !DIExpression()) #24, !dbg !2932
  call void @llvm.dbg.value(metadata i64 %13, metadata !2931, metadata !DIExpression()) #24, !dbg !2932
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #24, !dbg !2934
  br label %19, !dbg !2935

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !2936
  br i1 %15, label %19, label %16, !dbg !2939

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !2940
  call void @llvm.dbg.value(metadata i8* %1, metadata !2927, metadata !DIExpression()) #24, !dbg !2942
  call void @llvm.dbg.value(metadata i8* %4, metadata !2930, metadata !DIExpression()) #24, !dbg !2942
  call void @llvm.dbg.value(metadata i64 %17, metadata !2931, metadata !DIExpression()) #24, !dbg !2942
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #24, !dbg !2944
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !2945
  store i8 0, i8* %18, align 1, !dbg !2946, !tbaa !1058
  br label %19, !dbg !2947

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !2948
  ret i32 %20, !dbg !2949
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #9 !dbg !2950 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2952, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i32 %0, metadata !2903, metadata !DIExpression()) #24, !dbg !2954
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #24, !dbg !2956
  call void @llvm.dbg.value(metadata i8* %2, metadata !2908, metadata !DIExpression()) #24, !dbg !2954
  ret i8* %2, !dbg !2957
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #9 !dbg !2958 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2996, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i32 0, metadata !2997, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i32 0, metadata !2999, metadata !DIExpression()), !dbg !3000
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !3001
  call void @llvm.dbg.value(metadata i32 %2, metadata !2998, metadata !DIExpression()), !dbg !3000
  %3 = icmp slt i32 %2, 0, !dbg !3002
  br i1 %3, label %4, label %6, !dbg !3004

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3005
  br label %24, !dbg !3006

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #24, !dbg !3007
  %8 = icmp eq i32 %7, 0, !dbg !3007
  br i1 %8, label %13, label %9, !dbg !3009

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !3010
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #24, !dbg !3011
  %12 = icmp eq i64 %11, -1, !dbg !3012
  br i1 %12, label %16, label %13, !dbg !3013

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #24, !dbg !3014
  %15 = icmp eq i32 %14, 0, !dbg !3014
  br i1 %15, label %16, label %18, !dbg !3015

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !2997, metadata !DIExpression()), !dbg !3000
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3016
  call void @llvm.dbg.value(metadata i32 %21, metadata !2999, metadata !DIExpression()), !dbg !3000
  br label %24, !dbg !3017

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #28, !dbg !3018
  %20 = load i32, i32* %19, align 4, !dbg !3018, !tbaa !771
  call void @llvm.dbg.value(metadata i32 %20, metadata !2997, metadata !DIExpression()), !dbg !3000
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3016
  call void @llvm.dbg.value(metadata i32 %21, metadata !2999, metadata !DIExpression()), !dbg !3000
  %22 = icmp eq i32 %20, 0, !dbg !3019
  br i1 %22, label %24, label %23, !dbg !3017

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3021, !tbaa !771
  call void @llvm.dbg.value(metadata i32 -1, metadata !2999, metadata !DIExpression()), !dbg !3000
  br label %24, !dbg !3023

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3000
  ret i32 %25, !dbg !3024
}

; Function Attrs: nofree nounwind
declare !dbg !3025 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3028 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3029 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #9 !dbg !3033 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3071, metadata !DIExpression()), !dbg !3072
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3073
  br i1 %2, label %6, label %3, !dbg !3075

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #24, !dbg !3076
  %5 = icmp eq i32 %4, 0, !dbg !3076
  br i1 %5, label %6, label %8, !dbg !3077

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3078
  br label %17, !dbg !3079

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3080, metadata !DIExpression()) #24, !dbg !3085
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3087
  %10 = load i32, i32* %9, align 8, !dbg !3087, !tbaa !2826
  %11 = and i32 %10, 256, !dbg !3089
  %12 = icmp eq i32 %11, 0, !dbg !3089
  br i1 %12, label %15, label %13, !dbg !3090

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #24, !dbg !3091
  br label %15, !dbg !3091

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3092
  br label %17, !dbg !3093

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3072
  ret i32 %18, !dbg !3094
}

; Function Attrs: nofree nounwind
declare !dbg !3095 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #9 !dbg !3098 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3137, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata i64 %1, metadata !3138, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata i32 %2, metadata !3139, metadata !DIExpression()), !dbg !3143
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3144
  %5 = load i8*, i8** %4, align 8, !dbg !3144, !tbaa !3145
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3146
  %7 = load i8*, i8** %6, align 8, !dbg !3146, !tbaa !3147
  %8 = icmp eq i8* %5, %7, !dbg !3148
  br i1 %8, label %9, label %28, !dbg !3149

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3150
  %11 = load i8*, i8** %10, align 8, !dbg !3150, !tbaa !3151
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3152
  %13 = load i8*, i8** %12, align 8, !dbg !3152, !tbaa !3153
  %14 = icmp eq i8* %11, %13, !dbg !3154
  br i1 %14, label %15, label %28, !dbg !3155

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3156
  %17 = load i8*, i8** %16, align 8, !dbg !3156, !tbaa !3157
  %18 = icmp eq i8* %17, null, !dbg !3158
  br i1 %18, label %19, label %28, !dbg !3159

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !3160
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #24, !dbg !3161
  call void @llvm.dbg.value(metadata i64 %21, metadata !3140, metadata !DIExpression()), !dbg !3162
  %22 = icmp eq i64 %21, -1, !dbg !3163
  br i1 %22, label %30, label %23, !dbg !3165

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3166
  %25 = load i32, i32* %24, align 8, !dbg !3167, !tbaa !2826
  %26 = and i32 %25, -17, !dbg !3167
  store i32 %26, i32* %24, align 8, !dbg !3167, !tbaa !2826
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3168
  store i64 %21, i64* %27, align 8, !dbg !3169, !tbaa !3170
  br label %30, !dbg !3171

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3172
  br label %30, !dbg !3173

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3143
  ret i32 %31, !dbg !3174
}

; Function Attrs: nofree nounwind
declare !dbg !3175 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { noreturn nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nofree nosync nounwind willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree nounwind }
attributes #14 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #20 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #21 = { nofree nosync nounwind willreturn }
attributes #22 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #24 = { nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { nounwind readonly willreturn }
attributes #27 = { noreturn }
attributes #28 = { nounwind readnone willreturn }
attributes #29 = { cold }

!llvm.dbg.cu = !{!126, !2, !11, !19, !26, !34, !129, !120, !136, !153, !155, !157, !160, !162, !164, !553, !555, !557, !559}
!llvm.ident = !{!561, !561, !561, !561, !561, !561, !561, !561, !561, !561, !561, !561, !561, !561, !561, !561, !561, !561, !561}
!llvm.module.flags = !{!562, !563, !564, !565, !566}

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
!25 = distinct !DIGlobalVariable(name: "program_name", scope: !26, file: !27, line: 33, type: !6, isLocal: false, isDefinition: true)
!26 = distinct !DICompileUnit(language: DW_LANG_C99, file: !27, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !28, globals: !31, splitDebugInlining: false, nameTableKind: None)
!27 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!28 = !{!29, !30}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!31 = !{!24}
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !34, file: !35, line: 85, type: !114, isLocal: false, isDefinition: true)
!34 = distinct !DICompileUnit(language: DW_LANG_C99, file: !35, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, retainedTypes: !72, globals: !77, splitDebugInlining: false, nameTableKind: None)
!35 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!36 = !{!37, !52, !57}
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !38, line: 32, baseType: !39, size: 32, elements: !40)
!38 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!39 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!40 = !{!41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51}
!41 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!42 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!43 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!44 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!45 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!46 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!47 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!48 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!49 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!50 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!51 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !38, line: 242, baseType: !39, size: 32, elements: !53)
!53 = !{!54, !55, !56}
!54 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!56 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !58, line: 46, baseType: !39, size: 32, elements: !59)
!58 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!59 = !{!60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71}
!60 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!61 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!62 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!63 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!64 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!65 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!66 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!67 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!68 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!69 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!70 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!71 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!72 = !{!23, !73, !74, !30}
!73 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !75, line: 46, baseType: !76)
!75 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!76 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!77 = !{!32, !78, !84, !96, !98, !103, !110, !112}
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !34, file: !35, line: 101, type: !80, isLocal: false, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 320, elements: !82)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!82 = !{!83}
!83 = !DISubrange(count: 10)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !34, file: !35, line: 1052, type: !86, isLocal: false, isDefinition: true)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !35, line: 65, size: 448, elements: !87)
!87 = !{!88, !89, !90, !94, !95}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !86, file: !35, line: 68, baseType: !37, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !86, file: !35, line: 71, baseType: !23, size: 32, offset: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !86, file: !35, line: 75, baseType: !91, size: 256, offset: 64)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 256, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 8)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !86, file: !35, line: 78, baseType: !6, size: 64, offset: 320)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !86, file: !35, line: 81, baseType: !6, size: 64, offset: 384)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !34, file: !35, line: 116, type: !86, isLocal: true, isDefinition: true)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(name: "slot0", scope: !34, file: !35, line: 842, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 256)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "slotvec", scope: !34, file: !35, line: 845, type: !105, isLocal: true, isDefinition: true)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !35, line: 834, size: 128, elements: !107)
!107 = !{!108, !109}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !106, file: !35, line: 836, baseType: !74, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !106, file: !35, line: 837, baseType: !30, size: 64, offset: 64)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "nslots", scope: !34, file: !35, line: 843, type: !23, isLocal: true, isDefinition: true)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "slotvec0", scope: !34, file: !35, line: 844, type: !106, isLocal: true, isDefinition: true)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 704, elements: !116)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!116 = !{!117}
!117 = !DISubrange(count: 11)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !120, file: !121, line: 26, type: !123, isLocal: false, isDefinition: true)
!120 = distinct !DICompileUnit(language: DW_LANG_C99, file: !121, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !122, splitDebugInlining: false, nameTableKind: None)
!121 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!122 = !{!118}
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 47)
!126 = distinct !DICompileUnit(language: DW_LANG_C99, file: !127, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !128, splitDebugInlining: false, nameTableKind: None)
!127 = !DIFile(filename: "src/false.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!128 = !{!30, !29}
!129 = distinct !DICompileUnit(language: DW_LANG_C99, file: !130, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !131, retainedTypes: !135, splitDebugInlining: false, nameTableKind: None)
!130 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!131 = !{!132}
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !130, line: 40, baseType: !39, size: 32, elements: !133)
!133 = !{!134}
!134 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!135 = !{!29}
!136 = distinct !DICompileUnit(language: DW_LANG_C99, file: !137, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !138, retainedTypes: !152, splitDebugInlining: false, nameTableKind: None)
!137 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!138 = !{!139}
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !141, file: !140, line: 186, baseType: !39, size: 32, elements: !150)
!140 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!141 = distinct !DISubprogram(name: "x2nrealloc", scope: !140, file: !140, line: 174, type: !142, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !145)
!142 = !DISubroutineType(types: !143)
!143 = !{!29, !29, !144, !74}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!145 = !{!146, !147, !148, !149}
!146 = !DILocalVariable(name: "p", arg: 1, scope: !141, file: !140, line: 174, type: !29)
!147 = !DILocalVariable(name: "pn", arg: 2, scope: !141, file: !140, line: 174, type: !144)
!148 = !DILocalVariable(name: "s", arg: 3, scope: !141, file: !140, line: 174, type: !74)
!149 = !DILocalVariable(name: "n", scope: !141, file: !140, line: 176, type: !74)
!150 = !{!151}
!151 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!152 = !{!74, !30, !29}
!153 = distinct !DICompileUnit(language: DW_LANG_C99, file: !154, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!154 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!155 = distinct !DICompileUnit(language: DW_LANG_C99, file: !156, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !135, splitDebugInlining: false, nameTableKind: None)
!156 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!157 = distinct !DICompileUnit(language: DW_LANG_C99, file: !158, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !159, splitDebugInlining: false, nameTableKind: None)
!158 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!159 = !{!74}
!160 = distinct !DICompileUnit(language: DW_LANG_C99, file: !161, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!161 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!162 = distinct !DICompileUnit(language: DW_LANG_C99, file: !163, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!163 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!164 = distinct !DICompileUnit(language: DW_LANG_C99, file: !165, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !166, retainedTypes: !135, splitDebugInlining: false, nameTableKind: None)
!165 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!166 = !{!167}
!167 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !168, line: 41, baseType: !39, size: 32, elements: !169)
!168 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!169 = !{!170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552}
!170 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!171 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!172 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!173 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!174 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!175 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!176 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!177 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!178 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!179 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!180 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!181 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!182 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!183 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!184 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!185 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!186 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!187 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!188 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!189 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!190 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!191 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!192 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!193 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!194 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!195 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!196 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!197 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!198 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!199 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!200 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!201 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!202 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!203 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!204 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!205 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!206 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!207 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!208 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!209 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!210 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!211 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!212 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!213 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!214 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!215 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!216 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!217 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!218 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!219 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!220 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!221 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!222 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!223 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!224 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!225 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!226 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!227 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!228 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!229 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!230 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!231 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!232 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!233 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!234 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!235 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!236 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!237 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!238 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!239 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!240 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!241 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!242 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!243 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!244 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!245 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!246 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!247 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!248 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!249 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!250 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!251 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!252 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!253 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!254 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!255 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!256 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!257 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!258 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!259 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!260 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!261 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!262 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!263 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!264 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!265 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!266 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!267 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!268 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!269 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!270 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!271 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!272 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!273 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!274 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!278 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!281 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!282 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!283 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!284 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!285 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!286 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!287 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!288 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!289 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!290 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!291 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!292 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!365 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!438 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!439 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!440 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!441 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!442 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!443 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!444 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!445 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!446 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!447 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!448 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!449 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!450 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!451 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!452 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!454 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!455 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!456 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!457 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!458 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!459 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!485 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!486 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!487 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!488 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!489 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!494 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!495 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!496 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!497 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!553 = distinct !DICompileUnit(language: DW_LANG_C99, file: !554, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !135, splitDebugInlining: false, nameTableKind: None)
!554 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!555 = distinct !DICompileUnit(language: DW_LANG_C99, file: !556, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!556 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!557 = distinct !DICompileUnit(language: DW_LANG_C99, file: !558, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !135, splitDebugInlining: false, nameTableKind: None)
!558 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!559 = distinct !DICompileUnit(language: DW_LANG_C99, file: !560, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !135, splitDebugInlining: false, nameTableKind: None)
!560 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!561 = !{!"clang version 12.0.1"}
!562 = !{i32 7, !"Dwarf Version", i32 4}
!563 = !{i32 2, !"Debug Info Version", i32 3}
!564 = !{i32 1, !"wchar_size", i32 4}
!565 = !{i32 7, !"PIC Level", i32 2}
!566 = !{i32 7, !"PIE Level", i32 2}
!567 = distinct !DISubprogram(name: "usage", scope: !568, file: !568, line: 36, type: !569, scopeLine: 37, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !571)
!568 = !DIFile(filename: "src/true.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!569 = !DISubroutineType(types: !570)
!570 = !{null, !23}
!571 = !{!572}
!572 = !DILocalVariable(name: "status", arg: 1, scope: !567, file: !568, line: 36, type: !23)
!573 = !DILocation(line: 0, scope: !567)
!574 = !DILocation(line: 38, column: 3, scope: !567)
!575 = !{!576, !576, i64 0}
!576 = !{!"any pointer", !577, i64 0}
!577 = !{!"omnipotent char", !578, i64 0}
!578 = !{!"Simple C/C++ TBAA"}
!579 = !DILocation(line: 43, column: 3, scope: !567)
!580 = !DILocation(line: 47, column: 3, scope: !567)
!581 = !DILocation(line: 48, column: 3, scope: !567)
!582 = !DILocation(line: 49, column: 3, scope: !567)
!583 = !DILocation(line: 50, column: 3, scope: !567)
!584 = !DILocation(line: 51, column: 3, scope: !567)
!585 = !DISubprogram(name: "dcgettext", scope: !586, file: !586, line: 51, type: !587, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!586 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!587 = !DISubroutineType(types: !588)
!588 = !{!30, !6, !6, !23}
!589 = !DISubprogram(name: "fputs_unlocked", scope: !590, file: !590, line: 667, type: !591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!590 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!591 = !DISubroutineType(types: !592)
!592 = !{!23, !6, !593}
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !595, line: 49, size: 1728, elements: !596)
!595 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!596 = !{!597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !612, !613, !614, !615, !619, !620, !622, !626, !629, !631, !634, !637, !638, !639, !640, !641}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !594, file: !595, line: 51, baseType: !23, size: 32)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !594, file: !595, line: 54, baseType: !30, size: 64, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !594, file: !595, line: 55, baseType: !30, size: 64, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !594, file: !595, line: 56, baseType: !30, size: 64, offset: 192)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !594, file: !595, line: 57, baseType: !30, size: 64, offset: 256)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !594, file: !595, line: 58, baseType: !30, size: 64, offset: 320)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !594, file: !595, line: 59, baseType: !30, size: 64, offset: 384)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !594, file: !595, line: 60, baseType: !30, size: 64, offset: 448)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !594, file: !595, line: 61, baseType: !30, size: 64, offset: 512)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !594, file: !595, line: 64, baseType: !30, size: 64, offset: 576)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !594, file: !595, line: 65, baseType: !30, size: 64, offset: 640)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !594, file: !595, line: 66, baseType: !30, size: 64, offset: 704)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !594, file: !595, line: 68, baseType: !610, size: 64, offset: 768)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !595, line: 36, flags: DIFlagFwdDecl)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !594, file: !595, line: 70, baseType: !593, size: 64, offset: 832)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !594, file: !595, line: 72, baseType: !23, size: 32, offset: 896)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !594, file: !595, line: 73, baseType: !23, size: 32, offset: 928)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !594, file: !595, line: 74, baseType: !616, size: 64, offset: 960)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !617, line: 152, baseType: !618)
!617 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!618 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !594, file: !595, line: 77, baseType: !73, size: 16, offset: 1024)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !594, file: !595, line: 78, baseType: !621, size: 8, offset: 1040)
!621 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !594, file: !595, line: 79, baseType: !623, size: 8, offset: 1048)
!623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !624)
!624 = !{!625}
!625 = !DISubrange(count: 1)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !594, file: !595, line: 81, baseType: !627, size: 64, offset: 1088)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !595, line: 43, baseType: null)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !594, file: !595, line: 89, baseType: !630, size: 64, offset: 1152)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !617, line: 153, baseType: !618)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !594, file: !595, line: 91, baseType: !632, size: 64, offset: 1216)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !595, line: 37, flags: DIFlagFwdDecl)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !594, file: !595, line: 92, baseType: !635, size: 64, offset: 1280)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !595, line: 38, flags: DIFlagFwdDecl)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !594, file: !595, line: 93, baseType: !593, size: 64, offset: 1344)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !594, file: !595, line: 94, baseType: !29, size: 64, offset: 1408)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !594, file: !595, line: 95, baseType: !74, size: 64, offset: 1472)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !594, file: !595, line: 96, baseType: !23, size: 32, offset: 1536)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !594, file: !595, line: 98, baseType: !642, size: 160, offset: 1568)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !643)
!643 = !{!644}
!644 = !DISubrange(count: 20)
!645 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !646, file: !646, line: 634, type: !647, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !649)
!646 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!647 = !DISubroutineType(types: !648)
!648 = !{null, !6}
!649 = !{!650, !651, !660, !661, !663}
!650 = !DILocalVariable(name: "program", arg: 1, scope: !645, file: !646, line: 634, type: !6)
!651 = !DILocalVariable(name: "infomap", scope: !645, file: !646, line: 636, type: !652)
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !653, size: 896, elements: !658)
!653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !654)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !645, file: !646, line: 636, size: 128, elements: !655)
!655 = !{!656, !657}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !654, file: !646, line: 636, baseType: !6, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !654, file: !646, line: 636, baseType: !6, size: 64, offset: 64)
!658 = !{!659}
!659 = !DISubrange(count: 7)
!660 = !DILocalVariable(name: "node", scope: !645, file: !646, line: 646, type: !6)
!661 = !DILocalVariable(name: "map_prog", scope: !645, file: !646, line: 647, type: !662)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!663 = !DILocalVariable(name: "lc_messages", scope: !645, file: !646, line: 659, type: !6)
!664 = !DILocation(line: 0, scope: !645)
!665 = !DILocation(line: 636, column: 3, scope: !645)
!666 = !DILocation(line: 636, column: 67, scope: !645)
!667 = !DILocation(line: 647, column: 36, scope: !645)
!668 = !DILocation(line: 649, column: 3, scope: !645)
!669 = !DILocation(line: 649, column: 33, scope: !645)
!670 = !DILocation(line: 650, column: 13, scope: !645)
!671 = !DILocation(line: 649, column: 20, scope: !645)
!672 = !{!673, !576, i64 0}
!673 = !{!"infomap", !576, i64 0, !576, i64 8}
!674 = !DILocation(line: 649, column: 10, scope: !645)
!675 = !DILocation(line: 649, column: 28, scope: !645)
!676 = distinct !{!676, !668, !670, !677}
!677 = !{!"llvm.loop.mustprogress"}
!678 = !DILocation(line: 652, column: 17, scope: !679)
!679 = distinct !DILexicalBlock(scope: !645, file: !646, line: 652, column: 7)
!680 = !{!673, !576, i64 8}
!681 = !DILocation(line: 652, column: 7, scope: !679)
!682 = !DILocation(line: 652, column: 7, scope: !645)
!683 = !DILocation(line: 655, column: 3, scope: !645)
!684 = !DILocation(line: 659, column: 29, scope: !645)
!685 = !DILocation(line: 660, column: 7, scope: !686)
!686 = distinct !DILexicalBlock(scope: !645, file: !646, line: 660, column: 7)
!687 = !DILocation(line: 660, column: 19, scope: !686)
!688 = !DILocation(line: 660, column: 22, scope: !686)
!689 = !DILocation(line: 660, column: 7, scope: !645)
!690 = !DILocation(line: 666, column: 7, scope: !691)
!691 = distinct !DILexicalBlock(scope: !686, file: !646, line: 661, column: 5)
!692 = !DILocation(line: 668, column: 5, scope: !691)
!693 = !DILocation(line: 669, column: 3, scope: !645)
!694 = !DILocation(line: 671, column: 3, scope: !645)
!695 = !DILocation(line: 673, column: 1, scope: !645)
!696 = !DISubprogram(name: "setlocale", scope: !697, file: !697, line: 122, type: !698, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!697 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!698 = !DISubroutineType(types: !699)
!699 = !{!30, !23, !6}
!700 = distinct !DISubprogram(name: "main", scope: !568, file: !568, line: 55, type: !701, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !704)
!701 = !DISubroutineType(types: !702)
!702 = !{!23, !23, !703}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!704 = !{!705, !706}
!705 = !DILocalVariable(name: "argc", arg: 1, scope: !700, file: !568, line: 55, type: !23)
!706 = !DILocalVariable(name: "argv", arg: 2, scope: !700, file: !568, line: 55, type: !703)
!707 = !DILocation(line: 0, scope: !700)
!708 = !DILocation(line: 59, column: 12, scope: !709)
!709 = distinct !DILexicalBlock(scope: !700, file: !568, line: 59, column: 7)
!710 = !DILocation(line: 59, column: 7, scope: !700)
!711 = !DILocation(line: 62, column: 25, scope: !712)
!712 = distinct !DILexicalBlock(scope: !709, file: !568, line: 60, column: 5)
!713 = !DILocation(line: 62, column: 7, scope: !712)
!714 = !DILocation(line: 63, column: 7, scope: !712)
!715 = !DILocation(line: 64, column: 7, scope: !712)
!716 = !DILocation(line: 65, column: 7, scope: !712)
!717 = !DILocation(line: 69, column: 7, scope: !712)
!718 = !DILocation(line: 71, column: 11, scope: !719)
!719 = distinct !DILexicalBlock(scope: !712, file: !568, line: 71, column: 11)
!720 = !DILocation(line: 71, column: 11, scope: !712)
!721 = !DILocation(line: 72, column: 9, scope: !719)
!722 = !DILocation(line: 74, column: 11, scope: !723)
!723 = distinct !DILexicalBlock(scope: !712, file: !568, line: 74, column: 11)
!724 = !DILocation(line: 74, column: 11, scope: !712)
!725 = !DILocation(line: 75, column: 22, scope: !723)
!726 = !DILocation(line: 75, column: 58, scope: !723)
!727 = !DILocation(line: 75, column: 9, scope: !723)
!728 = !DILocation(line: 79, column: 3, scope: !700)
!729 = !DISubprogram(name: "bindtextdomain", scope: !586, file: !586, line: 86, type: !730, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!730 = !DISubroutineType(types: !731)
!731 = !{!30, !6, !6}
!732 = !DISubprogram(name: "textdomain", scope: !586, file: !586, line: 82, type: !733, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!733 = !DISubroutineType(types: !734)
!734 = !{!30, !6}
!735 = !DISubprogram(name: "atexit", scope: !736, file: !736, line: 595, type: !737, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!736 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!737 = !DISubroutineType(types: !738)
!738 = !{!23, !739}
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{null}
!742 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !12, file: !12, line: 51, type: !647, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !743)
!743 = !{!744}
!744 = !DILocalVariable(name: "file", arg: 1, scope: !742, file: !12, line: 51, type: !6)
!745 = !DILocation(line: 0, scope: !742)
!746 = !DILocation(line: 53, column: 13, scope: !742)
!747 = !DILocation(line: 54, column: 1, scope: !742)
!748 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !12, file: !12, line: 88, type: !749, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !751)
!749 = !DISubroutineType(types: !750)
!750 = !{null, !16}
!751 = !{!752}
!752 = !DILocalVariable(name: "ignore", arg: 1, scope: !748, file: !12, line: 88, type: !16)
!753 = !DILocation(line: 0, scope: !748)
!754 = !DILocation(line: 90, column: 16, scope: !748)
!755 = !{!756, !756, i64 0}
!756 = !{!"_Bool", !577, i64 0}
!757 = !DILocation(line: 91, column: 1, scope: !748)
!758 = distinct !DISubprogram(name: "close_stdout", scope: !12, file: !12, line: 117, type: !740, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !759)
!759 = !{!760}
!760 = !DILocalVariable(name: "write_error", scope: !761, file: !12, line: 122, type: !6)
!761 = distinct !DILexicalBlock(scope: !762, file: !12, line: 121, column: 5)
!762 = distinct !DILexicalBlock(scope: !758, file: !12, line: 119, column: 7)
!763 = !DILocation(line: 119, column: 21, scope: !762)
!764 = !DILocation(line: 119, column: 7, scope: !762)
!765 = !DILocation(line: 119, column: 29, scope: !762)
!766 = !DILocation(line: 120, column: 7, scope: !762)
!767 = !DILocation(line: 120, column: 12, scope: !762)
!768 = !{i8 0, i8 2}
!769 = !DILocation(line: 120, column: 25, scope: !762)
!770 = !DILocation(line: 120, column: 28, scope: !762)
!771 = !{!772, !772, i64 0}
!772 = !{!"int", !577, i64 0}
!773 = !DILocation(line: 120, column: 34, scope: !762)
!774 = !DILocation(line: 119, column: 7, scope: !758)
!775 = !DILocation(line: 122, column: 33, scope: !761)
!776 = !DILocation(line: 0, scope: !761)
!777 = !DILocation(line: 123, column: 11, scope: !778)
!778 = distinct !DILexicalBlock(scope: !761, file: !12, line: 123, column: 11)
!779 = !DILocation(line: 0, scope: !778)
!780 = !DILocation(line: 123, column: 11, scope: !761)
!781 = !DILocation(line: 124, column: 36, scope: !778)
!782 = !DILocation(line: 124, column: 9, scope: !778)
!783 = !DILocation(line: 127, column: 9, scope: !778)
!784 = !DILocation(line: 129, column: 14, scope: !761)
!785 = !DILocation(line: 129, column: 7, scope: !761)
!786 = !DILocation(line: 134, column: 42, scope: !787)
!787 = distinct !DILexicalBlock(scope: !758, file: !12, line: 134, column: 7)
!788 = !DILocation(line: 134, column: 28, scope: !787)
!789 = !DILocation(line: 134, column: 50, scope: !787)
!790 = !DILocation(line: 134, column: 7, scope: !758)
!791 = !DILocation(line: 135, column: 12, scope: !787)
!792 = !DILocation(line: 135, column: 5, scope: !787)
!793 = !DILocation(line: 136, column: 1, scope: !758)
!794 = !DISubprogram(name: "error", scope: !795, file: !795, line: 52, type: !796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!795 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!796 = !DISubroutineType(types: !797)
!797 = !{null, !23, !23, !6, null}
!798 = distinct !DISubprogram(name: "set_program_name", scope: !27, file: !27, line: 39, type: !647, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !799)
!799 = !{!800, !801, !802}
!800 = !DILocalVariable(name: "argv0", arg: 1, scope: !798, file: !27, line: 39, type: !6)
!801 = !DILocalVariable(name: "slash", scope: !798, file: !27, line: 46, type: !6)
!802 = !DILocalVariable(name: "base", scope: !798, file: !27, line: 47, type: !6)
!803 = !DILocation(line: 0, scope: !798)
!804 = !DILocation(line: 51, column: 13, scope: !805)
!805 = distinct !DILexicalBlock(scope: !798, file: !27, line: 51, column: 7)
!806 = !DILocation(line: 51, column: 7, scope: !798)
!807 = !DILocation(line: 55, column: 14, scope: !808)
!808 = distinct !DILexicalBlock(scope: !805, file: !27, line: 52, column: 5)
!809 = !DILocation(line: 54, column: 7, scope: !808)
!810 = !DILocation(line: 56, column: 7, scope: !808)
!811 = !DILocation(line: 59, column: 11, scope: !798)
!812 = !DILocation(line: 60, column: 17, scope: !798)
!813 = !DILocation(line: 60, column: 11, scope: !798)
!814 = !DILocation(line: 61, column: 12, scope: !815)
!815 = distinct !DILexicalBlock(scope: !798, file: !27, line: 61, column: 7)
!816 = !DILocation(line: 61, column: 20, scope: !815)
!817 = !DILocation(line: 61, column: 25, scope: !815)
!818 = !DILocation(line: 61, column: 42, scope: !815)
!819 = !DILocation(line: 61, column: 28, scope: !815)
!820 = !DILocation(line: 61, column: 61, scope: !815)
!821 = !DILocation(line: 61, column: 7, scope: !798)
!822 = !DILocation(line: 64, column: 11, scope: !823)
!823 = distinct !DILexicalBlock(scope: !824, file: !27, line: 64, column: 11)
!824 = distinct !DILexicalBlock(scope: !815, file: !27, line: 62, column: 5)
!825 = !DILocation(line: 64, column: 36, scope: !823)
!826 = !DILocation(line: 64, column: 11, scope: !824)
!827 = !DILocation(line: 66, column: 24, scope: !828)
!828 = distinct !DILexicalBlock(scope: !823, file: !27, line: 65, column: 9)
!829 = !DILocation(line: 70, column: 41, scope: !828)
!830 = !DILocation(line: 72, column: 9, scope: !828)
!831 = !DILocation(line: 84, column: 16, scope: !798)
!832 = !DILocation(line: 90, column: 27, scope: !798)
!833 = !DILocation(line: 92, column: 1, scope: !798)
!834 = distinct !DISubprogram(name: "clone_quoting_options", scope: !35, file: !35, line: 122, type: !835, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !838)
!835 = !DISubroutineType(types: !836)
!836 = !{!837, !837}
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!838 = !{!839, !840, !841}
!839 = !DILocalVariable(name: "o", arg: 1, scope: !834, file: !35, line: 122, type: !837)
!840 = !DILocalVariable(name: "e", scope: !834, file: !35, line: 124, type: !23)
!841 = !DILocalVariable(name: "p", scope: !834, file: !35, line: 125, type: !837)
!842 = !DILocation(line: 0, scope: !834)
!843 = !DILocation(line: 124, column: 11, scope: !834)
!844 = !DILocation(line: 125, column: 40, scope: !834)
!845 = !DILocation(line: 125, column: 31, scope: !834)
!846 = !DILocation(line: 127, column: 9, scope: !834)
!847 = !DILocation(line: 128, column: 3, scope: !834)
!848 = distinct !DISubprogram(name: "get_quoting_style", scope: !35, file: !35, line: 133, type: !849, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !853)
!849 = !DISubroutineType(types: !850)
!850 = !{!37, !851}
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!853 = !{!854}
!854 = !DILocalVariable(name: "o", arg: 1, scope: !848, file: !35, line: 133, type: !851)
!855 = !DILocation(line: 0, scope: !848)
!856 = !DILocation(line: 135, column: 11, scope: !848)
!857 = !DILocation(line: 135, column: 46, scope: !848)
!858 = !{!859, !577, i64 0}
!859 = !{!"quoting_options", !577, i64 0, !772, i64 4, !577, i64 8, !576, i64 40, !576, i64 48}
!860 = !DILocation(line: 135, column: 3, scope: !848)
!861 = distinct !DISubprogram(name: "set_quoting_style", scope: !35, file: !35, line: 141, type: !862, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !864)
!862 = !DISubroutineType(types: !863)
!863 = !{null, !837, !37}
!864 = !{!865, !866}
!865 = !DILocalVariable(name: "o", arg: 1, scope: !861, file: !35, line: 141, type: !837)
!866 = !DILocalVariable(name: "s", arg: 2, scope: !861, file: !35, line: 141, type: !37)
!867 = !DILocation(line: 0, scope: !861)
!868 = !DILocation(line: 143, column: 4, scope: !861)
!869 = !DILocation(line: 143, column: 39, scope: !861)
!870 = !DILocation(line: 143, column: 45, scope: !861)
!871 = !DILocation(line: 144, column: 1, scope: !861)
!872 = distinct !DISubprogram(name: "set_char_quoting", scope: !35, file: !35, line: 152, type: !873, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !875)
!873 = !DISubroutineType(types: !874)
!874 = !{!23, !837, !8, !23}
!875 = !{!876, !877, !878, !879, !881, !883, !884}
!876 = !DILocalVariable(name: "o", arg: 1, scope: !872, file: !35, line: 152, type: !837)
!877 = !DILocalVariable(name: "c", arg: 2, scope: !872, file: !35, line: 152, type: !8)
!878 = !DILocalVariable(name: "i", arg: 3, scope: !872, file: !35, line: 152, type: !23)
!879 = !DILocalVariable(name: "uc", scope: !872, file: !35, line: 154, type: !880)
!880 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!881 = !DILocalVariable(name: "p", scope: !872, file: !35, line: 155, type: !882)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!883 = !DILocalVariable(name: "shift", scope: !872, file: !35, line: 157, type: !23)
!884 = !DILocalVariable(name: "r", scope: !872, file: !35, line: 158, type: !23)
!885 = !DILocation(line: 0, scope: !872)
!886 = !DILocation(line: 156, column: 6, scope: !872)
!887 = !DILocation(line: 156, column: 62, scope: !872)
!888 = !DILocation(line: 156, column: 57, scope: !872)
!889 = !DILocation(line: 157, column: 15, scope: !872)
!890 = !DILocation(line: 158, column: 12, scope: !872)
!891 = !DILocation(line: 158, column: 15, scope: !872)
!892 = !DILocation(line: 158, column: 25, scope: !872)
!893 = !DILocation(line: 159, column: 13, scope: !872)
!894 = !DILocation(line: 159, column: 18, scope: !872)
!895 = !DILocation(line: 159, column: 23, scope: !872)
!896 = !DILocation(line: 159, column: 6, scope: !872)
!897 = !DILocation(line: 160, column: 3, scope: !872)
!898 = distinct !DISubprogram(name: "set_quoting_flags", scope: !35, file: !35, line: 168, type: !899, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !901)
!899 = !DISubroutineType(types: !900)
!900 = !{!23, !837, !23}
!901 = !{!902, !903, !904}
!902 = !DILocalVariable(name: "o", arg: 1, scope: !898, file: !35, line: 168, type: !837)
!903 = !DILocalVariable(name: "i", arg: 2, scope: !898, file: !35, line: 168, type: !23)
!904 = !DILocalVariable(name: "r", scope: !898, file: !35, line: 170, type: !23)
!905 = !DILocation(line: 0, scope: !898)
!906 = !DILocation(line: 171, column: 8, scope: !907)
!907 = distinct !DILexicalBlock(scope: !898, file: !35, line: 171, column: 7)
!908 = !DILocation(line: 171, column: 7, scope: !898)
!909 = !DILocation(line: 173, column: 10, scope: !898)
!910 = !{!859, !772, i64 4}
!911 = !DILocation(line: 174, column: 12, scope: !898)
!912 = !DILocation(line: 175, column: 3, scope: !898)
!913 = distinct !DISubprogram(name: "set_custom_quoting", scope: !35, file: !35, line: 179, type: !914, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !916)
!914 = !DISubroutineType(types: !915)
!915 = !{null, !837, !6, !6}
!916 = !{!917, !918, !919}
!917 = !DILocalVariable(name: "o", arg: 1, scope: !913, file: !35, line: 179, type: !837)
!918 = !DILocalVariable(name: "left_quote", arg: 2, scope: !913, file: !35, line: 180, type: !6)
!919 = !DILocalVariable(name: "right_quote", arg: 3, scope: !913, file: !35, line: 180, type: !6)
!920 = !DILocation(line: 0, scope: !913)
!921 = !DILocation(line: 182, column: 8, scope: !922)
!922 = distinct !DILexicalBlock(scope: !913, file: !35, line: 182, column: 7)
!923 = !DILocation(line: 182, column: 7, scope: !913)
!924 = !DILocation(line: 184, column: 6, scope: !913)
!925 = !DILocation(line: 184, column: 12, scope: !913)
!926 = !DILocation(line: 185, column: 8, scope: !927)
!927 = distinct !DILexicalBlock(scope: !913, file: !35, line: 185, column: 7)
!928 = !DILocation(line: 185, column: 19, scope: !927)
!929 = !DILocation(line: 186, column: 5, scope: !927)
!930 = !DILocation(line: 187, column: 6, scope: !913)
!931 = !DILocation(line: 187, column: 17, scope: !913)
!932 = !{!859, !576, i64 40}
!933 = !DILocation(line: 188, column: 6, scope: !913)
!934 = !DILocation(line: 188, column: 18, scope: !913)
!935 = !{!859, !576, i64 48}
!936 = !DILocation(line: 189, column: 1, scope: !913)
!937 = distinct !DISubprogram(name: "quotearg_buffer", scope: !35, file: !35, line: 784, type: !938, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !940)
!938 = !DISubroutineType(types: !939)
!939 = !{!74, !30, !74, !6, !74, !851}
!940 = !{!941, !942, !943, !944, !945, !946, !947, !948}
!941 = !DILocalVariable(name: "buffer", arg: 1, scope: !937, file: !35, line: 784, type: !30)
!942 = !DILocalVariable(name: "buffersize", arg: 2, scope: !937, file: !35, line: 784, type: !74)
!943 = !DILocalVariable(name: "arg", arg: 3, scope: !937, file: !35, line: 785, type: !6)
!944 = !DILocalVariable(name: "argsize", arg: 4, scope: !937, file: !35, line: 785, type: !74)
!945 = !DILocalVariable(name: "o", arg: 5, scope: !937, file: !35, line: 786, type: !851)
!946 = !DILocalVariable(name: "p", scope: !937, file: !35, line: 788, type: !851)
!947 = !DILocalVariable(name: "e", scope: !937, file: !35, line: 789, type: !23)
!948 = !DILocalVariable(name: "r", scope: !937, file: !35, line: 790, type: !74)
!949 = !DILocation(line: 0, scope: !937)
!950 = !DILocation(line: 788, column: 37, scope: !937)
!951 = !DILocation(line: 789, column: 11, scope: !937)
!952 = !DILocation(line: 791, column: 43, scope: !937)
!953 = !DILocation(line: 791, column: 53, scope: !937)
!954 = !DILocation(line: 791, column: 60, scope: !937)
!955 = !DILocation(line: 792, column: 43, scope: !937)
!956 = !DILocation(line: 792, column: 58, scope: !937)
!957 = !DILocation(line: 790, column: 14, scope: !937)
!958 = !DILocation(line: 793, column: 9, scope: !937)
!959 = !DILocation(line: 794, column: 3, scope: !937)
!960 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !35, file: !35, line: 256, type: !961, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !965)
!961 = !DISubroutineType(types: !962)
!962 = !{!74, !30, !74, !6, !74, !37, !23, !963, !6, !6}
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!965 = !{!966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !990, !991, !992, !993, !994, !997, !998, !1016, !1019, !1020, !1027, !1030, !1031, !1032, !1033, !1034, !1035}
!966 = !DILocalVariable(name: "buffer", arg: 1, scope: !960, file: !35, line: 256, type: !30)
!967 = !DILocalVariable(name: "buffersize", arg: 2, scope: !960, file: !35, line: 256, type: !74)
!968 = !DILocalVariable(name: "arg", arg: 3, scope: !960, file: !35, line: 257, type: !6)
!969 = !DILocalVariable(name: "argsize", arg: 4, scope: !960, file: !35, line: 257, type: !74)
!970 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !960, file: !35, line: 258, type: !37)
!971 = !DILocalVariable(name: "flags", arg: 6, scope: !960, file: !35, line: 258, type: !23)
!972 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !960, file: !35, line: 259, type: !963)
!973 = !DILocalVariable(name: "left_quote", arg: 8, scope: !960, file: !35, line: 260, type: !6)
!974 = !DILocalVariable(name: "right_quote", arg: 9, scope: !960, file: !35, line: 261, type: !6)
!975 = !DILocalVariable(name: "i", scope: !960, file: !35, line: 263, type: !74)
!976 = !DILocalVariable(name: "len", scope: !960, file: !35, line: 264, type: !74)
!977 = !DILocalVariable(name: "orig_buffersize", scope: !960, file: !35, line: 265, type: !74)
!978 = !DILocalVariable(name: "quote_string", scope: !960, file: !35, line: 266, type: !6)
!979 = !DILocalVariable(name: "quote_string_len", scope: !960, file: !35, line: 267, type: !74)
!980 = !DILocalVariable(name: "backslash_escapes", scope: !960, file: !35, line: 268, type: !16)
!981 = !DILocalVariable(name: "unibyte_locale", scope: !960, file: !35, line: 269, type: !16)
!982 = !DILocalVariable(name: "elide_outer_quotes", scope: !960, file: !35, line: 270, type: !16)
!983 = !DILocalVariable(name: "pending_shell_escape_end", scope: !960, file: !35, line: 271, type: !16)
!984 = !DILocalVariable(name: "encountered_single_quote", scope: !960, file: !35, line: 272, type: !16)
!985 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !960, file: !35, line: 273, type: !16)
!986 = !DILocalVariable(name: "c", scope: !987, file: !35, line: 402, type: !880)
!987 = distinct !DILexicalBlock(scope: !988, file: !35, line: 401, column: 5)
!988 = distinct !DILexicalBlock(scope: !989, file: !35, line: 400, column: 3)
!989 = distinct !DILexicalBlock(scope: !960, file: !35, line: 400, column: 3)
!990 = !DILocalVariable(name: "esc", scope: !987, file: !35, line: 403, type: !880)
!991 = !DILocalVariable(name: "is_right_quote", scope: !987, file: !35, line: 404, type: !16)
!992 = !DILocalVariable(name: "escaping", scope: !987, file: !35, line: 405, type: !16)
!993 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !987, file: !35, line: 406, type: !16)
!994 = !DILocalVariable(name: "m", scope: !995, file: !35, line: 610, type: !74)
!995 = distinct !DILexicalBlock(scope: !996, file: !35, line: 608, column: 11)
!996 = distinct !DILexicalBlock(scope: !987, file: !35, line: 426, column: 9)
!997 = !DILocalVariable(name: "printable", scope: !995, file: !35, line: 612, type: !16)
!998 = !DILocalVariable(name: "mbstate", scope: !999, file: !35, line: 621, type: !1001)
!999 = distinct !DILexicalBlock(scope: !1000, file: !35, line: 620, column: 15)
!1000 = distinct !DILexicalBlock(scope: !995, file: !35, line: 614, column: 17)
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1002, line: 6, baseType: !1003)
!1002 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1004, line: 21, baseType: !1005)
!1004 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1004, line: 13, size: 64, elements: !1006)
!1006 = !{!1007, !1008}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1005, file: !1004, line: 15, baseType: !23, size: 32)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1005, file: !1004, line: 20, baseType: !1009, size: 32, offset: 32)
!1009 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1005, file: !1004, line: 16, size: 32, elements: !1010)
!1010 = !{!1011, !1012}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1009, file: !1004, line: 18, baseType: !39, size: 32)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1009, file: !1004, line: 19, baseType: !1013, size: 32)
!1013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !1014)
!1014 = !{!1015}
!1015 = !DISubrange(count: 4)
!1016 = !DILocalVariable(name: "w", scope: !1017, file: !35, line: 631, type: !1018)
!1017 = distinct !DILexicalBlock(scope: !999, file: !35, line: 630, column: 19)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !75, line: 74, baseType: !23)
!1019 = !DILocalVariable(name: "bytes", scope: !1017, file: !35, line: 632, type: !74)
!1020 = !DILocalVariable(name: "j", scope: !1021, file: !35, line: 657, type: !74)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !35, line: 656, column: 27)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !35, line: 654, column: 29)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !35, line: 649, column: 23)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !35, line: 641, column: 30)
!1025 = distinct !DILexicalBlock(scope: !1026, file: !35, line: 636, column: 30)
!1026 = distinct !DILexicalBlock(scope: !1017, file: !35, line: 634, column: 25)
!1027 = !DILocalVariable(name: "ilim", scope: !1028, file: !35, line: 684, type: !74)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !35, line: 681, column: 15)
!1029 = distinct !DILexicalBlock(scope: !995, file: !35, line: 680, column: 17)
!1030 = !DILabel(scope: !960, name: "process_input", file: !35, line: 314)
!1031 = !DILabel(scope: !996, name: "c_and_shell_escape", file: !35, line: 512)
!1032 = !DILabel(scope: !996, name: "c_escape", file: !35, line: 517)
!1033 = !DILabel(scope: !987, name: "store_escape", file: !35, line: 719)
!1034 = !DILabel(scope: !987, name: "store_c", file: !35, line: 722)
!1035 = !DILabel(scope: !960, name: "force_outer_quoting_style", file: !35, line: 763)
!1036 = !DILocation(line: 0, scope: !960)
!1037 = !DILocation(line: 269, column: 25, scope: !960)
!1038 = !DILocation(line: 269, column: 36, scope: !960)
!1039 = !DILocation(line: 270, column: 8, scope: !960)
!1040 = !DILocation(line: 273, column: 3, scope: !960)
!1041 = !DILocation(line: 265, column: 10, scope: !960)
!1042 = !DILocation(line: 266, column: 15, scope: !960)
!1043 = !DILocation(line: 267, column: 10, scope: !960)
!1044 = !DILocation(line: 268, column: 8, scope: !960)
!1045 = !DILocation(line: 271, column: 8, scope: !960)
!1046 = !DILocation(line: 272, column: 8, scope: !960)
!1047 = !DILocation(line: 273, column: 8, scope: !960)
!1048 = !DILocation(line: 314, column: 2, scope: !960)
!1049 = !DILocation(line: 316, column: 3, scope: !960)
!1050 = !DILocation(line: 323, column: 11, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !960, file: !35, line: 317, column: 5)
!1052 = !DILocation(line: 323, column: 12, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1051, file: !35, line: 323, column: 11)
!1054 = !DILocation(line: 324, column: 9, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !35, line: 324, column: 9)
!1056 = distinct !DILexicalBlock(scope: !1053, file: !35, line: 324, column: 9)
!1057 = !DILocation(line: 324, column: 9, scope: !1056)
!1058 = !{!577, !577, i64 0}
!1059 = !DILocation(line: 362, column: 26, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !35, line: 340, column: 11)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !35, line: 339, column: 13)
!1062 = distinct !DILexicalBlock(scope: !1051, file: !35, line: 338, column: 7)
!1063 = !DILocation(line: 363, column: 27, scope: !1060)
!1064 = !DILocation(line: 364, column: 11, scope: !1060)
!1065 = !DILocation(line: 365, column: 14, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1062, file: !35, line: 365, column: 13)
!1067 = !DILocation(line: 365, column: 13, scope: !1062)
!1068 = !DILocation(line: 366, column: 43, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !35, line: 366, column: 11)
!1070 = distinct !DILexicalBlock(scope: !1066, file: !35, line: 366, column: 11)
!1071 = !DILocation(line: 366, column: 11, scope: !1070)
!1072 = !DILocation(line: 367, column: 13, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !35, line: 367, column: 13)
!1074 = distinct !DILexicalBlock(scope: !1069, file: !35, line: 367, column: 13)
!1075 = !DILocation(line: 367, column: 13, scope: !1074)
!1076 = !DILocation(line: 366, column: 70, scope: !1069)
!1077 = distinct !{!1077, !1071, !1078, !677}
!1078 = !DILocation(line: 367, column: 13, scope: !1070)
!1079 = !DILocation(line: 264, column: 10, scope: !960)
!1080 = !DILocation(line: 370, column: 28, scope: !1062)
!1081 = !DILocation(line: 372, column: 7, scope: !1051)
!1082 = !DILocation(line: 376, column: 7, scope: !1051)
!1083 = !DILocation(line: 379, column: 7, scope: !1051)
!1084 = !DILocation(line: 381, column: 12, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1051, file: !35, line: 381, column: 11)
!1086 = !DILocation(line: 381, column: 11, scope: !1051)
!1087 = !DILocation(line: 386, column: 12, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1051, file: !35, line: 386, column: 11)
!1089 = !DILocation(line: 386, column: 11, scope: !1051)
!1090 = !DILocation(line: 387, column: 9, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !35, line: 387, column: 9)
!1092 = distinct !DILexicalBlock(scope: !1088, file: !35, line: 387, column: 9)
!1093 = !DILocation(line: 387, column: 9, scope: !1092)
!1094 = !DILocation(line: 394, column: 7, scope: !1051)
!1095 = !DILocation(line: 397, column: 7, scope: !1051)
!1096 = !DILocation(line: 400, column: 8, scope: !989)
!1097 = !DILocation(line: 0, scope: !989)
!1098 = !DILocation(line: 400, column: 27, scope: !988)
!1099 = !DILocation(line: 400, column: 19, scope: !988)
!1100 = !DILocation(line: 400, column: 41, scope: !988)
!1101 = !DILocation(line: 400, column: 48, scope: !988)
!1102 = !DILocation(line: 400, column: 3, scope: !989)
!1103 = !DILocation(line: 400, column: 60, scope: !988)
!1104 = !DILocation(line: 0, scope: !987)
!1105 = !DILocation(line: 409, column: 11, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !987, file: !35, line: 408, column: 11)
!1107 = !DILocation(line: 411, column: 17, scope: !1106)
!1108 = !DILocation(line: 412, column: 39, scope: !1106)
!1109 = !DILocation(line: 416, column: 32, scope: !1106)
!1110 = !DILocation(line: 412, column: 19, scope: !1106)
!1111 = !DILocation(line: 412, column: 15, scope: !1106)
!1112 = !DILocation(line: 417, column: 11, scope: !1106)
!1113 = !DILocation(line: 417, column: 26, scope: !1106)
!1114 = !DILocation(line: 417, column: 14, scope: !1106)
!1115 = !DILocation(line: 417, column: 63, scope: !1106)
!1116 = !DILocation(line: 408, column: 11, scope: !987)
!1117 = !DILocation(line: 424, column: 11, scope: !987)
!1118 = !DILocation(line: 425, column: 7, scope: !987)
!1119 = !DILocation(line: 428, column: 15, scope: !996)
!1120 = !DILocation(line: 430, column: 15, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !35, line: 430, column: 15)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !35, line: 429, column: 13)
!1123 = distinct !DILexicalBlock(scope: !996, file: !35, line: 428, column: 15)
!1124 = !DILocation(line: 430, column: 15, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1121, file: !35, line: 430, column: 15)
!1126 = !DILocation(line: 430, column: 15, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !35, line: 430, column: 15)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !35, line: 430, column: 15)
!1129 = distinct !DILexicalBlock(scope: !1125, file: !35, line: 430, column: 15)
!1130 = !DILocation(line: 430, column: 15, scope: !1128)
!1131 = !DILocation(line: 430, column: 15, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !35, line: 430, column: 15)
!1133 = distinct !DILexicalBlock(scope: !1129, file: !35, line: 430, column: 15)
!1134 = !DILocation(line: 430, column: 15, scope: !1133)
!1135 = !DILocation(line: 430, column: 15, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !35, line: 430, column: 15)
!1137 = distinct !DILexicalBlock(scope: !1129, file: !35, line: 430, column: 15)
!1138 = !DILocation(line: 430, column: 15, scope: !1137)
!1139 = !DILocation(line: 430, column: 15, scope: !1129)
!1140 = !DILocation(line: 430, column: 15, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !35, line: 430, column: 15)
!1142 = distinct !DILexicalBlock(scope: !1121, file: !35, line: 430, column: 15)
!1143 = !DILocation(line: 430, column: 15, scope: !1142)
!1144 = !DILocation(line: 438, column: 19, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1122, file: !35, line: 437, column: 19)
!1146 = !DILocation(line: 438, column: 48, scope: !1145)
!1147 = !DILocation(line: 438, column: 59, scope: !1145)
!1148 = !DILocation(line: 440, column: 19, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !35, line: 440, column: 19)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !35, line: 440, column: 19)
!1151 = distinct !DILexicalBlock(scope: !1145, file: !35, line: 439, column: 17)
!1152 = !DILocation(line: 440, column: 19, scope: !1150)
!1153 = !DILocation(line: 441, column: 19, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1155, file: !35, line: 441, column: 19)
!1155 = distinct !DILexicalBlock(scope: !1151, file: !35, line: 441, column: 19)
!1156 = !DILocation(line: 441, column: 19, scope: !1155)
!1157 = !DILocation(line: 442, column: 17, scope: !1151)
!1158 = !DILocation(line: 449, column: 20, scope: !1123)
!1159 = !DILocation(line: 454, column: 11, scope: !996)
!1160 = !DILocation(line: 457, column: 19, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !996, file: !35, line: 455, column: 13)
!1162 = !DILocation(line: 463, column: 19, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1161, file: !35, line: 462, column: 19)
!1164 = !DILocation(line: 463, column: 47, scope: !1163)
!1165 = !DILocation(line: 463, column: 41, scope: !1163)
!1166 = !DILocation(line: 463, column: 52, scope: !1163)
!1167 = !DILocation(line: 462, column: 19, scope: !1161)
!1168 = !DILocation(line: 464, column: 25, scope: !1163)
!1169 = !DILocation(line: 464, column: 17, scope: !1163)
!1170 = !DILocation(line: 471, column: 25, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1163, file: !35, line: 465, column: 19)
!1172 = !DILocation(line: 475, column: 21, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !35, line: 475, column: 21)
!1174 = distinct !DILexicalBlock(scope: !1171, file: !35, line: 475, column: 21)
!1175 = !DILocation(line: 475, column: 21, scope: !1174)
!1176 = !DILocation(line: 476, column: 21, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !35, line: 476, column: 21)
!1178 = distinct !DILexicalBlock(scope: !1171, file: !35, line: 476, column: 21)
!1179 = !DILocation(line: 476, column: 21, scope: !1178)
!1180 = !DILocation(line: 477, column: 21, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !35, line: 477, column: 21)
!1182 = distinct !DILexicalBlock(scope: !1171, file: !35, line: 477, column: 21)
!1183 = !DILocation(line: 477, column: 21, scope: !1182)
!1184 = !DILocation(line: 478, column: 21, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !35, line: 478, column: 21)
!1186 = distinct !DILexicalBlock(scope: !1171, file: !35, line: 478, column: 21)
!1187 = !DILocation(line: 478, column: 21, scope: !1186)
!1188 = !DILocation(line: 479, column: 21, scope: !1171)
!1189 = !DILocation(line: 492, column: 31, scope: !996)
!1190 = !DILocation(line: 493, column: 31, scope: !996)
!1191 = !DILocation(line: 495, column: 31, scope: !996)
!1192 = !DILocation(line: 496, column: 31, scope: !996)
!1193 = !DILocation(line: 497, column: 31, scope: !996)
!1194 = !DILocation(line: 500, column: 15, scope: !996)
!1195 = !DILocation(line: 502, column: 19, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !35, line: 501, column: 13)
!1197 = distinct !DILexicalBlock(scope: !996, file: !35, line: 500, column: 15)
!1198 = !DILocation(line: 509, column: 33, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !996, file: !35, line: 509, column: 15)
!1200 = !DILocation(line: 0, scope: !996)
!1201 = !DILocation(line: 512, column: 9, scope: !996)
!1202 = !DILocation(line: 514, column: 15, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !996, file: !35, line: 513, column: 15)
!1204 = !DILocation(line: 517, column: 9, scope: !996)
!1205 = !DILocation(line: 518, column: 15, scope: !996)
!1206 = !DILocation(line: 526, column: 15, scope: !996)
!1207 = !DILocation(line: 526, column: 40, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !996, file: !35, line: 526, column: 15)
!1209 = !DILocation(line: 526, column: 47, scope: !1208)
!1210 = !DILocation(line: 526, column: 18, scope: !1208)
!1211 = !DILocation(line: 530, column: 17, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !996, file: !35, line: 530, column: 15)
!1213 = !DILocation(line: 530, column: 15, scope: !996)
!1214 = !DILocation(line: 535, column: 11, scope: !996)
!1215 = !DILocation(line: 549, column: 15, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !996, file: !35, line: 548, column: 15)
!1217 = !DILocation(line: 556, column: 15, scope: !996)
!1218 = !DILocation(line: 558, column: 19, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !35, line: 557, column: 13)
!1220 = distinct !DILexicalBlock(scope: !996, file: !35, line: 556, column: 15)
!1221 = !DILocation(line: 561, column: 19, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1219, file: !35, line: 561, column: 19)
!1223 = !DILocation(line: 561, column: 30, scope: !1222)
!1224 = !DILocation(line: 570, column: 15, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !35, line: 570, column: 15)
!1226 = distinct !DILexicalBlock(scope: !1219, file: !35, line: 570, column: 15)
!1227 = !DILocation(line: 570, column: 15, scope: !1226)
!1228 = !DILocation(line: 571, column: 15, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !35, line: 571, column: 15)
!1230 = distinct !DILexicalBlock(scope: !1219, file: !35, line: 571, column: 15)
!1231 = !DILocation(line: 571, column: 15, scope: !1230)
!1232 = !DILocation(line: 572, column: 15, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !35, line: 572, column: 15)
!1234 = distinct !DILexicalBlock(scope: !1219, file: !35, line: 572, column: 15)
!1235 = !DILocation(line: 572, column: 15, scope: !1234)
!1236 = !DILocation(line: 574, column: 13, scope: !1219)
!1237 = !DILocation(line: 614, column: 17, scope: !995)
!1238 = !DILocation(line: 0, scope: !995)
!1239 = !DILocation(line: 617, column: 29, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1000, file: !35, line: 615, column: 15)
!1241 = !{!1242, !1242, i64 0}
!1242 = !{!"short", !577, i64 0}
!1243 = !DILocation(line: 617, column: 27, scope: !1240)
!1244 = !DILocation(line: 678, column: 40, scope: !995)
!1245 = !DILocation(line: 680, column: 23, scope: !1029)
!1246 = !DILocation(line: 621, column: 17, scope: !999)
!1247 = !DILocation(line: 621, column: 27, scope: !999)
!1248 = !DILocalVariable(name: "__dest", arg: 1, scope: !1249, file: !1250, line: 57, type: !29)
!1249 = distinct !DISubprogram(name: "memset", scope: !1250, file: !1250, line: 57, type: !1251, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1253)
!1250 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!29, !29, !23, !74}
!1253 = !{!1248, !1254, !1255}
!1254 = !DILocalVariable(name: "__ch", arg: 2, scope: !1249, file: !1250, line: 57, type: !23)
!1255 = !DILocalVariable(name: "__len", arg: 3, scope: !1249, file: !1250, line: 57, type: !74)
!1256 = !DILocation(line: 0, scope: !1249, inlinedAt: !1257)
!1257 = distinct !DILocation(line: 622, column: 17, scope: !999)
!1258 = !DILocation(line: 59, column: 10, scope: !1249, inlinedAt: !1257)
!1259 = !DILocation(line: 626, column: 29, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !999, file: !35, line: 626, column: 21)
!1261 = !DILocation(line: 626, column: 21, scope: !999)
!1262 = !DILocation(line: 627, column: 29, scope: !1260)
!1263 = !DILocation(line: 627, column: 19, scope: !1260)
!1264 = !DILocation(line: 629, column: 17, scope: !999)
!1265 = !DILocation(line: 624, column: 19, scope: !999)
!1266 = !DILocation(line: 625, column: 27, scope: !999)
!1267 = !DILocation(line: 631, column: 21, scope: !1017)
!1268 = !DILocation(line: 632, column: 56, scope: !1017)
!1269 = !DILocation(line: 632, column: 50, scope: !1017)
!1270 = !DILocation(line: 633, column: 53, scope: !1017)
!1271 = !DILocation(line: 0, scope: !1017)
!1272 = !DILocation(line: 632, column: 36, scope: !1017)
!1273 = !DILocation(line: 634, column: 25, scope: !1017)
!1274 = !DILocation(line: 644, column: 38, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1024, file: !35, line: 642, column: 23)
!1276 = !DILocation(line: 644, column: 48, scope: !1275)
!1277 = !DILocation(line: 644, column: 25, scope: !1275)
!1278 = !DILocation(line: 644, column: 51, scope: !1275)
!1279 = !DILocation(line: 645, column: 28, scope: !1275)
!1280 = !DILocation(line: 644, column: 34, scope: !1275)
!1281 = distinct !{!1281, !1277, !1279, !677}
!1282 = !DILocation(line: 655, column: 29, scope: !1022)
!1283 = !DILocation(line: 0, scope: !1021)
!1284 = !DILocation(line: 659, column: 49, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !35, line: 658, column: 29)
!1286 = distinct !DILexicalBlock(scope: !1021, file: !35, line: 658, column: 29)
!1287 = !DILocation(line: 659, column: 39, scope: !1285)
!1288 = !DILocation(line: 659, column: 31, scope: !1285)
!1289 = !DILocation(line: 658, column: 53, scope: !1285)
!1290 = !DILocation(line: 658, column: 43, scope: !1285)
!1291 = !DILocation(line: 658, column: 29, scope: !1286)
!1292 = distinct !{!1292, !1291, !1293, !677}
!1293 = !DILocation(line: 667, column: 33, scope: !1286)
!1294 = !DILocation(line: 674, column: 19, scope: !999)
!1295 = !DILocation(line: 670, column: 41, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1023, file: !35, line: 670, column: 29)
!1297 = !DILocation(line: 670, column: 31, scope: !1296)
!1298 = !DILocation(line: 670, column: 29, scope: !1023)
!1299 = !DILocation(line: 672, column: 27, scope: !1023)
!1300 = !DILocation(line: 675, column: 26, scope: !999)
!1301 = !DILocation(line: 675, column: 24, scope: !999)
!1302 = !DILocation(line: 674, column: 19, scope: !1017)
!1303 = distinct !{!1303, !1264, !1304, !677}
!1304 = !DILocation(line: 675, column: 44, scope: !999)
!1305 = !DILocation(line: 676, column: 15, scope: !1000)
!1306 = !DILocation(line: 680, column: 19, scope: !1029)
!1307 = !DILocation(line: 680, column: 45, scope: !1029)
!1308 = !DILocation(line: 684, column: 33, scope: !1028)
!1309 = !DILocation(line: 0, scope: !1028)
!1310 = !DILocation(line: 686, column: 17, scope: !1028)
!1311 = !DILocation(line: 405, column: 12, scope: !987)
!1312 = !DILocation(line: 688, column: 43, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !35, line: 688, column: 25)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !35, line: 687, column: 19)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !35, line: 686, column: 17)
!1316 = distinct !DILexicalBlock(scope: !1028, file: !35, line: 686, column: 17)
!1317 = !DILocation(line: 690, column: 25, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !35, line: 690, column: 25)
!1319 = distinct !DILexicalBlock(scope: !1313, file: !35, line: 689, column: 23)
!1320 = !DILocation(line: 690, column: 25, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1318, file: !35, line: 690, column: 25)
!1322 = !DILocation(line: 690, column: 25, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !35, line: 690, column: 25)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !35, line: 690, column: 25)
!1325 = distinct !DILexicalBlock(scope: !1321, file: !35, line: 690, column: 25)
!1326 = !DILocation(line: 690, column: 25, scope: !1324)
!1327 = !DILocation(line: 690, column: 25, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !35, line: 690, column: 25)
!1329 = distinct !DILexicalBlock(scope: !1325, file: !35, line: 690, column: 25)
!1330 = !DILocation(line: 690, column: 25, scope: !1329)
!1331 = !DILocation(line: 690, column: 25, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !35, line: 690, column: 25)
!1333 = distinct !DILexicalBlock(scope: !1325, file: !35, line: 690, column: 25)
!1334 = !DILocation(line: 690, column: 25, scope: !1333)
!1335 = !DILocation(line: 690, column: 25, scope: !1325)
!1336 = !DILocation(line: 690, column: 25, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !35, line: 690, column: 25)
!1338 = distinct !DILexicalBlock(scope: !1318, file: !35, line: 690, column: 25)
!1339 = !DILocation(line: 690, column: 25, scope: !1338)
!1340 = !DILocation(line: 691, column: 25, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !35, line: 691, column: 25)
!1342 = distinct !DILexicalBlock(scope: !1319, file: !35, line: 691, column: 25)
!1343 = !DILocation(line: 691, column: 25, scope: !1342)
!1344 = !DILocation(line: 692, column: 25, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !35, line: 692, column: 25)
!1346 = distinct !DILexicalBlock(scope: !1319, file: !35, line: 692, column: 25)
!1347 = !DILocation(line: 692, column: 25, scope: !1346)
!1348 = !DILocation(line: 693, column: 38, scope: !1319)
!1349 = !DILocation(line: 693, column: 33, scope: !1319)
!1350 = !DILocation(line: 694, column: 23, scope: !1319)
!1351 = !DILocation(line: 695, column: 30, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1313, file: !35, line: 695, column: 30)
!1353 = !DILocation(line: 695, column: 30, scope: !1313)
!1354 = !DILocation(line: 697, column: 25, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !35, line: 697, column: 25)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !35, line: 697, column: 25)
!1357 = distinct !DILexicalBlock(scope: !1352, file: !35, line: 696, column: 23)
!1358 = !DILocation(line: 697, column: 25, scope: !1356)
!1359 = !DILocation(line: 699, column: 23, scope: !1357)
!1360 = !DILocation(line: 700, column: 35, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1314, file: !35, line: 700, column: 25)
!1362 = !DILocation(line: 700, column: 30, scope: !1361)
!1363 = !DILocation(line: 700, column: 25, scope: !1314)
!1364 = !DILocation(line: 702, column: 21, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !35, line: 702, column: 21)
!1366 = distinct !DILexicalBlock(scope: !1314, file: !35, line: 702, column: 21)
!1367 = !DILocation(line: 702, column: 21, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !35, line: 702, column: 21)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !35, line: 702, column: 21)
!1370 = distinct !DILexicalBlock(scope: !1365, file: !35, line: 702, column: 21)
!1371 = !DILocation(line: 702, column: 21, scope: !1369)
!1372 = !DILocation(line: 702, column: 21, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !35, line: 702, column: 21)
!1374 = distinct !DILexicalBlock(scope: !1370, file: !35, line: 702, column: 21)
!1375 = !DILocation(line: 702, column: 21, scope: !1374)
!1376 = !DILocation(line: 702, column: 21, scope: !1370)
!1377 = !DILocation(line: 0, scope: !1314)
!1378 = !DILocation(line: 703, column: 21, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !35, line: 703, column: 21)
!1380 = distinct !DILexicalBlock(scope: !1314, file: !35, line: 703, column: 21)
!1381 = !DILocation(line: 703, column: 21, scope: !1380)
!1382 = !DILocation(line: 704, column: 25, scope: !1314)
!1383 = !DILocation(line: 686, column: 17, scope: !1315)
!1384 = distinct !{!1384, !1385, !1386}
!1385 = !DILocation(line: 686, column: 17, scope: !1316)
!1386 = !DILocation(line: 705, column: 19, scope: !1316)
!1387 = !DILocation(line: 416, column: 30, scope: !1106)
!1388 = !DILocation(line: 712, column: 34, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !987, file: !35, line: 712, column: 11)
!1390 = !DILocation(line: 715, column: 35, scope: !1389)
!1391 = !DILocation(line: 715, column: 17, scope: !1389)
!1392 = !DILocation(line: 715, column: 47, scope: !1389)
!1393 = !DILocation(line: 715, column: 65, scope: !1389)
!1394 = !DILocation(line: 716, column: 11, scope: !1389)
!1395 = !DILocation(line: 712, column: 11, scope: !987)
!1396 = !DILocation(line: 400, column: 10, scope: !989)
!1397 = !DILocation(line: 719, column: 5, scope: !987)
!1398 = !DILocation(line: 720, column: 7, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !987, file: !35, line: 720, column: 7)
!1400 = !DILocation(line: 720, column: 7, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1399, file: !35, line: 720, column: 7)
!1402 = !DILocation(line: 720, column: 7, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !35, line: 720, column: 7)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !35, line: 720, column: 7)
!1405 = distinct !DILexicalBlock(scope: !1401, file: !35, line: 720, column: 7)
!1406 = !DILocation(line: 720, column: 7, scope: !1404)
!1407 = !DILocation(line: 720, column: 7, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !35, line: 720, column: 7)
!1409 = distinct !DILexicalBlock(scope: !1405, file: !35, line: 720, column: 7)
!1410 = !DILocation(line: 720, column: 7, scope: !1409)
!1411 = !DILocation(line: 720, column: 7, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !35, line: 720, column: 7)
!1413 = distinct !DILexicalBlock(scope: !1405, file: !35, line: 720, column: 7)
!1414 = !DILocation(line: 720, column: 7, scope: !1413)
!1415 = !DILocation(line: 720, column: 7, scope: !1405)
!1416 = !DILocation(line: 720, column: 7, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !35, line: 720, column: 7)
!1418 = distinct !DILexicalBlock(scope: !1399, file: !35, line: 720, column: 7)
!1419 = !DILocation(line: 720, column: 7, scope: !1418)
!1420 = !DILocation(line: 722, column: 5, scope: !987)
!1421 = !DILocation(line: 723, column: 7, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !35, line: 723, column: 7)
!1423 = distinct !DILexicalBlock(scope: !987, file: !35, line: 723, column: 7)
!1424 = !DILocation(line: 424, column: 9, scope: !987)
!1425 = !DILocation(line: 723, column: 7, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !35, line: 723, column: 7)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !35, line: 723, column: 7)
!1428 = distinct !DILexicalBlock(scope: !1422, file: !35, line: 723, column: 7)
!1429 = !DILocation(line: 723, column: 7, scope: !1427)
!1430 = !DILocation(line: 723, column: 7, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !35, line: 723, column: 7)
!1432 = distinct !DILexicalBlock(scope: !1428, file: !35, line: 723, column: 7)
!1433 = !DILocation(line: 723, column: 7, scope: !1432)
!1434 = !DILocation(line: 723, column: 7, scope: !1428)
!1435 = !DILocation(line: 724, column: 7, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !35, line: 724, column: 7)
!1437 = distinct !DILexicalBlock(scope: !987, file: !35, line: 724, column: 7)
!1438 = !DILocation(line: 724, column: 7, scope: !1437)
!1439 = !DILocation(line: 726, column: 13, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !987, file: !35, line: 726, column: 11)
!1441 = !DILocation(line: 726, column: 11, scope: !987)
!1442 = !DILocation(line: 728, column: 5, scope: !988)
!1443 = !DILocation(line: 400, column: 75, scope: !988)
!1444 = !DILocation(line: 400, column: 3, scope: !988)
!1445 = distinct !{!1445, !1102, !1446, !677}
!1446 = !DILocation(line: 728, column: 5, scope: !989)
!1447 = !DILocation(line: 730, column: 11, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !960, file: !35, line: 730, column: 7)
!1449 = !DILocation(line: 730, column: 16, scope: !1448)
!1450 = !DILocation(line: 738, column: 51, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !960, file: !35, line: 738, column: 7)
!1452 = !DILocation(line: 741, column: 11, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !35, line: 741, column: 11)
!1454 = distinct !DILexicalBlock(scope: !1451, file: !35, line: 740, column: 5)
!1455 = !DILocation(line: 741, column: 11, scope: !1454)
!1456 = !DILocation(line: 742, column: 16, scope: !1453)
!1457 = !DILocation(line: 742, column: 9, scope: !1453)
!1458 = !DILocation(line: 746, column: 18, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1453, file: !35, line: 746, column: 16)
!1460 = !DILocation(line: 746, column: 29, scope: !1459)
!1461 = !DILocation(line: 755, column: 7, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !960, file: !35, line: 755, column: 7)
!1463 = !DILocation(line: 755, column: 20, scope: !1462)
!1464 = !DILocation(line: 756, column: 12, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !35, line: 756, column: 5)
!1466 = distinct !DILexicalBlock(scope: !1462, file: !35, line: 756, column: 5)
!1467 = !DILocation(line: 756, column: 5, scope: !1466)
!1468 = !DILocation(line: 757, column: 7, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !35, line: 757, column: 7)
!1470 = distinct !DILexicalBlock(scope: !1465, file: !35, line: 757, column: 7)
!1471 = !DILocation(line: 757, column: 7, scope: !1470)
!1472 = !DILocation(line: 756, column: 39, scope: !1465)
!1473 = distinct !{!1473, !1467, !1474, !677}
!1474 = !DILocation(line: 757, column: 7, scope: !1466)
!1475 = !DILocation(line: 759, column: 11, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !960, file: !35, line: 759, column: 7)
!1477 = !DILocation(line: 759, column: 7, scope: !960)
!1478 = !DILocation(line: 760, column: 5, scope: !1476)
!1479 = !DILocation(line: 760, column: 17, scope: !1476)
!1480 = !DILocation(line: 763, column: 2, scope: !960)
!1481 = !DILocation(line: 766, column: 51, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !960, file: !35, line: 766, column: 7)
!1483 = !DILocation(line: 766, column: 21, scope: !1482)
!1484 = !DILocation(line: 770, column: 42, scope: !960)
!1485 = !DILocation(line: 768, column: 10, scope: !960)
!1486 = !DILocation(line: 768, column: 3, scope: !960)
!1487 = !DILocation(line: 772, column: 1, scope: !960)
!1488 = distinct !DISubprogram(name: "gettext_quote", scope: !35, file: !35, line: 207, type: !1489, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1491)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!6, !6, !37}
!1491 = !{!1492, !1493, !1494, !1495}
!1492 = !DILocalVariable(name: "msgid", arg: 1, scope: !1488, file: !35, line: 207, type: !6)
!1493 = !DILocalVariable(name: "s", arg: 2, scope: !1488, file: !35, line: 207, type: !37)
!1494 = !DILocalVariable(name: "translation", scope: !1488, file: !35, line: 209, type: !6)
!1495 = !DILocalVariable(name: "locale_code", scope: !1488, file: !35, line: 210, type: !6)
!1496 = !DILocation(line: 0, scope: !1488)
!1497 = !DILocation(line: 209, column: 29, scope: !1488)
!1498 = !DILocation(line: 212, column: 19, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1488, file: !35, line: 212, column: 7)
!1500 = !DILocation(line: 212, column: 7, scope: !1488)
!1501 = !DILocation(line: 233, column: 17, scope: !1488)
!1502 = !DILocalVariable(name: "s1", arg: 1, scope: !1503, file: !1504, line: 160, type: !6)
!1503 = distinct !DISubprogram(name: "strcaseeq0", scope: !1504, file: !1504, line: 160, type: !1505, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1507)
!1504 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1507 = !{!1502, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517}
!1508 = !DILocalVariable(name: "s2", arg: 2, scope: !1503, file: !1504, line: 160, type: !6)
!1509 = !DILocalVariable(name: "s20", arg: 3, scope: !1503, file: !1504, line: 160, type: !8)
!1510 = !DILocalVariable(name: "s21", arg: 4, scope: !1503, file: !1504, line: 160, type: !8)
!1511 = !DILocalVariable(name: "s22", arg: 5, scope: !1503, file: !1504, line: 160, type: !8)
!1512 = !DILocalVariable(name: "s23", arg: 6, scope: !1503, file: !1504, line: 160, type: !8)
!1513 = !DILocalVariable(name: "s24", arg: 7, scope: !1503, file: !1504, line: 160, type: !8)
!1514 = !DILocalVariable(name: "s25", arg: 8, scope: !1503, file: !1504, line: 160, type: !8)
!1515 = !DILocalVariable(name: "s26", arg: 9, scope: !1503, file: !1504, line: 160, type: !8)
!1516 = !DILocalVariable(name: "s27", arg: 10, scope: !1503, file: !1504, line: 160, type: !8)
!1517 = !DILocalVariable(name: "s28", arg: 11, scope: !1503, file: !1504, line: 160, type: !8)
!1518 = !DILocation(line: 0, scope: !1503, inlinedAt: !1519)
!1519 = distinct !DILocation(line: 234, column: 7, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1488, file: !35, line: 234, column: 7)
!1521 = !DILocation(line: 162, column: 7, scope: !1522, inlinedAt: !1519)
!1522 = distinct !DILexicalBlock(scope: !1503, file: !1504, line: 162, column: 7)
!1523 = !DILocalVariable(name: "s1", arg: 1, scope: !1524, file: !1504, line: 146, type: !6)
!1524 = distinct !DISubprogram(name: "strcaseeq1", scope: !1504, file: !1504, line: 146, type: !1525, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1527)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1527 = !{!1523, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536}
!1528 = !DILocalVariable(name: "s2", arg: 2, scope: !1524, file: !1504, line: 146, type: !6)
!1529 = !DILocalVariable(name: "s21", arg: 3, scope: !1524, file: !1504, line: 146, type: !8)
!1530 = !DILocalVariable(name: "s22", arg: 4, scope: !1524, file: !1504, line: 146, type: !8)
!1531 = !DILocalVariable(name: "s23", arg: 5, scope: !1524, file: !1504, line: 146, type: !8)
!1532 = !DILocalVariable(name: "s24", arg: 6, scope: !1524, file: !1504, line: 146, type: !8)
!1533 = !DILocalVariable(name: "s25", arg: 7, scope: !1524, file: !1504, line: 146, type: !8)
!1534 = !DILocalVariable(name: "s26", arg: 8, scope: !1524, file: !1504, line: 146, type: !8)
!1535 = !DILocalVariable(name: "s27", arg: 9, scope: !1524, file: !1504, line: 146, type: !8)
!1536 = !DILocalVariable(name: "s28", arg: 10, scope: !1524, file: !1504, line: 146, type: !8)
!1537 = !DILocation(line: 0, scope: !1524, inlinedAt: !1538)
!1538 = distinct !DILocation(line: 167, column: 16, scope: !1539, inlinedAt: !1519)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !1504, line: 164, column: 11)
!1540 = distinct !DILexicalBlock(scope: !1522, file: !1504, line: 163, column: 5)
!1541 = !DILocation(line: 148, column: 7, scope: !1542, inlinedAt: !1538)
!1542 = distinct !DILexicalBlock(scope: !1524, file: !1504, line: 148, column: 7)
!1543 = !DILocalVariable(name: "s1", arg: 1, scope: !1544, file: !1504, line: 132, type: !6)
!1544 = distinct !DISubprogram(name: "strcaseeq2", scope: !1504, file: !1504, line: 132, type: !1545, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1547)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1547 = !{!1543, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555}
!1548 = !DILocalVariable(name: "s2", arg: 2, scope: !1544, file: !1504, line: 132, type: !6)
!1549 = !DILocalVariable(name: "s22", arg: 3, scope: !1544, file: !1504, line: 132, type: !8)
!1550 = !DILocalVariable(name: "s23", arg: 4, scope: !1544, file: !1504, line: 132, type: !8)
!1551 = !DILocalVariable(name: "s24", arg: 5, scope: !1544, file: !1504, line: 132, type: !8)
!1552 = !DILocalVariable(name: "s25", arg: 6, scope: !1544, file: !1504, line: 132, type: !8)
!1553 = !DILocalVariable(name: "s26", arg: 7, scope: !1544, file: !1504, line: 132, type: !8)
!1554 = !DILocalVariable(name: "s27", arg: 8, scope: !1544, file: !1504, line: 132, type: !8)
!1555 = !DILocalVariable(name: "s28", arg: 9, scope: !1544, file: !1504, line: 132, type: !8)
!1556 = !DILocation(line: 0, scope: !1544, inlinedAt: !1557)
!1557 = distinct !DILocation(line: 153, column: 16, scope: !1558, inlinedAt: !1538)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !1504, line: 150, column: 11)
!1559 = distinct !DILexicalBlock(scope: !1542, file: !1504, line: 149, column: 5)
!1560 = !DILocation(line: 134, column: 7, scope: !1561, inlinedAt: !1557)
!1561 = distinct !DILexicalBlock(scope: !1544, file: !1504, line: 134, column: 7)
!1562 = !DILocalVariable(name: "s1", arg: 1, scope: !1563, file: !1504, line: 118, type: !6)
!1563 = distinct !DISubprogram(name: "strcaseeq3", scope: !1504, file: !1504, line: 118, type: !1564, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1566)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8}
!1566 = !{!1562, !1567, !1568, !1569, !1570, !1571, !1572, !1573}
!1567 = !DILocalVariable(name: "s2", arg: 2, scope: !1563, file: !1504, line: 118, type: !6)
!1568 = !DILocalVariable(name: "s23", arg: 3, scope: !1563, file: !1504, line: 118, type: !8)
!1569 = !DILocalVariable(name: "s24", arg: 4, scope: !1563, file: !1504, line: 118, type: !8)
!1570 = !DILocalVariable(name: "s25", arg: 5, scope: !1563, file: !1504, line: 118, type: !8)
!1571 = !DILocalVariable(name: "s26", arg: 6, scope: !1563, file: !1504, line: 118, type: !8)
!1572 = !DILocalVariable(name: "s27", arg: 7, scope: !1563, file: !1504, line: 118, type: !8)
!1573 = !DILocalVariable(name: "s28", arg: 8, scope: !1563, file: !1504, line: 118, type: !8)
!1574 = !DILocation(line: 0, scope: !1563, inlinedAt: !1575)
!1575 = distinct !DILocation(line: 139, column: 16, scope: !1576, inlinedAt: !1557)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !1504, line: 136, column: 11)
!1577 = distinct !DILexicalBlock(scope: !1561, file: !1504, line: 135, column: 5)
!1578 = !DILocation(line: 120, column: 7, scope: !1579, inlinedAt: !1575)
!1579 = distinct !DILexicalBlock(scope: !1563, file: !1504, line: 120, column: 7)
!1580 = !DILocation(line: 120, column: 7, scope: !1563, inlinedAt: !1575)
!1581 = !DILocalVariable(name: "s1", arg: 1, scope: !1582, file: !1504, line: 104, type: !6)
!1582 = distinct !DISubprogram(name: "strcaseeq4", scope: !1504, file: !1504, line: 104, type: !1583, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1585)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!23, !6, !6, !8, !8, !8, !8, !8}
!1585 = !{!1581, !1586, !1587, !1588, !1589, !1590, !1591}
!1586 = !DILocalVariable(name: "s2", arg: 2, scope: !1582, file: !1504, line: 104, type: !6)
!1587 = !DILocalVariable(name: "s24", arg: 3, scope: !1582, file: !1504, line: 104, type: !8)
!1588 = !DILocalVariable(name: "s25", arg: 4, scope: !1582, file: !1504, line: 104, type: !8)
!1589 = !DILocalVariable(name: "s26", arg: 5, scope: !1582, file: !1504, line: 104, type: !8)
!1590 = !DILocalVariable(name: "s27", arg: 6, scope: !1582, file: !1504, line: 104, type: !8)
!1591 = !DILocalVariable(name: "s28", arg: 7, scope: !1582, file: !1504, line: 104, type: !8)
!1592 = !DILocation(line: 0, scope: !1582, inlinedAt: !1593)
!1593 = distinct !DILocation(line: 125, column: 16, scope: !1594, inlinedAt: !1575)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !1504, line: 122, column: 11)
!1595 = distinct !DILexicalBlock(scope: !1579, file: !1504, line: 121, column: 5)
!1596 = !DILocation(line: 106, column: 7, scope: !1597, inlinedAt: !1593)
!1597 = distinct !DILexicalBlock(scope: !1582, file: !1504, line: 106, column: 7)
!1598 = !DILocation(line: 106, column: 7, scope: !1582, inlinedAt: !1593)
!1599 = !DILocalVariable(name: "s1", arg: 1, scope: !1600, file: !1504, line: 90, type: !6)
!1600 = distinct !DISubprogram(name: "strcaseeq5", scope: !1504, file: !1504, line: 90, type: !1601, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1603)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!23, !6, !6, !8, !8, !8, !8}
!1603 = !{!1599, !1604, !1605, !1606, !1607, !1608}
!1604 = !DILocalVariable(name: "s2", arg: 2, scope: !1600, file: !1504, line: 90, type: !6)
!1605 = !DILocalVariable(name: "s25", arg: 3, scope: !1600, file: !1504, line: 90, type: !8)
!1606 = !DILocalVariable(name: "s26", arg: 4, scope: !1600, file: !1504, line: 90, type: !8)
!1607 = !DILocalVariable(name: "s27", arg: 5, scope: !1600, file: !1504, line: 90, type: !8)
!1608 = !DILocalVariable(name: "s28", arg: 6, scope: !1600, file: !1504, line: 90, type: !8)
!1609 = !DILocation(line: 0, scope: !1600, inlinedAt: !1610)
!1610 = distinct !DILocation(line: 111, column: 16, scope: !1611, inlinedAt: !1593)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !1504, line: 108, column: 11)
!1612 = distinct !DILexicalBlock(scope: !1597, file: !1504, line: 107, column: 5)
!1613 = !DILocation(line: 92, column: 7, scope: !1614, inlinedAt: !1610)
!1614 = distinct !DILexicalBlock(scope: !1600, file: !1504, line: 92, column: 7)
!1615 = !DILocation(line: 92, column: 7, scope: !1600, inlinedAt: !1610)
!1616 = !DILocation(line: 235, column: 12, scope: !1520)
!1617 = !DILocation(line: 235, column: 21, scope: !1520)
!1618 = !DILocation(line: 235, column: 5, scope: !1520)
!1619 = !DILocation(line: 0, scope: !1524, inlinedAt: !1620)
!1620 = distinct !DILocation(line: 167, column: 16, scope: !1539, inlinedAt: !1621)
!1621 = distinct !DILocation(line: 236, column: 7, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1488, file: !35, line: 236, column: 7)
!1623 = !DILocation(line: 148, column: 7, scope: !1542, inlinedAt: !1620)
!1624 = !DILocation(line: 0, scope: !1544, inlinedAt: !1625)
!1625 = distinct !DILocation(line: 153, column: 16, scope: !1558, inlinedAt: !1620)
!1626 = !DILocation(line: 134, column: 7, scope: !1561, inlinedAt: !1625)
!1627 = !DILocation(line: 134, column: 7, scope: !1544, inlinedAt: !1625)
!1628 = !DILocation(line: 0, scope: !1563, inlinedAt: !1629)
!1629 = distinct !DILocation(line: 139, column: 16, scope: !1576, inlinedAt: !1625)
!1630 = !DILocation(line: 120, column: 7, scope: !1579, inlinedAt: !1629)
!1631 = !DILocation(line: 120, column: 7, scope: !1563, inlinedAt: !1629)
!1632 = !DILocation(line: 0, scope: !1582, inlinedAt: !1633)
!1633 = distinct !DILocation(line: 125, column: 16, scope: !1594, inlinedAt: !1629)
!1634 = !DILocation(line: 106, column: 7, scope: !1597, inlinedAt: !1633)
!1635 = !DILocation(line: 106, column: 7, scope: !1582, inlinedAt: !1633)
!1636 = !DILocation(line: 0, scope: !1600, inlinedAt: !1637)
!1637 = distinct !DILocation(line: 111, column: 16, scope: !1611, inlinedAt: !1633)
!1638 = !DILocation(line: 92, column: 7, scope: !1614, inlinedAt: !1637)
!1639 = !DILocation(line: 92, column: 7, scope: !1600, inlinedAt: !1637)
!1640 = !DILocalVariable(name: "s1", arg: 1, scope: !1641, file: !1504, line: 76, type: !6)
!1641 = distinct !DISubprogram(name: "strcaseeq6", scope: !1504, file: !1504, line: 76, type: !1642, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1644)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!23, !6, !6, !8, !8, !8}
!1644 = !{!1640, !1645, !1646, !1647, !1648}
!1645 = !DILocalVariable(name: "s2", arg: 2, scope: !1641, file: !1504, line: 76, type: !6)
!1646 = !DILocalVariable(name: "s26", arg: 3, scope: !1641, file: !1504, line: 76, type: !8)
!1647 = !DILocalVariable(name: "s27", arg: 4, scope: !1641, file: !1504, line: 76, type: !8)
!1648 = !DILocalVariable(name: "s28", arg: 5, scope: !1641, file: !1504, line: 76, type: !8)
!1649 = !DILocation(line: 0, scope: !1641, inlinedAt: !1650)
!1650 = distinct !DILocation(line: 97, column: 16, scope: !1651, inlinedAt: !1637)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !1504, line: 94, column: 11)
!1652 = distinct !DILexicalBlock(scope: !1614, file: !1504, line: 93, column: 5)
!1653 = !DILocation(line: 78, column: 7, scope: !1654, inlinedAt: !1650)
!1654 = distinct !DILexicalBlock(scope: !1641, file: !1504, line: 78, column: 7)
!1655 = !DILocation(line: 78, column: 7, scope: !1641, inlinedAt: !1650)
!1656 = !DILocalVariable(name: "s1", arg: 1, scope: !1657, file: !1504, line: 62, type: !6)
!1657 = distinct !DISubprogram(name: "strcaseeq7", scope: !1504, file: !1504, line: 62, type: !1658, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1660)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!23, !6, !6, !8, !8}
!1660 = !{!1656, !1661, !1662, !1663}
!1661 = !DILocalVariable(name: "s2", arg: 2, scope: !1657, file: !1504, line: 62, type: !6)
!1662 = !DILocalVariable(name: "s27", arg: 3, scope: !1657, file: !1504, line: 62, type: !8)
!1663 = !DILocalVariable(name: "s28", arg: 4, scope: !1657, file: !1504, line: 62, type: !8)
!1664 = !DILocation(line: 0, scope: !1657, inlinedAt: !1665)
!1665 = distinct !DILocation(line: 83, column: 16, scope: !1666, inlinedAt: !1650)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !1504, line: 80, column: 11)
!1667 = distinct !DILexicalBlock(scope: !1654, file: !1504, line: 79, column: 5)
!1668 = !DILocation(line: 64, column: 7, scope: !1669, inlinedAt: !1665)
!1669 = distinct !DILexicalBlock(scope: !1657, file: !1504, line: 64, column: 7)
!1670 = !DILocation(line: 236, column: 7, scope: !1488)
!1671 = !DILocation(line: 237, column: 12, scope: !1622)
!1672 = !DILocation(line: 237, column: 21, scope: !1622)
!1673 = !DILocation(line: 237, column: 5, scope: !1622)
!1674 = !DILocation(line: 239, column: 13, scope: !1488)
!1675 = !DILocation(line: 239, column: 11, scope: !1488)
!1676 = !DILocation(line: 239, column: 3, scope: !1488)
!1677 = !DILocation(line: 240, column: 1, scope: !1488)
!1678 = !DISubprogram(name: "iswprint", scope: !1679, file: !1679, line: 120, type: !1680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1679 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!23, !39}
!1682 = !DISubprogram(name: "mbsinit", scope: !1683, file: !1683, line: 292, type: !1684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1683 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!23, !1686}
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1005)
!1688 = distinct !DISubprogram(name: "quotearg_alloc", scope: !35, file: !35, line: 799, type: !1689, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1691)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!30, !6, !74, !851}
!1691 = !{!1692, !1693, !1694}
!1692 = !DILocalVariable(name: "arg", arg: 1, scope: !1688, file: !35, line: 799, type: !6)
!1693 = !DILocalVariable(name: "argsize", arg: 2, scope: !1688, file: !35, line: 799, type: !74)
!1694 = !DILocalVariable(name: "o", arg: 3, scope: !1688, file: !35, line: 800, type: !851)
!1695 = !DILocation(line: 0, scope: !1688)
!1696 = !DILocalVariable(name: "arg", arg: 1, scope: !1697, file: !35, line: 812, type: !6)
!1697 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !35, file: !35, line: 812, type: !1698, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1700)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!30, !6, !74, !144, !851}
!1700 = !{!1696, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708}
!1701 = !DILocalVariable(name: "argsize", arg: 2, scope: !1697, file: !35, line: 812, type: !74)
!1702 = !DILocalVariable(name: "size", arg: 3, scope: !1697, file: !35, line: 812, type: !144)
!1703 = !DILocalVariable(name: "o", arg: 4, scope: !1697, file: !35, line: 813, type: !851)
!1704 = !DILocalVariable(name: "p", scope: !1697, file: !35, line: 815, type: !851)
!1705 = !DILocalVariable(name: "e", scope: !1697, file: !35, line: 816, type: !23)
!1706 = !DILocalVariable(name: "flags", scope: !1697, file: !35, line: 818, type: !23)
!1707 = !DILocalVariable(name: "bufsize", scope: !1697, file: !35, line: 819, type: !74)
!1708 = !DILocalVariable(name: "buf", scope: !1697, file: !35, line: 823, type: !30)
!1709 = !DILocation(line: 0, scope: !1697, inlinedAt: !1710)
!1710 = distinct !DILocation(line: 802, column: 10, scope: !1688)
!1711 = !DILocation(line: 815, column: 37, scope: !1697, inlinedAt: !1710)
!1712 = !DILocation(line: 816, column: 11, scope: !1697, inlinedAt: !1710)
!1713 = !DILocation(line: 818, column: 18, scope: !1697, inlinedAt: !1710)
!1714 = !DILocation(line: 818, column: 24, scope: !1697, inlinedAt: !1710)
!1715 = !DILocation(line: 819, column: 69, scope: !1697, inlinedAt: !1710)
!1716 = !DILocation(line: 820, column: 53, scope: !1697, inlinedAt: !1710)
!1717 = !DILocation(line: 821, column: 49, scope: !1697, inlinedAt: !1710)
!1718 = !DILocation(line: 822, column: 49, scope: !1697, inlinedAt: !1710)
!1719 = !DILocation(line: 819, column: 20, scope: !1697, inlinedAt: !1710)
!1720 = !DILocation(line: 822, column: 62, scope: !1697, inlinedAt: !1710)
!1721 = !DILocalVariable(name: "n", arg: 1, scope: !1722, file: !140, line: 216, type: !74)
!1722 = distinct !DISubprogram(name: "xcharalloc", scope: !140, file: !140, line: 216, type: !1723, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1725)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!30, !74}
!1725 = !{!1721}
!1726 = !DILocation(line: 0, scope: !1722, inlinedAt: !1727)
!1727 = distinct !DILocation(line: 823, column: 15, scope: !1697, inlinedAt: !1710)
!1728 = !DILocation(line: 218, column: 10, scope: !1722, inlinedAt: !1727)
!1729 = !DILocation(line: 824, column: 60, scope: !1697, inlinedAt: !1710)
!1730 = !DILocation(line: 826, column: 32, scope: !1697, inlinedAt: !1710)
!1731 = !DILocation(line: 826, column: 47, scope: !1697, inlinedAt: !1710)
!1732 = !DILocation(line: 824, column: 3, scope: !1697, inlinedAt: !1710)
!1733 = !DILocation(line: 827, column: 9, scope: !1697, inlinedAt: !1710)
!1734 = !DILocation(line: 802, column: 3, scope: !1688)
!1735 = !DILocation(line: 0, scope: !1697)
!1736 = !DILocation(line: 815, column: 37, scope: !1697)
!1737 = !DILocation(line: 816, column: 11, scope: !1697)
!1738 = !DILocation(line: 818, column: 18, scope: !1697)
!1739 = !DILocation(line: 818, column: 27, scope: !1697)
!1740 = !DILocation(line: 818, column: 24, scope: !1697)
!1741 = !DILocation(line: 819, column: 69, scope: !1697)
!1742 = !DILocation(line: 820, column: 53, scope: !1697)
!1743 = !DILocation(line: 821, column: 49, scope: !1697)
!1744 = !DILocation(line: 822, column: 49, scope: !1697)
!1745 = !DILocation(line: 819, column: 20, scope: !1697)
!1746 = !DILocation(line: 822, column: 62, scope: !1697)
!1747 = !DILocation(line: 0, scope: !1722, inlinedAt: !1748)
!1748 = distinct !DILocation(line: 823, column: 15, scope: !1697)
!1749 = !DILocation(line: 218, column: 10, scope: !1722, inlinedAt: !1748)
!1750 = !DILocation(line: 824, column: 60, scope: !1697)
!1751 = !DILocation(line: 826, column: 32, scope: !1697)
!1752 = !DILocation(line: 826, column: 47, scope: !1697)
!1753 = !DILocation(line: 824, column: 3, scope: !1697)
!1754 = !DILocation(line: 827, column: 9, scope: !1697)
!1755 = !DILocation(line: 828, column: 7, scope: !1697)
!1756 = !DILocation(line: 829, column: 11, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1697, file: !35, line: 828, column: 7)
!1758 = !{!1759, !1759, i64 0}
!1759 = !{!"long", !577, i64 0}
!1760 = !DILocation(line: 829, column: 5, scope: !1757)
!1761 = !DILocation(line: 830, column: 3, scope: !1697)
!1762 = distinct !DISubprogram(name: "quotearg_free", scope: !35, file: !35, line: 848, type: !740, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1763)
!1763 = !{!1764, !1765}
!1764 = !DILocalVariable(name: "sv", scope: !1762, file: !35, line: 850, type: !105)
!1765 = !DILocalVariable(name: "i", scope: !1762, file: !35, line: 851, type: !23)
!1766 = !DILocation(line: 850, column: 24, scope: !1762)
!1767 = !DILocation(line: 0, scope: !1762)
!1768 = !DILocation(line: 852, column: 19, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !35, line: 852, column: 3)
!1770 = distinct !DILexicalBlock(scope: !1762, file: !35, line: 852, column: 3)
!1771 = !DILocation(line: 852, column: 17, scope: !1769)
!1772 = !DILocation(line: 852, column: 3, scope: !1770)
!1773 = !DILocation(line: 853, column: 17, scope: !1769)
!1774 = !{!1775, !576, i64 8}
!1775 = !{!"slotvec", !1759, i64 0, !576, i64 8}
!1776 = !DILocation(line: 853, column: 5, scope: !1769)
!1777 = !DILocation(line: 852, column: 28, scope: !1769)
!1778 = distinct !{!1778, !1772, !1779, !677}
!1779 = !DILocation(line: 853, column: 20, scope: !1770)
!1780 = !DILocation(line: 854, column: 13, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1762, file: !35, line: 854, column: 7)
!1782 = !DILocation(line: 854, column: 17, scope: !1781)
!1783 = !DILocation(line: 854, column: 7, scope: !1762)
!1784 = !DILocation(line: 856, column: 7, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1781, file: !35, line: 855, column: 5)
!1786 = !DILocation(line: 857, column: 21, scope: !1785)
!1787 = !{!1775, !1759, i64 0}
!1788 = !DILocation(line: 858, column: 20, scope: !1785)
!1789 = !DILocation(line: 859, column: 5, scope: !1785)
!1790 = !DILocation(line: 860, column: 10, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1762, file: !35, line: 860, column: 7)
!1792 = !DILocation(line: 860, column: 7, scope: !1762)
!1793 = !DILocation(line: 862, column: 13, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1791, file: !35, line: 861, column: 5)
!1795 = !DILocation(line: 862, column: 7, scope: !1794)
!1796 = !DILocation(line: 863, column: 15, scope: !1794)
!1797 = !DILocation(line: 864, column: 5, scope: !1794)
!1798 = !DILocation(line: 865, column: 10, scope: !1762)
!1799 = !DILocation(line: 866, column: 1, scope: !1762)
!1800 = distinct !DISubprogram(name: "quotearg_n", scope: !35, file: !35, line: 931, type: !698, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1801)
!1801 = !{!1802, !1803}
!1802 = !DILocalVariable(name: "n", arg: 1, scope: !1800, file: !35, line: 931, type: !23)
!1803 = !DILocalVariable(name: "arg", arg: 2, scope: !1800, file: !35, line: 931, type: !6)
!1804 = !DILocation(line: 0, scope: !1800)
!1805 = !DILocation(line: 933, column: 10, scope: !1800)
!1806 = !DILocation(line: 933, column: 3, scope: !1800)
!1807 = distinct !DISubprogram(name: "quotearg_n_options", scope: !35, file: !35, line: 877, type: !1808, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1810)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{!30, !23, !6, !74, !851}
!1810 = !{!1811, !1812, !1813, !1814, !1815, !1816, !1817, !1820, !1821, !1823, !1824, !1825}
!1811 = !DILocalVariable(name: "n", arg: 1, scope: !1807, file: !35, line: 877, type: !23)
!1812 = !DILocalVariable(name: "arg", arg: 2, scope: !1807, file: !35, line: 877, type: !6)
!1813 = !DILocalVariable(name: "argsize", arg: 3, scope: !1807, file: !35, line: 877, type: !74)
!1814 = !DILocalVariable(name: "options", arg: 4, scope: !1807, file: !35, line: 878, type: !851)
!1815 = !DILocalVariable(name: "e", scope: !1807, file: !35, line: 880, type: !23)
!1816 = !DILocalVariable(name: "sv", scope: !1807, file: !35, line: 882, type: !105)
!1817 = !DILocalVariable(name: "preallocated", scope: !1818, file: !35, line: 889, type: !16)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !35, line: 888, column: 5)
!1819 = distinct !DILexicalBlock(scope: !1807, file: !35, line: 887, column: 7)
!1820 = !DILocalVariable(name: "nmax", scope: !1818, file: !35, line: 890, type: !23)
!1821 = !DILocalVariable(name: "size", scope: !1822, file: !35, line: 903, type: !74)
!1822 = distinct !DILexicalBlock(scope: !1807, file: !35, line: 902, column: 3)
!1823 = !DILocalVariable(name: "val", scope: !1822, file: !35, line: 904, type: !30)
!1824 = !DILocalVariable(name: "flags", scope: !1822, file: !35, line: 906, type: !23)
!1825 = !DILocalVariable(name: "qsize", scope: !1822, file: !35, line: 907, type: !74)
!1826 = !DILocation(line: 0, scope: !1807)
!1827 = !DILocation(line: 880, column: 11, scope: !1807)
!1828 = !DILocation(line: 882, column: 24, scope: !1807)
!1829 = !DILocation(line: 884, column: 9, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1807, file: !35, line: 884, column: 7)
!1831 = !DILocation(line: 884, column: 7, scope: !1807)
!1832 = !DILocation(line: 885, column: 5, scope: !1830)
!1833 = !DILocation(line: 887, column: 7, scope: !1819)
!1834 = !DILocation(line: 887, column: 14, scope: !1819)
!1835 = !DILocation(line: 887, column: 7, scope: !1807)
!1836 = !DILocation(line: 889, column: 31, scope: !1818)
!1837 = !DILocation(line: 0, scope: !1818)
!1838 = !DILocation(line: 892, column: 16, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1818, file: !35, line: 892, column: 11)
!1840 = !DILocation(line: 892, column: 11, scope: !1818)
!1841 = !DILocation(line: 893, column: 9, scope: !1839)
!1842 = !DILocation(line: 895, column: 32, scope: !1818)
!1843 = !DILocation(line: 895, column: 61, scope: !1818)
!1844 = !DILocation(line: 895, column: 66, scope: !1818)
!1845 = !DILocation(line: 895, column: 22, scope: !1818)
!1846 = !DILocation(line: 895, column: 15, scope: !1818)
!1847 = !DILocation(line: 896, column: 11, scope: !1818)
!1848 = !DILocation(line: 897, column: 15, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1818, file: !35, line: 896, column: 11)
!1850 = !{i64 0, i64 8, !1758, i64 8, i64 8, !575}
!1851 = !DILocation(line: 897, column: 9, scope: !1849)
!1852 = !DILocation(line: 898, column: 20, scope: !1818)
!1853 = !DILocation(line: 898, column: 18, scope: !1818)
!1854 = !DILocation(line: 898, column: 15, scope: !1818)
!1855 = !DILocation(line: 898, column: 38, scope: !1818)
!1856 = !DILocation(line: 898, column: 31, scope: !1818)
!1857 = !DILocation(line: 898, column: 48, scope: !1818)
!1858 = !DILocation(line: 0, scope: !1249, inlinedAt: !1859)
!1859 = distinct !DILocation(line: 898, column: 7, scope: !1818)
!1860 = !DILocation(line: 59, column: 10, scope: !1249, inlinedAt: !1859)
!1861 = !DILocation(line: 899, column: 14, scope: !1818)
!1862 = !DILocation(line: 900, column: 5, scope: !1818)
!1863 = !DILocation(line: 903, column: 19, scope: !1822)
!1864 = !DILocation(line: 903, column: 25, scope: !1822)
!1865 = !DILocation(line: 0, scope: !1822)
!1866 = !DILocation(line: 904, column: 23, scope: !1822)
!1867 = !DILocation(line: 906, column: 26, scope: !1822)
!1868 = !DILocation(line: 906, column: 32, scope: !1822)
!1869 = !DILocation(line: 908, column: 55, scope: !1822)
!1870 = !DILocation(line: 909, column: 46, scope: !1822)
!1871 = !DILocation(line: 910, column: 55, scope: !1822)
!1872 = !DILocation(line: 911, column: 55, scope: !1822)
!1873 = !DILocation(line: 907, column: 20, scope: !1822)
!1874 = !DILocation(line: 913, column: 14, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1822, file: !35, line: 913, column: 9)
!1876 = !DILocation(line: 913, column: 9, scope: !1822)
!1877 = !DILocation(line: 915, column: 35, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1875, file: !35, line: 914, column: 7)
!1879 = !DILocation(line: 915, column: 20, scope: !1878)
!1880 = !DILocation(line: 916, column: 17, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1878, file: !35, line: 916, column: 13)
!1882 = !DILocation(line: 916, column: 13, scope: !1878)
!1883 = !DILocation(line: 917, column: 11, scope: !1881)
!1884 = !DILocation(line: 0, scope: !1722, inlinedAt: !1885)
!1885 = distinct !DILocation(line: 918, column: 27, scope: !1878)
!1886 = !DILocation(line: 218, column: 10, scope: !1722, inlinedAt: !1885)
!1887 = !DILocation(line: 918, column: 19, scope: !1878)
!1888 = !DILocation(line: 919, column: 69, scope: !1878)
!1889 = !DILocation(line: 921, column: 44, scope: !1878)
!1890 = !DILocation(line: 922, column: 44, scope: !1878)
!1891 = !DILocation(line: 919, column: 9, scope: !1878)
!1892 = !DILocation(line: 923, column: 7, scope: !1878)
!1893 = !DILocation(line: 925, column: 11, scope: !1822)
!1894 = !DILocation(line: 926, column: 5, scope: !1822)
!1895 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !35, file: !35, line: 937, type: !1896, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1898)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!30, !23, !6, !74}
!1898 = !{!1899, !1900, !1901}
!1899 = !DILocalVariable(name: "n", arg: 1, scope: !1895, file: !35, line: 937, type: !23)
!1900 = !DILocalVariable(name: "arg", arg: 2, scope: !1895, file: !35, line: 937, type: !6)
!1901 = !DILocalVariable(name: "argsize", arg: 3, scope: !1895, file: !35, line: 937, type: !74)
!1902 = !DILocation(line: 0, scope: !1895)
!1903 = !DILocation(line: 939, column: 10, scope: !1895)
!1904 = !DILocation(line: 939, column: 3, scope: !1895)
!1905 = distinct !DISubprogram(name: "quotearg", scope: !35, file: !35, line: 943, type: !733, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1906)
!1906 = !{!1907}
!1907 = !DILocalVariable(name: "arg", arg: 1, scope: !1905, file: !35, line: 943, type: !6)
!1908 = !DILocation(line: 0, scope: !1905)
!1909 = !DILocation(line: 0, scope: !1800, inlinedAt: !1910)
!1910 = distinct !DILocation(line: 945, column: 10, scope: !1905)
!1911 = !DILocation(line: 933, column: 10, scope: !1800, inlinedAt: !1910)
!1912 = !DILocation(line: 945, column: 3, scope: !1905)
!1913 = distinct !DISubprogram(name: "quotearg_mem", scope: !35, file: !35, line: 949, type: !1914, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1916)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!30, !6, !74}
!1916 = !{!1917, !1918}
!1917 = !DILocalVariable(name: "arg", arg: 1, scope: !1913, file: !35, line: 949, type: !6)
!1918 = !DILocalVariable(name: "argsize", arg: 2, scope: !1913, file: !35, line: 949, type: !74)
!1919 = !DILocation(line: 0, scope: !1913)
!1920 = !DILocation(line: 0, scope: !1895, inlinedAt: !1921)
!1921 = distinct !DILocation(line: 951, column: 10, scope: !1913)
!1922 = !DILocation(line: 939, column: 10, scope: !1895, inlinedAt: !1921)
!1923 = !DILocation(line: 951, column: 3, scope: !1913)
!1924 = distinct !DISubprogram(name: "quotearg_n_style", scope: !35, file: !35, line: 955, type: !1925, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1927)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!30, !23, !37, !6}
!1927 = !{!1928, !1929, !1930, !1931}
!1928 = !DILocalVariable(name: "n", arg: 1, scope: !1924, file: !35, line: 955, type: !23)
!1929 = !DILocalVariable(name: "s", arg: 2, scope: !1924, file: !35, line: 955, type: !37)
!1930 = !DILocalVariable(name: "arg", arg: 3, scope: !1924, file: !35, line: 955, type: !6)
!1931 = !DILocalVariable(name: "o", scope: !1924, file: !35, line: 957, type: !852)
!1932 = !DILocation(line: 0, scope: !1924)
!1933 = !DILocation(line: 957, column: 3, scope: !1924)
!1934 = !DILocation(line: 957, column: 32, scope: !1924)
!1935 = !{!1936}
!1936 = distinct !{!1936, !1937, !"quoting_options_from_style: argument 0"}
!1937 = distinct !{!1937, !"quoting_options_from_style"}
!1938 = !DILocation(line: 957, column: 36, scope: !1924)
!1939 = !DILocalVariable(name: "style", arg: 1, scope: !1940, file: !35, line: 193, type: !37)
!1940 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !35, file: !35, line: 193, type: !1941, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1943)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!86, !37}
!1943 = !{!1939, !1944}
!1944 = !DILocalVariable(name: "o", scope: !1940, file: !35, line: 195, type: !86)
!1945 = !DILocation(line: 0, scope: !1940, inlinedAt: !1946)
!1946 = distinct !DILocation(line: 957, column: 36, scope: !1924)
!1947 = !DILocation(line: 195, column: 26, scope: !1940, inlinedAt: !1946)
!1948 = !DILocation(line: 196, column: 13, scope: !1949, inlinedAt: !1946)
!1949 = distinct !DILexicalBlock(scope: !1940, file: !35, line: 196, column: 7)
!1950 = !DILocation(line: 196, column: 7, scope: !1940, inlinedAt: !1946)
!1951 = !DILocation(line: 197, column: 5, scope: !1949, inlinedAt: !1946)
!1952 = !DILocation(line: 198, column: 5, scope: !1940, inlinedAt: !1946)
!1953 = !DILocation(line: 198, column: 11, scope: !1940, inlinedAt: !1946)
!1954 = !DILocation(line: 958, column: 10, scope: !1924)
!1955 = !DILocation(line: 959, column: 1, scope: !1924)
!1956 = !DILocation(line: 958, column: 3, scope: !1924)
!1957 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !35, file: !35, line: 962, type: !1958, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1960)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!30, !23, !37, !6, !74}
!1960 = !{!1961, !1962, !1963, !1964, !1965}
!1961 = !DILocalVariable(name: "n", arg: 1, scope: !1957, file: !35, line: 962, type: !23)
!1962 = !DILocalVariable(name: "s", arg: 2, scope: !1957, file: !35, line: 962, type: !37)
!1963 = !DILocalVariable(name: "arg", arg: 3, scope: !1957, file: !35, line: 963, type: !6)
!1964 = !DILocalVariable(name: "argsize", arg: 4, scope: !1957, file: !35, line: 963, type: !74)
!1965 = !DILocalVariable(name: "o", scope: !1957, file: !35, line: 965, type: !852)
!1966 = !DILocation(line: 0, scope: !1957)
!1967 = !DILocation(line: 965, column: 3, scope: !1957)
!1968 = !DILocation(line: 965, column: 32, scope: !1957)
!1969 = !{!1970}
!1970 = distinct !{!1970, !1971, !"quoting_options_from_style: argument 0"}
!1971 = distinct !{!1971, !"quoting_options_from_style"}
!1972 = !DILocation(line: 965, column: 36, scope: !1957)
!1973 = !DILocation(line: 0, scope: !1940, inlinedAt: !1974)
!1974 = distinct !DILocation(line: 965, column: 36, scope: !1957)
!1975 = !DILocation(line: 195, column: 26, scope: !1940, inlinedAt: !1974)
!1976 = !DILocation(line: 196, column: 13, scope: !1949, inlinedAt: !1974)
!1977 = !DILocation(line: 196, column: 7, scope: !1940, inlinedAt: !1974)
!1978 = !DILocation(line: 197, column: 5, scope: !1949, inlinedAt: !1974)
!1979 = !DILocation(line: 198, column: 5, scope: !1940, inlinedAt: !1974)
!1980 = !DILocation(line: 198, column: 11, scope: !1940, inlinedAt: !1974)
!1981 = !DILocation(line: 966, column: 10, scope: !1957)
!1982 = !DILocation(line: 967, column: 1, scope: !1957)
!1983 = !DILocation(line: 966, column: 3, scope: !1957)
!1984 = distinct !DISubprogram(name: "quotearg_style", scope: !35, file: !35, line: 970, type: !1985, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1987)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!30, !37, !6}
!1987 = !{!1988, !1989}
!1988 = !DILocalVariable(name: "s", arg: 1, scope: !1984, file: !35, line: 970, type: !37)
!1989 = !DILocalVariable(name: "arg", arg: 2, scope: !1984, file: !35, line: 970, type: !6)
!1990 = !DILocation(line: 0, scope: !1984)
!1991 = !DILocation(line: 0, scope: !1924, inlinedAt: !1992)
!1992 = distinct !DILocation(line: 972, column: 10, scope: !1984)
!1993 = !DILocation(line: 957, column: 3, scope: !1924, inlinedAt: !1992)
!1994 = !DILocation(line: 957, column: 32, scope: !1924, inlinedAt: !1992)
!1995 = !{!1996}
!1996 = distinct !{!1996, !1997, !"quoting_options_from_style: argument 0"}
!1997 = distinct !{!1997, !"quoting_options_from_style"}
!1998 = !DILocation(line: 957, column: 36, scope: !1924, inlinedAt: !1992)
!1999 = !DILocation(line: 0, scope: !1940, inlinedAt: !2000)
!2000 = distinct !DILocation(line: 957, column: 36, scope: !1924, inlinedAt: !1992)
!2001 = !DILocation(line: 195, column: 26, scope: !1940, inlinedAt: !2000)
!2002 = !DILocation(line: 196, column: 13, scope: !1949, inlinedAt: !2000)
!2003 = !DILocation(line: 196, column: 7, scope: !1940, inlinedAt: !2000)
!2004 = !DILocation(line: 197, column: 5, scope: !1949, inlinedAt: !2000)
!2005 = !DILocation(line: 198, column: 5, scope: !1940, inlinedAt: !2000)
!2006 = !DILocation(line: 198, column: 11, scope: !1940, inlinedAt: !2000)
!2007 = !DILocation(line: 958, column: 10, scope: !1924, inlinedAt: !1992)
!2008 = !DILocation(line: 959, column: 1, scope: !1924, inlinedAt: !1992)
!2009 = !DILocation(line: 972, column: 3, scope: !1984)
!2010 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !35, file: !35, line: 976, type: !2011, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2013)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!30, !37, !6, !74}
!2013 = !{!2014, !2015, !2016}
!2014 = !DILocalVariable(name: "s", arg: 1, scope: !2010, file: !35, line: 976, type: !37)
!2015 = !DILocalVariable(name: "arg", arg: 2, scope: !2010, file: !35, line: 976, type: !6)
!2016 = !DILocalVariable(name: "argsize", arg: 3, scope: !2010, file: !35, line: 976, type: !74)
!2017 = !DILocation(line: 0, scope: !2010)
!2018 = !DILocation(line: 0, scope: !1957, inlinedAt: !2019)
!2019 = distinct !DILocation(line: 978, column: 10, scope: !2010)
!2020 = !DILocation(line: 965, column: 3, scope: !1957, inlinedAt: !2019)
!2021 = !DILocation(line: 965, column: 32, scope: !1957, inlinedAt: !2019)
!2022 = !{!2023}
!2023 = distinct !{!2023, !2024, !"quoting_options_from_style: argument 0"}
!2024 = distinct !{!2024, !"quoting_options_from_style"}
!2025 = !DILocation(line: 965, column: 36, scope: !1957, inlinedAt: !2019)
!2026 = !DILocation(line: 0, scope: !1940, inlinedAt: !2027)
!2027 = distinct !DILocation(line: 965, column: 36, scope: !1957, inlinedAt: !2019)
!2028 = !DILocation(line: 195, column: 26, scope: !1940, inlinedAt: !2027)
!2029 = !DILocation(line: 196, column: 13, scope: !1949, inlinedAt: !2027)
!2030 = !DILocation(line: 196, column: 7, scope: !1940, inlinedAt: !2027)
!2031 = !DILocation(line: 197, column: 5, scope: !1949, inlinedAt: !2027)
!2032 = !DILocation(line: 198, column: 5, scope: !1940, inlinedAt: !2027)
!2033 = !DILocation(line: 198, column: 11, scope: !1940, inlinedAt: !2027)
!2034 = !DILocation(line: 966, column: 10, scope: !1957, inlinedAt: !2019)
!2035 = !DILocation(line: 967, column: 1, scope: !1957, inlinedAt: !2019)
!2036 = !DILocation(line: 978, column: 3, scope: !2010)
!2037 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !35, file: !35, line: 982, type: !2038, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2040)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!30, !6, !74, !8}
!2040 = !{!2041, !2042, !2043, !2044}
!2041 = !DILocalVariable(name: "arg", arg: 1, scope: !2037, file: !35, line: 982, type: !6)
!2042 = !DILocalVariable(name: "argsize", arg: 2, scope: !2037, file: !35, line: 982, type: !74)
!2043 = !DILocalVariable(name: "ch", arg: 3, scope: !2037, file: !35, line: 982, type: !8)
!2044 = !DILocalVariable(name: "options", scope: !2037, file: !35, line: 984, type: !86)
!2045 = !DILocation(line: 0, scope: !2037)
!2046 = !DILocation(line: 984, column: 3, scope: !2037)
!2047 = !DILocation(line: 984, column: 26, scope: !2037)
!2048 = !DILocation(line: 985, column: 13, scope: !2037)
!2049 = !{i64 0, i64 4, !1058, i64 4, i64 4, !771, i64 8, i64 32, !1058, i64 40, i64 8, !575, i64 48, i64 8, !575}
!2050 = !DILocation(line: 0, scope: !872, inlinedAt: !2051)
!2051 = distinct !DILocation(line: 986, column: 3, scope: !2037)
!2052 = !DILocation(line: 156, column: 62, scope: !872, inlinedAt: !2051)
!2053 = !DILocation(line: 156, column: 57, scope: !872, inlinedAt: !2051)
!2054 = !DILocation(line: 157, column: 15, scope: !872, inlinedAt: !2051)
!2055 = !DILocation(line: 158, column: 12, scope: !872, inlinedAt: !2051)
!2056 = !DILocation(line: 158, column: 15, scope: !872, inlinedAt: !2051)
!2057 = !DILocation(line: 158, column: 25, scope: !872, inlinedAt: !2051)
!2058 = !DILocation(line: 159, column: 18, scope: !872, inlinedAt: !2051)
!2059 = !DILocation(line: 159, column: 23, scope: !872, inlinedAt: !2051)
!2060 = !DILocation(line: 159, column: 6, scope: !872, inlinedAt: !2051)
!2061 = !DILocation(line: 987, column: 10, scope: !2037)
!2062 = !DILocation(line: 988, column: 1, scope: !2037)
!2063 = !DILocation(line: 987, column: 3, scope: !2037)
!2064 = distinct !DISubprogram(name: "quotearg_char", scope: !35, file: !35, line: 991, type: !2065, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2067)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!30, !6, !8}
!2067 = !{!2068, !2069}
!2068 = !DILocalVariable(name: "arg", arg: 1, scope: !2064, file: !35, line: 991, type: !6)
!2069 = !DILocalVariable(name: "ch", arg: 2, scope: !2064, file: !35, line: 991, type: !8)
!2070 = !DILocation(line: 0, scope: !2064)
!2071 = !DILocation(line: 0, scope: !2037, inlinedAt: !2072)
!2072 = distinct !DILocation(line: 993, column: 10, scope: !2064)
!2073 = !DILocation(line: 984, column: 3, scope: !2037, inlinedAt: !2072)
!2074 = !DILocation(line: 984, column: 26, scope: !2037, inlinedAt: !2072)
!2075 = !DILocation(line: 985, column: 13, scope: !2037, inlinedAt: !2072)
!2076 = !DILocation(line: 0, scope: !872, inlinedAt: !2077)
!2077 = distinct !DILocation(line: 986, column: 3, scope: !2037, inlinedAt: !2072)
!2078 = !DILocation(line: 156, column: 62, scope: !872, inlinedAt: !2077)
!2079 = !DILocation(line: 156, column: 57, scope: !872, inlinedAt: !2077)
!2080 = !DILocation(line: 157, column: 15, scope: !872, inlinedAt: !2077)
!2081 = !DILocation(line: 158, column: 12, scope: !872, inlinedAt: !2077)
!2082 = !DILocation(line: 158, column: 15, scope: !872, inlinedAt: !2077)
!2083 = !DILocation(line: 158, column: 25, scope: !872, inlinedAt: !2077)
!2084 = !DILocation(line: 159, column: 18, scope: !872, inlinedAt: !2077)
!2085 = !DILocation(line: 159, column: 23, scope: !872, inlinedAt: !2077)
!2086 = !DILocation(line: 159, column: 6, scope: !872, inlinedAt: !2077)
!2087 = !DILocation(line: 987, column: 10, scope: !2037, inlinedAt: !2072)
!2088 = !DILocation(line: 988, column: 1, scope: !2037, inlinedAt: !2072)
!2089 = !DILocation(line: 993, column: 3, scope: !2064)
!2090 = distinct !DISubprogram(name: "quotearg_colon", scope: !35, file: !35, line: 997, type: !733, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2091)
!2091 = !{!2092}
!2092 = !DILocalVariable(name: "arg", arg: 1, scope: !2090, file: !35, line: 997, type: !6)
!2093 = !DILocation(line: 0, scope: !2090)
!2094 = !DILocation(line: 0, scope: !2064, inlinedAt: !2095)
!2095 = distinct !DILocation(line: 999, column: 10, scope: !2090)
!2096 = !DILocation(line: 0, scope: !2037, inlinedAt: !2097)
!2097 = distinct !DILocation(line: 993, column: 10, scope: !2064, inlinedAt: !2095)
!2098 = !DILocation(line: 984, column: 3, scope: !2037, inlinedAt: !2097)
!2099 = !DILocation(line: 984, column: 26, scope: !2037, inlinedAt: !2097)
!2100 = !DILocation(line: 985, column: 13, scope: !2037, inlinedAt: !2097)
!2101 = !DILocation(line: 0, scope: !872, inlinedAt: !2102)
!2102 = distinct !DILocation(line: 986, column: 3, scope: !2037, inlinedAt: !2097)
!2103 = !DILocation(line: 156, column: 57, scope: !872, inlinedAt: !2102)
!2104 = !DILocation(line: 158, column: 12, scope: !872, inlinedAt: !2102)
!2105 = !DILocation(line: 159, column: 6, scope: !872, inlinedAt: !2102)
!2106 = !DILocation(line: 987, column: 10, scope: !2037, inlinedAt: !2097)
!2107 = !DILocation(line: 988, column: 1, scope: !2037, inlinedAt: !2097)
!2108 = !DILocation(line: 999, column: 3, scope: !2090)
!2109 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !35, file: !35, line: 1003, type: !1914, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2110)
!2110 = !{!2111, !2112}
!2111 = !DILocalVariable(name: "arg", arg: 1, scope: !2109, file: !35, line: 1003, type: !6)
!2112 = !DILocalVariable(name: "argsize", arg: 2, scope: !2109, file: !35, line: 1003, type: !74)
!2113 = !DILocation(line: 0, scope: !2109)
!2114 = !DILocation(line: 0, scope: !2037, inlinedAt: !2115)
!2115 = distinct !DILocation(line: 1005, column: 10, scope: !2109)
!2116 = !DILocation(line: 984, column: 3, scope: !2037, inlinedAt: !2115)
!2117 = !DILocation(line: 984, column: 26, scope: !2037, inlinedAt: !2115)
!2118 = !DILocation(line: 985, column: 13, scope: !2037, inlinedAt: !2115)
!2119 = !DILocation(line: 0, scope: !872, inlinedAt: !2120)
!2120 = distinct !DILocation(line: 986, column: 3, scope: !2037, inlinedAt: !2115)
!2121 = !DILocation(line: 156, column: 57, scope: !872, inlinedAt: !2120)
!2122 = !DILocation(line: 158, column: 12, scope: !872, inlinedAt: !2120)
!2123 = !DILocation(line: 159, column: 6, scope: !872, inlinedAt: !2120)
!2124 = !DILocation(line: 987, column: 10, scope: !2037, inlinedAt: !2115)
!2125 = !DILocation(line: 988, column: 1, scope: !2037, inlinedAt: !2115)
!2126 = !DILocation(line: 1005, column: 3, scope: !2109)
!2127 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !35, file: !35, line: 1009, type: !1925, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2128)
!2128 = !{!2129, !2130, !2131, !2132}
!2129 = !DILocalVariable(name: "n", arg: 1, scope: !2127, file: !35, line: 1009, type: !23)
!2130 = !DILocalVariable(name: "s", arg: 2, scope: !2127, file: !35, line: 1009, type: !37)
!2131 = !DILocalVariable(name: "arg", arg: 3, scope: !2127, file: !35, line: 1009, type: !6)
!2132 = !DILocalVariable(name: "options", scope: !2127, file: !35, line: 1011, type: !86)
!2133 = !DILocation(line: 195, column: 26, scope: !1940, inlinedAt: !2134)
!2134 = distinct !DILocation(line: 1012, column: 13, scope: !2127)
!2135 = !DILocation(line: 0, scope: !2127)
!2136 = !DILocation(line: 1011, column: 3, scope: !2127)
!2137 = !DILocation(line: 1011, column: 26, scope: !2127)
!2138 = !DILocation(line: 1012, column: 13, scope: !2127)
!2139 = !{!2140}
!2140 = distinct !{!2140, !2141, !"quoting_options_from_style: argument 0"}
!2141 = distinct !{!2141, !"quoting_options_from_style"}
!2142 = !DILocation(line: 0, scope: !1940, inlinedAt: !2134)
!2143 = !DILocation(line: 196, column: 13, scope: !1949, inlinedAt: !2134)
!2144 = !DILocation(line: 196, column: 7, scope: !1940, inlinedAt: !2134)
!2145 = !DILocation(line: 197, column: 5, scope: !1949, inlinedAt: !2134)
!2146 = !{i64 0, i64 4, !771, i64 4, i64 32, !1058, i64 36, i64 8, !575, i64 44, i64 8, !575}
!2147 = !DILocation(line: 0, scope: !872, inlinedAt: !2148)
!2148 = distinct !DILocation(line: 1013, column: 3, scope: !2127)
!2149 = !DILocation(line: 156, column: 57, scope: !872, inlinedAt: !2148)
!2150 = !DILocation(line: 158, column: 12, scope: !872, inlinedAt: !2148)
!2151 = !DILocation(line: 159, column: 6, scope: !872, inlinedAt: !2148)
!2152 = !DILocation(line: 1014, column: 10, scope: !2127)
!2153 = !DILocation(line: 1015, column: 1, scope: !2127)
!2154 = !DILocation(line: 1014, column: 3, scope: !2127)
!2155 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !35, file: !35, line: 1018, type: !2156, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2158)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!30, !23, !6, !6, !6}
!2158 = !{!2159, !2160, !2161, !2162}
!2159 = !DILocalVariable(name: "n", arg: 1, scope: !2155, file: !35, line: 1018, type: !23)
!2160 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2155, file: !35, line: 1018, type: !6)
!2161 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2155, file: !35, line: 1019, type: !6)
!2162 = !DILocalVariable(name: "arg", arg: 4, scope: !2155, file: !35, line: 1019, type: !6)
!2163 = !DILocation(line: 0, scope: !2155)
!2164 = !DILocalVariable(name: "n", arg: 1, scope: !2165, file: !35, line: 1026, type: !23)
!2165 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !35, file: !35, line: 1026, type: !2166, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2168)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!30, !23, !6, !6, !6, !74}
!2168 = !{!2164, !2169, !2170, !2171, !2172, !2173}
!2169 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2165, file: !35, line: 1026, type: !6)
!2170 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2165, file: !35, line: 1027, type: !6)
!2171 = !DILocalVariable(name: "arg", arg: 4, scope: !2165, file: !35, line: 1028, type: !6)
!2172 = !DILocalVariable(name: "argsize", arg: 5, scope: !2165, file: !35, line: 1028, type: !74)
!2173 = !DILocalVariable(name: "o", scope: !2165, file: !35, line: 1030, type: !86)
!2174 = !DILocation(line: 0, scope: !2165, inlinedAt: !2175)
!2175 = distinct !DILocation(line: 1021, column: 10, scope: !2155)
!2176 = !DILocation(line: 1030, column: 3, scope: !2165, inlinedAt: !2175)
!2177 = !DILocation(line: 1030, column: 26, scope: !2165, inlinedAt: !2175)
!2178 = !DILocation(line: 1030, column: 30, scope: !2165, inlinedAt: !2175)
!2179 = !DILocation(line: 0, scope: !913, inlinedAt: !2180)
!2180 = distinct !DILocation(line: 1031, column: 3, scope: !2165, inlinedAt: !2175)
!2181 = !DILocation(line: 184, column: 6, scope: !913, inlinedAt: !2180)
!2182 = !DILocation(line: 184, column: 12, scope: !913, inlinedAt: !2180)
!2183 = !DILocation(line: 185, column: 8, scope: !927, inlinedAt: !2180)
!2184 = !DILocation(line: 185, column: 19, scope: !927, inlinedAt: !2180)
!2185 = !DILocation(line: 186, column: 5, scope: !927, inlinedAt: !2180)
!2186 = !DILocation(line: 187, column: 6, scope: !913, inlinedAt: !2180)
!2187 = !DILocation(line: 187, column: 17, scope: !913, inlinedAt: !2180)
!2188 = !DILocation(line: 188, column: 6, scope: !913, inlinedAt: !2180)
!2189 = !DILocation(line: 188, column: 18, scope: !913, inlinedAt: !2180)
!2190 = !DILocation(line: 1032, column: 10, scope: !2165, inlinedAt: !2175)
!2191 = !DILocation(line: 1033, column: 1, scope: !2165, inlinedAt: !2175)
!2192 = !DILocation(line: 1021, column: 3, scope: !2155)
!2193 = !DILocation(line: 0, scope: !2165)
!2194 = !DILocation(line: 1030, column: 3, scope: !2165)
!2195 = !DILocation(line: 1030, column: 26, scope: !2165)
!2196 = !DILocation(line: 1030, column: 30, scope: !2165)
!2197 = !DILocation(line: 0, scope: !913, inlinedAt: !2198)
!2198 = distinct !DILocation(line: 1031, column: 3, scope: !2165)
!2199 = !DILocation(line: 184, column: 6, scope: !913, inlinedAt: !2198)
!2200 = !DILocation(line: 184, column: 12, scope: !913, inlinedAt: !2198)
!2201 = !DILocation(line: 185, column: 8, scope: !927, inlinedAt: !2198)
!2202 = !DILocation(line: 185, column: 19, scope: !927, inlinedAt: !2198)
!2203 = !DILocation(line: 186, column: 5, scope: !927, inlinedAt: !2198)
!2204 = !DILocation(line: 187, column: 6, scope: !913, inlinedAt: !2198)
!2205 = !DILocation(line: 187, column: 17, scope: !913, inlinedAt: !2198)
!2206 = !DILocation(line: 188, column: 6, scope: !913, inlinedAt: !2198)
!2207 = !DILocation(line: 188, column: 18, scope: !913, inlinedAt: !2198)
!2208 = !DILocation(line: 1032, column: 10, scope: !2165)
!2209 = !DILocation(line: 1033, column: 1, scope: !2165)
!2210 = !DILocation(line: 1032, column: 3, scope: !2165)
!2211 = distinct !DISubprogram(name: "quotearg_custom", scope: !35, file: !35, line: 1036, type: !2212, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2214)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!30, !6, !6, !6}
!2214 = !{!2215, !2216, !2217}
!2215 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2211, file: !35, line: 1036, type: !6)
!2216 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2211, file: !35, line: 1036, type: !6)
!2217 = !DILocalVariable(name: "arg", arg: 3, scope: !2211, file: !35, line: 1037, type: !6)
!2218 = !DILocation(line: 0, scope: !2211)
!2219 = !DILocation(line: 0, scope: !2155, inlinedAt: !2220)
!2220 = distinct !DILocation(line: 1039, column: 10, scope: !2211)
!2221 = !DILocation(line: 0, scope: !2165, inlinedAt: !2222)
!2222 = distinct !DILocation(line: 1021, column: 10, scope: !2155, inlinedAt: !2220)
!2223 = !DILocation(line: 1030, column: 3, scope: !2165, inlinedAt: !2222)
!2224 = !DILocation(line: 1030, column: 26, scope: !2165, inlinedAt: !2222)
!2225 = !DILocation(line: 1030, column: 30, scope: !2165, inlinedAt: !2222)
!2226 = !DILocation(line: 0, scope: !913, inlinedAt: !2227)
!2227 = distinct !DILocation(line: 1031, column: 3, scope: !2165, inlinedAt: !2222)
!2228 = !DILocation(line: 184, column: 6, scope: !913, inlinedAt: !2227)
!2229 = !DILocation(line: 184, column: 12, scope: !913, inlinedAt: !2227)
!2230 = !DILocation(line: 185, column: 8, scope: !927, inlinedAt: !2227)
!2231 = !DILocation(line: 185, column: 19, scope: !927, inlinedAt: !2227)
!2232 = !DILocation(line: 186, column: 5, scope: !927, inlinedAt: !2227)
!2233 = !DILocation(line: 187, column: 6, scope: !913, inlinedAt: !2227)
!2234 = !DILocation(line: 187, column: 17, scope: !913, inlinedAt: !2227)
!2235 = !DILocation(line: 188, column: 6, scope: !913, inlinedAt: !2227)
!2236 = !DILocation(line: 188, column: 18, scope: !913, inlinedAt: !2227)
!2237 = !DILocation(line: 1032, column: 10, scope: !2165, inlinedAt: !2222)
!2238 = !DILocation(line: 1033, column: 1, scope: !2165, inlinedAt: !2222)
!2239 = !DILocation(line: 1039, column: 3, scope: !2211)
!2240 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !35, file: !35, line: 1043, type: !2241, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2243)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!30, !6, !6, !6, !74}
!2243 = !{!2244, !2245, !2246, !2247}
!2244 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2240, file: !35, line: 1043, type: !6)
!2245 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2240, file: !35, line: 1043, type: !6)
!2246 = !DILocalVariable(name: "arg", arg: 3, scope: !2240, file: !35, line: 1044, type: !6)
!2247 = !DILocalVariable(name: "argsize", arg: 4, scope: !2240, file: !35, line: 1044, type: !74)
!2248 = !DILocation(line: 0, scope: !2240)
!2249 = !DILocation(line: 0, scope: !2165, inlinedAt: !2250)
!2250 = distinct !DILocation(line: 1046, column: 10, scope: !2240)
!2251 = !DILocation(line: 1030, column: 3, scope: !2165, inlinedAt: !2250)
!2252 = !DILocation(line: 1030, column: 26, scope: !2165, inlinedAt: !2250)
!2253 = !DILocation(line: 1030, column: 30, scope: !2165, inlinedAt: !2250)
!2254 = !DILocation(line: 0, scope: !913, inlinedAt: !2255)
!2255 = distinct !DILocation(line: 1031, column: 3, scope: !2165, inlinedAt: !2250)
!2256 = !DILocation(line: 184, column: 6, scope: !913, inlinedAt: !2255)
!2257 = !DILocation(line: 184, column: 12, scope: !913, inlinedAt: !2255)
!2258 = !DILocation(line: 185, column: 8, scope: !927, inlinedAt: !2255)
!2259 = !DILocation(line: 185, column: 19, scope: !927, inlinedAt: !2255)
!2260 = !DILocation(line: 186, column: 5, scope: !927, inlinedAt: !2255)
!2261 = !DILocation(line: 187, column: 6, scope: !913, inlinedAt: !2255)
!2262 = !DILocation(line: 187, column: 17, scope: !913, inlinedAt: !2255)
!2263 = !DILocation(line: 188, column: 6, scope: !913, inlinedAt: !2255)
!2264 = !DILocation(line: 188, column: 18, scope: !913, inlinedAt: !2255)
!2265 = !DILocation(line: 1032, column: 10, scope: !2165, inlinedAt: !2250)
!2266 = !DILocation(line: 1033, column: 1, scope: !2165, inlinedAt: !2250)
!2267 = !DILocation(line: 1046, column: 3, scope: !2240)
!2268 = distinct !DISubprogram(name: "quote_n_mem", scope: !35, file: !35, line: 1061, type: !2269, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2271)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!6, !23, !6, !74}
!2271 = !{!2272, !2273, !2274}
!2272 = !DILocalVariable(name: "n", arg: 1, scope: !2268, file: !35, line: 1061, type: !23)
!2273 = !DILocalVariable(name: "arg", arg: 2, scope: !2268, file: !35, line: 1061, type: !6)
!2274 = !DILocalVariable(name: "argsize", arg: 3, scope: !2268, file: !35, line: 1061, type: !74)
!2275 = !DILocation(line: 0, scope: !2268)
!2276 = !DILocation(line: 1063, column: 10, scope: !2268)
!2277 = !DILocation(line: 1063, column: 3, scope: !2268)
!2278 = distinct !DISubprogram(name: "quote_mem", scope: !35, file: !35, line: 1067, type: !2279, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2281)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!6, !6, !74}
!2281 = !{!2282, !2283}
!2282 = !DILocalVariable(name: "arg", arg: 1, scope: !2278, file: !35, line: 1067, type: !6)
!2283 = !DILocalVariable(name: "argsize", arg: 2, scope: !2278, file: !35, line: 1067, type: !74)
!2284 = !DILocation(line: 0, scope: !2278)
!2285 = !DILocation(line: 0, scope: !2268, inlinedAt: !2286)
!2286 = distinct !DILocation(line: 1069, column: 10, scope: !2278)
!2287 = !DILocation(line: 1063, column: 10, scope: !2268, inlinedAt: !2286)
!2288 = !DILocation(line: 1069, column: 3, scope: !2278)
!2289 = distinct !DISubprogram(name: "quote_n", scope: !35, file: !35, line: 1073, type: !2290, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2292)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!6, !23, !6}
!2292 = !{!2293, !2294}
!2293 = !DILocalVariable(name: "n", arg: 1, scope: !2289, file: !35, line: 1073, type: !23)
!2294 = !DILocalVariable(name: "arg", arg: 2, scope: !2289, file: !35, line: 1073, type: !6)
!2295 = !DILocation(line: 0, scope: !2289)
!2296 = !DILocation(line: 0, scope: !2268, inlinedAt: !2297)
!2297 = distinct !DILocation(line: 1075, column: 10, scope: !2289)
!2298 = !DILocation(line: 1063, column: 10, scope: !2268, inlinedAt: !2297)
!2299 = !DILocation(line: 1075, column: 3, scope: !2289)
!2300 = distinct !DISubprogram(name: "quote", scope: !35, file: !35, line: 1079, type: !2301, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2303)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!6, !6}
!2303 = !{!2304}
!2304 = !DILocalVariable(name: "arg", arg: 1, scope: !2300, file: !35, line: 1079, type: !6)
!2305 = !DILocation(line: 0, scope: !2300)
!2306 = !DILocation(line: 0, scope: !2289, inlinedAt: !2307)
!2307 = distinct !DILocation(line: 1081, column: 10, scope: !2300)
!2308 = !DILocation(line: 0, scope: !2268, inlinedAt: !2309)
!2309 = distinct !DILocation(line: 1075, column: 10, scope: !2289, inlinedAt: !2307)
!2310 = !DILocation(line: 1063, column: 10, scope: !2268, inlinedAt: !2309)
!2311 = !DILocation(line: 1081, column: 3, scope: !2300)
!2312 = distinct !DISubprogram(name: "version_etc_arn", scope: !130, file: !130, line: 61, type: !2313, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !129, retainedNodes: !2351)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{null, !2315, !6, !6, !6, !2350, !74}
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2317, line: 7, baseType: !2318)
!2317 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !595, line: 49, size: 1728, elements: !2319)
!2319 = !{!2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2318, file: !595, line: 51, baseType: !23, size: 32)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2318, file: !595, line: 54, baseType: !30, size: 64, offset: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2318, file: !595, line: 55, baseType: !30, size: 64, offset: 128)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2318, file: !595, line: 56, baseType: !30, size: 64, offset: 192)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2318, file: !595, line: 57, baseType: !30, size: 64, offset: 256)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2318, file: !595, line: 58, baseType: !30, size: 64, offset: 320)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2318, file: !595, line: 59, baseType: !30, size: 64, offset: 384)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2318, file: !595, line: 60, baseType: !30, size: 64, offset: 448)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2318, file: !595, line: 61, baseType: !30, size: 64, offset: 512)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2318, file: !595, line: 64, baseType: !30, size: 64, offset: 576)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2318, file: !595, line: 65, baseType: !30, size: 64, offset: 640)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2318, file: !595, line: 66, baseType: !30, size: 64, offset: 704)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2318, file: !595, line: 68, baseType: !610, size: 64, offset: 768)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2318, file: !595, line: 70, baseType: !2334, size: 64, offset: 832)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2318, file: !595, line: 72, baseType: !23, size: 32, offset: 896)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2318, file: !595, line: 73, baseType: !23, size: 32, offset: 928)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2318, file: !595, line: 74, baseType: !616, size: 64, offset: 960)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2318, file: !595, line: 77, baseType: !73, size: 16, offset: 1024)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2318, file: !595, line: 78, baseType: !621, size: 8, offset: 1040)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2318, file: !595, line: 79, baseType: !623, size: 8, offset: 1048)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2318, file: !595, line: 81, baseType: !627, size: 64, offset: 1088)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2318, file: !595, line: 89, baseType: !630, size: 64, offset: 1152)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2318, file: !595, line: 91, baseType: !632, size: 64, offset: 1216)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2318, file: !595, line: 92, baseType: !635, size: 64, offset: 1280)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2318, file: !595, line: 93, baseType: !2334, size: 64, offset: 1344)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2318, file: !595, line: 94, baseType: !29, size: 64, offset: 1408)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2318, file: !595, line: 95, baseType: !74, size: 64, offset: 1472)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2318, file: !595, line: 96, baseType: !23, size: 32, offset: 1536)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2318, file: !595, line: 98, baseType: !642, size: 160, offset: 1568)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!2351 = !{!2352, !2353, !2354, !2355, !2356, !2357}
!2352 = !DILocalVariable(name: "stream", arg: 1, scope: !2312, file: !130, line: 61, type: !2315)
!2353 = !DILocalVariable(name: "command_name", arg: 2, scope: !2312, file: !130, line: 62, type: !6)
!2354 = !DILocalVariable(name: "package", arg: 3, scope: !2312, file: !130, line: 62, type: !6)
!2355 = !DILocalVariable(name: "version", arg: 4, scope: !2312, file: !130, line: 63, type: !6)
!2356 = !DILocalVariable(name: "authors", arg: 5, scope: !2312, file: !130, line: 64, type: !2350)
!2357 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2312, file: !130, line: 64, type: !74)
!2358 = !DILocation(line: 0, scope: !2312)
!2359 = !DILocation(line: 66, column: 7, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2312, file: !130, line: 66, column: 7)
!2361 = !DILocation(line: 66, column: 7, scope: !2312)
!2362 = !DILocation(line: 67, column: 5, scope: !2360)
!2363 = !DILocation(line: 69, column: 5, scope: !2360)
!2364 = !DILocation(line: 83, column: 3, scope: !2312)
!2365 = !DILocation(line: 85, column: 3, scope: !2312)
!2366 = !DILocation(line: 88, column: 3, scope: !2312)
!2367 = !DILocation(line: 95, column: 3, scope: !2312)
!2368 = !DILocation(line: 97, column: 3, scope: !2312)
!2369 = !DILocation(line: 105, column: 7, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2312, file: !130, line: 98, column: 5)
!2371 = !DILocation(line: 106, column: 7, scope: !2370)
!2372 = !DILocation(line: 109, column: 7, scope: !2370)
!2373 = !DILocation(line: 110, column: 7, scope: !2370)
!2374 = !DILocation(line: 113, column: 7, scope: !2370)
!2375 = !DILocation(line: 115, column: 7, scope: !2370)
!2376 = !DILocation(line: 120, column: 7, scope: !2370)
!2377 = !DILocation(line: 122, column: 7, scope: !2370)
!2378 = !DILocation(line: 127, column: 7, scope: !2370)
!2379 = !DILocation(line: 129, column: 7, scope: !2370)
!2380 = !DILocation(line: 134, column: 7, scope: !2370)
!2381 = !DILocation(line: 137, column: 7, scope: !2370)
!2382 = !DILocation(line: 142, column: 7, scope: !2370)
!2383 = !DILocation(line: 145, column: 7, scope: !2370)
!2384 = !DILocation(line: 150, column: 7, scope: !2370)
!2385 = !DILocation(line: 154, column: 7, scope: !2370)
!2386 = !DILocation(line: 159, column: 7, scope: !2370)
!2387 = !DILocation(line: 163, column: 7, scope: !2370)
!2388 = !DILocation(line: 170, column: 7, scope: !2370)
!2389 = !DILocation(line: 174, column: 7, scope: !2370)
!2390 = !DILocation(line: 176, column: 1, scope: !2312)
!2391 = distinct !DISubprogram(name: "version_etc_ar", scope: !130, file: !130, line: 183, type: !2392, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !129, retainedNodes: !2394)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{null, !2315, !6, !6, !6, !2350}
!2394 = !{!2395, !2396, !2397, !2398, !2399, !2400}
!2395 = !DILocalVariable(name: "stream", arg: 1, scope: !2391, file: !130, line: 183, type: !2315)
!2396 = !DILocalVariable(name: "command_name", arg: 2, scope: !2391, file: !130, line: 184, type: !6)
!2397 = !DILocalVariable(name: "package", arg: 3, scope: !2391, file: !130, line: 184, type: !6)
!2398 = !DILocalVariable(name: "version", arg: 4, scope: !2391, file: !130, line: 185, type: !6)
!2399 = !DILocalVariable(name: "authors", arg: 5, scope: !2391, file: !130, line: 185, type: !2350)
!2400 = !DILocalVariable(name: "n_authors", scope: !2391, file: !130, line: 187, type: !74)
!2401 = !DILocation(line: 0, scope: !2391)
!2402 = !DILocation(line: 189, column: 8, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2391, file: !130, line: 189, column: 3)
!2404 = !DILocation(line: 0, scope: !2403)
!2405 = !DILocation(line: 189, column: 23, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2403, file: !130, line: 189, column: 3)
!2407 = !DILocation(line: 189, column: 3, scope: !2403)
!2408 = !DILocation(line: 189, column: 52, scope: !2406)
!2409 = distinct !{!2409, !2407, !2410, !677}
!2410 = !DILocation(line: 190, column: 5, scope: !2403)
!2411 = !DILocation(line: 191, column: 3, scope: !2391)
!2412 = !DILocation(line: 192, column: 1, scope: !2391)
!2413 = distinct !DISubprogram(name: "version_etc_va", scope: !130, file: !130, line: 199, type: !2414, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !129, retainedNodes: !2423)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{null, !2315, !6, !6, !6, !2416}
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2418)
!2418 = !{!2419, !2420, !2421, !2422}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2417, file: !130, line: 192, baseType: !39, size: 32)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2417, file: !130, line: 192, baseType: !39, size: 32, offset: 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2417, file: !130, line: 192, baseType: !29, size: 64, offset: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2417, file: !130, line: 192, baseType: !29, size: 64, offset: 128)
!2423 = !{!2424, !2425, !2426, !2427, !2428, !2429, !2430}
!2424 = !DILocalVariable(name: "stream", arg: 1, scope: !2413, file: !130, line: 199, type: !2315)
!2425 = !DILocalVariable(name: "command_name", arg: 2, scope: !2413, file: !130, line: 200, type: !6)
!2426 = !DILocalVariable(name: "package", arg: 3, scope: !2413, file: !130, line: 200, type: !6)
!2427 = !DILocalVariable(name: "version", arg: 4, scope: !2413, file: !130, line: 201, type: !6)
!2428 = !DILocalVariable(name: "authors", arg: 5, scope: !2413, file: !130, line: 201, type: !2416)
!2429 = !DILocalVariable(name: "n_authors", scope: !2413, file: !130, line: 203, type: !74)
!2430 = !DILocalVariable(name: "authtab", scope: !2413, file: !130, line: 204, type: !2431)
!2431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !82)
!2432 = !DILocation(line: 0, scope: !2413)
!2433 = !DILocation(line: 204, column: 3, scope: !2413)
!2434 = !DILocation(line: 204, column: 15, scope: !2413)
!2435 = !DILocation(line: 208, column: 35, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !130, line: 206, column: 3)
!2437 = distinct !DILexicalBlock(scope: !2413, file: !130, line: 206, column: 3)
!2438 = !DILocation(line: 208, column: 14, scope: !2436)
!2439 = !DILocation(line: 208, column: 33, scope: !2436)
!2440 = !DILocation(line: 208, column: 67, scope: !2436)
!2441 = !DILocation(line: 206, column: 3, scope: !2437)
!2442 = !DILocation(line: 0, scope: !2437)
!2443 = !DILocation(line: 211, column: 3, scope: !2413)
!2444 = !DILocation(line: 213, column: 1, scope: !2413)
!2445 = distinct !DISubprogram(name: "version_etc", scope: !130, file: !130, line: 230, type: !2446, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !129, retainedNodes: !2448)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{null, !2315, !6, !6, !6, null}
!2448 = !{!2449, !2450, !2451, !2452, !2453}
!2449 = !DILocalVariable(name: "stream", arg: 1, scope: !2445, file: !130, line: 230, type: !2315)
!2450 = !DILocalVariable(name: "command_name", arg: 2, scope: !2445, file: !130, line: 231, type: !6)
!2451 = !DILocalVariable(name: "package", arg: 3, scope: !2445, file: !130, line: 231, type: !6)
!2452 = !DILocalVariable(name: "version", arg: 4, scope: !2445, file: !130, line: 232, type: !6)
!2453 = !DILocalVariable(name: "authors", scope: !2445, file: !130, line: 234, type: !2454)
!2454 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !590, line: 52, baseType: !2455)
!2455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2456, line: 32, baseType: !2457)
!2456 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!2457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !130, baseType: !2458)
!2458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2417, size: 192, elements: !624)
!2459 = !DILocation(line: 0, scope: !2445)
!2460 = !DILocation(line: 234, column: 3, scope: !2445)
!2461 = !DILocation(line: 234, column: 11, scope: !2445)
!2462 = !DILocation(line: 236, column: 3, scope: !2445)
!2463 = !DILocation(line: 237, column: 3, scope: !2445)
!2464 = !DILocation(line: 238, column: 3, scope: !2445)
!2465 = !DILocation(line: 239, column: 1, scope: !2445)
!2466 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !130, file: !130, line: 242, type: !740, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !129, retainedNodes: !4)
!2467 = !DILocation(line: 244, column: 3, scope: !2466)
!2468 = !DILocation(line: 249, column: 3, scope: !2466)
!2469 = !DILocation(line: 255, column: 3, scope: !2466)
!2470 = !DILocation(line: 260, column: 3, scope: !2466)
!2471 = !DILocation(line: 262, column: 1, scope: !2466)
!2472 = distinct !DISubprogram(name: "xnmalloc", scope: !140, file: !140, line: 99, type: !2473, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !2475)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!29, !74, !74}
!2475 = !{!2476, !2477}
!2476 = !DILocalVariable(name: "n", arg: 1, scope: !2472, file: !140, line: 99, type: !74)
!2477 = !DILocalVariable(name: "s", arg: 2, scope: !2472, file: !140, line: 99, type: !74)
!2478 = !DILocation(line: 0, scope: !2472)
!2479 = !DILocation(line: 101, column: 7, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2472, file: !140, line: 101, column: 7)
!2481 = !DILocation(line: 101, column: 7, scope: !2472)
!2482 = !DILocation(line: 102, column: 5, scope: !2480)
!2483 = !DILocation(line: 103, column: 21, scope: !2472)
!2484 = !DILocalVariable(name: "n", arg: 1, scope: !2485, file: !137, line: 39, type: !74)
!2485 = distinct !DISubprogram(name: "xmalloc", scope: !137, file: !137, line: 39, type: !2486, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !2488)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!29, !74}
!2488 = !{!2484, !2489}
!2489 = !DILocalVariable(name: "p", scope: !2485, file: !137, line: 41, type: !29)
!2490 = !DILocation(line: 0, scope: !2485, inlinedAt: !2491)
!2491 = distinct !DILocation(line: 103, column: 10, scope: !2472)
!2492 = !DILocation(line: 41, column: 13, scope: !2485, inlinedAt: !2491)
!2493 = !DILocation(line: 42, column: 8, scope: !2494, inlinedAt: !2491)
!2494 = distinct !DILexicalBlock(scope: !2485, file: !137, line: 42, column: 7)
!2495 = !DILocation(line: 42, column: 10, scope: !2494, inlinedAt: !2491)
!2496 = !DILocation(line: 43, column: 5, scope: !2494, inlinedAt: !2491)
!2497 = !DILocation(line: 103, column: 3, scope: !2472)
!2498 = !DILocation(line: 0, scope: !2485)
!2499 = !DILocation(line: 41, column: 13, scope: !2485)
!2500 = !DILocation(line: 42, column: 8, scope: !2494)
!2501 = !DILocation(line: 42, column: 10, scope: !2494)
!2502 = !DILocation(line: 43, column: 5, scope: !2494)
!2503 = !DILocation(line: 44, column: 3, scope: !2485)
!2504 = distinct !DISubprogram(name: "xnrealloc", scope: !140, file: !140, line: 112, type: !2505, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !2507)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!29, !29, !74, !74}
!2507 = !{!2508, !2509, !2510}
!2508 = !DILocalVariable(name: "p", arg: 1, scope: !2504, file: !140, line: 112, type: !29)
!2509 = !DILocalVariable(name: "n", arg: 2, scope: !2504, file: !140, line: 112, type: !74)
!2510 = !DILocalVariable(name: "s", arg: 3, scope: !2504, file: !140, line: 112, type: !74)
!2511 = !DILocation(line: 0, scope: !2504)
!2512 = !DILocation(line: 114, column: 7, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2504, file: !140, line: 114, column: 7)
!2514 = !DILocation(line: 114, column: 7, scope: !2504)
!2515 = !DILocation(line: 115, column: 5, scope: !2513)
!2516 = !DILocation(line: 116, column: 25, scope: !2504)
!2517 = !DILocalVariable(name: "p", arg: 1, scope: !2518, file: !137, line: 51, type: !29)
!2518 = distinct !DISubprogram(name: "xrealloc", scope: !137, file: !137, line: 51, type: !2519, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !2521)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!29, !29, !74}
!2521 = !{!2517, !2522}
!2522 = !DILocalVariable(name: "n", arg: 2, scope: !2518, file: !137, line: 51, type: !74)
!2523 = !DILocation(line: 0, scope: !2518, inlinedAt: !2524)
!2524 = distinct !DILocation(line: 116, column: 10, scope: !2504)
!2525 = !DILocation(line: 53, column: 8, scope: !2526, inlinedAt: !2524)
!2526 = distinct !DILexicalBlock(scope: !2518, file: !137, line: 53, column: 7)
!2527 = !DILocation(line: 53, column: 10, scope: !2526, inlinedAt: !2524)
!2528 = !DILocation(line: 57, column: 7, scope: !2529, inlinedAt: !2524)
!2529 = distinct !DILexicalBlock(scope: !2526, file: !137, line: 54, column: 5)
!2530 = !DILocation(line: 58, column: 7, scope: !2529, inlinedAt: !2524)
!2531 = !DILocation(line: 61, column: 7, scope: !2518, inlinedAt: !2524)
!2532 = !DILocation(line: 62, column: 8, scope: !2533, inlinedAt: !2524)
!2533 = distinct !DILexicalBlock(scope: !2518, file: !137, line: 62, column: 7)
!2534 = !DILocation(line: 62, column: 10, scope: !2533, inlinedAt: !2524)
!2535 = !DILocation(line: 63, column: 5, scope: !2533, inlinedAt: !2524)
!2536 = !DILocation(line: 116, column: 3, scope: !2504)
!2537 = !DILocation(line: 0, scope: !2518)
!2538 = !DILocation(line: 53, column: 8, scope: !2526)
!2539 = !DILocation(line: 53, column: 10, scope: !2526)
!2540 = !DILocation(line: 57, column: 7, scope: !2529)
!2541 = !DILocation(line: 58, column: 7, scope: !2529)
!2542 = !DILocation(line: 61, column: 7, scope: !2518)
!2543 = !DILocation(line: 62, column: 8, scope: !2533)
!2544 = !DILocation(line: 62, column: 10, scope: !2533)
!2545 = !DILocation(line: 63, column: 5, scope: !2533)
!2546 = !DILocation(line: 65, column: 1, scope: !2518)
!2547 = !DILocation(line: 0, scope: !141)
!2548 = !DILocation(line: 176, column: 14, scope: !141)
!2549 = !DILocation(line: 178, column: 9, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !141, file: !140, line: 178, column: 7)
!2551 = !DILocation(line: 178, column: 7, scope: !141)
!2552 = !DILocation(line: 180, column: 13, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2554, file: !140, line: 180, column: 11)
!2554 = distinct !DILexicalBlock(scope: !2550, file: !140, line: 179, column: 5)
!2555 = !DILocation(line: 180, column: 11, scope: !2554)
!2556 = !DILocation(line: 188, column: 30, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2553, file: !140, line: 181, column: 9)
!2558 = !DILocation(line: 189, column: 16, scope: !2557)
!2559 = !DILocation(line: 189, column: 13, scope: !2557)
!2560 = !DILocation(line: 190, column: 9, scope: !2557)
!2561 = !DILocation(line: 191, column: 11, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2554, file: !140, line: 191, column: 11)
!2563 = !DILocation(line: 191, column: 11, scope: !2554)
!2564 = !DILocation(line: 206, column: 7, scope: !141)
!2565 = !DILocation(line: 207, column: 25, scope: !141)
!2566 = !DILocation(line: 0, scope: !2518, inlinedAt: !2567)
!2567 = distinct !DILocation(line: 207, column: 10, scope: !141)
!2568 = !DILocation(line: 53, column: 10, scope: !2526, inlinedAt: !2567)
!2569 = !DILocation(line: 192, column: 9, scope: !2562)
!2570 = !DILocation(line: 200, column: 69, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2572, file: !140, line: 200, column: 11)
!2572 = distinct !DILexicalBlock(scope: !2550, file: !140, line: 195, column: 5)
!2573 = !DILocation(line: 201, column: 11, scope: !2571)
!2574 = !DILocation(line: 200, column: 11, scope: !2572)
!2575 = !DILocation(line: 202, column: 9, scope: !2571)
!2576 = !DILocation(line: 203, column: 14, scope: !2572)
!2577 = !DILocation(line: 203, column: 18, scope: !2572)
!2578 = !DILocation(line: 203, column: 9, scope: !2572)
!2579 = !DILocation(line: 53, column: 8, scope: !2526, inlinedAt: !2567)
!2580 = !DILocation(line: 57, column: 7, scope: !2529, inlinedAt: !2567)
!2581 = !DILocation(line: 58, column: 7, scope: !2529, inlinedAt: !2567)
!2582 = !DILocation(line: 61, column: 7, scope: !2518, inlinedAt: !2567)
!2583 = !DILocation(line: 62, column: 8, scope: !2533, inlinedAt: !2567)
!2584 = !DILocation(line: 62, column: 10, scope: !2533, inlinedAt: !2567)
!2585 = !DILocation(line: 63, column: 5, scope: !2533, inlinedAt: !2567)
!2586 = !DILocation(line: 207, column: 3, scope: !141)
!2587 = distinct !DISubprogram(name: "xcharalloc", scope: !140, file: !140, line: 216, type: !1723, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !2588)
!2588 = !{!2589}
!2589 = !DILocalVariable(name: "n", arg: 1, scope: !2587, file: !140, line: 216, type: !74)
!2590 = !DILocation(line: 0, scope: !2587)
!2591 = !DILocation(line: 0, scope: !2485, inlinedAt: !2592)
!2592 = distinct !DILocation(line: 218, column: 10, scope: !2587)
!2593 = !DILocation(line: 41, column: 13, scope: !2485, inlinedAt: !2592)
!2594 = !DILocation(line: 42, column: 8, scope: !2494, inlinedAt: !2592)
!2595 = !DILocation(line: 42, column: 10, scope: !2494, inlinedAt: !2592)
!2596 = !DILocation(line: 43, column: 5, scope: !2494, inlinedAt: !2592)
!2597 = !DILocation(line: 218, column: 3, scope: !2587)
!2598 = distinct !DISubprogram(name: "x2realloc", scope: !137, file: !137, line: 74, type: !2599, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !2601)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!29, !29, !144}
!2601 = !{!2602, !2603}
!2602 = !DILocalVariable(name: "p", arg: 1, scope: !2598, file: !137, line: 74, type: !29)
!2603 = !DILocalVariable(name: "pn", arg: 2, scope: !2598, file: !137, line: 74, type: !144)
!2604 = !DILocation(line: 0, scope: !2598)
!2605 = !DILocation(line: 0, scope: !141, inlinedAt: !2606)
!2606 = distinct !DILocation(line: 76, column: 10, scope: !2598)
!2607 = !DILocation(line: 176, column: 14, scope: !141, inlinedAt: !2606)
!2608 = !DILocation(line: 178, column: 9, scope: !2550, inlinedAt: !2606)
!2609 = !DILocation(line: 178, column: 7, scope: !141, inlinedAt: !2606)
!2610 = !DILocation(line: 180, column: 13, scope: !2553, inlinedAt: !2606)
!2611 = !DILocation(line: 180, column: 11, scope: !2554, inlinedAt: !2606)
!2612 = !DILocation(line: 191, column: 11, scope: !2562, inlinedAt: !2606)
!2613 = !DILocation(line: 191, column: 11, scope: !2554, inlinedAt: !2606)
!2614 = !DILocation(line: 192, column: 9, scope: !2562, inlinedAt: !2606)
!2615 = !DILocation(line: 201, column: 11, scope: !2571, inlinedAt: !2606)
!2616 = !DILocation(line: 200, column: 11, scope: !2572, inlinedAt: !2606)
!2617 = !DILocation(line: 202, column: 9, scope: !2571, inlinedAt: !2606)
!2618 = !DILocation(line: 203, column: 14, scope: !2572, inlinedAt: !2606)
!2619 = !DILocation(line: 203, column: 18, scope: !2572, inlinedAt: !2606)
!2620 = !DILocation(line: 203, column: 9, scope: !2572, inlinedAt: !2606)
!2621 = !DILocation(line: 0, scope: !2518, inlinedAt: !2622)
!2622 = distinct !DILocation(line: 207, column: 10, scope: !141, inlinedAt: !2606)
!2623 = !DILocation(line: 53, column: 10, scope: !2526, inlinedAt: !2622)
!2624 = !DILocation(line: 206, column: 7, scope: !141, inlinedAt: !2606)
!2625 = !DILocation(line: 61, column: 7, scope: !2518, inlinedAt: !2622)
!2626 = !DILocation(line: 62, column: 8, scope: !2533, inlinedAt: !2622)
!2627 = !DILocation(line: 62, column: 10, scope: !2533, inlinedAt: !2622)
!2628 = !DILocation(line: 63, column: 5, scope: !2533, inlinedAt: !2622)
!2629 = !DILocation(line: 76, column: 3, scope: !2598)
!2630 = distinct !DISubprogram(name: "xzalloc", scope: !137, file: !137, line: 84, type: !2486, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !2631)
!2631 = !{!2632}
!2632 = !DILocalVariable(name: "n", arg: 1, scope: !2630, file: !137, line: 84, type: !74)
!2633 = !DILocation(line: 0, scope: !2630)
!2634 = !DILocalVariable(name: "n", arg: 1, scope: !2635, file: !137, line: 93, type: !74)
!2635 = distinct !DISubprogram(name: "xcalloc", scope: !137, file: !137, line: 93, type: !2473, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !2636)
!2636 = !{!2634, !2637, !2638}
!2637 = !DILocalVariable(name: "s", arg: 2, scope: !2635, file: !137, line: 93, type: !74)
!2638 = !DILocalVariable(name: "p", scope: !2635, file: !137, line: 95, type: !29)
!2639 = !DILocation(line: 0, scope: !2635, inlinedAt: !2640)
!2640 = distinct !DILocation(line: 86, column: 10, scope: !2630)
!2641 = !DILocation(line: 100, column: 7, scope: !2642, inlinedAt: !2640)
!2642 = distinct !DILexicalBlock(scope: !2635, file: !137, line: 100, column: 7)
!2643 = !DILocation(line: 101, column: 7, scope: !2642, inlinedAt: !2640)
!2644 = !DILocation(line: 101, column: 18, scope: !2642, inlinedAt: !2640)
!2645 = !DILocation(line: 101, column: 16, scope: !2642, inlinedAt: !2640)
!2646 = !DILocation(line: 100, column: 7, scope: !2635, inlinedAt: !2640)
!2647 = !DILocation(line: 102, column: 5, scope: !2642, inlinedAt: !2640)
!2648 = !DILocation(line: 86, column: 3, scope: !2630)
!2649 = !DILocation(line: 0, scope: !2635)
!2650 = !DILocation(line: 100, column: 7, scope: !2642)
!2651 = !DILocation(line: 101, column: 7, scope: !2642)
!2652 = !DILocation(line: 101, column: 18, scope: !2642)
!2653 = !DILocation(line: 101, column: 16, scope: !2642)
!2654 = !DILocation(line: 100, column: 7, scope: !2635)
!2655 = !DILocation(line: 102, column: 5, scope: !2642)
!2656 = !DILocation(line: 103, column: 3, scope: !2635)
!2657 = distinct !DISubprogram(name: "xmemdup", scope: !137, file: !137, line: 111, type: !2658, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !2662)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!29, !2660, !74}
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2662 = !{!2663, !2664}
!2663 = !DILocalVariable(name: "p", arg: 1, scope: !2657, file: !137, line: 111, type: !2660)
!2664 = !DILocalVariable(name: "s", arg: 2, scope: !2657, file: !137, line: 111, type: !74)
!2665 = !DILocation(line: 0, scope: !2657)
!2666 = !DILocation(line: 0, scope: !2485, inlinedAt: !2667)
!2667 = distinct !DILocation(line: 113, column: 18, scope: !2657)
!2668 = !DILocation(line: 41, column: 13, scope: !2485, inlinedAt: !2667)
!2669 = !DILocation(line: 42, column: 8, scope: !2494, inlinedAt: !2667)
!2670 = !DILocation(line: 42, column: 10, scope: !2494, inlinedAt: !2667)
!2671 = !DILocation(line: 43, column: 5, scope: !2494, inlinedAt: !2667)
!2672 = !DILocalVariable(name: "__dest", arg: 1, scope: !2673, file: !1250, line: 26, type: !2676)
!2673 = distinct !DISubprogram(name: "memcpy", scope: !1250, file: !1250, line: 26, type: !2674, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !2678)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!29, !2676, !2677, !74}
!2676 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !29)
!2677 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2660)
!2678 = !{!2672, !2679, !2680}
!2679 = !DILocalVariable(name: "__src", arg: 2, scope: !2673, file: !1250, line: 26, type: !2677)
!2680 = !DILocalVariable(name: "__len", arg: 3, scope: !2673, file: !1250, line: 26, type: !74)
!2681 = !DILocation(line: 0, scope: !2673, inlinedAt: !2682)
!2682 = distinct !DILocation(line: 113, column: 10, scope: !2657)
!2683 = !DILocation(line: 29, column: 10, scope: !2673, inlinedAt: !2682)
!2684 = !DILocation(line: 113, column: 3, scope: !2657)
!2685 = distinct !DISubprogram(name: "xstrdup", scope: !137, file: !137, line: 119, type: !733, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !2686)
!2686 = !{!2687}
!2687 = !DILocalVariable(name: "string", arg: 1, scope: !2685, file: !137, line: 119, type: !6)
!2688 = !DILocation(line: 0, scope: !2685)
!2689 = !DILocation(line: 121, column: 27, scope: !2685)
!2690 = !DILocation(line: 121, column: 43, scope: !2685)
!2691 = !DILocation(line: 0, scope: !2657, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 121, column: 10, scope: !2685)
!2693 = !DILocation(line: 0, scope: !2485, inlinedAt: !2694)
!2694 = distinct !DILocation(line: 113, column: 18, scope: !2657, inlinedAt: !2692)
!2695 = !DILocation(line: 41, column: 13, scope: !2485, inlinedAt: !2694)
!2696 = !DILocation(line: 42, column: 8, scope: !2494, inlinedAt: !2694)
!2697 = !DILocation(line: 42, column: 10, scope: !2494, inlinedAt: !2694)
!2698 = !DILocation(line: 43, column: 5, scope: !2494, inlinedAt: !2694)
!2699 = !DILocation(line: 0, scope: !2673, inlinedAt: !2700)
!2700 = distinct !DILocation(line: 113, column: 10, scope: !2657, inlinedAt: !2692)
!2701 = !DILocation(line: 29, column: 10, scope: !2673, inlinedAt: !2700)
!2702 = !DILocation(line: 121, column: 3, scope: !2685)
!2703 = distinct !DISubprogram(name: "xalloc_die", scope: !154, file: !154, line: 32, type: !740, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !4)
!2704 = !DILocation(line: 34, column: 10, scope: !2703)
!2705 = !DILocation(line: 34, column: 33, scope: !2703)
!2706 = !DILocation(line: 34, column: 3, scope: !2703)
!2707 = !DILocation(line: 40, column: 3, scope: !2703)
!2708 = distinct !DISubprogram(name: "rpl_calloc", scope: !156, file: !156, line: 42, type: !2473, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !155, retainedNodes: !2709)
!2709 = !{!2710, !2711, !2712, !2713}
!2710 = !DILocalVariable(name: "n", arg: 1, scope: !2708, file: !156, line: 42, type: !74)
!2711 = !DILocalVariable(name: "s", arg: 2, scope: !2708, file: !156, line: 42, type: !74)
!2712 = !DILocalVariable(name: "result", scope: !2708, file: !156, line: 44, type: !29)
!2713 = !DILocalVariable(name: "bytes", scope: !2714, file: !156, line: 56, type: !74)
!2714 = distinct !DILexicalBlock(scope: !2715, file: !156, line: 53, column: 5)
!2715 = distinct !DILexicalBlock(scope: !2708, file: !156, line: 47, column: 7)
!2716 = !DILocation(line: 0, scope: !2708)
!2717 = !DILocation(line: 47, column: 9, scope: !2715)
!2718 = !DILocation(line: 47, column: 14, scope: !2715)
!2719 = !DILocation(line: 0, scope: !2714)
!2720 = !DILocation(line: 57, column: 21, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2714, file: !156, line: 57, column: 11)
!2722 = !DILocation(line: 57, column: 11, scope: !2714)
!2723 = !DILocation(line: 59, column: 11, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2721, file: !156, line: 58, column: 9)
!2725 = !DILocation(line: 59, column: 17, scope: !2724)
!2726 = !DILocation(line: 65, column: 12, scope: !2708)
!2727 = !DILocation(line: 72, column: 3, scope: !2708)
!2728 = !DILocation(line: 73, column: 1, scope: !2708)
!2729 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !158, file: !158, line: 86, type: !2730, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !2744)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!74, !2732, !6, !74, !2733}
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1002, line: 6, baseType: !2735)
!2735 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1004, line: 21, baseType: !2736)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1004, line: 13, size: 64, elements: !2737)
!2737 = !{!2738, !2739}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2736, file: !1004, line: 15, baseType: !23, size: 32)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2736, file: !1004, line: 20, baseType: !2740, size: 32, offset: 32)
!2740 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2736, file: !1004, line: 16, size: 32, elements: !2741)
!2741 = !{!2742, !2743}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2740, file: !1004, line: 18, baseType: !39, size: 32)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2740, file: !1004, line: 19, baseType: !1013, size: 32)
!2744 = !{!2745, !2746, !2747, !2748, !2749, !2750, !2751}
!2745 = !DILocalVariable(name: "pwc", arg: 1, scope: !2729, file: !158, line: 86, type: !2732)
!2746 = !DILocalVariable(name: "s", arg: 2, scope: !2729, file: !158, line: 86, type: !6)
!2747 = !DILocalVariable(name: "n", arg: 3, scope: !2729, file: !158, line: 86, type: !74)
!2748 = !DILocalVariable(name: "ps", arg: 4, scope: !2729, file: !158, line: 86, type: !2733)
!2749 = !DILocalVariable(name: "ret", scope: !2729, file: !158, line: 88, type: !74)
!2750 = !DILocalVariable(name: "wc", scope: !2729, file: !158, line: 89, type: !1018)
!2751 = !DILocalVariable(name: "uc", scope: !2752, file: !158, line: 156, type: !880)
!2752 = distinct !DILexicalBlock(scope: !2753, file: !158, line: 155, column: 5)
!2753 = distinct !DILexicalBlock(scope: !2729, file: !158, line: 154, column: 7)
!2754 = !DILocation(line: 0, scope: !2729)
!2755 = !DILocation(line: 89, column: 3, scope: !2729)
!2756 = !DILocation(line: 105, column: 9, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2729, file: !158, line: 105, column: 7)
!2758 = !DILocation(line: 105, column: 7, scope: !2729)
!2759 = !DILocation(line: 145, column: 9, scope: !2729)
!2760 = !DILocation(line: 154, column: 19, scope: !2753)
!2761 = !DILocation(line: 154, column: 26, scope: !2753)
!2762 = !DILocation(line: 154, column: 41, scope: !2753)
!2763 = !DILocation(line: 154, column: 7, scope: !2729)
!2764 = !DILocation(line: 156, column: 26, scope: !2752)
!2765 = !DILocation(line: 0, scope: !2752)
!2766 = !DILocation(line: 157, column: 14, scope: !2752)
!2767 = !DILocation(line: 157, column: 12, scope: !2752)
!2768 = !DILocation(line: 163, column: 1, scope: !2729)
!2769 = !DISubprogram(name: "mbrtowc", scope: !1683, file: !1683, line: 296, type: !2770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!76, !2772, !6, !76, !2773}
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2774 = distinct !DISubprogram(name: "close_stream", scope: !161, file: !161, line: 56, type: !2775, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !2811)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!23, !2777}
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2317, line: 7, baseType: !2779)
!2779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !595, line: 49, size: 1728, elements: !2780)
!2780 = !{!2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2779, file: !595, line: 51, baseType: !23, size: 32)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2779, file: !595, line: 54, baseType: !30, size: 64, offset: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2779, file: !595, line: 55, baseType: !30, size: 64, offset: 128)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2779, file: !595, line: 56, baseType: !30, size: 64, offset: 192)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2779, file: !595, line: 57, baseType: !30, size: 64, offset: 256)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2779, file: !595, line: 58, baseType: !30, size: 64, offset: 320)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2779, file: !595, line: 59, baseType: !30, size: 64, offset: 384)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2779, file: !595, line: 60, baseType: !30, size: 64, offset: 448)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2779, file: !595, line: 61, baseType: !30, size: 64, offset: 512)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2779, file: !595, line: 64, baseType: !30, size: 64, offset: 576)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2779, file: !595, line: 65, baseType: !30, size: 64, offset: 640)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2779, file: !595, line: 66, baseType: !30, size: 64, offset: 704)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2779, file: !595, line: 68, baseType: !610, size: 64, offset: 768)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2779, file: !595, line: 70, baseType: !2795, size: 64, offset: 832)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2779, file: !595, line: 72, baseType: !23, size: 32, offset: 896)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2779, file: !595, line: 73, baseType: !23, size: 32, offset: 928)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2779, file: !595, line: 74, baseType: !616, size: 64, offset: 960)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2779, file: !595, line: 77, baseType: !73, size: 16, offset: 1024)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2779, file: !595, line: 78, baseType: !621, size: 8, offset: 1040)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2779, file: !595, line: 79, baseType: !623, size: 8, offset: 1048)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2779, file: !595, line: 81, baseType: !627, size: 64, offset: 1088)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2779, file: !595, line: 89, baseType: !630, size: 64, offset: 1152)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2779, file: !595, line: 91, baseType: !632, size: 64, offset: 1216)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2779, file: !595, line: 92, baseType: !635, size: 64, offset: 1280)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2779, file: !595, line: 93, baseType: !2795, size: 64, offset: 1344)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2779, file: !595, line: 94, baseType: !29, size: 64, offset: 1408)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2779, file: !595, line: 95, baseType: !74, size: 64, offset: 1472)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2779, file: !595, line: 96, baseType: !23, size: 32, offset: 1536)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2779, file: !595, line: 98, baseType: !642, size: 160, offset: 1568)
!2811 = !{!2812, !2813, !2815, !2816}
!2812 = !DILocalVariable(name: "stream", arg: 1, scope: !2774, file: !161, line: 56, type: !2777)
!2813 = !DILocalVariable(name: "some_pending", scope: !2774, file: !161, line: 58, type: !2814)
!2814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!2815 = !DILocalVariable(name: "prev_fail", scope: !2774, file: !161, line: 59, type: !2814)
!2816 = !DILocalVariable(name: "fclose_fail", scope: !2774, file: !161, line: 60, type: !2814)
!2817 = !DILocation(line: 0, scope: !2774)
!2818 = !DILocation(line: 58, column: 30, scope: !2774)
!2819 = !DILocalVariable(name: "__stream", arg: 1, scope: !2820, file: !2821, line: 135, type: !2777)
!2820 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2821, file: !2821, line: 135, type: !2775, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !2822)
!2821 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!2822 = !{!2819}
!2823 = !DILocation(line: 0, scope: !2820, inlinedAt: !2824)
!2824 = distinct !DILocation(line: 59, column: 27, scope: !2774)
!2825 = !DILocation(line: 137, column: 10, scope: !2820, inlinedAt: !2824)
!2826 = !{!2827, !772, i64 0}
!2827 = !{!"_IO_FILE", !772, i64 0, !576, i64 8, !576, i64 16, !576, i64 24, !576, i64 32, !576, i64 40, !576, i64 48, !576, i64 56, !576, i64 64, !576, i64 72, !576, i64 80, !576, i64 88, !576, i64 96, !576, i64 104, !772, i64 112, !772, i64 116, !1759, i64 120, !1242, i64 128, !577, i64 130, !577, i64 131, !576, i64 136, !1759, i64 144, !576, i64 152, !576, i64 160, !576, i64 168, !576, i64 176, !1759, i64 184, !772, i64 192, !577, i64 196}
!2828 = !DILocation(line: 59, column: 43, scope: !2774)
!2829 = !DILocation(line: 60, column: 29, scope: !2774)
!2830 = !DILocation(line: 60, column: 45, scope: !2774)
!2831 = !DILocation(line: 70, column: 17, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2774, file: !161, line: 70, column: 7)
!2833 = !DILocation(line: 58, column: 50, scope: !2774)
!2834 = !DILocation(line: 70, column: 33, scope: !2832)
!2835 = !DILocation(line: 70, column: 53, scope: !2832)
!2836 = !DILocation(line: 70, column: 59, scope: !2832)
!2837 = !DILocation(line: 70, column: 7, scope: !2774)
!2838 = !DILocation(line: 72, column: 11, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2832, file: !161, line: 71, column: 5)
!2840 = !DILocation(line: 73, column: 9, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2839, file: !161, line: 72, column: 11)
!2842 = !DILocation(line: 73, column: 15, scope: !2841)
!2843 = !DILocation(line: 78, column: 1, scope: !2774)
!2844 = distinct !DISubprogram(name: "hard_locale", scope: !163, file: !163, line: 27, type: !2845, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !162, retainedNodes: !2847)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{!16, !23}
!2847 = !{!2848, !2849}
!2848 = !DILocalVariable(name: "category", arg: 1, scope: !2844, file: !163, line: 27, type: !23)
!2849 = !DILocalVariable(name: "locale", scope: !2844, file: !163, line: 29, type: !2850)
!2850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !2851)
!2851 = !{!2852}
!2852 = !DISubrange(count: 257)
!2853 = !DILocation(line: 0, scope: !2844)
!2854 = !DILocation(line: 29, column: 3, scope: !2844)
!2855 = !DILocation(line: 29, column: 8, scope: !2844)
!2856 = !DILocation(line: 31, column: 7, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2844, file: !163, line: 31, column: 7)
!2858 = !DILocation(line: 31, column: 7, scope: !2844)
!2859 = !DILocation(line: 34, column: 12, scope: !2844)
!2860 = !DILocation(line: 34, column: 38, scope: !2844)
!2861 = !DILocation(line: 34, column: 41, scope: !2844)
!2862 = !DILocation(line: 34, column: 66, scope: !2844)
!2863 = !DILocation(line: 35, column: 1, scope: !2844)
!2864 = distinct !DISubprogram(name: "locale_charset", scope: !165, file: !165, line: 831, type: !2865, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !2867)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!6}
!2867 = !{!2868}
!2868 = !DILocalVariable(name: "codeset", scope: !2864, file: !165, line: 833, type: !6)
!2869 = !DILocation(line: 847, column: 13, scope: !2864)
!2870 = !DILocation(line: 0, scope: !2864)
!2871 = !DILocation(line: 911, column: 15, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2864, file: !165, line: 911, column: 7)
!2873 = !DILocation(line: 911, column: 7, scope: !2864)
!2874 = !DILocation(line: 1070, column: 13, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2876, file: !165, line: 1070, column: 13)
!2876 = distinct !DILexicalBlock(scope: !2877, file: !165, line: 1060, column: 7)
!2877 = distinct !DILexicalBlock(scope: !2864, file: !165, line: 1019, column: 3)
!2878 = !DILocation(line: 1070, column: 24, scope: !2875)
!2879 = !DILocation(line: 1070, column: 13, scope: !2876)
!2880 = !DILocation(line: 1158, column: 3, scope: !2864)
!2881 = !DISubprogram(name: "nl_langinfo", scope: !168, file: !168, line: 661, type: !2882, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!30, !23}
!2884 = distinct !DISubprogram(name: "setlocale_null_r", scope: !554, file: !554, line: 269, type: !2885, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !553, retainedNodes: !2887)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!23, !23, !30, !74}
!2887 = !{!2888, !2889, !2890}
!2888 = !DILocalVariable(name: "category", arg: 1, scope: !2884, file: !554, line: 269, type: !23)
!2889 = !DILocalVariable(name: "buf", arg: 2, scope: !2884, file: !554, line: 269, type: !30)
!2890 = !DILocalVariable(name: "bufsize", arg: 3, scope: !2884, file: !554, line: 269, type: !74)
!2891 = !DILocation(line: 0, scope: !2884)
!2892 = !DILocalVariable(name: "category", arg: 1, scope: !2893, file: !554, line: 91, type: !23)
!2893 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !554, file: !554, line: 91, type: !2885, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !553, retainedNodes: !2894)
!2894 = !{!2892, !2895, !2896, !2897, !2898}
!2895 = !DILocalVariable(name: "buf", arg: 2, scope: !2893, file: !554, line: 91, type: !30)
!2896 = !DILocalVariable(name: "bufsize", arg: 3, scope: !2893, file: !554, line: 91, type: !74)
!2897 = !DILocalVariable(name: "result", scope: !2893, file: !554, line: 140, type: !6)
!2898 = !DILocalVariable(name: "length", scope: !2899, file: !554, line: 154, type: !74)
!2899 = distinct !DILexicalBlock(scope: !2900, file: !554, line: 153, column: 5)
!2900 = distinct !DILexicalBlock(scope: !2893, file: !554, line: 142, column: 7)
!2901 = !DILocation(line: 0, scope: !2893, inlinedAt: !2902)
!2902 = distinct !DILocation(line: 274, column: 10, scope: !2884)
!2903 = !DILocalVariable(name: "category", arg: 1, scope: !2904, file: !554, line: 60, type: !23)
!2904 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !554, file: !554, line: 60, type: !2905, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !553, retainedNodes: !2907)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!6, !23}
!2907 = !{!2903, !2908}
!2908 = !DILocalVariable(name: "result", scope: !2904, file: !554, line: 62, type: !6)
!2909 = !DILocation(line: 0, scope: !2904, inlinedAt: !2910)
!2910 = distinct !DILocation(line: 140, column: 24, scope: !2893, inlinedAt: !2902)
!2911 = !DILocation(line: 62, column: 24, scope: !2904, inlinedAt: !2910)
!2912 = !DILocation(line: 142, column: 14, scope: !2900, inlinedAt: !2902)
!2913 = !DILocation(line: 142, column: 7, scope: !2893, inlinedAt: !2902)
!2914 = !DILocation(line: 145, column: 19, scope: !2915, inlinedAt: !2902)
!2915 = distinct !DILexicalBlock(scope: !2916, file: !554, line: 145, column: 11)
!2916 = distinct !DILexicalBlock(scope: !2900, file: !554, line: 143, column: 5)
!2917 = !DILocation(line: 145, column: 11, scope: !2916, inlinedAt: !2902)
!2918 = !DILocation(line: 149, column: 16, scope: !2915, inlinedAt: !2902)
!2919 = !DILocation(line: 149, column: 9, scope: !2915, inlinedAt: !2902)
!2920 = !DILocation(line: 154, column: 23, scope: !2899, inlinedAt: !2902)
!2921 = !DILocation(line: 0, scope: !2899, inlinedAt: !2902)
!2922 = !DILocation(line: 155, column: 18, scope: !2923, inlinedAt: !2902)
!2923 = distinct !DILexicalBlock(scope: !2899, file: !554, line: 155, column: 11)
!2924 = !DILocation(line: 155, column: 11, scope: !2899, inlinedAt: !2902)
!2925 = !DILocation(line: 157, column: 39, scope: !2926, inlinedAt: !2902)
!2926 = distinct !DILexicalBlock(scope: !2923, file: !554, line: 156, column: 9)
!2927 = !DILocalVariable(name: "__dest", arg: 1, scope: !2928, file: !1250, line: 26, type: !2676)
!2928 = distinct !DISubprogram(name: "memcpy", scope: !1250, file: !1250, line: 26, type: !2674, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !553, retainedNodes: !2929)
!2929 = !{!2927, !2930, !2931}
!2930 = !DILocalVariable(name: "__src", arg: 2, scope: !2928, file: !1250, line: 26, type: !2677)
!2931 = !DILocalVariable(name: "__len", arg: 3, scope: !2928, file: !1250, line: 26, type: !74)
!2932 = !DILocation(line: 0, scope: !2928, inlinedAt: !2933)
!2933 = distinct !DILocation(line: 157, column: 11, scope: !2926, inlinedAt: !2902)
!2934 = !DILocation(line: 29, column: 10, scope: !2928, inlinedAt: !2933)
!2935 = !DILocation(line: 158, column: 11, scope: !2926, inlinedAt: !2902)
!2936 = !DILocation(line: 162, column: 23, scope: !2937, inlinedAt: !2902)
!2937 = distinct !DILexicalBlock(scope: !2938, file: !554, line: 162, column: 15)
!2938 = distinct !DILexicalBlock(scope: !2923, file: !554, line: 161, column: 9)
!2939 = !DILocation(line: 162, column: 15, scope: !2938, inlinedAt: !2902)
!2940 = !DILocation(line: 167, column: 44, scope: !2941, inlinedAt: !2902)
!2941 = distinct !DILexicalBlock(scope: !2937, file: !554, line: 163, column: 13)
!2942 = !DILocation(line: 0, scope: !2928, inlinedAt: !2943)
!2943 = distinct !DILocation(line: 167, column: 15, scope: !2941, inlinedAt: !2902)
!2944 = !DILocation(line: 29, column: 10, scope: !2928, inlinedAt: !2943)
!2945 = !DILocation(line: 168, column: 15, scope: !2941, inlinedAt: !2902)
!2946 = !DILocation(line: 168, column: 32, scope: !2941, inlinedAt: !2902)
!2947 = !DILocation(line: 169, column: 13, scope: !2941, inlinedAt: !2902)
!2948 = !DILocation(line: 0, scope: !2900, inlinedAt: !2902)
!2949 = !DILocation(line: 274, column: 3, scope: !2884)
!2950 = distinct !DISubprogram(name: "setlocale_null", scope: !554, file: !554, line: 301, type: !2905, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !553, retainedNodes: !2951)
!2951 = !{!2952}
!2952 = !DILocalVariable(name: "category", arg: 1, scope: !2950, file: !554, line: 301, type: !23)
!2953 = !DILocation(line: 0, scope: !2950)
!2954 = !DILocation(line: 0, scope: !2904, inlinedAt: !2955)
!2955 = distinct !DILocation(line: 304, column: 10, scope: !2950)
!2956 = !DILocation(line: 62, column: 24, scope: !2904, inlinedAt: !2955)
!2957 = !DILocation(line: 304, column: 3, scope: !2950)
!2958 = distinct !DISubprogram(name: "rpl_fclose", scope: !556, file: !556, line: 58, type: !2959, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !2995)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!23, !2961}
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2317, line: 7, baseType: !2963)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !595, line: 49, size: 1728, elements: !2964)
!2964 = !{!2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2963, file: !595, line: 51, baseType: !23, size: 32)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2963, file: !595, line: 54, baseType: !30, size: 64, offset: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2963, file: !595, line: 55, baseType: !30, size: 64, offset: 128)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2963, file: !595, line: 56, baseType: !30, size: 64, offset: 192)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2963, file: !595, line: 57, baseType: !30, size: 64, offset: 256)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2963, file: !595, line: 58, baseType: !30, size: 64, offset: 320)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2963, file: !595, line: 59, baseType: !30, size: 64, offset: 384)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2963, file: !595, line: 60, baseType: !30, size: 64, offset: 448)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2963, file: !595, line: 61, baseType: !30, size: 64, offset: 512)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2963, file: !595, line: 64, baseType: !30, size: 64, offset: 576)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2963, file: !595, line: 65, baseType: !30, size: 64, offset: 640)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2963, file: !595, line: 66, baseType: !30, size: 64, offset: 704)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2963, file: !595, line: 68, baseType: !610, size: 64, offset: 768)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2963, file: !595, line: 70, baseType: !2979, size: 64, offset: 832)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2963, file: !595, line: 72, baseType: !23, size: 32, offset: 896)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2963, file: !595, line: 73, baseType: !23, size: 32, offset: 928)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2963, file: !595, line: 74, baseType: !616, size: 64, offset: 960)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2963, file: !595, line: 77, baseType: !73, size: 16, offset: 1024)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2963, file: !595, line: 78, baseType: !621, size: 8, offset: 1040)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2963, file: !595, line: 79, baseType: !623, size: 8, offset: 1048)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2963, file: !595, line: 81, baseType: !627, size: 64, offset: 1088)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2963, file: !595, line: 89, baseType: !630, size: 64, offset: 1152)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2963, file: !595, line: 91, baseType: !632, size: 64, offset: 1216)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2963, file: !595, line: 92, baseType: !635, size: 64, offset: 1280)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2963, file: !595, line: 93, baseType: !2979, size: 64, offset: 1344)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2963, file: !595, line: 94, baseType: !29, size: 64, offset: 1408)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2963, file: !595, line: 95, baseType: !74, size: 64, offset: 1472)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2963, file: !595, line: 96, baseType: !23, size: 32, offset: 1536)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2963, file: !595, line: 98, baseType: !642, size: 160, offset: 1568)
!2995 = !{!2996, !2997, !2998, !2999}
!2996 = !DILocalVariable(name: "fp", arg: 1, scope: !2958, file: !556, line: 58, type: !2961)
!2997 = !DILocalVariable(name: "saved_errno", scope: !2958, file: !556, line: 60, type: !23)
!2998 = !DILocalVariable(name: "fd", scope: !2958, file: !556, line: 61, type: !23)
!2999 = !DILocalVariable(name: "result", scope: !2958, file: !556, line: 62, type: !23)
!3000 = !DILocation(line: 0, scope: !2958)
!3001 = !DILocation(line: 65, column: 8, scope: !2958)
!3002 = !DILocation(line: 66, column: 10, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2958, file: !556, line: 66, column: 7)
!3004 = !DILocation(line: 66, column: 7, scope: !2958)
!3005 = !DILocation(line: 67, column: 12, scope: !3003)
!3006 = !DILocation(line: 67, column: 5, scope: !3003)
!3007 = !DILocation(line: 72, column: 9, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !2958, file: !556, line: 72, column: 7)
!3009 = !DILocation(line: 72, column: 23, scope: !3008)
!3010 = !DILocation(line: 72, column: 33, scope: !3008)
!3011 = !DILocation(line: 72, column: 26, scope: !3008)
!3012 = !DILocation(line: 72, column: 59, scope: !3008)
!3013 = !DILocation(line: 73, column: 7, scope: !3008)
!3014 = !DILocation(line: 73, column: 10, scope: !3008)
!3015 = !DILocation(line: 72, column: 7, scope: !2958)
!3016 = !DILocation(line: 100, column: 12, scope: !2958)
!3017 = !DILocation(line: 105, column: 7, scope: !2958)
!3018 = !DILocation(line: 74, column: 19, scope: !3008)
!3019 = !DILocation(line: 105, column: 19, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !2958, file: !556, line: 105, column: 7)
!3021 = !DILocation(line: 107, column: 13, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3020, file: !556, line: 106, column: 5)
!3023 = !DILocation(line: 109, column: 5, scope: !3022)
!3024 = !DILocation(line: 112, column: 1, scope: !2958)
!3025 = !DISubprogram(name: "fileno", scope: !590, file: !590, line: 785, type: !3026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{!23, !2979}
!3028 = !DISubprogram(name: "fclose", scope: !590, file: !590, line: 213, type: !3026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3029 = !DISubprogram(name: "lseek", scope: !3030, file: !3030, line: 334, type: !3031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3030 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!618, !23, !618, !23}
!3033 = distinct !DISubprogram(name: "rpl_fflush", scope: !558, file: !558, line: 129, type: !3034, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !557, retainedNodes: !3070)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!23, !3036}
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2317, line: 7, baseType: !3038)
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !595, line: 49, size: 1728, elements: !3039)
!3039 = !{!3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3038, file: !595, line: 51, baseType: !23, size: 32)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3038, file: !595, line: 54, baseType: !30, size: 64, offset: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3038, file: !595, line: 55, baseType: !30, size: 64, offset: 128)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3038, file: !595, line: 56, baseType: !30, size: 64, offset: 192)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3038, file: !595, line: 57, baseType: !30, size: 64, offset: 256)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3038, file: !595, line: 58, baseType: !30, size: 64, offset: 320)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3038, file: !595, line: 59, baseType: !30, size: 64, offset: 384)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3038, file: !595, line: 60, baseType: !30, size: 64, offset: 448)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3038, file: !595, line: 61, baseType: !30, size: 64, offset: 512)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3038, file: !595, line: 64, baseType: !30, size: 64, offset: 576)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3038, file: !595, line: 65, baseType: !30, size: 64, offset: 640)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3038, file: !595, line: 66, baseType: !30, size: 64, offset: 704)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3038, file: !595, line: 68, baseType: !610, size: 64, offset: 768)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3038, file: !595, line: 70, baseType: !3054, size: 64, offset: 832)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3038, file: !595, line: 72, baseType: !23, size: 32, offset: 896)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3038, file: !595, line: 73, baseType: !23, size: 32, offset: 928)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3038, file: !595, line: 74, baseType: !616, size: 64, offset: 960)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3038, file: !595, line: 77, baseType: !73, size: 16, offset: 1024)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3038, file: !595, line: 78, baseType: !621, size: 8, offset: 1040)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3038, file: !595, line: 79, baseType: !623, size: 8, offset: 1048)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3038, file: !595, line: 81, baseType: !627, size: 64, offset: 1088)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3038, file: !595, line: 89, baseType: !630, size: 64, offset: 1152)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3038, file: !595, line: 91, baseType: !632, size: 64, offset: 1216)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3038, file: !595, line: 92, baseType: !635, size: 64, offset: 1280)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3038, file: !595, line: 93, baseType: !3054, size: 64, offset: 1344)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3038, file: !595, line: 94, baseType: !29, size: 64, offset: 1408)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3038, file: !595, line: 95, baseType: !74, size: 64, offset: 1472)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3038, file: !595, line: 96, baseType: !23, size: 32, offset: 1536)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3038, file: !595, line: 98, baseType: !642, size: 160, offset: 1568)
!3070 = !{!3071}
!3071 = !DILocalVariable(name: "stream", arg: 1, scope: !3033, file: !558, line: 129, type: !3036)
!3072 = !DILocation(line: 0, scope: !3033)
!3073 = !DILocation(line: 150, column: 14, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3033, file: !558, line: 150, column: 7)
!3075 = !DILocation(line: 150, column: 22, scope: !3074)
!3076 = !DILocation(line: 150, column: 27, scope: !3074)
!3077 = !DILocation(line: 150, column: 7, scope: !3033)
!3078 = !DILocation(line: 151, column: 12, scope: !3074)
!3079 = !DILocation(line: 151, column: 5, scope: !3074)
!3080 = !DILocalVariable(name: "fp", arg: 1, scope: !3081, file: !558, line: 41, type: !3036)
!3081 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !558, file: !558, line: 41, type: !3082, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !557, retainedNodes: !3084)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{null, !3036}
!3084 = !{!3080}
!3085 = !DILocation(line: 0, scope: !3081, inlinedAt: !3086)
!3086 = distinct !DILocation(line: 156, column: 3, scope: !3033)
!3087 = !DILocation(line: 43, column: 11, scope: !3088, inlinedAt: !3086)
!3088 = distinct !DILexicalBlock(scope: !3081, file: !558, line: 43, column: 7)
!3089 = !DILocation(line: 43, column: 18, scope: !3088, inlinedAt: !3086)
!3090 = !DILocation(line: 43, column: 7, scope: !3081, inlinedAt: !3086)
!3091 = !DILocation(line: 45, column: 5, scope: !3088, inlinedAt: !3086)
!3092 = !DILocation(line: 158, column: 10, scope: !3033)
!3093 = !DILocation(line: 158, column: 3, scope: !3033)
!3094 = !DILocation(line: 235, column: 1, scope: !3033)
!3095 = !DISubprogram(name: "fflush", scope: !590, file: !590, line: 218, type: !3096, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!23, !3054}
!3098 = distinct !DISubprogram(name: "rpl_fseeko", scope: !560, file: !560, line: 28, type: !3099, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !559, retainedNodes: !3136)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!23, !3101, !3135, !23}
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2317, line: 7, baseType: !3103)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !595, line: 49, size: 1728, elements: !3104)
!3104 = !{!3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3103, file: !595, line: 51, baseType: !23, size: 32)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3103, file: !595, line: 54, baseType: !30, size: 64, offset: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3103, file: !595, line: 55, baseType: !30, size: 64, offset: 128)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3103, file: !595, line: 56, baseType: !30, size: 64, offset: 192)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3103, file: !595, line: 57, baseType: !30, size: 64, offset: 256)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3103, file: !595, line: 58, baseType: !30, size: 64, offset: 320)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3103, file: !595, line: 59, baseType: !30, size: 64, offset: 384)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3103, file: !595, line: 60, baseType: !30, size: 64, offset: 448)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3103, file: !595, line: 61, baseType: !30, size: 64, offset: 512)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3103, file: !595, line: 64, baseType: !30, size: 64, offset: 576)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3103, file: !595, line: 65, baseType: !30, size: 64, offset: 640)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3103, file: !595, line: 66, baseType: !30, size: 64, offset: 704)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3103, file: !595, line: 68, baseType: !610, size: 64, offset: 768)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3103, file: !595, line: 70, baseType: !3119, size: 64, offset: 832)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3103, file: !595, line: 72, baseType: !23, size: 32, offset: 896)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3103, file: !595, line: 73, baseType: !23, size: 32, offset: 928)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3103, file: !595, line: 74, baseType: !616, size: 64, offset: 960)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3103, file: !595, line: 77, baseType: !73, size: 16, offset: 1024)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3103, file: !595, line: 78, baseType: !621, size: 8, offset: 1040)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3103, file: !595, line: 79, baseType: !623, size: 8, offset: 1048)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3103, file: !595, line: 81, baseType: !627, size: 64, offset: 1088)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3103, file: !595, line: 89, baseType: !630, size: 64, offset: 1152)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3103, file: !595, line: 91, baseType: !632, size: 64, offset: 1216)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3103, file: !595, line: 92, baseType: !635, size: 64, offset: 1280)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3103, file: !595, line: 93, baseType: !3119, size: 64, offset: 1344)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3103, file: !595, line: 94, baseType: !29, size: 64, offset: 1408)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3103, file: !595, line: 95, baseType: !74, size: 64, offset: 1472)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3103, file: !595, line: 96, baseType: !23, size: 32, offset: 1536)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3103, file: !595, line: 98, baseType: !642, size: 160, offset: 1568)
!3135 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !590, line: 63, baseType: !616)
!3136 = !{!3137, !3138, !3139, !3140}
!3137 = !DILocalVariable(name: "fp", arg: 1, scope: !3098, file: !560, line: 28, type: !3101)
!3138 = !DILocalVariable(name: "offset", arg: 2, scope: !3098, file: !560, line: 28, type: !3135)
!3139 = !DILocalVariable(name: "whence", arg: 3, scope: !3098, file: !560, line: 28, type: !23)
!3140 = !DILocalVariable(name: "pos", scope: !3141, file: !560, line: 117, type: !3135)
!3141 = distinct !DILexicalBlock(scope: !3142, file: !560, line: 113, column: 5)
!3142 = distinct !DILexicalBlock(scope: !3098, file: !560, line: 52, column: 7)
!3143 = !DILocation(line: 0, scope: !3098)
!3144 = !DILocation(line: 52, column: 11, scope: !3142)
!3145 = !{!2827, !576, i64 16}
!3146 = !DILocation(line: 52, column: 31, scope: !3142)
!3147 = !{!2827, !576, i64 8}
!3148 = !DILocation(line: 52, column: 24, scope: !3142)
!3149 = !DILocation(line: 53, column: 7, scope: !3142)
!3150 = !DILocation(line: 53, column: 14, scope: !3142)
!3151 = !{!2827, !576, i64 40}
!3152 = !DILocation(line: 53, column: 35, scope: !3142)
!3153 = !{!2827, !576, i64 32}
!3154 = !DILocation(line: 53, column: 28, scope: !3142)
!3155 = !DILocation(line: 54, column: 7, scope: !3142)
!3156 = !DILocation(line: 54, column: 14, scope: !3142)
!3157 = !{!2827, !576, i64 72}
!3158 = !DILocation(line: 54, column: 28, scope: !3142)
!3159 = !DILocation(line: 52, column: 7, scope: !3098)
!3160 = !DILocation(line: 117, column: 26, scope: !3141)
!3161 = !DILocation(line: 117, column: 19, scope: !3141)
!3162 = !DILocation(line: 0, scope: !3141)
!3163 = !DILocation(line: 118, column: 15, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3141, file: !560, line: 118, column: 11)
!3165 = !DILocation(line: 118, column: 11, scope: !3141)
!3166 = !DILocation(line: 129, column: 11, scope: !3141)
!3167 = !DILocation(line: 129, column: 18, scope: !3141)
!3168 = !DILocation(line: 130, column: 11, scope: !3141)
!3169 = !DILocation(line: 130, column: 19, scope: !3141)
!3170 = !{!2827, !1759, i64 144}
!3171 = !DILocation(line: 161, column: 7, scope: !3141)
!3172 = !DILocation(line: 163, column: 10, scope: !3098)
!3173 = !DILocation(line: 163, column: 3, scope: !3098)
!3174 = !DILocation(line: 164, column: 1, scope: !3098)
!3175 = !DISubprogram(name: "fseeko", scope: !590, file: !590, line: 712, type: !3176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!23, !3119, !618, !23}
