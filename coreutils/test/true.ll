; ModuleID = 'coreutils-8.32/src/true.bc'
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
@.str.2 = private unnamed_addr constant [44 x i8] c"Exit with a status code indicating success.\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"true\00", align 1
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
  call void @llvm.dbg.value(metadata i32 %0, metadata !571, metadata !DIExpression()), !dbg !572
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 5) #24, !dbg !573
  %3 = load i8*, i8** @program_name, align 8, !dbg !573, !tbaa !574
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %2, i8* %3, i8* %3) #24, !dbg !573
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 5) #24, !dbg !578
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %5) #24, !dbg !578
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #24, !dbg !579
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !579, !tbaa !574
  %9 = tail call i32 @fputs_unlocked(i8* %7, %struct._IO_FILE* %8), !dbg !579
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #24, !dbg !580
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !580, !tbaa !574
  %12 = tail call i32 @fputs_unlocked(i8* %10, %struct._IO_FILE* %11), !dbg !580
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.5, i64 0, i64 0), i32 5) #24, !dbg !581
  %14 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #24, !dbg !581
  tail call fastcc void @emit_ancillary_info(), !dbg !582
  tail call void @exit(i32 %0) #25, !dbg !583
  unreachable, !dbg !583
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !584 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !588 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @emit_ancillary_info() unnamed_addr #5 !dbg !644 {
  %1 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), metadata !649, metadata !DIExpression()), !dbg !663
  %2 = bitcast [7 x %struct.infomap]* %1 to i8*, !dbg !664
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #24, !dbg !664
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %1, metadata !650, metadata !DIExpression()), !dbg !665
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %2, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !665
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), metadata !659, metadata !DIExpression()), !dbg !663
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %1, metadata !660, metadata !DIExpression()), !dbg !663
  %3 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %1, i64 0, i64 0, !dbg !666
  call void @llvm.dbg.value(metadata %struct.infomap* %3, metadata !660, metadata !DIExpression()), !dbg !663
  br label %4, !dbg !667

4:                                                ; preds = %0, %9
  %5 = phi i8* [ %12, %9 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), %0 ]
  %6 = phi %struct.infomap* [ %10, %9 ], [ %3, %0 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %6, metadata !660, metadata !DIExpression()), !dbg !663
  %7 = tail call i32 @strcmp(i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %5) #26, !dbg !668
  %8 = icmp eq i32 %7, 0, !dbg !668
  br i1 %8, label %14, label %9, !dbg !667

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.infomap, %struct.infomap* %6, i64 1, !dbg !669
  call void @llvm.dbg.value(metadata %struct.infomap* %10, metadata !660, metadata !DIExpression()), !dbg !663
  %11 = getelementptr inbounds %struct.infomap, %struct.infomap* %10, i64 0, i32 0, !dbg !670
  %12 = load i8*, i8** %11, align 8, !dbg !670, !tbaa !671
  %13 = icmp eq i8* %12, null, !dbg !673
  br i1 %13, label %14, label %4, !dbg !674, !llvm.loop !675

14:                                               ; preds = %4, %9
  %15 = phi %struct.infomap* [ %6, %4 ], [ %10, %9 ]
  %16 = getelementptr inbounds %struct.infomap, %struct.infomap* %15, i64 0, i32 1, !dbg !677
  %17 = load i8*, i8** %16, align 8, !dbg !677, !tbaa !679
  %18 = icmp eq i8* %17, null, !dbg !680
  %19 = select i1 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %17, !dbg !681
  call void @llvm.dbg.value(metadata i8* %19, metadata !659, metadata !DIExpression()), !dbg !663
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 5) #24, !dbg !682
  %21 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0)) #24, !dbg !682
  %22 = tail call i8* @setlocale(i32 5, i8* null) #24, !dbg !683
  call void @llvm.dbg.value(metadata i8* %22, metadata !662, metadata !DIExpression()), !dbg !663
  %23 = icmp eq i8* %22, null, !dbg !684
  br i1 %23, label %31, label %24, !dbg !686

24:                                               ; preds = %14
  %25 = tail call i32 @strncmp(i8* nonnull %22, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #26, !dbg !687
  %26 = icmp eq i32 %25, 0, !dbg !687
  br i1 %26, label %31, label %27, !dbg !688

27:                                               ; preds = %24
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.25, i64 0, i64 0), i32 5) #24, !dbg !689
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !689, !tbaa !574
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !689
  br label %31, !dbg !691

31:                                               ; preds = %27, %24, %14
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0), i32 5) #24, !dbg !692
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #24, !dbg !692
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i32 5) #24, !dbg !693
  %35 = icmp eq i8* %19, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), !dbg !693
  %36 = select i1 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !693
  %37 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %34, i8* %19, i8* %36) #24, !dbg !693
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #24, !dbg !694
  ret void, !dbg !694
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
declare !dbg !695 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #9 !dbg !699 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !704, metadata !DIExpression()), !dbg !706
  call void @llvm.dbg.value(metadata i8** %1, metadata !705, metadata !DIExpression()), !dbg !706
  %3 = icmp eq i32 %0, 2, !dbg !707
  br i1 %3, label %4, label %21, !dbg !709

4:                                                ; preds = %2
  %5 = load i8*, i8** %1, align 8, !dbg !710, !tbaa !574
  tail call void @set_program_name(i8* %5) #24, !dbg !712
  %6 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #24, !dbg !713
  %7 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #24, !dbg !714
  %8 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #24, !dbg !715
  %9 = tail call i32 @atexit(void ()* nonnull @close_stdout) #24, !dbg !716
  %10 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !717
  %11 = load i8*, i8** %10, align 8, !dbg !717, !tbaa !574
  %12 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %11, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #26, !dbg !717
  %13 = icmp eq i32 %12, 0, !dbg !717
  br i1 %13, label %14, label %15, !dbg !719

14:                                               ; preds = %4
  tail call void @usage(i32 0) #27, !dbg !720
  unreachable, !dbg !720

15:                                               ; preds = %4
  %16 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %11, i8* nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #26, !dbg !721
  %17 = icmp eq i32 %16, 0, !dbg !721
  br i1 %17, label %18, label %21, !dbg !723

18:                                               ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !724, !tbaa !574
  %20 = load i8*, i8** @Version, align 8, !dbg !725, !tbaa !574
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* null) #24, !dbg !726
  br label %21, !dbg !726

21:                                               ; preds = %15, %18, %2
  ret i32 0, !dbg !727
}

; Function Attrs: nounwind
declare !dbg !728 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !731 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !734 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #10 !dbg !741 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !743, metadata !DIExpression()), !dbg !744
  store i8* %0, i8** @file_name, align 8, !dbg !745, !tbaa !574
  ret void, !dbg !746
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #10 !dbg !747 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !751, metadata !DIExpression()), !dbg !752
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !753, !tbaa !754
  ret void, !dbg !756
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #9 !dbg !757 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !762, !tbaa !574
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #24, !dbg !763
  %3 = icmp eq i32 %2, 0, !dbg !764
  br i1 %3, label %22, label %4, !dbg !765

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !766, !tbaa !754, !range !767
  %6 = icmp eq i8 %5, 0, !dbg !766
  br i1 %6, label %11, label %7, !dbg !768

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #28, !dbg !769
  %9 = load i32, i32* %8, align 4, !dbg !769, !tbaa !770
  %10 = icmp eq i32 %9, 32, !dbg !772
  br i1 %10, label %22, label %11, !dbg !773

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i32 5) #24, !dbg !774
  call void @llvm.dbg.value(metadata i8* %12, metadata !759, metadata !DIExpression()), !dbg !775
  %13 = load i8*, i8** @file_name, align 8, !dbg !776, !tbaa !574
  %14 = icmp eq i8* %13, null, !dbg !776
  %15 = tail call i32* @__errno_location() #28, !dbg !778
  %16 = load i32, i32* %15, align 4, !dbg !778, !tbaa !770
  br i1 %14, label %19, label %17, !dbg !779

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #24, !dbg !780
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.33, i64 0, i64 0), i8* %18, i8* %12) #24, !dbg !781
  br label %20, !dbg !781

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.34, i64 0, i64 0), i8* %12) #24, !dbg !782
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !783, !tbaa !770
  tail call void @_exit(i32 %21) #25, !dbg !784
  unreachable, !dbg !784

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !785, !tbaa !574
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #24, !dbg !787
  %25 = icmp eq i32 %24, 0, !dbg !788
  br i1 %25, label %28, label %26, !dbg !789

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !790, !tbaa !770
  tail call void @_exit(i32 %27) #25, !dbg !791
  unreachable, !dbg !791

28:                                               ; preds = %22
  ret void, !dbg !792
}

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

declare !dbg !793 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #9 !dbg !797 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !799, metadata !DIExpression()), !dbg !802
  %2 = icmp eq i8* %0, null, !dbg !803
  br i1 %2, label %3, label %6, !dbg !805

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !806, !tbaa !574
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.41, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #29, !dbg !808
  tail call void @abort() #25, !dbg !809
  unreachable, !dbg !809

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #26, !dbg !810
  call void @llvm.dbg.value(metadata i8* %7, metadata !800, metadata !DIExpression()), !dbg !802
  %8 = icmp eq i8* %7, null, !dbg !811
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !812
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !812
  call void @llvm.dbg.value(metadata i8* %10, metadata !801, metadata !DIExpression()), !dbg !802
  %11 = ptrtoint i8* %10 to i64, !dbg !813
  %12 = ptrtoint i8* %0 to i64, !dbg !813
  %13 = sub i64 %11, %12, !dbg !813
  %14 = icmp sgt i64 %13, 6, !dbg !815
  br i1 %14, label %15, label %24, !dbg !816

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !817
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.42, i64 0, i64 0), i64 7) #26, !dbg !818
  %18 = icmp eq i32 %17, 0, !dbg !819
  br i1 %18, label %19, label %24, !dbg !820

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !799, metadata !DIExpression()), !dbg !802
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.43, i64 0, i64 0), i64 3) #26, !dbg !821
  %21 = icmp eq i32 %20, 0, !dbg !824
  br i1 %21, label %22, label %24, !dbg !825

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !826
  call void @llvm.dbg.value(metadata i8* %23, metadata !799, metadata !DIExpression()), !dbg !802
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !828, !tbaa !574
  br label %24, !dbg !829

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !799, metadata !DIExpression()), !dbg !802
  store i8* %25, i8** @program_name, align 8, !dbg !830, !tbaa !574
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !831, !tbaa !574
  ret void, !dbg !832
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #13

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #9 !dbg !833 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !838, metadata !DIExpression()), !dbg !841
  %2 = tail call i32* @__errno_location() #28, !dbg !842
  %3 = load i32, i32* %2, align 4, !dbg !842, !tbaa !770
  call void @llvm.dbg.value(metadata i32 %3, metadata !839, metadata !DIExpression()), !dbg !841
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !843
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !843
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !843
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #24, !dbg !844
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !844
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !840, metadata !DIExpression()), !dbg !841
  store i32 %3, i32* %2, align 4, !dbg !845, !tbaa !770
  ret %struct.quoting_options* %8, !dbg !846
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #14 !dbg !847 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !853, metadata !DIExpression()), !dbg !854
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !855
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !855
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !856
  %5 = load i32, i32* %4, align 8, !dbg !856, !tbaa !857
  ret i32 %5, !dbg !859
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !860 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !864, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata i32 %1, metadata !865, metadata !DIExpression()), !dbg !866
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !867
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !867
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !868
  store i32 %1, i32* %5, align 8, !dbg !869, !tbaa !857
  ret void, !dbg !870
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #15 !dbg !871 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !875, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i8 %1, metadata !876, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i32 %2, metadata !877, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i8 %1, metadata !878, metadata !DIExpression()), !dbg !884
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !885
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !885
  %6 = lshr i8 %1, 5, !dbg !886
  %7 = zext i8 %6 to i64, !dbg !886
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !887
  call void @llvm.dbg.value(metadata i32* %8, metadata !880, metadata !DIExpression()), !dbg !884
  %9 = and i8 %1, 31, !dbg !888
  %10 = zext i8 %9 to i32, !dbg !888
  call void @llvm.dbg.value(metadata i32 %10, metadata !882, metadata !DIExpression()), !dbg !884
  %11 = load i32, i32* %8, align 4, !dbg !889, !tbaa !770
  %12 = lshr i32 %11, %10, !dbg !890
  %13 = and i32 %12, 1, !dbg !891
  call void @llvm.dbg.value(metadata i32 %13, metadata !883, metadata !DIExpression()), !dbg !884
  %14 = and i32 %2, 1, !dbg !892
  %15 = xor i32 %13, %14, !dbg !893
  %16 = shl i32 %15, %10, !dbg !894
  %17 = xor i32 %16, %11, !dbg !895
  store i32 %17, i32* %8, align 4, !dbg !895, !tbaa !770
  ret i32 %13, !dbg !896
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #15 !dbg !897 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !901, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata i32 %1, metadata !902, metadata !DIExpression()), !dbg !904
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !905
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !907
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !901, metadata !DIExpression()), !dbg !904
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !908
  %6 = load i32, i32* %5, align 4, !dbg !908, !tbaa !909
  call void @llvm.dbg.value(metadata i32 %6, metadata !903, metadata !DIExpression()), !dbg !904
  store i32 %1, i32* %5, align 4, !dbg !910, !tbaa !909
  ret i32 %6, !dbg !911
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #9 !dbg !912 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !916, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.value(metadata i8* %1, metadata !917, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.value(metadata i8* %2, metadata !918, metadata !DIExpression()), !dbg !919
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !920
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !922
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !916, metadata !DIExpression()), !dbg !919
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !923
  store i32 10, i32* %6, align 8, !dbg !924, !tbaa !857
  %7 = icmp ne i8* %1, null, !dbg !925
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !927
  br i1 %9, label %11, label %10, !dbg !927

10:                                               ; preds = %3
  tail call void @abort() #25, !dbg !928
  unreachable, !dbg !928

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !929
  store i8* %1, i8** %12, align 8, !dbg !930, !tbaa !931
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !932
  store i8* %2, i8** %13, align 8, !dbg !933, !tbaa !934
  ret void, !dbg !935
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #9 !dbg !936 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !940, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata i64 %1, metadata !941, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata i8* %2, metadata !942, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata i64 %3, metadata !943, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !944, metadata !DIExpression()), !dbg !948
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !949
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !949
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !945, metadata !DIExpression()), !dbg !948
  %8 = tail call i32* @__errno_location() #28, !dbg !950
  %9 = load i32, i32* %8, align 4, !dbg !950, !tbaa !770
  call void @llvm.dbg.value(metadata i32 %9, metadata !946, metadata !DIExpression()), !dbg !948
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !951
  %11 = load i32, i32* %10, align 8, !dbg !951, !tbaa !857
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !952
  %13 = load i32, i32* %12, align 4, !dbg !952, !tbaa !909
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !953
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !954
  %16 = load i8*, i8** %15, align 8, !dbg !954, !tbaa !931
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !955
  %18 = load i8*, i8** %17, align 8, !dbg !955, !tbaa !934
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !956
  call void @llvm.dbg.value(metadata i64 %19, metadata !947, metadata !DIExpression()), !dbg !948
  store i32 %9, i32* %8, align 4, !dbg !957, !tbaa !770
  ret i64 %19, !dbg !958
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #9 !dbg !959 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !965, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %1, metadata !966, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8* %2, metadata !967, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %3, metadata !968, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i32 %4, metadata !969, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i32 %5, metadata !970, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i32* %6, metadata !971, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8* %7, metadata !972, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8* %8, metadata !973, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 0, metadata !975, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 0, metadata !976, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8* null, metadata !977, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 0, metadata !978, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 0, metadata !979, metadata !DIExpression()), !dbg !1035
  %13 = tail call i64 @__ctype_get_mb_cur_max() #24, !dbg !1036
  %14 = icmp eq i64 %13, 1, !dbg !1037
  call void @llvm.dbg.value(metadata i1 %14, metadata !980, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1035
  %15 = lshr i32 %5, 1, !dbg !1038
  %16 = trunc i32 %15 to i8, !dbg !1038
  %17 = and i8 %16, 1, !dbg !1038
  call void @llvm.dbg.value(metadata i8 %17, metadata !981, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 0, metadata !982, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 0, metadata !983, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 1, metadata !984, metadata !DIExpression()), !dbg !1035
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1039

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1040
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1041
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1042
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1043
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1035
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1044
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1045
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1046
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !966, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 %38, metadata !984, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 %37, metadata !983, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 %36, metadata !982, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 %35, metadata !981, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %34, metadata !968, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 %33, metadata !979, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %32, metadata !978, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8* %31, metadata !977, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %30, metadata !976, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 0, metadata !975, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8* %29, metadata !973, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8* %28, metadata !972, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i32 %27, metadata !969, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.label(metadata !1029), !dbg !1047
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
  ], !dbg !1048

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !981, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i32 5, metadata !969, metadata !DIExpression()), !dbg !1035
  br label %92, !dbg !1049

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !981, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i32 5, metadata !969, metadata !DIExpression()), !dbg !1035
  %42 = and i8 %35, 1, !dbg !1051
  %43 = icmp eq i8 %42, 0, !dbg !1051
  br i1 %43, label %44, label %92, !dbg !1049

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1053
  br i1 %45, label %92, label %46, !dbg !1056

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1053, !tbaa !1057
  br label %92, !dbg !1053

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.54, i64 0, i64 0), i32 %27), !dbg !1058
  call void @llvm.dbg.value(metadata i8* %48, metadata !972, metadata !DIExpression()), !dbg !1035
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), i32 %27), !dbg !1062
  call void @llvm.dbg.value(metadata i8* %49, metadata !973, metadata !DIExpression()), !dbg !1035
  br label %50, !dbg !1063

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !973, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8* %51, metadata !972, metadata !DIExpression()), !dbg !1035
  %53 = and i8 %35, 1, !dbg !1064
  %54 = icmp eq i8 %53, 0, !dbg !1064
  br i1 %54, label %55, label %70, !dbg !1066

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !977, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 0, metadata !975, metadata !DIExpression()), !dbg !1035
  %56 = load i8, i8* %51, align 1, !dbg !1067, !tbaa !1057
  %57 = icmp eq i8 %56, 0, !dbg !1070
  br i1 %57, label %70, label %58, !dbg !1070

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !977, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %61, metadata !975, metadata !DIExpression()), !dbg !1035
  %62 = icmp ult i64 %61, %39, !dbg !1071
  br i1 %62, label %63, label %65, !dbg !1074

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1071
  store i8 %59, i8* %64, align 1, !dbg !1071, !tbaa !1057
  br label %65, !dbg !1071

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1074
  call void @llvm.dbg.value(metadata i64 %66, metadata !975, metadata !DIExpression()), !dbg !1035
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1075
  call void @llvm.dbg.value(metadata i8* %67, metadata !977, metadata !DIExpression()), !dbg !1035
  %68 = load i8, i8* %67, align 1, !dbg !1067, !tbaa !1057
  %69 = icmp eq i8 %68, 0, !dbg !1070
  br i1 %69, label %70, label %58, !dbg !1070, !llvm.loop !1076

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1078
  call void @llvm.dbg.value(metadata i64 %71, metadata !975, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 1, metadata !979, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8* %52, metadata !977, metadata !DIExpression()), !dbg !1035
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #26, !dbg !1079
  call void @llvm.dbg.value(metadata i64 %72, metadata !978, metadata !DIExpression()), !dbg !1035
  br label %92, !dbg !1080

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !979, metadata !DIExpression()), !dbg !1035
  br label %74, !dbg !1081

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1035
  call void @llvm.dbg.value(metadata i8 %75, metadata !979, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 1, metadata !981, metadata !DIExpression()), !dbg !1035
  br label %76, !dbg !1082

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1043
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1035
  call void @llvm.dbg.value(metadata i8 %78, metadata !981, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 %77, metadata !979, metadata !DIExpression()), !dbg !1035
  %79 = and i8 %78, 1, !dbg !1083
  %80 = icmp eq i8 %79, 0, !dbg !1083
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1085
  br label %82, !dbg !1085

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1035
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1038
  call void @llvm.dbg.value(metadata i8 %84, metadata !981, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 %83, metadata !979, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i32 2, metadata !969, metadata !DIExpression()), !dbg !1035
  %85 = and i8 %84, 1, !dbg !1086
  %86 = icmp eq i8 %85, 0, !dbg !1086
  br i1 %86, label %87, label %92, !dbg !1088

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1089
  br i1 %88, label %92, label %89, !dbg !1092

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1089, !tbaa !1057
  br label %92, !dbg !1089

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !981, metadata !DIExpression()), !dbg !1035
  br label %92, !dbg !1093

91:                                               ; preds = %26
  call void @abort() #25, !dbg !1094
  unreachable, !dbg !1094

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1078
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), %40 ], !dbg !1035
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1035
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1035
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1035
  call void @llvm.dbg.value(metadata i8 %100, metadata !981, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 %99, metadata !979, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %98, metadata !978, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8* %97, metadata !977, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %96, metadata !975, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8* %95, metadata !973, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8* %94, metadata !972, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i32 %93, metadata !969, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 0, metadata !974, metadata !DIExpression()), !dbg !1035
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
  br label %121, !dbg !1095

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1096
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1078
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1040
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1044
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1045
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1046
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !966, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 %128, metadata !984, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 %127, metadata !983, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 %126, metadata !982, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %125, metadata !968, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %124, metadata !976, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %123, metadata !975, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %122, metadata !974, metadata !DIExpression()), !dbg !1035
  %130 = icmp eq i64 %125, -1, !dbg !1097
  br i1 %130, label %131, label %135, !dbg !1098

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1099
  %133 = load i8, i8* %132, align 1, !dbg !1099, !tbaa !1057
  %134 = icmp eq i8 %133, 0, !dbg !1100
  br i1 %134, label %587, label %137, !dbg !1101

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1102
  br i1 %136, label %587, label %137, !dbg !1101

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !990, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 0, metadata !991, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 0, metadata !992, metadata !DIExpression()), !dbg !1103
  br i1 %106, label %138, label %153, !dbg !1104

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1106
  %140 = and i1 %107, %130, !dbg !1107
  br i1 %140, label %141, label %143, !dbg !1107

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #26, !dbg !1108
  call void @llvm.dbg.value(metadata i64 %142, metadata !968, metadata !DIExpression()), !dbg !1035
  br label %143, !dbg !1109

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1109
  call void @llvm.dbg.value(metadata i64 %144, metadata !968, metadata !DIExpression()), !dbg !1035
  %145 = icmp ugt i64 %139, %144, !dbg !1110
  br i1 %145, label %153, label %146, !dbg !1111

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1112
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1113
  %149 = icmp ne i32 %148, 0, !dbg !1114
  %150 = or i1 %149, %109, !dbg !1115
  %151 = xor i1 %149, true, !dbg !1115
  %152 = zext i1 %151 to i8, !dbg !1115
  br i1 %150, label %153, label %646, !dbg !1115

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1103
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1103
  call void @llvm.dbg.value(metadata i8 %156, metadata !990, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %154, metadata !968, metadata !DIExpression()), !dbg !1035
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1116
  %158 = load i8, i8* %157, align 1, !dbg !1116, !tbaa !1057
  call void @llvm.dbg.value(metadata i8 %158, metadata !985, metadata !DIExpression()), !dbg !1103
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
  ], !dbg !1117

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1118

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1119

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !991, metadata !DIExpression()), !dbg !1103
  %162 = and i8 %126, 1, !dbg !1123
  %163 = icmp eq i8 %162, 0, !dbg !1123
  %164 = and i1 %110, %163, !dbg !1123
  br i1 %164, label %165, label %181, !dbg !1123

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1125
  br i1 %166, label %167, label %169, !dbg !1129

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1125
  store i8 39, i8* %168, align 1, !dbg !1125, !tbaa !1057
  br label %169, !dbg !1125

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1129
  call void @llvm.dbg.value(metadata i64 %170, metadata !975, metadata !DIExpression()), !dbg !1035
  %171 = icmp ult i64 %170, %129, !dbg !1130
  br i1 %171, label %172, label %174, !dbg !1133

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1130
  store i8 36, i8* %173, align 1, !dbg !1130, !tbaa !1057
  br label %174, !dbg !1130

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1133
  call void @llvm.dbg.value(metadata i64 %175, metadata !975, metadata !DIExpression()), !dbg !1035
  %176 = icmp ult i64 %175, %129, !dbg !1134
  br i1 %176, label %177, label %179, !dbg !1137

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1134
  store i8 39, i8* %178, align 1, !dbg !1134, !tbaa !1057
  br label %179, !dbg !1134

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1137
  call void @llvm.dbg.value(metadata i64 %180, metadata !975, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 1, metadata !982, metadata !DIExpression()), !dbg !1035
  br label %181, !dbg !1138

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1035
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1035
  call void @llvm.dbg.value(metadata i8 %183, metadata !982, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %182, metadata !975, metadata !DIExpression()), !dbg !1035
  %184 = icmp ult i64 %182, %129, !dbg !1139
  br i1 %184, label %185, label %187, !dbg !1142

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1139
  store i8 92, i8* %186, align 1, !dbg !1139, !tbaa !1057
  br label %187, !dbg !1139

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1142
  call void @llvm.dbg.value(metadata i64 %188, metadata !975, metadata !DIExpression()), !dbg !1035
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1143
  br i1 %191, label %192, label %473, !dbg !1143

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1145
  %194 = load i8, i8* %193, align 1, !dbg !1145, !tbaa !1057
  %195 = add i8 %194, -48, !dbg !1146
  %196 = icmp ult i8 %195, 10, !dbg !1146
  br i1 %196, label %197, label %473, !dbg !1146

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1147
  br i1 %198, label %199, label %201, !dbg !1151

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1147
  store i8 48, i8* %200, align 1, !dbg !1147, !tbaa !1057
  br label %201, !dbg !1147

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1151
  call void @llvm.dbg.value(metadata i64 %202, metadata !975, metadata !DIExpression()), !dbg !1035
  %203 = icmp ult i64 %202, %129, !dbg !1152
  br i1 %203, label %204, label %206, !dbg !1155

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1152
  store i8 48, i8* %205, align 1, !dbg !1152, !tbaa !1057
  br label %206, !dbg !1152

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1155
  call void @llvm.dbg.value(metadata i64 %207, metadata !975, metadata !DIExpression()), !dbg !1035
  br label %473, !dbg !1156

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1157

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1158

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1159

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1161
  br i1 %214, label %215, label %473, !dbg !1161

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1163
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1164
  %218 = load i8, i8* %217, align 1, !dbg !1164, !tbaa !1057
  %219 = icmp eq i8 %218, 63, !dbg !1165
  br i1 %219, label %220, label %473, !dbg !1166

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1167
  %222 = load i8, i8* %221, align 1, !dbg !1167, !tbaa !1057
  %223 = sext i8 %222 to i32, !dbg !1167
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
  ], !dbg !1168

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1169

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !985, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 undef, metadata !974, metadata !DIExpression()), !dbg !1035
  %226 = icmp ult i64 %123, %129, !dbg !1171
  br i1 %226, label %227, label %229, !dbg !1174

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1171
  store i8 63, i8* %228, align 1, !dbg !1171, !tbaa !1057
  br label %229, !dbg !1171

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !1174
  call void @llvm.dbg.value(metadata i64 %230, metadata !975, metadata !DIExpression()), !dbg !1035
  %231 = icmp ult i64 %230, %129, !dbg !1175
  br i1 %231, label %232, label %234, !dbg !1178

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1175
  store i8 34, i8* %233, align 1, !dbg !1175, !tbaa !1057
  br label %234, !dbg !1175

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !1178
  call void @llvm.dbg.value(metadata i64 %235, metadata !975, metadata !DIExpression()), !dbg !1035
  %236 = icmp ult i64 %235, %129, !dbg !1179
  br i1 %236, label %237, label %239, !dbg !1182

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1179
  store i8 34, i8* %238, align 1, !dbg !1179, !tbaa !1057
  br label %239, !dbg !1179

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !1182
  call void @llvm.dbg.value(metadata i64 %240, metadata !975, metadata !DIExpression()), !dbg !1035
  %241 = icmp ult i64 %240, %129, !dbg !1183
  br i1 %241, label %242, label %244, !dbg !1186

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1183
  store i8 63, i8* %243, align 1, !dbg !1183, !tbaa !1057
  br label %244, !dbg !1183

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !1186
  call void @llvm.dbg.value(metadata i64 %245, metadata !975, metadata !DIExpression()), !dbg !1035
  br label %473, !dbg !1187

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !989, metadata !DIExpression()), !dbg !1103
  br label %256, !dbg !1188

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !989, metadata !DIExpression()), !dbg !1103
  br label %256, !dbg !1189

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !989, metadata !DIExpression()), !dbg !1103
  br label %254, !dbg !1190

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !989, metadata !DIExpression()), !dbg !1103
  br label %254, !dbg !1191

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !989, metadata !DIExpression()), !dbg !1103
  br label %256, !dbg !1192

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !989, metadata !DIExpression()), !dbg !1103
  br i1 %110, label %252, label %253, !dbg !1193

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !1194

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !1197

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !1199
  call void @llvm.dbg.value(metadata i8 %255, metadata !989, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.label(metadata !1030), !dbg !1200
  br i1 %111, label %256, label %631, !dbg !1201

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !1199
  call void @llvm.dbg.value(metadata i8 %257, metadata !989, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.label(metadata !1031), !dbg !1203
  br i1 %102, label %495, label %473, !dbg !1204

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1205

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1206, !tbaa !1057
  %261 = icmp eq i8 %260, 0, !dbg !1208
  br i1 %261, label %262, label %473, !dbg !1209

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !1210
  br i1 %263, label %264, label %473, !dbg !1212

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !992, metadata !DIExpression()), !dbg !1103
  br label %265, !dbg !1213

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1103
  call void @llvm.dbg.value(metadata i8 %266, metadata !992, metadata !DIExpression()), !dbg !1103
  br i1 %111, label %473, label %631, !dbg !1214

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !983, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 1, metadata !992, metadata !DIExpression()), !dbg !1103
  br i1 %110, label %268, label %473, !dbg !1216

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !1217

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !1220
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !1222
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !1222
  %274 = select i1 %272, i64 %129, i64 0, !dbg !1222
  call void @llvm.dbg.value(metadata i64 %274, metadata !966, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %273, metadata !976, metadata !DIExpression()), !dbg !1035
  %275 = icmp ult i64 %123, %274, !dbg !1223
  br i1 %275, label %276, label %278, !dbg !1226

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1223
  store i8 39, i8* %277, align 1, !dbg !1223, !tbaa !1057
  br label %278, !dbg !1223

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !1226
  call void @llvm.dbg.value(metadata i64 %279, metadata !975, metadata !DIExpression()), !dbg !1035
  %280 = icmp ult i64 %279, %274, !dbg !1227
  br i1 %280, label %281, label %283, !dbg !1230

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1227
  store i8 92, i8* %282, align 1, !dbg !1227, !tbaa !1057
  br label %283, !dbg !1227

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !1230
  call void @llvm.dbg.value(metadata i64 %284, metadata !975, metadata !DIExpression()), !dbg !1035
  %285 = icmp ult i64 %284, %274, !dbg !1231
  br i1 %285, label %286, label %288, !dbg !1234

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1231
  store i8 39, i8* %287, align 1, !dbg !1231, !tbaa !1057
  br label %288, !dbg !1231

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !1234
  call void @llvm.dbg.value(metadata i64 %289, metadata !975, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 0, metadata !982, metadata !DIExpression()), !dbg !1035
  br label %473, !dbg !1235

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !1236

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !993, metadata !DIExpression()), !dbg !1237
  %292 = tail call i16** @__ctype_b_loc() #28, !dbg !1238
  %293 = load i16*, i16** %292, align 8, !dbg !1238, !tbaa !574
  %294 = zext i8 %158 to i64, !dbg !1238
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1238
  %296 = load i16, i16* %295, align 2, !dbg !1238, !tbaa !1240
  %297 = lshr i16 %296, 14, !dbg !1242
  %298 = trunc i16 %297 to i8, !dbg !1242
  %299 = and i8 %298, 1, !dbg !1242
  call void @llvm.dbg.value(metadata i8 %354, metadata !996, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %355, metadata !993, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %306, metadata !968, metadata !DIExpression()), !dbg !1035
  %300 = icmp eq i8 %299, 0, !dbg !1243
  call void @llvm.dbg.value(metadata i1 %357, metadata !992, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1103
  br label %359, !dbg !1244

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #24, !dbg !1245
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !997, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8* %23, metadata !1247, metadata !DIExpression()) #24, !dbg !1255
  call void @llvm.dbg.value(metadata i32 0, metadata !1253, metadata !DIExpression()) #24, !dbg !1255
  call void @llvm.dbg.value(metadata i64 8, metadata !1254, metadata !DIExpression()) #24, !dbg !1255
  store i64 0, i64* %10, align 8, !dbg !1257
  call void @llvm.dbg.value(metadata i64 0, metadata !993, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i8 1, metadata !996, metadata !DIExpression()), !dbg !1237
  %302 = icmp eq i64 %154, -1, !dbg !1258
  br i1 %302, label %303, label %305, !dbg !1260

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #26, !dbg !1261
  call void @llvm.dbg.value(metadata i64 %304, metadata !968, metadata !DIExpression()), !dbg !1035
  br label %305, !dbg !1262

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1103
  call void @llvm.dbg.value(metadata i64 %306, metadata !968, metadata !DIExpression()), !dbg !1035
  br label %307, !dbg !1263

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !1264
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !1265
  call void @llvm.dbg.value(metadata i8 %309, metadata !996, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %308, metadata !993, metadata !DIExpression()), !dbg !1237
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1266
  %310 = add i64 %308, %122, !dbg !1267
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !1268
  %312 = sub i64 %306, %310, !dbg !1269
  call void @llvm.dbg.value(metadata i32* %12, metadata !1015, metadata !DIExpression(DW_OP_deref)), !dbg !1270
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #24, !dbg !1271
  call void @llvm.dbg.value(metadata i64 %313, metadata !1018, metadata !DIExpression()), !dbg !1270
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !1272

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !993, metadata !DIExpression()), !dbg !1237
  %315 = icmp ugt i64 %306, %310, !dbg !1273
  br i1 %315, label %316, label %341, !dbg !1275

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !1276
  br label %318, !dbg !1276

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !993, metadata !DIExpression()), !dbg !1237
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !1277
  %322 = load i8, i8* %321, align 1, !dbg !1277, !tbaa !1057
  %323 = icmp eq i8 %322, 0, !dbg !1275
  br i1 %323, label %341, label %324, !dbg !1276

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !1278
  call void @llvm.dbg.value(metadata i64 %325, metadata !993, metadata !DIExpression()), !dbg !1237
  %326 = add i64 %325, %122, !dbg !1279
  %327 = icmp ult i64 %326, %306, !dbg !1273
  br i1 %327, label %318, label %341, !dbg !1275, !llvm.loop !1280

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !1281
  call void @llvm.dbg.value(metadata i64 1, metadata !1019, metadata !DIExpression()), !dbg !1282
  br i1 %330, label %331, label %344, !dbg !1281

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1019, metadata !DIExpression()), !dbg !1282
  %333 = add i64 %332, %310, !dbg !1283
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !1286
  %335 = load i8, i8* %334, align 1, !dbg !1286, !tbaa !1057
  %336 = sext i8 %335 to i32, !dbg !1286
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !1287

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !1288
  call void @llvm.dbg.value(metadata i64 %338, metadata !1019, metadata !DIExpression()), !dbg !1282
  %339 = icmp eq i64 %338, %313, !dbg !1289
  br i1 %339, label %344, label %331, !dbg !1290, !llvm.loop !1291

340:                                              ; preds = %307
  br label %341, !dbg !1293

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !996, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 undef, metadata !993, metadata !DIExpression()), !dbg !1237
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1293
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !1294, !tbaa !770
  call void @llvm.dbg.value(metadata i32 %345, metadata !1015, metadata !DIExpression()), !dbg !1270
  %346 = call i32 @iswprint(i32 %345) #24, !dbg !1296
  %347 = icmp eq i32 %346, 0, !dbg !1296
  %348 = select i1 %347, i8 0, i8 %309, !dbg !1297
  call void @llvm.dbg.value(metadata i8 %348, metadata !996, metadata !DIExpression()), !dbg !1237
  %349 = add i64 %313, %308, !dbg !1298
  call void @llvm.dbg.value(metadata i64 %349, metadata !993, metadata !DIExpression()), !dbg !1237
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1293
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #26, !dbg !1299
  %351 = icmp eq i32 %350, 0, !dbg !1300
  br i1 %351, label %307, label %353, !dbg !1301, !llvm.loop !1302

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !996, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 undef, metadata !993, metadata !DIExpression()), !dbg !1237
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1293
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #24, !dbg !1304
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #24, !dbg !1304
  call void @llvm.dbg.value(metadata i8 %354, metadata !996, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %355, metadata !993, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %306, metadata !968, metadata !DIExpression()), !dbg !1035
  %356 = and i8 %354, 1, !dbg !1243
  %357 = icmp eq i8 %356, 0, !dbg !1243
  call void @llvm.dbg.value(metadata i1 %357, metadata !992, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1103
  %358 = icmp ugt i64 %355, 1, !dbg !1305
  br i1 %358, label %367, label %359, !dbg !1244

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !1306
  br i1 %364, label %367, label %365, !dbg !1306

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1103
  call void @llvm.dbg.value(metadata i8 %472, metadata !992, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %441, metadata !991, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %440, metadata !990, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %439, metadata !985, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %438, metadata !982, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %371, metadata !968, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %437, metadata !975, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %375, metadata !974, metadata !DIExpression()), !dbg !1035
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !1307
  call void @llvm.dbg.value(metadata i64 %372, metadata !1026, metadata !DIExpression()), !dbg !1308
  %373 = and i1 %102, %368
  br label %374, !dbg !1309

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1096
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1035
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1044
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1103
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1103
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !1310
  call void @llvm.dbg.value(metadata i8 %380, metadata !991, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %379, metadata !990, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %378, metadata !985, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %377, metadata !982, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %376, metadata !975, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %375, metadata !974, metadata !DIExpression()), !dbg !1035
  br i1 %373, label %381, label %427, !dbg !1311

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !1316

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !991, metadata !DIExpression()), !dbg !1103
  %383 = and i8 %377, 1, !dbg !1319
  %384 = icmp eq i8 %383, 0, !dbg !1319
  %385 = and i1 %110, %384, !dbg !1319
  br i1 %385, label %386, label %402, !dbg !1319

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !1321
  br i1 %387, label %388, label %390, !dbg !1325

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1321
  store i8 39, i8* %389, align 1, !dbg !1321, !tbaa !1057
  br label %390, !dbg !1321

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !1325
  call void @llvm.dbg.value(metadata i64 %391, metadata !975, metadata !DIExpression()), !dbg !1035
  %392 = icmp ult i64 %391, %129, !dbg !1326
  br i1 %392, label %393, label %395, !dbg !1329

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !1326
  store i8 36, i8* %394, align 1, !dbg !1326, !tbaa !1057
  br label %395, !dbg !1326

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !1329
  call void @llvm.dbg.value(metadata i64 %396, metadata !975, metadata !DIExpression()), !dbg !1035
  %397 = icmp ult i64 %396, %129, !dbg !1330
  br i1 %397, label %398, label %400, !dbg !1333

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1330
  store i8 39, i8* %399, align 1, !dbg !1330, !tbaa !1057
  br label %400, !dbg !1330

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !1333
  call void @llvm.dbg.value(metadata i64 %401, metadata !975, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 1, metadata !982, metadata !DIExpression()), !dbg !1035
  br label %402, !dbg !1334

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1035
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1035
  call void @llvm.dbg.value(metadata i8 %404, metadata !982, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %403, metadata !975, metadata !DIExpression()), !dbg !1035
  %405 = icmp ult i64 %403, %129, !dbg !1335
  br i1 %405, label %406, label %408, !dbg !1338

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1335
  store i8 92, i8* %407, align 1, !dbg !1335, !tbaa !1057
  br label %408, !dbg !1335

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !1338
  call void @llvm.dbg.value(metadata i64 %409, metadata !975, metadata !DIExpression()), !dbg !1035
  %410 = icmp ult i64 %409, %129, !dbg !1339
  br i1 %410, label %411, label %415, !dbg !1342

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !1339
  %413 = or i8 %412, 48, !dbg !1339
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !1339
  store i8 %413, i8* %414, align 1, !dbg !1339, !tbaa !1057
  br label %415, !dbg !1339

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !1342
  call void @llvm.dbg.value(metadata i64 %416, metadata !975, metadata !DIExpression()), !dbg !1035
  %417 = icmp ult i64 %416, %129, !dbg !1343
  br i1 %417, label %418, label %423, !dbg !1346

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !1343
  %420 = and i8 %419, 7, !dbg !1343
  %421 = or i8 %420, 48, !dbg !1343
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !1343
  store i8 %421, i8* %422, align 1, !dbg !1343, !tbaa !1057
  br label %423, !dbg !1343

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !1346
  call void @llvm.dbg.value(metadata i64 %424, metadata !975, metadata !DIExpression()), !dbg !1035
  %425 = and i8 %378, 7, !dbg !1347
  %426 = or i8 %425, 48, !dbg !1348
  call void @llvm.dbg.value(metadata i8 %426, metadata !985, metadata !DIExpression()), !dbg !1103
  br label %436, !dbg !1349

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !1350
  %429 = icmp eq i8 %428, 0, !dbg !1350
  br i1 %429, label %436, label %430, !dbg !1352

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !1353
  br i1 %431, label %432, label %434, !dbg !1357

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1353
  store i8 92, i8* %433, align 1, !dbg !1353, !tbaa !1057
  br label %434, !dbg !1353

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !1357
  call void @llvm.dbg.value(metadata i64 %435, metadata !975, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 0, metadata !990, metadata !DIExpression()), !dbg !1103
  br label %436, !dbg !1358

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1035
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1044
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1103
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1103
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1103
  call void @llvm.dbg.value(metadata i8 %441, metadata !991, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %440, metadata !990, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %439, metadata !985, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %438, metadata !982, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %437, metadata !975, metadata !DIExpression()), !dbg !1035
  %442 = add i64 %375, 1, !dbg !1359
  %443 = icmp ugt i64 %372, %442, !dbg !1361
  br i1 %443, label %444, label %471, !dbg !1362

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !1363
  %446 = icmp ne i8 %445, 0, !dbg !1363
  %447 = and i8 %441, 1, !dbg !1363
  %448 = icmp eq i8 %447, 0, !dbg !1363
  %449 = and i1 %446, %448, !dbg !1363
  br i1 %449, label %450, label %461, !dbg !1363

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !1366
  br i1 %451, label %452, label %454, !dbg !1370

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !1366
  store i8 39, i8* %453, align 1, !dbg !1366, !tbaa !1057
  br label %454, !dbg !1366

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !1370
  call void @llvm.dbg.value(metadata i64 %455, metadata !975, metadata !DIExpression()), !dbg !1035
  %456 = icmp ult i64 %455, %129, !dbg !1371
  br i1 %456, label %457, label %459, !dbg !1374

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !1371
  store i8 39, i8* %458, align 1, !dbg !1371, !tbaa !1057
  br label %459, !dbg !1371

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !1374
  call void @llvm.dbg.value(metadata i64 %460, metadata !975, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 0, metadata !982, metadata !DIExpression()), !dbg !1035
  br label %461, !dbg !1375

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !1376
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1035
  call void @llvm.dbg.value(metadata i8 %463, metadata !982, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %462, metadata !975, metadata !DIExpression()), !dbg !1035
  %464 = icmp ult i64 %462, %129, !dbg !1377
  br i1 %464, label %465, label %467, !dbg !1380

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !1377
  store i8 %439, i8* %466, align 1, !dbg !1377, !tbaa !1057
  br label %467, !dbg !1377

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !1380
  call void @llvm.dbg.value(metadata i64 %468, metadata !975, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %442, metadata !974, metadata !DIExpression()), !dbg !1035
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !1381
  %470 = load i8, i8* %469, align 1, !dbg !1381, !tbaa !1057
  call void @llvm.dbg.value(metadata i8 %470, metadata !985, metadata !DIExpression()), !dbg !1103
  br label %374, !dbg !1382, !llvm.loop !1383

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1103
  call void @llvm.dbg.value(metadata i8 %472, metadata !992, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %441, metadata !991, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %440, metadata !990, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %439, metadata !985, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %438, metadata !982, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %371, metadata !968, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %437, metadata !975, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %375, metadata !974, metadata !DIExpression()), !dbg !1035
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1096
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1035
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1040
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !1386
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1035
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1035
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1103
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1103
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1103
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !966, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 %482, metadata !992, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %481, metadata !991, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %156, metadata !990, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %480, metadata !985, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %479, metadata !983, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 %478, metadata !982, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %477, metadata !968, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %476, metadata !976, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %475, metadata !975, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %474, metadata !974, metadata !DIExpression()), !dbg !1035
  br i1 %116, label %494, label %484, !dbg !1387

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !1389
  %486 = zext i8 %485 to i64, !dbg !1389
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !1390
  %488 = load i32, i32* %487, align 4, !dbg !1390, !tbaa !770
  %489 = and i8 %480, 31, !dbg !1391
  %490 = zext i8 %489 to i32, !dbg !1391
  %491 = shl nuw i32 1, %490, !dbg !1392
  %492 = and i32 %488, %491, !dbg !1392
  %493 = icmp eq i32 %492, 0, !dbg !1392
  br i1 %493, label %494, label %495, !dbg !1393

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !1394

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !1395
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1035
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1040
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !1386
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1044
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1045
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1103
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1103
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !966, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 %503, metadata !992, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %502, metadata !985, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %501, metadata !983, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 %500, metadata !982, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %499, metadata !968, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %498, metadata !976, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %497, metadata !975, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %496, metadata !974, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.label(metadata !1032), !dbg !1396
  br i1 %109, label %505, label %635, !dbg !1397

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !991, metadata !DIExpression()), !dbg !1103
  %506 = and i8 %500, 1, !dbg !1399
  %507 = icmp eq i8 %506, 0, !dbg !1399
  %508 = and i1 %110, %507, !dbg !1399
  br i1 %508, label %509, label %525, !dbg !1399

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !1401
  br i1 %510, label %511, label %513, !dbg !1405

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !1401
  store i8 39, i8* %512, align 1, !dbg !1401, !tbaa !1057
  br label %513, !dbg !1401

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !1405
  call void @llvm.dbg.value(metadata i64 %514, metadata !975, metadata !DIExpression()), !dbg !1035
  %515 = icmp ult i64 %514, %504, !dbg !1406
  br i1 %515, label %516, label %518, !dbg !1409

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !1406
  store i8 36, i8* %517, align 1, !dbg !1406, !tbaa !1057
  br label %518, !dbg !1406

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !1409
  call void @llvm.dbg.value(metadata i64 %519, metadata !975, metadata !DIExpression()), !dbg !1035
  %520 = icmp ult i64 %519, %504, !dbg !1410
  br i1 %520, label %521, label %523, !dbg !1413

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1410
  store i8 39, i8* %522, align 1, !dbg !1410, !tbaa !1057
  br label %523, !dbg !1410

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !1413
  call void @llvm.dbg.value(metadata i64 %524, metadata !975, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 1, metadata !982, metadata !DIExpression()), !dbg !1035
  br label %525, !dbg !1414

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1103
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1035
  call void @llvm.dbg.value(metadata i8 %527, metadata !982, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %526, metadata !975, metadata !DIExpression()), !dbg !1035
  %528 = icmp ult i64 %526, %504, !dbg !1415
  br i1 %528, label %529, label %531, !dbg !1418

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1415
  store i8 92, i8* %530, align 1, !dbg !1415, !tbaa !1057
  br label %531, !dbg !1415

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !1418
  call void @llvm.dbg.value(metadata i64 %543, metadata !966, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 %542, metadata !992, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %541, metadata !991, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %540, metadata !985, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %539, metadata !983, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 %538, metadata !982, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %537, metadata !968, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %536, metadata !976, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %535, metadata !975, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %534, metadata !974, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.label(metadata !1033), !dbg !1419
  br label %560, !dbg !1420

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !1395
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1035
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1040
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !1386
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1044
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1045
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !1423
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1103
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1103
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !966, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 %542, metadata !992, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %541, metadata !991, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %540, metadata !985, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %539, metadata !983, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 %538, metadata !982, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %537, metadata !968, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %536, metadata !976, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %535, metadata !975, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %534, metadata !974, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.label(metadata !1033), !dbg !1419
  %544 = and i8 %538, 1, !dbg !1420
  %545 = icmp ne i8 %544, 0, !dbg !1420
  %546 = and i8 %541, 1, !dbg !1420
  %547 = icmp eq i8 %546, 0, !dbg !1420
  %548 = and i1 %545, %547, !dbg !1420
  br i1 %548, label %549, label %560, !dbg !1420

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !1424
  br i1 %550, label %551, label %553, !dbg !1428

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !1424
  store i8 39, i8* %552, align 1, !dbg !1424, !tbaa !1057
  br label %553, !dbg !1424

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !1428
  call void @llvm.dbg.value(metadata i64 %554, metadata !975, metadata !DIExpression()), !dbg !1035
  %555 = icmp ult i64 %554, %543, !dbg !1429
  br i1 %555, label %556, label %558, !dbg !1432

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !1429
  store i8 39, i8* %557, align 1, !dbg !1429, !tbaa !1057
  br label %558, !dbg !1429

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !1432
  call void @llvm.dbg.value(metadata i64 %559, metadata !975, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 0, metadata !982, metadata !DIExpression()), !dbg !1035
  br label %560, !dbg !1433

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1103
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1035
  call void @llvm.dbg.value(metadata i8 %569, metadata !982, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %568, metadata !975, metadata !DIExpression()), !dbg !1035
  %570 = icmp ult i64 %568, %561, !dbg !1434
  br i1 %570, label %571, label %573, !dbg !1437

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !1434
  store i8 %563, i8* %572, align 1, !dbg !1434, !tbaa !1057
  br label %573, !dbg !1434

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !1437
  call void @llvm.dbg.value(metadata i64 %574, metadata !975, metadata !DIExpression()), !dbg !1035
  %575 = icmp eq i8 %562, 0, !dbg !1438
  %576 = select i1 %575, i8 0, i8 %128, !dbg !1440
  call void @llvm.dbg.value(metadata i8 %576, metadata !984, metadata !DIExpression()), !dbg !1035
  br label %577, !dbg !1441

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !1395
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1035
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1040
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !1386
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1044
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1035
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1046
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !966, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 %584, metadata !984, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 %583, metadata !983, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 %582, metadata !982, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %581, metadata !968, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %580, metadata !976, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %579, metadata !975, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %578, metadata !974, metadata !DIExpression()), !dbg !1035
  %586 = add i64 %578, 1, !dbg !1442
  call void @llvm.dbg.value(metadata i64 %586, metadata !974, metadata !DIExpression()), !dbg !1035
  br label %121, !dbg !1443, !llvm.loop !1444

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !1446
  %590 = and i1 %110, %589, !dbg !1448
  %591 = xor i1 %590, true, !dbg !1448
  %592 = or i1 %109, %591, !dbg !1448
  br i1 %592, label %593, label %635, !dbg !1448

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !1449
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !1449
  br i1 %597, label %598, label %607, !dbg !1449

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !1451
  %600 = icmp eq i8 %599, 0, !dbg !1451
  br i1 %600, label %603, label %601, !dbg !1454

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !1455
  br label %652, !dbg !1456

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !1457
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !1459
  br i1 %606, label %26, label %607, !dbg !1459

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !1460
  %610 = and i1 %609, %608, !dbg !1462
  br i1 %610, label %611, label %626, !dbg !1462

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !977, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %123, metadata !975, metadata !DIExpression()), !dbg !1035
  %612 = load i8, i8* %97, align 1, !dbg !1463, !tbaa !1057
  %613 = icmp eq i8 %612, 0, !dbg !1466
  br i1 %613, label %626, label %614, !dbg !1466

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !977, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %617, metadata !975, metadata !DIExpression()), !dbg !1035
  %618 = icmp ult i64 %617, %129, !dbg !1467
  br i1 %618, label %619, label %621, !dbg !1470

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !1467
  store i8 %615, i8* %620, align 1, !dbg !1467, !tbaa !1057
  br label %621, !dbg !1467

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !1470
  call void @llvm.dbg.value(metadata i64 %622, metadata !975, metadata !DIExpression()), !dbg !1035
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !1471
  call void @llvm.dbg.value(metadata i8* %623, metadata !977, metadata !DIExpression()), !dbg !1035
  %624 = load i8, i8* %623, align 1, !dbg !1463, !tbaa !1057
  %625 = icmp eq i8 %624, 0, !dbg !1466
  br i1 %625, label %626, label %614, !dbg !1466, !llvm.loop !1472

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1078
  call void @llvm.dbg.value(metadata i64 %627, metadata !975, metadata !DIExpression()), !dbg !1035
  %628 = icmp ult i64 %627, %129, !dbg !1474
  br i1 %628, label %629, label %652, !dbg !1476

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !1477
  store i8 0, i8* %630, align 1, !dbg !1478, !tbaa !1057
  br label %652, !dbg !1477

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !966, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %637, metadata !968, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.label(metadata !1034), !dbg !1479
  %633 = icmp eq i8 %101, 0, !dbg !1480
  %634 = select i1 %633, i32 2, i32 4, !dbg !1480
  br label %642, !dbg !1480

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !966, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %637, metadata !968, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.label(metadata !1034), !dbg !1479
  %639 = icmp eq i32 %93, 2, !dbg !1482
  %640 = icmp eq i8 %636, 0, !dbg !1480
  %641 = select i1 %640, i32 2, i32 4, !dbg !1480
  br i1 %639, label %642, label %646, !dbg !1480

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !1480

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !969, metadata !DIExpression()), !dbg !1035
  %650 = and i32 %5, -3, !dbg !1483
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !1484
  br label %652, !dbg !1485

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !1486
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #9 !dbg !1487 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1491, metadata !DIExpression()), !dbg !1495
  call void @llvm.dbg.value(metadata i32 %1, metadata !1492, metadata !DIExpression()), !dbg !1495
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #24, !dbg !1496
  call void @llvm.dbg.value(metadata i8* %3, metadata !1493, metadata !DIExpression()), !dbg !1495
  %4 = icmp eq i8* %3, %0, !dbg !1497
  br i1 %4, label %5, label %72, !dbg !1499

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #24, !dbg !1500
  call void @llvm.dbg.value(metadata i8* %6, metadata !1494, metadata !DIExpression()), !dbg !1495
  call void @llvm.dbg.value(metadata i8* %6, metadata !1501, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.value(metadata i8* undef, metadata !1507, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.value(metadata i8 85, metadata !1508, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.value(metadata i8 84, metadata !1509, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.value(metadata i8 70, metadata !1510, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.value(metadata i8 45, metadata !1511, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.value(metadata i8 56, metadata !1512, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.value(metadata i8 0, metadata !1513, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.value(metadata i8 0, metadata !1514, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.value(metadata i8 0, metadata !1515, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.value(metadata i8 0, metadata !1516, metadata !DIExpression()), !dbg !1517
  %7 = load i8, i8* %6, align 1, !dbg !1520, !tbaa !1057
  %8 = and i8 %7, -33, !dbg !1520
  %9 = sext i8 %8 to i32, !dbg !1520
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !1520

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1522, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i8* undef, metadata !1527, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i8 84, metadata !1528, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i8 70, metadata !1529, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i8 45, metadata !1530, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i8 56, metadata !1531, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i8 0, metadata !1532, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i8 0, metadata !1533, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i8 0, metadata !1534, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i8 0, metadata !1535, metadata !DIExpression()), !dbg !1536
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1540
  %12 = load i8, i8* %11, align 1, !dbg !1540, !tbaa !1057
  %13 = and i8 %12, -33, !dbg !1540
  %14 = icmp eq i8 %13, 84, !dbg !1540
  br i1 %14, label %15, label %69, !dbg !1540

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !1542, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata i8* undef, metadata !1547, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata i8 70, metadata !1548, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata i8 45, metadata !1549, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata i8 56, metadata !1550, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata i8 0, metadata !1551, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata i8 0, metadata !1552, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata i8 0, metadata !1553, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata i8 0, metadata !1554, metadata !DIExpression()), !dbg !1555
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1559
  %17 = load i8, i8* %16, align 1, !dbg !1559, !tbaa !1057
  %18 = and i8 %17, -33, !dbg !1559
  %19 = icmp eq i8 %18, 70, !dbg !1559
  br i1 %19, label %20, label %69, !dbg !1559

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !1561, metadata !DIExpression()), !dbg !1573
  call void @llvm.dbg.value(metadata i8* undef, metadata !1566, metadata !DIExpression()), !dbg !1573
  call void @llvm.dbg.value(metadata i8 45, metadata !1567, metadata !DIExpression()), !dbg !1573
  call void @llvm.dbg.value(metadata i8 56, metadata !1568, metadata !DIExpression()), !dbg !1573
  call void @llvm.dbg.value(metadata i8 0, metadata !1569, metadata !DIExpression()), !dbg !1573
  call void @llvm.dbg.value(metadata i8 0, metadata !1570, metadata !DIExpression()), !dbg !1573
  call void @llvm.dbg.value(metadata i8 0, metadata !1571, metadata !DIExpression()), !dbg !1573
  call void @llvm.dbg.value(metadata i8 0, metadata !1572, metadata !DIExpression()), !dbg !1573
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1577
  %22 = load i8, i8* %21, align 1, !dbg !1577, !tbaa !1057
  %23 = icmp eq i8 %22, 45, !dbg !1577
  br i1 %23, label %24, label %69, !dbg !1579

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !1580, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i8* undef, metadata !1585, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i8 56, metadata !1586, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i8 0, metadata !1587, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i8 0, metadata !1588, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i8 0, metadata !1589, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i8 0, metadata !1590, metadata !DIExpression()), !dbg !1591
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1595
  %26 = load i8, i8* %25, align 1, !dbg !1595, !tbaa !1057
  %27 = icmp eq i8 %26, 56, !dbg !1595
  br i1 %27, label %28, label %69, !dbg !1597

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !1598, metadata !DIExpression()), !dbg !1608
  call void @llvm.dbg.value(metadata i8* undef, metadata !1603, metadata !DIExpression()), !dbg !1608
  call void @llvm.dbg.value(metadata i8 0, metadata !1604, metadata !DIExpression()), !dbg !1608
  call void @llvm.dbg.value(metadata i8 0, metadata !1605, metadata !DIExpression()), !dbg !1608
  call void @llvm.dbg.value(metadata i8 0, metadata !1606, metadata !DIExpression()), !dbg !1608
  call void @llvm.dbg.value(metadata i8 0, metadata !1607, metadata !DIExpression()), !dbg !1608
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1612
  %30 = load i8, i8* %29, align 1, !dbg !1612, !tbaa !1057
  %31 = icmp eq i8 %30, 0, !dbg !1612
  br i1 %31, label %32, label %69, !dbg !1614

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !1615, !tbaa !1057
  %34 = icmp eq i8 %33, 96, !dbg !1616
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.57, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.58, i64 0, i64 0), !dbg !1615
  br label %72, !dbg !1617

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1522, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata i8* undef, metadata !1527, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata i8 66, metadata !1528, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata i8 49, metadata !1529, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata i8 56, metadata !1530, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata i8 48, metadata !1531, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata i8 51, metadata !1532, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata i8 48, metadata !1533, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata i8 0, metadata !1534, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata i8 0, metadata !1535, metadata !DIExpression()), !dbg !1618
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1622
  %38 = load i8, i8* %37, align 1, !dbg !1622, !tbaa !1057
  %39 = and i8 %38, -33, !dbg !1622
  %40 = icmp eq i8 %39, 66, !dbg !1622
  br i1 %40, label %41, label %69, !dbg !1622

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !1542, metadata !DIExpression()), !dbg !1623
  call void @llvm.dbg.value(metadata i8* undef, metadata !1547, metadata !DIExpression()), !dbg !1623
  call void @llvm.dbg.value(metadata i8 49, metadata !1548, metadata !DIExpression()), !dbg !1623
  call void @llvm.dbg.value(metadata i8 56, metadata !1549, metadata !DIExpression()), !dbg !1623
  call void @llvm.dbg.value(metadata i8 48, metadata !1550, metadata !DIExpression()), !dbg !1623
  call void @llvm.dbg.value(metadata i8 51, metadata !1551, metadata !DIExpression()), !dbg !1623
  call void @llvm.dbg.value(metadata i8 48, metadata !1552, metadata !DIExpression()), !dbg !1623
  call void @llvm.dbg.value(metadata i8 0, metadata !1553, metadata !DIExpression()), !dbg !1623
  call void @llvm.dbg.value(metadata i8 0, metadata !1554, metadata !DIExpression()), !dbg !1623
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1625
  %43 = load i8, i8* %42, align 1, !dbg !1625, !tbaa !1057
  %44 = icmp eq i8 %43, 49, !dbg !1625
  br i1 %44, label %45, label %69, !dbg !1626

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !1561, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i8* undef, metadata !1566, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i8 56, metadata !1567, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i8 48, metadata !1568, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i8 51, metadata !1569, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i8 48, metadata !1570, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i8 0, metadata !1571, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i8 0, metadata !1572, metadata !DIExpression()), !dbg !1627
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1629
  %47 = load i8, i8* %46, align 1, !dbg !1629, !tbaa !1057
  %48 = icmp eq i8 %47, 56, !dbg !1629
  br i1 %48, label %49, label %69, !dbg !1630

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !1580, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata i8* undef, metadata !1585, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata i8 48, metadata !1586, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata i8 51, metadata !1587, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata i8 48, metadata !1588, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata i8 0, metadata !1589, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata i8 0, metadata !1590, metadata !DIExpression()), !dbg !1631
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1633
  %51 = load i8, i8* %50, align 1, !dbg !1633, !tbaa !1057
  %52 = icmp eq i8 %51, 48, !dbg !1633
  br i1 %52, label %53, label %69, !dbg !1634

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !1598, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.value(metadata i8* undef, metadata !1603, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.value(metadata i8 51, metadata !1604, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.value(metadata i8 48, metadata !1605, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.value(metadata i8 0, metadata !1606, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.value(metadata i8 0, metadata !1607, metadata !DIExpression()), !dbg !1635
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1637
  %55 = load i8, i8* %54, align 1, !dbg !1637, !tbaa !1057
  %56 = icmp eq i8 %55, 51, !dbg !1637
  br i1 %56, label %57, label %69, !dbg !1638

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !1639, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8* undef, metadata !1644, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 48, metadata !1645, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 0, metadata !1646, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 0, metadata !1647, metadata !DIExpression()), !dbg !1648
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1652
  %59 = load i8, i8* %58, align 1, !dbg !1652, !tbaa !1057
  %60 = icmp eq i8 %59, 48, !dbg !1652
  br i1 %60, label %61, label %69, !dbg !1654

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !1655, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i8* undef, metadata !1660, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i8 0, metadata !1661, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i8 0, metadata !1662, metadata !DIExpression()), !dbg !1663
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1667
  %63 = load i8, i8* %62, align 1, !dbg !1667, !tbaa !1057
  %64 = icmp eq i8 %63, 0, !dbg !1667
  br i1 %64, label %65, label %69, !dbg !1669

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !1670, !tbaa !1057
  %67 = icmp eq i8 %66, 96, !dbg !1671
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.59, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.60, i64 0, i64 0), !dbg !1670
  br label %72, !dbg !1672

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !1673
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), !dbg !1674
  br label %72, !dbg !1675

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !1495
  ret i8* %73, !dbg !1676
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #16

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: nounwind
declare !dbg !1677 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !1681 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #9 !dbg !1687 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1691, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i64 %1, metadata !1692, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1693, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8* %0, metadata !1695, metadata !DIExpression()) #24, !dbg !1708
  call void @llvm.dbg.value(metadata i64 %1, metadata !1700, metadata !DIExpression()) #24, !dbg !1708
  call void @llvm.dbg.value(metadata i64* null, metadata !1701, metadata !DIExpression()) #24, !dbg !1708
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1702, metadata !DIExpression()) #24, !dbg !1708
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1710
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1710
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1703, metadata !DIExpression()) #24, !dbg !1708
  %6 = tail call i32* @__errno_location() #28, !dbg !1711
  %7 = load i32, i32* %6, align 4, !dbg !1711, !tbaa !770
  call void @llvm.dbg.value(metadata i32 %7, metadata !1704, metadata !DIExpression()) #24, !dbg !1708
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1712
  %9 = load i32, i32* %8, align 4, !dbg !1712, !tbaa !909
  %10 = or i32 %9, 1, !dbg !1713
  call void @llvm.dbg.value(metadata i32 %10, metadata !1705, metadata !DIExpression()) #24, !dbg !1708
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1714
  %12 = load i32, i32* %11, align 8, !dbg !1714, !tbaa !857
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1715
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1716
  %15 = load i8*, i8** %14, align 8, !dbg !1716, !tbaa !931
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1717
  %17 = load i8*, i8** %16, align 8, !dbg !1717, !tbaa !934
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #24, !dbg !1718
  %19 = add i64 %18, 1, !dbg !1719
  call void @llvm.dbg.value(metadata i64 %19, metadata !1706, metadata !DIExpression()) #24, !dbg !1708
  call void @llvm.dbg.value(metadata i64 %19, metadata !1720, metadata !DIExpression()) #24, !dbg !1725
  %20 = tail call noalias i8* @xmalloc(i64 %19) #24, !dbg !1727
  call void @llvm.dbg.value(metadata i8* %20, metadata !1707, metadata !DIExpression()) #24, !dbg !1708
  %21 = load i32, i32* %11, align 8, !dbg !1728, !tbaa !857
  %22 = load i8*, i8** %14, align 8, !dbg !1729, !tbaa !931
  %23 = load i8*, i8** %16, align 8, !dbg !1730, !tbaa !934
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #24, !dbg !1731
  store i32 %7, i32* %6, align 4, !dbg !1732, !tbaa !770
  ret i8* %20, !dbg !1733
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #9 !dbg !1696 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1695, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i64 %1, metadata !1700, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i64* %2, metadata !1701, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1702, metadata !DIExpression()), !dbg !1734
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1735
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1735
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1703, metadata !DIExpression()), !dbg !1734
  %7 = tail call i32* @__errno_location() #28, !dbg !1736
  %8 = load i32, i32* %7, align 4, !dbg !1736, !tbaa !770
  call void @llvm.dbg.value(metadata i32 %8, metadata !1704, metadata !DIExpression()), !dbg !1734
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1737
  %10 = load i32, i32* %9, align 4, !dbg !1737, !tbaa !909
  %11 = icmp eq i64* %2, null, !dbg !1738
  %12 = zext i1 %11 to i32, !dbg !1738
  %13 = or i32 %10, %12, !dbg !1739
  call void @llvm.dbg.value(metadata i32 %13, metadata !1705, metadata !DIExpression()), !dbg !1734
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1740
  %15 = load i32, i32* %14, align 8, !dbg !1740, !tbaa !857
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1741
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1742
  %18 = load i8*, i8** %17, align 8, !dbg !1742, !tbaa !931
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1743
  %20 = load i8*, i8** %19, align 8, !dbg !1743, !tbaa !934
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !1744
  %22 = add i64 %21, 1, !dbg !1745
  call void @llvm.dbg.value(metadata i64 %22, metadata !1706, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i64 %22, metadata !1720, metadata !DIExpression()) #24, !dbg !1746
  %23 = tail call noalias i8* @xmalloc(i64 %22) #24, !dbg !1748
  call void @llvm.dbg.value(metadata i8* %23, metadata !1707, metadata !DIExpression()), !dbg !1734
  %24 = load i32, i32* %14, align 8, !dbg !1749, !tbaa !857
  %25 = load i8*, i8** %17, align 8, !dbg !1750, !tbaa !931
  %26 = load i8*, i8** %19, align 8, !dbg !1751, !tbaa !934
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !1752
  store i32 %8, i32* %7, align 4, !dbg !1753, !tbaa !770
  br i1 %11, label %29, label %28, !dbg !1754

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !1755, !tbaa !1757
  br label %29, !dbg !1759

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !1760
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #9 !dbg !1761 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1765, !tbaa !574
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !1763, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i32 1, metadata !1764, metadata !DIExpression()), !dbg !1766
  %2 = load i32, i32* @nslots, align 4, !dbg !1767, !tbaa !770
  %3 = icmp sgt i32 %2, 1, !dbg !1770
  br i1 %3, label %4, label %12, !dbg !1771

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !1770
  br label %6, !dbg !1771

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !1764, metadata !DIExpression()), !dbg !1766
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !1772
  %9 = load i8*, i8** %8, align 8, !dbg !1772, !tbaa !1773
  tail call void @free(i8* %9) #24, !dbg !1775
  %10 = add nuw nsw i64 %7, 1, !dbg !1776
  call void @llvm.dbg.value(metadata i64 %10, metadata !1764, metadata !DIExpression()), !dbg !1766
  %11 = icmp eq i64 %10, %5, !dbg !1770
  br i1 %11, label %12, label %6, !dbg !1771, !llvm.loop !1777

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1779
  %14 = load i8*, i8** %13, align 8, !dbg !1779, !tbaa !1773
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1781
  br i1 %15, label %17, label %16, !dbg !1782

16:                                               ; preds = %12
  tail call void @free(i8* %14) #24, !dbg !1783
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1785, !tbaa !1786
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1787, !tbaa !1773
  br label %17, !dbg !1788

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1789
  br i1 %18, label %21, label %19, !dbg !1791

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !1792
  tail call void @free(i8* %20) #24, !dbg !1794
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1795, !tbaa !574
  br label %21, !dbg !1796

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !1797, !tbaa !770
  ret void, !dbg !1798
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #9 !dbg !1799 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1801, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8* %1, metadata !1802, metadata !DIExpression()), !dbg !1803
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1804
  ret i8* %3, !dbg !1805
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #9 !dbg !1806 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1810, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i8* %1, metadata !1811, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i64 %2, metadata !1812, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1813, metadata !DIExpression()), !dbg !1825
  %5 = tail call i32* @__errno_location() #28, !dbg !1826
  %6 = load i32, i32* %5, align 4, !dbg !1826, !tbaa !770
  call void @llvm.dbg.value(metadata i32 %6, metadata !1814, metadata !DIExpression()), !dbg !1825
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1827, !tbaa !574
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !1815, metadata !DIExpression()), !dbg !1825
  %8 = icmp slt i32 %0, 0, !dbg !1828
  br i1 %8, label %9, label %10, !dbg !1830

9:                                                ; preds = %4
  tail call void @abort() #25, !dbg !1831
  unreachable, !dbg !1831

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !1832, !tbaa !770
  %12 = icmp sgt i32 %11, %0, !dbg !1833
  br i1 %12, label %34, label %13, !dbg !1834

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !1835
  call void @llvm.dbg.value(metadata i1 %14, metadata !1816, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1836
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !1819, metadata !DIExpression()), !dbg !1836
  %15 = icmp eq i32 %0, 2147483647, !dbg !1837
  br i1 %15, label %16, label %17, !dbg !1839

16:                                               ; preds = %13
  tail call void @xalloc_die() #25, !dbg !1840
  unreachable, !dbg !1840

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !1841
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !1841
  %20 = add nuw nsw i32 %0, 1, !dbg !1842
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !1843
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #24, !dbg !1844
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !1844
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !1815, metadata !DIExpression()), !dbg !1825
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !1845, !tbaa !574
  br i1 %14, label %25, label %26, !dbg !1846

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !1847, !tbaa.struct !1849
  br label %26, !dbg !1850

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !1851, !tbaa !770
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !1852
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !1853
  %31 = sub nsw i32 %20, %27, !dbg !1854
  %32 = sext i32 %31 to i64, !dbg !1855
  %33 = shl nsw i64 %32, 4, !dbg !1856
  call void @llvm.dbg.value(metadata i8* %30, metadata !1247, metadata !DIExpression()) #24, !dbg !1857
  call void @llvm.dbg.value(metadata i32 0, metadata !1253, metadata !DIExpression()) #24, !dbg !1857
  call void @llvm.dbg.value(metadata i64 %33, metadata !1254, metadata !DIExpression()) #24, !dbg !1857
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #24, !dbg !1859
  store i32 %20, i32* @nslots, align 4, !dbg !1860, !tbaa !770
  br label %34, !dbg !1861

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !1825
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !1815, metadata !DIExpression()), !dbg !1825
  %36 = zext i32 %0 to i64, !dbg !1862
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !1863
  %38 = load i64, i64* %37, align 8, !dbg !1863, !tbaa !1786
  call void @llvm.dbg.value(metadata i64 %38, metadata !1820, metadata !DIExpression()), !dbg !1864
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !1865
  %40 = load i8*, i8** %39, align 8, !dbg !1865, !tbaa !1773
  call void @llvm.dbg.value(metadata i8* %40, metadata !1822, metadata !DIExpression()), !dbg !1864
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !1866
  %42 = load i32, i32* %41, align 4, !dbg !1866, !tbaa !909
  %43 = or i32 %42, 1, !dbg !1867
  call void @llvm.dbg.value(metadata i32 %43, metadata !1823, metadata !DIExpression()), !dbg !1864
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1868
  %45 = load i32, i32* %44, align 8, !dbg !1868, !tbaa !857
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !1869
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !1870
  %48 = load i8*, i8** %47, align 8, !dbg !1870, !tbaa !931
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !1871
  %50 = load i8*, i8** %49, align 8, !dbg !1871, !tbaa !934
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %51, metadata !1824, metadata !DIExpression()), !dbg !1864
  %52 = icmp ugt i64 %38, %51, !dbg !1873
  br i1 %52, label %63, label %53, !dbg !1875

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !1876
  call void @llvm.dbg.value(metadata i64 %54, metadata !1820, metadata !DIExpression()), !dbg !1864
  store i64 %54, i64* %37, align 8, !dbg !1878, !tbaa !1786
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1879
  br i1 %55, label %57, label %56, !dbg !1881

56:                                               ; preds = %53
  tail call void @free(i8* %40) #24, !dbg !1882
  br label %57, !dbg !1882

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !1720, metadata !DIExpression()) #24, !dbg !1883
  %58 = tail call noalias i8* @xmalloc(i64 %54) #24, !dbg !1885
  call void @llvm.dbg.value(metadata i8* %58, metadata !1822, metadata !DIExpression()), !dbg !1864
  store i8* %58, i8** %39, align 8, !dbg !1886, !tbaa !1773
  %59 = load i32, i32* %44, align 8, !dbg !1887, !tbaa !857
  %60 = load i8*, i8** %47, align 8, !dbg !1888, !tbaa !931
  %61 = load i8*, i8** %49, align 8, !dbg !1889, !tbaa !934
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !1890
  br label %63, !dbg !1891

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !1864
  call void @llvm.dbg.value(metadata i8* %64, metadata !1822, metadata !DIExpression()), !dbg !1864
  store i32 %6, i32* %5, align 4, !dbg !1892, !tbaa !770
  ret i8* %64, !dbg !1893
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #9 !dbg !1894 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1898, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i8* %1, metadata !1899, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i64 %2, metadata !1900, metadata !DIExpression()), !dbg !1901
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1902
  ret i8* %4, !dbg !1903
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #9 !dbg !1904 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1906, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i32 0, metadata !1801, metadata !DIExpression()) #24, !dbg !1908
  call void @llvm.dbg.value(metadata i8* %0, metadata !1802, metadata !DIExpression()) #24, !dbg !1908
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #24, !dbg !1910
  ret i8* %2, !dbg !1911
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #9 !dbg !1912 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1916, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i64 %1, metadata !1917, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i32 0, metadata !1898, metadata !DIExpression()) #24, !dbg !1919
  call void @llvm.dbg.value(metadata i8* %0, metadata !1899, metadata !DIExpression()) #24, !dbg !1919
  call void @llvm.dbg.value(metadata i64 %1, metadata !1900, metadata !DIExpression()) #24, !dbg !1919
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #24, !dbg !1921
  ret i8* %3, !dbg !1922
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #9 !dbg !1923 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1927, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i32 %1, metadata !1928, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8* %2, metadata !1929, metadata !DIExpression()), !dbg !1931
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !1932
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !1932
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !1930, metadata !DIExpression()), !dbg !1933
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1934), !dbg !1937
  call void @llvm.dbg.value(metadata i32 %1, metadata !1938, metadata !DIExpression()) #24, !dbg !1944
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !1943, metadata !DIExpression()) #24, !dbg !1946
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #24, !dbg !1946, !alias.scope !1934
  %6 = icmp eq i32 %1, 10, !dbg !1947
  br i1 %6, label %7, label %8, !dbg !1949

7:                                                ; preds = %3
  tail call void @abort() #25, !dbg !1950, !noalias !1934
  unreachable, !dbg !1950

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1951
  store i32 %1, i32* %9, align 8, !dbg !1952, !tbaa !857, !alias.scope !1934
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !1953
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !1954
  ret i8* %10, !dbg !1955
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #9 !dbg !1956 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1960, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i32 %1, metadata !1961, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %2, metadata !1962, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i64 %3, metadata !1963, metadata !DIExpression()), !dbg !1965
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1966
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !1966
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !1964, metadata !DIExpression()), !dbg !1967
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1968), !dbg !1971
  call void @llvm.dbg.value(metadata i32 %1, metadata !1938, metadata !DIExpression()) #24, !dbg !1972
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !1943, metadata !DIExpression()) #24, !dbg !1974
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #24, !dbg !1974, !alias.scope !1968
  %7 = icmp eq i32 %1, 10, !dbg !1975
  br i1 %7, label %8, label %9, !dbg !1976

8:                                                ; preds = %4
  tail call void @abort() #25, !dbg !1977, !noalias !1968
  unreachable, !dbg !1977

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1978
  store i32 %1, i32* %10, align 8, !dbg !1979, !tbaa !857, !alias.scope !1968
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !1980
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !1981
  ret i8* %11, !dbg !1982
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #9 !dbg !1983 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1987, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata i8* %1, metadata !1988, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata i32 0, metadata !1927, metadata !DIExpression()) #24, !dbg !1990
  call void @llvm.dbg.value(metadata i32 %0, metadata !1928, metadata !DIExpression()) #24, !dbg !1990
  call void @llvm.dbg.value(metadata i8* %1, metadata !1929, metadata !DIExpression()) #24, !dbg !1990
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !1992
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #24, !dbg !1992
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !1930, metadata !DIExpression()) #24, !dbg !1993
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1994) #24, !dbg !1997
  call void @llvm.dbg.value(metadata i32 %0, metadata !1938, metadata !DIExpression()) #24, !dbg !1998
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !1943, metadata !DIExpression()) #24, !dbg !2000
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #24, !dbg !2000, !alias.scope !1994
  %5 = icmp eq i32 %0, 10, !dbg !2001
  br i1 %5, label %6, label %7, !dbg !2002

6:                                                ; preds = %2
  tail call void @abort() #25, !dbg !2003, !noalias !1994
  unreachable, !dbg !2003

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2004
  store i32 %0, i32* %8, align 8, !dbg !2005, !tbaa !857, !alias.scope !1994
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #24, !dbg !2006
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2007
  ret i8* %9, !dbg !2008
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #9 !dbg !2009 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2013, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata i8* %1, metadata !2014, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata i64 %2, metadata !2015, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata i32 0, metadata !1960, metadata !DIExpression()) #24, !dbg !2017
  call void @llvm.dbg.value(metadata i32 %0, metadata !1961, metadata !DIExpression()) #24, !dbg !2017
  call void @llvm.dbg.value(metadata i8* %1, metadata !1962, metadata !DIExpression()) #24, !dbg !2017
  call void @llvm.dbg.value(metadata i64 %2, metadata !1963, metadata !DIExpression()) #24, !dbg !2017
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2019
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2019
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !1964, metadata !DIExpression()) #24, !dbg !2020
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2021) #24, !dbg !2024
  call void @llvm.dbg.value(metadata i32 %0, metadata !1938, metadata !DIExpression()) #24, !dbg !2025
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !1943, metadata !DIExpression()) #24, !dbg !2027
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #24, !dbg !2027, !alias.scope !2021
  %6 = icmp eq i32 %0, 10, !dbg !2028
  br i1 %6, label %7, label %8, !dbg !2029

7:                                                ; preds = %3
  tail call void @abort() #25, !dbg !2030, !noalias !2021
  unreachable, !dbg !2030

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2031
  store i32 %0, i32* %9, align 8, !dbg !2032, !tbaa !857, !alias.scope !2021
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #24, !dbg !2033
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2034
  ret i8* %10, !dbg !2035
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #9 !dbg !2036 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2040, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i64 %1, metadata !2041, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i8 %2, metadata !2042, metadata !DIExpression()), !dbg !2044
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2045
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2045
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2043, metadata !DIExpression()), !dbg !2046
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2047, !tbaa.struct !2048
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !875, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata i8 %2, metadata !876, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata i32 1, metadata !877, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata i8 %2, metadata !878, metadata !DIExpression()), !dbg !2049
  %6 = lshr i8 %2, 5, !dbg !2051
  %7 = zext i8 %6 to i64, !dbg !2051
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2052
  call void @llvm.dbg.value(metadata i32* %8, metadata !880, metadata !DIExpression()), !dbg !2049
  %9 = and i8 %2, 31, !dbg !2053
  %10 = zext i8 %9 to i32, !dbg !2053
  call void @llvm.dbg.value(metadata i32 %10, metadata !882, metadata !DIExpression()), !dbg !2049
  %11 = load i32, i32* %8, align 4, !dbg !2054, !tbaa !770
  %12 = lshr i32 %11, %10, !dbg !2055
  %13 = and i32 %12, 1, !dbg !2056
  call void @llvm.dbg.value(metadata i32 %13, metadata !883, metadata !DIExpression()), !dbg !2049
  %14 = xor i32 %13, 1, !dbg !2057
  %15 = shl i32 %14, %10, !dbg !2058
  %16 = xor i32 %15, %11, !dbg !2059
  store i32 %16, i32* %8, align 4, !dbg !2059, !tbaa !770
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2060
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2061
  ret i8* %17, !dbg !2062
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #9 !dbg !2063 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2067, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8 %1, metadata !2068, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8* %0, metadata !2040, metadata !DIExpression()) #24, !dbg !2070
  call void @llvm.dbg.value(metadata i64 -1, metadata !2041, metadata !DIExpression()) #24, !dbg !2070
  call void @llvm.dbg.value(metadata i8 %1, metadata !2042, metadata !DIExpression()) #24, !dbg !2070
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2072
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2072
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2043, metadata !DIExpression()) #24, !dbg !2073
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #24, !dbg !2074, !tbaa.struct !2048
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !875, metadata !DIExpression()) #24, !dbg !2075
  call void @llvm.dbg.value(metadata i8 %1, metadata !876, metadata !DIExpression()) #24, !dbg !2075
  call void @llvm.dbg.value(metadata i32 1, metadata !877, metadata !DIExpression()) #24, !dbg !2075
  call void @llvm.dbg.value(metadata i8 %1, metadata !878, metadata !DIExpression()) #24, !dbg !2075
  %5 = lshr i8 %1, 5, !dbg !2077
  %6 = zext i8 %5 to i64, !dbg !2077
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2078
  call void @llvm.dbg.value(metadata i32* %7, metadata !880, metadata !DIExpression()) #24, !dbg !2075
  %8 = and i8 %1, 31, !dbg !2079
  %9 = zext i8 %8 to i32, !dbg !2079
  call void @llvm.dbg.value(metadata i32 %9, metadata !882, metadata !DIExpression()) #24, !dbg !2075
  %10 = load i32, i32* %7, align 4, !dbg !2080, !tbaa !770
  %11 = lshr i32 %10, %9, !dbg !2081
  %12 = and i32 %11, 1, !dbg !2082
  call void @llvm.dbg.value(metadata i32 %12, metadata !883, metadata !DIExpression()) #24, !dbg !2075
  %13 = xor i32 %12, 1, !dbg !2083
  %14 = shl i32 %13, %9, !dbg !2084
  %15 = xor i32 %14, %10, !dbg !2085
  store i32 %15, i32* %7, align 4, !dbg !2085, !tbaa !770
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #24, !dbg !2086
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2087
  ret i8* %16, !dbg !2088
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #9 !dbg !2089 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2091, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8* %0, metadata !2067, metadata !DIExpression()) #24, !dbg !2093
  call void @llvm.dbg.value(metadata i8 58, metadata !2068, metadata !DIExpression()) #24, !dbg !2093
  call void @llvm.dbg.value(metadata i8* %0, metadata !2040, metadata !DIExpression()) #24, !dbg !2095
  call void @llvm.dbg.value(metadata i64 -1, metadata !2041, metadata !DIExpression()) #24, !dbg !2095
  call void @llvm.dbg.value(metadata i8 58, metadata !2042, metadata !DIExpression()) #24, !dbg !2095
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2097
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #24, !dbg !2097
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2043, metadata !DIExpression()) #24, !dbg !2098
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #24, !dbg !2099, !tbaa.struct !2048
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !875, metadata !DIExpression()) #24, !dbg !2100
  call void @llvm.dbg.value(metadata i8 58, metadata !876, metadata !DIExpression()) #24, !dbg !2100
  call void @llvm.dbg.value(metadata i32 1, metadata !877, metadata !DIExpression()) #24, !dbg !2100
  call void @llvm.dbg.value(metadata i8 58, metadata !878, metadata !DIExpression()) #24, !dbg !2100
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2102
  call void @llvm.dbg.value(metadata i32* %4, metadata !880, metadata !DIExpression()) #24, !dbg !2100
  call void @llvm.dbg.value(metadata i32 26, metadata !882, metadata !DIExpression()) #24, !dbg !2100
  %5 = load i32, i32* %4, align 4, !dbg !2103, !tbaa !770
  call void @llvm.dbg.value(metadata i32 %5, metadata !883, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #24, !dbg !2100
  %6 = or i32 %5, 67108864, !dbg !2104
  store i32 %6, i32* %4, align 4, !dbg !2104, !tbaa !770
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #24, !dbg !2105
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #24, !dbg !2106
  ret i8* %7, !dbg !2107
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #9 !dbg !2108 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2110, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata i64 %1, metadata !2111, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata i8* %0, metadata !2040, metadata !DIExpression()) #24, !dbg !2113
  call void @llvm.dbg.value(metadata i64 %1, metadata !2041, metadata !DIExpression()) #24, !dbg !2113
  call void @llvm.dbg.value(metadata i8 58, metadata !2042, metadata !DIExpression()) #24, !dbg !2113
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2115
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2115
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2043, metadata !DIExpression()) #24, !dbg !2116
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #24, !dbg !2117, !tbaa.struct !2048
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !875, metadata !DIExpression()) #24, !dbg !2118
  call void @llvm.dbg.value(metadata i8 58, metadata !876, metadata !DIExpression()) #24, !dbg !2118
  call void @llvm.dbg.value(metadata i32 1, metadata !877, metadata !DIExpression()) #24, !dbg !2118
  call void @llvm.dbg.value(metadata i8 58, metadata !878, metadata !DIExpression()) #24, !dbg !2118
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2120
  call void @llvm.dbg.value(metadata i32* %5, metadata !880, metadata !DIExpression()) #24, !dbg !2118
  call void @llvm.dbg.value(metadata i32 26, metadata !882, metadata !DIExpression()) #24, !dbg !2118
  %6 = load i32, i32* %5, align 4, !dbg !2121, !tbaa !770
  call void @llvm.dbg.value(metadata i32 %6, metadata !883, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #24, !dbg !2118
  %7 = or i32 %6, 67108864, !dbg !2122
  store i32 %7, i32* %5, align 4, !dbg !2122, !tbaa !770
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #24, !dbg !2123
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2124
  ret i8* %8, !dbg !2125
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #9 !dbg !2126 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !1943, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2132
  call void @llvm.dbg.value(metadata i32 %0, metadata !2128, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i32 %1, metadata !2129, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %2, metadata !2130, metadata !DIExpression()), !dbg !2134
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2135
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2135
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2131, metadata !DIExpression()), !dbg !2136
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2137
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2137
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2138), !dbg !2137
  call void @llvm.dbg.value(metadata i32 %1, metadata !1938, metadata !DIExpression()) #24, !dbg !2141
  call void @llvm.dbg.value(metadata i32 0, metadata !1943, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2141
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2132, !alias.scope !2138
  %8 = icmp eq i32 %1, 10, !dbg !2142
  br i1 %8, label %9, label %10, !dbg !2143

9:                                                ; preds = %3
  tail call void @abort() #25, !dbg !2144, !noalias !2138
  unreachable, !dbg !2144

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !1943, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2141
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2137
  store i32 %1, i32* %11, align 8, !dbg !2137, !tbaa.struct !2048
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2137
  %13 = bitcast i32* %12 to i8*, !dbg !2137
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2137, !tbaa.struct !2145
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2137
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !875, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 58, metadata !876, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i32 1, metadata !877, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 58, metadata !878, metadata !DIExpression()), !dbg !2146
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2148
  call void @llvm.dbg.value(metadata i32* %14, metadata !880, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i32 26, metadata !882, metadata !DIExpression()), !dbg !2146
  %15 = load i32, i32* %14, align 4, !dbg !2149, !tbaa !770
  call void @llvm.dbg.value(metadata i32 %15, metadata !883, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2146
  %16 = or i32 %15, 67108864, !dbg !2150
  store i32 %16, i32* %14, align 4, !dbg !2150, !tbaa !770
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2151
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2152
  ret i8* %17, !dbg !2153
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #9 !dbg !2154 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2158, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i8* %1, metadata !2159, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i8* %2, metadata !2160, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i8* %3, metadata !2161, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i32 %0, metadata !2163, metadata !DIExpression()) #24, !dbg !2173
  call void @llvm.dbg.value(metadata i8* %1, metadata !2168, metadata !DIExpression()) #24, !dbg !2173
  call void @llvm.dbg.value(metadata i8* %2, metadata !2169, metadata !DIExpression()) #24, !dbg !2173
  call void @llvm.dbg.value(metadata i8* %3, metadata !2170, metadata !DIExpression()) #24, !dbg !2173
  call void @llvm.dbg.value(metadata i64 -1, metadata !2171, metadata !DIExpression()) #24, !dbg !2173
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2175
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2175
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2172, metadata !DIExpression()) #24, !dbg !2176
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #24, !dbg !2177, !tbaa.struct !2048
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !916, metadata !DIExpression()) #24, !dbg !2178
  call void @llvm.dbg.value(metadata i8* %1, metadata !917, metadata !DIExpression()) #24, !dbg !2178
  call void @llvm.dbg.value(metadata i8* %2, metadata !918, metadata !DIExpression()) #24, !dbg !2178
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !916, metadata !DIExpression()) #24, !dbg !2178
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2180
  store i32 10, i32* %7, align 8, !dbg !2181, !tbaa !857
  %8 = icmp ne i8* %1, null, !dbg !2182
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2183
  br i1 %10, label %12, label %11, !dbg !2183

11:                                               ; preds = %4
  tail call void @abort() #25, !dbg !2184
  unreachable, !dbg !2184

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2185
  store i8* %1, i8** %13, align 8, !dbg !2186, !tbaa !931
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2187
  store i8* %2, i8** %14, align 8, !dbg !2188, !tbaa !934
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #24, !dbg !2189
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2190
  ret i8* %15, !dbg !2191
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #9 !dbg !2164 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2163, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8* %1, metadata !2168, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8* %2, metadata !2169, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8* %3, metadata !2170, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %4, metadata !2171, metadata !DIExpression()), !dbg !2192
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2193
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #24, !dbg !2193
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2172, metadata !DIExpression()), !dbg !2194
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2195, !tbaa.struct !2048
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !916, metadata !DIExpression()) #24, !dbg !2196
  call void @llvm.dbg.value(metadata i8* %1, metadata !917, metadata !DIExpression()) #24, !dbg !2196
  call void @llvm.dbg.value(metadata i8* %2, metadata !918, metadata !DIExpression()) #24, !dbg !2196
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !916, metadata !DIExpression()) #24, !dbg !2196
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2198
  store i32 10, i32* %8, align 8, !dbg !2199, !tbaa !857
  %9 = icmp ne i8* %1, null, !dbg !2200
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2201
  br i1 %11, label %13, label %12, !dbg !2201

12:                                               ; preds = %5
  tail call void @abort() #25, !dbg !2202
  unreachable, !dbg !2202

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2203
  store i8* %1, i8** %14, align 8, !dbg !2204, !tbaa !931
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2205
  store i8* %2, i8** %15, align 8, !dbg !2206, !tbaa !934
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2207
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #24, !dbg !2208
  ret i8* %16, !dbg !2209
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #9 !dbg !2210 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2214, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8* %1, metadata !2215, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8* %2, metadata !2216, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i32 0, metadata !2158, metadata !DIExpression()) #24, !dbg !2218
  call void @llvm.dbg.value(metadata i8* %0, metadata !2159, metadata !DIExpression()) #24, !dbg !2218
  call void @llvm.dbg.value(metadata i8* %1, metadata !2160, metadata !DIExpression()) #24, !dbg !2218
  call void @llvm.dbg.value(metadata i8* %2, metadata !2161, metadata !DIExpression()) #24, !dbg !2218
  call void @llvm.dbg.value(metadata i32 0, metadata !2163, metadata !DIExpression()) #24, !dbg !2220
  call void @llvm.dbg.value(metadata i8* %0, metadata !2168, metadata !DIExpression()) #24, !dbg !2220
  call void @llvm.dbg.value(metadata i8* %1, metadata !2169, metadata !DIExpression()) #24, !dbg !2220
  call void @llvm.dbg.value(metadata i8* %2, metadata !2170, metadata !DIExpression()) #24, !dbg !2220
  call void @llvm.dbg.value(metadata i64 -1, metadata !2171, metadata !DIExpression()) #24, !dbg !2220
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2222
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2222
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2172, metadata !DIExpression()) #24, !dbg !2223
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #24, !dbg !2224, !tbaa.struct !2048
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !916, metadata !DIExpression()) #24, !dbg !2225
  call void @llvm.dbg.value(metadata i8* %0, metadata !917, metadata !DIExpression()) #24, !dbg !2225
  call void @llvm.dbg.value(metadata i8* %1, metadata !918, metadata !DIExpression()) #24, !dbg !2225
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !916, metadata !DIExpression()) #24, !dbg !2225
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2227
  store i32 10, i32* %6, align 8, !dbg !2228, !tbaa !857
  %7 = icmp ne i8* %0, null, !dbg !2229
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2230
  br i1 %9, label %11, label %10, !dbg !2230

10:                                               ; preds = %3
  tail call void @abort() #25, !dbg !2231
  unreachable, !dbg !2231

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2232
  store i8* %0, i8** %12, align 8, !dbg !2233, !tbaa !931
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2234
  store i8* %1, i8** %13, align 8, !dbg !2235, !tbaa !934
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #24, !dbg !2236
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2237
  ret i8* %14, !dbg !2238
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #9 !dbg !2239 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2243, metadata !DIExpression()), !dbg !2247
  call void @llvm.dbg.value(metadata i8* %1, metadata !2244, metadata !DIExpression()), !dbg !2247
  call void @llvm.dbg.value(metadata i8* %2, metadata !2245, metadata !DIExpression()), !dbg !2247
  call void @llvm.dbg.value(metadata i64 %3, metadata !2246, metadata !DIExpression()), !dbg !2247
  call void @llvm.dbg.value(metadata i32 0, metadata !2163, metadata !DIExpression()) #24, !dbg !2248
  call void @llvm.dbg.value(metadata i8* %0, metadata !2168, metadata !DIExpression()) #24, !dbg !2248
  call void @llvm.dbg.value(metadata i8* %1, metadata !2169, metadata !DIExpression()) #24, !dbg !2248
  call void @llvm.dbg.value(metadata i8* %2, metadata !2170, metadata !DIExpression()) #24, !dbg !2248
  call void @llvm.dbg.value(metadata i64 %3, metadata !2171, metadata !DIExpression()) #24, !dbg !2248
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2250
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2250
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2172, metadata !DIExpression()) #24, !dbg !2251
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #24, !dbg !2252, !tbaa.struct !2048
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !916, metadata !DIExpression()) #24, !dbg !2253
  call void @llvm.dbg.value(metadata i8* %0, metadata !917, metadata !DIExpression()) #24, !dbg !2253
  call void @llvm.dbg.value(metadata i8* %1, metadata !918, metadata !DIExpression()) #24, !dbg !2253
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !916, metadata !DIExpression()) #24, !dbg !2253
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2255
  store i32 10, i32* %7, align 8, !dbg !2256, !tbaa !857
  %8 = icmp ne i8* %0, null, !dbg !2257
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2258
  br i1 %10, label %12, label %11, !dbg !2258

11:                                               ; preds = %4
  tail call void @abort() #25, !dbg !2259
  unreachable, !dbg !2259

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2260
  store i8* %0, i8** %13, align 8, !dbg !2261, !tbaa !931
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2262
  store i8* %1, i8** %14, align 8, !dbg !2263, !tbaa !934
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #24, !dbg !2264
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2265
  ret i8* %15, !dbg !2266
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #9 !dbg !2267 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2271, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i8* %1, metadata !2272, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i64 %2, metadata !2273, metadata !DIExpression()), !dbg !2274
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2275
  ret i8* %4, !dbg !2276
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #9 !dbg !2277 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2281, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %1, metadata !2282, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i32 0, metadata !2271, metadata !DIExpression()) #24, !dbg !2284
  call void @llvm.dbg.value(metadata i8* %0, metadata !2272, metadata !DIExpression()) #24, !dbg !2284
  call void @llvm.dbg.value(metadata i64 %1, metadata !2273, metadata !DIExpression()) #24, !dbg !2284
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #24, !dbg !2286
  ret i8* %3, !dbg !2287
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #9 !dbg !2288 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2292, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i8* %1, metadata !2293, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i32 %0, metadata !2271, metadata !DIExpression()) #24, !dbg !2295
  call void @llvm.dbg.value(metadata i8* %1, metadata !2272, metadata !DIExpression()) #24, !dbg !2295
  call void @llvm.dbg.value(metadata i64 -1, metadata !2273, metadata !DIExpression()) #24, !dbg !2295
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #24, !dbg !2297
  ret i8* %3, !dbg !2298
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #9 !dbg !2299 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2303, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i32 0, metadata !2292, metadata !DIExpression()) #24, !dbg !2305
  call void @llvm.dbg.value(metadata i8* %0, metadata !2293, metadata !DIExpression()) #24, !dbg !2305
  call void @llvm.dbg.value(metadata i32 0, metadata !2271, metadata !DIExpression()) #24, !dbg !2307
  call void @llvm.dbg.value(metadata i8* %0, metadata !2272, metadata !DIExpression()) #24, !dbg !2307
  call void @llvm.dbg.value(metadata i64 -1, metadata !2273, metadata !DIExpression()) #24, !dbg !2307
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #24, !dbg !2309
  ret i8* %2, !dbg !2310
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #9 !dbg !2311 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2351, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i8* %1, metadata !2352, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i8* %2, metadata !2353, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i8* %3, metadata !2354, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i8** %4, metadata !2355, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i64 %5, metadata !2356, metadata !DIExpression()), !dbg !2357
  %7 = icmp eq i8* %1, null, !dbg !2358
  br i1 %7, label %10, label %8, !dbg !2360

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #24, !dbg !2361
  br label %12, !dbg !2361

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.64, i64 0, i64 0), i8* %2, i8* %3) #24, !dbg !2362
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.65, i64 0, i64 0), i32 5) #24, !dbg !2363
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #24, !dbg !2363
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.66, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2364
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.67, i64 0, i64 0), i32 5) #24, !dbg !2365
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.68, i64 0, i64 0)) #24, !dbg !2365
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.66, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2366
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
  ], !dbg !2367

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.69, i64 0, i64 0), i32 5) #24, !dbg !2368
  %21 = load i8*, i8** %4, align 8, !dbg !2368, !tbaa !574
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #24, !dbg !2368
  br label %147, !dbg !2370

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.70, i64 0, i64 0), i32 5) #24, !dbg !2371
  %25 = load i8*, i8** %4, align 8, !dbg !2371, !tbaa !574
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2371
  %27 = load i8*, i8** %26, align 8, !dbg !2371, !tbaa !574
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #24, !dbg !2371
  br label %147, !dbg !2372

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.71, i64 0, i64 0), i32 5) #24, !dbg !2373
  %31 = load i8*, i8** %4, align 8, !dbg !2373, !tbaa !574
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2373
  %33 = load i8*, i8** %32, align 8, !dbg !2373, !tbaa !574
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2373
  %35 = load i8*, i8** %34, align 8, !dbg !2373, !tbaa !574
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #24, !dbg !2373
  br label %147, !dbg !2374

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.72, i64 0, i64 0), i32 5) #24, !dbg !2375
  %39 = load i8*, i8** %4, align 8, !dbg !2375, !tbaa !574
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2375
  %41 = load i8*, i8** %40, align 8, !dbg !2375, !tbaa !574
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2375
  %43 = load i8*, i8** %42, align 8, !dbg !2375, !tbaa !574
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2375
  %45 = load i8*, i8** %44, align 8, !dbg !2375, !tbaa !574
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #24, !dbg !2375
  br label %147, !dbg !2376

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.73, i64 0, i64 0), i32 5) #24, !dbg !2377
  %49 = load i8*, i8** %4, align 8, !dbg !2377, !tbaa !574
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2377
  %51 = load i8*, i8** %50, align 8, !dbg !2377, !tbaa !574
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2377
  %53 = load i8*, i8** %52, align 8, !dbg !2377, !tbaa !574
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2377
  %55 = load i8*, i8** %54, align 8, !dbg !2377, !tbaa !574
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2377
  %57 = load i8*, i8** %56, align 8, !dbg !2377, !tbaa !574
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #24, !dbg !2377
  br label %147, !dbg !2378

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.74, i64 0, i64 0), i32 5) #24, !dbg !2379
  %61 = load i8*, i8** %4, align 8, !dbg !2379, !tbaa !574
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2379
  %63 = load i8*, i8** %62, align 8, !dbg !2379, !tbaa !574
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2379
  %65 = load i8*, i8** %64, align 8, !dbg !2379, !tbaa !574
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2379
  %67 = load i8*, i8** %66, align 8, !dbg !2379, !tbaa !574
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2379
  %69 = load i8*, i8** %68, align 8, !dbg !2379, !tbaa !574
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2379
  %71 = load i8*, i8** %70, align 8, !dbg !2379, !tbaa !574
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #24, !dbg !2379
  br label %147, !dbg !2380

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.75, i64 0, i64 0), i32 5) #24, !dbg !2381
  %75 = load i8*, i8** %4, align 8, !dbg !2381, !tbaa !574
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2381
  %77 = load i8*, i8** %76, align 8, !dbg !2381, !tbaa !574
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2381
  %79 = load i8*, i8** %78, align 8, !dbg !2381, !tbaa !574
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2381
  %81 = load i8*, i8** %80, align 8, !dbg !2381, !tbaa !574
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2381
  %83 = load i8*, i8** %82, align 8, !dbg !2381, !tbaa !574
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2381
  %85 = load i8*, i8** %84, align 8, !dbg !2381, !tbaa !574
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2381
  %87 = load i8*, i8** %86, align 8, !dbg !2381, !tbaa !574
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #24, !dbg !2381
  br label %147, !dbg !2382

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.76, i64 0, i64 0), i32 5) #24, !dbg !2383
  %91 = load i8*, i8** %4, align 8, !dbg !2383, !tbaa !574
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2383
  %93 = load i8*, i8** %92, align 8, !dbg !2383, !tbaa !574
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2383
  %95 = load i8*, i8** %94, align 8, !dbg !2383, !tbaa !574
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2383
  %97 = load i8*, i8** %96, align 8, !dbg !2383, !tbaa !574
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2383
  %99 = load i8*, i8** %98, align 8, !dbg !2383, !tbaa !574
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2383
  %101 = load i8*, i8** %100, align 8, !dbg !2383, !tbaa !574
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2383
  %103 = load i8*, i8** %102, align 8, !dbg !2383, !tbaa !574
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2383
  %105 = load i8*, i8** %104, align 8, !dbg !2383, !tbaa !574
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #24, !dbg !2383
  br label %147, !dbg !2384

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.77, i64 0, i64 0), i32 5) #24, !dbg !2385
  %109 = load i8*, i8** %4, align 8, !dbg !2385, !tbaa !574
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2385
  %111 = load i8*, i8** %110, align 8, !dbg !2385, !tbaa !574
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2385
  %113 = load i8*, i8** %112, align 8, !dbg !2385, !tbaa !574
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2385
  %115 = load i8*, i8** %114, align 8, !dbg !2385, !tbaa !574
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2385
  %117 = load i8*, i8** %116, align 8, !dbg !2385, !tbaa !574
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2385
  %119 = load i8*, i8** %118, align 8, !dbg !2385, !tbaa !574
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2385
  %121 = load i8*, i8** %120, align 8, !dbg !2385, !tbaa !574
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2385
  %123 = load i8*, i8** %122, align 8, !dbg !2385, !tbaa !574
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2385
  %125 = load i8*, i8** %124, align 8, !dbg !2385, !tbaa !574
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #24, !dbg !2385
  br label %147, !dbg !2386

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.78, i64 0, i64 0), i32 5) #24, !dbg !2387
  %129 = load i8*, i8** %4, align 8, !dbg !2387, !tbaa !574
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2387
  %131 = load i8*, i8** %130, align 8, !dbg !2387, !tbaa !574
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2387
  %133 = load i8*, i8** %132, align 8, !dbg !2387, !tbaa !574
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2387
  %135 = load i8*, i8** %134, align 8, !dbg !2387, !tbaa !574
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2387
  %137 = load i8*, i8** %136, align 8, !dbg !2387, !tbaa !574
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2387
  %139 = load i8*, i8** %138, align 8, !dbg !2387, !tbaa !574
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2387
  %141 = load i8*, i8** %140, align 8, !dbg !2387, !tbaa !574
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2387
  %143 = load i8*, i8** %142, align 8, !dbg !2387, !tbaa !574
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2387
  %145 = load i8*, i8** %144, align 8, !dbg !2387, !tbaa !574
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #24, !dbg !2387
  br label %147, !dbg !2388

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2389
}

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #9 !dbg !2390 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2394, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8* %1, metadata !2395, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8* %2, metadata !2396, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8* %3, metadata !2397, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8** %4, metadata !2398, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i64 0, metadata !2399, metadata !DIExpression()), !dbg !2400
  br label %6, !dbg !2401

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2403
  call void @llvm.dbg.value(metadata i64 %7, metadata !2399, metadata !DIExpression()), !dbg !2400
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2404
  %9 = load i8*, i8** %8, align 8, !dbg !2404, !tbaa !574
  %10 = icmp eq i8* %9, null, !dbg !2406
  %11 = add i64 %7, 1, !dbg !2407
  call void @llvm.dbg.value(metadata i64 %11, metadata !2399, metadata !DIExpression()), !dbg !2400
  br i1 %10, label %12, label %6, !dbg !2406, !llvm.loop !2408

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2410
  ret void, !dbg !2411
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #9 !dbg !2412 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2423, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i8* %1, metadata !2424, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i8* %2, metadata !2425, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i8* %3, metadata !2426, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2427, metadata !DIExpression()), !dbg !2431
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2432
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #24, !dbg !2432
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2429, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i64 0, metadata !2428, metadata !DIExpression()), !dbg !2431
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !2428, metadata !DIExpression()), !dbg !2431
  %11 = load i32, i32* %8, align 8, !dbg !2434
  %12 = icmp ult i32 %11, 41, !dbg !2434
  br i1 %12, label %13, label %18, !dbg !2434

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2434
  %15 = zext i32 %11 to i64, !dbg !2434
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2434
  %17 = add nuw nsw i32 %11, 8, !dbg !2434
  store i32 %17, i32* %8, align 8, !dbg !2434
  br label %21, !dbg !2434

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2434
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2434
  store i8* %20, i8** %9, align 8, !dbg !2434
  br label %21, !dbg !2434

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2434
  %25 = load i8*, i8** %24, align 8, !dbg !2434
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2437
  store i8* %25, i8** %26, align 16, !dbg !2438, !tbaa !574
  %27 = icmp eq i8* %25, null, !dbg !2439
  br i1 %27, label %30, label %28, !dbg !2440

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2428, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i64 1, metadata !2428, metadata !DIExpression()), !dbg !2431
  %29 = icmp ult i32 %22, 41, !dbg !2434
  br i1 %29, label %35, label %32, !dbg !2434

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2441
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2442
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #24, !dbg !2443
  ret void, !dbg !2443

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2434
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2434
  store i8* %34, i8** %9, align 8, !dbg !2434
  br label %40, !dbg !2434

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2434
  %37 = zext i32 %22 to i64, !dbg !2434
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2434
  %39 = add nuw nsw i32 %22, 8, !dbg !2434
  store i32 %39, i32* %8, align 8, !dbg !2434
  br label %40, !dbg !2434

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2434
  %44 = load i8*, i8** %43, align 8, !dbg !2434
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2437
  store i8* %44, i8** %45, align 8, !dbg !2438, !tbaa !574
  %46 = icmp eq i8* %44, null, !dbg !2439
  br i1 %46, label %30, label %47, !dbg !2440

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2428, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i64 2, metadata !2428, metadata !DIExpression()), !dbg !2431
  %48 = icmp ult i32 %41, 41, !dbg !2434
  br i1 %48, label %52, label %49, !dbg !2434

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2434
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2434
  store i8* %51, i8** %9, align 8, !dbg !2434
  br label %57, !dbg !2434

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2434
  %54 = zext i32 %41 to i64, !dbg !2434
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2434
  %56 = add nuw nsw i32 %41, 8, !dbg !2434
  store i32 %56, i32* %8, align 8, !dbg !2434
  br label %57, !dbg !2434

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2434
  %61 = load i8*, i8** %60, align 8, !dbg !2434
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2437
  store i8* %61, i8** %62, align 16, !dbg !2438, !tbaa !574
  %63 = icmp eq i8* %61, null, !dbg !2439
  br i1 %63, label %30, label %64, !dbg !2440

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2428, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i64 3, metadata !2428, metadata !DIExpression()), !dbg !2431
  %65 = icmp ult i32 %58, 41, !dbg !2434
  br i1 %65, label %69, label %66, !dbg !2434

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2434
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2434
  store i8* %68, i8** %9, align 8, !dbg !2434
  br label %74, !dbg !2434

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2434
  %71 = zext i32 %58 to i64, !dbg !2434
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2434
  %73 = add nuw nsw i32 %58, 8, !dbg !2434
  store i32 %73, i32* %8, align 8, !dbg !2434
  br label %74, !dbg !2434

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2434
  %78 = load i8*, i8** %77, align 8, !dbg !2434
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2437
  store i8* %78, i8** %79, align 8, !dbg !2438, !tbaa !574
  %80 = icmp eq i8* %78, null, !dbg !2439
  br i1 %80, label %30, label %81, !dbg !2440

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2428, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i64 4, metadata !2428, metadata !DIExpression()), !dbg !2431
  %82 = icmp ult i32 %75, 41, !dbg !2434
  br i1 %82, label %86, label %83, !dbg !2434

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2434
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2434
  store i8* %85, i8** %9, align 8, !dbg !2434
  br label %91, !dbg !2434

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2434
  %88 = zext i32 %75 to i64, !dbg !2434
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2434
  %90 = add nuw nsw i32 %75, 8, !dbg !2434
  store i32 %90, i32* %8, align 8, !dbg !2434
  br label %91, !dbg !2434

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2434
  %95 = load i8*, i8** %94, align 8, !dbg !2434
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2437
  store i8* %95, i8** %96, align 16, !dbg !2438, !tbaa !574
  %97 = icmp eq i8* %95, null, !dbg !2439
  br i1 %97, label %30, label %98, !dbg !2440

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2428, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i64 5, metadata !2428, metadata !DIExpression()), !dbg !2431
  %99 = icmp ult i32 %92, 41, !dbg !2434
  br i1 %99, label %103, label %100, !dbg !2434

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2434
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2434
  store i8* %102, i8** %9, align 8, !dbg !2434
  br label %108, !dbg !2434

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2434
  %105 = zext i32 %92 to i64, !dbg !2434
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2434
  %107 = add nuw nsw i32 %92, 8, !dbg !2434
  store i32 %107, i32* %8, align 8, !dbg !2434
  br label %108, !dbg !2434

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2434
  %111 = load i8*, i8** %110, align 8, !dbg !2434
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2437
  store i8* %111, i8** %112, align 8, !dbg !2438, !tbaa !574
  %113 = icmp eq i8* %111, null, !dbg !2439
  br i1 %113, label %30, label %114, !dbg !2440

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2428, metadata !DIExpression()), !dbg !2431
  %115 = load i8*, i8** %9, align 8, !dbg !2434
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2434
  store i8* %116, i8** %9, align 8, !dbg !2434
  %117 = bitcast i8* %115 to i8**, !dbg !2434
  %118 = load i8*, i8** %117, align 8, !dbg !2434
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2437
  store i8* %118, i8** %119, align 16, !dbg !2438, !tbaa !574
  %120 = icmp eq i8* %118, null, !dbg !2439
  br i1 %120, label %30, label %121, !dbg !2440

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2428, metadata !DIExpression()), !dbg !2431
  %122 = load i8*, i8** %9, align 8, !dbg !2434
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2434
  store i8* %123, i8** %9, align 8, !dbg !2434
  %124 = bitcast i8* %122 to i8**, !dbg !2434
  %125 = load i8*, i8** %124, align 8, !dbg !2434
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2437
  store i8* %125, i8** %126, align 8, !dbg !2438, !tbaa !574
  %127 = icmp eq i8* %125, null, !dbg !2439
  br i1 %127, label %30, label %128, !dbg !2440

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2428, metadata !DIExpression()), !dbg !2431
  %129 = load i8*, i8** %9, align 8, !dbg !2434
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2434
  store i8* %130, i8** %9, align 8, !dbg !2434
  %131 = bitcast i8* %129 to i8**, !dbg !2434
  %132 = load i8*, i8** %131, align 8, !dbg !2434
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2437
  store i8* %132, i8** %133, align 16, !dbg !2438, !tbaa !574
  %134 = icmp eq i8* %132, null, !dbg !2439
  br i1 %134, label %30, label %135, !dbg !2440

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2428, metadata !DIExpression()), !dbg !2431
  %136 = load i8*, i8** %9, align 8, !dbg !2434
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2434
  store i8* %137, i8** %9, align 8, !dbg !2434
  %138 = bitcast i8* %136 to i8**, !dbg !2434
  %139 = load i8*, i8** %138, align 8, !dbg !2434
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2437
  store i8* %139, i8** %140, align 8, !dbg !2438, !tbaa !574
  %141 = icmp eq i8* %139, null, !dbg !2439
  %142 = select i1 %141, i64 9, i64 10, !dbg !2440
  br label %30, !dbg !2440
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #9 !dbg !2444 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2448, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8* %1, metadata !2449, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8* %2, metadata !2450, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8* %3, metadata !2451, metadata !DIExpression()), !dbg !2458
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2459
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #24, !dbg !2459
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2452, metadata !DIExpression()), !dbg !2460
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2461
  call void @llvm.va_start(i8* nonnull %6), !dbg !2461
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2462
  call void @llvm.va_end(i8* nonnull %6), !dbg !2463
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #24, !dbg !2464
  ret void, !dbg !2464
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #21

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #9 !dbg !2465 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2466, !tbaa !574
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.66, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2466
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.81, i64 0, i64 0), i32 5) #24, !dbg !2467
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.82, i64 0, i64 0)) #24, !dbg !2467
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.83, i64 0, i64 0), i32 5) #24, !dbg !2468
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.84, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.85, i64 0, i64 0)) #24, !dbg !2468
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.86, i64 0, i64 0), i32 5) #24, !dbg !2469
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.87, i64 0, i64 0)) #24, !dbg !2469
  ret void, !dbg !2470
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #5 !dbg !2471 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2475, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i64 %1, metadata !2476, metadata !DIExpression()), !dbg !2477
  %3 = udiv i64 9223372036854775807, %1, !dbg !2478
  %4 = icmp ult i64 %3, %0, !dbg !2478
  br i1 %4, label %5, label %6, !dbg !2480

5:                                                ; preds = %2
  tail call void @xalloc_die() #25, !dbg !2481
  unreachable, !dbg !2481

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2482
  call void @llvm.dbg.value(metadata i64 %7, metadata !2483, metadata !DIExpression()) #24, !dbg !2489
  %8 = tail call noalias i8* @malloc(i64 %7) #24, !dbg !2491
  call void @llvm.dbg.value(metadata i8* %8, metadata !2488, metadata !DIExpression()) #24, !dbg !2489
  %9 = icmp eq i8* %8, null, !dbg !2492
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !2494
  br i1 %11, label %12, label %13, !dbg !2494

12:                                               ; preds = %6
  tail call void @xalloc_die() #25, !dbg !2495
  unreachable, !dbg !2495

13:                                               ; preds = %6
  ret i8* %8, !dbg !2496
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #9 !dbg !2484 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2483, metadata !DIExpression()), !dbg !2497
  %2 = tail call noalias i8* @malloc(i64 %0) #24, !dbg !2498
  call void @llvm.dbg.value(metadata i8* %2, metadata !2488, metadata !DIExpression()), !dbg !2497
  %3 = icmp eq i8* %2, null, !dbg !2499
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2500
  br i1 %5, label %6, label %7, !dbg !2500

6:                                                ; preds = %1
  tail call void @xalloc_die() #25, !dbg !2501
  unreachable, !dbg !2501

7:                                                ; preds = %1
  ret i8* %2, !dbg !2502
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #5 !dbg !2503 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2507, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i64 %1, metadata !2508, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i64 %2, metadata !2509, metadata !DIExpression()), !dbg !2510
  %4 = udiv i64 9223372036854775807, %2, !dbg !2511
  %5 = icmp ult i64 %4, %1, !dbg !2511
  br i1 %5, label %6, label %7, !dbg !2513

6:                                                ; preds = %3
  tail call void @xalloc_die() #25, !dbg !2514
  unreachable, !dbg !2514

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2515
  call void @llvm.dbg.value(metadata i8* %0, metadata !2516, metadata !DIExpression()) #24, !dbg !2522
  call void @llvm.dbg.value(metadata i64 %8, metadata !2521, metadata !DIExpression()) #24, !dbg !2522
  %9 = icmp eq i64 %8, 0, !dbg !2524
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !2526
  br i1 %11, label %12, label %13, !dbg !2526

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #24, !dbg !2527
  br label %19, !dbg !2529

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #24, !dbg !2530
  call void @llvm.dbg.value(metadata i8* %14, metadata !2516, metadata !DIExpression()) #24, !dbg !2522
  %15 = icmp eq i8* %14, null, !dbg !2531
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !2533
  br i1 %17, label %18, label %19, !dbg !2533

18:                                               ; preds = %13
  tail call void @xalloc_die() #25, !dbg !2534
  unreachable, !dbg !2534

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2522
  ret i8* %20, !dbg !2535
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #9 !dbg !2517 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2516, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i64 %1, metadata !2521, metadata !DIExpression()), !dbg !2536
  %3 = icmp eq i64 %1, 0, !dbg !2537
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !2538
  br i1 %5, label %6, label %7, !dbg !2538

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #24, !dbg !2539
  br label %13, !dbg !2540

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #24, !dbg !2541
  call void @llvm.dbg.value(metadata i8* %8, metadata !2516, metadata !DIExpression()), !dbg !2536
  %9 = icmp eq i8* %8, null, !dbg !2542
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !2543
  br i1 %11, label %12, label %13, !dbg !2543

12:                                               ; preds = %7
  tail call void @xalloc_die() #25, !dbg !2544
  unreachable, !dbg !2544

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2536
  ret i8* %14, !dbg !2545
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #5 !dbg !141 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !146, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i64* %1, metadata !147, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i64 %2, metadata !148, metadata !DIExpression()), !dbg !2546
  %4 = load i64, i64* %1, align 8, !dbg !2547, !tbaa !1757
  call void @llvm.dbg.value(metadata i64 %4, metadata !149, metadata !DIExpression()), !dbg !2546
  %5 = icmp eq i8* %0, null, !dbg !2548
  br i1 %5, label %6, label %20, !dbg !2550

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2551
  br i1 %7, label %8, label %13, !dbg !2554

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2555
  call void @llvm.dbg.value(metadata i64 %9, metadata !149, metadata !DIExpression()), !dbg !2546
  %10 = icmp ugt i64 %2, 128, !dbg !2557
  %11 = zext i1 %10 to i64, !dbg !2557
  %12 = add nuw nsw i64 %9, %11, !dbg !2558
  call void @llvm.dbg.value(metadata i64 %12, metadata !149, metadata !DIExpression()), !dbg !2546
  br label %13, !dbg !2559

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2546
  call void @llvm.dbg.value(metadata i64 %14, metadata !149, metadata !DIExpression()), !dbg !2546
  %15 = udiv i64 9223372036854775807, %2, !dbg !2560
  %16 = icmp ult i64 %15, %14, !dbg !2560
  br i1 %16, label %19, label %17, !dbg !2562

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !149, metadata !DIExpression()), !dbg !2546
  store i64 %14, i64* %1, align 8, !dbg !2563, !tbaa !1757
  %18 = mul i64 %14, %2, !dbg !2564
  call void @llvm.dbg.value(metadata i8* %0, metadata !2516, metadata !DIExpression()) #24, !dbg !2565
  call void @llvm.dbg.value(metadata i64 %28, metadata !2521, metadata !DIExpression()) #24, !dbg !2565
  br label %31, !dbg !2567

19:                                               ; preds = %13
  tail call void @xalloc_die() #25, !dbg !2568
  unreachable, !dbg !2568

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !2569
  %22 = icmp ugt i64 %21, %4, !dbg !2572
  br i1 %22, label %24, label %23, !dbg !2573

23:                                               ; preds = %20
  tail call void @xalloc_die() #25, !dbg !2574
  unreachable, !dbg !2574

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !2575
  %26 = add nuw i64 %4, 1, !dbg !2576
  %27 = add i64 %26, %25, !dbg !2577
  call void @llvm.dbg.value(metadata i64 %27, metadata !149, metadata !DIExpression()), !dbg !2546
  store i64 %27, i64* %1, align 8, !dbg !2563, !tbaa !1757
  %28 = mul i64 %27, %2, !dbg !2564
  call void @llvm.dbg.value(metadata i8* %0, metadata !2516, metadata !DIExpression()) #24, !dbg !2565
  call void @llvm.dbg.value(metadata i64 %28, metadata !2521, metadata !DIExpression()) #24, !dbg !2565
  %29 = icmp eq i64 %28, 0, !dbg !2578
  br i1 %29, label %30, label %31, !dbg !2567

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #24, !dbg !2579
  br label %38, !dbg !2580

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #24, !dbg !2581
  call void @llvm.dbg.value(metadata i8* %33, metadata !2516, metadata !DIExpression()) #24, !dbg !2565
  %34 = icmp eq i8* %33, null, !dbg !2582
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !2583
  br i1 %36, label %37, label %38, !dbg !2583

37:                                               ; preds = %31
  tail call void @xalloc_die() #25, !dbg !2584
  unreachable, !dbg !2584

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !2565
  ret i8* %39, !dbg !2585
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #5 !dbg !2586 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2588, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i64 %0, metadata !2483, metadata !DIExpression()) #24, !dbg !2590
  %2 = tail call noalias i8* @malloc(i64 %0) #24, !dbg !2592
  call void @llvm.dbg.value(metadata i8* %2, metadata !2488, metadata !DIExpression()) #24, !dbg !2590
  %3 = icmp eq i8* %2, null, !dbg !2593
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2594
  br i1 %5, label %6, label %7, !dbg !2594

6:                                                ; preds = %1
  tail call void @xalloc_die() #25, !dbg !2595
  unreachable, !dbg !2595

7:                                                ; preds = %1
  ret i8* %2, !dbg !2596
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #9 !dbg !2597 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2601, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64* %1, metadata !2602, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8* %0, metadata !146, metadata !DIExpression()) #24, !dbg !2604
  call void @llvm.dbg.value(metadata i64* %1, metadata !147, metadata !DIExpression()) #24, !dbg !2604
  call void @llvm.dbg.value(metadata i64 1, metadata !148, metadata !DIExpression()) #24, !dbg !2604
  %3 = load i64, i64* %1, align 8, !dbg !2606, !tbaa !1757
  call void @llvm.dbg.value(metadata i64 %3, metadata !149, metadata !DIExpression()) #24, !dbg !2604
  %4 = icmp eq i8* %0, null, !dbg !2607
  br i1 %4, label %5, label %10, !dbg !2608

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2609
  br i1 %6, label %17, label %7, !dbg !2610

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !149, metadata !DIExpression()) #24, !dbg !2604
  %8 = icmp slt i64 %3, 0, !dbg !2611
  br i1 %8, label %9, label %17, !dbg !2612

9:                                                ; preds = %7
  tail call void @xalloc_die() #25, !dbg !2613
  unreachable, !dbg !2613

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !2614
  br i1 %11, label %13, label %12, !dbg !2615

12:                                               ; preds = %10
  tail call void @xalloc_die() #25, !dbg !2616
  unreachable, !dbg !2616

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !2617
  %15 = add nuw nsw i64 %3, 1, !dbg !2618
  %16 = add nuw nsw i64 %15, %14, !dbg !2619
  call void @llvm.dbg.value(metadata i64 %16, metadata !149, metadata !DIExpression()) #24, !dbg !2604
  call void @llvm.dbg.value(metadata i8* %0, metadata !2516, metadata !DIExpression()) #24, !dbg !2620
  call void @llvm.dbg.value(metadata i64 %16, metadata !2521, metadata !DIExpression()) #24, !dbg !2620
  br label %17, !dbg !2622

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !2623
  store i64 %18, i64* %1, align 8, !dbg !2623, !tbaa !1757
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #24, !dbg !2624
  call void @llvm.dbg.value(metadata i8* %19, metadata !2516, metadata !DIExpression()) #24, !dbg !2620
  %20 = icmp eq i8* %19, null, !dbg !2625
  br i1 %20, label %21, label %22, !dbg !2626

21:                                               ; preds = %17
  tail call void @xalloc_die() #25, !dbg !2627
  unreachable, !dbg !2627

22:                                               ; preds = %17
  ret i8* %19, !dbg !2628
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #9 !dbg !2629 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2631, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i64 %0, metadata !2633, metadata !DIExpression()) #24, !dbg !2638
  call void @llvm.dbg.value(metadata i64 1, metadata !2636, metadata !DIExpression()) #24, !dbg !2638
  %2 = icmp slt i64 %0, 0, !dbg !2640
  br i1 %2, label %6, label %3, !dbg !2642

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #24, !dbg !2643
  call void @llvm.dbg.value(metadata i8* %4, metadata !2637, metadata !DIExpression()) #24, !dbg !2638
  %5 = icmp eq i8* %4, null, !dbg !2644
  br i1 %5, label %6, label %7, !dbg !2645

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #25, !dbg !2646
  unreachable, !dbg !2646

7:                                                ; preds = %3
  ret i8* %4, !dbg !2647
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #9 !dbg !2634 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2633, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i64 %1, metadata !2636, metadata !DIExpression()), !dbg !2648
  %3 = udiv i64 9223372036854775807, %1, !dbg !2649
  %4 = icmp ult i64 %3, %0, !dbg !2649
  br i1 %4, label %8, label %5, !dbg !2650

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #24, !dbg !2651
  call void @llvm.dbg.value(metadata i8* %6, metadata !2637, metadata !DIExpression()), !dbg !2648
  %7 = icmp eq i8* %6, null, !dbg !2652
  br i1 %7, label %8, label %9, !dbg !2653

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #25, !dbg !2654
  unreachable, !dbg !2654

9:                                                ; preds = %5
  ret i8* %6, !dbg !2655
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #9 !dbg !2656 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2662, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %1, metadata !2663, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %1, metadata !2483, metadata !DIExpression()) #24, !dbg !2665
  %3 = tail call noalias i8* @malloc(i64 %1) #24, !dbg !2667
  call void @llvm.dbg.value(metadata i8* %3, metadata !2488, metadata !DIExpression()) #24, !dbg !2665
  %4 = icmp eq i8* %3, null, !dbg !2668
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !2669
  br i1 %6, label %7, label %8, !dbg !2669

7:                                                ; preds = %2
  tail call void @xalloc_die() #25, !dbg !2670
  unreachable, !dbg !2670

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2671, metadata !DIExpression()) #24, !dbg !2680
  call void @llvm.dbg.value(metadata i8* %0, metadata !2678, metadata !DIExpression()) #24, !dbg !2680
  call void @llvm.dbg.value(metadata i64 %1, metadata !2679, metadata !DIExpression()) #24, !dbg !2680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #24, !dbg !2682
  ret i8* %3, !dbg !2683
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #9 !dbg !2684 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2686, metadata !DIExpression()), !dbg !2687
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #26, !dbg !2688
  %3 = add i64 %2, 1, !dbg !2689
  call void @llvm.dbg.value(metadata i8* %0, metadata !2662, metadata !DIExpression()) #24, !dbg !2690
  call void @llvm.dbg.value(metadata i64 %3, metadata !2663, metadata !DIExpression()) #24, !dbg !2690
  call void @llvm.dbg.value(metadata i64 %3, metadata !2483, metadata !DIExpression()) #24, !dbg !2692
  %4 = tail call noalias i8* @malloc(i64 %3) #24, !dbg !2694
  call void @llvm.dbg.value(metadata i8* %4, metadata !2488, metadata !DIExpression()) #24, !dbg !2692
  %5 = icmp eq i8* %4, null, !dbg !2695
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !2696
  br i1 %7, label %8, label %9, !dbg !2696

8:                                                ; preds = %1
  tail call void @xalloc_die() #25, !dbg !2697
  unreachable, !dbg !2697

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !2671, metadata !DIExpression()) #24, !dbg !2698
  call void @llvm.dbg.value(metadata i8* %0, metadata !2678, metadata !DIExpression()) #24, !dbg !2698
  call void @llvm.dbg.value(metadata i64 %3, metadata !2679, metadata !DIExpression()) #24, !dbg !2698
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #24, !dbg !2700
  ret i8* %4, !dbg !2701
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !2702 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !2703, !tbaa !770
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.98, i64 0, i64 0), i32 5) #24, !dbg !2704
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.99, i64 0, i64 0), i8* %2) #24, !dbg !2705
  tail call void @abort() #25, !dbg !2706
  unreachable, !dbg !2706
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #23 !dbg !2707 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2709, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i64 %1, metadata !2710, metadata !DIExpression()), !dbg !2715
  %3 = icmp eq i64 %0, 0, !dbg !2716
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !2717
  br i1 %5, label %11, label %6, !dbg !2717

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !2712, metadata !DIExpression()), !dbg !2718
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !2719
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !2719
  br i1 %8, label %9, label %11, !dbg !2721

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #28, !dbg !2722
  store i32 12, i32* %10, align 4, !dbg !2724, !tbaa !770
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !2709, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i64 %12, metadata !2710, metadata !DIExpression()), !dbg !2715
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #24, !dbg !2725
  call void @llvm.dbg.value(metadata i8* %14, metadata !2711, metadata !DIExpression()), !dbg !2715
  br label %15, !dbg !2726

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !2715
  ret i8* %16, !dbg !2727
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #9 !dbg !2728 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !2744, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i8* %1, metadata !2745, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i64 %2, metadata !2746, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !2747, metadata !DIExpression()), !dbg !2753
  %6 = bitcast i32* %5 to i8*, !dbg !2754
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #24, !dbg !2754
  %7 = icmp eq i32* %0, null, !dbg !2755
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !2757
  call void @llvm.dbg.value(metadata i32* %8, metadata !2744, metadata !DIExpression()), !dbg !2753
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #24, !dbg !2758
  call void @llvm.dbg.value(metadata i64 %9, metadata !2748, metadata !DIExpression()), !dbg !2753
  %10 = icmp ugt i64 %9, -3, !dbg !2759
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !2760
  br i1 %12, label %13, label %18, !dbg !2760

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #24, !dbg !2761
  br i1 %14, label %18, label %15, !dbg !2762

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !2763, !tbaa !1057
  call void @llvm.dbg.value(metadata i8 %16, metadata !2750, metadata !DIExpression()), !dbg !2764
  %17 = zext i8 %16 to i32, !dbg !2765
  store i32 %17, i32* %8, align 4, !dbg !2766, !tbaa !770
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !2753
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #24, !dbg !2767
  ret i64 %19, !dbg !2767
}

; Function Attrs: nounwind
declare !dbg !2768 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #9 !dbg !2773 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2811, metadata !DIExpression()), !dbg !2816
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #24, !dbg !2817
  call void @llvm.dbg.value(metadata i1 undef, metadata !2812, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2816
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2818, metadata !DIExpression()), !dbg !2822
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !2824
  %4 = load i32, i32* %3, align 8, !dbg !2824, !tbaa !2825
  %5 = and i32 %4, 32, !dbg !2827
  %6 = icmp eq i32 %5, 0, !dbg !2827
  call void @llvm.dbg.value(metadata i1 %6, metadata !2814, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2816
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #24, !dbg !2828
  %8 = icmp eq i32 %7, 0, !dbg !2829
  call void @llvm.dbg.value(metadata i1 %8, metadata !2815, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2816
  br i1 %6, label %9, label %19, !dbg !2830

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !2832
  call void @llvm.dbg.value(metadata i1 %10, metadata !2812, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2816
  %11 = or i1 %10, %8, !dbg !2833
  %12 = xor i1 %8, true, !dbg !2833
  %13 = sext i1 %12 to i32, !dbg !2833
  br i1 %11, label %22, label %14, !dbg !2833

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #28, !dbg !2834
  %16 = load i32, i32* %15, align 4, !dbg !2834, !tbaa !770
  %17 = icmp ne i32 %16, 9, !dbg !2835
  %18 = sext i1 %17 to i32, !dbg !2836
  br label %22, !dbg !2836

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !2837

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #28, !dbg !2839
  store i32 0, i32* %21, align 4, !dbg !2841, !tbaa !770
  br label %22, !dbg !2839

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !2816
  ret i32 %23, !dbg !2842
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #9 !dbg !2843 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2847, metadata !DIExpression()), !dbg !2852
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !2853
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #24, !dbg !2853
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !2848, metadata !DIExpression()), !dbg !2854
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #24, !dbg !2855
  %5 = icmp eq i32 %4, 0, !dbg !2855
  br i1 %5, label %6, label %13, !dbg !2857

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !2858
  %8 = load i16, i16* %7, align 16, !dbg !2858
  %9 = icmp eq i16 %8, 67, !dbg !2858
  br i1 %9, label %13, label %10, !dbg !2859

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.108, i64 0, i64 0), i64 6), !dbg !2860
  %12 = icmp ne i32 %11, 0, !dbg !2861
  br label %13, !dbg !2859

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !2852
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #24, !dbg !2862
  ret i1 %14, !dbg !2862
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #9 !dbg !2863 {
  %1 = tail call i8* @nl_langinfo(i32 14) #24, !dbg !2868
  call void @llvm.dbg.value(metadata i8* %1, metadata !2867, metadata !DIExpression()), !dbg !2869
  %2 = icmp eq i8* %1, null, !dbg !2870
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.111, i64 0, i64 0), i8* %1, !dbg !2872
  call void @llvm.dbg.value(metadata i8* %3, metadata !2867, metadata !DIExpression()), !dbg !2869
  %4 = load i8, i8* %3, align 1, !dbg !2873, !tbaa !1057
  %5 = icmp eq i8 %4, 0, !dbg !2877
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.112, i64 0, i64 0), i8* %3, !dbg !2878
  call void @llvm.dbg.value(metadata i8* %6, metadata !2867, metadata !DIExpression()), !dbg !2869
  ret i8* %6, !dbg !2879
}

; Function Attrs: nounwind
declare !dbg !2880 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #9 !dbg !2883 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2887, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i8* %1, metadata !2888, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i64 %2, metadata !2889, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i32 %0, metadata !2891, metadata !DIExpression()) #24, !dbg !2900
  call void @llvm.dbg.value(metadata i8* %1, metadata !2894, metadata !DIExpression()) #24, !dbg !2900
  call void @llvm.dbg.value(metadata i64 %2, metadata !2895, metadata !DIExpression()) #24, !dbg !2900
  call void @llvm.dbg.value(metadata i32 %0, metadata !2902, metadata !DIExpression()) #24, !dbg !2908
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #24, !dbg !2910
  call void @llvm.dbg.value(metadata i8* %4, metadata !2907, metadata !DIExpression()) #24, !dbg !2908
  call void @llvm.dbg.value(metadata i8* %4, metadata !2896, metadata !DIExpression()) #24, !dbg !2900
  %5 = icmp eq i8* %4, null, !dbg !2911
  br i1 %5, label %6, label %9, !dbg !2912

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !2913
  br i1 %7, label %19, label %8, !dbg !2916

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !2917, !tbaa !1057
  br label %19, !dbg !2918

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #26, !dbg !2919
  call void @llvm.dbg.value(metadata i64 %10, metadata !2897, metadata !DIExpression()) #24, !dbg !2920
  %11 = icmp ult i64 %10, %2, !dbg !2921
  br i1 %11, label %12, label %14, !dbg !2923

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !2924
  call void @llvm.dbg.value(metadata i8* %1, metadata !2926, metadata !DIExpression()) #24, !dbg !2931
  call void @llvm.dbg.value(metadata i8* %4, metadata !2929, metadata !DIExpression()) #24, !dbg !2931
  call void @llvm.dbg.value(metadata i64 %13, metadata !2930, metadata !DIExpression()) #24, !dbg !2931
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #24, !dbg !2933
  br label %19, !dbg !2934

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !2935
  br i1 %15, label %19, label %16, !dbg !2938

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !2939
  call void @llvm.dbg.value(metadata i8* %1, metadata !2926, metadata !DIExpression()) #24, !dbg !2941
  call void @llvm.dbg.value(metadata i8* %4, metadata !2929, metadata !DIExpression()) #24, !dbg !2941
  call void @llvm.dbg.value(metadata i64 %17, metadata !2930, metadata !DIExpression()) #24, !dbg !2941
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #24, !dbg !2943
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !2944
  store i8 0, i8* %18, align 1, !dbg !2945, !tbaa !1057
  br label %19, !dbg !2946

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !2947
  ret i32 %20, !dbg !2948
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #9 !dbg !2949 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2951, metadata !DIExpression()), !dbg !2952
  call void @llvm.dbg.value(metadata i32 %0, metadata !2902, metadata !DIExpression()) #24, !dbg !2953
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #24, !dbg !2955
  call void @llvm.dbg.value(metadata i8* %2, metadata !2907, metadata !DIExpression()) #24, !dbg !2953
  ret i8* %2, !dbg !2956
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #9 !dbg !2957 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2995, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata i32 0, metadata !2996, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata i32 0, metadata !2998, metadata !DIExpression()), !dbg !2999
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !3000
  call void @llvm.dbg.value(metadata i32 %2, metadata !2997, metadata !DIExpression()), !dbg !2999
  %3 = icmp slt i32 %2, 0, !dbg !3001
  br i1 %3, label %4, label %6, !dbg !3003

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3004
  br label %24, !dbg !3005

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #24, !dbg !3006
  %8 = icmp eq i32 %7, 0, !dbg !3006
  br i1 %8, label %13, label %9, !dbg !3008

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !3009
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #24, !dbg !3010
  %12 = icmp eq i64 %11, -1, !dbg !3011
  br i1 %12, label %16, label %13, !dbg !3012

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #24, !dbg !3013
  %15 = icmp eq i32 %14, 0, !dbg !3013
  br i1 %15, label %16, label %18, !dbg !3014

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !2996, metadata !DIExpression()), !dbg !2999
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3015
  call void @llvm.dbg.value(metadata i32 %21, metadata !2998, metadata !DIExpression()), !dbg !2999
  br label %24, !dbg !3016

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #28, !dbg !3017
  %20 = load i32, i32* %19, align 4, !dbg !3017, !tbaa !770
  call void @llvm.dbg.value(metadata i32 %20, metadata !2996, metadata !DIExpression()), !dbg !2999
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3015
  call void @llvm.dbg.value(metadata i32 %21, metadata !2998, metadata !DIExpression()), !dbg !2999
  %22 = icmp eq i32 %20, 0, !dbg !3018
  br i1 %22, label %24, label %23, !dbg !3016

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3020, !tbaa !770
  call void @llvm.dbg.value(metadata i32 -1, metadata !2998, metadata !DIExpression()), !dbg !2999
  br label %24, !dbg !3022

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2999
  ret i32 %25, !dbg !3023
}

; Function Attrs: nofree nounwind
declare !dbg !3024 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3027 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3028 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #9 !dbg !3032 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3070, metadata !DIExpression()), !dbg !3071
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3072
  br i1 %2, label %6, label %3, !dbg !3074

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #24, !dbg !3075
  %5 = icmp eq i32 %4, 0, !dbg !3075
  br i1 %5, label %6, label %8, !dbg !3076

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3077
  br label %17, !dbg !3078

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3079, metadata !DIExpression()) #24, !dbg !3084
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3086
  %10 = load i32, i32* %9, align 8, !dbg !3086, !tbaa !2825
  %11 = and i32 %10, 256, !dbg !3088
  %12 = icmp eq i32 %11, 0, !dbg !3088
  br i1 %12, label %15, label %13, !dbg !3089

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #24, !dbg !3090
  br label %15, !dbg !3090

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3091
  br label %17, !dbg !3092

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3071
  ret i32 %18, !dbg !3093
}

; Function Attrs: nofree nounwind
declare !dbg !3094 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #9 !dbg !3097 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3136, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i64 %1, metadata !3137, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i32 %2, metadata !3138, metadata !DIExpression()), !dbg !3142
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3143
  %5 = load i8*, i8** %4, align 8, !dbg !3143, !tbaa !3144
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3145
  %7 = load i8*, i8** %6, align 8, !dbg !3145, !tbaa !3146
  %8 = icmp eq i8* %5, %7, !dbg !3147
  br i1 %8, label %9, label %28, !dbg !3148

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3149
  %11 = load i8*, i8** %10, align 8, !dbg !3149, !tbaa !3150
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3151
  %13 = load i8*, i8** %12, align 8, !dbg !3151, !tbaa !3152
  %14 = icmp eq i8* %11, %13, !dbg !3153
  br i1 %14, label %15, label %28, !dbg !3154

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3155
  %17 = load i8*, i8** %16, align 8, !dbg !3155, !tbaa !3156
  %18 = icmp eq i8* %17, null, !dbg !3157
  br i1 %18, label %19, label %28, !dbg !3158

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !3159
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #24, !dbg !3160
  call void @llvm.dbg.value(metadata i64 %21, metadata !3139, metadata !DIExpression()), !dbg !3161
  %22 = icmp eq i64 %21, -1, !dbg !3162
  br i1 %22, label %30, label %23, !dbg !3164

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3165
  %25 = load i32, i32* %24, align 8, !dbg !3166, !tbaa !2825
  %26 = and i32 %25, -17, !dbg !3166
  store i32 %26, i32* %24, align 8, !dbg !3166, !tbaa !2825
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3167
  store i64 %21, i64* %27, align 8, !dbg !3168, !tbaa !3169
  br label %30, !dbg !3170

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3171
  br label %30, !dbg !3172

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3142
  ret i32 %31, !dbg !3173
}

; Function Attrs: nofree nounwind
declare !dbg !3174 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

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
!127 = !DIFile(filename: "src/true.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!567 = distinct !DISubprogram(name: "usage", scope: !127, file: !127, line: 36, type: !568, scopeLine: 37, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !570)
!568 = !DISubroutineType(types: !569)
!569 = !{null, !23}
!570 = !{!571}
!571 = !DILocalVariable(name: "status", arg: 1, scope: !567, file: !127, line: 36, type: !23)
!572 = !DILocation(line: 0, scope: !567)
!573 = !DILocation(line: 38, column: 3, scope: !567)
!574 = !{!575, !575, i64 0}
!575 = !{!"any pointer", !576, i64 0}
!576 = !{!"omnipotent char", !577, i64 0}
!577 = !{!"Simple C/C++ TBAA"}
!578 = !DILocation(line: 43, column: 3, scope: !567)
!579 = !DILocation(line: 47, column: 3, scope: !567)
!580 = !DILocation(line: 48, column: 3, scope: !567)
!581 = !DILocation(line: 49, column: 3, scope: !567)
!582 = !DILocation(line: 50, column: 3, scope: !567)
!583 = !DILocation(line: 51, column: 3, scope: !567)
!584 = !DISubprogram(name: "dcgettext", scope: !585, file: !585, line: 51, type: !586, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!585 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!586 = !DISubroutineType(types: !587)
!587 = !{!30, !6, !6, !23}
!588 = !DISubprogram(name: "fputs_unlocked", scope: !589, file: !589, line: 667, type: !590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!589 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!590 = !DISubroutineType(types: !591)
!591 = !{!23, !6, !592}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !594, line: 49, size: 1728, elements: !595)
!594 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!595 = !{!596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !611, !612, !613, !614, !618, !619, !621, !625, !628, !630, !633, !636, !637, !638, !639, !640}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !593, file: !594, line: 51, baseType: !23, size: 32)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !593, file: !594, line: 54, baseType: !30, size: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !593, file: !594, line: 55, baseType: !30, size: 64, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !593, file: !594, line: 56, baseType: !30, size: 64, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !593, file: !594, line: 57, baseType: !30, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !593, file: !594, line: 58, baseType: !30, size: 64, offset: 320)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !593, file: !594, line: 59, baseType: !30, size: 64, offset: 384)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !593, file: !594, line: 60, baseType: !30, size: 64, offset: 448)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !593, file: !594, line: 61, baseType: !30, size: 64, offset: 512)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !593, file: !594, line: 64, baseType: !30, size: 64, offset: 576)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !593, file: !594, line: 65, baseType: !30, size: 64, offset: 640)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !593, file: !594, line: 66, baseType: !30, size: 64, offset: 704)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !593, file: !594, line: 68, baseType: !609, size: 64, offset: 768)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !594, line: 36, flags: DIFlagFwdDecl)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !593, file: !594, line: 70, baseType: !592, size: 64, offset: 832)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !593, file: !594, line: 72, baseType: !23, size: 32, offset: 896)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !593, file: !594, line: 73, baseType: !23, size: 32, offset: 928)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !593, file: !594, line: 74, baseType: !615, size: 64, offset: 960)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !616, line: 152, baseType: !617)
!616 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!617 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !593, file: !594, line: 77, baseType: !73, size: 16, offset: 1024)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !593, file: !594, line: 78, baseType: !620, size: 8, offset: 1040)
!620 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !593, file: !594, line: 79, baseType: !622, size: 8, offset: 1048)
!622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !623)
!623 = !{!624}
!624 = !DISubrange(count: 1)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !593, file: !594, line: 81, baseType: !626, size: 64, offset: 1088)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !594, line: 43, baseType: null)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !593, file: !594, line: 89, baseType: !629, size: 64, offset: 1152)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !616, line: 153, baseType: !617)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !593, file: !594, line: 91, baseType: !631, size: 64, offset: 1216)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !594, line: 37, flags: DIFlagFwdDecl)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !593, file: !594, line: 92, baseType: !634, size: 64, offset: 1280)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !594, line: 38, flags: DIFlagFwdDecl)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !593, file: !594, line: 93, baseType: !592, size: 64, offset: 1344)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !593, file: !594, line: 94, baseType: !29, size: 64, offset: 1408)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !593, file: !594, line: 95, baseType: !74, size: 64, offset: 1472)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !593, file: !594, line: 96, baseType: !23, size: 32, offset: 1536)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !593, file: !594, line: 98, baseType: !641, size: 160, offset: 1568)
!641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !642)
!642 = !{!643}
!643 = !DISubrange(count: 20)
!644 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !645, file: !645, line: 634, type: !646, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !648)
!645 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!646 = !DISubroutineType(types: !647)
!647 = !{null, !6}
!648 = !{!649, !650, !659, !660, !662}
!649 = !DILocalVariable(name: "program", arg: 1, scope: !644, file: !645, line: 634, type: !6)
!650 = !DILocalVariable(name: "infomap", scope: !644, file: !645, line: 636, type: !651)
!651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !652, size: 896, elements: !657)
!652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !644, file: !645, line: 636, size: 128, elements: !654)
!654 = !{!655, !656}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !653, file: !645, line: 636, baseType: !6, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !653, file: !645, line: 636, baseType: !6, size: 64, offset: 64)
!657 = !{!658}
!658 = !DISubrange(count: 7)
!659 = !DILocalVariable(name: "node", scope: !644, file: !645, line: 646, type: !6)
!660 = !DILocalVariable(name: "map_prog", scope: !644, file: !645, line: 647, type: !661)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!662 = !DILocalVariable(name: "lc_messages", scope: !644, file: !645, line: 659, type: !6)
!663 = !DILocation(line: 0, scope: !644)
!664 = !DILocation(line: 636, column: 3, scope: !644)
!665 = !DILocation(line: 636, column: 67, scope: !644)
!666 = !DILocation(line: 647, column: 36, scope: !644)
!667 = !DILocation(line: 649, column: 3, scope: !644)
!668 = !DILocation(line: 649, column: 33, scope: !644)
!669 = !DILocation(line: 650, column: 13, scope: !644)
!670 = !DILocation(line: 649, column: 20, scope: !644)
!671 = !{!672, !575, i64 0}
!672 = !{!"infomap", !575, i64 0, !575, i64 8}
!673 = !DILocation(line: 649, column: 10, scope: !644)
!674 = !DILocation(line: 649, column: 28, scope: !644)
!675 = distinct !{!675, !667, !669, !676}
!676 = !{!"llvm.loop.mustprogress"}
!677 = !DILocation(line: 652, column: 17, scope: !678)
!678 = distinct !DILexicalBlock(scope: !644, file: !645, line: 652, column: 7)
!679 = !{!672, !575, i64 8}
!680 = !DILocation(line: 652, column: 7, scope: !678)
!681 = !DILocation(line: 652, column: 7, scope: !644)
!682 = !DILocation(line: 655, column: 3, scope: !644)
!683 = !DILocation(line: 659, column: 29, scope: !644)
!684 = !DILocation(line: 660, column: 7, scope: !685)
!685 = distinct !DILexicalBlock(scope: !644, file: !645, line: 660, column: 7)
!686 = !DILocation(line: 660, column: 19, scope: !685)
!687 = !DILocation(line: 660, column: 22, scope: !685)
!688 = !DILocation(line: 660, column: 7, scope: !644)
!689 = !DILocation(line: 666, column: 7, scope: !690)
!690 = distinct !DILexicalBlock(scope: !685, file: !645, line: 661, column: 5)
!691 = !DILocation(line: 668, column: 5, scope: !690)
!692 = !DILocation(line: 669, column: 3, scope: !644)
!693 = !DILocation(line: 671, column: 3, scope: !644)
!694 = !DILocation(line: 673, column: 1, scope: !644)
!695 = !DISubprogram(name: "setlocale", scope: !696, file: !696, line: 122, type: !697, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!696 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!697 = !DISubroutineType(types: !698)
!698 = !{!30, !23, !6}
!699 = distinct !DISubprogram(name: "main", scope: !127, file: !127, line: 55, type: !700, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !703)
!700 = !DISubroutineType(types: !701)
!701 = !{!23, !23, !702}
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!703 = !{!704, !705}
!704 = !DILocalVariable(name: "argc", arg: 1, scope: !699, file: !127, line: 55, type: !23)
!705 = !DILocalVariable(name: "argv", arg: 2, scope: !699, file: !127, line: 55, type: !702)
!706 = !DILocation(line: 0, scope: !699)
!707 = !DILocation(line: 59, column: 12, scope: !708)
!708 = distinct !DILexicalBlock(scope: !699, file: !127, line: 59, column: 7)
!709 = !DILocation(line: 59, column: 7, scope: !699)
!710 = !DILocation(line: 62, column: 25, scope: !711)
!711 = distinct !DILexicalBlock(scope: !708, file: !127, line: 60, column: 5)
!712 = !DILocation(line: 62, column: 7, scope: !711)
!713 = !DILocation(line: 63, column: 7, scope: !711)
!714 = !DILocation(line: 64, column: 7, scope: !711)
!715 = !DILocation(line: 65, column: 7, scope: !711)
!716 = !DILocation(line: 69, column: 7, scope: !711)
!717 = !DILocation(line: 71, column: 11, scope: !718)
!718 = distinct !DILexicalBlock(scope: !711, file: !127, line: 71, column: 11)
!719 = !DILocation(line: 71, column: 11, scope: !711)
!720 = !DILocation(line: 72, column: 9, scope: !718)
!721 = !DILocation(line: 74, column: 11, scope: !722)
!722 = distinct !DILexicalBlock(scope: !711, file: !127, line: 74, column: 11)
!723 = !DILocation(line: 74, column: 11, scope: !711)
!724 = !DILocation(line: 75, column: 22, scope: !722)
!725 = !DILocation(line: 75, column: 58, scope: !722)
!726 = !DILocation(line: 75, column: 9, scope: !722)
!727 = !DILocation(line: 79, column: 3, scope: !699)
!728 = !DISubprogram(name: "bindtextdomain", scope: !585, file: !585, line: 86, type: !729, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!729 = !DISubroutineType(types: !730)
!730 = !{!30, !6, !6}
!731 = !DISubprogram(name: "textdomain", scope: !585, file: !585, line: 82, type: !732, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!732 = !DISubroutineType(types: !733)
!733 = !{!30, !6}
!734 = !DISubprogram(name: "atexit", scope: !735, file: !735, line: 595, type: !736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!735 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!736 = !DISubroutineType(types: !737)
!737 = !{!23, !738}
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{null}
!741 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !12, file: !12, line: 51, type: !646, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !742)
!742 = !{!743}
!743 = !DILocalVariable(name: "file", arg: 1, scope: !741, file: !12, line: 51, type: !6)
!744 = !DILocation(line: 0, scope: !741)
!745 = !DILocation(line: 53, column: 13, scope: !741)
!746 = !DILocation(line: 54, column: 1, scope: !741)
!747 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !12, file: !12, line: 88, type: !748, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !750)
!748 = !DISubroutineType(types: !749)
!749 = !{null, !16}
!750 = !{!751}
!751 = !DILocalVariable(name: "ignore", arg: 1, scope: !747, file: !12, line: 88, type: !16)
!752 = !DILocation(line: 0, scope: !747)
!753 = !DILocation(line: 90, column: 16, scope: !747)
!754 = !{!755, !755, i64 0}
!755 = !{!"_Bool", !576, i64 0}
!756 = !DILocation(line: 91, column: 1, scope: !747)
!757 = distinct !DISubprogram(name: "close_stdout", scope: !12, file: !12, line: 117, type: !739, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !758)
!758 = !{!759}
!759 = !DILocalVariable(name: "write_error", scope: !760, file: !12, line: 122, type: !6)
!760 = distinct !DILexicalBlock(scope: !761, file: !12, line: 121, column: 5)
!761 = distinct !DILexicalBlock(scope: !757, file: !12, line: 119, column: 7)
!762 = !DILocation(line: 119, column: 21, scope: !761)
!763 = !DILocation(line: 119, column: 7, scope: !761)
!764 = !DILocation(line: 119, column: 29, scope: !761)
!765 = !DILocation(line: 120, column: 7, scope: !761)
!766 = !DILocation(line: 120, column: 12, scope: !761)
!767 = !{i8 0, i8 2}
!768 = !DILocation(line: 120, column: 25, scope: !761)
!769 = !DILocation(line: 120, column: 28, scope: !761)
!770 = !{!771, !771, i64 0}
!771 = !{!"int", !576, i64 0}
!772 = !DILocation(line: 120, column: 34, scope: !761)
!773 = !DILocation(line: 119, column: 7, scope: !757)
!774 = !DILocation(line: 122, column: 33, scope: !760)
!775 = !DILocation(line: 0, scope: !760)
!776 = !DILocation(line: 123, column: 11, scope: !777)
!777 = distinct !DILexicalBlock(scope: !760, file: !12, line: 123, column: 11)
!778 = !DILocation(line: 0, scope: !777)
!779 = !DILocation(line: 123, column: 11, scope: !760)
!780 = !DILocation(line: 124, column: 36, scope: !777)
!781 = !DILocation(line: 124, column: 9, scope: !777)
!782 = !DILocation(line: 127, column: 9, scope: !777)
!783 = !DILocation(line: 129, column: 14, scope: !760)
!784 = !DILocation(line: 129, column: 7, scope: !760)
!785 = !DILocation(line: 134, column: 42, scope: !786)
!786 = distinct !DILexicalBlock(scope: !757, file: !12, line: 134, column: 7)
!787 = !DILocation(line: 134, column: 28, scope: !786)
!788 = !DILocation(line: 134, column: 50, scope: !786)
!789 = !DILocation(line: 134, column: 7, scope: !757)
!790 = !DILocation(line: 135, column: 12, scope: !786)
!791 = !DILocation(line: 135, column: 5, scope: !786)
!792 = !DILocation(line: 136, column: 1, scope: !757)
!793 = !DISubprogram(name: "error", scope: !794, file: !794, line: 52, type: !795, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!794 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!795 = !DISubroutineType(types: !796)
!796 = !{null, !23, !23, !6, null}
!797 = distinct !DISubprogram(name: "set_program_name", scope: !27, file: !27, line: 39, type: !646, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !798)
!798 = !{!799, !800, !801}
!799 = !DILocalVariable(name: "argv0", arg: 1, scope: !797, file: !27, line: 39, type: !6)
!800 = !DILocalVariable(name: "slash", scope: !797, file: !27, line: 46, type: !6)
!801 = !DILocalVariable(name: "base", scope: !797, file: !27, line: 47, type: !6)
!802 = !DILocation(line: 0, scope: !797)
!803 = !DILocation(line: 51, column: 13, scope: !804)
!804 = distinct !DILexicalBlock(scope: !797, file: !27, line: 51, column: 7)
!805 = !DILocation(line: 51, column: 7, scope: !797)
!806 = !DILocation(line: 55, column: 14, scope: !807)
!807 = distinct !DILexicalBlock(scope: !804, file: !27, line: 52, column: 5)
!808 = !DILocation(line: 54, column: 7, scope: !807)
!809 = !DILocation(line: 56, column: 7, scope: !807)
!810 = !DILocation(line: 59, column: 11, scope: !797)
!811 = !DILocation(line: 60, column: 17, scope: !797)
!812 = !DILocation(line: 60, column: 11, scope: !797)
!813 = !DILocation(line: 61, column: 12, scope: !814)
!814 = distinct !DILexicalBlock(scope: !797, file: !27, line: 61, column: 7)
!815 = !DILocation(line: 61, column: 20, scope: !814)
!816 = !DILocation(line: 61, column: 25, scope: !814)
!817 = !DILocation(line: 61, column: 42, scope: !814)
!818 = !DILocation(line: 61, column: 28, scope: !814)
!819 = !DILocation(line: 61, column: 61, scope: !814)
!820 = !DILocation(line: 61, column: 7, scope: !797)
!821 = !DILocation(line: 64, column: 11, scope: !822)
!822 = distinct !DILexicalBlock(scope: !823, file: !27, line: 64, column: 11)
!823 = distinct !DILexicalBlock(scope: !814, file: !27, line: 62, column: 5)
!824 = !DILocation(line: 64, column: 36, scope: !822)
!825 = !DILocation(line: 64, column: 11, scope: !823)
!826 = !DILocation(line: 66, column: 24, scope: !827)
!827 = distinct !DILexicalBlock(scope: !822, file: !27, line: 65, column: 9)
!828 = !DILocation(line: 70, column: 41, scope: !827)
!829 = !DILocation(line: 72, column: 9, scope: !827)
!830 = !DILocation(line: 84, column: 16, scope: !797)
!831 = !DILocation(line: 90, column: 27, scope: !797)
!832 = !DILocation(line: 92, column: 1, scope: !797)
!833 = distinct !DISubprogram(name: "clone_quoting_options", scope: !35, file: !35, line: 122, type: !834, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !837)
!834 = !DISubroutineType(types: !835)
!835 = !{!836, !836}
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!837 = !{!838, !839, !840}
!838 = !DILocalVariable(name: "o", arg: 1, scope: !833, file: !35, line: 122, type: !836)
!839 = !DILocalVariable(name: "e", scope: !833, file: !35, line: 124, type: !23)
!840 = !DILocalVariable(name: "p", scope: !833, file: !35, line: 125, type: !836)
!841 = !DILocation(line: 0, scope: !833)
!842 = !DILocation(line: 124, column: 11, scope: !833)
!843 = !DILocation(line: 125, column: 40, scope: !833)
!844 = !DILocation(line: 125, column: 31, scope: !833)
!845 = !DILocation(line: 127, column: 9, scope: !833)
!846 = !DILocation(line: 128, column: 3, scope: !833)
!847 = distinct !DISubprogram(name: "get_quoting_style", scope: !35, file: !35, line: 133, type: !848, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !852)
!848 = !DISubroutineType(types: !849)
!849 = !{!37, !850}
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!852 = !{!853}
!853 = !DILocalVariable(name: "o", arg: 1, scope: !847, file: !35, line: 133, type: !850)
!854 = !DILocation(line: 0, scope: !847)
!855 = !DILocation(line: 135, column: 11, scope: !847)
!856 = !DILocation(line: 135, column: 46, scope: !847)
!857 = !{!858, !576, i64 0}
!858 = !{!"quoting_options", !576, i64 0, !771, i64 4, !576, i64 8, !575, i64 40, !575, i64 48}
!859 = !DILocation(line: 135, column: 3, scope: !847)
!860 = distinct !DISubprogram(name: "set_quoting_style", scope: !35, file: !35, line: 141, type: !861, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !863)
!861 = !DISubroutineType(types: !862)
!862 = !{null, !836, !37}
!863 = !{!864, !865}
!864 = !DILocalVariable(name: "o", arg: 1, scope: !860, file: !35, line: 141, type: !836)
!865 = !DILocalVariable(name: "s", arg: 2, scope: !860, file: !35, line: 141, type: !37)
!866 = !DILocation(line: 0, scope: !860)
!867 = !DILocation(line: 143, column: 4, scope: !860)
!868 = !DILocation(line: 143, column: 39, scope: !860)
!869 = !DILocation(line: 143, column: 45, scope: !860)
!870 = !DILocation(line: 144, column: 1, scope: !860)
!871 = distinct !DISubprogram(name: "set_char_quoting", scope: !35, file: !35, line: 152, type: !872, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !874)
!872 = !DISubroutineType(types: !873)
!873 = !{!23, !836, !8, !23}
!874 = !{!875, !876, !877, !878, !880, !882, !883}
!875 = !DILocalVariable(name: "o", arg: 1, scope: !871, file: !35, line: 152, type: !836)
!876 = !DILocalVariable(name: "c", arg: 2, scope: !871, file: !35, line: 152, type: !8)
!877 = !DILocalVariable(name: "i", arg: 3, scope: !871, file: !35, line: 152, type: !23)
!878 = !DILocalVariable(name: "uc", scope: !871, file: !35, line: 154, type: !879)
!879 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!880 = !DILocalVariable(name: "p", scope: !871, file: !35, line: 155, type: !881)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!882 = !DILocalVariable(name: "shift", scope: !871, file: !35, line: 157, type: !23)
!883 = !DILocalVariable(name: "r", scope: !871, file: !35, line: 158, type: !23)
!884 = !DILocation(line: 0, scope: !871)
!885 = !DILocation(line: 156, column: 6, scope: !871)
!886 = !DILocation(line: 156, column: 62, scope: !871)
!887 = !DILocation(line: 156, column: 57, scope: !871)
!888 = !DILocation(line: 157, column: 15, scope: !871)
!889 = !DILocation(line: 158, column: 12, scope: !871)
!890 = !DILocation(line: 158, column: 15, scope: !871)
!891 = !DILocation(line: 158, column: 25, scope: !871)
!892 = !DILocation(line: 159, column: 13, scope: !871)
!893 = !DILocation(line: 159, column: 18, scope: !871)
!894 = !DILocation(line: 159, column: 23, scope: !871)
!895 = !DILocation(line: 159, column: 6, scope: !871)
!896 = !DILocation(line: 160, column: 3, scope: !871)
!897 = distinct !DISubprogram(name: "set_quoting_flags", scope: !35, file: !35, line: 168, type: !898, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !900)
!898 = !DISubroutineType(types: !899)
!899 = !{!23, !836, !23}
!900 = !{!901, !902, !903}
!901 = !DILocalVariable(name: "o", arg: 1, scope: !897, file: !35, line: 168, type: !836)
!902 = !DILocalVariable(name: "i", arg: 2, scope: !897, file: !35, line: 168, type: !23)
!903 = !DILocalVariable(name: "r", scope: !897, file: !35, line: 170, type: !23)
!904 = !DILocation(line: 0, scope: !897)
!905 = !DILocation(line: 171, column: 8, scope: !906)
!906 = distinct !DILexicalBlock(scope: !897, file: !35, line: 171, column: 7)
!907 = !DILocation(line: 171, column: 7, scope: !897)
!908 = !DILocation(line: 173, column: 10, scope: !897)
!909 = !{!858, !771, i64 4}
!910 = !DILocation(line: 174, column: 12, scope: !897)
!911 = !DILocation(line: 175, column: 3, scope: !897)
!912 = distinct !DISubprogram(name: "set_custom_quoting", scope: !35, file: !35, line: 179, type: !913, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !915)
!913 = !DISubroutineType(types: !914)
!914 = !{null, !836, !6, !6}
!915 = !{!916, !917, !918}
!916 = !DILocalVariable(name: "o", arg: 1, scope: !912, file: !35, line: 179, type: !836)
!917 = !DILocalVariable(name: "left_quote", arg: 2, scope: !912, file: !35, line: 180, type: !6)
!918 = !DILocalVariable(name: "right_quote", arg: 3, scope: !912, file: !35, line: 180, type: !6)
!919 = !DILocation(line: 0, scope: !912)
!920 = !DILocation(line: 182, column: 8, scope: !921)
!921 = distinct !DILexicalBlock(scope: !912, file: !35, line: 182, column: 7)
!922 = !DILocation(line: 182, column: 7, scope: !912)
!923 = !DILocation(line: 184, column: 6, scope: !912)
!924 = !DILocation(line: 184, column: 12, scope: !912)
!925 = !DILocation(line: 185, column: 8, scope: !926)
!926 = distinct !DILexicalBlock(scope: !912, file: !35, line: 185, column: 7)
!927 = !DILocation(line: 185, column: 19, scope: !926)
!928 = !DILocation(line: 186, column: 5, scope: !926)
!929 = !DILocation(line: 187, column: 6, scope: !912)
!930 = !DILocation(line: 187, column: 17, scope: !912)
!931 = !{!858, !575, i64 40}
!932 = !DILocation(line: 188, column: 6, scope: !912)
!933 = !DILocation(line: 188, column: 18, scope: !912)
!934 = !{!858, !575, i64 48}
!935 = !DILocation(line: 189, column: 1, scope: !912)
!936 = distinct !DISubprogram(name: "quotearg_buffer", scope: !35, file: !35, line: 784, type: !937, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !939)
!937 = !DISubroutineType(types: !938)
!938 = !{!74, !30, !74, !6, !74, !850}
!939 = !{!940, !941, !942, !943, !944, !945, !946, !947}
!940 = !DILocalVariable(name: "buffer", arg: 1, scope: !936, file: !35, line: 784, type: !30)
!941 = !DILocalVariable(name: "buffersize", arg: 2, scope: !936, file: !35, line: 784, type: !74)
!942 = !DILocalVariable(name: "arg", arg: 3, scope: !936, file: !35, line: 785, type: !6)
!943 = !DILocalVariable(name: "argsize", arg: 4, scope: !936, file: !35, line: 785, type: !74)
!944 = !DILocalVariable(name: "o", arg: 5, scope: !936, file: !35, line: 786, type: !850)
!945 = !DILocalVariable(name: "p", scope: !936, file: !35, line: 788, type: !850)
!946 = !DILocalVariable(name: "e", scope: !936, file: !35, line: 789, type: !23)
!947 = !DILocalVariable(name: "r", scope: !936, file: !35, line: 790, type: !74)
!948 = !DILocation(line: 0, scope: !936)
!949 = !DILocation(line: 788, column: 37, scope: !936)
!950 = !DILocation(line: 789, column: 11, scope: !936)
!951 = !DILocation(line: 791, column: 43, scope: !936)
!952 = !DILocation(line: 791, column: 53, scope: !936)
!953 = !DILocation(line: 791, column: 60, scope: !936)
!954 = !DILocation(line: 792, column: 43, scope: !936)
!955 = !DILocation(line: 792, column: 58, scope: !936)
!956 = !DILocation(line: 790, column: 14, scope: !936)
!957 = !DILocation(line: 793, column: 9, scope: !936)
!958 = !DILocation(line: 794, column: 3, scope: !936)
!959 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !35, file: !35, line: 256, type: !960, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !964)
!960 = !DISubroutineType(types: !961)
!961 = !{!74, !30, !74, !6, !74, !37, !23, !962, !6, !6}
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!964 = !{!965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !989, !990, !991, !992, !993, !996, !997, !1015, !1018, !1019, !1026, !1029, !1030, !1031, !1032, !1033, !1034}
!965 = !DILocalVariable(name: "buffer", arg: 1, scope: !959, file: !35, line: 256, type: !30)
!966 = !DILocalVariable(name: "buffersize", arg: 2, scope: !959, file: !35, line: 256, type: !74)
!967 = !DILocalVariable(name: "arg", arg: 3, scope: !959, file: !35, line: 257, type: !6)
!968 = !DILocalVariable(name: "argsize", arg: 4, scope: !959, file: !35, line: 257, type: !74)
!969 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !959, file: !35, line: 258, type: !37)
!970 = !DILocalVariable(name: "flags", arg: 6, scope: !959, file: !35, line: 258, type: !23)
!971 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !959, file: !35, line: 259, type: !962)
!972 = !DILocalVariable(name: "left_quote", arg: 8, scope: !959, file: !35, line: 260, type: !6)
!973 = !DILocalVariable(name: "right_quote", arg: 9, scope: !959, file: !35, line: 261, type: !6)
!974 = !DILocalVariable(name: "i", scope: !959, file: !35, line: 263, type: !74)
!975 = !DILocalVariable(name: "len", scope: !959, file: !35, line: 264, type: !74)
!976 = !DILocalVariable(name: "orig_buffersize", scope: !959, file: !35, line: 265, type: !74)
!977 = !DILocalVariable(name: "quote_string", scope: !959, file: !35, line: 266, type: !6)
!978 = !DILocalVariable(name: "quote_string_len", scope: !959, file: !35, line: 267, type: !74)
!979 = !DILocalVariable(name: "backslash_escapes", scope: !959, file: !35, line: 268, type: !16)
!980 = !DILocalVariable(name: "unibyte_locale", scope: !959, file: !35, line: 269, type: !16)
!981 = !DILocalVariable(name: "elide_outer_quotes", scope: !959, file: !35, line: 270, type: !16)
!982 = !DILocalVariable(name: "pending_shell_escape_end", scope: !959, file: !35, line: 271, type: !16)
!983 = !DILocalVariable(name: "encountered_single_quote", scope: !959, file: !35, line: 272, type: !16)
!984 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !959, file: !35, line: 273, type: !16)
!985 = !DILocalVariable(name: "c", scope: !986, file: !35, line: 402, type: !879)
!986 = distinct !DILexicalBlock(scope: !987, file: !35, line: 401, column: 5)
!987 = distinct !DILexicalBlock(scope: !988, file: !35, line: 400, column: 3)
!988 = distinct !DILexicalBlock(scope: !959, file: !35, line: 400, column: 3)
!989 = !DILocalVariable(name: "esc", scope: !986, file: !35, line: 403, type: !879)
!990 = !DILocalVariable(name: "is_right_quote", scope: !986, file: !35, line: 404, type: !16)
!991 = !DILocalVariable(name: "escaping", scope: !986, file: !35, line: 405, type: !16)
!992 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !986, file: !35, line: 406, type: !16)
!993 = !DILocalVariable(name: "m", scope: !994, file: !35, line: 610, type: !74)
!994 = distinct !DILexicalBlock(scope: !995, file: !35, line: 608, column: 11)
!995 = distinct !DILexicalBlock(scope: !986, file: !35, line: 426, column: 9)
!996 = !DILocalVariable(name: "printable", scope: !994, file: !35, line: 612, type: !16)
!997 = !DILocalVariable(name: "mbstate", scope: !998, file: !35, line: 621, type: !1000)
!998 = distinct !DILexicalBlock(scope: !999, file: !35, line: 620, column: 15)
!999 = distinct !DILexicalBlock(scope: !994, file: !35, line: 614, column: 17)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1001, line: 6, baseType: !1002)
!1001 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1003, line: 21, baseType: !1004)
!1003 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1003, line: 13, size: 64, elements: !1005)
!1005 = !{!1006, !1007}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1004, file: !1003, line: 15, baseType: !23, size: 32)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1004, file: !1003, line: 20, baseType: !1008, size: 32, offset: 32)
!1008 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1004, file: !1003, line: 16, size: 32, elements: !1009)
!1009 = !{!1010, !1011}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1008, file: !1003, line: 18, baseType: !39, size: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1008, file: !1003, line: 19, baseType: !1012, size: 32)
!1012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !1013)
!1013 = !{!1014}
!1014 = !DISubrange(count: 4)
!1015 = !DILocalVariable(name: "w", scope: !1016, file: !35, line: 631, type: !1017)
!1016 = distinct !DILexicalBlock(scope: !998, file: !35, line: 630, column: 19)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !75, line: 74, baseType: !23)
!1018 = !DILocalVariable(name: "bytes", scope: !1016, file: !35, line: 632, type: !74)
!1019 = !DILocalVariable(name: "j", scope: !1020, file: !35, line: 657, type: !74)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !35, line: 656, column: 27)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !35, line: 654, column: 29)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !35, line: 649, column: 23)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !35, line: 641, column: 30)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !35, line: 636, column: 30)
!1025 = distinct !DILexicalBlock(scope: !1016, file: !35, line: 634, column: 25)
!1026 = !DILocalVariable(name: "ilim", scope: !1027, file: !35, line: 684, type: !74)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !35, line: 681, column: 15)
!1028 = distinct !DILexicalBlock(scope: !994, file: !35, line: 680, column: 17)
!1029 = !DILabel(scope: !959, name: "process_input", file: !35, line: 314)
!1030 = !DILabel(scope: !995, name: "c_and_shell_escape", file: !35, line: 512)
!1031 = !DILabel(scope: !995, name: "c_escape", file: !35, line: 517)
!1032 = !DILabel(scope: !986, name: "store_escape", file: !35, line: 719)
!1033 = !DILabel(scope: !986, name: "store_c", file: !35, line: 722)
!1034 = !DILabel(scope: !959, name: "force_outer_quoting_style", file: !35, line: 763)
!1035 = !DILocation(line: 0, scope: !959)
!1036 = !DILocation(line: 269, column: 25, scope: !959)
!1037 = !DILocation(line: 269, column: 36, scope: !959)
!1038 = !DILocation(line: 270, column: 8, scope: !959)
!1039 = !DILocation(line: 273, column: 3, scope: !959)
!1040 = !DILocation(line: 265, column: 10, scope: !959)
!1041 = !DILocation(line: 266, column: 15, scope: !959)
!1042 = !DILocation(line: 267, column: 10, scope: !959)
!1043 = !DILocation(line: 268, column: 8, scope: !959)
!1044 = !DILocation(line: 271, column: 8, scope: !959)
!1045 = !DILocation(line: 272, column: 8, scope: !959)
!1046 = !DILocation(line: 273, column: 8, scope: !959)
!1047 = !DILocation(line: 314, column: 2, scope: !959)
!1048 = !DILocation(line: 316, column: 3, scope: !959)
!1049 = !DILocation(line: 323, column: 11, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !959, file: !35, line: 317, column: 5)
!1051 = !DILocation(line: 323, column: 12, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1050, file: !35, line: 323, column: 11)
!1053 = !DILocation(line: 324, column: 9, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !35, line: 324, column: 9)
!1055 = distinct !DILexicalBlock(scope: !1052, file: !35, line: 324, column: 9)
!1056 = !DILocation(line: 324, column: 9, scope: !1055)
!1057 = !{!576, !576, i64 0}
!1058 = !DILocation(line: 362, column: 26, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !35, line: 340, column: 11)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !35, line: 339, column: 13)
!1061 = distinct !DILexicalBlock(scope: !1050, file: !35, line: 338, column: 7)
!1062 = !DILocation(line: 363, column: 27, scope: !1059)
!1063 = !DILocation(line: 364, column: 11, scope: !1059)
!1064 = !DILocation(line: 365, column: 14, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1061, file: !35, line: 365, column: 13)
!1066 = !DILocation(line: 365, column: 13, scope: !1061)
!1067 = !DILocation(line: 366, column: 43, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !35, line: 366, column: 11)
!1069 = distinct !DILexicalBlock(scope: !1065, file: !35, line: 366, column: 11)
!1070 = !DILocation(line: 366, column: 11, scope: !1069)
!1071 = !DILocation(line: 367, column: 13, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !35, line: 367, column: 13)
!1073 = distinct !DILexicalBlock(scope: !1068, file: !35, line: 367, column: 13)
!1074 = !DILocation(line: 367, column: 13, scope: !1073)
!1075 = !DILocation(line: 366, column: 70, scope: !1068)
!1076 = distinct !{!1076, !1070, !1077, !676}
!1077 = !DILocation(line: 367, column: 13, scope: !1069)
!1078 = !DILocation(line: 264, column: 10, scope: !959)
!1079 = !DILocation(line: 370, column: 28, scope: !1061)
!1080 = !DILocation(line: 372, column: 7, scope: !1050)
!1081 = !DILocation(line: 376, column: 7, scope: !1050)
!1082 = !DILocation(line: 379, column: 7, scope: !1050)
!1083 = !DILocation(line: 381, column: 12, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1050, file: !35, line: 381, column: 11)
!1085 = !DILocation(line: 381, column: 11, scope: !1050)
!1086 = !DILocation(line: 386, column: 12, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1050, file: !35, line: 386, column: 11)
!1088 = !DILocation(line: 386, column: 11, scope: !1050)
!1089 = !DILocation(line: 387, column: 9, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !35, line: 387, column: 9)
!1091 = distinct !DILexicalBlock(scope: !1087, file: !35, line: 387, column: 9)
!1092 = !DILocation(line: 387, column: 9, scope: !1091)
!1093 = !DILocation(line: 394, column: 7, scope: !1050)
!1094 = !DILocation(line: 397, column: 7, scope: !1050)
!1095 = !DILocation(line: 400, column: 8, scope: !988)
!1096 = !DILocation(line: 0, scope: !988)
!1097 = !DILocation(line: 400, column: 27, scope: !987)
!1098 = !DILocation(line: 400, column: 19, scope: !987)
!1099 = !DILocation(line: 400, column: 41, scope: !987)
!1100 = !DILocation(line: 400, column: 48, scope: !987)
!1101 = !DILocation(line: 400, column: 3, scope: !988)
!1102 = !DILocation(line: 400, column: 60, scope: !987)
!1103 = !DILocation(line: 0, scope: !986)
!1104 = !DILocation(line: 409, column: 11, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !986, file: !35, line: 408, column: 11)
!1106 = !DILocation(line: 411, column: 17, scope: !1105)
!1107 = !DILocation(line: 412, column: 39, scope: !1105)
!1108 = !DILocation(line: 416, column: 32, scope: !1105)
!1109 = !DILocation(line: 412, column: 19, scope: !1105)
!1110 = !DILocation(line: 412, column: 15, scope: !1105)
!1111 = !DILocation(line: 417, column: 11, scope: !1105)
!1112 = !DILocation(line: 417, column: 26, scope: !1105)
!1113 = !DILocation(line: 417, column: 14, scope: !1105)
!1114 = !DILocation(line: 417, column: 63, scope: !1105)
!1115 = !DILocation(line: 408, column: 11, scope: !986)
!1116 = !DILocation(line: 424, column: 11, scope: !986)
!1117 = !DILocation(line: 425, column: 7, scope: !986)
!1118 = !DILocation(line: 428, column: 15, scope: !995)
!1119 = !DILocation(line: 430, column: 15, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !35, line: 430, column: 15)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !35, line: 429, column: 13)
!1122 = distinct !DILexicalBlock(scope: !995, file: !35, line: 428, column: 15)
!1123 = !DILocation(line: 430, column: 15, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1120, file: !35, line: 430, column: 15)
!1125 = !DILocation(line: 430, column: 15, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !35, line: 430, column: 15)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !35, line: 430, column: 15)
!1128 = distinct !DILexicalBlock(scope: !1124, file: !35, line: 430, column: 15)
!1129 = !DILocation(line: 430, column: 15, scope: !1127)
!1130 = !DILocation(line: 430, column: 15, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !35, line: 430, column: 15)
!1132 = distinct !DILexicalBlock(scope: !1128, file: !35, line: 430, column: 15)
!1133 = !DILocation(line: 430, column: 15, scope: !1132)
!1134 = !DILocation(line: 430, column: 15, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !35, line: 430, column: 15)
!1136 = distinct !DILexicalBlock(scope: !1128, file: !35, line: 430, column: 15)
!1137 = !DILocation(line: 430, column: 15, scope: !1136)
!1138 = !DILocation(line: 430, column: 15, scope: !1128)
!1139 = !DILocation(line: 430, column: 15, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !35, line: 430, column: 15)
!1141 = distinct !DILexicalBlock(scope: !1120, file: !35, line: 430, column: 15)
!1142 = !DILocation(line: 430, column: 15, scope: !1141)
!1143 = !DILocation(line: 438, column: 19, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1121, file: !35, line: 437, column: 19)
!1145 = !DILocation(line: 438, column: 48, scope: !1144)
!1146 = !DILocation(line: 438, column: 59, scope: !1144)
!1147 = !DILocation(line: 440, column: 19, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !35, line: 440, column: 19)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !35, line: 440, column: 19)
!1150 = distinct !DILexicalBlock(scope: !1144, file: !35, line: 439, column: 17)
!1151 = !DILocation(line: 440, column: 19, scope: !1149)
!1152 = !DILocation(line: 441, column: 19, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !35, line: 441, column: 19)
!1154 = distinct !DILexicalBlock(scope: !1150, file: !35, line: 441, column: 19)
!1155 = !DILocation(line: 441, column: 19, scope: !1154)
!1156 = !DILocation(line: 442, column: 17, scope: !1150)
!1157 = !DILocation(line: 449, column: 20, scope: !1122)
!1158 = !DILocation(line: 454, column: 11, scope: !995)
!1159 = !DILocation(line: 457, column: 19, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !995, file: !35, line: 455, column: 13)
!1161 = !DILocation(line: 463, column: 19, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1160, file: !35, line: 462, column: 19)
!1163 = !DILocation(line: 463, column: 47, scope: !1162)
!1164 = !DILocation(line: 463, column: 41, scope: !1162)
!1165 = !DILocation(line: 463, column: 52, scope: !1162)
!1166 = !DILocation(line: 462, column: 19, scope: !1160)
!1167 = !DILocation(line: 464, column: 25, scope: !1162)
!1168 = !DILocation(line: 464, column: 17, scope: !1162)
!1169 = !DILocation(line: 471, column: 25, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1162, file: !35, line: 465, column: 19)
!1171 = !DILocation(line: 475, column: 21, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !35, line: 475, column: 21)
!1173 = distinct !DILexicalBlock(scope: !1170, file: !35, line: 475, column: 21)
!1174 = !DILocation(line: 475, column: 21, scope: !1173)
!1175 = !DILocation(line: 476, column: 21, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !35, line: 476, column: 21)
!1177 = distinct !DILexicalBlock(scope: !1170, file: !35, line: 476, column: 21)
!1178 = !DILocation(line: 476, column: 21, scope: !1177)
!1179 = !DILocation(line: 477, column: 21, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !35, line: 477, column: 21)
!1181 = distinct !DILexicalBlock(scope: !1170, file: !35, line: 477, column: 21)
!1182 = !DILocation(line: 477, column: 21, scope: !1181)
!1183 = !DILocation(line: 478, column: 21, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !35, line: 478, column: 21)
!1185 = distinct !DILexicalBlock(scope: !1170, file: !35, line: 478, column: 21)
!1186 = !DILocation(line: 478, column: 21, scope: !1185)
!1187 = !DILocation(line: 479, column: 21, scope: !1170)
!1188 = !DILocation(line: 492, column: 31, scope: !995)
!1189 = !DILocation(line: 493, column: 31, scope: !995)
!1190 = !DILocation(line: 495, column: 31, scope: !995)
!1191 = !DILocation(line: 496, column: 31, scope: !995)
!1192 = !DILocation(line: 497, column: 31, scope: !995)
!1193 = !DILocation(line: 500, column: 15, scope: !995)
!1194 = !DILocation(line: 502, column: 19, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !35, line: 501, column: 13)
!1196 = distinct !DILexicalBlock(scope: !995, file: !35, line: 500, column: 15)
!1197 = !DILocation(line: 509, column: 33, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !995, file: !35, line: 509, column: 15)
!1199 = !DILocation(line: 0, scope: !995)
!1200 = !DILocation(line: 512, column: 9, scope: !995)
!1201 = !DILocation(line: 514, column: 15, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !995, file: !35, line: 513, column: 15)
!1203 = !DILocation(line: 517, column: 9, scope: !995)
!1204 = !DILocation(line: 518, column: 15, scope: !995)
!1205 = !DILocation(line: 526, column: 15, scope: !995)
!1206 = !DILocation(line: 526, column: 40, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !995, file: !35, line: 526, column: 15)
!1208 = !DILocation(line: 526, column: 47, scope: !1207)
!1209 = !DILocation(line: 526, column: 18, scope: !1207)
!1210 = !DILocation(line: 530, column: 17, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !995, file: !35, line: 530, column: 15)
!1212 = !DILocation(line: 530, column: 15, scope: !995)
!1213 = !DILocation(line: 535, column: 11, scope: !995)
!1214 = !DILocation(line: 549, column: 15, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !995, file: !35, line: 548, column: 15)
!1216 = !DILocation(line: 556, column: 15, scope: !995)
!1217 = !DILocation(line: 558, column: 19, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !35, line: 557, column: 13)
!1219 = distinct !DILexicalBlock(scope: !995, file: !35, line: 556, column: 15)
!1220 = !DILocation(line: 561, column: 19, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1218, file: !35, line: 561, column: 19)
!1222 = !DILocation(line: 561, column: 30, scope: !1221)
!1223 = !DILocation(line: 570, column: 15, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !35, line: 570, column: 15)
!1225 = distinct !DILexicalBlock(scope: !1218, file: !35, line: 570, column: 15)
!1226 = !DILocation(line: 570, column: 15, scope: !1225)
!1227 = !DILocation(line: 571, column: 15, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !35, line: 571, column: 15)
!1229 = distinct !DILexicalBlock(scope: !1218, file: !35, line: 571, column: 15)
!1230 = !DILocation(line: 571, column: 15, scope: !1229)
!1231 = !DILocation(line: 572, column: 15, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !35, line: 572, column: 15)
!1233 = distinct !DILexicalBlock(scope: !1218, file: !35, line: 572, column: 15)
!1234 = !DILocation(line: 572, column: 15, scope: !1233)
!1235 = !DILocation(line: 574, column: 13, scope: !1218)
!1236 = !DILocation(line: 614, column: 17, scope: !994)
!1237 = !DILocation(line: 0, scope: !994)
!1238 = !DILocation(line: 617, column: 29, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !999, file: !35, line: 615, column: 15)
!1240 = !{!1241, !1241, i64 0}
!1241 = !{!"short", !576, i64 0}
!1242 = !DILocation(line: 617, column: 27, scope: !1239)
!1243 = !DILocation(line: 678, column: 40, scope: !994)
!1244 = !DILocation(line: 680, column: 23, scope: !1028)
!1245 = !DILocation(line: 621, column: 17, scope: !998)
!1246 = !DILocation(line: 621, column: 27, scope: !998)
!1247 = !DILocalVariable(name: "__dest", arg: 1, scope: !1248, file: !1249, line: 57, type: !29)
!1248 = distinct !DISubprogram(name: "memset", scope: !1249, file: !1249, line: 57, type: !1250, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1252)
!1249 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!29, !29, !23, !74}
!1252 = !{!1247, !1253, !1254}
!1253 = !DILocalVariable(name: "__ch", arg: 2, scope: !1248, file: !1249, line: 57, type: !23)
!1254 = !DILocalVariable(name: "__len", arg: 3, scope: !1248, file: !1249, line: 57, type: !74)
!1255 = !DILocation(line: 0, scope: !1248, inlinedAt: !1256)
!1256 = distinct !DILocation(line: 622, column: 17, scope: !998)
!1257 = !DILocation(line: 59, column: 10, scope: !1248, inlinedAt: !1256)
!1258 = !DILocation(line: 626, column: 29, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !998, file: !35, line: 626, column: 21)
!1260 = !DILocation(line: 626, column: 21, scope: !998)
!1261 = !DILocation(line: 627, column: 29, scope: !1259)
!1262 = !DILocation(line: 627, column: 19, scope: !1259)
!1263 = !DILocation(line: 629, column: 17, scope: !998)
!1264 = !DILocation(line: 624, column: 19, scope: !998)
!1265 = !DILocation(line: 625, column: 27, scope: !998)
!1266 = !DILocation(line: 631, column: 21, scope: !1016)
!1267 = !DILocation(line: 632, column: 56, scope: !1016)
!1268 = !DILocation(line: 632, column: 50, scope: !1016)
!1269 = !DILocation(line: 633, column: 53, scope: !1016)
!1270 = !DILocation(line: 0, scope: !1016)
!1271 = !DILocation(line: 632, column: 36, scope: !1016)
!1272 = !DILocation(line: 634, column: 25, scope: !1016)
!1273 = !DILocation(line: 644, column: 38, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1023, file: !35, line: 642, column: 23)
!1275 = !DILocation(line: 644, column: 48, scope: !1274)
!1276 = !DILocation(line: 644, column: 25, scope: !1274)
!1277 = !DILocation(line: 644, column: 51, scope: !1274)
!1278 = !DILocation(line: 645, column: 28, scope: !1274)
!1279 = !DILocation(line: 644, column: 34, scope: !1274)
!1280 = distinct !{!1280, !1276, !1278, !676}
!1281 = !DILocation(line: 655, column: 29, scope: !1021)
!1282 = !DILocation(line: 0, scope: !1020)
!1283 = !DILocation(line: 659, column: 49, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !35, line: 658, column: 29)
!1285 = distinct !DILexicalBlock(scope: !1020, file: !35, line: 658, column: 29)
!1286 = !DILocation(line: 659, column: 39, scope: !1284)
!1287 = !DILocation(line: 659, column: 31, scope: !1284)
!1288 = !DILocation(line: 658, column: 53, scope: !1284)
!1289 = !DILocation(line: 658, column: 43, scope: !1284)
!1290 = !DILocation(line: 658, column: 29, scope: !1285)
!1291 = distinct !{!1291, !1290, !1292, !676}
!1292 = !DILocation(line: 667, column: 33, scope: !1285)
!1293 = !DILocation(line: 674, column: 19, scope: !998)
!1294 = !DILocation(line: 670, column: 41, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1022, file: !35, line: 670, column: 29)
!1296 = !DILocation(line: 670, column: 31, scope: !1295)
!1297 = !DILocation(line: 670, column: 29, scope: !1022)
!1298 = !DILocation(line: 672, column: 27, scope: !1022)
!1299 = !DILocation(line: 675, column: 26, scope: !998)
!1300 = !DILocation(line: 675, column: 24, scope: !998)
!1301 = !DILocation(line: 674, column: 19, scope: !1016)
!1302 = distinct !{!1302, !1263, !1303, !676}
!1303 = !DILocation(line: 675, column: 44, scope: !998)
!1304 = !DILocation(line: 676, column: 15, scope: !999)
!1305 = !DILocation(line: 680, column: 19, scope: !1028)
!1306 = !DILocation(line: 680, column: 45, scope: !1028)
!1307 = !DILocation(line: 684, column: 33, scope: !1027)
!1308 = !DILocation(line: 0, scope: !1027)
!1309 = !DILocation(line: 686, column: 17, scope: !1027)
!1310 = !DILocation(line: 405, column: 12, scope: !986)
!1311 = !DILocation(line: 688, column: 43, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !35, line: 688, column: 25)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !35, line: 687, column: 19)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !35, line: 686, column: 17)
!1315 = distinct !DILexicalBlock(scope: !1027, file: !35, line: 686, column: 17)
!1316 = !DILocation(line: 690, column: 25, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !35, line: 690, column: 25)
!1318 = distinct !DILexicalBlock(scope: !1312, file: !35, line: 689, column: 23)
!1319 = !DILocation(line: 690, column: 25, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1317, file: !35, line: 690, column: 25)
!1321 = !DILocation(line: 690, column: 25, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !35, line: 690, column: 25)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !35, line: 690, column: 25)
!1324 = distinct !DILexicalBlock(scope: !1320, file: !35, line: 690, column: 25)
!1325 = !DILocation(line: 690, column: 25, scope: !1323)
!1326 = !DILocation(line: 690, column: 25, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !35, line: 690, column: 25)
!1328 = distinct !DILexicalBlock(scope: !1324, file: !35, line: 690, column: 25)
!1329 = !DILocation(line: 690, column: 25, scope: !1328)
!1330 = !DILocation(line: 690, column: 25, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !35, line: 690, column: 25)
!1332 = distinct !DILexicalBlock(scope: !1324, file: !35, line: 690, column: 25)
!1333 = !DILocation(line: 690, column: 25, scope: !1332)
!1334 = !DILocation(line: 690, column: 25, scope: !1324)
!1335 = !DILocation(line: 690, column: 25, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !35, line: 690, column: 25)
!1337 = distinct !DILexicalBlock(scope: !1317, file: !35, line: 690, column: 25)
!1338 = !DILocation(line: 690, column: 25, scope: !1337)
!1339 = !DILocation(line: 691, column: 25, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !35, line: 691, column: 25)
!1341 = distinct !DILexicalBlock(scope: !1318, file: !35, line: 691, column: 25)
!1342 = !DILocation(line: 691, column: 25, scope: !1341)
!1343 = !DILocation(line: 692, column: 25, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !35, line: 692, column: 25)
!1345 = distinct !DILexicalBlock(scope: !1318, file: !35, line: 692, column: 25)
!1346 = !DILocation(line: 692, column: 25, scope: !1345)
!1347 = !DILocation(line: 693, column: 38, scope: !1318)
!1348 = !DILocation(line: 693, column: 33, scope: !1318)
!1349 = !DILocation(line: 694, column: 23, scope: !1318)
!1350 = !DILocation(line: 695, column: 30, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1312, file: !35, line: 695, column: 30)
!1352 = !DILocation(line: 695, column: 30, scope: !1312)
!1353 = !DILocation(line: 697, column: 25, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !35, line: 697, column: 25)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !35, line: 697, column: 25)
!1356 = distinct !DILexicalBlock(scope: !1351, file: !35, line: 696, column: 23)
!1357 = !DILocation(line: 697, column: 25, scope: !1355)
!1358 = !DILocation(line: 699, column: 23, scope: !1356)
!1359 = !DILocation(line: 700, column: 35, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1313, file: !35, line: 700, column: 25)
!1361 = !DILocation(line: 700, column: 30, scope: !1360)
!1362 = !DILocation(line: 700, column: 25, scope: !1313)
!1363 = !DILocation(line: 702, column: 21, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !35, line: 702, column: 21)
!1365 = distinct !DILexicalBlock(scope: !1313, file: !35, line: 702, column: 21)
!1366 = !DILocation(line: 702, column: 21, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !35, line: 702, column: 21)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !35, line: 702, column: 21)
!1369 = distinct !DILexicalBlock(scope: !1364, file: !35, line: 702, column: 21)
!1370 = !DILocation(line: 702, column: 21, scope: !1368)
!1371 = !DILocation(line: 702, column: 21, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !35, line: 702, column: 21)
!1373 = distinct !DILexicalBlock(scope: !1369, file: !35, line: 702, column: 21)
!1374 = !DILocation(line: 702, column: 21, scope: !1373)
!1375 = !DILocation(line: 702, column: 21, scope: !1369)
!1376 = !DILocation(line: 0, scope: !1313)
!1377 = !DILocation(line: 703, column: 21, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !35, line: 703, column: 21)
!1379 = distinct !DILexicalBlock(scope: !1313, file: !35, line: 703, column: 21)
!1380 = !DILocation(line: 703, column: 21, scope: !1379)
!1381 = !DILocation(line: 704, column: 25, scope: !1313)
!1382 = !DILocation(line: 686, column: 17, scope: !1314)
!1383 = distinct !{!1383, !1384, !1385}
!1384 = !DILocation(line: 686, column: 17, scope: !1315)
!1385 = !DILocation(line: 705, column: 19, scope: !1315)
!1386 = !DILocation(line: 416, column: 30, scope: !1105)
!1387 = !DILocation(line: 712, column: 34, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !986, file: !35, line: 712, column: 11)
!1389 = !DILocation(line: 715, column: 35, scope: !1388)
!1390 = !DILocation(line: 715, column: 17, scope: !1388)
!1391 = !DILocation(line: 715, column: 47, scope: !1388)
!1392 = !DILocation(line: 715, column: 65, scope: !1388)
!1393 = !DILocation(line: 716, column: 11, scope: !1388)
!1394 = !DILocation(line: 712, column: 11, scope: !986)
!1395 = !DILocation(line: 400, column: 10, scope: !988)
!1396 = !DILocation(line: 719, column: 5, scope: !986)
!1397 = !DILocation(line: 720, column: 7, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !986, file: !35, line: 720, column: 7)
!1399 = !DILocation(line: 720, column: 7, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1398, file: !35, line: 720, column: 7)
!1401 = !DILocation(line: 720, column: 7, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !35, line: 720, column: 7)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !35, line: 720, column: 7)
!1404 = distinct !DILexicalBlock(scope: !1400, file: !35, line: 720, column: 7)
!1405 = !DILocation(line: 720, column: 7, scope: !1403)
!1406 = !DILocation(line: 720, column: 7, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !35, line: 720, column: 7)
!1408 = distinct !DILexicalBlock(scope: !1404, file: !35, line: 720, column: 7)
!1409 = !DILocation(line: 720, column: 7, scope: !1408)
!1410 = !DILocation(line: 720, column: 7, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !35, line: 720, column: 7)
!1412 = distinct !DILexicalBlock(scope: !1404, file: !35, line: 720, column: 7)
!1413 = !DILocation(line: 720, column: 7, scope: !1412)
!1414 = !DILocation(line: 720, column: 7, scope: !1404)
!1415 = !DILocation(line: 720, column: 7, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !35, line: 720, column: 7)
!1417 = distinct !DILexicalBlock(scope: !1398, file: !35, line: 720, column: 7)
!1418 = !DILocation(line: 720, column: 7, scope: !1417)
!1419 = !DILocation(line: 722, column: 5, scope: !986)
!1420 = !DILocation(line: 723, column: 7, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !35, line: 723, column: 7)
!1422 = distinct !DILexicalBlock(scope: !986, file: !35, line: 723, column: 7)
!1423 = !DILocation(line: 424, column: 9, scope: !986)
!1424 = !DILocation(line: 723, column: 7, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !35, line: 723, column: 7)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !35, line: 723, column: 7)
!1427 = distinct !DILexicalBlock(scope: !1421, file: !35, line: 723, column: 7)
!1428 = !DILocation(line: 723, column: 7, scope: !1426)
!1429 = !DILocation(line: 723, column: 7, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !35, line: 723, column: 7)
!1431 = distinct !DILexicalBlock(scope: !1427, file: !35, line: 723, column: 7)
!1432 = !DILocation(line: 723, column: 7, scope: !1431)
!1433 = !DILocation(line: 723, column: 7, scope: !1427)
!1434 = !DILocation(line: 724, column: 7, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !35, line: 724, column: 7)
!1436 = distinct !DILexicalBlock(scope: !986, file: !35, line: 724, column: 7)
!1437 = !DILocation(line: 724, column: 7, scope: !1436)
!1438 = !DILocation(line: 726, column: 13, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !986, file: !35, line: 726, column: 11)
!1440 = !DILocation(line: 726, column: 11, scope: !986)
!1441 = !DILocation(line: 728, column: 5, scope: !987)
!1442 = !DILocation(line: 400, column: 75, scope: !987)
!1443 = !DILocation(line: 400, column: 3, scope: !987)
!1444 = distinct !{!1444, !1101, !1445, !676}
!1445 = !DILocation(line: 728, column: 5, scope: !988)
!1446 = !DILocation(line: 730, column: 11, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !959, file: !35, line: 730, column: 7)
!1448 = !DILocation(line: 730, column: 16, scope: !1447)
!1449 = !DILocation(line: 738, column: 51, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !959, file: !35, line: 738, column: 7)
!1451 = !DILocation(line: 741, column: 11, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !35, line: 741, column: 11)
!1453 = distinct !DILexicalBlock(scope: !1450, file: !35, line: 740, column: 5)
!1454 = !DILocation(line: 741, column: 11, scope: !1453)
!1455 = !DILocation(line: 742, column: 16, scope: !1452)
!1456 = !DILocation(line: 742, column: 9, scope: !1452)
!1457 = !DILocation(line: 746, column: 18, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1452, file: !35, line: 746, column: 16)
!1459 = !DILocation(line: 746, column: 29, scope: !1458)
!1460 = !DILocation(line: 755, column: 7, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !959, file: !35, line: 755, column: 7)
!1462 = !DILocation(line: 755, column: 20, scope: !1461)
!1463 = !DILocation(line: 756, column: 12, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !35, line: 756, column: 5)
!1465 = distinct !DILexicalBlock(scope: !1461, file: !35, line: 756, column: 5)
!1466 = !DILocation(line: 756, column: 5, scope: !1465)
!1467 = !DILocation(line: 757, column: 7, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !35, line: 757, column: 7)
!1469 = distinct !DILexicalBlock(scope: !1464, file: !35, line: 757, column: 7)
!1470 = !DILocation(line: 757, column: 7, scope: !1469)
!1471 = !DILocation(line: 756, column: 39, scope: !1464)
!1472 = distinct !{!1472, !1466, !1473, !676}
!1473 = !DILocation(line: 757, column: 7, scope: !1465)
!1474 = !DILocation(line: 759, column: 11, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !959, file: !35, line: 759, column: 7)
!1476 = !DILocation(line: 759, column: 7, scope: !959)
!1477 = !DILocation(line: 760, column: 5, scope: !1475)
!1478 = !DILocation(line: 760, column: 17, scope: !1475)
!1479 = !DILocation(line: 763, column: 2, scope: !959)
!1480 = !DILocation(line: 766, column: 51, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !959, file: !35, line: 766, column: 7)
!1482 = !DILocation(line: 766, column: 21, scope: !1481)
!1483 = !DILocation(line: 770, column: 42, scope: !959)
!1484 = !DILocation(line: 768, column: 10, scope: !959)
!1485 = !DILocation(line: 768, column: 3, scope: !959)
!1486 = !DILocation(line: 772, column: 1, scope: !959)
!1487 = distinct !DISubprogram(name: "gettext_quote", scope: !35, file: !35, line: 207, type: !1488, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1490)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!6, !6, !37}
!1490 = !{!1491, !1492, !1493, !1494}
!1491 = !DILocalVariable(name: "msgid", arg: 1, scope: !1487, file: !35, line: 207, type: !6)
!1492 = !DILocalVariable(name: "s", arg: 2, scope: !1487, file: !35, line: 207, type: !37)
!1493 = !DILocalVariable(name: "translation", scope: !1487, file: !35, line: 209, type: !6)
!1494 = !DILocalVariable(name: "locale_code", scope: !1487, file: !35, line: 210, type: !6)
!1495 = !DILocation(line: 0, scope: !1487)
!1496 = !DILocation(line: 209, column: 29, scope: !1487)
!1497 = !DILocation(line: 212, column: 19, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1487, file: !35, line: 212, column: 7)
!1499 = !DILocation(line: 212, column: 7, scope: !1487)
!1500 = !DILocation(line: 233, column: 17, scope: !1487)
!1501 = !DILocalVariable(name: "s1", arg: 1, scope: !1502, file: !1503, line: 160, type: !6)
!1502 = distinct !DISubprogram(name: "strcaseeq0", scope: !1503, file: !1503, line: 160, type: !1504, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1506)
!1503 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1506 = !{!1501, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516}
!1507 = !DILocalVariable(name: "s2", arg: 2, scope: !1502, file: !1503, line: 160, type: !6)
!1508 = !DILocalVariable(name: "s20", arg: 3, scope: !1502, file: !1503, line: 160, type: !8)
!1509 = !DILocalVariable(name: "s21", arg: 4, scope: !1502, file: !1503, line: 160, type: !8)
!1510 = !DILocalVariable(name: "s22", arg: 5, scope: !1502, file: !1503, line: 160, type: !8)
!1511 = !DILocalVariable(name: "s23", arg: 6, scope: !1502, file: !1503, line: 160, type: !8)
!1512 = !DILocalVariable(name: "s24", arg: 7, scope: !1502, file: !1503, line: 160, type: !8)
!1513 = !DILocalVariable(name: "s25", arg: 8, scope: !1502, file: !1503, line: 160, type: !8)
!1514 = !DILocalVariable(name: "s26", arg: 9, scope: !1502, file: !1503, line: 160, type: !8)
!1515 = !DILocalVariable(name: "s27", arg: 10, scope: !1502, file: !1503, line: 160, type: !8)
!1516 = !DILocalVariable(name: "s28", arg: 11, scope: !1502, file: !1503, line: 160, type: !8)
!1517 = !DILocation(line: 0, scope: !1502, inlinedAt: !1518)
!1518 = distinct !DILocation(line: 234, column: 7, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1487, file: !35, line: 234, column: 7)
!1520 = !DILocation(line: 162, column: 7, scope: !1521, inlinedAt: !1518)
!1521 = distinct !DILexicalBlock(scope: !1502, file: !1503, line: 162, column: 7)
!1522 = !DILocalVariable(name: "s1", arg: 1, scope: !1523, file: !1503, line: 146, type: !6)
!1523 = distinct !DISubprogram(name: "strcaseeq1", scope: !1503, file: !1503, line: 146, type: !1524, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1526)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1526 = !{!1522, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535}
!1527 = !DILocalVariable(name: "s2", arg: 2, scope: !1523, file: !1503, line: 146, type: !6)
!1528 = !DILocalVariable(name: "s21", arg: 3, scope: !1523, file: !1503, line: 146, type: !8)
!1529 = !DILocalVariable(name: "s22", arg: 4, scope: !1523, file: !1503, line: 146, type: !8)
!1530 = !DILocalVariable(name: "s23", arg: 5, scope: !1523, file: !1503, line: 146, type: !8)
!1531 = !DILocalVariable(name: "s24", arg: 6, scope: !1523, file: !1503, line: 146, type: !8)
!1532 = !DILocalVariable(name: "s25", arg: 7, scope: !1523, file: !1503, line: 146, type: !8)
!1533 = !DILocalVariable(name: "s26", arg: 8, scope: !1523, file: !1503, line: 146, type: !8)
!1534 = !DILocalVariable(name: "s27", arg: 9, scope: !1523, file: !1503, line: 146, type: !8)
!1535 = !DILocalVariable(name: "s28", arg: 10, scope: !1523, file: !1503, line: 146, type: !8)
!1536 = !DILocation(line: 0, scope: !1523, inlinedAt: !1537)
!1537 = distinct !DILocation(line: 167, column: 16, scope: !1538, inlinedAt: !1518)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !1503, line: 164, column: 11)
!1539 = distinct !DILexicalBlock(scope: !1521, file: !1503, line: 163, column: 5)
!1540 = !DILocation(line: 148, column: 7, scope: !1541, inlinedAt: !1537)
!1541 = distinct !DILexicalBlock(scope: !1523, file: !1503, line: 148, column: 7)
!1542 = !DILocalVariable(name: "s1", arg: 1, scope: !1543, file: !1503, line: 132, type: !6)
!1543 = distinct !DISubprogram(name: "strcaseeq2", scope: !1503, file: !1503, line: 132, type: !1544, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1546)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1546 = !{!1542, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554}
!1547 = !DILocalVariable(name: "s2", arg: 2, scope: !1543, file: !1503, line: 132, type: !6)
!1548 = !DILocalVariable(name: "s22", arg: 3, scope: !1543, file: !1503, line: 132, type: !8)
!1549 = !DILocalVariable(name: "s23", arg: 4, scope: !1543, file: !1503, line: 132, type: !8)
!1550 = !DILocalVariable(name: "s24", arg: 5, scope: !1543, file: !1503, line: 132, type: !8)
!1551 = !DILocalVariable(name: "s25", arg: 6, scope: !1543, file: !1503, line: 132, type: !8)
!1552 = !DILocalVariable(name: "s26", arg: 7, scope: !1543, file: !1503, line: 132, type: !8)
!1553 = !DILocalVariable(name: "s27", arg: 8, scope: !1543, file: !1503, line: 132, type: !8)
!1554 = !DILocalVariable(name: "s28", arg: 9, scope: !1543, file: !1503, line: 132, type: !8)
!1555 = !DILocation(line: 0, scope: !1543, inlinedAt: !1556)
!1556 = distinct !DILocation(line: 153, column: 16, scope: !1557, inlinedAt: !1537)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !1503, line: 150, column: 11)
!1558 = distinct !DILexicalBlock(scope: !1541, file: !1503, line: 149, column: 5)
!1559 = !DILocation(line: 134, column: 7, scope: !1560, inlinedAt: !1556)
!1560 = distinct !DILexicalBlock(scope: !1543, file: !1503, line: 134, column: 7)
!1561 = !DILocalVariable(name: "s1", arg: 1, scope: !1562, file: !1503, line: 118, type: !6)
!1562 = distinct !DISubprogram(name: "strcaseeq3", scope: !1503, file: !1503, line: 118, type: !1563, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1565)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8}
!1565 = !{!1561, !1566, !1567, !1568, !1569, !1570, !1571, !1572}
!1566 = !DILocalVariable(name: "s2", arg: 2, scope: !1562, file: !1503, line: 118, type: !6)
!1567 = !DILocalVariable(name: "s23", arg: 3, scope: !1562, file: !1503, line: 118, type: !8)
!1568 = !DILocalVariable(name: "s24", arg: 4, scope: !1562, file: !1503, line: 118, type: !8)
!1569 = !DILocalVariable(name: "s25", arg: 5, scope: !1562, file: !1503, line: 118, type: !8)
!1570 = !DILocalVariable(name: "s26", arg: 6, scope: !1562, file: !1503, line: 118, type: !8)
!1571 = !DILocalVariable(name: "s27", arg: 7, scope: !1562, file: !1503, line: 118, type: !8)
!1572 = !DILocalVariable(name: "s28", arg: 8, scope: !1562, file: !1503, line: 118, type: !8)
!1573 = !DILocation(line: 0, scope: !1562, inlinedAt: !1574)
!1574 = distinct !DILocation(line: 139, column: 16, scope: !1575, inlinedAt: !1556)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !1503, line: 136, column: 11)
!1576 = distinct !DILexicalBlock(scope: !1560, file: !1503, line: 135, column: 5)
!1577 = !DILocation(line: 120, column: 7, scope: !1578, inlinedAt: !1574)
!1578 = distinct !DILexicalBlock(scope: !1562, file: !1503, line: 120, column: 7)
!1579 = !DILocation(line: 120, column: 7, scope: !1562, inlinedAt: !1574)
!1580 = !DILocalVariable(name: "s1", arg: 1, scope: !1581, file: !1503, line: 104, type: !6)
!1581 = distinct !DISubprogram(name: "strcaseeq4", scope: !1503, file: !1503, line: 104, type: !1582, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1584)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!23, !6, !6, !8, !8, !8, !8, !8}
!1584 = !{!1580, !1585, !1586, !1587, !1588, !1589, !1590}
!1585 = !DILocalVariable(name: "s2", arg: 2, scope: !1581, file: !1503, line: 104, type: !6)
!1586 = !DILocalVariable(name: "s24", arg: 3, scope: !1581, file: !1503, line: 104, type: !8)
!1587 = !DILocalVariable(name: "s25", arg: 4, scope: !1581, file: !1503, line: 104, type: !8)
!1588 = !DILocalVariable(name: "s26", arg: 5, scope: !1581, file: !1503, line: 104, type: !8)
!1589 = !DILocalVariable(name: "s27", arg: 6, scope: !1581, file: !1503, line: 104, type: !8)
!1590 = !DILocalVariable(name: "s28", arg: 7, scope: !1581, file: !1503, line: 104, type: !8)
!1591 = !DILocation(line: 0, scope: !1581, inlinedAt: !1592)
!1592 = distinct !DILocation(line: 125, column: 16, scope: !1593, inlinedAt: !1574)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !1503, line: 122, column: 11)
!1594 = distinct !DILexicalBlock(scope: !1578, file: !1503, line: 121, column: 5)
!1595 = !DILocation(line: 106, column: 7, scope: !1596, inlinedAt: !1592)
!1596 = distinct !DILexicalBlock(scope: !1581, file: !1503, line: 106, column: 7)
!1597 = !DILocation(line: 106, column: 7, scope: !1581, inlinedAt: !1592)
!1598 = !DILocalVariable(name: "s1", arg: 1, scope: !1599, file: !1503, line: 90, type: !6)
!1599 = distinct !DISubprogram(name: "strcaseeq5", scope: !1503, file: !1503, line: 90, type: !1600, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1602)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!23, !6, !6, !8, !8, !8, !8}
!1602 = !{!1598, !1603, !1604, !1605, !1606, !1607}
!1603 = !DILocalVariable(name: "s2", arg: 2, scope: !1599, file: !1503, line: 90, type: !6)
!1604 = !DILocalVariable(name: "s25", arg: 3, scope: !1599, file: !1503, line: 90, type: !8)
!1605 = !DILocalVariable(name: "s26", arg: 4, scope: !1599, file: !1503, line: 90, type: !8)
!1606 = !DILocalVariable(name: "s27", arg: 5, scope: !1599, file: !1503, line: 90, type: !8)
!1607 = !DILocalVariable(name: "s28", arg: 6, scope: !1599, file: !1503, line: 90, type: !8)
!1608 = !DILocation(line: 0, scope: !1599, inlinedAt: !1609)
!1609 = distinct !DILocation(line: 111, column: 16, scope: !1610, inlinedAt: !1592)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !1503, line: 108, column: 11)
!1611 = distinct !DILexicalBlock(scope: !1596, file: !1503, line: 107, column: 5)
!1612 = !DILocation(line: 92, column: 7, scope: !1613, inlinedAt: !1609)
!1613 = distinct !DILexicalBlock(scope: !1599, file: !1503, line: 92, column: 7)
!1614 = !DILocation(line: 92, column: 7, scope: !1599, inlinedAt: !1609)
!1615 = !DILocation(line: 235, column: 12, scope: !1519)
!1616 = !DILocation(line: 235, column: 21, scope: !1519)
!1617 = !DILocation(line: 235, column: 5, scope: !1519)
!1618 = !DILocation(line: 0, scope: !1523, inlinedAt: !1619)
!1619 = distinct !DILocation(line: 167, column: 16, scope: !1538, inlinedAt: !1620)
!1620 = distinct !DILocation(line: 236, column: 7, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1487, file: !35, line: 236, column: 7)
!1622 = !DILocation(line: 148, column: 7, scope: !1541, inlinedAt: !1619)
!1623 = !DILocation(line: 0, scope: !1543, inlinedAt: !1624)
!1624 = distinct !DILocation(line: 153, column: 16, scope: !1557, inlinedAt: !1619)
!1625 = !DILocation(line: 134, column: 7, scope: !1560, inlinedAt: !1624)
!1626 = !DILocation(line: 134, column: 7, scope: !1543, inlinedAt: !1624)
!1627 = !DILocation(line: 0, scope: !1562, inlinedAt: !1628)
!1628 = distinct !DILocation(line: 139, column: 16, scope: !1575, inlinedAt: !1624)
!1629 = !DILocation(line: 120, column: 7, scope: !1578, inlinedAt: !1628)
!1630 = !DILocation(line: 120, column: 7, scope: !1562, inlinedAt: !1628)
!1631 = !DILocation(line: 0, scope: !1581, inlinedAt: !1632)
!1632 = distinct !DILocation(line: 125, column: 16, scope: !1593, inlinedAt: !1628)
!1633 = !DILocation(line: 106, column: 7, scope: !1596, inlinedAt: !1632)
!1634 = !DILocation(line: 106, column: 7, scope: !1581, inlinedAt: !1632)
!1635 = !DILocation(line: 0, scope: !1599, inlinedAt: !1636)
!1636 = distinct !DILocation(line: 111, column: 16, scope: !1610, inlinedAt: !1632)
!1637 = !DILocation(line: 92, column: 7, scope: !1613, inlinedAt: !1636)
!1638 = !DILocation(line: 92, column: 7, scope: !1599, inlinedAt: !1636)
!1639 = !DILocalVariable(name: "s1", arg: 1, scope: !1640, file: !1503, line: 76, type: !6)
!1640 = distinct !DISubprogram(name: "strcaseeq6", scope: !1503, file: !1503, line: 76, type: !1641, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1643)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!23, !6, !6, !8, !8, !8}
!1643 = !{!1639, !1644, !1645, !1646, !1647}
!1644 = !DILocalVariable(name: "s2", arg: 2, scope: !1640, file: !1503, line: 76, type: !6)
!1645 = !DILocalVariable(name: "s26", arg: 3, scope: !1640, file: !1503, line: 76, type: !8)
!1646 = !DILocalVariable(name: "s27", arg: 4, scope: !1640, file: !1503, line: 76, type: !8)
!1647 = !DILocalVariable(name: "s28", arg: 5, scope: !1640, file: !1503, line: 76, type: !8)
!1648 = !DILocation(line: 0, scope: !1640, inlinedAt: !1649)
!1649 = distinct !DILocation(line: 97, column: 16, scope: !1650, inlinedAt: !1636)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !1503, line: 94, column: 11)
!1651 = distinct !DILexicalBlock(scope: !1613, file: !1503, line: 93, column: 5)
!1652 = !DILocation(line: 78, column: 7, scope: !1653, inlinedAt: !1649)
!1653 = distinct !DILexicalBlock(scope: !1640, file: !1503, line: 78, column: 7)
!1654 = !DILocation(line: 78, column: 7, scope: !1640, inlinedAt: !1649)
!1655 = !DILocalVariable(name: "s1", arg: 1, scope: !1656, file: !1503, line: 62, type: !6)
!1656 = distinct !DISubprogram(name: "strcaseeq7", scope: !1503, file: !1503, line: 62, type: !1657, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1659)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!23, !6, !6, !8, !8}
!1659 = !{!1655, !1660, !1661, !1662}
!1660 = !DILocalVariable(name: "s2", arg: 2, scope: !1656, file: !1503, line: 62, type: !6)
!1661 = !DILocalVariable(name: "s27", arg: 3, scope: !1656, file: !1503, line: 62, type: !8)
!1662 = !DILocalVariable(name: "s28", arg: 4, scope: !1656, file: !1503, line: 62, type: !8)
!1663 = !DILocation(line: 0, scope: !1656, inlinedAt: !1664)
!1664 = distinct !DILocation(line: 83, column: 16, scope: !1665, inlinedAt: !1649)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !1503, line: 80, column: 11)
!1666 = distinct !DILexicalBlock(scope: !1653, file: !1503, line: 79, column: 5)
!1667 = !DILocation(line: 64, column: 7, scope: !1668, inlinedAt: !1664)
!1668 = distinct !DILexicalBlock(scope: !1656, file: !1503, line: 64, column: 7)
!1669 = !DILocation(line: 236, column: 7, scope: !1487)
!1670 = !DILocation(line: 237, column: 12, scope: !1621)
!1671 = !DILocation(line: 237, column: 21, scope: !1621)
!1672 = !DILocation(line: 237, column: 5, scope: !1621)
!1673 = !DILocation(line: 239, column: 13, scope: !1487)
!1674 = !DILocation(line: 239, column: 11, scope: !1487)
!1675 = !DILocation(line: 239, column: 3, scope: !1487)
!1676 = !DILocation(line: 240, column: 1, scope: !1487)
!1677 = !DISubprogram(name: "iswprint", scope: !1678, file: !1678, line: 120, type: !1679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1678 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!23, !39}
!1681 = !DISubprogram(name: "mbsinit", scope: !1682, file: !1682, line: 292, type: !1683, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1682 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!23, !1685}
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1004)
!1687 = distinct !DISubprogram(name: "quotearg_alloc", scope: !35, file: !35, line: 799, type: !1688, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1690)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!30, !6, !74, !850}
!1690 = !{!1691, !1692, !1693}
!1691 = !DILocalVariable(name: "arg", arg: 1, scope: !1687, file: !35, line: 799, type: !6)
!1692 = !DILocalVariable(name: "argsize", arg: 2, scope: !1687, file: !35, line: 799, type: !74)
!1693 = !DILocalVariable(name: "o", arg: 3, scope: !1687, file: !35, line: 800, type: !850)
!1694 = !DILocation(line: 0, scope: !1687)
!1695 = !DILocalVariable(name: "arg", arg: 1, scope: !1696, file: !35, line: 812, type: !6)
!1696 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !35, file: !35, line: 812, type: !1697, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1699)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!30, !6, !74, !144, !850}
!1699 = !{!1695, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707}
!1700 = !DILocalVariable(name: "argsize", arg: 2, scope: !1696, file: !35, line: 812, type: !74)
!1701 = !DILocalVariable(name: "size", arg: 3, scope: !1696, file: !35, line: 812, type: !144)
!1702 = !DILocalVariable(name: "o", arg: 4, scope: !1696, file: !35, line: 813, type: !850)
!1703 = !DILocalVariable(name: "p", scope: !1696, file: !35, line: 815, type: !850)
!1704 = !DILocalVariable(name: "e", scope: !1696, file: !35, line: 816, type: !23)
!1705 = !DILocalVariable(name: "flags", scope: !1696, file: !35, line: 818, type: !23)
!1706 = !DILocalVariable(name: "bufsize", scope: !1696, file: !35, line: 819, type: !74)
!1707 = !DILocalVariable(name: "buf", scope: !1696, file: !35, line: 823, type: !30)
!1708 = !DILocation(line: 0, scope: !1696, inlinedAt: !1709)
!1709 = distinct !DILocation(line: 802, column: 10, scope: !1687)
!1710 = !DILocation(line: 815, column: 37, scope: !1696, inlinedAt: !1709)
!1711 = !DILocation(line: 816, column: 11, scope: !1696, inlinedAt: !1709)
!1712 = !DILocation(line: 818, column: 18, scope: !1696, inlinedAt: !1709)
!1713 = !DILocation(line: 818, column: 24, scope: !1696, inlinedAt: !1709)
!1714 = !DILocation(line: 819, column: 69, scope: !1696, inlinedAt: !1709)
!1715 = !DILocation(line: 820, column: 53, scope: !1696, inlinedAt: !1709)
!1716 = !DILocation(line: 821, column: 49, scope: !1696, inlinedAt: !1709)
!1717 = !DILocation(line: 822, column: 49, scope: !1696, inlinedAt: !1709)
!1718 = !DILocation(line: 819, column: 20, scope: !1696, inlinedAt: !1709)
!1719 = !DILocation(line: 822, column: 62, scope: !1696, inlinedAt: !1709)
!1720 = !DILocalVariable(name: "n", arg: 1, scope: !1721, file: !140, line: 216, type: !74)
!1721 = distinct !DISubprogram(name: "xcharalloc", scope: !140, file: !140, line: 216, type: !1722, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1724)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!30, !74}
!1724 = !{!1720}
!1725 = !DILocation(line: 0, scope: !1721, inlinedAt: !1726)
!1726 = distinct !DILocation(line: 823, column: 15, scope: !1696, inlinedAt: !1709)
!1727 = !DILocation(line: 218, column: 10, scope: !1721, inlinedAt: !1726)
!1728 = !DILocation(line: 824, column: 60, scope: !1696, inlinedAt: !1709)
!1729 = !DILocation(line: 826, column: 32, scope: !1696, inlinedAt: !1709)
!1730 = !DILocation(line: 826, column: 47, scope: !1696, inlinedAt: !1709)
!1731 = !DILocation(line: 824, column: 3, scope: !1696, inlinedAt: !1709)
!1732 = !DILocation(line: 827, column: 9, scope: !1696, inlinedAt: !1709)
!1733 = !DILocation(line: 802, column: 3, scope: !1687)
!1734 = !DILocation(line: 0, scope: !1696)
!1735 = !DILocation(line: 815, column: 37, scope: !1696)
!1736 = !DILocation(line: 816, column: 11, scope: !1696)
!1737 = !DILocation(line: 818, column: 18, scope: !1696)
!1738 = !DILocation(line: 818, column: 27, scope: !1696)
!1739 = !DILocation(line: 818, column: 24, scope: !1696)
!1740 = !DILocation(line: 819, column: 69, scope: !1696)
!1741 = !DILocation(line: 820, column: 53, scope: !1696)
!1742 = !DILocation(line: 821, column: 49, scope: !1696)
!1743 = !DILocation(line: 822, column: 49, scope: !1696)
!1744 = !DILocation(line: 819, column: 20, scope: !1696)
!1745 = !DILocation(line: 822, column: 62, scope: !1696)
!1746 = !DILocation(line: 0, scope: !1721, inlinedAt: !1747)
!1747 = distinct !DILocation(line: 823, column: 15, scope: !1696)
!1748 = !DILocation(line: 218, column: 10, scope: !1721, inlinedAt: !1747)
!1749 = !DILocation(line: 824, column: 60, scope: !1696)
!1750 = !DILocation(line: 826, column: 32, scope: !1696)
!1751 = !DILocation(line: 826, column: 47, scope: !1696)
!1752 = !DILocation(line: 824, column: 3, scope: !1696)
!1753 = !DILocation(line: 827, column: 9, scope: !1696)
!1754 = !DILocation(line: 828, column: 7, scope: !1696)
!1755 = !DILocation(line: 829, column: 11, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1696, file: !35, line: 828, column: 7)
!1757 = !{!1758, !1758, i64 0}
!1758 = !{!"long", !576, i64 0}
!1759 = !DILocation(line: 829, column: 5, scope: !1756)
!1760 = !DILocation(line: 830, column: 3, scope: !1696)
!1761 = distinct !DISubprogram(name: "quotearg_free", scope: !35, file: !35, line: 848, type: !739, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1762)
!1762 = !{!1763, !1764}
!1763 = !DILocalVariable(name: "sv", scope: !1761, file: !35, line: 850, type: !105)
!1764 = !DILocalVariable(name: "i", scope: !1761, file: !35, line: 851, type: !23)
!1765 = !DILocation(line: 850, column: 24, scope: !1761)
!1766 = !DILocation(line: 0, scope: !1761)
!1767 = !DILocation(line: 852, column: 19, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !35, line: 852, column: 3)
!1769 = distinct !DILexicalBlock(scope: !1761, file: !35, line: 852, column: 3)
!1770 = !DILocation(line: 852, column: 17, scope: !1768)
!1771 = !DILocation(line: 852, column: 3, scope: !1769)
!1772 = !DILocation(line: 853, column: 17, scope: !1768)
!1773 = !{!1774, !575, i64 8}
!1774 = !{!"slotvec", !1758, i64 0, !575, i64 8}
!1775 = !DILocation(line: 853, column: 5, scope: !1768)
!1776 = !DILocation(line: 852, column: 28, scope: !1768)
!1777 = distinct !{!1777, !1771, !1778, !676}
!1778 = !DILocation(line: 853, column: 20, scope: !1769)
!1779 = !DILocation(line: 854, column: 13, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1761, file: !35, line: 854, column: 7)
!1781 = !DILocation(line: 854, column: 17, scope: !1780)
!1782 = !DILocation(line: 854, column: 7, scope: !1761)
!1783 = !DILocation(line: 856, column: 7, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1780, file: !35, line: 855, column: 5)
!1785 = !DILocation(line: 857, column: 21, scope: !1784)
!1786 = !{!1774, !1758, i64 0}
!1787 = !DILocation(line: 858, column: 20, scope: !1784)
!1788 = !DILocation(line: 859, column: 5, scope: !1784)
!1789 = !DILocation(line: 860, column: 10, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1761, file: !35, line: 860, column: 7)
!1791 = !DILocation(line: 860, column: 7, scope: !1761)
!1792 = !DILocation(line: 862, column: 13, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1790, file: !35, line: 861, column: 5)
!1794 = !DILocation(line: 862, column: 7, scope: !1793)
!1795 = !DILocation(line: 863, column: 15, scope: !1793)
!1796 = !DILocation(line: 864, column: 5, scope: !1793)
!1797 = !DILocation(line: 865, column: 10, scope: !1761)
!1798 = !DILocation(line: 866, column: 1, scope: !1761)
!1799 = distinct !DISubprogram(name: "quotearg_n", scope: !35, file: !35, line: 931, type: !697, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1800)
!1800 = !{!1801, !1802}
!1801 = !DILocalVariable(name: "n", arg: 1, scope: !1799, file: !35, line: 931, type: !23)
!1802 = !DILocalVariable(name: "arg", arg: 2, scope: !1799, file: !35, line: 931, type: !6)
!1803 = !DILocation(line: 0, scope: !1799)
!1804 = !DILocation(line: 933, column: 10, scope: !1799)
!1805 = !DILocation(line: 933, column: 3, scope: !1799)
!1806 = distinct !DISubprogram(name: "quotearg_n_options", scope: !35, file: !35, line: 877, type: !1807, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1809)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!30, !23, !6, !74, !850}
!1809 = !{!1810, !1811, !1812, !1813, !1814, !1815, !1816, !1819, !1820, !1822, !1823, !1824}
!1810 = !DILocalVariable(name: "n", arg: 1, scope: !1806, file: !35, line: 877, type: !23)
!1811 = !DILocalVariable(name: "arg", arg: 2, scope: !1806, file: !35, line: 877, type: !6)
!1812 = !DILocalVariable(name: "argsize", arg: 3, scope: !1806, file: !35, line: 877, type: !74)
!1813 = !DILocalVariable(name: "options", arg: 4, scope: !1806, file: !35, line: 878, type: !850)
!1814 = !DILocalVariable(name: "e", scope: !1806, file: !35, line: 880, type: !23)
!1815 = !DILocalVariable(name: "sv", scope: !1806, file: !35, line: 882, type: !105)
!1816 = !DILocalVariable(name: "preallocated", scope: !1817, file: !35, line: 889, type: !16)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !35, line: 888, column: 5)
!1818 = distinct !DILexicalBlock(scope: !1806, file: !35, line: 887, column: 7)
!1819 = !DILocalVariable(name: "nmax", scope: !1817, file: !35, line: 890, type: !23)
!1820 = !DILocalVariable(name: "size", scope: !1821, file: !35, line: 903, type: !74)
!1821 = distinct !DILexicalBlock(scope: !1806, file: !35, line: 902, column: 3)
!1822 = !DILocalVariable(name: "val", scope: !1821, file: !35, line: 904, type: !30)
!1823 = !DILocalVariable(name: "flags", scope: !1821, file: !35, line: 906, type: !23)
!1824 = !DILocalVariable(name: "qsize", scope: !1821, file: !35, line: 907, type: !74)
!1825 = !DILocation(line: 0, scope: !1806)
!1826 = !DILocation(line: 880, column: 11, scope: !1806)
!1827 = !DILocation(line: 882, column: 24, scope: !1806)
!1828 = !DILocation(line: 884, column: 9, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1806, file: !35, line: 884, column: 7)
!1830 = !DILocation(line: 884, column: 7, scope: !1806)
!1831 = !DILocation(line: 885, column: 5, scope: !1829)
!1832 = !DILocation(line: 887, column: 7, scope: !1818)
!1833 = !DILocation(line: 887, column: 14, scope: !1818)
!1834 = !DILocation(line: 887, column: 7, scope: !1806)
!1835 = !DILocation(line: 889, column: 31, scope: !1817)
!1836 = !DILocation(line: 0, scope: !1817)
!1837 = !DILocation(line: 892, column: 16, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1817, file: !35, line: 892, column: 11)
!1839 = !DILocation(line: 892, column: 11, scope: !1817)
!1840 = !DILocation(line: 893, column: 9, scope: !1838)
!1841 = !DILocation(line: 895, column: 32, scope: !1817)
!1842 = !DILocation(line: 895, column: 61, scope: !1817)
!1843 = !DILocation(line: 895, column: 66, scope: !1817)
!1844 = !DILocation(line: 895, column: 22, scope: !1817)
!1845 = !DILocation(line: 895, column: 15, scope: !1817)
!1846 = !DILocation(line: 896, column: 11, scope: !1817)
!1847 = !DILocation(line: 897, column: 15, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1817, file: !35, line: 896, column: 11)
!1849 = !{i64 0, i64 8, !1757, i64 8, i64 8, !574}
!1850 = !DILocation(line: 897, column: 9, scope: !1848)
!1851 = !DILocation(line: 898, column: 20, scope: !1817)
!1852 = !DILocation(line: 898, column: 18, scope: !1817)
!1853 = !DILocation(line: 898, column: 15, scope: !1817)
!1854 = !DILocation(line: 898, column: 38, scope: !1817)
!1855 = !DILocation(line: 898, column: 31, scope: !1817)
!1856 = !DILocation(line: 898, column: 48, scope: !1817)
!1857 = !DILocation(line: 0, scope: !1248, inlinedAt: !1858)
!1858 = distinct !DILocation(line: 898, column: 7, scope: !1817)
!1859 = !DILocation(line: 59, column: 10, scope: !1248, inlinedAt: !1858)
!1860 = !DILocation(line: 899, column: 14, scope: !1817)
!1861 = !DILocation(line: 900, column: 5, scope: !1817)
!1862 = !DILocation(line: 903, column: 19, scope: !1821)
!1863 = !DILocation(line: 903, column: 25, scope: !1821)
!1864 = !DILocation(line: 0, scope: !1821)
!1865 = !DILocation(line: 904, column: 23, scope: !1821)
!1866 = !DILocation(line: 906, column: 26, scope: !1821)
!1867 = !DILocation(line: 906, column: 32, scope: !1821)
!1868 = !DILocation(line: 908, column: 55, scope: !1821)
!1869 = !DILocation(line: 909, column: 46, scope: !1821)
!1870 = !DILocation(line: 910, column: 55, scope: !1821)
!1871 = !DILocation(line: 911, column: 55, scope: !1821)
!1872 = !DILocation(line: 907, column: 20, scope: !1821)
!1873 = !DILocation(line: 913, column: 14, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1821, file: !35, line: 913, column: 9)
!1875 = !DILocation(line: 913, column: 9, scope: !1821)
!1876 = !DILocation(line: 915, column: 35, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1874, file: !35, line: 914, column: 7)
!1878 = !DILocation(line: 915, column: 20, scope: !1877)
!1879 = !DILocation(line: 916, column: 17, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1877, file: !35, line: 916, column: 13)
!1881 = !DILocation(line: 916, column: 13, scope: !1877)
!1882 = !DILocation(line: 917, column: 11, scope: !1880)
!1883 = !DILocation(line: 0, scope: !1721, inlinedAt: !1884)
!1884 = distinct !DILocation(line: 918, column: 27, scope: !1877)
!1885 = !DILocation(line: 218, column: 10, scope: !1721, inlinedAt: !1884)
!1886 = !DILocation(line: 918, column: 19, scope: !1877)
!1887 = !DILocation(line: 919, column: 69, scope: !1877)
!1888 = !DILocation(line: 921, column: 44, scope: !1877)
!1889 = !DILocation(line: 922, column: 44, scope: !1877)
!1890 = !DILocation(line: 919, column: 9, scope: !1877)
!1891 = !DILocation(line: 923, column: 7, scope: !1877)
!1892 = !DILocation(line: 925, column: 11, scope: !1821)
!1893 = !DILocation(line: 926, column: 5, scope: !1821)
!1894 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !35, file: !35, line: 937, type: !1895, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1897)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!30, !23, !6, !74}
!1897 = !{!1898, !1899, !1900}
!1898 = !DILocalVariable(name: "n", arg: 1, scope: !1894, file: !35, line: 937, type: !23)
!1899 = !DILocalVariable(name: "arg", arg: 2, scope: !1894, file: !35, line: 937, type: !6)
!1900 = !DILocalVariable(name: "argsize", arg: 3, scope: !1894, file: !35, line: 937, type: !74)
!1901 = !DILocation(line: 0, scope: !1894)
!1902 = !DILocation(line: 939, column: 10, scope: !1894)
!1903 = !DILocation(line: 939, column: 3, scope: !1894)
!1904 = distinct !DISubprogram(name: "quotearg", scope: !35, file: !35, line: 943, type: !732, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1905)
!1905 = !{!1906}
!1906 = !DILocalVariable(name: "arg", arg: 1, scope: !1904, file: !35, line: 943, type: !6)
!1907 = !DILocation(line: 0, scope: !1904)
!1908 = !DILocation(line: 0, scope: !1799, inlinedAt: !1909)
!1909 = distinct !DILocation(line: 945, column: 10, scope: !1904)
!1910 = !DILocation(line: 933, column: 10, scope: !1799, inlinedAt: !1909)
!1911 = !DILocation(line: 945, column: 3, scope: !1904)
!1912 = distinct !DISubprogram(name: "quotearg_mem", scope: !35, file: !35, line: 949, type: !1913, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1915)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!30, !6, !74}
!1915 = !{!1916, !1917}
!1916 = !DILocalVariable(name: "arg", arg: 1, scope: !1912, file: !35, line: 949, type: !6)
!1917 = !DILocalVariable(name: "argsize", arg: 2, scope: !1912, file: !35, line: 949, type: !74)
!1918 = !DILocation(line: 0, scope: !1912)
!1919 = !DILocation(line: 0, scope: !1894, inlinedAt: !1920)
!1920 = distinct !DILocation(line: 951, column: 10, scope: !1912)
!1921 = !DILocation(line: 939, column: 10, scope: !1894, inlinedAt: !1920)
!1922 = !DILocation(line: 951, column: 3, scope: !1912)
!1923 = distinct !DISubprogram(name: "quotearg_n_style", scope: !35, file: !35, line: 955, type: !1924, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1926)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!30, !23, !37, !6}
!1926 = !{!1927, !1928, !1929, !1930}
!1927 = !DILocalVariable(name: "n", arg: 1, scope: !1923, file: !35, line: 955, type: !23)
!1928 = !DILocalVariable(name: "s", arg: 2, scope: !1923, file: !35, line: 955, type: !37)
!1929 = !DILocalVariable(name: "arg", arg: 3, scope: !1923, file: !35, line: 955, type: !6)
!1930 = !DILocalVariable(name: "o", scope: !1923, file: !35, line: 957, type: !851)
!1931 = !DILocation(line: 0, scope: !1923)
!1932 = !DILocation(line: 957, column: 3, scope: !1923)
!1933 = !DILocation(line: 957, column: 32, scope: !1923)
!1934 = !{!1935}
!1935 = distinct !{!1935, !1936, !"quoting_options_from_style: argument 0"}
!1936 = distinct !{!1936, !"quoting_options_from_style"}
!1937 = !DILocation(line: 957, column: 36, scope: !1923)
!1938 = !DILocalVariable(name: "style", arg: 1, scope: !1939, file: !35, line: 193, type: !37)
!1939 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !35, file: !35, line: 193, type: !1940, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1942)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!86, !37}
!1942 = !{!1938, !1943}
!1943 = !DILocalVariable(name: "o", scope: !1939, file: !35, line: 195, type: !86)
!1944 = !DILocation(line: 0, scope: !1939, inlinedAt: !1945)
!1945 = distinct !DILocation(line: 957, column: 36, scope: !1923)
!1946 = !DILocation(line: 195, column: 26, scope: !1939, inlinedAt: !1945)
!1947 = !DILocation(line: 196, column: 13, scope: !1948, inlinedAt: !1945)
!1948 = distinct !DILexicalBlock(scope: !1939, file: !35, line: 196, column: 7)
!1949 = !DILocation(line: 196, column: 7, scope: !1939, inlinedAt: !1945)
!1950 = !DILocation(line: 197, column: 5, scope: !1948, inlinedAt: !1945)
!1951 = !DILocation(line: 198, column: 5, scope: !1939, inlinedAt: !1945)
!1952 = !DILocation(line: 198, column: 11, scope: !1939, inlinedAt: !1945)
!1953 = !DILocation(line: 958, column: 10, scope: !1923)
!1954 = !DILocation(line: 959, column: 1, scope: !1923)
!1955 = !DILocation(line: 958, column: 3, scope: !1923)
!1956 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !35, file: !35, line: 962, type: !1957, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1959)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!30, !23, !37, !6, !74}
!1959 = !{!1960, !1961, !1962, !1963, !1964}
!1960 = !DILocalVariable(name: "n", arg: 1, scope: !1956, file: !35, line: 962, type: !23)
!1961 = !DILocalVariable(name: "s", arg: 2, scope: !1956, file: !35, line: 962, type: !37)
!1962 = !DILocalVariable(name: "arg", arg: 3, scope: !1956, file: !35, line: 963, type: !6)
!1963 = !DILocalVariable(name: "argsize", arg: 4, scope: !1956, file: !35, line: 963, type: !74)
!1964 = !DILocalVariable(name: "o", scope: !1956, file: !35, line: 965, type: !851)
!1965 = !DILocation(line: 0, scope: !1956)
!1966 = !DILocation(line: 965, column: 3, scope: !1956)
!1967 = !DILocation(line: 965, column: 32, scope: !1956)
!1968 = !{!1969}
!1969 = distinct !{!1969, !1970, !"quoting_options_from_style: argument 0"}
!1970 = distinct !{!1970, !"quoting_options_from_style"}
!1971 = !DILocation(line: 965, column: 36, scope: !1956)
!1972 = !DILocation(line: 0, scope: !1939, inlinedAt: !1973)
!1973 = distinct !DILocation(line: 965, column: 36, scope: !1956)
!1974 = !DILocation(line: 195, column: 26, scope: !1939, inlinedAt: !1973)
!1975 = !DILocation(line: 196, column: 13, scope: !1948, inlinedAt: !1973)
!1976 = !DILocation(line: 196, column: 7, scope: !1939, inlinedAt: !1973)
!1977 = !DILocation(line: 197, column: 5, scope: !1948, inlinedAt: !1973)
!1978 = !DILocation(line: 198, column: 5, scope: !1939, inlinedAt: !1973)
!1979 = !DILocation(line: 198, column: 11, scope: !1939, inlinedAt: !1973)
!1980 = !DILocation(line: 966, column: 10, scope: !1956)
!1981 = !DILocation(line: 967, column: 1, scope: !1956)
!1982 = !DILocation(line: 966, column: 3, scope: !1956)
!1983 = distinct !DISubprogram(name: "quotearg_style", scope: !35, file: !35, line: 970, type: !1984, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1986)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!30, !37, !6}
!1986 = !{!1987, !1988}
!1987 = !DILocalVariable(name: "s", arg: 1, scope: !1983, file: !35, line: 970, type: !37)
!1988 = !DILocalVariable(name: "arg", arg: 2, scope: !1983, file: !35, line: 970, type: !6)
!1989 = !DILocation(line: 0, scope: !1983)
!1990 = !DILocation(line: 0, scope: !1923, inlinedAt: !1991)
!1991 = distinct !DILocation(line: 972, column: 10, scope: !1983)
!1992 = !DILocation(line: 957, column: 3, scope: !1923, inlinedAt: !1991)
!1993 = !DILocation(line: 957, column: 32, scope: !1923, inlinedAt: !1991)
!1994 = !{!1995}
!1995 = distinct !{!1995, !1996, !"quoting_options_from_style: argument 0"}
!1996 = distinct !{!1996, !"quoting_options_from_style"}
!1997 = !DILocation(line: 957, column: 36, scope: !1923, inlinedAt: !1991)
!1998 = !DILocation(line: 0, scope: !1939, inlinedAt: !1999)
!1999 = distinct !DILocation(line: 957, column: 36, scope: !1923, inlinedAt: !1991)
!2000 = !DILocation(line: 195, column: 26, scope: !1939, inlinedAt: !1999)
!2001 = !DILocation(line: 196, column: 13, scope: !1948, inlinedAt: !1999)
!2002 = !DILocation(line: 196, column: 7, scope: !1939, inlinedAt: !1999)
!2003 = !DILocation(line: 197, column: 5, scope: !1948, inlinedAt: !1999)
!2004 = !DILocation(line: 198, column: 5, scope: !1939, inlinedAt: !1999)
!2005 = !DILocation(line: 198, column: 11, scope: !1939, inlinedAt: !1999)
!2006 = !DILocation(line: 958, column: 10, scope: !1923, inlinedAt: !1991)
!2007 = !DILocation(line: 959, column: 1, scope: !1923, inlinedAt: !1991)
!2008 = !DILocation(line: 972, column: 3, scope: !1983)
!2009 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !35, file: !35, line: 976, type: !2010, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2012)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!30, !37, !6, !74}
!2012 = !{!2013, !2014, !2015}
!2013 = !DILocalVariable(name: "s", arg: 1, scope: !2009, file: !35, line: 976, type: !37)
!2014 = !DILocalVariable(name: "arg", arg: 2, scope: !2009, file: !35, line: 976, type: !6)
!2015 = !DILocalVariable(name: "argsize", arg: 3, scope: !2009, file: !35, line: 976, type: !74)
!2016 = !DILocation(line: 0, scope: !2009)
!2017 = !DILocation(line: 0, scope: !1956, inlinedAt: !2018)
!2018 = distinct !DILocation(line: 978, column: 10, scope: !2009)
!2019 = !DILocation(line: 965, column: 3, scope: !1956, inlinedAt: !2018)
!2020 = !DILocation(line: 965, column: 32, scope: !1956, inlinedAt: !2018)
!2021 = !{!2022}
!2022 = distinct !{!2022, !2023, !"quoting_options_from_style: argument 0"}
!2023 = distinct !{!2023, !"quoting_options_from_style"}
!2024 = !DILocation(line: 965, column: 36, scope: !1956, inlinedAt: !2018)
!2025 = !DILocation(line: 0, scope: !1939, inlinedAt: !2026)
!2026 = distinct !DILocation(line: 965, column: 36, scope: !1956, inlinedAt: !2018)
!2027 = !DILocation(line: 195, column: 26, scope: !1939, inlinedAt: !2026)
!2028 = !DILocation(line: 196, column: 13, scope: !1948, inlinedAt: !2026)
!2029 = !DILocation(line: 196, column: 7, scope: !1939, inlinedAt: !2026)
!2030 = !DILocation(line: 197, column: 5, scope: !1948, inlinedAt: !2026)
!2031 = !DILocation(line: 198, column: 5, scope: !1939, inlinedAt: !2026)
!2032 = !DILocation(line: 198, column: 11, scope: !1939, inlinedAt: !2026)
!2033 = !DILocation(line: 966, column: 10, scope: !1956, inlinedAt: !2018)
!2034 = !DILocation(line: 967, column: 1, scope: !1956, inlinedAt: !2018)
!2035 = !DILocation(line: 978, column: 3, scope: !2009)
!2036 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !35, file: !35, line: 982, type: !2037, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2039)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!30, !6, !74, !8}
!2039 = !{!2040, !2041, !2042, !2043}
!2040 = !DILocalVariable(name: "arg", arg: 1, scope: !2036, file: !35, line: 982, type: !6)
!2041 = !DILocalVariable(name: "argsize", arg: 2, scope: !2036, file: !35, line: 982, type: !74)
!2042 = !DILocalVariable(name: "ch", arg: 3, scope: !2036, file: !35, line: 982, type: !8)
!2043 = !DILocalVariable(name: "options", scope: !2036, file: !35, line: 984, type: !86)
!2044 = !DILocation(line: 0, scope: !2036)
!2045 = !DILocation(line: 984, column: 3, scope: !2036)
!2046 = !DILocation(line: 984, column: 26, scope: !2036)
!2047 = !DILocation(line: 985, column: 13, scope: !2036)
!2048 = !{i64 0, i64 4, !1057, i64 4, i64 4, !770, i64 8, i64 32, !1057, i64 40, i64 8, !574, i64 48, i64 8, !574}
!2049 = !DILocation(line: 0, scope: !871, inlinedAt: !2050)
!2050 = distinct !DILocation(line: 986, column: 3, scope: !2036)
!2051 = !DILocation(line: 156, column: 62, scope: !871, inlinedAt: !2050)
!2052 = !DILocation(line: 156, column: 57, scope: !871, inlinedAt: !2050)
!2053 = !DILocation(line: 157, column: 15, scope: !871, inlinedAt: !2050)
!2054 = !DILocation(line: 158, column: 12, scope: !871, inlinedAt: !2050)
!2055 = !DILocation(line: 158, column: 15, scope: !871, inlinedAt: !2050)
!2056 = !DILocation(line: 158, column: 25, scope: !871, inlinedAt: !2050)
!2057 = !DILocation(line: 159, column: 18, scope: !871, inlinedAt: !2050)
!2058 = !DILocation(line: 159, column: 23, scope: !871, inlinedAt: !2050)
!2059 = !DILocation(line: 159, column: 6, scope: !871, inlinedAt: !2050)
!2060 = !DILocation(line: 987, column: 10, scope: !2036)
!2061 = !DILocation(line: 988, column: 1, scope: !2036)
!2062 = !DILocation(line: 987, column: 3, scope: !2036)
!2063 = distinct !DISubprogram(name: "quotearg_char", scope: !35, file: !35, line: 991, type: !2064, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2066)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!30, !6, !8}
!2066 = !{!2067, !2068}
!2067 = !DILocalVariable(name: "arg", arg: 1, scope: !2063, file: !35, line: 991, type: !6)
!2068 = !DILocalVariable(name: "ch", arg: 2, scope: !2063, file: !35, line: 991, type: !8)
!2069 = !DILocation(line: 0, scope: !2063)
!2070 = !DILocation(line: 0, scope: !2036, inlinedAt: !2071)
!2071 = distinct !DILocation(line: 993, column: 10, scope: !2063)
!2072 = !DILocation(line: 984, column: 3, scope: !2036, inlinedAt: !2071)
!2073 = !DILocation(line: 984, column: 26, scope: !2036, inlinedAt: !2071)
!2074 = !DILocation(line: 985, column: 13, scope: !2036, inlinedAt: !2071)
!2075 = !DILocation(line: 0, scope: !871, inlinedAt: !2076)
!2076 = distinct !DILocation(line: 986, column: 3, scope: !2036, inlinedAt: !2071)
!2077 = !DILocation(line: 156, column: 62, scope: !871, inlinedAt: !2076)
!2078 = !DILocation(line: 156, column: 57, scope: !871, inlinedAt: !2076)
!2079 = !DILocation(line: 157, column: 15, scope: !871, inlinedAt: !2076)
!2080 = !DILocation(line: 158, column: 12, scope: !871, inlinedAt: !2076)
!2081 = !DILocation(line: 158, column: 15, scope: !871, inlinedAt: !2076)
!2082 = !DILocation(line: 158, column: 25, scope: !871, inlinedAt: !2076)
!2083 = !DILocation(line: 159, column: 18, scope: !871, inlinedAt: !2076)
!2084 = !DILocation(line: 159, column: 23, scope: !871, inlinedAt: !2076)
!2085 = !DILocation(line: 159, column: 6, scope: !871, inlinedAt: !2076)
!2086 = !DILocation(line: 987, column: 10, scope: !2036, inlinedAt: !2071)
!2087 = !DILocation(line: 988, column: 1, scope: !2036, inlinedAt: !2071)
!2088 = !DILocation(line: 993, column: 3, scope: !2063)
!2089 = distinct !DISubprogram(name: "quotearg_colon", scope: !35, file: !35, line: 997, type: !732, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2090)
!2090 = !{!2091}
!2091 = !DILocalVariable(name: "arg", arg: 1, scope: !2089, file: !35, line: 997, type: !6)
!2092 = !DILocation(line: 0, scope: !2089)
!2093 = !DILocation(line: 0, scope: !2063, inlinedAt: !2094)
!2094 = distinct !DILocation(line: 999, column: 10, scope: !2089)
!2095 = !DILocation(line: 0, scope: !2036, inlinedAt: !2096)
!2096 = distinct !DILocation(line: 993, column: 10, scope: !2063, inlinedAt: !2094)
!2097 = !DILocation(line: 984, column: 3, scope: !2036, inlinedAt: !2096)
!2098 = !DILocation(line: 984, column: 26, scope: !2036, inlinedAt: !2096)
!2099 = !DILocation(line: 985, column: 13, scope: !2036, inlinedAt: !2096)
!2100 = !DILocation(line: 0, scope: !871, inlinedAt: !2101)
!2101 = distinct !DILocation(line: 986, column: 3, scope: !2036, inlinedAt: !2096)
!2102 = !DILocation(line: 156, column: 57, scope: !871, inlinedAt: !2101)
!2103 = !DILocation(line: 158, column: 12, scope: !871, inlinedAt: !2101)
!2104 = !DILocation(line: 159, column: 6, scope: !871, inlinedAt: !2101)
!2105 = !DILocation(line: 987, column: 10, scope: !2036, inlinedAt: !2096)
!2106 = !DILocation(line: 988, column: 1, scope: !2036, inlinedAt: !2096)
!2107 = !DILocation(line: 999, column: 3, scope: !2089)
!2108 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !35, file: !35, line: 1003, type: !1913, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2109)
!2109 = !{!2110, !2111}
!2110 = !DILocalVariable(name: "arg", arg: 1, scope: !2108, file: !35, line: 1003, type: !6)
!2111 = !DILocalVariable(name: "argsize", arg: 2, scope: !2108, file: !35, line: 1003, type: !74)
!2112 = !DILocation(line: 0, scope: !2108)
!2113 = !DILocation(line: 0, scope: !2036, inlinedAt: !2114)
!2114 = distinct !DILocation(line: 1005, column: 10, scope: !2108)
!2115 = !DILocation(line: 984, column: 3, scope: !2036, inlinedAt: !2114)
!2116 = !DILocation(line: 984, column: 26, scope: !2036, inlinedAt: !2114)
!2117 = !DILocation(line: 985, column: 13, scope: !2036, inlinedAt: !2114)
!2118 = !DILocation(line: 0, scope: !871, inlinedAt: !2119)
!2119 = distinct !DILocation(line: 986, column: 3, scope: !2036, inlinedAt: !2114)
!2120 = !DILocation(line: 156, column: 57, scope: !871, inlinedAt: !2119)
!2121 = !DILocation(line: 158, column: 12, scope: !871, inlinedAt: !2119)
!2122 = !DILocation(line: 159, column: 6, scope: !871, inlinedAt: !2119)
!2123 = !DILocation(line: 987, column: 10, scope: !2036, inlinedAt: !2114)
!2124 = !DILocation(line: 988, column: 1, scope: !2036, inlinedAt: !2114)
!2125 = !DILocation(line: 1005, column: 3, scope: !2108)
!2126 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !35, file: !35, line: 1009, type: !1924, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2127)
!2127 = !{!2128, !2129, !2130, !2131}
!2128 = !DILocalVariable(name: "n", arg: 1, scope: !2126, file: !35, line: 1009, type: !23)
!2129 = !DILocalVariable(name: "s", arg: 2, scope: !2126, file: !35, line: 1009, type: !37)
!2130 = !DILocalVariable(name: "arg", arg: 3, scope: !2126, file: !35, line: 1009, type: !6)
!2131 = !DILocalVariable(name: "options", scope: !2126, file: !35, line: 1011, type: !86)
!2132 = !DILocation(line: 195, column: 26, scope: !1939, inlinedAt: !2133)
!2133 = distinct !DILocation(line: 1012, column: 13, scope: !2126)
!2134 = !DILocation(line: 0, scope: !2126)
!2135 = !DILocation(line: 1011, column: 3, scope: !2126)
!2136 = !DILocation(line: 1011, column: 26, scope: !2126)
!2137 = !DILocation(line: 1012, column: 13, scope: !2126)
!2138 = !{!2139}
!2139 = distinct !{!2139, !2140, !"quoting_options_from_style: argument 0"}
!2140 = distinct !{!2140, !"quoting_options_from_style"}
!2141 = !DILocation(line: 0, scope: !1939, inlinedAt: !2133)
!2142 = !DILocation(line: 196, column: 13, scope: !1948, inlinedAt: !2133)
!2143 = !DILocation(line: 196, column: 7, scope: !1939, inlinedAt: !2133)
!2144 = !DILocation(line: 197, column: 5, scope: !1948, inlinedAt: !2133)
!2145 = !{i64 0, i64 4, !770, i64 4, i64 32, !1057, i64 36, i64 8, !574, i64 44, i64 8, !574}
!2146 = !DILocation(line: 0, scope: !871, inlinedAt: !2147)
!2147 = distinct !DILocation(line: 1013, column: 3, scope: !2126)
!2148 = !DILocation(line: 156, column: 57, scope: !871, inlinedAt: !2147)
!2149 = !DILocation(line: 158, column: 12, scope: !871, inlinedAt: !2147)
!2150 = !DILocation(line: 159, column: 6, scope: !871, inlinedAt: !2147)
!2151 = !DILocation(line: 1014, column: 10, scope: !2126)
!2152 = !DILocation(line: 1015, column: 1, scope: !2126)
!2153 = !DILocation(line: 1014, column: 3, scope: !2126)
!2154 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !35, file: !35, line: 1018, type: !2155, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2157)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!30, !23, !6, !6, !6}
!2157 = !{!2158, !2159, !2160, !2161}
!2158 = !DILocalVariable(name: "n", arg: 1, scope: !2154, file: !35, line: 1018, type: !23)
!2159 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2154, file: !35, line: 1018, type: !6)
!2160 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2154, file: !35, line: 1019, type: !6)
!2161 = !DILocalVariable(name: "arg", arg: 4, scope: !2154, file: !35, line: 1019, type: !6)
!2162 = !DILocation(line: 0, scope: !2154)
!2163 = !DILocalVariable(name: "n", arg: 1, scope: !2164, file: !35, line: 1026, type: !23)
!2164 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !35, file: !35, line: 1026, type: !2165, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2167)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!30, !23, !6, !6, !6, !74}
!2167 = !{!2163, !2168, !2169, !2170, !2171, !2172}
!2168 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2164, file: !35, line: 1026, type: !6)
!2169 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2164, file: !35, line: 1027, type: !6)
!2170 = !DILocalVariable(name: "arg", arg: 4, scope: !2164, file: !35, line: 1028, type: !6)
!2171 = !DILocalVariable(name: "argsize", arg: 5, scope: !2164, file: !35, line: 1028, type: !74)
!2172 = !DILocalVariable(name: "o", scope: !2164, file: !35, line: 1030, type: !86)
!2173 = !DILocation(line: 0, scope: !2164, inlinedAt: !2174)
!2174 = distinct !DILocation(line: 1021, column: 10, scope: !2154)
!2175 = !DILocation(line: 1030, column: 3, scope: !2164, inlinedAt: !2174)
!2176 = !DILocation(line: 1030, column: 26, scope: !2164, inlinedAt: !2174)
!2177 = !DILocation(line: 1030, column: 30, scope: !2164, inlinedAt: !2174)
!2178 = !DILocation(line: 0, scope: !912, inlinedAt: !2179)
!2179 = distinct !DILocation(line: 1031, column: 3, scope: !2164, inlinedAt: !2174)
!2180 = !DILocation(line: 184, column: 6, scope: !912, inlinedAt: !2179)
!2181 = !DILocation(line: 184, column: 12, scope: !912, inlinedAt: !2179)
!2182 = !DILocation(line: 185, column: 8, scope: !926, inlinedAt: !2179)
!2183 = !DILocation(line: 185, column: 19, scope: !926, inlinedAt: !2179)
!2184 = !DILocation(line: 186, column: 5, scope: !926, inlinedAt: !2179)
!2185 = !DILocation(line: 187, column: 6, scope: !912, inlinedAt: !2179)
!2186 = !DILocation(line: 187, column: 17, scope: !912, inlinedAt: !2179)
!2187 = !DILocation(line: 188, column: 6, scope: !912, inlinedAt: !2179)
!2188 = !DILocation(line: 188, column: 18, scope: !912, inlinedAt: !2179)
!2189 = !DILocation(line: 1032, column: 10, scope: !2164, inlinedAt: !2174)
!2190 = !DILocation(line: 1033, column: 1, scope: !2164, inlinedAt: !2174)
!2191 = !DILocation(line: 1021, column: 3, scope: !2154)
!2192 = !DILocation(line: 0, scope: !2164)
!2193 = !DILocation(line: 1030, column: 3, scope: !2164)
!2194 = !DILocation(line: 1030, column: 26, scope: !2164)
!2195 = !DILocation(line: 1030, column: 30, scope: !2164)
!2196 = !DILocation(line: 0, scope: !912, inlinedAt: !2197)
!2197 = distinct !DILocation(line: 1031, column: 3, scope: !2164)
!2198 = !DILocation(line: 184, column: 6, scope: !912, inlinedAt: !2197)
!2199 = !DILocation(line: 184, column: 12, scope: !912, inlinedAt: !2197)
!2200 = !DILocation(line: 185, column: 8, scope: !926, inlinedAt: !2197)
!2201 = !DILocation(line: 185, column: 19, scope: !926, inlinedAt: !2197)
!2202 = !DILocation(line: 186, column: 5, scope: !926, inlinedAt: !2197)
!2203 = !DILocation(line: 187, column: 6, scope: !912, inlinedAt: !2197)
!2204 = !DILocation(line: 187, column: 17, scope: !912, inlinedAt: !2197)
!2205 = !DILocation(line: 188, column: 6, scope: !912, inlinedAt: !2197)
!2206 = !DILocation(line: 188, column: 18, scope: !912, inlinedAt: !2197)
!2207 = !DILocation(line: 1032, column: 10, scope: !2164)
!2208 = !DILocation(line: 1033, column: 1, scope: !2164)
!2209 = !DILocation(line: 1032, column: 3, scope: !2164)
!2210 = distinct !DISubprogram(name: "quotearg_custom", scope: !35, file: !35, line: 1036, type: !2211, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2213)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!30, !6, !6, !6}
!2213 = !{!2214, !2215, !2216}
!2214 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2210, file: !35, line: 1036, type: !6)
!2215 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2210, file: !35, line: 1036, type: !6)
!2216 = !DILocalVariable(name: "arg", arg: 3, scope: !2210, file: !35, line: 1037, type: !6)
!2217 = !DILocation(line: 0, scope: !2210)
!2218 = !DILocation(line: 0, scope: !2154, inlinedAt: !2219)
!2219 = distinct !DILocation(line: 1039, column: 10, scope: !2210)
!2220 = !DILocation(line: 0, scope: !2164, inlinedAt: !2221)
!2221 = distinct !DILocation(line: 1021, column: 10, scope: !2154, inlinedAt: !2219)
!2222 = !DILocation(line: 1030, column: 3, scope: !2164, inlinedAt: !2221)
!2223 = !DILocation(line: 1030, column: 26, scope: !2164, inlinedAt: !2221)
!2224 = !DILocation(line: 1030, column: 30, scope: !2164, inlinedAt: !2221)
!2225 = !DILocation(line: 0, scope: !912, inlinedAt: !2226)
!2226 = distinct !DILocation(line: 1031, column: 3, scope: !2164, inlinedAt: !2221)
!2227 = !DILocation(line: 184, column: 6, scope: !912, inlinedAt: !2226)
!2228 = !DILocation(line: 184, column: 12, scope: !912, inlinedAt: !2226)
!2229 = !DILocation(line: 185, column: 8, scope: !926, inlinedAt: !2226)
!2230 = !DILocation(line: 185, column: 19, scope: !926, inlinedAt: !2226)
!2231 = !DILocation(line: 186, column: 5, scope: !926, inlinedAt: !2226)
!2232 = !DILocation(line: 187, column: 6, scope: !912, inlinedAt: !2226)
!2233 = !DILocation(line: 187, column: 17, scope: !912, inlinedAt: !2226)
!2234 = !DILocation(line: 188, column: 6, scope: !912, inlinedAt: !2226)
!2235 = !DILocation(line: 188, column: 18, scope: !912, inlinedAt: !2226)
!2236 = !DILocation(line: 1032, column: 10, scope: !2164, inlinedAt: !2221)
!2237 = !DILocation(line: 1033, column: 1, scope: !2164, inlinedAt: !2221)
!2238 = !DILocation(line: 1039, column: 3, scope: !2210)
!2239 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !35, file: !35, line: 1043, type: !2240, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2242)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!30, !6, !6, !6, !74}
!2242 = !{!2243, !2244, !2245, !2246}
!2243 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2239, file: !35, line: 1043, type: !6)
!2244 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2239, file: !35, line: 1043, type: !6)
!2245 = !DILocalVariable(name: "arg", arg: 3, scope: !2239, file: !35, line: 1044, type: !6)
!2246 = !DILocalVariable(name: "argsize", arg: 4, scope: !2239, file: !35, line: 1044, type: !74)
!2247 = !DILocation(line: 0, scope: !2239)
!2248 = !DILocation(line: 0, scope: !2164, inlinedAt: !2249)
!2249 = distinct !DILocation(line: 1046, column: 10, scope: !2239)
!2250 = !DILocation(line: 1030, column: 3, scope: !2164, inlinedAt: !2249)
!2251 = !DILocation(line: 1030, column: 26, scope: !2164, inlinedAt: !2249)
!2252 = !DILocation(line: 1030, column: 30, scope: !2164, inlinedAt: !2249)
!2253 = !DILocation(line: 0, scope: !912, inlinedAt: !2254)
!2254 = distinct !DILocation(line: 1031, column: 3, scope: !2164, inlinedAt: !2249)
!2255 = !DILocation(line: 184, column: 6, scope: !912, inlinedAt: !2254)
!2256 = !DILocation(line: 184, column: 12, scope: !912, inlinedAt: !2254)
!2257 = !DILocation(line: 185, column: 8, scope: !926, inlinedAt: !2254)
!2258 = !DILocation(line: 185, column: 19, scope: !926, inlinedAt: !2254)
!2259 = !DILocation(line: 186, column: 5, scope: !926, inlinedAt: !2254)
!2260 = !DILocation(line: 187, column: 6, scope: !912, inlinedAt: !2254)
!2261 = !DILocation(line: 187, column: 17, scope: !912, inlinedAt: !2254)
!2262 = !DILocation(line: 188, column: 6, scope: !912, inlinedAt: !2254)
!2263 = !DILocation(line: 188, column: 18, scope: !912, inlinedAt: !2254)
!2264 = !DILocation(line: 1032, column: 10, scope: !2164, inlinedAt: !2249)
!2265 = !DILocation(line: 1033, column: 1, scope: !2164, inlinedAt: !2249)
!2266 = !DILocation(line: 1046, column: 3, scope: !2239)
!2267 = distinct !DISubprogram(name: "quote_n_mem", scope: !35, file: !35, line: 1061, type: !2268, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2270)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!6, !23, !6, !74}
!2270 = !{!2271, !2272, !2273}
!2271 = !DILocalVariable(name: "n", arg: 1, scope: !2267, file: !35, line: 1061, type: !23)
!2272 = !DILocalVariable(name: "arg", arg: 2, scope: !2267, file: !35, line: 1061, type: !6)
!2273 = !DILocalVariable(name: "argsize", arg: 3, scope: !2267, file: !35, line: 1061, type: !74)
!2274 = !DILocation(line: 0, scope: !2267)
!2275 = !DILocation(line: 1063, column: 10, scope: !2267)
!2276 = !DILocation(line: 1063, column: 3, scope: !2267)
!2277 = distinct !DISubprogram(name: "quote_mem", scope: !35, file: !35, line: 1067, type: !2278, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2280)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{!6, !6, !74}
!2280 = !{!2281, !2282}
!2281 = !DILocalVariable(name: "arg", arg: 1, scope: !2277, file: !35, line: 1067, type: !6)
!2282 = !DILocalVariable(name: "argsize", arg: 2, scope: !2277, file: !35, line: 1067, type: !74)
!2283 = !DILocation(line: 0, scope: !2277)
!2284 = !DILocation(line: 0, scope: !2267, inlinedAt: !2285)
!2285 = distinct !DILocation(line: 1069, column: 10, scope: !2277)
!2286 = !DILocation(line: 1063, column: 10, scope: !2267, inlinedAt: !2285)
!2287 = !DILocation(line: 1069, column: 3, scope: !2277)
!2288 = distinct !DISubprogram(name: "quote_n", scope: !35, file: !35, line: 1073, type: !2289, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2291)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!6, !23, !6}
!2291 = !{!2292, !2293}
!2292 = !DILocalVariable(name: "n", arg: 1, scope: !2288, file: !35, line: 1073, type: !23)
!2293 = !DILocalVariable(name: "arg", arg: 2, scope: !2288, file: !35, line: 1073, type: !6)
!2294 = !DILocation(line: 0, scope: !2288)
!2295 = !DILocation(line: 0, scope: !2267, inlinedAt: !2296)
!2296 = distinct !DILocation(line: 1075, column: 10, scope: !2288)
!2297 = !DILocation(line: 1063, column: 10, scope: !2267, inlinedAt: !2296)
!2298 = !DILocation(line: 1075, column: 3, scope: !2288)
!2299 = distinct !DISubprogram(name: "quote", scope: !35, file: !35, line: 1079, type: !2300, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2302)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!6, !6}
!2302 = !{!2303}
!2303 = !DILocalVariable(name: "arg", arg: 1, scope: !2299, file: !35, line: 1079, type: !6)
!2304 = !DILocation(line: 0, scope: !2299)
!2305 = !DILocation(line: 0, scope: !2288, inlinedAt: !2306)
!2306 = distinct !DILocation(line: 1081, column: 10, scope: !2299)
!2307 = !DILocation(line: 0, scope: !2267, inlinedAt: !2308)
!2308 = distinct !DILocation(line: 1075, column: 10, scope: !2288, inlinedAt: !2306)
!2309 = !DILocation(line: 1063, column: 10, scope: !2267, inlinedAt: !2308)
!2310 = !DILocation(line: 1081, column: 3, scope: !2299)
!2311 = distinct !DISubprogram(name: "version_etc_arn", scope: !130, file: !130, line: 61, type: !2312, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !129, retainedNodes: !2350)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{null, !2314, !6, !6, !6, !2349, !74}
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2316, line: 7, baseType: !2317)
!2316 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !594, line: 49, size: 1728, elements: !2318)
!2318 = !{!2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2317, file: !594, line: 51, baseType: !23, size: 32)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2317, file: !594, line: 54, baseType: !30, size: 64, offset: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2317, file: !594, line: 55, baseType: !30, size: 64, offset: 128)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2317, file: !594, line: 56, baseType: !30, size: 64, offset: 192)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2317, file: !594, line: 57, baseType: !30, size: 64, offset: 256)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2317, file: !594, line: 58, baseType: !30, size: 64, offset: 320)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2317, file: !594, line: 59, baseType: !30, size: 64, offset: 384)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2317, file: !594, line: 60, baseType: !30, size: 64, offset: 448)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2317, file: !594, line: 61, baseType: !30, size: 64, offset: 512)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2317, file: !594, line: 64, baseType: !30, size: 64, offset: 576)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2317, file: !594, line: 65, baseType: !30, size: 64, offset: 640)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2317, file: !594, line: 66, baseType: !30, size: 64, offset: 704)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2317, file: !594, line: 68, baseType: !609, size: 64, offset: 768)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2317, file: !594, line: 70, baseType: !2333, size: 64, offset: 832)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2317, file: !594, line: 72, baseType: !23, size: 32, offset: 896)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2317, file: !594, line: 73, baseType: !23, size: 32, offset: 928)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2317, file: !594, line: 74, baseType: !615, size: 64, offset: 960)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2317, file: !594, line: 77, baseType: !73, size: 16, offset: 1024)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2317, file: !594, line: 78, baseType: !620, size: 8, offset: 1040)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2317, file: !594, line: 79, baseType: !622, size: 8, offset: 1048)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2317, file: !594, line: 81, baseType: !626, size: 64, offset: 1088)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2317, file: !594, line: 89, baseType: !629, size: 64, offset: 1152)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2317, file: !594, line: 91, baseType: !631, size: 64, offset: 1216)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2317, file: !594, line: 92, baseType: !634, size: 64, offset: 1280)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2317, file: !594, line: 93, baseType: !2333, size: 64, offset: 1344)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2317, file: !594, line: 94, baseType: !29, size: 64, offset: 1408)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2317, file: !594, line: 95, baseType: !74, size: 64, offset: 1472)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2317, file: !594, line: 96, baseType: !23, size: 32, offset: 1536)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2317, file: !594, line: 98, baseType: !641, size: 160, offset: 1568)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!2350 = !{!2351, !2352, !2353, !2354, !2355, !2356}
!2351 = !DILocalVariable(name: "stream", arg: 1, scope: !2311, file: !130, line: 61, type: !2314)
!2352 = !DILocalVariable(name: "command_name", arg: 2, scope: !2311, file: !130, line: 62, type: !6)
!2353 = !DILocalVariable(name: "package", arg: 3, scope: !2311, file: !130, line: 62, type: !6)
!2354 = !DILocalVariable(name: "version", arg: 4, scope: !2311, file: !130, line: 63, type: !6)
!2355 = !DILocalVariable(name: "authors", arg: 5, scope: !2311, file: !130, line: 64, type: !2349)
!2356 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2311, file: !130, line: 64, type: !74)
!2357 = !DILocation(line: 0, scope: !2311)
!2358 = !DILocation(line: 66, column: 7, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2311, file: !130, line: 66, column: 7)
!2360 = !DILocation(line: 66, column: 7, scope: !2311)
!2361 = !DILocation(line: 67, column: 5, scope: !2359)
!2362 = !DILocation(line: 69, column: 5, scope: !2359)
!2363 = !DILocation(line: 83, column: 3, scope: !2311)
!2364 = !DILocation(line: 85, column: 3, scope: !2311)
!2365 = !DILocation(line: 88, column: 3, scope: !2311)
!2366 = !DILocation(line: 95, column: 3, scope: !2311)
!2367 = !DILocation(line: 97, column: 3, scope: !2311)
!2368 = !DILocation(line: 105, column: 7, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2311, file: !130, line: 98, column: 5)
!2370 = !DILocation(line: 106, column: 7, scope: !2369)
!2371 = !DILocation(line: 109, column: 7, scope: !2369)
!2372 = !DILocation(line: 110, column: 7, scope: !2369)
!2373 = !DILocation(line: 113, column: 7, scope: !2369)
!2374 = !DILocation(line: 115, column: 7, scope: !2369)
!2375 = !DILocation(line: 120, column: 7, scope: !2369)
!2376 = !DILocation(line: 122, column: 7, scope: !2369)
!2377 = !DILocation(line: 127, column: 7, scope: !2369)
!2378 = !DILocation(line: 129, column: 7, scope: !2369)
!2379 = !DILocation(line: 134, column: 7, scope: !2369)
!2380 = !DILocation(line: 137, column: 7, scope: !2369)
!2381 = !DILocation(line: 142, column: 7, scope: !2369)
!2382 = !DILocation(line: 145, column: 7, scope: !2369)
!2383 = !DILocation(line: 150, column: 7, scope: !2369)
!2384 = !DILocation(line: 154, column: 7, scope: !2369)
!2385 = !DILocation(line: 159, column: 7, scope: !2369)
!2386 = !DILocation(line: 163, column: 7, scope: !2369)
!2387 = !DILocation(line: 170, column: 7, scope: !2369)
!2388 = !DILocation(line: 174, column: 7, scope: !2369)
!2389 = !DILocation(line: 176, column: 1, scope: !2311)
!2390 = distinct !DISubprogram(name: "version_etc_ar", scope: !130, file: !130, line: 183, type: !2391, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !129, retainedNodes: !2393)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{null, !2314, !6, !6, !6, !2349}
!2393 = !{!2394, !2395, !2396, !2397, !2398, !2399}
!2394 = !DILocalVariable(name: "stream", arg: 1, scope: !2390, file: !130, line: 183, type: !2314)
!2395 = !DILocalVariable(name: "command_name", arg: 2, scope: !2390, file: !130, line: 184, type: !6)
!2396 = !DILocalVariable(name: "package", arg: 3, scope: !2390, file: !130, line: 184, type: !6)
!2397 = !DILocalVariable(name: "version", arg: 4, scope: !2390, file: !130, line: 185, type: !6)
!2398 = !DILocalVariable(name: "authors", arg: 5, scope: !2390, file: !130, line: 185, type: !2349)
!2399 = !DILocalVariable(name: "n_authors", scope: !2390, file: !130, line: 187, type: !74)
!2400 = !DILocation(line: 0, scope: !2390)
!2401 = !DILocation(line: 189, column: 8, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2390, file: !130, line: 189, column: 3)
!2403 = !DILocation(line: 0, scope: !2402)
!2404 = !DILocation(line: 189, column: 23, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2402, file: !130, line: 189, column: 3)
!2406 = !DILocation(line: 189, column: 3, scope: !2402)
!2407 = !DILocation(line: 189, column: 52, scope: !2405)
!2408 = distinct !{!2408, !2406, !2409, !676}
!2409 = !DILocation(line: 190, column: 5, scope: !2402)
!2410 = !DILocation(line: 191, column: 3, scope: !2390)
!2411 = !DILocation(line: 192, column: 1, scope: !2390)
!2412 = distinct !DISubprogram(name: "version_etc_va", scope: !130, file: !130, line: 199, type: !2413, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !129, retainedNodes: !2422)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{null, !2314, !6, !6, !6, !2415}
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2417)
!2417 = !{!2418, !2419, !2420, !2421}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2416, file: !130, line: 192, baseType: !39, size: 32)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2416, file: !130, line: 192, baseType: !39, size: 32, offset: 32)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2416, file: !130, line: 192, baseType: !29, size: 64, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2416, file: !130, line: 192, baseType: !29, size: 64, offset: 128)
!2422 = !{!2423, !2424, !2425, !2426, !2427, !2428, !2429}
!2423 = !DILocalVariable(name: "stream", arg: 1, scope: !2412, file: !130, line: 199, type: !2314)
!2424 = !DILocalVariable(name: "command_name", arg: 2, scope: !2412, file: !130, line: 200, type: !6)
!2425 = !DILocalVariable(name: "package", arg: 3, scope: !2412, file: !130, line: 200, type: !6)
!2426 = !DILocalVariable(name: "version", arg: 4, scope: !2412, file: !130, line: 201, type: !6)
!2427 = !DILocalVariable(name: "authors", arg: 5, scope: !2412, file: !130, line: 201, type: !2415)
!2428 = !DILocalVariable(name: "n_authors", scope: !2412, file: !130, line: 203, type: !74)
!2429 = !DILocalVariable(name: "authtab", scope: !2412, file: !130, line: 204, type: !2430)
!2430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !82)
!2431 = !DILocation(line: 0, scope: !2412)
!2432 = !DILocation(line: 204, column: 3, scope: !2412)
!2433 = !DILocation(line: 204, column: 15, scope: !2412)
!2434 = !DILocation(line: 208, column: 35, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !130, line: 206, column: 3)
!2436 = distinct !DILexicalBlock(scope: !2412, file: !130, line: 206, column: 3)
!2437 = !DILocation(line: 208, column: 14, scope: !2435)
!2438 = !DILocation(line: 208, column: 33, scope: !2435)
!2439 = !DILocation(line: 208, column: 67, scope: !2435)
!2440 = !DILocation(line: 206, column: 3, scope: !2436)
!2441 = !DILocation(line: 0, scope: !2436)
!2442 = !DILocation(line: 211, column: 3, scope: !2412)
!2443 = !DILocation(line: 213, column: 1, scope: !2412)
!2444 = distinct !DISubprogram(name: "version_etc", scope: !130, file: !130, line: 230, type: !2445, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !129, retainedNodes: !2447)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{null, !2314, !6, !6, !6, null}
!2447 = !{!2448, !2449, !2450, !2451, !2452}
!2448 = !DILocalVariable(name: "stream", arg: 1, scope: !2444, file: !130, line: 230, type: !2314)
!2449 = !DILocalVariable(name: "command_name", arg: 2, scope: !2444, file: !130, line: 231, type: !6)
!2450 = !DILocalVariable(name: "package", arg: 3, scope: !2444, file: !130, line: 231, type: !6)
!2451 = !DILocalVariable(name: "version", arg: 4, scope: !2444, file: !130, line: 232, type: !6)
!2452 = !DILocalVariable(name: "authors", scope: !2444, file: !130, line: 234, type: !2453)
!2453 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !589, line: 52, baseType: !2454)
!2454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2455, line: 32, baseType: !2456)
!2455 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!2456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !130, baseType: !2457)
!2457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2416, size: 192, elements: !623)
!2458 = !DILocation(line: 0, scope: !2444)
!2459 = !DILocation(line: 234, column: 3, scope: !2444)
!2460 = !DILocation(line: 234, column: 11, scope: !2444)
!2461 = !DILocation(line: 236, column: 3, scope: !2444)
!2462 = !DILocation(line: 237, column: 3, scope: !2444)
!2463 = !DILocation(line: 238, column: 3, scope: !2444)
!2464 = !DILocation(line: 239, column: 1, scope: !2444)
!2465 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !130, file: !130, line: 242, type: !739, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !129, retainedNodes: !4)
!2466 = !DILocation(line: 244, column: 3, scope: !2465)
!2467 = !DILocation(line: 249, column: 3, scope: !2465)
!2468 = !DILocation(line: 255, column: 3, scope: !2465)
!2469 = !DILocation(line: 260, column: 3, scope: !2465)
!2470 = !DILocation(line: 262, column: 1, scope: !2465)
!2471 = distinct !DISubprogram(name: "xnmalloc", scope: !140, file: !140, line: 99, type: !2472, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !2474)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!29, !74, !74}
!2474 = !{!2475, !2476}
!2475 = !DILocalVariable(name: "n", arg: 1, scope: !2471, file: !140, line: 99, type: !74)
!2476 = !DILocalVariable(name: "s", arg: 2, scope: !2471, file: !140, line: 99, type: !74)
!2477 = !DILocation(line: 0, scope: !2471)
!2478 = !DILocation(line: 101, column: 7, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2471, file: !140, line: 101, column: 7)
!2480 = !DILocation(line: 101, column: 7, scope: !2471)
!2481 = !DILocation(line: 102, column: 5, scope: !2479)
!2482 = !DILocation(line: 103, column: 21, scope: !2471)
!2483 = !DILocalVariable(name: "n", arg: 1, scope: !2484, file: !137, line: 39, type: !74)
!2484 = distinct !DISubprogram(name: "xmalloc", scope: !137, file: !137, line: 39, type: !2485, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !2487)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!29, !74}
!2487 = !{!2483, !2488}
!2488 = !DILocalVariable(name: "p", scope: !2484, file: !137, line: 41, type: !29)
!2489 = !DILocation(line: 0, scope: !2484, inlinedAt: !2490)
!2490 = distinct !DILocation(line: 103, column: 10, scope: !2471)
!2491 = !DILocation(line: 41, column: 13, scope: !2484, inlinedAt: !2490)
!2492 = !DILocation(line: 42, column: 8, scope: !2493, inlinedAt: !2490)
!2493 = distinct !DILexicalBlock(scope: !2484, file: !137, line: 42, column: 7)
!2494 = !DILocation(line: 42, column: 10, scope: !2493, inlinedAt: !2490)
!2495 = !DILocation(line: 43, column: 5, scope: !2493, inlinedAt: !2490)
!2496 = !DILocation(line: 103, column: 3, scope: !2471)
!2497 = !DILocation(line: 0, scope: !2484)
!2498 = !DILocation(line: 41, column: 13, scope: !2484)
!2499 = !DILocation(line: 42, column: 8, scope: !2493)
!2500 = !DILocation(line: 42, column: 10, scope: !2493)
!2501 = !DILocation(line: 43, column: 5, scope: !2493)
!2502 = !DILocation(line: 44, column: 3, scope: !2484)
!2503 = distinct !DISubprogram(name: "xnrealloc", scope: !140, file: !140, line: 112, type: !2504, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !2506)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!29, !29, !74, !74}
!2506 = !{!2507, !2508, !2509}
!2507 = !DILocalVariable(name: "p", arg: 1, scope: !2503, file: !140, line: 112, type: !29)
!2508 = !DILocalVariable(name: "n", arg: 2, scope: !2503, file: !140, line: 112, type: !74)
!2509 = !DILocalVariable(name: "s", arg: 3, scope: !2503, file: !140, line: 112, type: !74)
!2510 = !DILocation(line: 0, scope: !2503)
!2511 = !DILocation(line: 114, column: 7, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2503, file: !140, line: 114, column: 7)
!2513 = !DILocation(line: 114, column: 7, scope: !2503)
!2514 = !DILocation(line: 115, column: 5, scope: !2512)
!2515 = !DILocation(line: 116, column: 25, scope: !2503)
!2516 = !DILocalVariable(name: "p", arg: 1, scope: !2517, file: !137, line: 51, type: !29)
!2517 = distinct !DISubprogram(name: "xrealloc", scope: !137, file: !137, line: 51, type: !2518, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !2520)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!29, !29, !74}
!2520 = !{!2516, !2521}
!2521 = !DILocalVariable(name: "n", arg: 2, scope: !2517, file: !137, line: 51, type: !74)
!2522 = !DILocation(line: 0, scope: !2517, inlinedAt: !2523)
!2523 = distinct !DILocation(line: 116, column: 10, scope: !2503)
!2524 = !DILocation(line: 53, column: 8, scope: !2525, inlinedAt: !2523)
!2525 = distinct !DILexicalBlock(scope: !2517, file: !137, line: 53, column: 7)
!2526 = !DILocation(line: 53, column: 10, scope: !2525, inlinedAt: !2523)
!2527 = !DILocation(line: 57, column: 7, scope: !2528, inlinedAt: !2523)
!2528 = distinct !DILexicalBlock(scope: !2525, file: !137, line: 54, column: 5)
!2529 = !DILocation(line: 58, column: 7, scope: !2528, inlinedAt: !2523)
!2530 = !DILocation(line: 61, column: 7, scope: !2517, inlinedAt: !2523)
!2531 = !DILocation(line: 62, column: 8, scope: !2532, inlinedAt: !2523)
!2532 = distinct !DILexicalBlock(scope: !2517, file: !137, line: 62, column: 7)
!2533 = !DILocation(line: 62, column: 10, scope: !2532, inlinedAt: !2523)
!2534 = !DILocation(line: 63, column: 5, scope: !2532, inlinedAt: !2523)
!2535 = !DILocation(line: 116, column: 3, scope: !2503)
!2536 = !DILocation(line: 0, scope: !2517)
!2537 = !DILocation(line: 53, column: 8, scope: !2525)
!2538 = !DILocation(line: 53, column: 10, scope: !2525)
!2539 = !DILocation(line: 57, column: 7, scope: !2528)
!2540 = !DILocation(line: 58, column: 7, scope: !2528)
!2541 = !DILocation(line: 61, column: 7, scope: !2517)
!2542 = !DILocation(line: 62, column: 8, scope: !2532)
!2543 = !DILocation(line: 62, column: 10, scope: !2532)
!2544 = !DILocation(line: 63, column: 5, scope: !2532)
!2545 = !DILocation(line: 65, column: 1, scope: !2517)
!2546 = !DILocation(line: 0, scope: !141)
!2547 = !DILocation(line: 176, column: 14, scope: !141)
!2548 = !DILocation(line: 178, column: 9, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !141, file: !140, line: 178, column: 7)
!2550 = !DILocation(line: 178, column: 7, scope: !141)
!2551 = !DILocation(line: 180, column: 13, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !140, line: 180, column: 11)
!2553 = distinct !DILexicalBlock(scope: !2549, file: !140, line: 179, column: 5)
!2554 = !DILocation(line: 180, column: 11, scope: !2553)
!2555 = !DILocation(line: 188, column: 30, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2552, file: !140, line: 181, column: 9)
!2557 = !DILocation(line: 189, column: 16, scope: !2556)
!2558 = !DILocation(line: 189, column: 13, scope: !2556)
!2559 = !DILocation(line: 190, column: 9, scope: !2556)
!2560 = !DILocation(line: 191, column: 11, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2553, file: !140, line: 191, column: 11)
!2562 = !DILocation(line: 191, column: 11, scope: !2553)
!2563 = !DILocation(line: 206, column: 7, scope: !141)
!2564 = !DILocation(line: 207, column: 25, scope: !141)
!2565 = !DILocation(line: 0, scope: !2517, inlinedAt: !2566)
!2566 = distinct !DILocation(line: 207, column: 10, scope: !141)
!2567 = !DILocation(line: 53, column: 10, scope: !2525, inlinedAt: !2566)
!2568 = !DILocation(line: 192, column: 9, scope: !2561)
!2569 = !DILocation(line: 200, column: 69, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2571, file: !140, line: 200, column: 11)
!2571 = distinct !DILexicalBlock(scope: !2549, file: !140, line: 195, column: 5)
!2572 = !DILocation(line: 201, column: 11, scope: !2570)
!2573 = !DILocation(line: 200, column: 11, scope: !2571)
!2574 = !DILocation(line: 202, column: 9, scope: !2570)
!2575 = !DILocation(line: 203, column: 14, scope: !2571)
!2576 = !DILocation(line: 203, column: 18, scope: !2571)
!2577 = !DILocation(line: 203, column: 9, scope: !2571)
!2578 = !DILocation(line: 53, column: 8, scope: !2525, inlinedAt: !2566)
!2579 = !DILocation(line: 57, column: 7, scope: !2528, inlinedAt: !2566)
!2580 = !DILocation(line: 58, column: 7, scope: !2528, inlinedAt: !2566)
!2581 = !DILocation(line: 61, column: 7, scope: !2517, inlinedAt: !2566)
!2582 = !DILocation(line: 62, column: 8, scope: !2532, inlinedAt: !2566)
!2583 = !DILocation(line: 62, column: 10, scope: !2532, inlinedAt: !2566)
!2584 = !DILocation(line: 63, column: 5, scope: !2532, inlinedAt: !2566)
!2585 = !DILocation(line: 207, column: 3, scope: !141)
!2586 = distinct !DISubprogram(name: "xcharalloc", scope: !140, file: !140, line: 216, type: !1722, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !2587)
!2587 = !{!2588}
!2588 = !DILocalVariable(name: "n", arg: 1, scope: !2586, file: !140, line: 216, type: !74)
!2589 = !DILocation(line: 0, scope: !2586)
!2590 = !DILocation(line: 0, scope: !2484, inlinedAt: !2591)
!2591 = distinct !DILocation(line: 218, column: 10, scope: !2586)
!2592 = !DILocation(line: 41, column: 13, scope: !2484, inlinedAt: !2591)
!2593 = !DILocation(line: 42, column: 8, scope: !2493, inlinedAt: !2591)
!2594 = !DILocation(line: 42, column: 10, scope: !2493, inlinedAt: !2591)
!2595 = !DILocation(line: 43, column: 5, scope: !2493, inlinedAt: !2591)
!2596 = !DILocation(line: 218, column: 3, scope: !2586)
!2597 = distinct !DISubprogram(name: "x2realloc", scope: !137, file: !137, line: 74, type: !2598, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !2600)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!29, !29, !144}
!2600 = !{!2601, !2602}
!2601 = !DILocalVariable(name: "p", arg: 1, scope: !2597, file: !137, line: 74, type: !29)
!2602 = !DILocalVariable(name: "pn", arg: 2, scope: !2597, file: !137, line: 74, type: !144)
!2603 = !DILocation(line: 0, scope: !2597)
!2604 = !DILocation(line: 0, scope: !141, inlinedAt: !2605)
!2605 = distinct !DILocation(line: 76, column: 10, scope: !2597)
!2606 = !DILocation(line: 176, column: 14, scope: !141, inlinedAt: !2605)
!2607 = !DILocation(line: 178, column: 9, scope: !2549, inlinedAt: !2605)
!2608 = !DILocation(line: 178, column: 7, scope: !141, inlinedAt: !2605)
!2609 = !DILocation(line: 180, column: 13, scope: !2552, inlinedAt: !2605)
!2610 = !DILocation(line: 180, column: 11, scope: !2553, inlinedAt: !2605)
!2611 = !DILocation(line: 191, column: 11, scope: !2561, inlinedAt: !2605)
!2612 = !DILocation(line: 191, column: 11, scope: !2553, inlinedAt: !2605)
!2613 = !DILocation(line: 192, column: 9, scope: !2561, inlinedAt: !2605)
!2614 = !DILocation(line: 201, column: 11, scope: !2570, inlinedAt: !2605)
!2615 = !DILocation(line: 200, column: 11, scope: !2571, inlinedAt: !2605)
!2616 = !DILocation(line: 202, column: 9, scope: !2570, inlinedAt: !2605)
!2617 = !DILocation(line: 203, column: 14, scope: !2571, inlinedAt: !2605)
!2618 = !DILocation(line: 203, column: 18, scope: !2571, inlinedAt: !2605)
!2619 = !DILocation(line: 203, column: 9, scope: !2571, inlinedAt: !2605)
!2620 = !DILocation(line: 0, scope: !2517, inlinedAt: !2621)
!2621 = distinct !DILocation(line: 207, column: 10, scope: !141, inlinedAt: !2605)
!2622 = !DILocation(line: 53, column: 10, scope: !2525, inlinedAt: !2621)
!2623 = !DILocation(line: 206, column: 7, scope: !141, inlinedAt: !2605)
!2624 = !DILocation(line: 61, column: 7, scope: !2517, inlinedAt: !2621)
!2625 = !DILocation(line: 62, column: 8, scope: !2532, inlinedAt: !2621)
!2626 = !DILocation(line: 62, column: 10, scope: !2532, inlinedAt: !2621)
!2627 = !DILocation(line: 63, column: 5, scope: !2532, inlinedAt: !2621)
!2628 = !DILocation(line: 76, column: 3, scope: !2597)
!2629 = distinct !DISubprogram(name: "xzalloc", scope: !137, file: !137, line: 84, type: !2485, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !2630)
!2630 = !{!2631}
!2631 = !DILocalVariable(name: "n", arg: 1, scope: !2629, file: !137, line: 84, type: !74)
!2632 = !DILocation(line: 0, scope: !2629)
!2633 = !DILocalVariable(name: "n", arg: 1, scope: !2634, file: !137, line: 93, type: !74)
!2634 = distinct !DISubprogram(name: "xcalloc", scope: !137, file: !137, line: 93, type: !2472, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !2635)
!2635 = !{!2633, !2636, !2637}
!2636 = !DILocalVariable(name: "s", arg: 2, scope: !2634, file: !137, line: 93, type: !74)
!2637 = !DILocalVariable(name: "p", scope: !2634, file: !137, line: 95, type: !29)
!2638 = !DILocation(line: 0, scope: !2634, inlinedAt: !2639)
!2639 = distinct !DILocation(line: 86, column: 10, scope: !2629)
!2640 = !DILocation(line: 100, column: 7, scope: !2641, inlinedAt: !2639)
!2641 = distinct !DILexicalBlock(scope: !2634, file: !137, line: 100, column: 7)
!2642 = !DILocation(line: 101, column: 7, scope: !2641, inlinedAt: !2639)
!2643 = !DILocation(line: 101, column: 18, scope: !2641, inlinedAt: !2639)
!2644 = !DILocation(line: 101, column: 16, scope: !2641, inlinedAt: !2639)
!2645 = !DILocation(line: 100, column: 7, scope: !2634, inlinedAt: !2639)
!2646 = !DILocation(line: 102, column: 5, scope: !2641, inlinedAt: !2639)
!2647 = !DILocation(line: 86, column: 3, scope: !2629)
!2648 = !DILocation(line: 0, scope: !2634)
!2649 = !DILocation(line: 100, column: 7, scope: !2641)
!2650 = !DILocation(line: 101, column: 7, scope: !2641)
!2651 = !DILocation(line: 101, column: 18, scope: !2641)
!2652 = !DILocation(line: 101, column: 16, scope: !2641)
!2653 = !DILocation(line: 100, column: 7, scope: !2634)
!2654 = !DILocation(line: 102, column: 5, scope: !2641)
!2655 = !DILocation(line: 103, column: 3, scope: !2634)
!2656 = distinct !DISubprogram(name: "xmemdup", scope: !137, file: !137, line: 111, type: !2657, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !2661)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!29, !2659, !74}
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2661 = !{!2662, !2663}
!2662 = !DILocalVariable(name: "p", arg: 1, scope: !2656, file: !137, line: 111, type: !2659)
!2663 = !DILocalVariable(name: "s", arg: 2, scope: !2656, file: !137, line: 111, type: !74)
!2664 = !DILocation(line: 0, scope: !2656)
!2665 = !DILocation(line: 0, scope: !2484, inlinedAt: !2666)
!2666 = distinct !DILocation(line: 113, column: 18, scope: !2656)
!2667 = !DILocation(line: 41, column: 13, scope: !2484, inlinedAt: !2666)
!2668 = !DILocation(line: 42, column: 8, scope: !2493, inlinedAt: !2666)
!2669 = !DILocation(line: 42, column: 10, scope: !2493, inlinedAt: !2666)
!2670 = !DILocation(line: 43, column: 5, scope: !2493, inlinedAt: !2666)
!2671 = !DILocalVariable(name: "__dest", arg: 1, scope: !2672, file: !1249, line: 26, type: !2675)
!2672 = distinct !DISubprogram(name: "memcpy", scope: !1249, file: !1249, line: 26, type: !2673, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !2677)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{!29, !2675, !2676, !74}
!2675 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !29)
!2676 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2659)
!2677 = !{!2671, !2678, !2679}
!2678 = !DILocalVariable(name: "__src", arg: 2, scope: !2672, file: !1249, line: 26, type: !2676)
!2679 = !DILocalVariable(name: "__len", arg: 3, scope: !2672, file: !1249, line: 26, type: !74)
!2680 = !DILocation(line: 0, scope: !2672, inlinedAt: !2681)
!2681 = distinct !DILocation(line: 113, column: 10, scope: !2656)
!2682 = !DILocation(line: 29, column: 10, scope: !2672, inlinedAt: !2681)
!2683 = !DILocation(line: 113, column: 3, scope: !2656)
!2684 = distinct !DISubprogram(name: "xstrdup", scope: !137, file: !137, line: 119, type: !732, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !2685)
!2685 = !{!2686}
!2686 = !DILocalVariable(name: "string", arg: 1, scope: !2684, file: !137, line: 119, type: !6)
!2687 = !DILocation(line: 0, scope: !2684)
!2688 = !DILocation(line: 121, column: 27, scope: !2684)
!2689 = !DILocation(line: 121, column: 43, scope: !2684)
!2690 = !DILocation(line: 0, scope: !2656, inlinedAt: !2691)
!2691 = distinct !DILocation(line: 121, column: 10, scope: !2684)
!2692 = !DILocation(line: 0, scope: !2484, inlinedAt: !2693)
!2693 = distinct !DILocation(line: 113, column: 18, scope: !2656, inlinedAt: !2691)
!2694 = !DILocation(line: 41, column: 13, scope: !2484, inlinedAt: !2693)
!2695 = !DILocation(line: 42, column: 8, scope: !2493, inlinedAt: !2693)
!2696 = !DILocation(line: 42, column: 10, scope: !2493, inlinedAt: !2693)
!2697 = !DILocation(line: 43, column: 5, scope: !2493, inlinedAt: !2693)
!2698 = !DILocation(line: 0, scope: !2672, inlinedAt: !2699)
!2699 = distinct !DILocation(line: 113, column: 10, scope: !2656, inlinedAt: !2691)
!2700 = !DILocation(line: 29, column: 10, scope: !2672, inlinedAt: !2699)
!2701 = !DILocation(line: 121, column: 3, scope: !2684)
!2702 = distinct !DISubprogram(name: "xalloc_die", scope: !154, file: !154, line: 32, type: !739, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !4)
!2703 = !DILocation(line: 34, column: 10, scope: !2702)
!2704 = !DILocation(line: 34, column: 33, scope: !2702)
!2705 = !DILocation(line: 34, column: 3, scope: !2702)
!2706 = !DILocation(line: 40, column: 3, scope: !2702)
!2707 = distinct !DISubprogram(name: "rpl_calloc", scope: !156, file: !156, line: 42, type: !2472, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !155, retainedNodes: !2708)
!2708 = !{!2709, !2710, !2711, !2712}
!2709 = !DILocalVariable(name: "n", arg: 1, scope: !2707, file: !156, line: 42, type: !74)
!2710 = !DILocalVariable(name: "s", arg: 2, scope: !2707, file: !156, line: 42, type: !74)
!2711 = !DILocalVariable(name: "result", scope: !2707, file: !156, line: 44, type: !29)
!2712 = !DILocalVariable(name: "bytes", scope: !2713, file: !156, line: 56, type: !74)
!2713 = distinct !DILexicalBlock(scope: !2714, file: !156, line: 53, column: 5)
!2714 = distinct !DILexicalBlock(scope: !2707, file: !156, line: 47, column: 7)
!2715 = !DILocation(line: 0, scope: !2707)
!2716 = !DILocation(line: 47, column: 9, scope: !2714)
!2717 = !DILocation(line: 47, column: 14, scope: !2714)
!2718 = !DILocation(line: 0, scope: !2713)
!2719 = !DILocation(line: 57, column: 21, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2713, file: !156, line: 57, column: 11)
!2721 = !DILocation(line: 57, column: 11, scope: !2713)
!2722 = !DILocation(line: 59, column: 11, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2720, file: !156, line: 58, column: 9)
!2724 = !DILocation(line: 59, column: 17, scope: !2723)
!2725 = !DILocation(line: 65, column: 12, scope: !2707)
!2726 = !DILocation(line: 72, column: 3, scope: !2707)
!2727 = !DILocation(line: 73, column: 1, scope: !2707)
!2728 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !158, file: !158, line: 86, type: !2729, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !2743)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!74, !2731, !6, !74, !2732}
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1001, line: 6, baseType: !2734)
!2734 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1003, line: 21, baseType: !2735)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1003, line: 13, size: 64, elements: !2736)
!2736 = !{!2737, !2738}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2735, file: !1003, line: 15, baseType: !23, size: 32)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2735, file: !1003, line: 20, baseType: !2739, size: 32, offset: 32)
!2739 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2735, file: !1003, line: 16, size: 32, elements: !2740)
!2740 = !{!2741, !2742}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2739, file: !1003, line: 18, baseType: !39, size: 32)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2739, file: !1003, line: 19, baseType: !1012, size: 32)
!2743 = !{!2744, !2745, !2746, !2747, !2748, !2749, !2750}
!2744 = !DILocalVariable(name: "pwc", arg: 1, scope: !2728, file: !158, line: 86, type: !2731)
!2745 = !DILocalVariable(name: "s", arg: 2, scope: !2728, file: !158, line: 86, type: !6)
!2746 = !DILocalVariable(name: "n", arg: 3, scope: !2728, file: !158, line: 86, type: !74)
!2747 = !DILocalVariable(name: "ps", arg: 4, scope: !2728, file: !158, line: 86, type: !2732)
!2748 = !DILocalVariable(name: "ret", scope: !2728, file: !158, line: 88, type: !74)
!2749 = !DILocalVariable(name: "wc", scope: !2728, file: !158, line: 89, type: !1017)
!2750 = !DILocalVariable(name: "uc", scope: !2751, file: !158, line: 156, type: !879)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !158, line: 155, column: 5)
!2752 = distinct !DILexicalBlock(scope: !2728, file: !158, line: 154, column: 7)
!2753 = !DILocation(line: 0, scope: !2728)
!2754 = !DILocation(line: 89, column: 3, scope: !2728)
!2755 = !DILocation(line: 105, column: 9, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2728, file: !158, line: 105, column: 7)
!2757 = !DILocation(line: 105, column: 7, scope: !2728)
!2758 = !DILocation(line: 145, column: 9, scope: !2728)
!2759 = !DILocation(line: 154, column: 19, scope: !2752)
!2760 = !DILocation(line: 154, column: 26, scope: !2752)
!2761 = !DILocation(line: 154, column: 41, scope: !2752)
!2762 = !DILocation(line: 154, column: 7, scope: !2728)
!2763 = !DILocation(line: 156, column: 26, scope: !2751)
!2764 = !DILocation(line: 0, scope: !2751)
!2765 = !DILocation(line: 157, column: 14, scope: !2751)
!2766 = !DILocation(line: 157, column: 12, scope: !2751)
!2767 = !DILocation(line: 163, column: 1, scope: !2728)
!2768 = !DISubprogram(name: "mbrtowc", scope: !1682, file: !1682, line: 296, type: !2769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!76, !2771, !6, !76, !2772}
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2773 = distinct !DISubprogram(name: "close_stream", scope: !161, file: !161, line: 56, type: !2774, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !2810)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!23, !2776}
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2316, line: 7, baseType: !2778)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !594, line: 49, size: 1728, elements: !2779)
!2779 = !{!2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2778, file: !594, line: 51, baseType: !23, size: 32)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2778, file: !594, line: 54, baseType: !30, size: 64, offset: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2778, file: !594, line: 55, baseType: !30, size: 64, offset: 128)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2778, file: !594, line: 56, baseType: !30, size: 64, offset: 192)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2778, file: !594, line: 57, baseType: !30, size: 64, offset: 256)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2778, file: !594, line: 58, baseType: !30, size: 64, offset: 320)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2778, file: !594, line: 59, baseType: !30, size: 64, offset: 384)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2778, file: !594, line: 60, baseType: !30, size: 64, offset: 448)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2778, file: !594, line: 61, baseType: !30, size: 64, offset: 512)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2778, file: !594, line: 64, baseType: !30, size: 64, offset: 576)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2778, file: !594, line: 65, baseType: !30, size: 64, offset: 640)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2778, file: !594, line: 66, baseType: !30, size: 64, offset: 704)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2778, file: !594, line: 68, baseType: !609, size: 64, offset: 768)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2778, file: !594, line: 70, baseType: !2794, size: 64, offset: 832)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2778, file: !594, line: 72, baseType: !23, size: 32, offset: 896)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2778, file: !594, line: 73, baseType: !23, size: 32, offset: 928)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2778, file: !594, line: 74, baseType: !615, size: 64, offset: 960)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2778, file: !594, line: 77, baseType: !73, size: 16, offset: 1024)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2778, file: !594, line: 78, baseType: !620, size: 8, offset: 1040)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2778, file: !594, line: 79, baseType: !622, size: 8, offset: 1048)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2778, file: !594, line: 81, baseType: !626, size: 64, offset: 1088)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2778, file: !594, line: 89, baseType: !629, size: 64, offset: 1152)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2778, file: !594, line: 91, baseType: !631, size: 64, offset: 1216)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2778, file: !594, line: 92, baseType: !634, size: 64, offset: 1280)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2778, file: !594, line: 93, baseType: !2794, size: 64, offset: 1344)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2778, file: !594, line: 94, baseType: !29, size: 64, offset: 1408)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2778, file: !594, line: 95, baseType: !74, size: 64, offset: 1472)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2778, file: !594, line: 96, baseType: !23, size: 32, offset: 1536)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2778, file: !594, line: 98, baseType: !641, size: 160, offset: 1568)
!2810 = !{!2811, !2812, !2814, !2815}
!2811 = !DILocalVariable(name: "stream", arg: 1, scope: !2773, file: !161, line: 56, type: !2776)
!2812 = !DILocalVariable(name: "some_pending", scope: !2773, file: !161, line: 58, type: !2813)
!2813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!2814 = !DILocalVariable(name: "prev_fail", scope: !2773, file: !161, line: 59, type: !2813)
!2815 = !DILocalVariable(name: "fclose_fail", scope: !2773, file: !161, line: 60, type: !2813)
!2816 = !DILocation(line: 0, scope: !2773)
!2817 = !DILocation(line: 58, column: 30, scope: !2773)
!2818 = !DILocalVariable(name: "__stream", arg: 1, scope: !2819, file: !2820, line: 135, type: !2776)
!2819 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2820, file: !2820, line: 135, type: !2774, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !2821)
!2820 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!2821 = !{!2818}
!2822 = !DILocation(line: 0, scope: !2819, inlinedAt: !2823)
!2823 = distinct !DILocation(line: 59, column: 27, scope: !2773)
!2824 = !DILocation(line: 137, column: 10, scope: !2819, inlinedAt: !2823)
!2825 = !{!2826, !771, i64 0}
!2826 = !{!"_IO_FILE", !771, i64 0, !575, i64 8, !575, i64 16, !575, i64 24, !575, i64 32, !575, i64 40, !575, i64 48, !575, i64 56, !575, i64 64, !575, i64 72, !575, i64 80, !575, i64 88, !575, i64 96, !575, i64 104, !771, i64 112, !771, i64 116, !1758, i64 120, !1241, i64 128, !576, i64 130, !576, i64 131, !575, i64 136, !1758, i64 144, !575, i64 152, !575, i64 160, !575, i64 168, !575, i64 176, !1758, i64 184, !771, i64 192, !576, i64 196}
!2827 = !DILocation(line: 59, column: 43, scope: !2773)
!2828 = !DILocation(line: 60, column: 29, scope: !2773)
!2829 = !DILocation(line: 60, column: 45, scope: !2773)
!2830 = !DILocation(line: 70, column: 17, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2773, file: !161, line: 70, column: 7)
!2832 = !DILocation(line: 58, column: 50, scope: !2773)
!2833 = !DILocation(line: 70, column: 33, scope: !2831)
!2834 = !DILocation(line: 70, column: 53, scope: !2831)
!2835 = !DILocation(line: 70, column: 59, scope: !2831)
!2836 = !DILocation(line: 70, column: 7, scope: !2773)
!2837 = !DILocation(line: 72, column: 11, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2831, file: !161, line: 71, column: 5)
!2839 = !DILocation(line: 73, column: 9, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2838, file: !161, line: 72, column: 11)
!2841 = !DILocation(line: 73, column: 15, scope: !2840)
!2842 = !DILocation(line: 78, column: 1, scope: !2773)
!2843 = distinct !DISubprogram(name: "hard_locale", scope: !163, file: !163, line: 27, type: !2844, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !162, retainedNodes: !2846)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!16, !23}
!2846 = !{!2847, !2848}
!2847 = !DILocalVariable(name: "category", arg: 1, scope: !2843, file: !163, line: 27, type: !23)
!2848 = !DILocalVariable(name: "locale", scope: !2843, file: !163, line: 29, type: !2849)
!2849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !2850)
!2850 = !{!2851}
!2851 = !DISubrange(count: 257)
!2852 = !DILocation(line: 0, scope: !2843)
!2853 = !DILocation(line: 29, column: 3, scope: !2843)
!2854 = !DILocation(line: 29, column: 8, scope: !2843)
!2855 = !DILocation(line: 31, column: 7, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2843, file: !163, line: 31, column: 7)
!2857 = !DILocation(line: 31, column: 7, scope: !2843)
!2858 = !DILocation(line: 34, column: 12, scope: !2843)
!2859 = !DILocation(line: 34, column: 38, scope: !2843)
!2860 = !DILocation(line: 34, column: 41, scope: !2843)
!2861 = !DILocation(line: 34, column: 66, scope: !2843)
!2862 = !DILocation(line: 35, column: 1, scope: !2843)
!2863 = distinct !DISubprogram(name: "locale_charset", scope: !165, file: !165, line: 831, type: !2864, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !2866)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!6}
!2866 = !{!2867}
!2867 = !DILocalVariable(name: "codeset", scope: !2863, file: !165, line: 833, type: !6)
!2868 = !DILocation(line: 847, column: 13, scope: !2863)
!2869 = !DILocation(line: 0, scope: !2863)
!2870 = !DILocation(line: 911, column: 15, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2863, file: !165, line: 911, column: 7)
!2872 = !DILocation(line: 911, column: 7, scope: !2863)
!2873 = !DILocation(line: 1070, column: 13, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2875, file: !165, line: 1070, column: 13)
!2875 = distinct !DILexicalBlock(scope: !2876, file: !165, line: 1060, column: 7)
!2876 = distinct !DILexicalBlock(scope: !2863, file: !165, line: 1019, column: 3)
!2877 = !DILocation(line: 1070, column: 24, scope: !2874)
!2878 = !DILocation(line: 1070, column: 13, scope: !2875)
!2879 = !DILocation(line: 1158, column: 3, scope: !2863)
!2880 = !DISubprogram(name: "nl_langinfo", scope: !168, file: !168, line: 661, type: !2881, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!30, !23}
!2883 = distinct !DISubprogram(name: "setlocale_null_r", scope: !554, file: !554, line: 269, type: !2884, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !553, retainedNodes: !2886)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!23, !23, !30, !74}
!2886 = !{!2887, !2888, !2889}
!2887 = !DILocalVariable(name: "category", arg: 1, scope: !2883, file: !554, line: 269, type: !23)
!2888 = !DILocalVariable(name: "buf", arg: 2, scope: !2883, file: !554, line: 269, type: !30)
!2889 = !DILocalVariable(name: "bufsize", arg: 3, scope: !2883, file: !554, line: 269, type: !74)
!2890 = !DILocation(line: 0, scope: !2883)
!2891 = !DILocalVariable(name: "category", arg: 1, scope: !2892, file: !554, line: 91, type: !23)
!2892 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !554, file: !554, line: 91, type: !2884, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !553, retainedNodes: !2893)
!2893 = !{!2891, !2894, !2895, !2896, !2897}
!2894 = !DILocalVariable(name: "buf", arg: 2, scope: !2892, file: !554, line: 91, type: !30)
!2895 = !DILocalVariable(name: "bufsize", arg: 3, scope: !2892, file: !554, line: 91, type: !74)
!2896 = !DILocalVariable(name: "result", scope: !2892, file: !554, line: 140, type: !6)
!2897 = !DILocalVariable(name: "length", scope: !2898, file: !554, line: 154, type: !74)
!2898 = distinct !DILexicalBlock(scope: !2899, file: !554, line: 153, column: 5)
!2899 = distinct !DILexicalBlock(scope: !2892, file: !554, line: 142, column: 7)
!2900 = !DILocation(line: 0, scope: !2892, inlinedAt: !2901)
!2901 = distinct !DILocation(line: 274, column: 10, scope: !2883)
!2902 = !DILocalVariable(name: "category", arg: 1, scope: !2903, file: !554, line: 60, type: !23)
!2903 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !554, file: !554, line: 60, type: !2904, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !553, retainedNodes: !2906)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!6, !23}
!2906 = !{!2902, !2907}
!2907 = !DILocalVariable(name: "result", scope: !2903, file: !554, line: 62, type: !6)
!2908 = !DILocation(line: 0, scope: !2903, inlinedAt: !2909)
!2909 = distinct !DILocation(line: 140, column: 24, scope: !2892, inlinedAt: !2901)
!2910 = !DILocation(line: 62, column: 24, scope: !2903, inlinedAt: !2909)
!2911 = !DILocation(line: 142, column: 14, scope: !2899, inlinedAt: !2901)
!2912 = !DILocation(line: 142, column: 7, scope: !2892, inlinedAt: !2901)
!2913 = !DILocation(line: 145, column: 19, scope: !2914, inlinedAt: !2901)
!2914 = distinct !DILexicalBlock(scope: !2915, file: !554, line: 145, column: 11)
!2915 = distinct !DILexicalBlock(scope: !2899, file: !554, line: 143, column: 5)
!2916 = !DILocation(line: 145, column: 11, scope: !2915, inlinedAt: !2901)
!2917 = !DILocation(line: 149, column: 16, scope: !2914, inlinedAt: !2901)
!2918 = !DILocation(line: 149, column: 9, scope: !2914, inlinedAt: !2901)
!2919 = !DILocation(line: 154, column: 23, scope: !2898, inlinedAt: !2901)
!2920 = !DILocation(line: 0, scope: !2898, inlinedAt: !2901)
!2921 = !DILocation(line: 155, column: 18, scope: !2922, inlinedAt: !2901)
!2922 = distinct !DILexicalBlock(scope: !2898, file: !554, line: 155, column: 11)
!2923 = !DILocation(line: 155, column: 11, scope: !2898, inlinedAt: !2901)
!2924 = !DILocation(line: 157, column: 39, scope: !2925, inlinedAt: !2901)
!2925 = distinct !DILexicalBlock(scope: !2922, file: !554, line: 156, column: 9)
!2926 = !DILocalVariable(name: "__dest", arg: 1, scope: !2927, file: !1249, line: 26, type: !2675)
!2927 = distinct !DISubprogram(name: "memcpy", scope: !1249, file: !1249, line: 26, type: !2673, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !553, retainedNodes: !2928)
!2928 = !{!2926, !2929, !2930}
!2929 = !DILocalVariable(name: "__src", arg: 2, scope: !2927, file: !1249, line: 26, type: !2676)
!2930 = !DILocalVariable(name: "__len", arg: 3, scope: !2927, file: !1249, line: 26, type: !74)
!2931 = !DILocation(line: 0, scope: !2927, inlinedAt: !2932)
!2932 = distinct !DILocation(line: 157, column: 11, scope: !2925, inlinedAt: !2901)
!2933 = !DILocation(line: 29, column: 10, scope: !2927, inlinedAt: !2932)
!2934 = !DILocation(line: 158, column: 11, scope: !2925, inlinedAt: !2901)
!2935 = !DILocation(line: 162, column: 23, scope: !2936, inlinedAt: !2901)
!2936 = distinct !DILexicalBlock(scope: !2937, file: !554, line: 162, column: 15)
!2937 = distinct !DILexicalBlock(scope: !2922, file: !554, line: 161, column: 9)
!2938 = !DILocation(line: 162, column: 15, scope: !2937, inlinedAt: !2901)
!2939 = !DILocation(line: 167, column: 44, scope: !2940, inlinedAt: !2901)
!2940 = distinct !DILexicalBlock(scope: !2936, file: !554, line: 163, column: 13)
!2941 = !DILocation(line: 0, scope: !2927, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 167, column: 15, scope: !2940, inlinedAt: !2901)
!2943 = !DILocation(line: 29, column: 10, scope: !2927, inlinedAt: !2942)
!2944 = !DILocation(line: 168, column: 15, scope: !2940, inlinedAt: !2901)
!2945 = !DILocation(line: 168, column: 32, scope: !2940, inlinedAt: !2901)
!2946 = !DILocation(line: 169, column: 13, scope: !2940, inlinedAt: !2901)
!2947 = !DILocation(line: 0, scope: !2899, inlinedAt: !2901)
!2948 = !DILocation(line: 274, column: 3, scope: !2883)
!2949 = distinct !DISubprogram(name: "setlocale_null", scope: !554, file: !554, line: 301, type: !2904, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !553, retainedNodes: !2950)
!2950 = !{!2951}
!2951 = !DILocalVariable(name: "category", arg: 1, scope: !2949, file: !554, line: 301, type: !23)
!2952 = !DILocation(line: 0, scope: !2949)
!2953 = !DILocation(line: 0, scope: !2903, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 304, column: 10, scope: !2949)
!2955 = !DILocation(line: 62, column: 24, scope: !2903, inlinedAt: !2954)
!2956 = !DILocation(line: 304, column: 3, scope: !2949)
!2957 = distinct !DISubprogram(name: "rpl_fclose", scope: !556, file: !556, line: 58, type: !2958, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !2994)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!23, !2960}
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2316, line: 7, baseType: !2962)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !594, line: 49, size: 1728, elements: !2963)
!2963 = !{!2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2962, file: !594, line: 51, baseType: !23, size: 32)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2962, file: !594, line: 54, baseType: !30, size: 64, offset: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2962, file: !594, line: 55, baseType: !30, size: 64, offset: 128)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2962, file: !594, line: 56, baseType: !30, size: 64, offset: 192)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2962, file: !594, line: 57, baseType: !30, size: 64, offset: 256)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2962, file: !594, line: 58, baseType: !30, size: 64, offset: 320)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2962, file: !594, line: 59, baseType: !30, size: 64, offset: 384)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2962, file: !594, line: 60, baseType: !30, size: 64, offset: 448)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2962, file: !594, line: 61, baseType: !30, size: 64, offset: 512)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2962, file: !594, line: 64, baseType: !30, size: 64, offset: 576)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2962, file: !594, line: 65, baseType: !30, size: 64, offset: 640)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2962, file: !594, line: 66, baseType: !30, size: 64, offset: 704)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2962, file: !594, line: 68, baseType: !609, size: 64, offset: 768)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2962, file: !594, line: 70, baseType: !2978, size: 64, offset: 832)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2962, file: !594, line: 72, baseType: !23, size: 32, offset: 896)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2962, file: !594, line: 73, baseType: !23, size: 32, offset: 928)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2962, file: !594, line: 74, baseType: !615, size: 64, offset: 960)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2962, file: !594, line: 77, baseType: !73, size: 16, offset: 1024)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2962, file: !594, line: 78, baseType: !620, size: 8, offset: 1040)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2962, file: !594, line: 79, baseType: !622, size: 8, offset: 1048)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2962, file: !594, line: 81, baseType: !626, size: 64, offset: 1088)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2962, file: !594, line: 89, baseType: !629, size: 64, offset: 1152)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2962, file: !594, line: 91, baseType: !631, size: 64, offset: 1216)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2962, file: !594, line: 92, baseType: !634, size: 64, offset: 1280)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2962, file: !594, line: 93, baseType: !2978, size: 64, offset: 1344)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2962, file: !594, line: 94, baseType: !29, size: 64, offset: 1408)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2962, file: !594, line: 95, baseType: !74, size: 64, offset: 1472)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2962, file: !594, line: 96, baseType: !23, size: 32, offset: 1536)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2962, file: !594, line: 98, baseType: !641, size: 160, offset: 1568)
!2994 = !{!2995, !2996, !2997, !2998}
!2995 = !DILocalVariable(name: "fp", arg: 1, scope: !2957, file: !556, line: 58, type: !2960)
!2996 = !DILocalVariable(name: "saved_errno", scope: !2957, file: !556, line: 60, type: !23)
!2997 = !DILocalVariable(name: "fd", scope: !2957, file: !556, line: 61, type: !23)
!2998 = !DILocalVariable(name: "result", scope: !2957, file: !556, line: 62, type: !23)
!2999 = !DILocation(line: 0, scope: !2957)
!3000 = !DILocation(line: 65, column: 8, scope: !2957)
!3001 = !DILocation(line: 66, column: 10, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2957, file: !556, line: 66, column: 7)
!3003 = !DILocation(line: 66, column: 7, scope: !2957)
!3004 = !DILocation(line: 67, column: 12, scope: !3002)
!3005 = !DILocation(line: 67, column: 5, scope: !3002)
!3006 = !DILocation(line: 72, column: 9, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2957, file: !556, line: 72, column: 7)
!3008 = !DILocation(line: 72, column: 23, scope: !3007)
!3009 = !DILocation(line: 72, column: 33, scope: !3007)
!3010 = !DILocation(line: 72, column: 26, scope: !3007)
!3011 = !DILocation(line: 72, column: 59, scope: !3007)
!3012 = !DILocation(line: 73, column: 7, scope: !3007)
!3013 = !DILocation(line: 73, column: 10, scope: !3007)
!3014 = !DILocation(line: 72, column: 7, scope: !2957)
!3015 = !DILocation(line: 100, column: 12, scope: !2957)
!3016 = !DILocation(line: 105, column: 7, scope: !2957)
!3017 = !DILocation(line: 74, column: 19, scope: !3007)
!3018 = !DILocation(line: 105, column: 19, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !2957, file: !556, line: 105, column: 7)
!3020 = !DILocation(line: 107, column: 13, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !3019, file: !556, line: 106, column: 5)
!3022 = !DILocation(line: 109, column: 5, scope: !3021)
!3023 = !DILocation(line: 112, column: 1, scope: !2957)
!3024 = !DISubprogram(name: "fileno", scope: !589, file: !589, line: 785, type: !3025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!23, !2978}
!3027 = !DISubprogram(name: "fclose", scope: !589, file: !589, line: 213, type: !3025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3028 = !DISubprogram(name: "lseek", scope: !3029, file: !3029, line: 334, type: !3030, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3029 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!617, !23, !617, !23}
!3032 = distinct !DISubprogram(name: "rpl_fflush", scope: !558, file: !558, line: 129, type: !3033, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !557, retainedNodes: !3069)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!23, !3035}
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2316, line: 7, baseType: !3037)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !594, line: 49, size: 1728, elements: !3038)
!3038 = !{!3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3037, file: !594, line: 51, baseType: !23, size: 32)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3037, file: !594, line: 54, baseType: !30, size: 64, offset: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3037, file: !594, line: 55, baseType: !30, size: 64, offset: 128)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3037, file: !594, line: 56, baseType: !30, size: 64, offset: 192)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3037, file: !594, line: 57, baseType: !30, size: 64, offset: 256)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3037, file: !594, line: 58, baseType: !30, size: 64, offset: 320)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3037, file: !594, line: 59, baseType: !30, size: 64, offset: 384)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3037, file: !594, line: 60, baseType: !30, size: 64, offset: 448)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3037, file: !594, line: 61, baseType: !30, size: 64, offset: 512)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3037, file: !594, line: 64, baseType: !30, size: 64, offset: 576)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3037, file: !594, line: 65, baseType: !30, size: 64, offset: 640)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3037, file: !594, line: 66, baseType: !30, size: 64, offset: 704)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3037, file: !594, line: 68, baseType: !609, size: 64, offset: 768)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3037, file: !594, line: 70, baseType: !3053, size: 64, offset: 832)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3037, file: !594, line: 72, baseType: !23, size: 32, offset: 896)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3037, file: !594, line: 73, baseType: !23, size: 32, offset: 928)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3037, file: !594, line: 74, baseType: !615, size: 64, offset: 960)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3037, file: !594, line: 77, baseType: !73, size: 16, offset: 1024)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3037, file: !594, line: 78, baseType: !620, size: 8, offset: 1040)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3037, file: !594, line: 79, baseType: !622, size: 8, offset: 1048)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3037, file: !594, line: 81, baseType: !626, size: 64, offset: 1088)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3037, file: !594, line: 89, baseType: !629, size: 64, offset: 1152)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3037, file: !594, line: 91, baseType: !631, size: 64, offset: 1216)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3037, file: !594, line: 92, baseType: !634, size: 64, offset: 1280)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3037, file: !594, line: 93, baseType: !3053, size: 64, offset: 1344)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3037, file: !594, line: 94, baseType: !29, size: 64, offset: 1408)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3037, file: !594, line: 95, baseType: !74, size: 64, offset: 1472)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3037, file: !594, line: 96, baseType: !23, size: 32, offset: 1536)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3037, file: !594, line: 98, baseType: !641, size: 160, offset: 1568)
!3069 = !{!3070}
!3070 = !DILocalVariable(name: "stream", arg: 1, scope: !3032, file: !558, line: 129, type: !3035)
!3071 = !DILocation(line: 0, scope: !3032)
!3072 = !DILocation(line: 150, column: 14, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3032, file: !558, line: 150, column: 7)
!3074 = !DILocation(line: 150, column: 22, scope: !3073)
!3075 = !DILocation(line: 150, column: 27, scope: !3073)
!3076 = !DILocation(line: 150, column: 7, scope: !3032)
!3077 = !DILocation(line: 151, column: 12, scope: !3073)
!3078 = !DILocation(line: 151, column: 5, scope: !3073)
!3079 = !DILocalVariable(name: "fp", arg: 1, scope: !3080, file: !558, line: 41, type: !3035)
!3080 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !558, file: !558, line: 41, type: !3081, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !557, retainedNodes: !3083)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{null, !3035}
!3083 = !{!3079}
!3084 = !DILocation(line: 0, scope: !3080, inlinedAt: !3085)
!3085 = distinct !DILocation(line: 156, column: 3, scope: !3032)
!3086 = !DILocation(line: 43, column: 11, scope: !3087, inlinedAt: !3085)
!3087 = distinct !DILexicalBlock(scope: !3080, file: !558, line: 43, column: 7)
!3088 = !DILocation(line: 43, column: 18, scope: !3087, inlinedAt: !3085)
!3089 = !DILocation(line: 43, column: 7, scope: !3080, inlinedAt: !3085)
!3090 = !DILocation(line: 45, column: 5, scope: !3087, inlinedAt: !3085)
!3091 = !DILocation(line: 158, column: 10, scope: !3032)
!3092 = !DILocation(line: 158, column: 3, scope: !3032)
!3093 = !DILocation(line: 235, column: 1, scope: !3032)
!3094 = !DISubprogram(name: "fflush", scope: !589, file: !589, line: 218, type: !3095, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!23, !3053}
!3097 = distinct !DISubprogram(name: "rpl_fseeko", scope: !560, file: !560, line: 28, type: !3098, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !559, retainedNodes: !3135)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!23, !3100, !3134, !23}
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2316, line: 7, baseType: !3102)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !594, line: 49, size: 1728, elements: !3103)
!3103 = !{!3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3102, file: !594, line: 51, baseType: !23, size: 32)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3102, file: !594, line: 54, baseType: !30, size: 64, offset: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3102, file: !594, line: 55, baseType: !30, size: 64, offset: 128)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3102, file: !594, line: 56, baseType: !30, size: 64, offset: 192)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3102, file: !594, line: 57, baseType: !30, size: 64, offset: 256)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3102, file: !594, line: 58, baseType: !30, size: 64, offset: 320)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3102, file: !594, line: 59, baseType: !30, size: 64, offset: 384)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3102, file: !594, line: 60, baseType: !30, size: 64, offset: 448)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3102, file: !594, line: 61, baseType: !30, size: 64, offset: 512)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3102, file: !594, line: 64, baseType: !30, size: 64, offset: 576)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3102, file: !594, line: 65, baseType: !30, size: 64, offset: 640)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3102, file: !594, line: 66, baseType: !30, size: 64, offset: 704)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3102, file: !594, line: 68, baseType: !609, size: 64, offset: 768)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3102, file: !594, line: 70, baseType: !3118, size: 64, offset: 832)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3102, file: !594, line: 72, baseType: !23, size: 32, offset: 896)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3102, file: !594, line: 73, baseType: !23, size: 32, offset: 928)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3102, file: !594, line: 74, baseType: !615, size: 64, offset: 960)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3102, file: !594, line: 77, baseType: !73, size: 16, offset: 1024)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3102, file: !594, line: 78, baseType: !620, size: 8, offset: 1040)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3102, file: !594, line: 79, baseType: !622, size: 8, offset: 1048)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3102, file: !594, line: 81, baseType: !626, size: 64, offset: 1088)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3102, file: !594, line: 89, baseType: !629, size: 64, offset: 1152)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3102, file: !594, line: 91, baseType: !631, size: 64, offset: 1216)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3102, file: !594, line: 92, baseType: !634, size: 64, offset: 1280)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3102, file: !594, line: 93, baseType: !3118, size: 64, offset: 1344)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3102, file: !594, line: 94, baseType: !29, size: 64, offset: 1408)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3102, file: !594, line: 95, baseType: !74, size: 64, offset: 1472)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3102, file: !594, line: 96, baseType: !23, size: 32, offset: 1536)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3102, file: !594, line: 98, baseType: !641, size: 160, offset: 1568)
!3134 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !589, line: 63, baseType: !615)
!3135 = !{!3136, !3137, !3138, !3139}
!3136 = !DILocalVariable(name: "fp", arg: 1, scope: !3097, file: !560, line: 28, type: !3100)
!3137 = !DILocalVariable(name: "offset", arg: 2, scope: !3097, file: !560, line: 28, type: !3134)
!3138 = !DILocalVariable(name: "whence", arg: 3, scope: !3097, file: !560, line: 28, type: !23)
!3139 = !DILocalVariable(name: "pos", scope: !3140, file: !560, line: 117, type: !3134)
!3140 = distinct !DILexicalBlock(scope: !3141, file: !560, line: 113, column: 5)
!3141 = distinct !DILexicalBlock(scope: !3097, file: !560, line: 52, column: 7)
!3142 = !DILocation(line: 0, scope: !3097)
!3143 = !DILocation(line: 52, column: 11, scope: !3141)
!3144 = !{!2826, !575, i64 16}
!3145 = !DILocation(line: 52, column: 31, scope: !3141)
!3146 = !{!2826, !575, i64 8}
!3147 = !DILocation(line: 52, column: 24, scope: !3141)
!3148 = !DILocation(line: 53, column: 7, scope: !3141)
!3149 = !DILocation(line: 53, column: 14, scope: !3141)
!3150 = !{!2826, !575, i64 40}
!3151 = !DILocation(line: 53, column: 35, scope: !3141)
!3152 = !{!2826, !575, i64 32}
!3153 = !DILocation(line: 53, column: 28, scope: !3141)
!3154 = !DILocation(line: 54, column: 7, scope: !3141)
!3155 = !DILocation(line: 54, column: 14, scope: !3141)
!3156 = !{!2826, !575, i64 72}
!3157 = !DILocation(line: 54, column: 28, scope: !3141)
!3158 = !DILocation(line: 52, column: 7, scope: !3097)
!3159 = !DILocation(line: 117, column: 26, scope: !3140)
!3160 = !DILocation(line: 117, column: 19, scope: !3140)
!3161 = !DILocation(line: 0, scope: !3140)
!3162 = !DILocation(line: 118, column: 15, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3140, file: !560, line: 118, column: 11)
!3164 = !DILocation(line: 118, column: 11, scope: !3140)
!3165 = !DILocation(line: 129, column: 11, scope: !3140)
!3166 = !DILocation(line: 129, column: 18, scope: !3140)
!3167 = !DILocation(line: 130, column: 11, scope: !3140)
!3168 = !DILocation(line: 130, column: 19, scope: !3140)
!3169 = !{!2826, !1758, i64 144}
!3170 = !DILocation(line: 161, column: 7, scope: !3140)
!3171 = !DILocation(line: 163, column: 10, scope: !3097)
!3172 = !DILocation(line: 163, column: 3, scope: !3097)
!3173 = !DILocation(line: 164, column: 1, scope: !3097)
!3174 = !DISubprogram(name: "fseeko", scope: !589, file: !589, line: 712, type: !3175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!23, !3118, !617, !23}
